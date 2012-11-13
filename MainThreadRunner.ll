; ModuleID = 'src/video/nacl_c/MainThreadRunner.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.PPB_Core_1_0 = type { void (i32)*, void (i32)*, double (...)*, double (...)*, void (i32, void (i8*, i32)*, i8*, i32, i32)*, i32 (...)* }
%struct.__jmp_buf_tag = type { [6 x i32], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [32 x i32] }
%struct._MainThreadRunner = type { %union.pthread_mutex_t, [4096 x %struct._JobEntry*], i32, i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, %union.anon }
%union.anon = type { i32 }
%struct._JobEntry = type { i32, %struct._MainThreadRunner*, %struct._MainThreadJob*, %union.pthread_mutex_t, %union.pthread_cond_t, i32, i32, i32 }
%struct._MainThreadJob = type { void (%struct._JobEntry*, i8*)* }
%union.pthread_cond_t = type { %struct.anon, [4 x i8] }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_mutexattr_t = type { i32 }
%struct.PP_CompletionCallback = type { void (i8*, i32)*, i8*, i32 }
%union.pthread_condattr_t = type { i32 }

@kDefaultPseudoThreadHeadroom = hidden constant i32 655360, align 4
@in_pseudo_thread_ = internal global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"!in_main_thread || in_pseudo_thread_\00", align 1
@.str1 = private unnamed_addr constant [36 x i8] c"src/video/nacl_c/MainThreadRunner.c\00", align 1
@__PRETTY_FUNCTION__.RunJob = private unnamed_addr constant [52 x i8] c"int32_t RunJob(MainThreadRunner *, MainThreadJob *)\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"!ret\00", align 1
@g_core_interface = external global %struct.PPB_Core_1_0*
@.str3 = private unnamed_addr constant [15 x i8] c"IsMainThread()\00", align 1
@__PRETTY_FUNCTION__.PseudoThreadHeadroomFork = private unnamed_addr constant [62 x i8] c"void PseudoThreadHeadroomFork(int, void *(*)(void *), void *)\00", align 1
@forked_pseudo_thread_ = internal global i32 0, align 4
@.str4 = private unnamed_addr constant [23 x i8] c"!forked_pseudo_thread_\00", align 1
@main_thread_state_ = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 4
@__PRETTY_FUNCTION__.PseudoThreadBlock = private unnamed_addr constant [25 x i8] c"void PseudoThreadBlock()\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"forked_pseudo_thread_\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"in_pseudo_thread_\00", align 1
@pseudo_thread_state_ = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 4
@__PRETTY_FUNCTION__.PseudoThreadResume = private unnamed_addr constant [26 x i8] c"void PseudoThreadResume()\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"!in_pseudo_thread_\00", align 1

define hidden %struct._MainThreadRunner* @MainThreadRunner_Create(i32 %instance) nounwind {
  %1 = alloca i32, align 4
  %runner = alloca %struct._MainThreadRunner*, align 4
  store i32 %instance, i32* %1, align 4
  %2 = call noalias i8* @malloc(i32 16424) nounwind
  %3 = bitcast i8* %2 to %struct._MainThreadRunner*
  store %struct._MainThreadRunner* %3, %struct._MainThreadRunner** %runner, align 4
  %4 = load i32* %1, align 4
  %5 = load %struct._MainThreadRunner** %runner, align 4
  %6 = getelementptr inbounds %struct._MainThreadRunner* %5, i32 0, i32 5
  store i32 %4, i32* %6, align 4
  %7 = load %struct._MainThreadRunner** %runner, align 4
  %8 = getelementptr inbounds %struct._MainThreadRunner* %7, i32 0, i32 0
  %9 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %8, %union.pthread_mutexattr_t* null) nounwind
  %10 = load %struct._MainThreadRunner** %runner, align 4
  %11 = getelementptr inbounds %struct._MainThreadRunner* %10, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = load %struct._MainThreadRunner** %runner, align 4
  %13 = getelementptr inbounds %struct._MainThreadRunner* %12, i32 0, i32 3
  store i32 0, i32* %13, align 4
  %14 = load %struct._MainThreadRunner** %runner, align 4
  %15 = getelementptr inbounds %struct._MainThreadRunner* %14, i32 0, i32 4
  store i32 0, i32* %15, align 4
  %16 = load %struct._MainThreadRunner** %runner, align 4
  ret %struct._MainThreadRunner* %16
}

