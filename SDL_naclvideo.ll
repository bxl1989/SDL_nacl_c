; ModuleID = 'src/video/nacl_c/SDL_naclvideo.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct._MainThreadRunner = type { %union.pthread_mutex_t, [4096 x %struct._JobEntry*], i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, %union.anon }
%union.anon = type { i32 }
%struct._JobEntry = type { i32, %struct._MainThreadRunner*, %struct._MainThreadJob*, %union.pthread_mutex_t, %union.pthread_cond_t, i32, i32, i32 }
%struct._MainThreadJob = type { void (%struct._JobEntry*, i8*)* }
%union.pthread_cond_t = type { %struct.anon, [4 x i8] }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct.SDL_VideoDevice = type { i8*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*)*, %struct.SDL_Rect** (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*, i32)*, %struct.SDL_Surface* (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i32, i32, i32, i32)*, i32 (%struct.SDL_VideoDevice*, i32)*, void (%struct.SDL_VideoDevice*)*, %struct.SDL_Overlay* (%struct.SDL_VideoDevice*, i32, i32, i32, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, i32, i32, %struct.SDL_Color*)*, void (%struct.SDL_VideoDevice*, i32, %struct.SDL_Rect*)*, void (%struct.SDL_VideoDevice*)*, %struct.SDL_VideoInfo, %struct.SDL_PixelFormat*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, %struct.SDL_Rect*, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i8)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, void (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, void (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, i16*, i32 (%struct.SDL_VideoDevice*, float, float, float)*, i32 (%struct.SDL_VideoDevice*, float*, float*, float*)*, i32 (%struct.SDL_VideoDevice*, i16*)*, i32 (%struct.SDL_VideoDevice*, i16*)*, i32 (%struct.SDL_VideoDevice*, i8*)*, i8* (%struct.SDL_VideoDevice*, i8*)*, i32 (%struct.SDL_VideoDevice*, i32, i32*)*, i32 (%struct.SDL_VideoDevice*)*, void (%struct.SDL_VideoDevice*)*, i32, void (%struct.SDL_VideoDevice*, i8*, i8*)*, void (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i8*)*, i32 (%struct.SDL_VideoDevice*)*, i32 (%struct.SDL_VideoDevice*, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_SysWMinfo*)*, void (%struct.SDL_VideoDevice*, %struct.WMcursor*)*, %struct.WMcursor* (%struct.SDL_VideoDevice*, i8*, i8*, i32, i32, i32, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.WMcursor*)*, void (%struct.SDL_VideoDevice*, i16, i16)*, void (%struct.SDL_VideoDevice*, i32, i32)*, void (%struct.SDL_VideoDevice*)*, void (%struct.SDL_VideoDevice*)*, void (%struct.SDL_VideoDevice*)*, %struct.SDL_Surface*, %struct.SDL_Surface*, %struct.SDL_Surface*, %struct.SDL_Palette*, %struct.SDL_Color*, i8*, i8*, i32, i32, i32, i32, %struct.anon.0, %struct.SDL_PrivateVideoData*, %struct.SDL_PrivateGLData*, void (%struct.SDL_VideoDevice*)* }
%struct.SDL_PixelFormat = type { %struct.SDL_Palette*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8 }
%struct.SDL_Palette = type { i32, %struct.SDL_Color* }
%struct.SDL_Color = type { i8, i8, i8, i8 }
%struct.SDL_Rect = type { i16, i16, i16, i16 }
%struct.SDL_Surface = type { i32, %struct.SDL_PixelFormat*, i32, i32, i16, i8*, i32, %struct.private_hwdata*, %struct.SDL_Rect, i32, i32, %struct.SDL_BlitMap*, i32, i32 }
%struct.private_hwdata = type opaque
%struct.SDL_BlitMap = type { %struct.SDL_Surface*, i32, i8*, i32 (%struct.SDL_Surface*, %struct.SDL_Rect*, %struct.SDL_Surface*, %struct.SDL_Rect*)*, i32 (%struct.SDL_Surface*, %struct.SDL_Rect*, %struct.SDL_Surface*, %struct.SDL_Rect*)*, %struct.private_hwaccel*, %struct.private_swaccel*, i32 }
%struct.private_hwaccel = type opaque
%struct.private_swaccel = type { void (%struct.SDL_BlitInfo*)*, i8* }
%struct.SDL_BlitInfo = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct.SDL_PixelFormat*, i8*, %struct.SDL_PixelFormat* }
%struct.SDL_Overlay = type { i32, i32, i32, i32, i16*, i8**, %struct.private_yuvhwfuncs*, %struct.private_yuvhwdata*, i8, [3 x i8] }
%struct.private_yuvhwfuncs = type opaque
%struct.private_yuvhwdata = type opaque
%struct.SDL_VideoInfo = type { i8, i8, [2 x i8], i32, %struct.SDL_PixelFormat*, i32, i32 }
%struct.SDL_SysWMinfo = type opaque
%struct.WMcursor = type {}
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i8* }
%struct.SDL_PrivateVideoData = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.SDL_Rect* }
%struct.SDL_PrivateGLData = type opaque
%struct.VideoBootStrap = type { i8*, i8*, i32 ()*, %struct.SDL_VideoDevice* (i32)* }
%struct.PPB_ImageData_1_0 = type { i32 (...)*, i32 (i32)*, i32 (i32, i32, %struct.PP_Size*, i32)*, i32 (i32)*, i32 (i32, %struct.PP_ImageDataDesc*)*, i8* (i32)*, void (i32)* }
%struct.PP_Size = type { i32, i32 }
%struct.PP_ImageDataDesc = type { i32, %struct.PP_Size, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SDLNaclJob = type { void (%struct._JobEntry*, i8*)*, i32, %struct.SDL_VideoDevice*, %struct._JobEntry* }

@gNaclPPInstance = common hidden global i32 0, align 4
@gNaclVideoWidth = internal global i32 0, align 4
@gNaclVideoHeight = internal global i32 0, align 4
@gNaclMainThreadRunner = internal global %struct._MainThreadRunner* null, align 4
@current_video = external global %struct.SDL_VideoDevice*
@.str = private unnamed_addr constant [5 x i8] c"nacl\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"SDL Native Client video driver\00", align 1
@NACL_bootstrap = hidden global %struct.VideoBootStrap { i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0), i32 ()* @NACL_Available, %struct.SDL_VideoDevice* (i32)* @NACL_CreateDevice }, align 4
@.str2 = private unnamed_addr constant [16 x i8] c"gNaclPPInstance\00", align 1
@.str3 = private unnamed_addr constant [33 x i8] c"src/video/nacl_c/SDL_naclvideo.c\00", align 1
@__PRETTY_FUNCTION__.NACL_CreateDevice = private unnamed_addr constant [40 x i8] c"SDL_VideoDevice *NACL_CreateDevice(int)\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"_this->hidden->image_data\00", align 1
@__PRETTY_FUNCTION__.NACL_UpdateRects = private unnamed_addr constant [58 x i8] c"void NACL_UpdateRects(SDL_VideoDevice *, int, SDL_Rect *)\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"_this->hidden->w > 0\00", align 1
@.str6 = private unnamed_addr constant [21 x i8] c"_this->hidden->h > 0\00", align 1
@g_image_data_interface = external global %struct.PPB_ImageData_1_0*
@stderr = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [26 x i8] c"setvideomode %d %d %d %u\0A\00", align 1
@.str8 = private unnamed_addr constant [54 x i8] c"Couldn't allocate new pixel format for requested mode\00", align 1
@.str9 = private unnamed_addr constant [59 x i8] c"CONGRATULATIONS: You are using the SDL nacl video driver!\0A\00", align 1

