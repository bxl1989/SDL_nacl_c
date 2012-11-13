#include <stdio.h>
#include <pthread.h>
#include "../mybool.h"
#include <ppapi/c/pp_instance.h>
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
  JobEntry_list_t job_queue_;
  PP_Instance pepper_instance_;

}MainThreadRunner;

typedef struct _MainThreadJob {
   void(* Run)(JobEntry *entry, void *job);
}MainThreadJob ;
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
int main(){
	JobEntry_list_t list;
	JobEntry job;
	JobEntry *jobp;
	int i;
	for(i=0; i<50; i++){
		JobEntry_list_push_back(&job, &list);
		printf("PUSH SUCCESS\n");
	}
	for(i=0; i<100; i++){
		jobp = JobEntry_list_get_front(&list);
		JobEntry_list_pop_front(&list);
		printf("POP SUCCESS\n");
	}



}
