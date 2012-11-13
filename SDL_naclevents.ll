; ModuleID = 'src/video/nacl_c/SDL_naclevents.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct._EventQueue = type { [4096 x %union.SDL_Event*], %struct.SDL_mutex*, i32, i32, i32 }
%union.SDL_Event = type { %struct.SDL_KeyboardEvent }
%struct.SDL_KeyboardEvent = type { i8, i8, i8, %struct.SDL_keysym }
%struct.SDL_keysym = type { i8, i32, i32, i16 }
%struct.SDL_mutex = type opaque
%struct.PPB_InputEvent_1_0 = type { i32 (i32, i32)*, i32 (i32, i32)*, void (i32, i32)*, i32 (i32)*, i32 (i32)*, double (i32)*, i32 (i32)* }
%struct.PPB_MouseInputEvent_1_1 = type { i32 (i32, i32, double, i32, i32, %struct.PP_Point*, i32, %struct.PP_Point*)*, i32 (i32)*, i32 (i32)*, void (%struct.PP_Point*, i32)*, i32 (i32)*, void (%struct.PP_Point*, i32)* }
%struct.PP_Point = type { i32, i32 }
%struct.PPB_WheelInputEvent_1_0 = type { i32 (i32, double, i32, %struct.PP_FloatPoint*, %struct.PP_FloatPoint*, i32)*, i32 (i32)*, void (%struct.PP_FloatPoint*, i32)*, void (%struct.PP_FloatPoint*, i32)*, i32 (i32)* }
%struct.PP_FloatPoint = type { float, float }
%struct.PPB_KeyboardInputEvent_1_0 = type { i32 (i32, i32, double, i32, i32, %struct.PP_Var*)*, i32 (i32)*, i32 (i32)*, void (%struct.PP_Var*, i32)* }
%struct.PP_Var = type { i32, i32, %union.PP_VarValue }
%union.PP_VarValue = type { double }
%struct.PPB_Var_1_1 = type { void (%struct.PP_Var*)*, void (%struct.PP_Var*)*, void (%struct.PP_Var*, i8*, i32)*, i8* (%struct.PP_Var*, i32*)* }
%struct.SDL_MouseButtonEvent = type { i8, i8, i8, i8, i16, i16 }
%struct.SDL_MouseMotionEvent = type { i8, i8, i8, i16, i16, i16, i16 }
%struct.SDL_ActiveEvent = type { i8, i8, i8 }
%struct.SDL_VideoDevice = type { i8*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*)*, %struct.SDL_Rect** (%struct.SDL_VideoDevice*, %struct.SDL_PixelFormat*, i32)*, %struct.SDL_Surface* (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i32, i32, i32, i32)*, i32 (%struct.SDL_VideoDevice*, i32)*, {}*, %struct.SDL_Overlay* (%struct.SDL_VideoDevice*, i32, i32, i32, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, i32, i32, %struct.SDL_Color*)*, void (%struct.SDL_VideoDevice*, i32, %struct.SDL_Rect*)*, {}*, %struct.SDL_VideoInfo, %struct.SDL_PixelFormat*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, %struct.SDL_Rect*, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i8)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, void (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, void (%struct.SDL_VideoDevice*, %struct.SDL_Surface*)*, i16*, i32 (%struct.SDL_VideoDevice*, float, float, float)*, i32 (%struct.SDL_VideoDevice*, float*, float*, float*)*, i32 (%struct.SDL_VideoDevice*, i16*)*, i32 (%struct.SDL_VideoDevice*, i16*)*, i32 (%struct.SDL_VideoDevice*, i8*)*, i8* (%struct.SDL_VideoDevice*, i8*)*, i32 (%struct.SDL_VideoDevice*, i32, i32*)*, i32 (%struct.SDL_VideoDevice*)*, {}*, i32, void (%struct.SDL_VideoDevice*, i8*, i8*)*, void (%struct.SDL_VideoDevice*, %struct.SDL_Surface*, i8*)*, i32 (%struct.SDL_VideoDevice*)*, i32 (%struct.SDL_VideoDevice*, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.SDL_SysWMinfo*)*, void (%struct.SDL_VideoDevice*, %struct.WMcursor*)*, %struct.WMcursor* (%struct.SDL_VideoDevice*, i8*, i8*, i32, i32, i32, i32)*, i32 (%struct.SDL_VideoDevice*, %struct.WMcursor*)*, void (%struct.SDL_VideoDevice*, i16, i16)*, void (%struct.SDL_VideoDevice*, i32, i32)*, {}*, {}*, {}*, %struct.SDL_Surface*, %struct.SDL_Surface*, %struct.SDL_Surface*, %struct.SDL_Palette*, %struct.SDL_Color*, i8*, i8*, i32, i32, i32, i32, %struct.anon, %struct.SDL_PrivateVideoData*, %struct.SDL_PrivateGLData*, {}* }
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
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i8* }
%struct.SDL_PrivateVideoData = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.SDL_Rect* }
%struct.SDL_PrivateGLData = type opaque

