#ifndef _SDL_nacl_eventqueue_h
#define _SDL_nacl_eventqueue_h

#include "SDL_mutex.h"

//#include <queue>

typedef struct _EventQueue_node_t{
	SDL_Event *event;
	struct _EventQueue_node_t *next;
}EventQueue_node_t;
typedef struct _EventQueue {
  EventQueue_node_t *head, *tail;
  SDL_mutex* mu_;
}EventQueue;
void EventQueue_push(SDL_Event *event, EventQueue *queue){
	if(!(queue->head)){
		queue->head = queue->tail = (EventQueue_node_t *)malloc(sizeof(EventQueue_node_t));
	}else{
		queue->tail->next = (EventQueue_node_t *)malloc(sizeof(EventQueue_node_t));
		queue->tail = queue->tail->next;
	}
	queue->tail->event = event;	
	queue->tail->next = NULL;
}
SDL_Event *EventQueue_pop(EventQueue *queue){
	SDL_Event *event = queue->head->event;
	if(!(queue->head))
		return;
	queue->head = queue->head->next;
	free(queue->head);
	return event;
}
bool EventQueue_is_empty(EventQueue *queue){
	if(queue->head)
		return true;
	else
		return false;
}
SDL_Event *EventQueue_get_front(EventQueue *queue){
	return queue->head->event;
}
  EventQueue *EventQueue_Create() {
    	EventQueue *eventq = (EventQueue *)malloc(sizeof(EventQueue));
	eventq->mu_ = SDL_CreateMutex();
	eventq->head = eventq->tail = NULL;
	return eventq;
  }

  void EventQueue_Destroy(EventQueue *eventq) {
    SDL_DestroyMutex(eventq->mu_);
    free(eventq);
  }

  SDL_Event* PopEvent(EventQueue *eventq) {
    SDL_LockMutex(eventq->mu_);
    SDL_Event* event = NULL;
    if (!EventQueue_is_empty(eventq)) {
      event = EventQueue_get_front(eventq);
      EventQueue_pop(eventq);
    }
    SDL_UnlockMutex(eventq->mu_);
    return event;
  }

   void PushEvent(EventQueue *eventq, SDL_Event* event) {
    SDL_LockMutex(eventq->mu_);
    EventQueue_push(event, eventq);
    SDL_UnlockMutex(eventq->mu_);
   } 


#endif // _SDL_nacl_eventqueue_h