declare noalias i8* @malloc(i32) nounwind

declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) nounwind

define hidden void @MainThreadRunner_Destroy(%struct._MainThreadRunner* %runner) nounwind {
  %1 = alloca %struct._MainThreadRunner*, align 4
  store %struct._MainThreadRunner* %runner, %struct._MainThreadRunner** %1, align 4
  %2 = load %struct._MainThreadRunner** %1, align 4
  %3 = getelementptr inbounds %struct._MainThreadRunner* %2, i32 0, i32 0
  %4 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %3) nounwind
  %5 = load %struct._MainThreadRunner** %1, align 4
  %6 = bitcast %struct._MainThreadRunner* %5 to i8*
  call void @free(i8* %6) nounwind
  ret void
}

declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) nounwind

declare void @free(i8*) nounwind

define hidden i32 @RunJob(%struct._MainThreadRunner* %runner, %struct._MainThreadJob* %job) nounwind {
  %1 = alloca %struct._MainThreadRunner*, align 4
  %2 = alloca %struct._MainThreadJob*, align 4
  %entry = alloca %struct._JobEntry, align 4
  %in_main_thread = alloca i32, align 4
  %ret = alloca i32, align 4
  %3 = alloca %struct.PP_CompletionCallback, align 4
  store %struct._MainThreadRunner* %runner, %struct._MainThreadRunner** %1, align 4
  store %struct._MainThreadJob* %job, %struct._MainThreadJob** %2, align 4
  %4 = load %struct._MainThreadRunner** %1, align 4
  %5 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 1
  store %struct._MainThreadRunner* %4, %struct._MainThreadRunner** %5, align 4
  %6 = load %struct._MainThreadRunner** %1, align 4
  %7 = getelementptr inbounds %struct._MainThreadRunner* %6, i32 0, i32 5
  %8 = load i32* %7, align 4
  %9 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct._MainThreadJob** %2, align 4
  %11 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 2
  store %struct._MainThreadJob* %10, %struct._MainThreadJob** %11, align 4
  %12 = call i32 @IsMainThread()
  store i32 %12, i32* %in_main_thread, align 4
  %13 = load i32* %in_main_thread, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %0
  %16 = load i32* @in_pseudo_thread_, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15, %0
  br label %21

; <label>:19                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 66, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.RunJob, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = load i32* %in_main_thread, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %21
  %25 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 7
  store i32 1, i32* %25, align 4
  br label %45

; <label>:26                                      ; preds = %21
  %27 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 7
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 5
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 3
  %30 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %29, %union.pthread_mutexattr_t* null) nounwind
  store i32 %30, i32* %ret, align 4
  %31 = load i32* %ret, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %26
  br label %36

; <label>:34                                      ; preds = %26
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 76, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.RunJob, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 4
  %38 = call i32 @pthread_cond_init(%union.pthread_cond_t* %37, %union.pthread_condattr_t* null) nounwind
  store i32 %38, i32* %ret, align 4
  %39 = load i32* %ret, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

; <label>:41                                      ; preds = %36
  br label %44

; <label>:42                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 78, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.RunJob, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %44

; <label>:44                                      ; preds = %43, %41
  br label %45