@SDL_NACL_PushEvent.last_scancode = internal global i8 0, align 1
@SDL_NACL_PushEvent.wheel_clicks_x = internal global double 0.000000e+00, align 8
@SDL_NACL_PushEvent.wheel_clicks_y = internal global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [33 x i8] c"The Begin of SDL_NACL_PushEvent\0A\00", align 1
@event_queue = internal global %struct._EventQueue* null, align 4
@.str1 = private unnamed_addr constant [51 x i8] c"event_queue = EventQueue_Create(); event_queue=%p\0A\00", align 1
@g_input_event_interface = external global %struct.PPB_InputEvent_1_0*
@.str2 = private unnamed_addr constant [89 x i8] c"PP_InputEvent_Type type = g_input_event_interface->GetType(ppevent); ppevent=%d type=%d\0A\00", align 1
@.str3 = private unnamed_addr constant [81 x i8] c"if (type == PP_INPUTEVENT_TYPE_MOUSEDOWN || type == PP_INPUTEVENT_TYPE_MOUSEUP)\0A\00", align 1
@g_mouse_input_event_interface = external global %struct.PPB_MouseInputEvent_1_1*
@.str4 = private unnamed_addr constant [110 x i8] c"event.button.button = translateButton(g_mouse_input_event_interface->GetButton(mouse_event)); mouse_event=%d\0A\00", align 1
@.str5 = private unnamed_addr constant [95 x i8] c"event.button.x = g_mouse_input_event_interface->GetPosition(mouse_event).x; event.button.x=%d\0A\00", align 1
@.str6 = private unnamed_addr constant [95 x i8] c"event.button.y = g_mouse_input_event_interface->GetPosition(mouse_event).y; event.button.y=%d\0A\00", align 1
@.str7 = private unnamed_addr constant [69 x i8] c"PushEvent(event_queue, copyEvent(&event)); event_queue=%p, event=%d\0A\00", align 1
@.str8 = private unnamed_addr constant [43 x i8] c"else if(type == PP_INPUTEVENT_TYPE_WHEEL)\0A\00", align 1
@g_wheel_input_event_interface = external global %struct.PPB_WheelInputEvent_1_0*
@.str9 = private unnamed_addr constant [93 x i8] c"wheel_clicks_x += g_wheel_input_event_interface->GetTicks(wheel_event).x; wheel_clicks_x=%d\0A\00", align 1
@.str10 = private unnamed_addr constant [93 x i8] c"wheel_clicks_y += g_wheel_input_event_interface->GetTicks(wheel_event).y; wheel_clicks_y=%d\0A\00", align 1
@.str11 = private unnamed_addr constant [67 x i8] c"sdl_wheel_clicks_x = trunc(wheel_clicks_x); sdl_wheel_clicks_x=%d\0A\00", align 1
@.str12 = private unnamed_addr constant [67 x i8] c"sdl_wheel_clicks_y = trunc(wheel_clicks_y); sdl_wheel_clicks_y=%d\0A\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"for 1 i=%d\0A\00", align 1
@.str14 = private unnamed_addr constant [12 x i8] c"for 2 i=%d\0A\00", align 1
@.str15 = private unnamed_addr constant [48 x i8] c"else if (type == PP_INPUTEVENT_TYPE_MOUSEMOVE)\0A\00", align 1
@.str16 = private unnamed_addr constant [95 x i8] c"event.motion.x = g_mouse_input_event_interface->GetPosition(mouse_event).x; event.motion.x=%d\0A\00", align 1
@.str17 = private unnamed_addr constant [95 x i8] c"event.motion.y = g_mouse_input_event_interface->GetPosition(mouse_event).y; event.motion.y=%d\0A\00", align 1
@.str18 = private unnamed_addr constant [117 x i8] c"else if (type == PP_INPUTEVENT_TYPE_KEYDOWN || type == PP_INPUTEVENT_TYPE_KEYUP || type == PP_INPUTEVENT_TYPE_CHAR)\0A\00", align 1
@g_keyboard_input_event_interface = external global %struct.PPB_KeyboardInputEvent_1_0*
@.str19 = private unnamed_addr constant [119 x i8] c"keysym.scancode = g_keyboard_input_event_interface->GetKeyCode(keyboard_event); keyboard_event=%d, keysym.scancode=%d\0A\00", align 1
@.str20 = private unnamed_addr constant [93 x i8] c"var = g_keyboard_input_event_interface->GetCharacterText(keyboard_event); keyboard_event=%d\0A\00", align 1
@g_var_interface = external global %struct.PPB_Var_1_1*
@.str21 = private unnamed_addr constant [90 x i8] c"keystring = g_var_interface->VarToUtf8(var, &keystringlen); keystringlen:%d keystring:%p\0A\00", align 1
@.str22 = private unnamed_addr constant [59 x i8] c"keysym.sym = translateKey(keysym.scancode); keysym.sym=%d\0A\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"type == PP_INPUTEVENT_TYPE_KEYDOWN\00", align 1
@.str24 = private unnamed_addr constant [43 x i8] c"else if (type == PP_INPUTEVENT_TYPE_CHAR)\0A\00", align 1
@.str25 = private unnamed_addr constant [47 x i8] c"if (keysym.sym >= ' ' &&  keysym.sym <= 126) \0A\00", align 1
@.str26 = private unnamed_addr constant [89 x i8] c"keysym.scancode = translateAscii(keysym.unicode); keysym.unicode=%d, keysym.scancode=%d\0A\00", align 1
@.str27 = private unnamed_addr constant [78 x i8] c"keysym.sym = translateKey(keysym.scancode); keysym.scancode=%d keysym.sym=%d\0A\00", align 1
@.str28 = private unnamed_addr constant [25 x i8] c"else if (last_scancode)\0A\00", align 1
@.str29 = private unnamed_addr constant [46 x i8] c"else event->type == PP_INPUTEVENT_TYPE_KEYUP\0A\00", align 1
@.str30 = private unnamed_addr constant [90 x i8] c"else if (type == PP_INPUTEVENT_TYPE_MOUSEENTER || type == PP_INPUTEVENT_TYPE_MOUSELEAVE)\0A\00", align 1
@.str31 = private unnamed_addr constant [32 x i8] c"The End of SDL_NACL_PushEvent \0A\00", align 1
@.str32 = private unnamed_addr constant [61 x i8] c"copyEvent(SDL_Event *event); event=%p, return evnet_copy=%p\0A\00", align 1

define hidden void @SDL_NACL_PushEvent(i32 %ppevent) nounwind {
  %1 = alloca i32, align 4
  %keysym = alloca %struct.SDL_keysym, align 4
  %event = alloca %union.SDL_Event, align 4
  %input_event = alloca i32, align 4
  %mouse_event = alloca i32, align 4
  %wheel_event = alloca i32, align 4
  %keyboard_event = alloca i32, align 4
  %keystring = alloca i8*, align 4
  %keystringlen = alloca i32, align 4
  %sdl_wheel_clicks_x = alloca i32, align 4
  %sdl_wheel_clicks_y = alloca i32, align 4
  %i = alloca i32, align 4
  %var = alloca %struct.PP_Var, align 4
  %type = alloca i32, align 4
  %2 = alloca %struct.PP_Point, align 4
  %3 = alloca %struct.PP_Point, align 4
  %4 = alloca %struct.PP_FloatPoint, align 4
  %5 = alloca %struct.PP_FloatPoint, align 4
  %6 = alloca %struct.PP_Point, align 4
  %7 = alloca %struct.PP_Point, align 4
  %8 = alloca %struct.PP_Var, align 4
  store i32 %ppevent, i32* %1, align 4
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str, i32 0, i32 0))
  %10 = load %struct._EventQueue** @event_queue, align 4
  %11 = icmp ne %struct._EventQueue* %10, null
  br i1 %11, label %16, label %12

; <label>:12                                      ; preds = %0
  %13 = call %struct._EventQueue* bitcast (%struct._EventQueue* (...)* @EventQueue_Create to %struct._EventQueue* ()*)()
  store %struct._EventQueue* %13, %struct._EventQueue** @event_queue, align 4
  %14 = load %struct._EventQueue** @event_queue, align 4
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str1, i32 0, i32 0), %struct._EventQueue* %14)
  br label %16

; <label>:16                                      ; preds = %12, %0
  %17 = load %struct.PPB_InputEvent_1_0** @g_input_event_interface, align 4
  %18 = getelementptr inbounds %struct.PPB_InputEvent_1_0* %17, i32 0, i32 4
  %19 = load i32 (i32)** %18, align 4
  %20 = load i32* %1, align 4
  %21 = call i32 %19(i32 %20)
  store i32 %21, i32* %type, align 4
  %22 = load i32* %1, align 4
  %23 = load i32* %type, align 4
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([89 x i8]* @.str2, i32 0, i32 0), i32 %22, i32 %23)
  %25 = load i32* %1, align 4
  store i32 %25, i32* %input_event, align 4
  %26 = load i32* %type, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

; <label>:28                                      ; preds = %16
  %29 = load i32* %type, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %81

