; ModuleID = 'src/video/nacl_c/SDL_nacljob.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.PPB_Core_1_0 = type { void (i32)*, void (i32)*, double (...)*, double (...)*, void (i32, void (i8*, i32)*, i8*, i32, i32)*, i32 (...)* }
%struct.PPB_Graphics2D_1_0 = type { i32 (i32, %struct.PP_Size*, i32)*, i32 (i32)*, i32 (i32, %struct.PP_Size*, i32*)*, void (i32, i32, %struct.PP_Point*, %struct.PP_Rect*)*, void (i32, %struct.PP_Rect*, %struct.PP_Point*)*, void (i32, i32)*, i32 (i32, void (i8*, i32)*, i8*, i32)* }
%struct.PP_Size = type { i32, i32 }
%struct.PP_Point = type { i32, i32 }
%struct.PP_Rect = type { %struct.PP_Point, %struct.PP_Size }
%struct.PPB_Instance_1_0 = type { i32 (i32, i32)*, i32 (i32)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PPB_ImageData_1_0 = type { i32 (...)*, i32 (i32)*, i32 (i32, i32, %struct.PP_Size*, i32)*, i32 (i32)*, i32 (i32, %struct.PP_ImageDataDesc*)*, i8* (i32)*, void (i32)* }
%struct.PP_ImageDataDesc = type { i32, %struct.PP_Size, i32 }
%struct._SDLNaclJob = type { void (%struct._JobEntry*, i8*)*, i32, %struct.SDL_VideoDevice*, %struct._JobEntry* }
%struct._JobEntry = type { i32, %struct._MainThreadRunner*, %struct._MainThreadJob*, %union.pthread_mutex_t, %union.pthread_cond_t, i32, i32, i32 }
%struct._MainThreadRunner = type { %union.pthread_mutex_t, [4096 x %struct._JobEntry*], i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, %union.anon }
%union.anon = type { i32 }
%struct._MainThreadJob = type { {}* }
%union.pthread_cond_t = type { %struct.anon, [4 x i8] }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct.SDL_VideoDevice = type { i8*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*)*, %struct.SDL_Rect** (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*, i32)*, %struct.SDL_Surface* (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i32, i32, i32, i32)*, i32 (%struct.SDL_VideoDevice*, i32)*, void (%struct.SDL_VideoDevice*)*, %struct.SDL_Overlay* (%struct.SDL_VideoDevice*, i32, i32, i32, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, i32, i32, %struct.SDL_Color*)*, void (%struct.SDL_VideoDevice*, i32, %struct.SDL_Rect*)*, void (%struct.SDL_VideoDevice*)*, %struct.SDL_VideoInfo, %struct.SDL_PixelFormat*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, %struct.SDL_Rect*, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i8)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, void (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, void (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, i16*, i32 (%struct.SDL_VideoDevice*, float, float, float)*, i32 (%struct.SDL_VideoDevice*, float*, float*, float*)*, i32 (%struct.SDL_VideoDevice*, i16*)*, i32 (%struct.SDL_VideoDevice*, i16*)*, i32 (%struct.SDL_VideoDevice*, i8*)*, i8* (%struct.SDL_VideoDevice*, i8*)*, i32 (%struct.SDL_VideoDevice*, i32, i32*)*, i32 (%struct.SDL_VideoDevice*)*, void (%struct.SDL_VideoDevice*)*, i32, void (%struct.SDL_VideoDevice*, i8*, i8*)*, void (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i8*)*, i32 (%struct.SDL_VideoDevice*)*, i32 (%struct.SDL_VideoDevice*, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_SysWMinfo*)*, void (%struct.SDL_VideoDevice*, %struct.WMcursor*)*, %struct.WMcursor* (%struct.SDL_VideoDevice*, i8*, i8*, i32, i32, i32, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.WMcursor*)*, void (%struct.SDL_VideoDevice*, i16, i16)*, void (%struct.SDL_VideoDevice*, i32, i32)*, void (%struct.SDL_VideoDevice*)*, void (%struct.SDL_VideoDevice*)*, void (%struct.SDL_VideoDevice*)*, %struct.SDL_Surface*, %struct.SDL_Surface*, %struct.SDL_Surface*, %struct.SDL_Palette*, %struct.SDL_Color*, i8*, i8*, i32, i32, i32, i32, %struct.anon.0, %struct.SDL_PrivateVideoData*, %struct.SDL_PrivateGLData*, void (%struct.SDL_VideoDevice*)* }
%struct.SDL_PixelFormat = type { %struct.SDL_Palette*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8 }
%struct.SDL_Palette = type { i32, %struct.SDL_Color* }
%struct.SDL_Color = type { i8, i8, i8, i8 }
%struct.SDL_Rect = type { i16, i16, i16, i16 }
%struct.SDL_Surface = type { i32, %struct.SDL_PixelFormat*, i32, i32, i16, i8*, i32, %struct.private_hwdata*, %struct.SDL_Rect, i32, i32, %struct.SDL_BlitMap*, i32, i32 }
%struct.private_hwdata = type opaque
%struct.SDL_BlitMap = type opaque
%struct.SDL_Overlay = type { i32, i32, i32, i32, i16*, i8**, %struct.private_yuvhwfuncs*, %struct.private_yuvhwdata*, i8, [3 x i8] }
%struct.private_yuvhwfuncs = type opaque
%struct.private_yuvhwdata = type opaque
%struct.SDL_VideoInfo = type { i8, i8, [2 x i8], i32, %struct.SDL_PixelFormat*, i32, i32 }
%struct.SDL_SysWMinfo = type opaque
%struct.WMcursor = type opaque
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i8* }
%struct.SDL_PrivateVideoData = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.SDL_Rect* }
%struct.SDL_PrivateGLData = type opaque
%struct.PP_CompletionCallback = type { void (i8*, i32)*, i8*, i32 }

