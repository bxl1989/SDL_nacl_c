/*
 * Copyright (c) 2012 The Native Client Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file.
 */
#include "MainThreadRunner.h"
#include <alloca.h>
#include <assert.h>
#include <errno.h>

// Only use pepper in nacl to allow unit testing.
#ifdef __native_client__
#  include <ppapi/c/pp_errors.h>
#  include <ppapi/c/pp_completion_callback.h>
#  include <ppapi/c/ppb_core.h>
#  define USE_PEPPER
#endif

extern PPB_Core *g_core_interface;

// Stack space to allocate by default to the event handler
// thread in the presence of an ancillary 'pseudo-thread'.
// 640K of stack should be enough for anyone.
const int kDefaultPseudoThreadHeadroom = 640 * 1024;

// If we're not using pepper, track main thread's id so
// we can do something sensible.
#ifndef USE_PEPPER
pthread_t main_thread_id_;
#endif

// Static variables in MainThreaadRunner.

MainThreadRunner *MainThreadRunner_Create(PP_Instance instance){
 MainThreadRunner *runner;
 runner = (MainThreadRunner *)malloc(sizeof(MainThreadRunner )); 
#ifndef USE_PEPPER
  // Record main thread if not using pepper.
  main_thread_id_ = pthread_self();
#endif

  runner->pepper_instance_ = instance;
  pthread_mutex_init(&(runner->lock_), NULL);

  //runner->job_queue_.head = runner->job_queue_.tail = NULL;
  runner->qhead = 0;runner->qtail = -1;
  return runner;
}

void MainThreadRunner_Destroy(MainThreadRunner *runner){
  pthread_mutex_destroy(&(runner->lock_));
  free(runner);
}

int32_t RunJob(MainThreadRunner *runner, MainThreadJob *job){
  JobEntry entry;

  // initialize the entry
  entry.runner = runner;
  entry.pepper_instance = runner->pepper_instance_;
  entry.job = job;

  bool in_main_thread = IsMainThread();
  // Must be off main thread, or on a pseudothread.
  assert(!in_main_thread || in_pseudo_thread_);

  // Thread type specific initialization.
  if (in_main_thread) {
    entry.pseudo_thread_job = true;
  } else {
    entry.pseudo_thread_job = false;
    // Init condition variable.
    entry.is_done = false;
    int ret = pthread_mutex_init(&entry.done_mutex, NULL);
    assert(!ret);
    ret = pthread_cond_init(&entry.done_cond, NULL);
    assert(!ret);
  }

  // put the job on the queue
  pthread_mutex_lock(&(runner->lock_));
  //job_queue_.push_back(&entry);
  //JobEntry_list_push_back(&entry, &(runner->job_queue_));
  runner->job_queue_[(++(runner->qtail))%QSIZE]=&entry;
  pthread_mutex_unlock(&(runner->lock_));

#ifdef USE_PEPPER
  // Schedule the job.
  //pp::Module::Get()->core()->CallOnMainThread(0,
  //    pp::CompletionCallback(&DoWorkShim, this), PP_OK);
  g_core_interface->CallOnMainThread(0,
      PP_MakeCompletionCallback(&DoWorkShim, runner), PP_OK);
#endif
  printf("RunJob entry: %p\n", &entry);
  // Block differntly on the main thread.
  if (entry.pseudo_thread_job) {
    // block pseudothread until job is done
    PseudoThreadBlock();
  } else {
    // wait on condition until the job is done
    pthread_mutex_lock(&entry.done_mutex);
    while (!entry.is_done) {
      pthread_cond_wait(&entry.done_cond, &entry.done_mutex);
    }
    pthread_mutex_unlock(&entry.done_mutex);
    pthread_mutex_destroy(&entry.done_mutex);
    pthread_cond_destroy(&entry.done_cond);
  }
  // Cleanup.
  //delete job;
  free(job);
  return entry.result;
}

void ResultCompletion(void *arg, int32_t result){
  JobEntry* entry = (JobEntry *)(arg);
  entry->result = result;
  // Signal differently depending on if the pseudothread is involved.
  if (entry->pseudo_thread_job) {
    PseudoThreadResume();
  } else {
    pthread_mutex_lock(&entry->done_mutex);
    entry->is_done = true;
    pthread_cond_signal(&entry->done_cond);
    pthread_mutex_unlock(&entry->done_mutex);
  }
}

void DoWorkShim(void *p, int32_t unused){
//void MainThreadRunner::DoWorkShim(void *p, int32_t unused) {
  MainThreadRunner* mtr = (MainThreadRunner *)(p);
  DoWork(mtr);
}