; <label>:31                                      ; preds = %28, %16
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([81 x i8]* @.str3, i32 0, i32 0))
  %33 = load i32* %input_event, align 4
  store i32 %33, i32* %mouse_event, align 4
  %34 = load i32* %type, align 4
  %35 = icmp eq i32 %34, 1
  %36 = select i1 %35, i32 6, i32 5
  %37 = trunc i32 %36 to i8
  %38 = bitcast %union.SDL_Event* %event to i8*
  store i8 %37, i8* %38, align 1
  %39 = load %struct.PPB_MouseInputEvent_1_1** @g_mouse_input_event_interface, align 4
  %40 = getelementptr inbounds %struct.PPB_MouseInputEvent_1_1* %39, i32 0, i32 2
  %41 = load i32 (i32)** %40, align 4
  %42 = load i32* %mouse_event, align 4
  %43 = call i32 %41(i32 %42)
  %44 = call zeroext i8 @translateButton(i32 %43)
  %45 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseButtonEvent*
  %46 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %45, i32 0, i32 2
  store i8 %44, i8* %46, align 1
  %47 = load i32* %mouse_event, align 4
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([110 x i8]* @.str4, i32 0, i32 0), i32 %47)
  %49 = load %struct.PPB_MouseInputEvent_1_1** @g_mouse_input_event_interface, align 4
  %50 = getelementptr inbounds %struct.PPB_MouseInputEvent_1_1* %49, i32 0, i32 3
  %51 = load void (%struct.PP_Point*, i32)** %50, align 4
  %52 = load i32* %mouse_event, align 4
  call void %51(%struct.PP_Point* sret %2, i32 %52)
  %53 = getelementptr inbounds %struct.PP_Point* %2, i32 0, i32 0
  %54 = load i32* %53, align 4
  %55 = trunc i32 %54 to i16
  %56 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseButtonEvent*
  %57 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %56, i32 0, i32 4
  store i16 %55, i16* %57, align 2
  %58 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseButtonEvent*
  %59 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %58, i32 0, i32 4
  %60 = load i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([95 x i8]* @.str5, i32 0, i32 0), i32 %61)
  %63 = load %struct.PPB_MouseInputEvent_1_1** @g_mouse_input_event_interface, align 4
  %64 = getelementptr inbounds %struct.PPB_MouseInputEvent_1_1* %63, i32 0, i32 3
  %65 = load void (%struct.PP_Point*, i32)** %64, align 4
  %66 = load i32* %mouse_event, align 4
  call void %65(%struct.PP_Point* sret %3, i32 %66)
  %67 = getelementptr inbounds %struct.PP_Point* %3, i32 0, i32 1
  %68 = load i32* %67, align 4
  %69 = trunc i32 %68 to i16
  %70 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseButtonEvent*
  %71 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %70, i32 0, i32 5
  store i16 %69, i16* %71, align 2
  %72 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseButtonEvent*
  %73 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %72, i32 0, i32 5
  %74 = load i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([95 x i8]* @.str6, i32 0, i32 0), i32 %75)
  %77 = load %struct._EventQueue** @event_queue, align 4
  %78 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %77, %union.SDL_Event* %78)
  %79 = load %struct._EventQueue** @event_queue, align 4
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str7, i32 0, i32 0), %struct._EventQueue* %79, %union.SDL_Event* byval align 4 %event)
  br label %389

; <label>:81                                      ; preds = %28
  %82 = load i32* %type, align 4
  %83 = icmp eq i32 %82, 5
  br i1 %83, label %84, label %187

; <label>:84                                      ; preds = %81
  %85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str8, i32 0, i32 0))
  %86 = load i32* %input_event, align 4
  store i32 %86, i32* %wheel_event, align 4
  %87 = load %struct.PPB_WheelInputEvent_1_0** @g_wheel_input_event_interface, align 4
  %88 = getelementptr inbounds %struct.PPB_WheelInputEvent_1_0* %87, i32 0, i32 3
  %89 = load void (%struct.PP_FloatPoint*, i32)** %88, align 4
  %90 = load i32* %wheel_event, align 4
  call void %89(%struct.PP_FloatPoint* sret %4, i32 %90)
  %91 = getelementptr inbounds %struct.PP_FloatPoint* %4, i32 0, i32 0
  %92 = load float* %91, align 4
  %93 = fpext float %92 to double
  %94 = load double* @SDL_NACL_PushEvent.wheel_clicks_x, align 8
  %95 = fadd double %94, %93
  store double %95, double* @SDL_NACL_PushEvent.wheel_clicks_x, align 8
  %96 = load double* @SDL_NACL_PushEvent.wheel_clicks_x, align 8
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([93 x i8]* @.str9, i32 0, i32 0), double %96)
  %98 = load %struct.PPB_WheelInputEvent_1_0** @g_wheel_input_event_interface, align 4
  %99 = getelementptr inbounds %struct.PPB_WheelInputEvent_1_0* %98, i32 0, i32 3
  %100 = load void (%struct.PP_FloatPoint*, i32)** %99, align 4
  %101 = load i32* %wheel_event, align 4
  call void %100(%struct.PP_FloatPoint* sret %5, i32 %101)
  %102 = getelementptr inbounds %struct.PP_FloatPoint* %5, i32 0, i32 1
  %103 = load float* %102, align 4
  %104 = fpext float %103 to double
  %105 = load double* @SDL_NACL_PushEvent.wheel_clicks_y, align 8
  %106 = fadd double %105, %104
  store double %106, double* @SDL_NACL_PushEvent.wheel_clicks_y, align 8
  %107 = load double* @SDL_NACL_PushEvent.wheel_clicks_y, align 8
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([93 x i8]* @.str10, i32 0, i32 0), double %107)
  %109 = load double* @SDL_NACL_PushEvent.wheel_clicks_x, align 8
  %110 = call double @trunc(double %109) nounwind readnone
  %111 = fptosi double %110 to i32
  store i32 %111, i32* %sdl_wheel_clicks_x, align 4
  %112 = load i32* %sdl_wheel_clicks_x, align 4
  %113 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([67 x i8]* @.str11, i32 0, i32 0), i32 %112)
  %114 = load double* @SDL_NACL_PushEvent.wheel_clicks_y, align 8
  %115 = call double @trunc(double %114) nounwind readnone
  %116 = fptosi double %115 to i32
  store i32 %116, i32* %sdl_wheel_clicks_y, align 4
  %117 = load i32* %sdl_wheel_clicks_y, align 4
  %118 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([67 x i8]* @.str12, i32 0, i32 0), i32 %117)
  %119 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseButtonEvent*
  %120 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %119, i32 0, i32 5
  store i16 0, i16* %120, align 2
  %121 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseButtonEvent*
  %122 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %121, i32 0, i32 4
  store i16 0, i16* %122, align 2
  %123 = load i32* %sdl_wheel_clicks_x, align 4
  %124 = icmp sgt i32 %123, 0
  %125 = select i1 %124, i32 6, i32 7
  %126 = trunc i32 %125 to i8
  %127 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseButtonEvent*
  %128 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %127, i32 0, i32 2
  store i8 %126, i8* %128, align 1
  store i32 0, i32* %i, align 4
  br label %129

; <label>:129                                     ; preds = %147, %84
  %130 = load i32* %i, align 4
  %131 = load i32* %sdl_wheel_clicks_x, align 4
  %132 = call i32 @abs(i32 %131) nounwind readnone
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %150

; <label>:134                                     ; preds = %129
  %135 = load i32* %i, align 4
  %136 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), i32 %135)
  %137 = bitcast %union.SDL_Event* %event to i8*
  store i8 5, i8* %137, align 1
  %138 = load %struct._EventQueue** @event_queue, align 4
  %139 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %138, %union.SDL_Event* %139)
  %140 = load %struct._EventQueue** @event_queue, align 4
  %141 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str7, i32 0, i32 0), %struct._EventQueue* %140, %union.SDL_Event* byval align 4 %event)
  %142 = bitcast %union.SDL_Event* %event to i8*
  store i8 6, i8* %142, align 1
  %143 = load %struct._EventQueue** @event_queue, align 4
  %144 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %143, %union.SDL_Event* %144)
  %145 = load %struct._EventQueue** @event_queue, align 4
  %146 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str7, i32 0, i32 0), %struct._EventQueue* %145, %union.SDL_Event* byval align 4 %event)
  br label %147

; <label>:147                                     ; preds = %134
  %148 = load i32* %i, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %i, align 4
  br label %129

; <label>:150                                     ; preds = %129
  %151 = load i32* %sdl_wheel_clicks_y, align 4
  %152 = icmp sgt i32 %151, 0
  %153 = select i1 %152, i32 4, i32 5
  %154 = trunc i32 %153 to i8
  %155 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseButtonEvent*
  %156 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %155, i32 0, i32 2
  store i8 %154, i8* %156, align 1
  store i32 0, i32* %i, align 4
  br label %157

; <label>:157                                     ; preds = %175, %150
  %158 = load i32* %i, align 4
  %159 = load i32* %sdl_wheel_clicks_y, align 4
  %160 = call i32 @abs(i32 %159) nounwind readnone
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %178