@g_core_interface = external global %struct.PPB_Core_1_0*
@g_graphics_2d_interface = external global %struct.PPB_Graphics2D_1_0*
@.str = private unnamed_addr constant [41 x i8] c"nacljob->device_->hidden->context2d != 0\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"src/video/nacl_c/SDL_nacljob.c\00", align 1
@__PRETTY_FUNCTION__.SDLNaclJob_Run = private unnamed_addr constant [40 x i8] c"void SDLNaclJob_Run(JobEntry *, void *)\00", align 1
@g_instance_interface = external global %struct.PPB_Instance_1_0*
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [46 x i8] c"***** Couldn't bind the device context *****\0A\00", align 1
@g_image_data_interface = external global %struct.PPB_ImageData_1_0*
@.str3 = private unnamed_addr constant [42 x i8] c"nacljob->device_->hidden->image_data != 0\00", align 1

define hidden %struct._SDLNaclJob* @SDLNaclJob_Create(i32 %op, %struct.SDL_VideoDevice* %device) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.SDL_VideoDevice*, align 4
  %job = alloca %struct._SDLNaclJob*, align 4
  store i32 %op, i32* %1, align 4
  store %struct.SDL_VideoDevice* %device, %struct.SDL_VideoDevice** %2, align 4
  %3 = call noalias i8* @malloc(i32 16) nounwind
  %4 = bitcast i8* %3 to %struct._SDLNaclJob*
  store %struct._SDLNaclJob* %4, %struct._SDLNaclJob** %job, align 4
  %5 = load i32* %1, align 4
  %6 = load %struct._SDLNaclJob** %job, align 4
  %7 = getelementptr inbounds %struct._SDLNaclJob* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.SDL_VideoDevice** %2, align 4
  %9 = load %struct._SDLNaclJob** %job, align 4
  %10 = getelementptr inbounds %struct._SDLNaclJob* %9, i32 0, i32 2
  store %struct.SDL_VideoDevice* %8, %struct.SDL_VideoDevice** %10, align 4
  %11 = load %struct._SDLNaclJob** %job, align 4
  %12 = getelementptr inbounds %struct._SDLNaclJob* %11, i32 0, i32 0
  store void (%struct._JobEntry*, i8*)* @SDLNaclJob_Run, void (%struct._JobEntry*, i8*)** %12, align 4
  %13 = load %struct._SDLNaclJob** %job, align 4
  ret %struct._SDLNaclJob* %13
}

