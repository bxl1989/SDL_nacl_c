/*
 * Copyright (c) 2011 The Native Client Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file.
 */
#include <assert.h>
#include <ppapi/c/pp_instance.h>
#include <ppapi/c/ppb_graphics_2d.h>
#include <ppapi/c/pp_completion_callback.h>
#include <ppapi/c/ppb_image_data.h>
#include <ppapi/c/pp_rect.h>
#include <ppapi/c/pp_errors.h>
#include <ppapi/c/ppb_instance.h>
#include <ppapi/c/pp_point.h>
#include <ppapi/c/ppb_core.h>
#include "SDL_nacljob.h"

extern PPB_Core *g_core_interface;
extern PPB_Graphics2D *g_graphics_2d_interface;
extern PPB_Instance *g_instance_interface;
extern PPB_ImageData *g_image_data_interface;

SDLNaclJob *SDLNaclJob_Create(SDLNaclOperation op, SDL_VideoDevice* device){
	SDLNaclJob *job = (SDLNaclJob *)malloc(sizeof(SDLNaclJob)); 
	job->op_ = op;
	job->device_ = device;
	job->Run = SDLNaclJob_Run;
 	return job;	
}
void SDLNaclJob_Destroy(SDLNaclJob *job){
 	free(job);
}
void SDLNaclJob_Run(JobEntry *e, void *job) {
  SDLNaclJob *nacljob = (SDLNaclJob *)job;
  struct PP_CompletionCallback cc;
  nacljob ->job_entry_ = e;
  PP_Instance instance;  
  int32_t rv;
  struct PP_Size size;
  SDL_Rect r;
  int i;
  struct PP_Point top_left;
  struct PP_Rect src_rect;
  printf("SDLNaclJob_Run called\n");
  //factory_ = new pp::CompletionCallbackFactory<SDLNaclJob>(this);
  //pp::CompletionCallback cc = factory_->NewCallback(&SDLNaclJob::Finish);
  cc = PP_MakeCompletionCallback(Finish, nacljob);
  //pp::Instance *instance = MainThreadRunner::ExtractPepperInstance(e);
  instance = ExtractPepperInstance(e);
  switch (nacljob->op_) {
  case VIDEO_INIT:
    //cc.Run(PP_OK);
    PP_RunCompletionCallback(&cc, PP_OK);
    break;

  case CREATE_GRAPHICS_CONTEXT:
    if (nacljob->device_->hidden->context2d)
      //delete device_->hidden->context2d;
	    g_core_interface->ReleaseResource(nacljob->device_->hidden->context2d);
    //device_->hidden->context2d = 
    //  new pp::Graphics2D(instance,
	//		 pp::Size(device_->hidden->w, device_->hidden->h), false);
    size.width = nacljob->device_->hidden->w; 
    size.height = nacljob->device_->hidden->h;
    nacljob->device_->hidden->context2d = 
	    g_graphics_2d_interface->Create(instance, &size, PP_FALSE); 
    assert(nacljob->device_->hidden->context2d != 0);
    
    //if (!instance->BindGraphics(*device_->hidden->context2d)) {
    if(!g_instance_interface->
		    BindGraphics(instance, nacljob->device_->hidden->context2d)){
      fprintf(stderr, "***** Couldn't bind the device context *****\n");
    }
    
    if (nacljob->device_->hidden->image_data)
      g_core_interface->ReleaseResource(nacljob->device_->hidden->image_data);

    //device_->hidden->image_data =
    //  new pp::ImageData(instance,
	//		PP_IMAGEDATAFORMAT_BGRA_PREMUL,
	//		device_->hidden->context2d->size(),
	//		false);
    nacljob->device_->hidden->image_data = 
	    g_image_data_interface->Create(instance,
			    PP_IMAGEDATAFORMAT_BGRA_PREMUL,
			    &size,
			    PP_FALSE);
    assert(nacljob->device_->hidden->image_data != 0);
    // TODO: report any errors
    //cc.Run(PP_OK);
    PP_RunCompletionCallback(&cc, PP_OK);
    break;

  case VIDEO_FLUSH:
    for (i = 0; i < nacljob->device_->hidden->numrects; ++i) {
      r = nacljob->device_->hidden->rects[i];
      top_left.x = top_left.y = 0;
      src_rect.point.x = r.x;
      src_rect.point.y = r.y;
      src_rect.size.width = r.w;
      src_rect.size.height = r.h;
      g_graphics_2d_interface->PaintImageData(
		      nacljob->device_->hidden->context2d, 
		      nacljob->device_->hidden->image_data,
		      &top_left,
		      &src_rect);
      //device_->hidden->context2d->PaintImageData(*device_->hidden->image_data, pp::Point(), pp::Rect(r.x, r.y, r.w, r.h));
    }

    //device_->hidden->context2d->Flush(cc);
    g_graphics_2d_interface->Flush(nacljob->device_->hidden->context2d, cc);
    break;

  case VIDEO_QUIT:
    //delete device_->hidden->context2d;
    g_core_interface->ReleaseResource(nacljob->device_->hidden->context2d);
    //delete device_->hidden->image_data;
    g_core_interface->ReleaseResource(nacljob->device_->hidden->image_data);
    //cc.Run(PP_OK);
    PP_RunCompletionCallback(&cc, PP_OK);

  }
}

void Finish(SDLNaclJob *job, int32_t result) {
  ResultCompletion(job->job_entry_, result);
}