; <label>:162                                     ; preds = %157
  %163 = load i32* %i, align 4
  %164 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str14, i32 0, i32 0), i32 %163)
  %165 = bitcast %union.SDL_Event* %event to i8*
  store i8 5, i8* %165, align 1
  %166 = load %struct._EventQueue** @event_queue, align 4
  %167 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %166, %union.SDL_Event* %167)
  %168 = load %struct._EventQueue** @event_queue, align 4
  %169 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str7, i32 0, i32 0), %struct._EventQueue* %168, %union.SDL_Event* byval align 4 %event)
  %170 = bitcast %union.SDL_Event* %event to i8*
  store i8 6, i8* %170, align 1
  %171 = load %struct._EventQueue** @event_queue, align 4
  %172 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %171, %union.SDL_Event* %172)
  %173 = load %struct._EventQueue** @event_queue, align 4
  %174 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str7, i32 0, i32 0), %struct._EventQueue* %173, %union.SDL_Event* byval align 4 %event)
  br label %175

; <label>:175                                     ; preds = %162
  %176 = load i32* %i, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %i, align 4
  br label %157

; <label>:178                                     ; preds = %157
  %179 = load i32* %sdl_wheel_clicks_x, align 4
  %180 = sitofp i32 %179 to double
  %181 = load double* @SDL_NACL_PushEvent.wheel_clicks_x, align 8
  %182 = fsub double %181, %180
  store double %182, double* @SDL_NACL_PushEvent.wheel_clicks_x, align 8
  %183 = load i32* %sdl_wheel_clicks_y, align 4
  %184 = sitofp i32 %183 to double
  %185 = load double* @SDL_NACL_PushEvent.wheel_clicks_y, align 8
  %186 = fsub double %185, %184
  store double %186, double* @SDL_NACL_PushEvent.wheel_clicks_y, align 8
  br label %388

; <label>:187                                     ; preds = %81
  %188 = load i32* %type, align 4
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %224

; <label>:190                                     ; preds = %187
  %191 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str15, i32 0, i32 0))
  %192 = load i32* %input_event, align 4
  store i32 %192, i32* %mouse_event, align 4
  %193 = bitcast %union.SDL_Event* %event to i8*
  store i8 4, i8* %193, align 1
  %194 = load %struct.PPB_MouseInputEvent_1_1** @g_mouse_input_event_interface, align 4
  %195 = getelementptr inbounds %struct.PPB_MouseInputEvent_1_1* %194, i32 0, i32 3
  %196 = load void (%struct.PP_Point*, i32)** %195, align 4
  %197 = load i32* %mouse_event, align 4
  call void %196(%struct.PP_Point* sret %6, i32 %197)
  %198 = getelementptr inbounds %struct.PP_Point* %6, i32 0, i32 0
  %199 = load i32* %198, align 4
  %200 = trunc i32 %199 to i16
  %201 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseMotionEvent*
  %202 = getelementptr inbounds %struct.SDL_MouseMotionEvent* %201, i32 0, i32 3
  store i16 %200, i16* %202, align 2
  %203 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseMotionEvent*
  %204 = getelementptr inbounds %struct.SDL_MouseMotionEvent* %203, i32 0, i32 3
  %205 = load i16* %204, align 2
  %206 = zext i16 %205 to i32
  %207 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([95 x i8]* @.str16, i32 0, i32 0), i32 %206)
  %208 = load %struct.PPB_MouseInputEvent_1_1** @g_mouse_input_event_interface, align 4
  %209 = getelementptr inbounds %struct.PPB_MouseInputEvent_1_1* %208, i32 0, i32 3
  %210 = load void (%struct.PP_Point*, i32)** %209, align 4
  %211 = load i32* %mouse_event, align 4
  call void %210(%struct.PP_Point* sret %7, i32 %211)
  %212 = getelementptr inbounds %struct.PP_Point* %7, i32 0, i32 1
  %213 = load i32* %212, align 4
  %214 = trunc i32 %213 to i16
  %215 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseMotionEvent*
  %216 = getelementptr inbounds %struct.SDL_MouseMotionEvent* %215, i32 0, i32 4
  store i16 %214, i16* %216, align 2
  %217 = bitcast %union.SDL_Event* %event to %struct.SDL_MouseMotionEvent*
  %218 = getelementptr inbounds %struct.SDL_MouseMotionEvent* %217, i32 0, i32 4
  %219 = load i16* %218, align 2
  %220 = zext i16 %219 to i32
  %221 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([95 x i8]* @.str17, i32 0, i32 0), i32 %220)
  %222 = load %struct._EventQueue** @event_queue, align 4
  %223 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %222, %union.SDL_Event* %223)
  br label %387

; <label>:224                                     ; preds = %187
  %225 = load i32* %type, align 4
  %226 = icmp eq i32 %225, 7
  br i1 %226, label %233, label %227

; <label>:227                                     ; preds = %224
  %228 = load i32* %type, align 4
  %229 = icmp eq i32 %228, 8
  br i1 %229, label %233, label %230

; <label>:230                                     ; preds = %227
  %231 = load i32* %type, align 4
  %232 = icmp eq i32 %231, 9
  br i1 %232, label %233, label %364

; <label>:233                                     ; preds = %230, %227, %224
  %234 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([117 x i8]* @.str18, i32 0, i32 0))
  %235 = load i32* %input_event, align 4
  store i32 %235, i32* %keyboard_event, align 4
  %236 = load %struct.PPB_KeyboardInputEvent_1_0** @g_keyboard_input_event_interface, align 4
  %237 = getelementptr inbounds %struct.PPB_KeyboardInputEvent_1_0* %236, i32 0, i32 2
  %238 = load i32 (i32)** %237, align 4
  %239 = load i32* %keyboard_event, align 4
  %240 = call i32 %238(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  store i8 %241, i8* %242, align 1
  %243 = load i32* %keyboard_event, align 4
  %244 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  %245 = load i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([119 x i8]* @.str19, i32 0, i32 0), i32 %243, i32 %246)
  %248 = load %struct.PPB_KeyboardInputEvent_1_0** @g_keyboard_input_event_interface, align 4
  %249 = getelementptr inbounds %struct.PPB_KeyboardInputEvent_1_0* %248, i32 0, i32 3
  %250 = load void (%struct.PP_Var*, i32)** %249, align 4
  %251 = load i32* %keyboard_event, align 4
  call void %250(%struct.PP_Var* sret %8, i32 %251)
  %252 = bitcast %struct.PP_Var* %var to i8*
  %253 = bitcast %struct.PP_Var* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %252, i8* %253, i32 16, i32 4, i1 false)
  %254 = load i32* %keyboard_event, align 4
  %255 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([93 x i8]* @.str20, i32 0, i32 0), i32 %254)
  %256 = load %struct.PPB_Var_1_1** @g_var_interface, align 4
  %257 = getelementptr inbounds %struct.PPB_Var_1_1* %256, i32 0, i32 3
  %258 = load i8* (%struct.PP_Var*, i32*)** %257, align 4
  %259 = call i8* %258(%struct.PP_Var* byval align 4 %var, i32* %keystringlen)
  store i8* %259, i8** %keystring, align 4
  %260 = load i32* %keystringlen, align 4
  %261 = load i8** %keystring, align 4
  %262 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([90 x i8]* @.str21, i32 0, i32 0), i32 %260, i8* %261)
  %263 = load i8** %keystring, align 4
  %264 = getelementptr inbounds i8* %263, i32 0
  %265 = load i8* %264
  %266 = sext i8 %265 to i16
  %267 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 3
  store i16 %266, i16* %267, align 2
  %268 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  %269 = load i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = call i32 @translateKey(i32 %270)
  %272 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  store i32 %271, i32* %272, align 4
  %273 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  %274 = load i32* %273, align 4
  %275 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str22, i32 0, i32 0), i32 %274)
  %276 = load i32* %type, align 4
  %277 = icmp eq i32 %276, 7
  br i1 %277, label %278, label %292