declare noalias i8* @malloc(i32) nounwind

define hidden void @SDLNaclJob_Run(%struct._JobEntry* %e, i8* %job) nounwind {
  %1 = alloca %struct._JobEntry*, align 4
  %2 = alloca i8*, align 4
  %nacljob = alloca %struct._SDLNaclJob*, align 4
  %cc = alloca %struct.PP_CompletionCallback, align 4
  %instance = alloca i32, align 4
  %rv = alloca i32, align 4
  %size = alloca %struct.PP_Size, align 4
  %r = alloca %struct.SDL_Rect, align 2
  %i = alloca i32, align 4
  %top_left = alloca %struct.PP_Point, align 4
  %src_rect = alloca %struct.PP_Rect, align 4
  %3 = alloca %struct.PP_CompletionCallback, align 4
  store %struct._JobEntry* %e, %struct._JobEntry** %1, align 4
  store i8* %job, i8** %2, align 4
  %4 = load i8** %2, align 4
  %5 = bitcast i8* %4 to %struct._SDLNaclJob*
  store %struct._SDLNaclJob* %5, %struct._SDLNaclJob** %nacljob, align 4
  %6 = load %struct._JobEntry** %1, align 4
  %7 = load %struct._SDLNaclJob** %nacljob, align 4
  %8 = getelementptr inbounds %struct._SDLNaclJob* %7, i32 0, i32 3
  store %struct._JobEntry* %6, %struct._JobEntry** %8, align 4
  %9 = load %struct._SDLNaclJob** %nacljob, align 4
  %10 = bitcast %struct._SDLNaclJob* %9 to i8*
  call void @PP_MakeCompletionCallback(%struct.PP_CompletionCallback* sret %3, void (i8*, i32)* bitcast (void (%struct._SDLNaclJob*, i32)* @Finish to void (i8*, i32)*), i8* %10)
  %11 = bitcast %struct.PP_CompletionCallback* %cc to i8*
  %12 = bitcast %struct.PP_CompletionCallback* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 12, i32 4, i1 false)
  %13 = load %struct._JobEntry** %1, align 4
  %14 = call i32 @ExtractPepperInstance(%struct._JobEntry* %13)
  store i32 %14, i32* %instance, align 4
  %15 = load %struct._SDLNaclJob** %nacljob, align 4
  %16 = getelementptr inbounds %struct._SDLNaclJob* %15, i32 0, i32 1
  %17 = load i32* %16, align 4
  switch i32 %17, label %243 [
    i32 1, label %18
    i32 2, label %19
    i32 3, label %139
    i32 4, label %222
  ]

; <label>:18                                      ; preds = %0
  call void @PP_RunCompletionCallback(%struct.PP_CompletionCallback* %cc, i32 0)
  br label %243

; <label>:19                                      ; preds = %0
  %20 = load %struct._SDLNaclJob** %nacljob, align 4
  %21 = getelementptr inbounds %struct._SDLNaclJob* %20, i32 0, i32 2
  %22 = load %struct.SDL_VideoDevice** %21, align 4
  %23 = getelementptr inbounds %struct.SDL_VideoDevice* %22, i32 0, i32 57
  %24 = load %struct.SDL_PrivateVideoData** %23, align 4
  %25 = getelementptr inbounds %struct.SDL_PrivateVideoData* %24, i32 0, i32 9
  %26 = load i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

; <label>:28                                      ; preds = %19
  %29 = load %struct.PPB_Core_1_0** @g_core_interface, align 4
  %30 = getelementptr inbounds %struct.PPB_Core_1_0* %29, i32 0, i32 1
  %31 = load void (i32)** %30, align 4
  %32 = load %struct._SDLNaclJob** %nacljob, align 4
  %33 = getelementptr inbounds %struct._SDLNaclJob* %32, i32 0, i32 2
  %34 = load %struct.SDL_VideoDevice** %33, align 4
  %35 = getelementptr inbounds %struct.SDL_VideoDevice* %34, i32 0, i32 57
  %36 = load %struct.SDL_PrivateVideoData** %35, align 4
  %37 = getelementptr inbounds %struct.SDL_PrivateVideoData* %36, i32 0, i32 9
  %38 = load i32* %37, align 4
  call void %31(i32 %38)
  br label %39

