/*
 * Copyright (c) 2011 The Native Client Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file.
 */
#ifndef _SDL_nacljob_h
#define _SDL_nacljob_h

#include <ppapi/c/pp_errors.h>
#include <ppapi/c/pp_file_info.h>
#include <ppapi/c/pp_completion_callback.h>
#include <ppapi/c/ppb_file_io.h>
#include <ppapi/c/ppb_file_ref.h>
#include <ppapi/c/ppb_file_system.h>
#include <ppapi/c/ppb_url_loader.h>
#include <ppapi/c/ppb_url_request_info.h>
#include <ppapi/c/ppb_url_response_info.h>
/* TODO: include completion_callback_factory.h unconditionally one all sdk are updated */
#include <ppapi/c/ppb_var.h>
#ifdef PPB_VAR_INTERFACE_1_1 
//#include <ppapi/utility/completion_callback_factory.h>
#endif
//#include <string>
//#include <vector>
//#include <set>
#include "MainThreadRunner.h"

#include "SDL_naclvideo.h"
#include "../SDL_sysvideo.h"

typedef enum {
  NO_OP = 0,
  VIDEO_INIT,
  CREATE_GRAPHICS_CONTEXT,
  VIDEO_FLUSH,
  VIDEO_QUIT
} SDLNaclOperation;

typedef struct _SDLNaclJob{
  void(* Run)(JobEntry *e);
  SDLNaclOperation op_;
  SDL_VideoDevice *device_;
  //pp::CompletionCallbackFactory<SDLNaclJob> *factory_;
  struct PP_CompletionCallback factory_; 
  JobEntry *job_entry_;
	
}SDLNaclJob;

//class SDLNaclJob : public MainThreadJob {
 SDLNaclJob *SDLNaclJob_Create(SDLNaclOperation op, SDL_VideoDevice* device){
	SDLNaclJob *job = (SDLNaclJob *)malloc(sizeof(SDLNaclJob)); 
	job->op_ = op;
	job->device_ = device;
 	return job;	
 }
 void SDLNaclJob_Destroy(SDLNaclJob *job){
 	free(job);
 }
  void Finish(SDLNaclJob *job, int32_t result);


#endif