define hidden void @SDL_NACL_SetInstance(i32 %instance, i32 %width, i32 %height) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %is_resize = alloca i32, align 4
  store i32 %instance, i32* %1, align 4
  store i32 %width, i32* %2, align 4
  store i32 %height, i32* %3, align 4
  %4 = load i32* @gNaclPPInstance, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %16

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = load i32* @gNaclVideoWidth, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %14, label %10

; <label>:10                                      ; preds = %6
  %11 = load i32* %3, align 4
  %12 = load i32* @gNaclVideoHeight, align 4
  %13 = icmp ne i32 %11, %12
  br label %14

; <label>:14                                      ; preds = %10, %6
  %15 = phi i1 [ true, %6 ], [ %13, %10 ]
  br label %16

; <label>:16                                      ; preds = %14, %0
  %17 = phi i1 [ false, %0 ], [ %15, %14 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %is_resize, align 4
  %19 = load i32* @gNaclPPInstance, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

; <label>:21                                      ; preds = %16
  %22 = load i32* %1, align 4
  store i32 %22, i32* @gNaclPPInstance, align 4
  %23 = load i32* @gNaclPPInstance, align 4
  %24 = call %struct._MainThreadRunner* @MainThreadRunner_Create(i32 %23)
  store %struct._MainThreadRunner* %24, %struct._MainThreadRunner** @gNaclMainThreadRunner, align 4
  br label %25

; <label>:25                                      ; preds = %21, %16
  %26 = load i32* %2, align 4
  store i32 %26, i32* @gNaclVideoWidth, align 4
  %27 = load i32* %3, align 4
  store i32 %27, i32* @gNaclVideoHeight, align 4
  %28 = load i32* %is_resize, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

; <label>:30                                      ; preds = %25
  %31 = load %struct.SDL_VideoDevice** @current_video, align 4
  %32 = icmp ne %struct.SDL_VideoDevice* %31, null
  br i1 %32, label %33, label %47

; <label>:33                                      ; preds = %30
  %34 = load i32* %2, align 4
  %35 = load %struct.SDL_VideoDevice** @current_video, align 4
  %36 = getelementptr inbounds %struct.SDL_VideoDevice* %35, i32 0, i32 57
  %37 = load %struct.SDL_PrivateVideoData** %36, align 4
  %38 = getelementptr inbounds %struct.SDL_PrivateVideoData* %37, i32 0, i32 4
  store i32 %34, i32* %38, align 4
  %39 = load i32* %3, align 4
  %40 = load %struct.SDL_VideoDevice** @current_video, align 4
  %41 = getelementptr inbounds %struct.SDL_VideoDevice* %40, i32 0, i32 57
  %42 = load %struct.SDL_PrivateVideoData** %41, align 4
  %43 = getelementptr inbounds %struct.SDL_PrivateVideoData* %42, i32 0, i32 5
  store i32 %39, i32* %43, align 4
  %44 = load i32* %2, align 4
  %45 = load i32* %3, align 4
  %46 = call i32 @SDL_PrivateResize(i32 %44, i32 %45)
  br label %47

; <label>:47                                      ; preds = %33, %30, %25
  ret void
}

declare %struct._MainThreadRunner* @MainThreadRunner_Create(i32)

declare i32 @SDL_PrivateResize(i32, i32)