; <label>:39                                      ; preds = %28, %19
  %40 = load %struct._SDLNaclJob** %nacljob, align 4
  %41 = getelementptr inbounds %struct._SDLNaclJob* %40, i32 0, i32 2
  %42 = load %struct.SDL_VideoDevice** %41, align 4
  %43 = getelementptr inbounds %struct.SDL_VideoDevice* %42, i32 0, i32 57
  %44 = load %struct.SDL_PrivateVideoData** %43, align 4
  %45 = getelementptr inbounds %struct.SDL_PrivateVideoData* %44, i32 0, i32 1
  %46 = load i32* %45, align 4
  %47 = getelementptr inbounds %struct.PP_Size* %size, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct._SDLNaclJob** %nacljob, align 4
  %49 = getelementptr inbounds %struct._SDLNaclJob* %48, i32 0, i32 2
  %50 = load %struct.SDL_VideoDevice** %49, align 4
  %51 = getelementptr inbounds %struct.SDL_VideoDevice* %50, i32 0, i32 57
  %52 = load %struct.SDL_PrivateVideoData** %51, align 4
  %53 = getelementptr inbounds %struct.SDL_PrivateVideoData* %52, i32 0, i32 2
  %54 = load i32* %53, align 4
  %55 = getelementptr inbounds %struct.PP_Size* %size, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.PPB_Graphics2D_1_0** @g_graphics_2d_interface, align 4
  %57 = getelementptr inbounds %struct.PPB_Graphics2D_1_0* %56, i32 0, i32 0
  %58 = load i32 (i32, %struct.PP_Size*, i32)** %57, align 4
  %59 = load i32* %instance, align 4
  %60 = call i32 %58(i32 %59, %struct.PP_Size* %size, i32 0)
  %61 = load %struct._SDLNaclJob** %nacljob, align 4
  %62 = getelementptr inbounds %struct._SDLNaclJob* %61, i32 0, i32 2
  %63 = load %struct.SDL_VideoDevice** %62, align 4
  %64 = getelementptr inbounds %struct.SDL_VideoDevice* %63, i32 0, i32 57
  %65 = load %struct.SDL_PrivateVideoData** %64, align 4
  %66 = getelementptr inbounds %struct.SDL_PrivateVideoData* %65, i32 0, i32 9
  store i32 %60, i32* %66, align 4
  %67 = load %struct._SDLNaclJob** %nacljob, align 4
  %68 = getelementptr inbounds %struct._SDLNaclJob* %67, i32 0, i32 2
  %69 = load %struct.SDL_VideoDevice** %68, align 4
  %70 = getelementptr inbounds %struct.SDL_VideoDevice* %69, i32 0, i32 57
  %71 = load %struct.SDL_PrivateVideoData** %70, align 4
  %72 = getelementptr inbounds %struct.SDL_PrivateVideoData* %71, i32 0, i32 9
  %73 = load i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %39
  br label %78

; <label>:76                                      ; preds = %39
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0), i32 66, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__.SDLNaclJob_Run, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %78

; <label>:78                                      ; preds = %77, %75
  %79 = load %struct.PPB_Instance_1_0** @g_instance_interface, align 4
  %80 = getelementptr inbounds %struct.PPB_Instance_1_0* %79, i32 0, i32 0
  %81 = load i32 (i32, i32)** %80, align 4
  %82 = load i32* %instance, align 4
  %83 = load %struct._SDLNaclJob** %nacljob, align 4
  %84 = getelementptr inbounds %struct._SDLNaclJob* %83, i32 0, i32 2
  %85 = load %struct.SDL_VideoDevice** %84, align 4
  %86 = getelementptr inbounds %struct.SDL_VideoDevice* %85, i32 0, i32 57
  %87 = load %struct.SDL_PrivateVideoData** %86, align 4
  %88 = getelementptr inbounds %struct.SDL_PrivateVideoData* %87, i32 0, i32 9
  %89 = load i32* %88, align 4
  %90 = call i32 %81(i32 %82, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

; <label>:92                                      ; preds = %78
  %93 = load %struct._IO_FILE** @stderr, align 4
  %94 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([46 x i8]* @.str2, i32 0, i32 0))
  br label %95