; <label>:278                                     ; preds = %233
  %279 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str23, i32 0, i32 0))
  %280 = bitcast %union.SDL_Event* %event to i8*
  store i8 2, i8* %280, align 1
  %281 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  %282 = load i8* %281, align 1
  store i8 %282, i8* @SDL_NACL_PushEvent.last_scancode, align 1
  %283 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  %284 = load i32* %283, align 4
  %285 = icmp uge i32 %284, 32
  br i1 %285, label %286, label %291

; <label>:286                                     ; preds = %278
  %287 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  %288 = load i32* %287, align 4
  %289 = icmp ule i32 %288, 126
  br i1 %289, label %290, label %291

; <label>:290                                     ; preds = %286
  br label %391

; <label>:291                                     ; preds = %286, %278
  br label %354

; <label>:292                                     ; preds = %233
  %293 = load i32* %type, align 4
  %294 = icmp eq i32 %293, 9
  br i1 %294, label %295, label %350

; <label>:295                                     ; preds = %292
  %296 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str24, i32 0, i32 0))
  %297 = bitcast %union.SDL_Event* %event to i8*
  store i8 2, i8* %297, align 1
  %298 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  %299 = load i32* %298, align 4
  %300 = icmp uge i32 %299, 32
  br i1 %300, label %301, label %330

; <label>:301                                     ; preds = %295
  %302 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  %303 = load i32* %302, align 4
  %304 = icmp ule i32 %303, 126
  br i1 %304, label %305, label %330

; <label>:305                                     ; preds = %301
  %306 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str25, i32 0, i32 0))
  %307 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 3
  %308 = load i16* %307, align 2
  %309 = trunc i16 %308 to i8
  %310 = call zeroext i8 @translateAscii(i8 zeroext %309)
  %311 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  store i8 %310, i8* %311, align 1
  %312 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 3
  %313 = load i16* %312, align 2
  %314 = zext i16 %313 to i32
  %315 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  %316 = load i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([89 x i8]* @.str26, i32 0, i32 0), i32 %314, i32 %317)
  %319 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  %320 = load i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = call i32 @translateKey(i32 %321)
  %323 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  store i32 %322, i32* %323, align 4
  %324 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  %325 = load i8* %324, align 1
  %326 = zext i8 %325 to i32
  %327 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  %328 = load i32* %327, align 4
  %329 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([78 x i8]* @.str27, i32 0, i32 0), i32 %326, i32 %328)
  br label %349

; <label>:330                                     ; preds = %301, %295
  %331 = load i8* @SDL_NACL_PushEvent.last_scancode, align 1
  %332 = icmp ne i8 %331, 0
  br i1 %332, label %333, label %348

; <label>:333                                     ; preds = %330
  %334 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str28, i32 0, i32 0))
  %335 = load i8* @SDL_NACL_PushEvent.last_scancode, align 1
  %336 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  store i8 %335, i8* %336, align 1
  %337 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  %338 = load i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = call i32 @translateKey(i32 %339)
  %341 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  store i32 %340, i32* %341, align 4
  %342 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 0
  %343 = load i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 1
  %346 = load i32* %345, align 4
  %347 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([78 x i8]* @.str27, i32 0, i32 0), i32 %344, i32 %346)
  br label %348

; <label>:348                                     ; preds = %333, %330
  br label %349

; <label>:349                                     ; preds = %348, %305
  br label %353

; <label>:350                                     ; preds = %292
  %351 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str29, i32 0, i32 0))
  %352 = bitcast %union.SDL_Event* %event to i8*
  store i8 3, i8* %352, align 1
  store i8 0, i8* @SDL_NACL_PushEvent.last_scancode, align 1
  br label %353

; <label>:353                                     ; preds = %350, %349
  br label %354

; <label>:354                                     ; preds = %353, %291
  %355 = getelementptr inbounds %struct.SDL_keysym* %keysym, i32 0, i32 2
  store i32 0, i32* %355, align 4
  %356 = bitcast %union.SDL_Event* %event to %struct.SDL_KeyboardEvent*
  %357 = getelementptr inbounds %struct.SDL_KeyboardEvent* %356, i32 0, i32 3
  %358 = bitcast %struct.SDL_keysym* %357 to i8*
  %359 = bitcast %struct.SDL_keysym* %keysym to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %358, i8* %359, i32 16, i32 4, i1 false)
  %360 = load %struct._EventQueue** @event_queue, align 4
  %361 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %360, %union.SDL_Event* %361)
  %362 = load %struct._EventQueue** @event_queue, align 4
  %363 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str7, i32 0, i32 0), %struct._EventQueue* %362, %union.SDL_Event* byval align 4 %event)
  br label %386

; <label>:364                                     ; preds = %230
  %365 = load i32* %type, align 4
  %366 = icmp eq i32 %365, 3
  br i1 %366, label %370, label %367

; <label>:367                                     ; preds = %364
  %368 = load i32* %type, align 4
  %369 = icmp eq i32 %368, 4
  br i1 %369, label %370, label %385

; <label>:370                                     ; preds = %367, %364
  %371 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([90 x i8]* @.str30, i32 0, i32 0))
  %372 = bitcast %union.SDL_Event* %event to i8*
  store i8 1, i8* %372, align 1
  %373 = load i32* %type, align 4
  %374 = icmp eq i32 %373, 3
  %375 = select i1 %374, i32 1, i32 0
  %376 = trunc i32 %375 to i8
  %377 = bitcast %union.SDL_Event* %event to %struct.SDL_ActiveEvent*
  %378 = getelementptr inbounds %struct.SDL_ActiveEvent* %377, i32 0, i32 1
  store i8 %376, i8* %378, align 1
  %379 = bitcast %union.SDL_Event* %event to %struct.SDL_ActiveEvent*
  %380 = getelementptr inbounds %struct.SDL_ActiveEvent* %379, i32 0, i32 2
  store i8 1, i8* %380, align 1
  %381 = load %struct._EventQueue** @event_queue, align 4
  %382 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %381, %union.SDL_Event* %382)
  %383 = load %struct._EventQueue** @event_queue, align 4
  %384 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str7, i32 0, i32 0), %struct._EventQueue* %383, %union.SDL_Event* byval align 4 %event)
  br label %385

; <label>:385                                     ; preds = %370, %367
  br label %386

; <label>:386                                     ; preds = %385, %354
  br label %387

; <label>:387                                     ; preds = %386, %190
  br label %388

; <label>:388                                     ; preds = %387, %178
  br label %389

; <label>:389                                     ; preds = %388, %31
  %390 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str31, i32 0, i32 0))
  br label %391

; <label>:391                                     ; preds = %389, %290
  ret void
}

declare i32 @printf(i8*, ...)

declare %struct._EventQueue* @EventQueue_Create(...)

define internal zeroext i8 @translateButton(i32 %button) nounwind {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i32 %button, i32* %2, align 4
  %3 = load i32* %2, align 4
  switch i32 %3, label %8 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %6
    i32 -1, label %7
  ]

; <label>:4                                       ; preds = %0
  store i8 1, i8* %1
  br label %9

; <label>:5                                       ; preds = %0
  store i8 2, i8* %1
  br label %9

; <label>:6                                       ; preds = %0
  store i8 3, i8* %1
  br label %9

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %0, %7
  store i8 0, i8* %1
  br label %9