define internal i32 @NACL_Available() nounwind {
  %1 = load i32* @gNaclPPInstance, align 4
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

define internal %struct.SDL_VideoDevice* @NACL_CreateDevice(i32 %devindex) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %2 = alloca i32, align 4
  %device = alloca %struct.SDL_VideoDevice*, align 4
  store i32 %devindex, i32* %2, align 4
  %3 = load i32* @gNaclPPInstance, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str3, i32 0, i32 0), i32 91, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__.NACL_CreateDevice, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = call noalias i8* @malloc(i32 584) nounwind
  %10 = bitcast i8* %9 to %struct.SDL_VideoDevice*
  store %struct.SDL_VideoDevice* %10, %struct.SDL_VideoDevice** %device, align 4
  %11 = load %struct.SDL_VideoDevice** %device, align 4
  %12 = icmp ne %struct.SDL_VideoDevice* %11, null
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %8
  %14 = load %struct.SDL_VideoDevice** %device, align 4
  %15 = bitcast %struct.SDL_VideoDevice* %14 to i8*
  call void @llvm.memset.p0i8.i32(i8* %15, i8 0, i32 584, i32 1, i1 false)
  %16 = call noalias i8* @malloc(i32 48) nounwind
  %17 = bitcast i8* %16 to %struct.SDL_PrivateVideoData*
  %18 = load %struct.SDL_VideoDevice** %device, align 4
  %19 = getelementptr inbounds %struct.SDL_VideoDevice* %18, i32 0, i32 57
  store %struct.SDL_PrivateVideoData* %17, %struct.SDL_PrivateVideoData** %19, align 4
  br label %20

; <label>:20                                      ; preds = %13, %8
  %21 = load %struct.SDL_VideoDevice** %device, align 4
  %22 = icmp eq %struct.SDL_VideoDevice* %21, null
  br i1 %22, label %28, label %23

; <label>:23                                      ; preds = %20
  %24 = load %struct.SDL_VideoDevice** %device, align 4
  %25 = getelementptr inbounds %struct.SDL_VideoDevice* %24, i32 0, i32 57
  %26 = load %struct.SDL_PrivateVideoData** %25, align 4
  %27 = icmp eq %struct.SDL_PrivateVideoData* %26, null
  br i1 %27, label %28, label %35

; <label>:28                                      ; preds = %23, %20
  call void @SDL_Error(i32 0)
  %29 = load %struct.SDL_VideoDevice** %device, align 4
  %30 = icmp ne %struct.SDL_VideoDevice* %29, null
  br i1 %30, label %31, label %34

; <label>:31                                      ; preds = %28
  %32 = load %struct.SDL_VideoDevice** %device, align 4
  %33 = bitcast %struct.SDL_VideoDevice* %32 to i8*
  call void @free(i8* %33) nounwind
  br label %34

; <label>:34                                      ; preds = %31, %28
  store %struct.SDL_VideoDevice* null, %struct.SDL_VideoDevice** %1
  br label %75