; <label>:45                                      ; preds = %44, %24
  %46 = load %struct._MainThreadRunner** %1, align 4
  %47 = getelementptr inbounds %struct._MainThreadRunner* %46, i32 0, i32 0
  %48 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %47) nounwind
  %49 = load %struct._MainThreadRunner** %1, align 4
  %50 = getelementptr inbounds %struct._MainThreadRunner* %49, i32 0, i32 3
  %51 = load i32* %50, align 4
  %52 = load %struct._MainThreadRunner** %1, align 4
  %53 = getelementptr inbounds %struct._MainThreadRunner* %52, i32 0, i32 1
  %54 = getelementptr inbounds [4096 x %struct._JobEntry*]* %53, i32 0, i32 %51
  store %struct._JobEntry* %entry, %struct._JobEntry** %54, align 4
  %55 = load %struct._MainThreadRunner** %1, align 4
  %56 = getelementptr inbounds %struct._MainThreadRunner* %55, i32 0, i32 3
  %57 = load i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = srem i32 %58, 4096
  %60 = load %struct._MainThreadRunner** %1, align 4
  %61 = getelementptr inbounds %struct._MainThreadRunner* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct._MainThreadRunner** %1, align 4
  %63 = getelementptr inbounds %struct._MainThreadRunner* %62, i32 0, i32 4
  %64 = load i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct._MainThreadRunner** %1, align 4
  %67 = getelementptr inbounds %struct._MainThreadRunner* %66, i32 0, i32 0
  %68 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %67) nounwind
  %69 = load %struct.PPB_Core_1_0** @g_core_interface, align 4
  %70 = getelementptr inbounds %struct.PPB_Core_1_0* %69, i32 0, i32 4
  %71 = load void (i32, void (i8*, i32)*, i8*, i32, i32)** %70, align 4
  %72 = load %struct._MainThreadRunner** %1, align 4
  %73 = bitcast %struct._MainThreadRunner* %72 to i8*
  call void @PP_MakeCompletionCallback(%struct.PP_CompletionCallback* sret %3, void (i8*, i32)* @DoWorkShim, i8* %73)
  %74 = getelementptr inbounds %struct.PP_CompletionCallback* %3, i32 0, i32 0
  %75 = load void (i8*, i32)** %74, align 4
  %76 = getelementptr inbounds %struct.PP_CompletionCallback* %3, i32 0, i32 1
  %77 = load i8** %76, align 4
  %78 = getelementptr inbounds %struct.PP_CompletionCallback* %3, i32 0, i32 2
  %79 = load i32* %78, align 4
  call void %71(i32 0, void (i8*, i32)* %75, i8* %77, i32 %79, i32 0)
  %80 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 7
  %81 = load i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %45
  call void @PseudoThreadBlock()
  br label %103

; <label>:84                                      ; preds = %45
  %85 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 3
  %86 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %85) nounwind
  br label %87

; <label>:87                                      ; preds = %92, %84
  %88 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 5
  %89 = load i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %96

; <label>:92                                      ; preds = %87
  %93 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 4
  %94 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 3
  %95 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %93, %union.pthread_mutex_t* %94)
  br label %87

; <label>:96                                      ; preds = %87
  %97 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 3
  %98 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %97) nounwind
  %99 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 3
  %100 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %99) nounwind
  %101 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 4
  %102 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %101) nounwind
  br label %103

; <label>:103                                     ; preds = %96, %83
  %104 = load %struct._MainThreadJob** %2, align 4
  %105 = bitcast %struct._MainThreadJob* %104 to i8*
  call void @free(i8* %105) nounwind
  %106 = getelementptr inbounds %struct._JobEntry* %entry, i32 0, i32 6
  %107 = load i32* %106, align 4
  ret i32 %107
}

define hidden i32 @IsMainThread() nounwind {
  %1 = load %struct.PPB_Core_1_0** @g_core_interface, align 4
  %2 = getelementptr inbounds %struct.PPB_Core_1_0* %1, i32 0, i32 5
  %3 = load i32 (...)** %2, align 4
  %4 = bitcast i32 (...)* %3 to i32 ()*
  %5 = call i32 %4()
  ret i32 %5
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) nounwind

declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) nounwind

declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) nounwind

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

define hidden void @DoWorkShim(i8* %p, i32 %unused) nounwind {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %mtr = alloca %struct._MainThreadRunner*, align 4
  store i8* %p, i8** %1, align 4
  store i32 %unused, i32* %2, align 4
  %3 = load i8** %1, align 4
  %4 = bitcast i8* %3 to %struct._MainThreadRunner*
  store %struct._MainThreadRunner* %4, %struct._MainThreadRunner** %mtr, align 4
  %5 = load %struct._MainThreadRunner** %mtr, align 4
  call void @DoWork(%struct._MainThreadRunner* %5)
  ret void
}

define hidden void @PseudoThreadBlock() nounwind {
  %1 = call i32 @IsMainThread()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 196, i8* getelementptr inbounds ([25 x i8]* @__PRETTY_FUNCTION__.PseudoThreadBlock, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = load i32* @forked_pseudo_thread_, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %6
  br label %12

; <label>:10                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([25 x i8]* @__PRETTY_FUNCTION__.PseudoThreadBlock, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load i32* @in_pseudo_thread_, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %12
  br label %18

; <label>:16                                      ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 200, i8* getelementptr inbounds ([25 x i8]* @__PRETTY_FUNCTION__.PseudoThreadBlock, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag]* @pseudo_thread_state_, i32 0, i32 0)) nounwind returns_twice
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %18
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag]* @main_thread_state_, i32 0, i32 0), i32 1) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %18
  store i32 1, i32* @in_pseudo_thread_, align 4
  ret void
}

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*)

declare i32 @pthread_cond_destroy(%union.pthread_cond_t*) nounwind

define hidden void @ResultCompletion(i8* %arg, i32 %result) nounwind {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %entry = alloca %struct._JobEntry*, align 4
  store i8* %arg, i8** %1, align 4
  store i32 %result, i32* %2, align 4
  %3 = load i8** %1, align 4
  %4 = bitcast i8* %3 to %struct._JobEntry*
  store %struct._JobEntry* %4, %struct._JobEntry** %entry, align 4
  %5 = load i32* %2, align 4
  %6 = load %struct._JobEntry** %entry, align 4
  %7 = getelementptr inbounds %struct._JobEntry* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 4
  %8 = load %struct._JobEntry** %entry, align 4
  %9 = getelementptr inbounds %struct._JobEntry* %8, i32 0, i32 7
  %10 = load i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  call void @PseudoThreadResume()
  br label %25

; <label>:13                                      ; preds = %0
  %14 = load %struct._JobEntry** %entry, align 4
  %15 = getelementptr inbounds %struct._JobEntry* %14, i32 0, i32 3
  %16 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %15) nounwind
  %17 = load %struct._JobEntry** %entry, align 4
  %18 = getelementptr inbounds %struct._JobEntry* %17, i32 0, i32 5
  store i32 1, i32* %18, align 4
  %19 = load %struct._JobEntry** %entry, align 4
  %20 = getelementptr inbounds %struct._JobEntry* %19, i32 0, i32 4
  %21 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %20) nounwind
  %22 = load %struct._JobEntry** %entry, align 4
  %23 = getelementptr inbounds %struct._JobEntry* %22, i32 0, i32 3
  %24 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %23) nounwind
  br label %25

; <label>:25                                      ; preds = %13, %12
  ret void
}