; <label>:95                                      ; preds = %92, %78
  %96 = load %struct._SDLNaclJob** %nacljob, align 4
  %97 = getelementptr inbounds %struct._SDLNaclJob* %96, i32 0, i32 2
  %98 = load %struct.SDL_VideoDevice** %97, align 4
  %99 = getelementptr inbounds %struct.SDL_VideoDevice* %98, i32 0, i32 57
  %100 = load %struct.SDL_PrivateVideoData** %99, align 4
  %101 = getelementptr inbounds %struct.SDL_PrivateVideoData* %100, i32 0, i32 8
  %102 = load i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

; <label>:104                                     ; preds = %95
  %105 = load %struct.PPB_Core_1_0** @g_core_interface, align 4
  %106 = getelementptr inbounds %struct.PPB_Core_1_0* %105, i32 0, i32 1
  %107 = load void (i32)** %106, align 4
  %108 = load %struct._SDLNaclJob** %nacljob, align 4
  %109 = getelementptr inbounds %struct._SDLNaclJob* %108, i32 0, i32 2
  %110 = load %struct.SDL_VideoDevice** %109, align 4
  %111 = getelementptr inbounds %struct.SDL_VideoDevice* %110, i32 0, i32 57
  %112 = load %struct.SDL_PrivateVideoData** %111, align 4
  %113 = getelementptr inbounds %struct.SDL_PrivateVideoData* %112, i32 0, i32 8
  %114 = load i32* %113, align 4
  call void %107(i32 %114)
  br label %115

; <label>:115                                     ; preds = %104, %95
  %116 = load %struct.PPB_ImageData_1_0** @g_image_data_interface, align 4
  %117 = getelementptr inbounds %struct.PPB_ImageData_1_0* %116, i32 0, i32 2
  %118 = load i32 (i32, i32, %struct.PP_Size*, i32)** %117, align 4
  %119 = load i32* %instance, align 4
  %120 = call i32 %118(i32 %119, i32 0, %struct.PP_Size* %size, i32 0)
  %121 = load %struct._SDLNaclJob** %nacljob, align 4
  %122 = getelementptr inbounds %struct._SDLNaclJob* %121, i32 0, i32 2
  %123 = load %struct.SDL_VideoDevice** %122, align 4
  %124 = getelementptr inbounds %struct.SDL_VideoDevice* %123, i32 0, i32 57
  %125 = load %struct.SDL_PrivateVideoData** %124, align 4
  %126 = getelementptr inbounds %struct.SDL_PrivateVideoData* %125, i32 0, i32 8
  store i32 %120, i32* %126, align 4
  %127 = load %struct._SDLNaclJob** %nacljob, align 4
  %128 = getelementptr inbounds %struct._SDLNaclJob* %127, i32 0, i32 2
  %129 = load %struct.SDL_VideoDevice** %128, align 4
  %130 = getelementptr inbounds %struct.SDL_VideoDevice* %129, i32 0, i32 57
  %131 = load %struct.SDL_PrivateVideoData** %130, align 4
  %132 = getelementptr inbounds %struct.SDL_PrivateVideoData* %131, i32 0, i32 8
  %133 = load i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %115
  br label %138

; <label>:136                                     ; preds = %115
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0), i32 87, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__.SDLNaclJob_Run, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %138

; <label>:138                                     ; preds = %137, %135
  call void @PP_RunCompletionCallback(%struct.PP_CompletionCallback* %cc, i32 0)
  br label %243

; <label>:139                                     ; preds = %0
  store i32 0, i32* %i, align 4
  br label %140