; <label>:35                                      ; preds = %23
  %36 = load %struct.SDL_VideoDevice** %device, align 4
  %37 = getelementptr inbounds %struct.SDL_VideoDevice* %36, i32 0, i32 57
  %38 = load %struct.SDL_PrivateVideoData** %37, align 4
  %39 = bitcast %struct.SDL_PrivateVideoData* %38 to i8*
  call void @llvm.memset.p0i8.i32(i8* %39, i8 0, i32 48, i32 1, i1 false)
  %40 = load i32* @gNaclVideoWidth, align 4
  %41 = load %struct.SDL_VideoDevice** %device, align 4
  %42 = getelementptr inbounds %struct.SDL_VideoDevice* %41, i32 0, i32 57
  %43 = load %struct.SDL_PrivateVideoData** %42, align 4
  %44 = getelementptr inbounds %struct.SDL_PrivateVideoData* %43, i32 0, i32 4
  store i32 %40, i32* %44, align 4
  %45 = load i32* @gNaclVideoHeight, align 4
  %46 = load %struct.SDL_VideoDevice** %device, align 4
  %47 = getelementptr inbounds %struct.SDL_VideoDevice* %46, i32 0, i32 57
  %48 = load %struct.SDL_PrivateVideoData** %47, align 4
  %49 = getelementptr inbounds %struct.SDL_PrivateVideoData* %48, i32 0, i32 5
  store i32 %45, i32* %49, align 4
  %50 = load %struct.SDL_VideoDevice** %device, align 4
  %51 = getelementptr inbounds %struct.SDL_VideoDevice* %50, i32 0, i32 1
  store i32 (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*)* @NACL_VideoInit, i32 (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*)** %51, align 4
  %52 = load %struct.SDL_VideoDevice** %device, align 4
  %53 = getelementptr inbounds %struct.SDL_VideoDevice* %52, i32 0, i32 2
  store %struct.SDL_Rect** (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*, i32)* @NACL_ListModes, %struct.SDL_Rect** (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*, i32)** %53, align 4
  %54 = load %struct.SDL_VideoDevice** %device, align 4
  %55 = getelementptr inbounds %struct.SDL_VideoDevice* %54, i32 0, i32 3
  store %struct.SDL_Surface* (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i32, i32, i32, i32)* @NACL_SetVideoMode, %struct.SDL_Surface* (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i32, i32, i32, i32)** %55, align 4
  %56 = load %struct.SDL_VideoDevice** %device, align 4
  %57 = getelementptr inbounds %struct.SDL_VideoDevice* %56, i32 0, i32 8
  store void (%struct.SDL_VideoDevice*, i32, %struct.SDL_Rect*)* @NACL_UpdateRects, void (%struct.SDL_VideoDevice*, i32, %struct.SDL_Rect*)** %57, align 4
  %58 = load %struct.SDL_VideoDevice** %device, align 4
  %59 = getelementptr inbounds %struct.SDL_VideoDevice* %58, i32 0, i32 9
  store void (%struct.SDL_VideoDevice*)* @NACL_VideoQuit, void (%struct.SDL_VideoDevice*)** %59, align 4
  %60 = load %struct.SDL_VideoDevice** %device, align 4
  %61 = getelementptr inbounds %struct.SDL_VideoDevice* %60, i32 0, i32 43
  store void (%struct.SDL_VideoDevice*)* @NACL_InitOSKeymap, void (%struct.SDL_VideoDevice*)** %61, align 4
  %62 = load %struct.SDL_VideoDevice** %device, align 4
  %63 = getelementptr inbounds %struct.SDL_VideoDevice* %62, i32 0, i32 44
  store void (%struct.SDL_VideoDevice*)* @NACL_PumpEvents, void (%struct.SDL_VideoDevice*)** %63, align 4
  %64 = load %struct.SDL_VideoDevice** %device, align 4
  %65 = getelementptr inbounds %struct.SDL_VideoDevice* %64, i32 0, i32 37
  store void (%struct.SDL_VideoDevice*, %struct.WMcursor*)* @NACL_FreeWMCursor, void (%struct.SDL_VideoDevice*, %struct.WMcursor*)** %65, align 4
  %66 = load %struct.SDL_VideoDevice** %device, align 4
  %67 = getelementptr inbounds %struct.SDL_VideoDevice* %66, i32 0, i32 38
  store %struct.WMcursor* (%struct.SDL_VideoDevice*, i8*, i8*, i32, i32, i32, i32)* @NACL_CreateWMCursor, %struct.WMcursor* (%struct.SDL_VideoDevice*, i8*, i8*, i32, i32, i32, i32)** %67, align 4
  %68 = load %struct.SDL_VideoDevice** %device, align 4
  %69 = getelementptr inbounds %struct.SDL_VideoDevice* %68, i32 0, i32 39
  store i32 (%struct.SDL_VideoDevice*, %struct.WMcursor*)* @NACL_ShowWMCursor, i32 (%struct.SDL_VideoDevice*, %struct.WMcursor*)** %69, align 4
  %70 = load %struct.SDL_VideoDevice** %device, align 4
  %71 = getelementptr inbounds %struct.SDL_VideoDevice* %70, i32 0, i32 40
  store void (%struct.SDL_VideoDevice*, i16, i16)* @NACL_WarpWMCursor, void (%struct.SDL_VideoDevice*, i16, i16)** %71, align 4
  %72 = load %struct.SDL_VideoDevice** %device, align 4
  %73 = getelementptr inbounds %struct.SDL_VideoDevice* %72, i32 0, i32 59
  store void (%struct.SDL_VideoDevice*)* @NACL_DeleteDevice, void (%struct.SDL_VideoDevice*)** %73, align 4
  %74 = load %struct.SDL_VideoDevice** %device, align 4
  store %struct.SDL_VideoDevice* %74, %struct.SDL_VideoDevice** %1
  br label %75

; <label>:75                                      ; preds = %35, %34
  %76 = load %struct.SDL_VideoDevice** %1
  ret %struct.SDL_VideoDevice* %76
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare noalias i8* @malloc(i32) nounwind

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare void @SDL_Error(i32)

declare void @free(i8*) nounwind

define internal i32 @NACL_VideoInit(%struct.SDL_VideoDevice* %_this, %struct.SDL_PixelFormat* %vformat) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %2 = alloca %struct.SDL_PixelFormat*, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  store %struct.SDL_PixelFormat* %vformat, %struct.SDL_PixelFormat** %2, align 4
  %3 = load %struct._IO_FILE** @stderr, align 4
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([59 x i8]* @.str9, i32 0, i32 0))
  %5 = load %struct.SDL_PixelFormat** %2, align 4
  %6 = getelementptr inbounds %struct.SDL_PixelFormat* %5, i32 0, i32 1
  store i8 32, i8* %6, align 1
  %7 = load %struct.SDL_PixelFormat** %2, align 4
  %8 = getelementptr inbounds %struct.SDL_PixelFormat* %7, i32 0, i32 2
  store i8 4, i8* %8, align 1
  %9 = load i32* @gNaclVideoWidth, align 4
  %10 = load %struct.SDL_VideoDevice** %1, align 4
  %11 = getelementptr inbounds %struct.SDL_VideoDevice* %10, i32 0, i32 10
  %12 = getelementptr inbounds %struct.SDL_VideoInfo* %11, i32 0, i32 5
  store i32 %9, i32* %12, align 4
  %13 = load i32* @gNaclVideoHeight, align 4
  %14 = load %struct.SDL_VideoDevice** %1, align 4
  %15 = getelementptr inbounds %struct.SDL_VideoDevice* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.SDL_VideoInfo* %15, i32 0, i32 6
  store i32 %13, i32* %16, align 4
  ret i32 0
}

define internal %struct.SDL_Rect** @NACL_ListModes(%struct.SDL_VideoDevice* %_this, %struct.SDL_PixelFormat* %format, i32 %flags) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %2 = alloca %struct.SDL_PixelFormat*, align 4
  %3 = alloca i32, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  store %struct.SDL_PixelFormat* %format, %struct.SDL_PixelFormat** %2, align 4
  store i32 %flags, i32* %3, align 4
  ret %struct.SDL_Rect** inttoptr (i32 -1 to %struct.SDL_Rect**)
}

