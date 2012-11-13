; ModuleID = 'src/video/nacl_c/eventqueue.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct._EventQueue = type { [4096 x %union.SDL_Event*], %struct.SDL_mutex*, i32, i32, i32 }
%union.SDL_Event = type { %struct.SDL_KeyboardEvent }
%struct.SDL_KeyboardEvent = type { i8, i8, i8, %struct.SDL_keysym }
%struct.SDL_keysym = type { i8, i32, i32, i16 }
%struct.SDL_mutex = type opaque

define hidden %struct._EventQueue* @EventQueue_Create() nounwind {
  %queue = alloca %struct._EventQueue*, align 4
  %1 = call noalias i8* @malloc(i32 16400) nounwind
  %2 = bitcast i8* %1 to %struct._EventQueue*
  store %struct._EventQueue* %2, %struct._EventQueue** %queue, align 4
  %3 = call %struct.SDL_mutex* @SDL_CreateMutex()
  %4 = load %struct._EventQueue** %queue, align 4
  %5 = getelementptr inbounds %struct._EventQueue* %4, i32 0, i32 1
  store %struct.SDL_mutex* %3, %struct.SDL_mutex** %5, align 4
  %6 = load %struct._EventQueue** %queue, align 4
  %7 = getelementptr inbounds %struct._EventQueue* %6, i32 0, i32 2
  store i32 0, i32* %7, align 4
  %8 = load %struct._EventQueue** %queue, align 4
  %9 = getelementptr inbounds %struct._EventQueue* %8, i32 0, i32 3
  store i32 0, i32* %9, align 4
  %10 = load %struct._EventQueue** %queue, align 4
  %11 = getelementptr inbounds %struct._EventQueue* %10, i32 0, i32 4
  store i32 0, i32* %11, align 4
  %12 = load %struct._EventQueue** %queue, align 4
  ret %struct._EventQueue* %12
}

declare noalias i8* @malloc(i32) nounwind

declare %struct.SDL_mutex* @SDL_CreateMutex()

define hidden void @EventQueue_Destroy(%struct._EventQueue* %queue) nounwind {
  %1 = alloca %struct._EventQueue*, align 4
  store %struct._EventQueue* %queue, %struct._EventQueue** %1, align 4
  %2 = load %struct._EventQueue** %1, align 4
  %3 = getelementptr inbounds %struct._EventQueue* %2, i32 0, i32 1
  %4 = load %struct.SDL_mutex** %3, align 4
  call void @SDL_DestroyMutex(%struct.SDL_mutex* %4)
  %5 = load %struct._EventQueue** %1, align 4
  %6 = bitcast %struct._EventQueue* %5 to i8*
  call void @free(i8* %6) nounwind
  ret void
}

declare void @SDL_DestroyMutex(%struct.SDL_mutex*)

declare void @free(i8*) nounwind

define hidden %union.SDL_Event* @PopEvent(%struct._EventQueue* %queue) nounwind {
  %1 = alloca %struct._EventQueue*, align 4
  %event = alloca %union.SDL_Event*, align 4
  store %struct._EventQueue* %queue, %struct._EventQueue** %1, align 4
  %2 = load %struct._EventQueue** %1, align 4
  %3 = getelementptr inbounds %struct._EventQueue* %2, i32 0, i32 1
  %4 = load %struct.SDL_mutex** %3, align 4
  %5 = call i32 @SDL_mutexP(%struct.SDL_mutex* %4)
  store %union.SDL_Event* null, %union.SDL_Event** %event, align 4
  %6 = load %struct._EventQueue** %1, align 4
  %7 = getelementptr inbounds %struct._EventQueue* %6, i32 0, i32 4
  %8 = load i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct._EventQueue** %1, align 4
  %12 = getelementptr inbounds %struct._EventQueue* %11, i32 0, i32 2
  %13 = load i32* %12, align 4
  %14 = load %struct._EventQueue** %1, align 4
  %15 = getelementptr inbounds %struct._EventQueue* %14, i32 0, i32 0
  %16 = getelementptr inbounds [4096 x %union.SDL_Event*]* %15, i32 0, i32 %13
  %17 = load %union.SDL_Event** %16, align 4
  store %union.SDL_Event* %17, %union.SDL_Event** %event, align 4
  %18 = load %struct._EventQueue** %1, align 4
  %19 = getelementptr inbounds %struct._EventQueue* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = srem i32 %21, 4096
  %23 = load %struct._EventQueue** %1, align 4
  %24 = getelementptr inbounds %struct._EventQueue* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct._EventQueue** %1, align 4
  %26 = getelementptr inbounds %struct._EventQueue* %25, i32 0, i32 4
  %27 = load i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %29

; <label>:29                                      ; preds = %10, %0
  %30 = load %struct._EventQueue** %1, align 4
  %31 = getelementptr inbounds %struct._EventQueue* %30, i32 0, i32 1
  %32 = load %struct.SDL_mutex** %31, align 4
  %33 = call i32 @SDL_mutexV(%struct.SDL_mutex* %32)
  %34 = load %union.SDL_Event** %event, align 4
  ret %union.SDL_Event* %34
}

declare i32 @SDL_mutexP(%struct.SDL_mutex*)

declare i32 @SDL_mutexV(%struct.SDL_mutex*)

define hidden void @PushEvent(%struct._EventQueue* %queue, %union.SDL_Event* %event) nounwind {
  %1 = alloca %struct._EventQueue*, align 4
  %2 = alloca %union.SDL_Event*, align 4
  store %struct._EventQueue* %queue, %struct._EventQueue** %1, align 4
  store %union.SDL_Event* %event, %union.SDL_Event** %2, align 4
  %3 = load %struct._EventQueue** %1, align 4
  %4 = getelementptr inbounds %struct._EventQueue* %3, i32 0, i32 1
  %5 = load %struct.SDL_mutex** %4, align 4
  %6 = call i32 @SDL_mutexP(%struct.SDL_mutex* %5)
  %7 = load %union.SDL_Event** %2, align 4
  %8 = load %struct._EventQueue** %1, align 4
  %9 = getelementptr inbounds %struct._EventQueue* %8, i32 0, i32 3
  %10 = load i32* %9, align 4
  %11 = load %struct._EventQueue** %1, align 4
  %12 = getelementptr inbounds %struct._EventQueue* %11, i32 0, i32 0
  %13 = getelementptr inbounds [4096 x %union.SDL_Event*]* %12, i32 0, i32 %10
  store %union.SDL_Event* %7, %union.SDL_Event** %13, align 4
  %14 = load %struct._EventQueue** %1, align 4
  %15 = getelementptr inbounds %struct._EventQueue* %14, i32 0, i32 3
  %16 = load i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = srem i32 %17, 4096
  %19 = load %struct._EventQueue** %1, align 4
  %20 = getelementptr inbounds %struct._EventQueue* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct._EventQueue** %1, align 4
  %22 = getelementptr inbounds %struct._EventQueue* %21, i32 0, i32 4
  %23 = load i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct._EventQueue** %1, align 4
  %26 = getelementptr inbounds %struct._EventQueue* %25, i32 0, i32 1
  %27 = load %struct.SDL_mutex** %26, align 4
  %28 = call i32 @SDL_mutexV(%struct.SDL_mutex* %27)
  ret void
}