; <label>:140                                     ; preds = %201, %139
  %141 = load i32* %i, align 4
  %142 = load %struct._SDLNaclJob** %nacljob, align 4
  %143 = getelementptr inbounds %struct._SDLNaclJob* %142, i32 0, i32 2
  %144 = load %struct.SDL_VideoDevice** %143, align 4
  %145 = getelementptr inbounds %struct.SDL_VideoDevice* %144, i32 0, i32 57
  %146 = load %struct.SDL_PrivateVideoData** %145, align 4
  %147 = getelementptr inbounds %struct.SDL_PrivateVideoData* %146, i32 0, i32 10
  %148 = load i32* %147, align 4
  %149 = icmp slt i32 %141, %148
  br i1 %149, label %150, label %204

; <label>:150                                     ; preds = %140
  %151 = load i32* %i, align 4
  %152 = load %struct._SDLNaclJob** %nacljob, align 4
  %153 = getelementptr inbounds %struct._SDLNaclJob* %152, i32 0, i32 2
  %154 = load %struct.SDL_VideoDevice** %153, align 4
  %155 = getelementptr inbounds %struct.SDL_VideoDevice* %154, i32 0, i32 57
  %156 = load %struct.SDL_PrivateVideoData** %155, align 4
  %157 = getelementptr inbounds %struct.SDL_PrivateVideoData* %156, i32 0, i32 11
  %158 = load %struct.SDL_Rect** %157, align 4
  %159 = getelementptr inbounds %struct.SDL_Rect* %158, i32 %151
  %160 = bitcast %struct.SDL_Rect* %r to i8*
  %161 = bitcast %struct.SDL_Rect* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %160, i8* %161, i32 8, i32 2, i1 false)
  %162 = getelementptr inbounds %struct.PP_Point* %top_left, i32 0, i32 1
  store i32 0, i32* %162, align 4
  %163 = getelementptr inbounds %struct.PP_Point* %top_left, i32 0, i32 0
  store i32 0, i32* %163, align 4
  %164 = getelementptr inbounds %struct.SDL_Rect* %r, i32 0, i32 0
  %165 = load i16* %164, align 2
  %166 = sext i16 %165 to i32
  %167 = getelementptr inbounds %struct.PP_Rect* %src_rect, i32 0, i32 0
  %168 = getelementptr inbounds %struct.PP_Point* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = getelementptr inbounds %struct.SDL_Rect* %r, i32 0, i32 1
  %170 = load i16* %169, align 2
  %171 = sext i16 %170 to i32
  %172 = getelementptr inbounds %struct.PP_Rect* %src_rect, i32 0, i32 0
  %173 = getelementptr inbounds %struct.PP_Point* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = getelementptr inbounds %struct.SDL_Rect* %r, i32 0, i32 2
  %175 = load i16* %174, align 2
  %176 = zext i16 %175 to i32
  %177 = getelementptr inbounds %struct.PP_Rect* %src_rect, i32 0, i32 1
  %178 = getelementptr inbounds %struct.PP_Size* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = getelementptr inbounds %struct.SDL_Rect* %r, i32 0, i32 3
  %180 = load i16* %179, align 2
  %181 = zext i16 %180 to i32
  %182 = getelementptr inbounds %struct.PP_Rect* %src_rect, i32 0, i32 1
  %183 = getelementptr inbounds %struct.PP_Size* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load %struct.PPB_Graphics2D_1_0** @g_graphics_2d_interface, align 4
  %185 = getelementptr inbounds %struct.PPB_Graphics2D_1_0* %184, i32 0, i32 3
  %186 = load void (i32, i32, %struct.PP_Point*, %struct.PP_Rect*)** %185, align 4
  %187 = load %struct._SDLNaclJob** %nacljob, align 4
  %188 = getelementptr inbounds %struct._SDLNaclJob* %187, i32 0, i32 2
  %189 = load %struct.SDL_VideoDevice** %188, align 4
  %190 = getelementptr inbounds %struct.SDL_VideoDevice* %189, i32 0, i32 57
  %191 = load %struct.SDL_PrivateVideoData** %190, align 4
  %192 = getelementptr inbounds %struct.SDL_PrivateVideoData* %191, i32 0, i32 9
  %193 = load i32* %192, align 4
  %194 = load %struct._SDLNaclJob** %nacljob, align 4
  %195 = getelementptr inbounds %struct._SDLNaclJob* %194, i32 0, i32 2
  %196 = load %struct.SDL_VideoDevice** %195, align 4
  %197 = getelementptr inbounds %struct.SDL_VideoDevice* %196, i32 0, i32 57
  %198 = load %struct.SDL_PrivateVideoData** %197, align 4
  %199 = getelementptr inbounds %struct.SDL_PrivateVideoData* %198, i32 0, i32 8
  %200 = load i32* %199, align 4
  call void %186(i32 %193, i32 %200, %struct.PP_Point* %top_left, %struct.PP_Rect* %src_rect)
  br label %201