define internal %struct.SDL_Surface* @NACL_SetVideoMode(%struct.SDL_VideoDevice* %_this, %struct.SDL_Surface* %current, i32 %width, i32 %height, i32 %bpp, i32 %flags) nounwind {
  %1 = alloca %struct.SDL_Surface*, align 4
  %2 = alloca %struct.SDL_VideoDevice*, align 4
  %3 = alloca %struct.SDL_Surface*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %job = alloca %struct._SDLNaclJob*, align 4
  %data = alloca i8*, align 4
  %rv = alloca i32, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %2, align 4
  store %struct.SDL_Surface* %current, %struct.SDL_Surface** %3, align 4
  store i32 %width, i32* %4, align 4
  store i32 %height, i32* %5, align 4
  store i32 %bpp, i32* %6, align 4
  store i32 %flags, i32* %7, align 4
  %8 = load %struct._IO_FILE** @stderr, align 4
  %9 = load i32* %4, align 4
  %10 = load i32* %5, align 4
  %11 = load i32* %6, align 4
  %12 = load i32* %7, align 4
  %13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([26 x i8]* @.str7, i32 0, i32 0), i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct._IO_FILE** @stderr, align 4
  %15 = call i32 @fflush(%struct._IO_FILE* %14)
  %16 = load i32* %4, align 4
  %17 = load %struct.SDL_VideoDevice** %2, align 4
  %18 = getelementptr inbounds %struct.SDL_VideoDevice* %17, i32 0, i32 57
  %19 = load %struct.SDL_PrivateVideoData** %18, align 4
  %20 = getelementptr inbounds %struct.SDL_PrivateVideoData* %19, i32 0, i32 4
  %21 = load i32* %20, align 4
  %22 = icmp sgt i32 %16, %21
  br i1 %22, label %31, label %23

; <label>:23                                      ; preds = %0
  %24 = load i32* %5, align 4
  %25 = load %struct.SDL_VideoDevice** %2, align 4
  %26 = getelementptr inbounds %struct.SDL_VideoDevice* %25, i32 0, i32 57
  %27 = load %struct.SDL_PrivateVideoData** %26, align 4
  %28 = getelementptr inbounds %struct.SDL_PrivateVideoData* %27, i32 0, i32 5
  %29 = load i32* %28, align 4
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %23, %0
  store %struct.SDL_Surface* null, %struct.SDL_Surface** %1
  br label %108

; <label>:32                                      ; preds = %23
  store i32 32, i32* %6, align 4
  %33 = load %struct.SDL_VideoDevice** %2, align 4
  %34 = getelementptr inbounds %struct.SDL_VideoDevice* %33, i32 0, i32 57
  %35 = load %struct.SDL_PrivateVideoData** %34, align 4
  %36 = getelementptr inbounds %struct.SDL_PrivateVideoData* %35, i32 0, i32 0
  store i32 32, i32* %36, align 4
  %37 = load i32* %4, align 4
  %38 = load %struct.SDL_VideoDevice** %2, align 4
  %39 = getelementptr inbounds %struct.SDL_VideoDevice* %38, i32 0, i32 57
  %40 = load %struct.SDL_PrivateVideoData** %39, align 4
  %41 = getelementptr inbounds %struct.SDL_PrivateVideoData* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i32* %5, align 4
  %43 = load %struct.SDL_VideoDevice** %2, align 4
  %44 = getelementptr inbounds %struct.SDL_VideoDevice* %43, i32 0, i32 57
  %45 = load %struct.SDL_PrivateVideoData** %44, align 4
  %46 = getelementptr inbounds %struct.SDL_PrivateVideoData* %45, i32 0, i32 2
  store i32 %42, i32* %46, align 4
  %47 = load %struct.SDL_VideoDevice** %2, align 4
  %48 = call %struct._SDLNaclJob* @SDLNaclJob_Create(i32 2, %struct.SDL_VideoDevice* %47)
  store %struct._SDLNaclJob* %48, %struct._SDLNaclJob** %job, align 4
  %49 = load %struct._MainThreadRunner** @gNaclMainThreadRunner, align 4
  %50 = load %struct._SDLNaclJob** %job, align 4
  %51 = bitcast %struct._SDLNaclJob* %50 to %struct._MainThreadJob*
  %52 = call i32 @RunJob(%struct._MainThreadRunner* %49, %struct._MainThreadJob* %51)
  store i32 %52, i32* %rv, align 4
  %53 = load i32* %rv, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %32
  store %struct.SDL_Surface* null, %struct.SDL_Surface** %1
  br label %108

; <label>:56                                      ; preds = %32
  %57 = load %struct.SDL_Surface** %3, align 4
  %58 = load i32* %6, align 4
  %59 = call %struct.SDL_PixelFormat* @SDL_ReallocFormat(%struct.SDL_Surface* %57, i32 %58, i32 16711680, i32 65280, i32 255, i32 0)
  %60 = icmp ne %struct.SDL_PixelFormat* %59, null
  br i1 %60, label %62, label %61

; <label>:61                                      ; preds = %56
  call void (i8*, ...)* @SDL_SetError(i8* getelementptr inbounds ([54 x i8]* @.str8, i32 0, i32 0))
  store %struct.SDL_Surface* null, %struct.SDL_Surface** %1
  br label %108

; <label>:62                                      ; preds = %56
  %63 = load i32* %7, align 4
  %64 = and i32 %63, -2147483648
  %65 = load %struct.SDL_Surface** %3, align 4
  %66 = getelementptr inbounds %struct.SDL_Surface* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32* %6, align 4
  %68 = load %struct.SDL_VideoDevice** %2, align 4
  %69 = getelementptr inbounds %struct.SDL_VideoDevice* %68, i32 0, i32 57
  %70 = load %struct.SDL_PrivateVideoData** %69, align 4
  %71 = getelementptr inbounds %struct.SDL_PrivateVideoData* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load i32* %4, align 4
  %73 = load %struct.SDL_Surface** %3, align 4
  %74 = getelementptr inbounds %struct.SDL_Surface* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.SDL_VideoDevice** %2, align 4
  %76 = getelementptr inbounds %struct.SDL_VideoDevice* %75, i32 0, i32 57
  %77 = load %struct.SDL_PrivateVideoData** %76, align 4
  %78 = getelementptr inbounds %struct.SDL_PrivateVideoData* %77, i32 0, i32 1
  store i32 %72, i32* %78, align 4
  %79 = load i32* %5, align 4
  %80 = load %struct.SDL_Surface** %3, align 4
  %81 = getelementptr inbounds %struct.SDL_Surface* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.SDL_VideoDevice** %2, align 4
  %83 = getelementptr inbounds %struct.SDL_VideoDevice* %82, i32 0, i32 57
  %84 = load %struct.SDL_PrivateVideoData** %83, align 4
  %85 = getelementptr inbounds %struct.SDL_PrivateVideoData* %84, i32 0, i32 2
  store i32 %79, i32* %85, align 4
  %86 = load %struct.SDL_Surface** %3, align 4
  %87 = getelementptr inbounds %struct.SDL_Surface* %86, i32 0, i32 2
  %88 = load i32* %87, align 4
  %89 = load i32* %6, align 4
  %90 = sdiv i32 %89, 8
  %91 = mul nsw i32 %88, %90
  %92 = trunc i32 %91 to i16
  %93 = load %struct.SDL_Surface** %3, align 4
  %94 = getelementptr inbounds %struct.SDL_Surface* %93, i32 0, i32 4
  store i16 %92, i16* %94, align 2
  %95 = load %struct.PPB_ImageData_1_0** @g_image_data_interface, align 4
  %96 = getelementptr inbounds %struct.PPB_ImageData_1_0* %95, i32 0, i32 5
  %97 = load i8* (i32)** %96, align 4
  %98 = load %struct.SDL_VideoDevice** %2, align 4
  %99 = getelementptr inbounds %struct.SDL_VideoDevice* %98, i32 0, i32 57
  %100 = load %struct.SDL_PrivateVideoData** %99, align 4
  %101 = getelementptr inbounds %struct.SDL_PrivateVideoData* %100, i32 0, i32 8
  %102 = load i32* %101, align 4
  %103 = call i8* %97(i32 %102)
  store i8* %103, i8** %data, align 4
  %104 = load i8** %data, align 4
  %105 = load %struct.SDL_Surface** %3, align 4
  %106 = getelementptr inbounds %struct.SDL_Surface* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 4
  %107 = load %struct.SDL_Surface** %3, align 4
  store %struct.SDL_Surface* %107, %struct.SDL_Surface** %1
  br label %108

; <label>:108                                     ; preds = %62, %61, %55, %31
  %109 = load %struct.SDL_Surface** %1
  ret %struct.SDL_Surface* %109
}

