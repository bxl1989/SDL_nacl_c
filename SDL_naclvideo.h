#include "SDL_config.h"

#ifndef _SDL_naclvideo_h
#define _SDL_naclvideo_h

#include "../SDL_sysvideo.h"
#include "SDL_mutex.h"

#include <ppapi/c/pp_instance.h>
#include <ppapi/c/ppb_graphics_2d.h>
//#include <vector>


/* Hidden "this" pointer for the video functions */
#define _THIS	SDL_VideoDevice *_this


/* Private display data */

struct SDL_PrivateVideoData {
  int bpp;
  int w, h;
  void *buffer;

  int ow, oh; // plugin output dimensions
  int fsw, fsh; // fullscreen dimensions

  //pp::ImageData* image_data;
  //pp::Graphics2D* context2d;  // The PPAPI 2D drawing context.
  
  PP_Resource image_data;
  PP_Resource context2d;

  int numrects;
  SDL_Rect* rects;
};

#endif /* _SDL_naclvideo_h */
