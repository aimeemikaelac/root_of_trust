; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZL8contacts = internal global [8192 x i8] zeroinitializer, align 16 ; [#uses=2 type=[8192 x i8]*]
@_ZL8database = internal global [1920000 x i8] zeroinitializer, align 16 ; [#uses=2 type=[1920000 x i8]*]
@_ZL7results = internal global [30000 x i1] zeroinitializer, align 16 ; [#uses=2 type=[30000 x i1]*]
@.str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@_ZL13contacts_size = internal global i32 0, align 4 ; [#uses=12 type=i32*]
@_ZL13database_size = internal global i32 0, align 4 ; [#uses=12 type=i32*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=2]
define void @_Z7_memcpyPhS_i(i8* %dest, i8* %src, i32 %length) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i8* %dest, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !68), !dbg !69 ; [debug line = 15:29] [debug variable = dest]
  store i8* %src, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !70), !dbg !71 ; [debug line = 15:50] [debug variable = src]
  store i32 %length, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !72), !dbg !73 ; [debug line = 15:59] [debug variable = length]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !74), !dbg !76 ; [debug line = 16:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !77         ; [debug line = 17:6]
  br label %4, !dbg !77                           ; [debug line = 17:6]

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %i, align 4, !dbg !77            ; [#uses=1 type=i32] [debug line = 17:6]
  %6 = load i32* %3, align 4, !dbg !77            ; [#uses=1 type=i32] [debug line = 17:6]
  %7 = icmp slt i32 %5, %6, !dbg !77              ; [#uses=1 type=i1] [debug line = 17:6]
  br i1 %7, label %8, label %21, !dbg !77         ; [debug line = 17:6]

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4, !dbg !79            ; [#uses=1 type=i32] [debug line = 18:3]
  %10 = sext i32 %9 to i64, !dbg !79              ; [#uses=1 type=i64] [debug line = 18:3]
  %11 = load i8** %2, align 8, !dbg !79           ; [#uses=1 type=i8*] [debug line = 18:3]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !79 ; [#uses=1 type=i8*] [debug line = 18:3]
  %13 = load i8* %12, align 1, !dbg !79           ; [#uses=1 type=i8] [debug line = 18:3]
  %14 = load i32* %i, align 4, !dbg !79           ; [#uses=1 type=i32] [debug line = 18:3]
  %15 = sext i32 %14 to i64, !dbg !79             ; [#uses=1 type=i64] [debug line = 18:3]
  %16 = load i8** %1, align 8, !dbg !79           ; [#uses=1 type=i8*] [debug line = 18:3]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !79 ; [#uses=1 type=i8*] [debug line = 18:3]
  store i8 %13, i8* %17, align 1, !dbg !79        ; [debug line = 18:3]
  br label %18, !dbg !81                          ; [debug line = 19:2]

; <label>:18                                      ; preds = %8
  %19 = load i32* %i, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 17:21]
  %20 = add nsw i32 %19, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 17:21]
  store i32 %20, i32* %i, align 4, !dbg !82       ; [debug line = 17:21]
  br label %4, !dbg !82                           ; [debug line = 17:21]

; <label>:21                                      ; preds = %4
  ret void, !dbg !83                              ; [debug line = 20:1]
}

; [#uses=28]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define zeroext i1 @_Z7compareii(i32 %db_index, i32 %contacts_index) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=12 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %found = alloca i1, align 1                     ; [#uses=4 type=i1*]
  %results_local = alloca [64 x i1], align 16     ; [#uses=2 type=[64 x i1]*]
  store i32 %db_index, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !84), !dbg !85 ; [debug line = 22:18] [debug variable = db_index]
  store i32 %contacts_index, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !86), !dbg !87 ; [debug line = 22:32] [debug variable = contacts_index]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !88), !dbg !90 ; [debug line = 24:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !91), !dbg !92 ; [debug line = 24:9] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i1* %found}, metadata !93), !dbg !94 ; [debug line = 25:7] [debug variable = found]
  store i1 true, i1* %found, align 1, !dbg !95    ; [debug line = 25:19]
  call void @llvm.dbg.declare(metadata !{[64 x i1]* %results_local}, metadata !96), !dbg !100 ; [debug line = 26:7] [debug variable = results_local]
  store i32 0, i32* %i, align 4, !dbg !101        ; [debug line = 32:6]
  br label %3, !dbg !101                          ; [debug line = 32:6]

; <label>:3                                       ; preds = %27, %0
  %4 = load i32* %i, align 4, !dbg !101           ; [#uses=1 type=i32] [debug line = 32:6]
  %5 = icmp slt i32 %4, 64, !dbg !101             ; [#uses=1 type=i1] [debug line = 32:6]
  br i1 %5, label %6, label %30, !dbg !101        ; [debug line = 32:6]

; <label>:6                                       ; preds = %3
  %7 = load i32* %2, align 4, !dbg !103           ; [#uses=1 type=i32] [debug line = 37:3]
  %8 = mul nsw i32 %7, 64, !dbg !103              ; [#uses=1 type=i32] [debug line = 37:3]
  %9 = load i32* %i, align 4, !dbg !103           ; [#uses=1 type=i32] [debug line = 37:3]
  %10 = add nsw i32 %8, %9, !dbg !103             ; [#uses=1 type=i32] [debug line = 37:3]
  %11 = sext i32 %10 to i64, !dbg !103            ; [#uses=1 type=i64] [debug line = 37:3]
  %12 = getelementptr inbounds [8192 x i8]* @_ZL8contacts, i32 0, i64 %11, !dbg !103 ; [#uses=1 type=i8*] [debug line = 37:3]
  %13 = load i8* %12, align 1, !dbg !103          ; [#uses=1 type=i8] [debug line = 37:3]
  %14 = zext i8 %13 to i32, !dbg !103             ; [#uses=1 type=i32] [debug line = 37:3]
  %15 = load i32* %1, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 37:3]
  %16 = mul nsw i32 %15, 64, !dbg !103            ; [#uses=1 type=i32] [debug line = 37:3]
  %17 = load i32* %i, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 37:3]
  %18 = add nsw i32 %16, %17, !dbg !103           ; [#uses=1 type=i32] [debug line = 37:3]
  %19 = sext i32 %18 to i64, !dbg !103            ; [#uses=1 type=i64] [debug line = 37:3]
  %20 = getelementptr inbounds [1920000 x i8]* @_ZL8database, i32 0, i64 %19, !dbg !103 ; [#uses=1 type=i8*] [debug line = 37:3]
  %21 = load i8* %20, align 1, !dbg !103          ; [#uses=1 type=i8] [debug line = 37:3]
  %22 = zext i8 %21 to i32, !dbg !103             ; [#uses=1 type=i32] [debug line = 37:3]
  %23 = icmp eq i32 %14, %22, !dbg !103           ; [#uses=1 type=i1] [debug line = 37:3]
  %24 = load i32* %i, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 37:3]
  %25 = sext i32 %24 to i64, !dbg !103            ; [#uses=1 type=i64] [debug line = 37:3]
  %26 = getelementptr inbounds [64 x i1]* %results_local, i32 0, i64 %25, !dbg !103 ; [#uses=1 type=i1*] [debug line = 37:3]
  store i1 %23, i1* %26, align 1, !dbg !103       ; [debug line = 37:3]
  br label %27, !dbg !105                         ; [debug line = 38:2]

; <label>:27                                      ; preds = %6
  %28 = load i32* %i, align 4, !dbg !106          ; [#uses=1 type=i32] [debug line = 32:17]
  %29 = add nsw i32 %28, 1, !dbg !106             ; [#uses=1 type=i32] [debug line = 32:17]
  store i32 %29, i32* %i, align 4, !dbg !106      ; [debug line = 32:17]
  br label %3, !dbg !106                          ; [debug line = 32:17]

; <label>:30                                      ; preds = %3
  store i32 0, i32* %i, align 4, !dbg !107        ; [debug line = 39:6]
  br label %31, !dbg !107                         ; [debug line = 39:6]

; <label>:31                                      ; preds = %44, %30
  %32 = load i32* %i, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 39:6]
  %33 = icmp slt i32 %32, 64, !dbg !107           ; [#uses=1 type=i1] [debug line = 39:6]
  br i1 %33, label %34, label %47, !dbg !107      ; [debug line = 39:6]

; <label>:34                                      ; preds = %31
  %35 = load i32* %i, align 4, !dbg !109          ; [#uses=1 type=i32] [debug line = 40:3]
  %36 = sext i32 %35 to i64, !dbg !109            ; [#uses=1 type=i64] [debug line = 40:3]
  %37 = getelementptr inbounds [64 x i1]* %results_local, i32 0, i64 %36, !dbg !109 ; [#uses=1 type=i1*] [debug line = 40:3]
  %38 = load i1* %37, align 1, !dbg !109          ; [#uses=1 type=i1] [debug line = 40:3]
  %39 = zext i1 %38 to i32, !dbg !109             ; [#uses=1 type=i32] [debug line = 40:3]
  %40 = load i1* %found, align 1, !dbg !109       ; [#uses=1 type=i1] [debug line = 40:3]
  %41 = zext i1 %40 to i32, !dbg !109             ; [#uses=1 type=i32] [debug line = 40:3]
  %42 = and i32 %41, %39, !dbg !109               ; [#uses=1 type=i32] [debug line = 40:3]
  %43 = icmp ne i32 %42, 0, !dbg !109             ; [#uses=1 type=i1] [debug line = 40:3]
  store i1 %43, i1* %found, align 1, !dbg !109    ; [debug line = 40:3]
  br label %44, !dbg !111                         ; [debug line = 41:2]

; <label>:44                                      ; preds = %34
  %45 = load i32* %i, align 4, !dbg !112          ; [#uses=1 type=i32] [debug line = 39:17]
  %46 = add nsw i32 %45, 1, !dbg !112             ; [#uses=1 type=i32] [debug line = 39:17]
  store i32 %46, i32* %i, align 4, !dbg !112      ; [debug line = 39:17]
  br label %31, !dbg !112                         ; [debug line = 39:17]

; <label>:47                                      ; preds = %31
  %48 = load i1* %found, align 1, !dbg !113       ; [#uses=1 type=i1] [debug line = 42:2]
  ret i1 %48, !dbg !113                           ; [debug line = 42:2]
}

; [#uses=1]
define void @_Z16match_db_contacti(i32 %database_index) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %contacts_index = alloca i32, align 4           ; [#uses=11 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %matched = alloca i1, align 1                   ; [#uses=4 type=i1*]
  %local_results = alloca [128 x i1], align 16    ; [#uses=2 type=[128 x i1]*]
  store i32 %database_index, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !114), !dbg !115 ; [debug line = 45:27] [debug variable = database_index]
  call void @llvm.dbg.declare(metadata !{i32* %contacts_index}, metadata !116), !dbg !118 ; [debug line = 47:6] [debug variable = contacts_index]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !119), !dbg !120 ; [debug line = 47:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i1* %matched}, metadata !121), !dbg !122 ; [debug line = 48:7] [debug variable = matched]
  store i1 false, i1* %matched, align 1, !dbg !123 ; [debug line = 48:22]
  call void @llvm.dbg.declare(metadata !{[128 x i1]* %local_results}, metadata !124), !dbg !128 ; [debug line = 49:7] [debug variable = local_results]
  store i32 0, i32* %contacts_index, align 4, !dbg !129 ; [debug line = 50:6]
  br label %2, !dbg !129                          ; [debug line = 50:6]

; <label>:2                                       ; preds = %12, %0
  %3 = load i32* %contacts_index, align 4, !dbg !129 ; [#uses=1 type=i32] [debug line = 50:6]
  %4 = icmp slt i32 %3, 128, !dbg !129            ; [#uses=1 type=i1] [debug line = 50:6]
  br i1 %4, label %5, label %15, !dbg !129        ; [debug line = 50:6]

; <label>:5                                       ; preds = %2
  %6 = load i32* %1, align 4, !dbg !131           ; [#uses=1 type=i32] [debug line = 56:35]
  %7 = load i32* %contacts_index, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 56:35]
  %8 = call zeroext i1 @_Z7compareii(i32 %6, i32 %7), !dbg !131 ; [#uses=1 type=i1] [debug line = 56:35]
  %9 = load i32* %contacts_index, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 56:35]
  %10 = sext i32 %9 to i64, !dbg !131             ; [#uses=1 type=i64] [debug line = 56:35]
  %11 = getelementptr inbounds [128 x i1]* %local_results, i32 0, i64 %10, !dbg !131 ; [#uses=1 type=i1*] [debug line = 56:35]
  store i1 %8, i1* %11, align 1, !dbg !131        ; [debug line = 56:35]
  br label %12, !dbg !133                         ; [debug line = 57:2]

; <label>:12                                      ; preds = %5
  %13 = load i32* %contacts_index, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 50:46]
  %14 = add nsw i32 %13, 1, !dbg !134             ; [#uses=1 type=i32] [debug line = 50:46]
  store i32 %14, i32* %contacts_index, align 4, !dbg !134 ; [debug line = 50:46]
  br label %2, !dbg !134                          ; [debug line = 50:46]

; <label>:15                                      ; preds = %2
  store i32 0, i32* %contacts_index, align 4, !dbg !135 ; [debug line = 58:6]
  br label %16, !dbg !135                         ; [debug line = 58:6]

; <label>:16                                      ; preds = %29, %15
  %17 = load i32* %contacts_index, align 4, !dbg !135 ; [#uses=1 type=i32] [debug line = 58:6]
  %18 = icmp slt i32 %17, 128, !dbg !135          ; [#uses=1 type=i1] [debug line = 58:6]
  br i1 %18, label %19, label %32, !dbg !135      ; [debug line = 58:6]

; <label>:19                                      ; preds = %16
  %20 = load i32* %contacts_index, align 4, !dbg !137 ; [#uses=1 type=i32] [debug line = 59:3]
  %21 = sext i32 %20 to i64, !dbg !137            ; [#uses=1 type=i64] [debug line = 59:3]
  %22 = getelementptr inbounds [128 x i1]* %local_results, i32 0, i64 %21, !dbg !137 ; [#uses=1 type=i1*] [debug line = 59:3]
  %23 = load i1* %22, align 1, !dbg !137          ; [#uses=1 type=i1] [debug line = 59:3]
  %24 = zext i1 %23 to i32, !dbg !137             ; [#uses=1 type=i32] [debug line = 59:3]
  %25 = load i1* %matched, align 1, !dbg !137     ; [#uses=1 type=i1] [debug line = 59:3]
  %26 = zext i1 %25 to i32, !dbg !137             ; [#uses=1 type=i32] [debug line = 59:3]
  %27 = or i32 %26, %24, !dbg !137                ; [#uses=1 type=i32] [debug line = 59:3]
  %28 = icmp ne i32 %27, 0, !dbg !137             ; [#uses=1 type=i1] [debug line = 59:3]
  store i1 %28, i1* %matched, align 1, !dbg !137  ; [debug line = 59:3]
  br label %29, !dbg !139                         ; [debug line = 60:2]

; <label>:29                                      ; preds = %19
  %30 = load i32* %contacts_index, align 4, !dbg !140 ; [#uses=1 type=i32] [debug line = 58:46]
  %31 = add nsw i32 %30, 1, !dbg !140             ; [#uses=1 type=i32] [debug line = 58:46]
  store i32 %31, i32* %contacts_index, align 4, !dbg !140 ; [debug line = 58:46]
  br label %16, !dbg !140                         ; [debug line = 58:46]

; <label>:32                                      ; preds = %16
  %33 = load i1* %matched, align 1, !dbg !141     ; [#uses=1 type=i1] [debug line = 61:2]
  %34 = load i32* %1, align 4, !dbg !141          ; [#uses=1 type=i32] [debug line = 61:2]
  %35 = sext i32 %34 to i64, !dbg !141            ; [#uses=1 type=i64] [debug line = 61:2]
  %36 = getelementptr inbounds [30000 x i1]* @_ZL7results, i32 0, i64 %35, !dbg !141 ; [#uses=1 type=i1*] [debug line = 61:2]
  store i1 %33, i1* %36, align 1, !dbg !141       ; [debug line = 61:2]
  ret void, !dbg !142                             ; [debug line = 62:1]
}

; [#uses=0]
define void @_Z17contact_discoveryiPhS_PbPiS1_S1_S1_(i32 %operation, i8* %contact_in, i8* %database_in, i1* %matched_out, i32* %matched_finished, i32* %error_out, i32* %database_size_out, i32* %contacts_size_out) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %2 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %3 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %4 = alloca i1*, align 8                        ; [#uses=4 type=i1**]
  %5 = alloca i32*, align 8                       ; [#uses=10 type=i32**]
  %6 = alloca i32*, align 8                       ; [#uses=11 type=i32**]
  %7 = alloca i32*, align 8                       ; [#uses=10 type=i32**]
  %8 = alloca i32*, align 8                       ; [#uses=10 type=i32**]
  %database_index = alloca i32, align 4           ; [#uses=5 type=i32*]
  %contacts_index = alloca i32, align 4           ; [#uses=0 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %matched = alloca i1, align 1                   ; [#uses=0 type=i1*]
  %current_matched = alloca i1, align 1           ; [#uses=0 type=i1*]
  store i32 %operation, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !143), !dbg !144 ; [debug line = 67:6] [debug variable = operation]
  store i8* %contact_in, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !145), !dbg !146 ; [debug line = 68:16] [debug variable = contact_in]
  store i8* %database_in, i8** %3, align 8
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !147), !dbg !148 ; [debug line = 69:16] [debug variable = database_in]
  store i1* %matched_out, i1** %4, align 8
  call void @llvm.dbg.declare(metadata !{i1** %4}, metadata !149), !dbg !150 ; [debug line = 70:7] [debug variable = matched_out]
  store i32* %matched_finished, i32** %5, align 8
  call void @llvm.dbg.declare(metadata !{i32** %5}, metadata !151), !dbg !152 ; [debug line = 71:7] [debug variable = matched_finished]
  store i32* %error_out, i32** %6, align 8
  call void @llvm.dbg.declare(metadata !{i32** %6}, metadata !153), !dbg !154 ; [debug line = 72:7] [debug variable = error_out]
  store i32* %database_size_out, i32** %7, align 8
  call void @llvm.dbg.declare(metadata !{i32** %7}, metadata !155), !dbg !156 ; [debug line = 73:7] [debug variable = database_size_out]
  store i32* %contacts_size_out, i32** %8, align 8
  call void @llvm.dbg.declare(metadata !{i32** %8}, metadata !157), !dbg !158 ; [debug line = 74:7] [debug variable = contacts_size_out]
  %9 = load i8** %2, align 8, !dbg !159           ; [#uses=1 type=i8*] [debug line = 75:3]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %9, i32 64) nounwind, !dbg !159 ; [debug line = 75:3]
  %10 = load i8** %3, align 8, !dbg !161          ; [#uses=1 type=i8*] [debug line = 75:41]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %10, i32 64) nounwind, !dbg !161 ; [debug line = 75:41]
  %11 = load i1** %4, align 8, !dbg !162          ; [#uses=1 type=i1*] [debug line = 75:80]
  call void (...)* @_ssdm_SpecArrayDimSize(i1* %11, i32 30000) nounwind, !dbg !162 ; [debug line = 75:80]
  %12 = load i32* %1, align 4, !dbg !163          ; [#uses=1 type=i32] [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %12, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !163 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !164 ; [debug line = 79:1]
  %13 = load i32** %5, align 8, !dbg !165         ; [#uses=1 type=i32*] [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %13, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !165 ; [debug line = 80:1]
  %14 = load i32** %8, align 8, !dbg !166         ; [#uses=1 type=i32*] [debug line = 81:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %14, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !166 ; [debug line = 81:1]
  %15 = load i32** %8, align 8, !dbg !167         ; [#uses=1 type=i32*] [debug line = 82:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %15, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !167 ; [debug line = 82:1]
  %16 = load i32** %7, align 8, !dbg !168         ; [#uses=1 type=i32*] [debug line = 83:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %16, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !168 ; [debug line = 83:1]
  %17 = load i32** %7, align 8, !dbg !169         ; [#uses=1 type=i32*] [debug line = 84:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %17, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !169 ; [debug line = 84:1]
  %18 = load i32** %6, align 8, !dbg !170         ; [#uses=1 type=i32*] [debug line = 85:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %18, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !170 ; [debug line = 85:1]
  %19 = load i32** %5, align 8, !dbg !171         ; [#uses=1 type=i32*] [debug line = 86:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %19, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !171 ; [debug line = 86:1]
  %20 = load i32** %6, align 8, !dbg !172         ; [#uses=1 type=i32*] [debug line = 87:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %20, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !172 ; [debug line = 87:1]
  %21 = load i32* %1, align 4, !dbg !173          ; [#uses=1 type=i32] [debug line = 88:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %21, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !173 ; [debug line = 88:1]
  %22 = load i1** %4, align 8, !dbg !174          ; [#uses=1 type=i1*] [debug line = 89:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %22, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !174 ; [debug line = 89:1]
  %23 = load i8** %3, align 8, !dbg !175          ; [#uses=1 type=i8*] [debug line = 90:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %23, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !175 ; [debug line = 90:1]
  %24 = load i8** %2, align 8, !dbg !176          ; [#uses=1 type=i8*] [debug line = 91:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %24, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !176 ; [debug line = 91:1]
  call void @llvm.dbg.declare(metadata !{i32* %database_index}, metadata !177), !dbg !178 ; [debug line = 92:6] [debug variable = database_index]
  call void @llvm.dbg.declare(metadata !{i32* %contacts_index}, metadata !179), !dbg !180 ; [debug line = 92:22] [debug variable = contacts_index]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !181), !dbg !182 ; [debug line = 92:38] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i1* %matched}, metadata !183), !dbg !184 ; [debug line = 93:7] [debug variable = matched]
  call void @llvm.dbg.declare(metadata !{i1* %current_matched}, metadata !185), !dbg !186 ; [debug line = 93:16] [debug variable = current_matched]
  %25 = load i32* %1, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 102:2]
  switch i32 %25, label %117 [
    i32 0, label %26
    i32 1, label %50
    i32 2, label %70
    i32 3, label %103
    i32 4, label %110
  ], !dbg !187                                    ; [debug line = 102:2]

; <label>:26                                      ; preds = %0
  %27 = load i32** %5, align 8, !dbg !188         ; [#uses=1 type=i32*] [debug line = 105:4]
  store i32 0, i32* %27, align 4, !dbg !188       ; [debug line = 105:4]
  %28 = load i32** %6, align 8, !dbg !190         ; [#uses=1 type=i32*] [debug line = 106:4]
  store i32 0, i32* %28, align 4, !dbg !190       ; [debug line = 106:4]
  %29 = load i32* @_ZL13contacts_size, align 4, !dbg !191 ; [#uses=1 type=i32] [debug line = 107:4]
  %30 = load i32** %8, align 8, !dbg !191         ; [#uses=1 type=i32*] [debug line = 107:4]
  store i32 %29, i32* %30, align 4, !dbg !191     ; [debug line = 107:4]
  %31 = load i32* @_ZL13database_size, align 4, !dbg !192 ; [#uses=1 type=i32] [debug line = 108:4]
  %32 = load i32** %7, align 8, !dbg !192         ; [#uses=1 type=i32*] [debug line = 108:4]
  store i32 %31, i32* %32, align 4, !dbg !192     ; [debug line = 108:4]
  %33 = load i32* @_ZL13contacts_size, align 4, !dbg !193 ; [#uses=1 type=i32] [debug line = 109:4]
  %34 = icmp sge i32 %33, 128, !dbg !193          ; [#uses=1 type=i1] [debug line = 109:4]
  br i1 %34, label %35, label %39, !dbg !193      ; [debug line = 109:4]

; <label>:35                                      ; preds = %26
  %36 = load i32** %6, align 8, !dbg !194         ; [#uses=1 type=i32*] [debug line = 110:5]
  store i32 1, i32* %36, align 4, !dbg !194       ; [debug line = 110:5]
  %37 = load i32* @_ZL13contacts_size, align 4, !dbg !196 ; [#uses=1 type=i32] [debug line = 111:5]
  %38 = load i32** %8, align 8, !dbg !196         ; [#uses=1 type=i32*] [debug line = 111:5]
  store i32 %37, i32* %38, align 4, !dbg !196     ; [debug line = 111:5]
  br label %49, !dbg !197                         ; [debug line = 112:4]

; <label>:39                                      ; preds = %26
  %40 = load i32* @_ZL13contacts_size, align 4, !dbg !198 ; [#uses=1 type=i32] [debug line = 113:5]
  %41 = mul nsw i32 %40, 64, !dbg !198            ; [#uses=1 type=i32] [debug line = 113:5]
  %42 = sext i32 %41 to i64, !dbg !198            ; [#uses=1 type=i64] [debug line = 113:5]
  %43 = getelementptr inbounds i8* getelementptr inbounds ([8192 x i8]* @_ZL8contacts, i32 0, i32 0), i64 %42, !dbg !198 ; [#uses=1 type=i8*] [debug line = 113:5]
  %44 = load i8** %2, align 8, !dbg !198          ; [#uses=1 type=i8*] [debug line = 113:5]
  call void @_Z7_memcpyPhS_i(i8* %43, i8* %44, i32 64), !dbg !198 ; [debug line = 113:5]
  %45 = load i32* @_ZL13contacts_size, align 4, !dbg !200 ; [#uses=1 type=i32] [debug line = 114:5]
  %46 = add nsw i32 %45, 1, !dbg !200             ; [#uses=1 type=i32] [debug line = 114:5]
  store i32 %46, i32* @_ZL13contacts_size, align 4, !dbg !200 ; [debug line = 114:5]
  %47 = load i32* @_ZL13contacts_size, align 4, !dbg !201 ; [#uses=1 type=i32] [debug line = 115:5]
  %48 = load i32** %8, align 8, !dbg !201         ; [#uses=1 type=i32*] [debug line = 115:5]
  store i32 %47, i32* %48, align 4, !dbg !201     ; [debug line = 115:5]
  br label %49

; <label>:49                                      ; preds = %39, %35
  br label %124, !dbg !202                        ; [debug line = 117:4]

; <label>:50                                      ; preds = %0
  %51 = load i32** %5, align 8, !dbg !203         ; [#uses=1 type=i32*] [debug line = 120:4]
  store i32 0, i32* %51, align 4, !dbg !203       ; [debug line = 120:4]
  %52 = load i32** %6, align 8, !dbg !204         ; [#uses=1 type=i32*] [debug line = 121:4]
  store i32 0, i32* %52, align 4, !dbg !204       ; [debug line = 121:4]
  %53 = load i32* @_ZL13database_size, align 4, !dbg !205 ; [#uses=1 type=i32] [debug line = 122:4]
  %54 = icmp sge i32 %53, 30000, !dbg !205        ; [#uses=1 type=i1] [debug line = 122:4]
  br i1 %54, label %55, label %59, !dbg !205      ; [debug line = 122:4]

; <label>:55                                      ; preds = %50
  %56 = load i32** %6, align 8, !dbg !206         ; [#uses=1 type=i32*] [debug line = 123:5]
  store i32 2, i32* %56, align 4, !dbg !206       ; [debug line = 123:5]
  %57 = load i32* @_ZL13database_size, align 4, !dbg !208 ; [#uses=1 type=i32] [debug line = 124:5]
  %58 = load i32** %7, align 8, !dbg !208         ; [#uses=1 type=i32*] [debug line = 124:5]
  store i32 %57, i32* %58, align 4, !dbg !208     ; [debug line = 124:5]
  br label %69, !dbg !209                         ; [debug line = 125:4]

; <label>:59                                      ; preds = %50
  %60 = load i32* @_ZL13database_size, align 4, !dbg !210 ; [#uses=1 type=i32] [debug line = 126:5]
  %61 = mul nsw i32 %60, 64, !dbg !210            ; [#uses=1 type=i32] [debug line = 126:5]
  %62 = sext i32 %61 to i64, !dbg !210            ; [#uses=1 type=i64] [debug line = 126:5]
  %63 = getelementptr inbounds i8* getelementptr inbounds ([1920000 x i8]* @_ZL8database, i32 0, i32 0), i64 %62, !dbg !210 ; [#uses=1 type=i8*] [debug line = 126:5]
  %64 = load i8** %3, align 8, !dbg !210          ; [#uses=1 type=i8*] [debug line = 126:5]
  call void @_Z7_memcpyPhS_i(i8* %63, i8* %64, i32 64), !dbg !210 ; [debug line = 126:5]
  %65 = load i32* @_ZL13database_size, align 4, !dbg !212 ; [#uses=1 type=i32] [debug line = 127:5]
  %66 = add nsw i32 %65, 1, !dbg !212             ; [#uses=1 type=i32] [debug line = 127:5]
  store i32 %66, i32* @_ZL13database_size, align 4, !dbg !212 ; [debug line = 127:5]
  %67 = load i32* @_ZL13database_size, align 4, !dbg !213 ; [#uses=1 type=i32] [debug line = 128:5]
  %68 = load i32** %7, align 8, !dbg !213         ; [#uses=1 type=i32*] [debug line = 128:5]
  store i32 %67, i32* %68, align 4, !dbg !213     ; [debug line = 128:5]
  br label %69

; <label>:69                                      ; preds = %59, %55
  br label %124, !dbg !214                        ; [debug line = 130:4]

; <label>:70                                      ; preds = %0
  %71 = load i32** %5, align 8, !dbg !215         ; [#uses=1 type=i32*] [debug line = 133:4]
  store i32 0, i32* %71, align 4, !dbg !215       ; [debug line = 133:4]
  %72 = load i32** %6, align 8, !dbg !216         ; [#uses=1 type=i32*] [debug line = 134:4]
  store i32 0, i32* %72, align 4, !dbg !216       ; [debug line = 134:4]
  %73 = load i32* @_ZL13contacts_size, align 4, !dbg !217 ; [#uses=1 type=i32] [debug line = 135:4]
  %74 = load i32** %8, align 8, !dbg !217         ; [#uses=1 type=i32*] [debug line = 135:4]
  store i32 %73, i32* %74, align 4, !dbg !217     ; [debug line = 135:4]
  %75 = load i32* @_ZL13database_size, align 4, !dbg !218 ; [#uses=1 type=i32] [debug line = 136:4]
  %76 = load i32** %7, align 8, !dbg !218         ; [#uses=1 type=i32*] [debug line = 136:4]
  store i32 %75, i32* %76, align 4, !dbg !218     ; [debug line = 136:4]
  store i32 0, i32* %database_index, align 4, !dbg !219 ; [debug line = 141:8]
  br label %77, !dbg !219                         ; [debug line = 141:8]

; <label>:77                                      ; preds = %82, %70
  %78 = load i32* %database_index, align 4, !dbg !219 ; [#uses=1 type=i32] [debug line = 141:8]
  %79 = icmp slt i32 %78, 30000, !dbg !219        ; [#uses=1 type=i1] [debug line = 141:8]
  br i1 %79, label %80, label %85, !dbg !219      ; [debug line = 141:8]

; <label>:80                                      ; preds = %77
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !221 ; [debug line = 141:70]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !223 ; [debug line = 142:1]
  %81 = load i32* %database_index, align 4, !dbg !224 ; [#uses=1 type=i32] [debug line = 156:5]
  call void @_Z16match_db_contacti(i32 %81), !dbg !224 ; [debug line = 156:5]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !225 ; [debug line = 157:4]
  br label %82, !dbg !225                         ; [debug line = 157:4]

; <label>:82                                      ; preds = %80
  %83 = load i32* %database_index, align 4, !dbg !226 ; [#uses=1 type=i32] [debug line = 141:52]
  %84 = add nsw i32 %83, 1, !dbg !226             ; [#uses=1 type=i32] [debug line = 141:52]
  store i32 %84, i32* %database_index, align 4, !dbg !226 ; [debug line = 141:52]
  br label %77, !dbg !226                         ; [debug line = 141:52]

; <label>:85                                      ; preds = %77
  store i32 0, i32* %i, align 4, !dbg !227        ; [debug line = 158:8]
  br label %86, !dbg !227                         ; [debug line = 158:8]

; <label>:86                                      ; preds = %98, %85
  %87 = load i32* %i, align 4, !dbg !227          ; [#uses=1 type=i32] [debug line = 158:8]
  %88 = icmp slt i32 %87, 30000, !dbg !227        ; [#uses=1 type=i1] [debug line = 158:8]
  br i1 %88, label %89, label %101, !dbg !227     ; [debug line = 158:8]

; <label>:89                                      ; preds = %86
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !229 ; [debug line = 158:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !231 ; [debug line = 159:1]
  %90 = load i32* %i, align 4, !dbg !232          ; [#uses=1 type=i32] [debug line = 160:2]
  %91 = sext i32 %90 to i64, !dbg !232            ; [#uses=1 type=i64] [debug line = 160:2]
  %92 = getelementptr inbounds [30000 x i1]* @_ZL7results, i32 0, i64 %91, !dbg !232 ; [#uses=1 type=i1*] [debug line = 160:2]
  %93 = load i1* %92, align 1, !dbg !232          ; [#uses=1 type=i1] [debug line = 160:2]
  %94 = load i32* %i, align 4, !dbg !232          ; [#uses=1 type=i32] [debug line = 160:2]
  %95 = sext i32 %94 to i64, !dbg !232            ; [#uses=1 type=i64] [debug line = 160:2]
  %96 = load i1** %4, align 8, !dbg !232          ; [#uses=1 type=i1*] [debug line = 160:2]
  %97 = getelementptr inbounds i1* %96, i64 %95, !dbg !232 ; [#uses=1 type=i1*] [debug line = 160:2]
  store i1 %93, i1* %97, align 1, !dbg !232       ; [debug line = 160:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !233 ; [debug line = 161:4]
  br label %98, !dbg !233                         ; [debug line = 161:4]

; <label>:98                                      ; preds = %89
  %99 = load i32* %i, align 4, !dbg !234          ; [#uses=1 type=i32] [debug line = 158:22]
  %100 = add nsw i32 %99, 1, !dbg !234            ; [#uses=1 type=i32] [debug line = 158:22]
  store i32 %100, i32* %i, align 4, !dbg !234     ; [debug line = 158:22]
  br label %86, !dbg !234                         ; [debug line = 158:22]

; <label>:101                                     ; preds = %86
  %102 = load i32** %5, align 8, !dbg !235        ; [#uses=1 type=i32*] [debug line = 162:4]
  store i32 1, i32* %102, align 4, !dbg !235      ; [debug line = 162:4]
  br label %124, !dbg !236                        ; [debug line = 163:4]

; <label>:103                                     ; preds = %0
  %104 = load i32** %5, align 8, !dbg !237        ; [#uses=1 type=i32*] [debug line = 166:4]
  store i32 0, i32* %104, align 4, !dbg !237      ; [debug line = 166:4]
  %105 = load i32** %6, align 8, !dbg !238        ; [#uses=1 type=i32*] [debug line = 167:4]
  store i32 0, i32* %105, align 4, !dbg !238      ; [debug line = 167:4]
  store i32 0, i32* @_ZL13database_size, align 4, !dbg !239 ; [debug line = 169:4]
  %106 = load i32* @_ZL13contacts_size, align 4, !dbg !240 ; [#uses=1 type=i32] [debug line = 171:4]
  %107 = load i32** %8, align 8, !dbg !240        ; [#uses=1 type=i32*] [debug line = 171:4]
  store i32 %106, i32* %107, align 4, !dbg !240   ; [debug line = 171:4]
  %108 = load i32* @_ZL13database_size, align 4, !dbg !241 ; [#uses=1 type=i32] [debug line = 172:4]
  %109 = load i32** %7, align 8, !dbg !241        ; [#uses=1 type=i32*] [debug line = 172:4]
  store i32 %108, i32* %109, align 4, !dbg !241   ; [debug line = 172:4]
  br label %124, !dbg !242                        ; [debug line = 173:4]

; <label>:110                                     ; preds = %0
  %111 = load i32** %5, align 8, !dbg !243        ; [#uses=1 type=i32*] [debug line = 176:4]
  store i32 0, i32* %111, align 4, !dbg !243      ; [debug line = 176:4]
  %112 = load i32** %6, align 8, !dbg !244        ; [#uses=1 type=i32*] [debug line = 177:4]
  store i32 0, i32* %112, align 4, !dbg !244      ; [debug line = 177:4]
  store i32 0, i32* @_ZL13contacts_size, align 4, !dbg !245 ; [debug line = 179:4]
  %113 = load i32* @_ZL13contacts_size, align 4, !dbg !246 ; [#uses=1 type=i32] [debug line = 181:4]
  %114 = load i32** %8, align 8, !dbg !246        ; [#uses=1 type=i32*] [debug line = 181:4]
  store i32 %113, i32* %114, align 4, !dbg !246   ; [debug line = 181:4]
  %115 = load i32* @_ZL13database_size, align 4, !dbg !247 ; [#uses=1 type=i32] [debug line = 182:4]
  %116 = load i32** %7, align 8, !dbg !247        ; [#uses=1 type=i32*] [debug line = 182:4]
  store i32 %115, i32* %116, align 4, !dbg !247   ; [debug line = 182:4]
  br label %124, !dbg !248                        ; [debug line = 183:4]

; <label>:117                                     ; preds = %0
  %118 = load i32* @_ZL13contacts_size, align 4, !dbg !249 ; [#uses=1 type=i32] [debug line = 194:4]
  %119 = load i32** %8, align 8, !dbg !249        ; [#uses=1 type=i32*] [debug line = 194:4]
  store i32 %118, i32* %119, align 4, !dbg !249   ; [debug line = 194:4]
  %120 = load i32* @_ZL13database_size, align 4, !dbg !250 ; [#uses=1 type=i32] [debug line = 195:4]
  %121 = load i32** %7, align 8, !dbg !250        ; [#uses=1 type=i32*] [debug line = 195:4]
  store i32 %120, i32* %121, align 4, !dbg !250   ; [debug line = 195:4]
  %122 = load i32** %5, align 8, !dbg !251        ; [#uses=1 type=i32*] [debug line = 196:4]
  store i32 0, i32* %122, align 4, !dbg !251      ; [debug line = 196:4]
  %123 = load i32** %6, align 8, !dbg !252        ; [#uses=1 type=i32*] [debug line = 197:4]
  store i32 3, i32* %123, align 4, !dbg !252      ; [debug line = 197:4]
  br label %124, !dbg !253                        ; [debug line = 198:4]

; <label>:124                                     ; preds = %117, %110, %103, %101, %69, %49
  ret void, !dbg !254                             ; [debug line = 201:1]
}

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=14]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0, !42}
!opencl.kernels = !{!43, !50, !56, !62}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !26} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !18, metadata !21}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !6, i32 15, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @_Z7_memcpyPhS_i, null, null, metadata !12, i32 15} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"contact_discovery_axi/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"compare", metadata !"compare", metadata !"_Z7compareii", metadata !6, i32 22, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i32, i32)* @_Z7compareii, null, null, metadata !12, i32 22} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{metadata !17, metadata !11, metadata !11}
!17 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contacti", metadata !6, i32 45, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @_Z16match_db_contacti, null, null, metadata !12, i32 45} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !11}
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhS_PbPiS1_S1_S1_", metadata !6, i32 66, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @_Z17contact_discoveryiPhS_PbPiS1_S1_S1_, null, null, metadata !12, i32 75} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !11, metadata !9, metadata !9, metadata !24, metadata !25, metadata !25, metadata !25, metadata !25}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !34, metadata !38}
!28 = metadata !{i32 786484, i32 0, null, metadata !"database_size", metadata !"database_size", metadata !"_ZL13database_size", metadata !6, i32 11, metadata !11, i32 1, i32 1, i32* @_ZL13database_size} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !6, i32 10, metadata !11, i32 1, i32 1, i32* @_ZL13contacts_size} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"results", metadata !"results", metadata !"_ZL7results", metadata !6, i32 9, metadata !31, i32 1, i32 1, [30000 x i1]* @_ZL7results} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 240000, i64 8, i32 0, i32 0, metadata !17, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 29999}    ; [ DW_TAG_subrange_type ]
!34 = metadata !{i32 786484, i32 0, null, metadata !"database", metadata !"database", metadata !"_ZL8database", metadata !6, i32 7, metadata !35, i32 1, i32 1, [1920000 x i8]* @_ZL8database} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360000, i64 8, i32 0, i32 0, metadata !10, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 1919999}  ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !6, i32 6, metadata !39, i32 1, i32 1, [8192 x i8]* @_ZL8contacts} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !10, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786465, i64 0, i64 8191}     ; [ DW_TAG_subrange_type ]
!42 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/sha512.pragma.2.c", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !1, metadata !1} ; [ DW_TAG_compile_unit ]
!43 = metadata !{void (i8*, i8*, i32)* @_Z7_memcpyPhS_i, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!49 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!50 = metadata !{i1 (i32, i32)* @_Z7compareii, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !49}
!51 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!52 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!54 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"db_index", metadata !"contacts_index"}
!56 = metadata !{void (i32)* @_Z16match_db_contacti, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !49}
!57 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!58 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!60 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"database_index"}
!62 = metadata !{void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @_Z17contact_discoveryiPhS_PbPiS1_S1_S1_, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !49}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!64 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"uchar*", metadata !"_Bool*", metadata !"int*", metadata !"int*", metadata !"int*", metadata !"int*"}
!66 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"database_size_out", metadata !"contacts_size_out"}
!68 = metadata !{i32 786689, metadata !5, metadata !"dest", metadata !6, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 15, i32 29, metadata !5, null}
!70 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 33554447, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 15, i32 50, metadata !5, null}
!72 = metadata !{i32 786689, metadata !5, metadata !"length", metadata !6, i32 50331663, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 15, i32 59, metadata !5, null}
!74 = metadata !{i32 786688, metadata !75, metadata !"i", metadata !6, i32 16, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 786443, metadata !5, i32 15, i32 66, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 16, i32 6, metadata !75, null}
!77 = metadata !{i32 17, i32 6, metadata !78, null}
!78 = metadata !{i32 786443, metadata !75, i32 17, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 18, i32 3, metadata !80, null}
!80 = metadata !{i32 786443, metadata !78, i32 17, i32 25, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 19, i32 2, metadata !80, null}
!82 = metadata !{i32 17, i32 21, metadata !78, null}
!83 = metadata !{i32 20, i32 1, metadata !75, null}
!84 = metadata !{i32 786689, metadata !14, metadata !"db_index", metadata !6, i32 16777238, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 22, i32 18, metadata !14, null}
!86 = metadata !{i32 786689, metadata !14, metadata !"contacts_index", metadata !6, i32 33554454, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 22, i32 32, metadata !14, null}
!88 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !6, i32 24, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 786443, metadata !14, i32 22, i32 47, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 24, i32 6, metadata !89, null}
!91 = metadata !{i32 786688, metadata !89, metadata !"j", metadata !6, i32 24, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 24, i32 9, metadata !89, null}
!93 = metadata !{i32 786688, metadata !89, metadata !"found", metadata !6, i32 25, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 25, i32 7, metadata !89, null}
!95 = metadata !{i32 25, i32 19, metadata !89, null}
!96 = metadata !{i32 786688, metadata !89, metadata !"results_local", metadata !6, i32 26, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !17, metadata !98, i32 0, i32 0} ; [ DW_TAG_array_type ]
!98 = metadata !{metadata !99}
!99 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!100 = metadata !{i32 26, i32 7, metadata !89, null}
!101 = metadata !{i32 32, i32 6, metadata !102, null}
!102 = metadata !{i32 786443, metadata !89, i32 32, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 37, i32 3, metadata !104, null}
!104 = metadata !{i32 786443, metadata !102, i32 32, i32 21, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 38, i32 2, metadata !104, null}
!106 = metadata !{i32 32, i32 17, metadata !102, null}
!107 = metadata !{i32 39, i32 6, metadata !108, null}
!108 = metadata !{i32 786443, metadata !89, i32 39, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 40, i32 3, metadata !110, null}
!110 = metadata !{i32 786443, metadata !108, i32 39, i32 21, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 41, i32 2, metadata !110, null}
!112 = metadata !{i32 39, i32 17, metadata !108, null}
!113 = metadata !{i32 42, i32 2, metadata !89, null}
!114 = metadata !{i32 786689, metadata !18, metadata !"database_index", metadata !6, i32 16777261, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 45, i32 27, metadata !18, null}
!116 = metadata !{i32 786688, metadata !117, metadata !"contacts_index", metadata !6, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 786443, metadata !18, i32 45, i32 42, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 47, i32 6, metadata !117, null}
!119 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !6, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 47, i32 22, metadata !117, null}
!121 = metadata !{i32 786688, metadata !117, metadata !"matched", metadata !6, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 48, i32 7, metadata !117, null}
!123 = metadata !{i32 48, i32 22, metadata !117, null}
!124 = metadata !{i32 786688, metadata !117, metadata !"local_results", metadata !6, i32 49, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !17, metadata !126, i32 0, i32 0} ; [ DW_TAG_array_type ]
!126 = metadata !{metadata !127}
!127 = metadata !{i32 786465, i64 0, i64 127}     ; [ DW_TAG_subrange_type ]
!128 = metadata !{i32 49, i32 7, metadata !117, null}
!129 = metadata !{i32 50, i32 6, metadata !130, null}
!130 = metadata !{i32 786443, metadata !117, i32 50, i32 2, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 56, i32 35, metadata !132, null}
!132 = metadata !{i32 786443, metadata !130, i32 50, i32 63, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 57, i32 2, metadata !132, null}
!134 = metadata !{i32 50, i32 46, metadata !130, null}
!135 = metadata !{i32 58, i32 6, metadata !136, null}
!136 = metadata !{i32 786443, metadata !117, i32 58, i32 2, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 59, i32 3, metadata !138, null}
!138 = metadata !{i32 786443, metadata !136, i32 58, i32 63, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 60, i32 2, metadata !138, null}
!140 = metadata !{i32 58, i32 46, metadata !136, null}
!141 = metadata !{i32 61, i32 2, metadata !117, null}
!142 = metadata !{i32 62, i32 1, metadata !117, null}
!143 = metadata !{i32 786689, metadata !21, metadata !"operation", metadata !6, i32 16777283, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 67, i32 6, metadata !21, null}
!145 = metadata !{i32 786689, metadata !21, metadata !"contact_in", metadata !6, i32 33554500, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 68, i32 16, metadata !21, null}
!147 = metadata !{i32 786689, metadata !21, metadata !"database_in", metadata !6, i32 50331717, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 69, i32 16, metadata !21, null}
!149 = metadata !{i32 786689, metadata !21, metadata !"matched_out", metadata !6, i32 67108934, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 70, i32 7, metadata !21, null}
!151 = metadata !{i32 786689, metadata !21, metadata !"matched_finished", metadata !6, i32 83886151, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 71, i32 7, metadata !21, null}
!153 = metadata !{i32 786689, metadata !21, metadata !"error_out", metadata !6, i32 100663368, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 72, i32 7, metadata !21, null}
!155 = metadata !{i32 786689, metadata !21, metadata !"database_size_out", metadata !6, i32 117440585, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 73, i32 7, metadata !21, null}
!157 = metadata !{i32 786689, metadata !21, metadata !"contacts_size_out", metadata !6, i32 134217802, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 74, i32 7, metadata !21, null}
!159 = metadata !{i32 75, i32 3, metadata !160, null}
!160 = metadata !{i32 786443, metadata !21, i32 75, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 75, i32 41, metadata !160, null}
!162 = metadata !{i32 75, i32 80, metadata !160, null}
!163 = metadata !{i32 78, i32 1, metadata !160, null}
!164 = metadata !{i32 79, i32 1, metadata !160, null}
!165 = metadata !{i32 80, i32 1, metadata !160, null}
!166 = metadata !{i32 81, i32 1, metadata !160, null}
!167 = metadata !{i32 82, i32 1, metadata !160, null}
!168 = metadata !{i32 83, i32 1, metadata !160, null}
!169 = metadata !{i32 84, i32 1, metadata !160, null}
!170 = metadata !{i32 85, i32 1, metadata !160, null}
!171 = metadata !{i32 86, i32 1, metadata !160, null}
!172 = metadata !{i32 87, i32 1, metadata !160, null}
!173 = metadata !{i32 88, i32 1, metadata !160, null}
!174 = metadata !{i32 89, i32 1, metadata !160, null}
!175 = metadata !{i32 90, i32 1, metadata !160, null}
!176 = metadata !{i32 91, i32 1, metadata !160, null}
!177 = metadata !{i32 786688, metadata !160, metadata !"database_index", metadata !6, i32 92, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 92, i32 6, metadata !160, null}
!179 = metadata !{i32 786688, metadata !160, metadata !"contacts_index", metadata !6, i32 92, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 92, i32 22, metadata !160, null}
!181 = metadata !{i32 786688, metadata !160, metadata !"i", metadata !6, i32 92, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 92, i32 38, metadata !160, null}
!183 = metadata !{i32 786688, metadata !160, metadata !"matched", metadata !6, i32 93, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 93, i32 7, metadata !160, null}
!185 = metadata !{i32 786688, metadata !160, metadata !"current_matched", metadata !6, i32 93, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 93, i32 16, metadata !160, null}
!187 = metadata !{i32 102, i32 2, metadata !160, null}
!188 = metadata !{i32 105, i32 4, metadata !189, null}
!189 = metadata !{i32 786443, metadata !160, i32 102, i32 19, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 106, i32 4, metadata !189, null}
!191 = metadata !{i32 107, i32 4, metadata !189, null}
!192 = metadata !{i32 108, i32 4, metadata !189, null}
!193 = metadata !{i32 109, i32 4, metadata !189, null}
!194 = metadata !{i32 110, i32 5, metadata !195, null}
!195 = metadata !{i32 786443, metadata !189, i32 109, i32 28, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 111, i32 5, metadata !195, null}
!197 = metadata !{i32 112, i32 4, metadata !195, null}
!198 = metadata !{i32 113, i32 5, metadata !199, null}
!199 = metadata !{i32 786443, metadata !189, i32 112, i32 10, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 114, i32 5, metadata !199, null}
!201 = metadata !{i32 115, i32 5, metadata !199, null}
!202 = metadata !{i32 117, i32 4, metadata !189, null}
!203 = metadata !{i32 120, i32 4, metadata !189, null}
!204 = metadata !{i32 121, i32 4, metadata !189, null}
!205 = metadata !{i32 122, i32 4, metadata !189, null}
!206 = metadata !{i32 123, i32 5, metadata !207, null}
!207 = metadata !{i32 786443, metadata !189, i32 122, i32 30, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 124, i32 5, metadata !207, null}
!209 = metadata !{i32 125, i32 4, metadata !207, null}
!210 = metadata !{i32 126, i32 5, metadata !211, null}
!211 = metadata !{i32 786443, metadata !189, i32 125, i32 10, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 127, i32 5, metadata !211, null}
!213 = metadata !{i32 128, i32 5, metadata !211, null}
!214 = metadata !{i32 130, i32 4, metadata !189, null}
!215 = metadata !{i32 133, i32 4, metadata !189, null}
!216 = metadata !{i32 134, i32 4, metadata !189, null}
!217 = metadata !{i32 135, i32 4, metadata !189, null}
!218 = metadata !{i32 136, i32 4, metadata !189, null}
!219 = metadata !{i32 141, i32 8, metadata !220, null}
!220 = metadata !{i32 786443, metadata !189, i32 141, i32 4, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 141, i32 70, metadata !222, null}
!222 = metadata !{i32 786443, metadata !220, i32 141, i32 69, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 142, i32 1, metadata !222, null}
!224 = metadata !{i32 156, i32 5, metadata !222, null}
!225 = metadata !{i32 157, i32 4, metadata !222, null}
!226 = metadata !{i32 141, i32 52, metadata !220, null}
!227 = metadata !{i32 158, i32 8, metadata !228, null}
!228 = metadata !{i32 786443, metadata !189, i32 158, i32 4, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 158, i32 27, metadata !230, null}
!230 = metadata !{i32 786443, metadata !228, i32 158, i32 26, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 159, i32 1, metadata !230, null}
!232 = metadata !{i32 160, i32 2, metadata !230, null}
!233 = metadata !{i32 161, i32 4, metadata !230, null}
!234 = metadata !{i32 158, i32 22, metadata !228, null}
!235 = metadata !{i32 162, i32 4, metadata !189, null}
!236 = metadata !{i32 163, i32 4, metadata !189, null}
!237 = metadata !{i32 166, i32 4, metadata !189, null}
!238 = metadata !{i32 167, i32 4, metadata !189, null}
!239 = metadata !{i32 169, i32 4, metadata !189, null}
!240 = metadata !{i32 171, i32 4, metadata !189, null}
!241 = metadata !{i32 172, i32 4, metadata !189, null}
!242 = metadata !{i32 173, i32 4, metadata !189, null}
!243 = metadata !{i32 176, i32 4, metadata !189, null}
!244 = metadata !{i32 177, i32 4, metadata !189, null}
!245 = metadata !{i32 179, i32 4, metadata !189, null}
!246 = metadata !{i32 181, i32 4, metadata !189, null}
!247 = metadata !{i32 182, i32 4, metadata !189, null}
!248 = metadata !{i32 183, i32 4, metadata !189, null}
!249 = metadata !{i32 194, i32 4, metadata !189, null}
!250 = metadata !{i32 195, i32 4, metadata !189, null}
!251 = metadata !{i32 196, i32 4, metadata !189, null}
!252 = metadata !{i32 197, i32 4, metadata !189, null}
!253 = metadata !{i32 198, i32 4, metadata !189, null}
!254 = metadata !{i32 201, i32 1, metadata !160, null}