; <label>:9                                       ; preds = %8, %6, %5, %4
  %10 = load i8* %1
  ret i8 %10
}

declare void @PushEvent(%struct._EventQueue*, %union.SDL_Event*)

define internal %union.SDL_Event* @copyEvent(%union.SDL_Event* %event) nounwind {
  %1 = alloca %union.SDL_Event*, align 4
  %event_copy = alloca %union.SDL_Event*, align 4
  store %union.SDL_Event* %event, %union.SDL_Event** %1, align 4
  %2 = call noalias i8* @malloc(i32 20) nounwind
  %3 = bitcast i8* %2 to %union.SDL_Event*
  store %union.SDL_Event* %3, %union.SDL_Event** %event_copy, align 4
  %4 = load %union.SDL_Event** %event_copy, align 4
  %5 = load %union.SDL_Event** %1, align 4
  %6 = bitcast %union.SDL_Event* %4 to i8*
  %7 = bitcast %union.SDL_Event* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 20, i32 4, i1 false)
  %8 = load %union.SDL_Event** %1, align 4
  %9 = load %union.SDL_Event** %event_copy, align 4
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str32, i32 0, i32 0), %union.SDL_Event* %8, %union.SDL_Event* %9)
  %11 = load %union.SDL_Event** %event_copy, align 4
  ret %union.SDL_Event* %11
}

declare double @trunc(double) nounwind readnone

declare i32 @abs(i32) nounwind readnone

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define internal i32 @translateKey(i32 %code) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %f1_code = alloca i32, align 4
  %kp0_code = alloca i32, align 4
  store i32 %code, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp uge i32 %3, 65
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp ule i32 %6, 90
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %5
  %9 = load i32* %2, align 4
  %10 = sub i32 %9, 65
  %11 = add i32 %10, 97
  store i32 %11, i32* %1
  br label %78

; <label>:12                                      ; preds = %5, %0
  %13 = load i32* %2, align 4
  %14 = icmp uge i32 %13, 48
  br i1 %14, label %15, label %20

; <label>:15                                      ; preds = %12
  %16 = load i32* %2, align 4
  %17 = icmp ule i32 %16, 57
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %15
  %19 = load i32* %2, align 4
  store i32 %19, i32* %1
  br label %78

; <label>:20                                      ; preds = %15, %12
  store i32 112, i32* %f1_code, align 4
  %21 = load i32* %2, align 4
  %22 = icmp uge i32 %21, 112
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %20
  %24 = load i32* %2, align 4
  %25 = icmp ult i32 %24, 124
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %23
  %27 = load i32* %2, align 4
  %28 = sub i32 %27, 112
  %29 = add i32 %28, 282
  store i32 %29, i32* %1
  br label %78

; <label>:30                                      ; preds = %23, %20
  store i32 96, i32* %kp0_code, align 4
  %31 = load i32* %2, align 4
  %32 = icmp uge i32 %31, 96
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %30
  %34 = load i32* %2, align 4
  %35 = icmp ult i32 %34, 106
  br i1 %35, label %36, label %40

; <label>:36                                      ; preds = %33
  %37 = load i32* %2, align 4
  %38 = sub i32 %37, 96
  %39 = add i32 %38, 256
  store i32 %39, i32* %1
  br label %78

; <label>:40                                      ; preds = %33, %30
  %41 = load i32* %2, align 4
  switch i32 %41, label %77 [
    i32 8, label %42
    i32 9, label %43
    i32 13, label %44
    i32 19, label %45
    i32 27, label %46
    i32 16, label %47
    i32 17, label %48
    i32 18, label %49
    i32 32, label %50
    i32 37, label %51
    i32 38, label %52
    i32 39, label %53
    i32 40, label %54
    i32 106, label %55
    i32 107, label %56
    i32 109, label %57
    i32 110, label %58
    i32 111, label %59
    i32 45, label %60
    i32 46, label %61
    i32 36, label %62
    i32 35, label %63
    i32 33, label %64
    i32 34, label %65
    i32 189, label %66
    i32 187, label %67
    i32 219, label %68
    i32 221, label %69
    i32 186, label %70
    i32 222, label %71
    i32 220, label %72
    i32 188, label %73
    i32 190, label %74
    i32 191, label %75
    i32 192, label %76
  ]

; <label>:42                                      ; preds = %40
  store i32 8, i32* %1
  br label %78

; <label>:43                                      ; preds = %40
  store i32 9, i32* %1
  br label %78

; <label>:44                                      ; preds = %40
  store i32 13, i32* %1
  br label %78

; <label>:45                                      ; preds = %40
  store i32 19, i32* %1
  br label %78

; <label>:46                                      ; preds = %40
  store i32 27, i32* %1
  br label %78

; <label>:47                                      ; preds = %40
  store i32 304, i32* %1
  br label %78

; <label>:48                                      ; preds = %40
  store i32 306, i32* %1
  br label %78

; <label>:49                                      ; preds = %40
  store i32 308, i32* %1
  br label %78

; <label>:50                                      ; preds = %40
  store i32 32, i32* %1
  br label %78

; <label>:51                                      ; preds = %40
  store i32 276, i32* %1
  br label %78

; <label>:52                                      ; preds = %40
  store i32 273, i32* %1
  br label %78

; <label>:53                                      ; preds = %40
  store i32 275, i32* %1
  br label %78

; <label>:54                                      ; preds = %40
  store i32 274, i32* %1
  br label %78

; <label>:55                                      ; preds = %40
  store i32 268, i32* %1
  br label %78

; <label>:56                                      ; preds = %40
  store i32 270, i32* %1
  br label %78

; <label>:57                                      ; preds = %40
  store i32 269, i32* %1
  br label %78

; <label>:58                                      ; preds = %40
  store i32 266, i32* %1
  br label %78

; <label>:59                                      ; preds = %40
  store i32 267, i32* %1
  br label %78

; <label>:60                                      ; preds = %40
  store i32 277, i32* %1
  br label %78

; <label>:61                                      ; preds = %40
  store i32 127, i32* %1
  br label %78

; <label>:62                                      ; preds = %40
  store i32 278, i32* %1
  br label %78

; <label>:63                                      ; preds = %40
  store i32 279, i32* %1
  br label %78

; <label>:64                                      ; preds = %40
  store i32 280, i32* %1
  br label %78

; <label>:65                                      ; preds = %40
  store i32 281, i32* %1
  br label %78

; <label>:66                                      ; preds = %40
  store i32 45, i32* %1
  br label %78

; <label>:67                                      ; preds = %40
  store i32 61, i32* %1
  br label %78

; <label>:68                                      ; preds = %40
  store i32 91, i32* %1
  br label %78

; <label>:69                                      ; preds = %40
  store i32 93, i32* %1
  br label %78

; <label>:70                                      ; preds = %40
  store i32 59, i32* %1
  br label %78

; <label>:71                                      ; preds = %40
  store i32 39, i32* %1
  br label %78

; <label>:72                                      ; preds = %40
  store i32 92, i32* %1
  br label %78

; <label>:73                                      ; preds = %40
  store i32 44, i32* %1
  br label %78

; <label>:74                                      ; preds = %40
  store i32 46, i32* %1
  br label %78

; <label>:75                                      ; preds = %40
  store i32 47, i32* %1
  br label %78

; <label>:76                                      ; preds = %40
  store i32 96, i32* %1
  br label %78

; <label>:77                                      ; preds = %40
  store i32 0, i32* %1
  br label %78

; <label>:78                                      ; preds = %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %36, %26, %18, %8
  %79 = load i32* %1
  ret i32 %79
}