void DoWork(MainThreadRunner *runner){
  JobEntry* entry;
  pthread_mutex_lock(&(runner->lock_));
  //if (!job_queue_.empty()) {
  //if (!(JobEntry_list_is_empty(&(runner->job_queue_)))) {
  if (!(runner->qhead>runner->qtail)) {
    //entry = JobEntry_list_get_front(&(runner->job_queue_));
    JobEntry* entry = runner->job_queue_[runner->qhead];
    printf("DoWork entry:%p\n", entry);
    //job_queue_.pop_front();
    //JobEntry_list_pop_front(&(runner->job_queue_));
    runner->qhead = (runner->qhead+1)%QSIZE;
    // Release lock before doing work.
    pthread_mutex_unlock(&(runner->lock_));
    entry->job->Run(entry, entry->job);
    return;
  }
  pthread_mutex_unlock(&(runner->lock_));
}

PP_Instance ExtractPepperInstance(JobEntry *e){
  return e->pepper_instance;
}

void PseudoThreadFork(void *(*func)(void *arg), void *arg){
  PseudoThreadHeadroomFork(kDefaultPseudoThreadHeadroom, func, arg);
}

void PseudoThreadHeadroomFork(
	  int bytes_headroom, void *(*func)(void *arg), void *arg){
  // Must be run from the main thread.
  assert(IsMainThread());
  // Only one pseudothread can be forked.
  assert(!forked_pseudo_thread_);
  // Leave a gap of bytes_headroom on the stack between
  alloca(bytes_headroom);
  // Goto pseudothread, but remeber how to come back here.
  if (!setjmp(main_thread_state_)) {
    InnerPseudoThreadFork(func, arg);
  }
  in_pseudo_thread_ = false;
}

// Put things in another scope to keep above headroom,
// even after thread ends.
void InnerPseudoThreadFork(void *(func)(void *arg), void *arg){
  forked_pseudo_thread_ = true;
  in_pseudo_thread_ = true;
  func(arg);
  forked_pseudo_thread_ = false;
  in_pseudo_thread_ = false;
  // Dead, keep kicking back to the main thread.
  for (;;) {
    longjmp(main_thread_state_, 1);
  }
}

void PseudoThreadBlock(){
  // Must be run from the main thread.
  assert(IsMainThread());
  // Pseudothread must have been forked.
  assert(forked_pseudo_thread_);
  // Must be run only from the pseudothread.
  assert(in_pseudo_thread_);
  if (!setjmp(pseudo_thread_state_)) {
    // Go back to the main thread after saving state.
    longjmp(main_thread_state_, 1);
  }
  in_pseudo_thread_ = true;
}

void PseudoThreadResume(){
  // Must be run from the main thread.
  assert(IsMainThread());
  // Pseudothread must have been forked.
  assert(forked_pseudo_thread_);
  // Can only be run from the main thread.
  assert(!in_pseudo_thread_);
  if (!setjmp(main_thread_state_)) {
    // Go back to the pseudo thread after saving state.
    longjmp(pseudo_thread_state_, 1);
  }
  in_pseudo_thread_ = false;
}

bool IsMainThread(){
#ifdef USE_PEPPER
  return g_core_interface->IsMainThread();
#else
  return pthread_equal(pthread_self(), main_thread_id_);
#endif
}

bool IsPseudoThread(){
  return IsMainThread() && in_pseudo_thread_;
}

void JobEntry_list_push_back(JobEntry *job, JobEntry_list_t *list){
	if(!(list->head)){
		list->head = list->tail = (JobEntry_node_t *)malloc(sizeof(JobEntry_node_t));
	}else{
		list->tail->next = (JobEntry_node_t *)malloc(sizeof(JobEntry_node_t));
		list->tail = list->tail->next;
	}
	list->tail->job = job;	
	//memcpy(&(list->tail->job), &job, sizeof(JobEntry));
	list->tail->next = NULL;
}
void JobEntry_list_pop_front(JobEntry_list_t *list){
	JobEntry_node_t *tmp;
	if(!(list->head))
		return;
	tmp = list->head;
	list->head = list->head->next;
	free(tmp);
}
bool JobEntry_list_is_empty(JobEntry_list_t *list){
	if(list->head)
		return false;
	else
		return true;
}
JobEntry *JobEntry_list_get_front(JobEntry_list_t *list){
	if(!(list->head))
		return NULL;
	return list->head->job;
}