; <label>:201                                     ; preds = %150
  %202 = load i32* %i, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %i, align 4
  br label %140

; <label>:204                                     ; preds = %140
  %205 = load %struct.PPB_Graphics2D_1_0** @g_graphics_2d_interface, align 4
  %206 = getelementptr inbounds %struct.PPB_Graphics2D_1_0* %205, i32 0, i32 6
  %207 = load i32 (i32, void (i8*, i32)*, i8*, i32)** %206, align 4
  %208 = load %struct._SDLNaclJob** %nacljob, align 4
  %209 = getelementptr inbounds %struct._SDLNaclJob* %208, i32 0, i32 2
  %210 = load %struct.SDL_VideoDevice** %209, align 4
  %211 = getelementptr inbounds %struct.SDL_VideoDevice* %210, i32 0, i32 57
  %212 = load %struct.SDL_PrivateVideoData** %211, align 4
  %213 = getelementptr inbounds %struct.SDL_PrivateVideoData* %212, i32 0, i32 9
  %214 = load i32* %213, align 4
  %215 = getelementptr inbounds %struct.PP_CompletionCallback* %cc, i32 0, i32 0
  %216 = load void (i8*, i32)** %215, align 4
  %217 = getelementptr inbounds %struct.PP_CompletionCallback* %cc, i32 0, i32 1
  %218 = load i8** %217, align 4
  %219 = getelementptr inbounds %struct.PP_CompletionCallback* %cc, i32 0, i32 2
  %220 = load i32* %219, align 4
  %221 = call i32 %207(i32 %214, void (i8*, i32)* %216, i8* %218, i32 %220)
  br label %243

; <label>:222                                     ; preds = %0
  %223 = load %struct.PPB_Core_1_0** @g_core_interface, align 4
  %224 = getelementptr inbounds %struct.PPB_Core_1_0* %223, i32 0, i32 1
  %225 = load void (i32)** %224, align 4
  %226 = load %struct._SDLNaclJob** %nacljob, align 4
  %227 = getelementptr inbounds %struct._SDLNaclJob* %226, i32 0, i32 2
  %228 = load %struct.SDL_VideoDevice** %227, align 4
  %229 = getelementptr inbounds %struct.SDL_VideoDevice* %228, i32 0, i32 57
  %230 = load %struct.SDL_PrivateVideoData** %229, align 4
  %231 = getelementptr inbounds %struct.SDL_PrivateVideoData* %230, i32 0, i32 9
  %232 = load i32* %231, align 4
  call void %225(i32 %232)
  %233 = load %struct.PPB_Core_1_0** @g_core_interface, align 4
  %234 = getelementptr inbounds %struct.PPB_Core_1_0* %233, i32 0, i32 1
  %235 = load void (i32)** %234, align 4
  %236 = load %struct._SDLNaclJob** %nacljob, align 4
  %237 = getelementptr inbounds %struct._SDLNaclJob* %236, i32 0, i32 2
  %238 = load %struct.SDL_VideoDevice** %237, align 4
  %239 = getelementptr inbounds %struct.SDL_VideoDevice* %238, i32 0, i32 57
  %240 = load %struct.SDL_PrivateVideoData** %239, align 4
  %241 = getelementptr inbounds %struct.SDL_PrivateVideoData* %240, i32 0, i32 8
  %242 = load i32* %241, align 4
  call void %235(i32 %242)
  call void @PP_RunCompletionCallback(%struct.PP_CompletionCallback* %cc, i32 0)
  br label %243

