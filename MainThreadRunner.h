/*
 * Copyright (c) 2012 The Native Client Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file.
 */
#ifndef LIBRARIES_NACL_MOUNTS_BASE_MAINTHREADRUNNER_H_
#define LIBRARIES_NACL_MOUNTS_BASE_MAINTHREADRUNNER_H_
#include "mybool.h"
#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <setjmp.h>
#include <ppapi/c/ppb.h>
#include <ppapi/c/pp_instance.h>
#include "SDL_nacl_c.h"
#define QSIZE 0x1000
//#include <list>

// Keep pepper specifics out so we can unit test.
//namespace pp {
//  class Instance;
//};

// MainThreadJob is a class that provides a method for running
// a MainThreadRunner::JobEntry.
struct _MainThreadJob;
struct _MainThreadRunner;
typedef struct _JobEntry {
  PP_Instance pepper_instance;
  struct _MainThreadRunner* runner;
  struct _MainThreadJob* job;
  pthread_mutex_t done_mutex;
  pthread_cond_t done_cond;
  bool is_done;
  int32_t result;
  bool pseudo_thread_job;
}JobEntry;
typedef struct _JobEntry_node_t{
	JobEntry *job;
	struct _JobEntry_node_t *next;
}JobEntry_node_t;
typedef struct _JobEntry_list_t{
	JobEntry_node_t *head, *tail;
}JobEntry_list_t;
typedef struct _MainThreadRunner{
  // The JobEntry struct provides all of the information for
  // a particular job.  It acts as an opaque handle to the job to and
  // is used by ResultCompletion().
  pthread_mutex_t lock_;
  //std::list<JobEntry*> job_queue_;
  //JobEntry_list_t job_queue_;
  JobEntry *job_queue_[QSIZE];
  int qhead, qtail;
  PP_Instance pepper_instance_;

}MainThreadRunner;

typedef struct _MainThreadJob {
   void(* Run)(JobEntry *entry, void *job);
}MainThreadJob ;
// MainThreadRunner executes MainThreadJobs asynchronously
// on the main thread.
// RunJob() creates an entry for the job and submits
// that job for execution.
MainThreadRunner *MainThreadRunner_Create(PP_Instance instance);
void MainThreadRunner_Destroy(MainThreadRunner *runner);
int32_t RunJob(MainThreadRunner *runner, MainThreadJob *job);

// ResultCompletion() is a function for putting result into arg, which
// is reinterpreted as a JobEntry pointer.  ResultCompletion()
// is intended to be used with pp::CompletionCallback()
//static void ResultCompletion(void *arg, int32_t result);
void ResultCompletion(void *arg, int32_t result);


//static PP_Instance ExtractPepperInstance(JobEntry *e);
PP_Instance ExtractPepperInstance(JobEntry *e);

// You can have one 'pseudothread' on top of the main thread.
// This coroutine (setjmp) based thread can block on Run.
// You will have to take some amount of re-entrancy into account.
// Assumes 640K of stack is enough for anyone for event handling in the
// main thread.
void PseudoThreadFork(void *(*func)(void *arg), void *arg);
// Same as above with selectable bytes of headroom.
void PseudoThreadHeadroomFork(
	int bytes_headroom, void *(*func)(void *arg), void *arg);

// Returns:
//   true - main thread or pseudothread.
//   false - other pthreads.
bool IsMainThread(void);

// Returns true if on the psuedothread.
bool IsPseudoThread(void);

// Use these directly only if you are interacting with PPAPI
// such that you can guarantee you'll resume because of an
// asynchronous event you issued.
// Block pseudothread until main thread yields.
void PseudoThreadBlock(void);
// Yield main thread to pseudothread.
void PseudoThreadResume(void);

// Do at least one main thread job.
// DO NOT use this with pepper (which sets up an event
// cycle to call this automatically).
// Use directly only for testing.
void DoWork(MainThreadRunner *runner);

void DoWorkShim(void *p, int32_t unused);

// Used to keep things above the headroom.
void InnerPseudoThreadFork(void *(func)(void *arg), void *arg);


void JobEntry_list_push_back(JobEntry *job, JobEntry_list_t *list);
void JobEntry_list_pop_front(JobEntry_list_t *list);
bool JobEntry_list_is_empty(JobEntry_list_t *list);
JobEntry *JobEntry_list_get_front(JobEntry_list_t *list);

// MainThreadRunner executes MainThreadJobs asynchronously
static jmp_buf main_thread_state_;
static jmp_buf pseudo_thread_state_;
static bool in_pseudo_thread_ = false;
static bool forked_pseudo_thread_ = false;

#endif  // LIBRARIES_NACL_MOUNTS_BASE_MAINTHREADRUNNER_H_