define internal zeroext i8 @translateAscii(i8 zeroext %ascii) nounwind {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ascii, i8* %2, align 1
  %3 = load i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp sle i32 65, %4
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = load i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sle i32 %8, 90
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = load i8* %2, align 1
  store i8 %11, i8* %1
  br label %87

; <label>:12                                      ; preds = %6, %0
  %13 = load i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sle i32 97, %14
  br i1 %15, label %16, label %25

; <label>:16                                      ; preds = %12
  %17 = load i8* %2, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sle i32 %18, 122
  br i1 %19, label %20, label %25

; <label>:20                                      ; preds = %16
  %21 = load i8* %2, align 1
  %22 = zext i8 %21 to i32
  %23 = call i32 @toupper(i32 %22) nounwind
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %1
  br label %87

; <label>:25                                      ; preds = %16, %12
  %26 = load i8* %2, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sle i32 48, %27
  br i1 %28, label %29, label %35

; <label>:29                                      ; preds = %25
  %30 = load i8* %2, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sle i32 %31, 57
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %29
  %34 = load i8* %2, align 1
  store i8 %34, i8* %1
  br label %87

; <label>:35                                      ; preds = %29, %25
  %36 = load i8* %2, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 32, %37
  br i1 %38, label %55, label %39

; <label>:39                                      ; preds = %35
  %40 = load i8* %2, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 13, %41
  br i1 %42, label %55, label %43

; <label>:43                                      ; preds = %39
  %44 = load i8* %2, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 9, %45
  br i1 %46, label %55, label %47

; <label>:47                                      ; preds = %43
  %48 = load i8* %2, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 27, %49
  br i1 %50, label %55, label %51

; <label>:51                                      ; preds = %47
  %52 = load i8* %2, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 8, %53
  br i1 %54, label %55, label %57

; <label>:55                                      ; preds = %51, %47, %43, %39, %35
  %56 = load i8* %2, align 1
  store i8 %56, i8* %1
  br label %87

; <label>:57                                      ; preds = %51
  %58 = load i8* %2, align 1
  %59 = zext i8 %58 to i32
  switch i32 %59, label %81 [
    i32 33, label %60
    i32 64, label %61
    i32 35, label %62
    i32 36, label %63
    i32 37, label %64
    i32 94, label %65
    i32 38, label %66
    i32 42, label %67
    i32 40, label %68
    i32 41, label %69
    i32 59, label %70
    i32 58, label %70
    i32 61, label %71
    i32 43, label %71
    i32 44, label %72
    i32 60, label %72
    i32 45, label %73
    i32 95, label %73
    i32 46, label %74
    i32 62, label %74
    i32 47, label %75
    i32 63, label %75
    i32 96, label %76
    i32 126, label %76
    i32 91, label %77
    i32 123, label %77
    i32 92, label %78
    i32 124, label %78
    i32 93, label %79
    i32 125, label %79
    i32 39, label %80
    i32 34, label %80
  ]

; <label>:60                                      ; preds = %57
  store i8 49, i8* %1
  br label %87

; <label>:61                                      ; preds = %57
  store i8 50, i8* %1
  br label %87

; <label>:62                                      ; preds = %57
  store i8 51, i8* %1
  br label %87

; <label>:63                                      ; preds = %57
  store i8 52, i8* %1
  br label %87

; <label>:64                                      ; preds = %57
  store i8 53, i8* %1
  br label %87

; <label>:65                                      ; preds = %57
  store i8 54, i8* %1
  br label %87

; <label>:66                                      ; preds = %57
  store i8 55, i8* %1
  br label %87

; <label>:67                                      ; preds = %57
  store i8 56, i8* %1
  br label %87

; <label>:68                                      ; preds = %57
  store i8 57, i8* %1
  br label %87

; <label>:69                                      ; preds = %57
  store i8 48, i8* %1
  br label %87

; <label>:70                                      ; preds = %57, %57
  store i8 -70, i8* %1
  br label %87

; <label>:71                                      ; preds = %57, %57
  store i8 -69, i8* %1
  br label %87

; <label>:72                                      ; preds = %57, %57
  store i8 -68, i8* %1
  br label %87

; <label>:73                                      ; preds = %57, %57
  store i8 -67, i8* %1
  br label %87

; <label>:74                                      ; preds = %57, %57
  store i8 -66, i8* %1
  br label %87

; <label>:75                                      ; preds = %57, %57
  store i8 -65, i8* %1
  br label %87

; <label>:76                                      ; preds = %57, %57
  store i8 -64, i8* %1
  br label %87

; <label>:77                                      ; preds = %57, %57
  store i8 -37, i8* %1
  br label %87

; <label>:78                                      ; preds = %57, %57
  store i8 -36, i8* %1
  br label %87

; <label>:79                                      ; preds = %57, %57
  store i8 -35, i8* %1
  br label %87

; <label>:80                                      ; preds = %57, %57
  store i8 -34, i8* %1
  br label %87

; <label>:81                                      ; preds = %57
  br label %82

; <label>:82                                      ; preds = %81
  br label %83

; <label>:83                                      ; preds = %82
  br label %84

; <label>:84                                      ; preds = %83
  br label %85

; <label>:85                                      ; preds = %84
  br label %86

; <label>:86                                      ; preds = %85
  store i8 0, i8* %1
  br label %87

; <label>:87                                      ; preds = %86, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %55, %33, %20, %10
  %88 = load i8* %1
  ret i8 %88
}

define hidden void @SDL_NACL_SetHasFocus(i32 %has_focus) nounwind {
  %1 = alloca i32, align 4
  %event = alloca %union.SDL_Event, align 4
  store i32 %has_focus, i32* %1, align 4
  %2 = bitcast %union.SDL_Event* %event to i8*
  store i8 1, i8* %2, align 1
  %3 = load i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %4, i32 1, i32 0
  %6 = trunc i32 %5 to i8
  %7 = bitcast %union.SDL_Event* %event to %struct.SDL_ActiveEvent*
  %8 = getelementptr inbounds %struct.SDL_ActiveEvent* %7, i32 0, i32 1
  store i8 %6, i8* %8, align 1
  %9 = bitcast %union.SDL_Event* %event to %struct.SDL_ActiveEvent*
  %10 = getelementptr inbounds %struct.SDL_ActiveEvent* %9, i32 0, i32 2
  store i8 2, i8* %10, align 1
  %11 = load %struct._EventQueue** @event_queue, align 4
  %12 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %11, %union.SDL_Event* %12)
  ret void
}

define hidden void @SDL_NACL_SetPageVisible(i32 %is_visible) nounwind {
  %1 = alloca i32, align 4
  %event = alloca %union.SDL_Event, align 4
  store i32 %is_visible, i32* %1, align 4
  %2 = bitcast %union.SDL_Event* %event to i8*
  store i8 1, i8* %2, align 1
  %3 = load i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %4, i32 1, i32 0
  %6 = trunc i32 %5 to i8
  %7 = bitcast %union.SDL_Event* %event to %struct.SDL_ActiveEvent*
  %8 = getelementptr inbounds %struct.SDL_ActiveEvent* %7, i32 0, i32 1
  store i8 %6, i8* %8, align 1
  %9 = bitcast %union.SDL_Event* %event to %struct.SDL_ActiveEvent*
  %10 = getelementptr inbounds %struct.SDL_ActiveEvent* %9, i32 0, i32 2
  store i8 4, i8* %10, align 1
  %11 = load %struct._EventQueue** @event_queue, align 4
  %12 = call %union.SDL_Event* @copyEvent(%union.SDL_Event* %event)
  call void @PushEvent(%struct._EventQueue* %11, %union.SDL_Event* %12)
  ret void
}

define hidden void @NACL_PumpEvents(%struct.SDL_VideoDevice* %_this) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  %event = alloca %union.SDL_Event*, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  %2 = load %struct._EventQueue** @event_queue, align 4
  %3 = icmp eq %struct._EventQueue* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %112