define hidden void @PseudoThreadResume() nounwind {
  %1 = call i32 @IsMainThread()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([26 x i8]* @__PRETTY_FUNCTION__.PseudoThreadResume, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = load i32* @forked_pseudo_thread_, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %6
  br label %12

; <label>:10                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 212, i8* getelementptr inbounds ([26 x i8]* @__PRETTY_FUNCTION__.PseudoThreadResume, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load i32* @in_pseudo_thread_, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

; <label>:15                                      ; preds = %12
  br label %18

; <label>:16                                      ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 214, i8* getelementptr inbounds ([26 x i8]* @__PRETTY_FUNCTION__.PseudoThreadResume, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag]* @main_thread_state_, i32 0, i32 0)) nounwind returns_twice
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %18
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag]* @pseudo_thread_state_, i32 0, i32 0), i32 1) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %18
  store i32 0, i32* @in_pseudo_thread_, align 4
  ret void
}

declare i32 @pthread_cond_signal(%union.pthread_cond_t*) nounwind

define hidden void @DoWork(%struct._MainThreadRunner* %runner) nounwind {
  %1 = alloca %struct._MainThreadRunner*, align 4
  %entry = alloca %struct._JobEntry*, align 4
  %entry1 = alloca %struct._JobEntry*, align 4
  store %struct._MainThreadRunner* %runner, %struct._MainThreadRunner** %1, align 4
  %2 = load %struct._MainThreadRunner** %1, align 4
  %3 = getelementptr inbounds %struct._MainThreadRunner* %2, i32 0, i32 0
  %4 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %3) nounwind
  %5 = load %struct._MainThreadRunner** %1, align 4
  %6 = getelementptr inbounds %struct._MainThreadRunner* %5, i32 0, i32 4
  %7 = load i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

; <label>:9                                       ; preds = %0
  %10 = load %struct._MainThreadRunner** %1, align 4
  %11 = getelementptr inbounds %struct._MainThreadRunner* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  %13 = load %struct._MainThreadRunner** %1, align 4
  %14 = getelementptr inbounds %struct._MainThreadRunner* %13, i32 0, i32 1
  %15 = getelementptr inbounds [4096 x %struct._JobEntry*]* %14, i32 0, i32 %12
  %16 = load %struct._JobEntry** %15, align 4
  store %struct._JobEntry* %16, %struct._JobEntry** %entry1, align 4
  %17 = load %struct._MainThreadRunner** %1, align 4
  %18 = getelementptr inbounds %struct._MainThreadRunner* %17, i32 0, i32 2
  %19 = load i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = srem i32 %20, 4096
  %22 = load %struct._MainThreadRunner** %1, align 4
  %23 = getelementptr inbounds %struct._MainThreadRunner* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct._MainThreadRunner** %1, align 4
  %25 = getelementptr inbounds %struct._MainThreadRunner* %24, i32 0, i32 4
  %26 = load i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct._MainThreadRunner** %1, align 4
  %29 = getelementptr inbounds %struct._MainThreadRunner* %28, i32 0, i32 0
  %30 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %29) nounwind
  %31 = load %struct._JobEntry** %entry1, align 4
  %32 = getelementptr inbounds %struct._JobEntry* %31, i32 0, i32 2
  %33 = load %struct._MainThreadJob** %32, align 4
  %34 = getelementptr inbounds %struct._MainThreadJob* %33, i32 0, i32 0
  %35 = load void (%struct._JobEntry*, i8*)** %34, align 4
  %36 = load %struct._JobEntry** %entry1, align 4
  %37 = load %struct._JobEntry** %entry1, align 4
  %38 = getelementptr inbounds %struct._JobEntry* %37, i32 0, i32 2
  %39 = load %struct._MainThreadJob** %38, align 4
  %40 = bitcast %struct._MainThreadJob* %39 to i8*
  call void %35(%struct._JobEntry* %36, i8* %40)
  br label %45

; <label>:41                                      ; preds = %0
  %42 = load %struct._MainThreadRunner** %1, align 4
  %43 = getelementptr inbounds %struct._MainThreadRunner* %42, i32 0, i32 0
  %44 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %43) nounwind
  br label %45

; <label>:45                                      ; preds = %41, %9
  ret void
}