define internal void @NACL_UpdateRects(%struct.SDL_VideoDevice* %_this, i32 %numrects, %struct.SDL_Rect* %rects) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.SDL_Rect*, align 4
  %job = alloca %struct._SDLNaclJob*, align 4
  %start = alloca i8*, align 4
  %end = alloca i8*, align 4
  %p = alloca i8*, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  store i32 %numrects, i32* %2, align 4
  store %struct.SDL_Rect* %rects, %struct.SDL_Rect** %3, align 4
  %4 = load %struct.SDL_VideoDevice** %1, align 4
  %5 = getelementptr inbounds %struct.SDL_VideoDevice* %4, i32 0, i32 57
  %6 = load %struct.SDL_PrivateVideoData** %5, align 4
  %7 = getelementptr inbounds %struct.SDL_PrivateVideoData* %6, i32 0, i32 0
  %8 = load i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %107

; <label>:11                                      ; preds = %0
  %12 = load %struct.SDL_VideoDevice** %1, align 4
  %13 = getelementptr inbounds %struct.SDL_VideoDevice* %12, i32 0, i32 57
  %14 = load %struct.SDL_PrivateVideoData** %13, align 4
  %15 = getelementptr inbounds %struct.SDL_PrivateVideoData* %14, i32 0, i32 8
  %16 = load i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %11
  br label %21

