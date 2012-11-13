#include "eventqueue.h"
EventQueue *EventQueue_Create(){
	EventQueue *queue;
	queue = (EventQueue *)malloc(sizeof(EventQueue));
        queue->mu_ = SDL_CreateMutex();
	queue->qhead = 0;
	queue->qtail = 0;
	queue->size = 0;
	return queue;
}
void EventQueue_Destroy(EventQueue *queue){
        SDL_DestroyMutex(queue->mu_);
	free(queue);
	
}
SDL_Event* PopEvent(EventQueue *queue) {
    SDL_LockMutex(queue->mu_);
    SDL_Event* event = NULL;
    //if (!queue_.empty()) {
    if (!(queue->size == 0)) {
      //event = queue_.front();
      event = queue->queue_[queue->qhead];
      //queue_.pop();
      queue->qhead = (queue->qhead+1)%QSIZE;
      queue->size--;
    }
    SDL_UnlockMutex(queue->mu_);
    return event;
}

void PushEvent(EventQueue *queue, SDL_Event* event) {
    SDL_LockMutex(queue->mu_);
    //queue_.push(event);
    queue->queue_[queue->qtail]=event;
    queue->qtail = (queue->qtail+1)%QSIZE;
    queue->size++;
    SDL_UnlockMutex(queue->mu_);
}