; <label>:243                                     ; preds = %222, %0, %204, %138, %18
  ret void
}

define hidden void @SDLNaclJob_Destroy(%struct._SDLNaclJob* %job) nounwind {
  %1 = alloca %struct._SDLNaclJob*, align 4
  store %struct._SDLNaclJob* %job, %struct._SDLNaclJob** %1, align 4
  %2 = load %struct._SDLNaclJob** %1, align 4
  %3 = bitcast %struct._SDLNaclJob* %2 to i8*
  call void @free(i8* %3) nounwind
  ret void
}

declare void @free(i8*) nounwind

define internal void @PP_MakeCompletionCallback(%struct.PP_CompletionCallback* noalias sret %agg.result, void (i8*, i32)* %func, i8* %user_data) nounwind inlinehint {
  %1 = alloca void (i8*, i32)*, align 4
  %2 = alloca i8*, align 4
  %cc = alloca %struct.PP_CompletionCallback, align 4
  store void (i8*, i32)* %func, void (i8*, i32)** %1, align 4
  store i8* %user_data, i8** %2, align 4
  %3 = load void (i8*, i32)** %1, align 4
  %4 = getelementptr inbounds %struct.PP_CompletionCallback* %cc, i32 0, i32 0
  store void (i8*, i32)* %3, void (i8*, i32)** %4, align 4
  %5 = load i8** %2, align 4
  %6 = getelementptr inbounds %struct.PP_CompletionCallback* %cc, i32 0, i32 1
  store i8* %5, i8** %6, align 4
  %7 = getelementptr inbounds %struct.PP_CompletionCallback* %cc, i32 0, i32 2
  store i32 0, i32* %7, align 4
  %8 = bitcast %struct.PP_CompletionCallback* %agg.result to i8*
  %9 = bitcast %struct.PP_CompletionCallback* %cc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 12, i32 4, i1 false)
  ret void
}

define hidden void @Finish(%struct._SDLNaclJob* %job, i32 %result) nounwind {
  %1 = alloca %struct._SDLNaclJob*, align 4
  %2 = alloca i32, align 4
  store %struct._SDLNaclJob* %job, %struct._SDLNaclJob** %1, align 4
  store i32 %result, i32* %2, align 4
  %3 = load %struct._SDLNaclJob** %1, align 4
  %4 = getelementptr inbounds %struct._SDLNaclJob* %3, i32 0, i32 3
  %5 = load %struct._JobEntry** %4, align 4
  %6 = bitcast %struct._JobEntry* %5 to i8*
  %7 = load i32* %2, align 4
  call void @ResultCompletion(i8* %6, i32 %7)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i32 @ExtractPepperInstance(%struct._JobEntry*)

define internal void @PP_RunCompletionCallback(%struct.PP_CompletionCallback* %cc, i32 %result) nounwind inlinehint {
  %1 = alloca %struct.PP_CompletionCallback*, align 4
  %2 = alloca i32, align 4
  store %struct.PP_CompletionCallback* %cc, %struct.PP_CompletionCallback** %1, align 4
  store i32 %result, i32* %2, align 4
  %3 = load %struct.PP_CompletionCallback** %1, align 4
  %4 = getelementptr inbounds %struct.PP_CompletionCallback* %3, i32 0, i32 0
  %5 = load void (i8*, i32)** %4, align 4
  %6 = load %struct.PP_CompletionCallback** %1, align 4
  %7 = getelementptr inbounds %struct.PP_CompletionCallback* %6, i32 0, i32 1
  %8 = load i8** %7, align 4
  %9 = load i32* %2, align 4
  call void %5(i8* %8, i32 %9)
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare void @ResultCompletion(i8*, i32)