; <label>:19                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str3, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([58 x i8]* @__PRETTY_FUNCTION__.NACL_UpdateRects, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = load %struct.SDL_VideoDevice** %1, align 4
  %23 = getelementptr inbounds %struct.SDL_VideoDevice* %22, i32 0, i32 57
  %24 = load %struct.SDL_PrivateVideoData** %23, align 4
  %25 = getelementptr inbounds %struct.SDL_PrivateVideoData* %24, i32 0, i32 1
  %26 = load i32* %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %21
  br label %31

; <label>:29                                      ; preds = %21
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str3, i32 0, i32 0), i32 209, i8* getelementptr inbounds ([58 x i8]* @__PRETTY_FUNCTION__.NACL_UpdateRects, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  %32 = load %struct.SDL_VideoDevice** %1, align 4
  %33 = getelementptr inbounds %struct.SDL_VideoDevice* %32, i32 0, i32 57
  %34 = load %struct.SDL_PrivateVideoData** %33, align 4
  %35 = getelementptr inbounds %struct.SDL_PrivateVideoData* %34, i32 0, i32 2
  %36 = load i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %31
  br label %41

; <label>:39                                      ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str3, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([58 x i8]* @__PRETTY_FUNCTION__.NACL_UpdateRects, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %41

; <label>:41                                      ; preds = %40, %38
  %42 = load %struct.PPB_ImageData_1_0** @g_image_data_interface, align 4
  %43 = getelementptr inbounds %struct.PPB_ImageData_1_0* %42, i32 0, i32 5
  %44 = load i8* (i32)** %43, align 4
  %45 = load %struct.SDL_VideoDevice** %1, align 4
  %46 = getelementptr inbounds %struct.SDL_VideoDevice* %45, i32 0, i32 57
  %47 = load %struct.SDL_PrivateVideoData** %46, align 4
  %48 = getelementptr inbounds %struct.SDL_PrivateVideoData* %47, i32 0, i32 8
  %49 = load i32* %48, align 4
  %50 = call i8* %44(i32 %49)
  store i8* %50, i8** %start, align 4
  %51 = load i8** %start, align 4
  %52 = load %struct.SDL_VideoDevice** %1, align 4
  %53 = getelementptr inbounds %struct.SDL_VideoDevice* %52, i32 0, i32 57
  %54 = load %struct.SDL_PrivateVideoData** %53, align 4
  %55 = getelementptr inbounds %struct.SDL_PrivateVideoData* %54, i32 0, i32 1
  %56 = load i32* %55, align 4
  %57 = load %struct.SDL_VideoDevice** %1, align 4
  %58 = getelementptr inbounds %struct.SDL_VideoDevice* %57, i32 0, i32 57
  %59 = load %struct.SDL_PrivateVideoData** %58, align 4
  %60 = getelementptr inbounds %struct.SDL_PrivateVideoData* %59, i32 0, i32 2
  %61 = load i32* %60, align 4
  %62 = mul nsw i32 %56, %61
  %63 = load %struct.SDL_VideoDevice** %1, align 4
  %64 = getelementptr inbounds %struct.SDL_VideoDevice* %63, i32 0, i32 57
  %65 = load %struct.SDL_PrivateVideoData** %64, align 4
  %66 = getelementptr inbounds %struct.SDL_PrivateVideoData* %65, i32 0, i32 0
  %67 = load i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = sdiv i32 %68, 8
  %70 = getelementptr inbounds i8* %51, i32 %69
  store i8* %70, i8** %end, align 4
  %71 = load i8** %start, align 4
  %72 = getelementptr inbounds i8* %71, i32 3
  store i8* %72, i8** %p, align 4
  br label %73

; <label>:73                                      ; preds = %79, %41
  %74 = load i8** %p, align 4
  %75 = load i8** %end, align 4
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %82

; <label>:77                                      ; preds = %73
  %78 = load i8** %p, align 4
  store i8 -1, i8* %78
  br label %79

; <label>:79                                      ; preds = %77
  %80 = load i8** %p, align 4
  %81 = getelementptr inbounds i8* %80, i32 4
  store i8* %81, i8** %p, align 4
  br label %73

; <label>:82                                      ; preds = %73
  %83 = load i32* %2, align 4
  %84 = load %struct.SDL_VideoDevice** %1, align 4
  %85 = getelementptr inbounds %struct.SDL_VideoDevice* %84, i32 0, i32 57
  %86 = load %struct.SDL_PrivateVideoData** %85, align 4
  %87 = getelementptr inbounds %struct.SDL_PrivateVideoData* %86, i32 0, i32 10
  store i32 %83, i32* %87, align 4
  %88 = load %struct.SDL_Rect** %3, align 4
  %89 = load %struct.SDL_VideoDevice** %1, align 4
  %90 = getelementptr inbounds %struct.SDL_VideoDevice* %89, i32 0, i32 57
  %91 = load %struct.SDL_PrivateVideoData** %90, align 4
  %92 = getelementptr inbounds %struct.SDL_PrivateVideoData* %91, i32 0, i32 11
  store %struct.SDL_Rect* %88, %struct.SDL_Rect** %92, align 4
  %93 = load %struct.SDL_VideoDevice** %1, align 4
  %94 = call %struct._SDLNaclJob* @SDLNaclJob_Create(i32 3, %struct.SDL_VideoDevice* %93)
  store %struct._SDLNaclJob* %94, %struct._SDLNaclJob** %job, align 4
  %95 = load %struct._MainThreadRunner** @gNaclMainThreadRunner, align 4
  %96 = load %struct._SDLNaclJob** %job, align 4
  %97 = bitcast %struct._SDLNaclJob* %96 to %struct._MainThreadJob*
  %98 = call i32 @RunJob(%struct._MainThreadRunner* %95, %struct._MainThreadJob* %97)
  %99 = load %struct.SDL_VideoDevice** %1, align 4
  %100 = getelementptr inbounds %struct.SDL_VideoDevice* %99, i32 0, i32 57
  %101 = load %struct.SDL_PrivateVideoData** %100, align 4
  %102 = getelementptr inbounds %struct.SDL_PrivateVideoData* %101, i32 0, i32 10
  store i32 0, i32* %102, align 4
  %103 = load %struct.SDL_VideoDevice** %1, align 4
  %104 = getelementptr inbounds %struct.SDL_VideoDevice* %103, i32 0, i32 57
  %105 = load %struct.SDL_PrivateVideoData** %104, align 4
  %106 = getelementptr inbounds %struct.SDL_PrivateVideoData* %105, i32 0, i32 11
  store %struct.SDL_Rect* null, %struct.SDL_Rect** %106, align 4
  br label %107

; <label>:107                                     ; preds = %82, %10
  ret void
}

define internal void @NACL_VideoQuit(%struct.SDL_VideoDevice* %_this) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %job = alloca %struct._SDLNaclJob*, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  %2 = load %struct.SDL_VideoDevice** %1, align 4
  %3 = getelementptr inbounds %struct.SDL_VideoDevice* %2, i32 0, i32 45
  %4 = load %struct.SDL_Surface** %3, align 4
  %5 = getelementptr inbounds %struct.SDL_Surface* %4, i32 0, i32 5
  %6 = load i8** %5, align 4
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %0
  %9 = load %struct.SDL_VideoDevice** %1, align 4
  %10 = getelementptr inbounds %struct.SDL_VideoDevice* %9, i32 0, i32 45
  %11 = load %struct.SDL_Surface** %10, align 4
  %12 = getelementptr inbounds %struct.SDL_Surface* %11, i32 0, i32 5
  %13 = load i8** %12, align 4
  call void @free(i8* %13) nounwind
  %14 = load %struct.SDL_VideoDevice** %1, align 4
  %15 = getelementptr inbounds %struct.SDL_VideoDevice* %14, i32 0, i32 45
  %16 = load %struct.SDL_Surface** %15, align 4
  %17 = getelementptr inbounds %struct.SDL_Surface* %16, i32 0, i32 5
  store i8* null, i8** %17, align 4
  br label %18

; <label>:18                                      ; preds = %8, %0
  %19 = load %struct.SDL_VideoDevice** %1, align 4
  %20 = call %struct._SDLNaclJob* @SDLNaclJob_Create(i32 4, %struct.SDL_VideoDevice* %19)
  store %struct._SDLNaclJob* %20, %struct._SDLNaclJob** %job, align 4
  %21 = load %struct._MainThreadRunner** @gNaclMainThreadRunner, align 4
  %22 = load %struct._SDLNaclJob** %job, align 4
  %23 = bitcast %struct._SDLNaclJob* %22 to %struct._MainThreadJob*
  %24 = call i32 @RunJob(%struct._MainThreadRunner* %21, %struct._MainThreadJob* %23)
  ret void
}

