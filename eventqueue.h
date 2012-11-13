#ifndef _SDL_nacl_eventqueue_h
#define _SDL_nacl_eventqueue_h

#include "SDL_config.h"

#include "SDL_nacl_c.h"

#include "SDL.h"
#include "../../events/SDL_sysevents.h"
#include "../../events/SDL_events_c.h"

#include "SDL_naclevents_c.h"
#include "SDL_mutex.h"
#include <stdio.h>
#define QSIZE 0x1000

typedef struct _EventQueue{
  SDL_Event *queue_[QSIZE];
  SDL_mutex* mu_;
  int qhead, qtail;
  int size;
}EventQueue;
EventQueue *EventQueue_Create();
void EventQueue_Destroy(EventQueue *queue);
SDL_Event* PopEvent(EventQueue *queue);
void PushEvent(EventQueue *queue, SDL_Event* event);



#endif // _SDL_nacl_eventqueue_h