; <label>:5                                       ; preds = %0
  br label %6

; <label>:6                                       ; preds = %109, %5
  %7 = load %struct._EventQueue** @event_queue, align 4
  %8 = call %union.SDL_Event* @PopEvent(%struct._EventQueue* %7)
  store %union.SDL_Event* %8, %union.SDL_Event** %event, align 4
  %9 = icmp ne %union.SDL_Event* %8, null
  br i1 %9, label %10, label %112

; <label>:10                                      ; preds = %6
  %11 = load %union.SDL_Event** %event, align 4
  %12 = bitcast %union.SDL_Event* %11 to i8*
  %13 = load i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %30

; <label>:16                                      ; preds = %10
  %17 = load %union.SDL_Event** %event, align 4
  %18 = bitcast %union.SDL_Event* %17 to %struct.SDL_MouseButtonEvent*
  %19 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %18, i32 0, i32 2
  %20 = load i8* %19, align 1
  %21 = load %union.SDL_Event** %event, align 4
  %22 = bitcast %union.SDL_Event* %21 to %struct.SDL_MouseButtonEvent*
  %23 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %22, i32 0, i32 4
  %24 = load i16* %23, align 2
  %25 = load %union.SDL_Event** %event, align 4
  %26 = bitcast %union.SDL_Event* %25 to %struct.SDL_MouseButtonEvent*
  %27 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %26, i32 0, i32 5
  %28 = load i16* %27, align 2
  %29 = call i32 @SDL_PrivateMouseButton(i8 zeroext 1, i8 zeroext %20, i16 signext %24, i16 signext %28)
  br label %109

; <label>:30                                      ; preds = %10
  %31 = load %union.SDL_Event** %event, align 4
  %32 = bitcast %union.SDL_Event* %31 to i8*
  %33 = load i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 6
  br i1 %35, label %36, label %50

; <label>:36                                      ; preds = %30
  %37 = load %union.SDL_Event** %event, align 4
  %38 = bitcast %union.SDL_Event* %37 to %struct.SDL_MouseButtonEvent*
  %39 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %38, i32 0, i32 2
  %40 = load i8* %39, align 1
  %41 = load %union.SDL_Event** %event, align 4
  %42 = bitcast %union.SDL_Event* %41 to %struct.SDL_MouseButtonEvent*
  %43 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %42, i32 0, i32 4
  %44 = load i16* %43, align 2
  %45 = load %union.SDL_Event** %event, align 4
  %46 = bitcast %union.SDL_Event* %45 to %struct.SDL_MouseButtonEvent*
  %47 = getelementptr inbounds %struct.SDL_MouseButtonEvent* %46, i32 0, i32 5
  %48 = load i16* %47, align 2
  %49 = call i32 @SDL_PrivateMouseButton(i8 zeroext 0, i8 zeroext %40, i16 signext %44, i16 signext %48)
  br label %108

; <label>:50                                      ; preds = %30
  %51 = load %union.SDL_Event** %event, align 4
  %52 = bitcast %union.SDL_Event* %51 to i8*
  %53 = load i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %66

; <label>:56                                      ; preds = %50
  %57 = load %union.SDL_Event** %event, align 4
  %58 = bitcast %union.SDL_Event* %57 to %struct.SDL_MouseMotionEvent*
  %59 = getelementptr inbounds %struct.SDL_MouseMotionEvent* %58, i32 0, i32 3
  %60 = load i16* %59, align 2
  %61 = load %union.SDL_Event** %event, align 4
  %62 = bitcast %union.SDL_Event* %61 to %struct.SDL_MouseMotionEvent*
  %63 = getelementptr inbounds %struct.SDL_MouseMotionEvent* %62, i32 0, i32 4
  %64 = load i16* %63, align 2
  %65 = call i32 @SDL_PrivateMouseMotion(i8 zeroext 0, i32 0, i16 signext %60, i16 signext %64)
  br label %107

; <label>:66                                      ; preds = %50
  %67 = load %union.SDL_Event** %event, align 4
  %68 = bitcast %union.SDL_Event* %67 to i8*
  %69 = load i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %77

; <label>:72                                      ; preds = %66
  %73 = load %union.SDL_Event** %event, align 4
  %74 = bitcast %union.SDL_Event* %73 to %struct.SDL_KeyboardEvent*
  %75 = getelementptr inbounds %struct.SDL_KeyboardEvent* %74, i32 0, i32 3
  %76 = call i32 @SDL_PrivateKeyboard(i8 zeroext 1, %struct.SDL_keysym* %75)
  br label %106

; <label>:77                                      ; preds = %66
  %78 = load %union.SDL_Event** %event, align 4
  %79 = bitcast %union.SDL_Event* %78 to i8*
  %80 = load i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %88

; <label>:83                                      ; preds = %77
  %84 = load %union.SDL_Event** %event, align 4
  %85 = bitcast %union.SDL_Event* %84 to %struct.SDL_KeyboardEvent*
  %86 = getelementptr inbounds %struct.SDL_KeyboardEvent* %85, i32 0, i32 3
  %87 = call i32 @SDL_PrivateKeyboard(i8 zeroext 0, %struct.SDL_keysym* %86)
  br label %105

; <label>:88                                      ; preds = %77
  %89 = load %union.SDL_Event** %event, align 4
  %90 = bitcast %union.SDL_Event* %89 to i8*
  %91 = load i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %104

; <label>:94                                      ; preds = %88
  %95 = load %union.SDL_Event** %event, align 4
  %96 = bitcast %union.SDL_Event* %95 to %struct.SDL_ActiveEvent*
  %97 = getelementptr inbounds %struct.SDL_ActiveEvent* %96, i32 0, i32 1
  %98 = load i8* %97, align 1
  %99 = load %union.SDL_Event** %event, align 4
  %100 = bitcast %union.SDL_Event* %99 to %struct.SDL_ActiveEvent*
  %101 = getelementptr inbounds %struct.SDL_ActiveEvent* %100, i32 0, i32 2
  %102 = load i8* %101, align 1
  %103 = call i32 @SDL_PrivateAppActive(i8 zeroext %98, i8 zeroext %102)
  br label %104

; <label>:104                                     ; preds = %94, %88
  br label %105

; <label>:105                                     ; preds = %104, %83
  br label %106

; <label>:106                                     ; preds = %105, %72
  br label %107

; <label>:107                                     ; preds = %106, %56
  br label %108

; <label>:108                                     ; preds = %107, %36
  br label %109

; <label>:109                                     ; preds = %108, %16
  %110 = load %union.SDL_Event** %event, align 4
  %111 = bitcast %union.SDL_Event* %110 to i8*
  call void @free(i8* %111) nounwind
  br label %6

; <label>:112                                     ; preds = %4, %6
  ret void
}

declare %union.SDL_Event* @PopEvent(%struct._EventQueue*)

declare i32 @SDL_PrivateMouseButton(i8 zeroext, i8 zeroext, i16 signext, i16 signext)

declare i32 @SDL_PrivateMouseMotion(i8 zeroext, i32, i16 signext, i16 signext)

declare i32 @SDL_PrivateKeyboard(i8 zeroext, %struct.SDL_keysym*)

declare i32 @SDL_PrivateAppActive(i8 zeroext, i8 zeroext)

declare void @free(i8*) nounwind

define hidden void @NACL_InitOSKeymap(%struct.SDL_VideoDevice* %_this) nounwind {
  %1 = alloca %struct.SDL_VideoDevice*, align 4
  store %struct.SDL_VideoDevice* %_this, %struct.SDL_VideoDevice** %1, align 4
  ret void
}

declare i32 @toupper(i32) nounwind

declare noalias i8* @malloc(i32) nounwind