declare void @NACL_InitOSKeymap(%struct.SDL_VideoDevice*)

declare void @NACL_PumpEvents(%struct.SDL_VideoDevice*)

define internal void @NACL_FreeWMCursor(%struct.SDL_VideoDevice* %_this, %struct.WMcursor* %cursor) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %2 = alloca %struct.WMcursor*, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  store %struct.WMcursor* %cursor, %struct.WMcursor** %2, align 4
  %3 = load %struct.WMcursor** %2, align 4
  %4 = bitcast %struct.WMcursor* %3 to i8*
  call void @free(i8* %4) nounwind
  ret void
}

define internal %struct.WMcursor* @NACL_CreateWMCursor(%struct.SDL_VideoDevice* %_this, i8* %data, i8* %mask, i32 %w, i32 %h, i32 %hot_x, i32 %hot_y) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  store i8* %data, i8** %2, align 4
  store i8* %mask, i8** %3, align 4
  store i32 %w, i32* %4, align 4
  store i32 %h, i32* %5, align 4
  store i32 %hot_x, i32* %6, align 4
  store i32 %hot_y, i32* %7, align 4
  %8 = call noalias i8* @malloc(i32 0) nounwind
  %9 = bitcast i8* %8 to %struct.WMcursor*
  ret %struct.WMcursor* %9
}

define internal i32 @NACL_ShowWMCursor(%struct.SDL_VideoDevice* %_this, %struct.WMcursor* %cursor) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %2 = alloca %struct.WMcursor*, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  store %struct.WMcursor* %cursor, %struct.WMcursor** %2, align 4
  ret i32 1
}

define internal void @NACL_WarpWMCursor(%struct.SDL_VideoDevice* %_this, i16 zeroext %x, i16 zeroext %y) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  store i16 %x, i16* %2, align 2
  store i16 %y, i16* %3, align 2
  ret void
}

define internal void @NACL_DeleteDevice(%struct.SDL_VideoDevice* %device) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  store %struct.SDL_VideoDevice* %device, %struct.SDL_VideoDevice** %1, align 4
  %2 = load %struct.SDL_VideoDevice** %1, align 4
  %3 = getelementptr inbounds %struct.SDL_VideoDevice* %2, i32 0, i32 57
  %4 = load %struct.SDL_PrivateVideoData** %3, align 4
  %5 = bitcast %struct.SDL_PrivateVideoData* %4 to i8*
  call void @free(i8* %5) nounwind
  %6 = load %struct.SDL_VideoDevice** %1, align 4
  %7 = bitcast %struct.SDL_VideoDevice* %6 to i8*
  call void @free(i8* %7) nounwind
  ret void
}

declare %struct._SDLNaclJob* @SDLNaclJob_Create(i32, %struct.SDL_VideoDevice*)

declare i32 @RunJob(%struct._MainThreadRunner*, %struct._MainThreadJob*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @fflush(%struct._IO_FILE*)

declare %struct.SDL_PixelFormat* @SDL_ReallocFormat(%struct.SDL_Surface*, i32, i32, i32, i32, i32)

declare void @SDL_SetError(i8*, ...)