define hidden i32 @ExtractPepperInstance(%struct._JobEntry* %e) nounwind {
  %1 = alloca %struct._JobEntry*, align 4
  store %struct._JobEntry* %e, %struct._JobEntry** %1, align 4
  %2 = load %struct._JobEntry** %1, align 4
  %3 = getelementptr inbounds %struct._JobEntry* %2, i32 0, i32 0
  %4 = load i32* %3, align 4
  ret i32 %4
}

define hidden void @PseudoThreadFork(i8* (i8*)* %func, i8* %arg) nounwind {
  %1 = alloca i8* (i8*)*, align 4
  %2 = alloca i8*, align 4
  store i8* (i8*)* %func, i8* (i8*)** %1, align 4
  store i8* %arg, i8** %2, align 4
  %3 = load i8* (i8*)** %1, align 4
  %4 = load i8** %2, align 4
  call void @PseudoThreadHeadroomFork(i32 655360, i8* (i8*)* %3, i8* %4)
  ret void
}

define hidden void @PseudoThreadHeadroomFork(i32 %bytes_headroom, i8* (i8*)* %func, i8* %arg) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8* (i8*)*, align 4
  %3 = alloca i8*, align 4
  store i32 %bytes_headroom, i32* %1, align 4
  store i8* (i8*)* %func, i8* (i8*)** %2, align 4
  store i8* %arg, i8** %3, align 4
  %4 = call i32 @IsMainThread()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([62 x i8]* @__PRETTY_FUNCTION__.PseudoThreadHeadroomFork, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = load i32* @forked_pseudo_thread_, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12                                      ; preds = %9
  br label %15

; <label>:13                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str1, i32 0, i32 0), i32 170, i8* getelementptr inbounds ([62 x i8]* @__PRETTY_FUNCTION__.PseudoThreadHeadroomFork, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load i32* %1, align 4
  %17 = alloca i8, i32 %16
  %18 = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag]* @main_thread_state_, i32 0, i32 0)) nounwind returns_twice
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

; <label>:20                                      ; preds = %15
  %21 = load i8* (i8*)** %2, align 4
  %22 = load i8** %3, align 4
  call void @InnerPseudoThreadFork(i8* (i8*)* %21, i8* %22)
  br label %23

; <label>:23                                      ; preds = %20, %15
  store i32 0, i32* @in_pseudo_thread_, align 4
  ret void
}

declare i32 @_setjmp(%struct.__jmp_buf_tag*) nounwind returns_twice

define hidden void @InnerPseudoThreadFork(i8* (i8*)* %func, i8* %arg) nounwind {
  %1 = alloca i8* (i8*)*, align 4
  %2 = alloca i8*, align 4
  store i8* (i8*)* %func, i8* (i8*)** %1, align 4
  store i8* %arg, i8** %2, align 4
  store i32 1, i32* @forked_pseudo_thread_, align 4
  store i32 1, i32* @in_pseudo_thread_, align 4
  %3 = load i8* (i8*)** %1, align 4
  %4 = load i8** %2, align 4
  %5 = call i8* %3(i8* %4)
  store i32 0, i32* @forked_pseudo_thread_, align 4
  store i32 0, i32* @in_pseudo_thread_, align 4
  br label %6

; <label>:6                                       ; preds = %0
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag]* @main_thread_state_, i32 0, i32 0), i32 1) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  ret void
}

declare void @longjmp(%struct.__jmp_buf_tag*, i32) noreturn nounwind

define hidden i32 @IsPseudoThread() nounwind {
  %1 = call i32 @IsMainThread()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = load i32* @in_pseudo_thread_, align 4
  %5 = icmp ne i32 %4, 0
  br label %6

; <label>:6                                       ; preds = %3, %0
  %7 = phi i1 [ false, %0 ], [ %5, %3 ]
  %8 = zext i1 %7 to i32
  ret i32 %8
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
