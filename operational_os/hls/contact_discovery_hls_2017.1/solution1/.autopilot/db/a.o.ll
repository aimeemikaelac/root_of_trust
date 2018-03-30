; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream" = type { i8 }
%"class.hls::stream.0" = type { i1 }

@_ZL21current_database_item = internal global [64 x i8] zeroinitializer, align 16 ; [#uses=2 type=[64 x i8]*]
@_ZL8contacts = internal global [8192 x i8] zeroinitializer, align 16 ; [#uses=3 type=[8192 x i8]*]
@.str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@_ZL13contacts_size = internal global i32 0, align 4 ; [#uses=10 type=i32*]
@_IO_2_1_stdin_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stdout_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stderr_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@_sys_nerr = external global i32                  ; [#uses=0 type=i32*]

; [#uses=0]
define void @_Z7_memcpyPhS_i(i8* %dest, i8* %src, i32 %length) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i8* %dest, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !177), !dbg !178 ; [debug line = 12:29] [debug variable = dest]
  store i8* %src, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !179), !dbg !180 ; [debug line = 12:50] [debug variable = src]
  store i32 %length, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !181), !dbg !182 ; [debug line = 12:59] [debug variable = length]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !183), !dbg !185 ; [debug line = 13:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !186        ; [debug line = 14:6]
  br label %4, !dbg !186                          ; [debug line = 14:6]

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %i, align 4, !dbg !186           ; [#uses=1 type=i32] [debug line = 14:6]
  %6 = load i32* %3, align 4, !dbg !186           ; [#uses=1 type=i32] [debug line = 14:6]
  %7 = icmp slt i32 %5, %6, !dbg !186             ; [#uses=1 type=i1] [debug line = 14:6]
  br i1 %7, label %8, label %21, !dbg !186        ; [debug line = 14:6]

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4, !dbg !188           ; [#uses=1 type=i32] [debug line = 15:3]
  %10 = sext i32 %9 to i64, !dbg !188             ; [#uses=1 type=i64] [debug line = 15:3]
  %11 = load i8** %2, align 8, !dbg !188          ; [#uses=1 type=i8*] [debug line = 15:3]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !188 ; [#uses=1 type=i8*] [debug line = 15:3]
  %13 = load i8* %12, align 1, !dbg !188          ; [#uses=1 type=i8] [debug line = 15:3]
  %14 = load i32* %i, align 4, !dbg !188          ; [#uses=1 type=i32] [debug line = 15:3]
  %15 = sext i32 %14 to i64, !dbg !188            ; [#uses=1 type=i64] [debug line = 15:3]
  %16 = load i8** %1, align 8, !dbg !188          ; [#uses=1 type=i8*] [debug line = 15:3]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !188 ; [#uses=1 type=i8*] [debug line = 15:3]
  store i8 %13, i8* %17, align 1, !dbg !188       ; [debug line = 15:3]
  br label %18, !dbg !190                         ; [debug line = 16:2]

; <label>:18                                      ; preds = %8
  %19 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 14:21]
  %20 = add nsw i32 %19, 1, !dbg !191             ; [#uses=1 type=i32] [debug line = 14:21]
  store i32 %20, i32* %i, align 4, !dbg !191      ; [debug line = 14:21]
  br label %4, !dbg !191                          ; [debug line = 14:21]

; <label>:21                                      ; preds = %4
  ret void, !dbg !192                             ; [debug line = 17:1]
}

; [#uses=30]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define zeroext i1 @_Z7comparei(i32 %contact_index) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %found = alloca i1, align 1                     ; [#uses=4 type=i1*]
  store i32 %contact_index, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !193), !dbg !194 ; [debug line = 19:18] [debug variable = contact_index]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !195), !dbg !197 ; [debug line = 20:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i1* %found}, metadata !198), !dbg !199 ; [debug line = 21:7] [debug variable = found]
  store i1 true, i1* %found, align 1, !dbg !200   ; [debug line = 21:19]
  store i32 0, i32* %i, align 4, !dbg !201        ; [debug line = 23:6]
  br label %2, !dbg !201                          ; [debug line = 23:6]

; <label>:2                                       ; preds = %25, %0
  %3 = load i32* %i, align 4, !dbg !201           ; [#uses=1 type=i32] [debug line = 23:6]
  %4 = icmp slt i32 %3, 64, !dbg !201             ; [#uses=1 type=i1] [debug line = 23:6]
  br i1 %4, label %5, label %28, !dbg !201        ; [debug line = 23:6]

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4, !dbg !203           ; [#uses=1 type=i32] [debug line = 24:3]
  %7 = sext i32 %6 to i64, !dbg !203              ; [#uses=1 type=i64] [debug line = 24:3]
  %8 = getelementptr inbounds [64 x i8]* @_ZL21current_database_item, i32 0, i64 %7, !dbg !203 ; [#uses=1 type=i8*] [debug line = 24:3]
  %9 = load i8* %8, align 1, !dbg !203            ; [#uses=1 type=i8] [debug line = 24:3]
  %10 = zext i8 %9 to i32, !dbg !203              ; [#uses=1 type=i32] [debug line = 24:3]
  %11 = load i32* %1, align 4, !dbg !203          ; [#uses=1 type=i32] [debug line = 24:3]
  %12 = mul nsw i32 %11, 64, !dbg !203            ; [#uses=1 type=i32] [debug line = 24:3]
  %13 = load i32* %i, align 4, !dbg !203          ; [#uses=1 type=i32] [debug line = 24:3]
  %14 = add nsw i32 %12, %13, !dbg !203           ; [#uses=1 type=i32] [debug line = 24:3]
  %15 = sext i32 %14 to i64, !dbg !203            ; [#uses=1 type=i64] [debug line = 24:3]
  %16 = getelementptr inbounds [8192 x i8]* @_ZL8contacts, i32 0, i64 %15, !dbg !203 ; [#uses=1 type=i8*] [debug line = 24:3]
  %17 = load i8* %16, align 1, !dbg !203          ; [#uses=1 type=i8] [debug line = 24:3]
  %18 = zext i8 %17 to i32, !dbg !203             ; [#uses=1 type=i32] [debug line = 24:3]
  %19 = icmp eq i32 %10, %18, !dbg !203           ; [#uses=1 type=i1] [debug line = 24:3]
  %20 = zext i1 %19 to i32, !dbg !203             ; [#uses=1 type=i32] [debug line = 24:3]
  %21 = load i1* %found, align 1, !dbg !203       ; [#uses=1 type=i1] [debug line = 24:3]
  %22 = zext i1 %21 to i32, !dbg !203             ; [#uses=1 type=i32] [debug line = 24:3]
  %23 = and i32 %22, %20, !dbg !203               ; [#uses=1 type=i32] [debug line = 24:3]
  %24 = icmp ne i32 %23, 0, !dbg !203             ; [#uses=1 type=i1] [debug line = 24:3]
  store i1 %24, i1* %found, align 1, !dbg !203    ; [debug line = 24:3]
  br label %25, !dbg !205                         ; [debug line = 25:2]

; <label>:25                                      ; preds = %5
  %26 = load i32* %i, align 4, !dbg !206          ; [#uses=1 type=i32] [debug line = 23:17]
  %27 = add nsw i32 %26, 1, !dbg !206             ; [#uses=1 type=i32] [debug line = 23:17]
  store i32 %27, i32* %i, align 4, !dbg !206      ; [debug line = 23:17]
  br label %2, !dbg !206                          ; [debug line = 23:17]

; <label>:28                                      ; preds = %2
  %29 = load i1* %found, align 1, !dbg !207       ; [#uses=1 type=i1] [debug line = 26:2]
  ret i1 %29, !dbg !207                           ; [debug line = 26:2]
}

; [#uses=0]
define void @_Z17contact_discoveryiRN3hls6streamIhEES2_RNS0_IbEEPiS5_S5_(i32 %operation, %"class.hls::stream"* %contacts_in, %"class.hls::stream"* %database_in, %"class.hls::stream.0"* %matched_out, i32* %matched_finished, i32* %error_out, i32* %contacts_size_out) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %2 = alloca %"class.hls::stream"*, align 8      ; [#uses=5 type=%"class.hls::stream"**]
  %3 = alloca %"class.hls::stream"*, align 8      ; [#uses=4 type=%"class.hls::stream"**]
  %4 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %5 = alloca i32*, align 8                       ; [#uses=8 type=i32**]
  %6 = alloca i32*, align 8                       ; [#uses=9 type=i32**]
  %7 = alloca i32*, align 8                       ; [#uses=8 type=i32**]
  %database_index = alloca i32, align 4           ; [#uses=0 type=i32*]
  %contacts_index = alloca i32, align 4           ; [#uses=0 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=20 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %results = alloca [10 x i1], align 1            ; [#uses=0 type=[10 x i1]*]
  %matched = alloca i1, align 1                   ; [#uses=0 type=i1*]
  %current_matched = alloca i1, align 1           ; [#uses=0 type=i1*]
  %found = alloca i1, align 1                     ; [#uses=4 type=i1*]
  %comp = alloca i1, align 1                      ; [#uses=2 type=i1*]
  store i32 %operation, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !208), !dbg !209 ; [debug line = 30:6] [debug variable = operation]
  store %"class.hls::stream"* %contacts_in, %"class.hls::stream"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !210), !dbg !211 ; [debug line = 31:30] [debug variable = contacts_in]
  store %"class.hls::stream"* %database_in, %"class.hls::stream"** %3, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %3}, metadata !212), !dbg !213 ; [debug line = 32:30] [debug variable = database_in]
  store %"class.hls::stream.0"* %matched_out, %"class.hls::stream.0"** %4, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %4}, metadata !214), !dbg !215 ; [debug line = 33:21] [debug variable = matched_out]
  store i32* %matched_finished, i32** %5, align 8
  call void @llvm.dbg.declare(metadata !{i32** %5}, metadata !216), !dbg !217 ; [debug line = 34:7] [debug variable = matched_finished]
  store i32* %error_out, i32** %6, align 8
  call void @llvm.dbg.declare(metadata !{i32** %6}, metadata !218), !dbg !219 ; [debug line = 35:7] [debug variable = error_out]
  store i32* %contacts_size_out, i32** %7, align 8
  call void @llvm.dbg.declare(metadata !{i32** %7}, metadata !220), !dbg !221 ; [debug line = 36:7] [debug variable = contacts_size_out]
  %8 = load i32* %1, align 4, !dbg !222           ; [#uses=1 type=i32] [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %8, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !222 ; [debug line = 38:1]
  %9 = load %"class.hls::stream"** %3, align 8, !dbg !224 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 39:1]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream"* %9, i32 1, i32 512, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !224 ; [debug line = 39:1]
  %10 = load %"class.hls::stream"** %2, align 8, !dbg !225 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 40:1]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream"* %10, i32 1, i32 512, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !225 ; [debug line = 40:1]
  %11 = load i32** %5, align 8, !dbg !226         ; [#uses=1 type=i32*] [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %11, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !226 ; [debug line = 41:1]
  %12 = load i32** %7, align 8, !dbg !227         ; [#uses=1 type=i32*] [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %12, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !227 ; [debug line = 42:1]
  %13 = load i32** %7, align 8, !dbg !228         ; [#uses=1 type=i32*] [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %13, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !228 ; [debug line = 43:1]
  %14 = load i32** %6, align 8, !dbg !229         ; [#uses=1 type=i32*] [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %14, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !229 ; [debug line = 44:1]
  %15 = load i32** %5, align 8, !dbg !230         ; [#uses=1 type=i32*] [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %15, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !230 ; [debug line = 45:1]
  %16 = load i32** %6, align 8, !dbg !231         ; [#uses=1 type=i32*] [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %16, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !231 ; [debug line = 46:1]
  %17 = load i32* %1, align 4, !dbg !232          ; [#uses=1 type=i32] [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %17, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !232 ; [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !233 ; [debug line = 48:1]
  call void @llvm.dbg.declare(metadata !{i32* %database_index}, metadata !234), !dbg !235 ; [debug line = 49:6] [debug variable = database_index]
  call void @llvm.dbg.declare(metadata !{i32* %contacts_index}, metadata !236), !dbg !237 ; [debug line = 49:22] [debug variable = contacts_index]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !238), !dbg !239 ; [debug line = 49:38] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !240), !dbg !241 ; [debug line = 49:41] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{[10 x i1]* %results}, metadata !242), !dbg !246 ; [debug line = 50:7] [debug variable = results]
  call void @llvm.dbg.declare(metadata !{i1* %matched}, metadata !247), !dbg !248 ; [debug line = 51:7] [debug variable = matched]
  call void @llvm.dbg.declare(metadata !{i1* %current_matched}, metadata !249), !dbg !250 ; [debug line = 51:16] [debug variable = current_matched]
  call void @llvm.dbg.declare(metadata !{i1* %found}, metadata !251), !dbg !252 ; [debug line = 52:7] [debug variable = found]
  %18 = load i32* %1, align 4, !dbg !253          ; [#uses=1 type=i32] [debug line = 54:2]
  switch i32 %18, label %117 [
    i32 0, label %19
    i32 1, label %59
    i32 2, label %101
  ], !dbg !253                                    ; [debug line = 54:2]

; <label>:19                                      ; preds = %0
  %20 = load i32** %5, align 8, !dbg !254         ; [#uses=1 type=i32*] [debug line = 57:4]
  store i32 0, i32* %20, align 4, !dbg !254       ; [debug line = 57:4]
  %21 = load i32** %6, align 8, !dbg !256         ; [#uses=1 type=i32*] [debug line = 58:4]
  store i32 0, i32* %21, align 4, !dbg !256       ; [debug line = 58:4]
  %22 = load i32* @_ZL13contacts_size, align 4, !dbg !257 ; [#uses=1 type=i32] [debug line = 59:4]
  %23 = load i32** %7, align 8, !dbg !257         ; [#uses=1 type=i32*] [debug line = 59:4]
  store i32 %22, i32* %23, align 4, !dbg !257     ; [debug line = 59:4]
  br label %24, !dbg !258                         ; [debug line = 60:4]

; <label>:24                                      ; preds = %57, %19
  %25 = load %"class.hls::stream"** %2, align 8, !dbg !259 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 60:11]
  %26 = call zeroext i1 @_ZNK3hls6streamIhE5emptyEv(%"class.hls::stream"* %25), !dbg !259 ; [#uses=1 type=i1] [debug line = 60:11]
  %27 = xor i1 %26, true, !dbg !259               ; [#uses=1 type=i1] [debug line = 60:11]
  br i1 %27, label %28, label %58, !dbg !259      ; [debug line = 60:11]

; <label>:28                                      ; preds = %24
  %29 = load i32* @_ZL13contacts_size, align 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 61:5]
  %30 = icmp sge i32 %29, 128, !dbg !260          ; [#uses=1 type=i1] [debug line = 61:5]
  br i1 %30, label %31, label %35, !dbg !260      ; [debug line = 61:5]

; <label>:31                                      ; preds = %28
  %32 = load i32** %6, align 8, !dbg !262         ; [#uses=1 type=i32*] [debug line = 62:6]
  store i32 1, i32* %32, align 4, !dbg !262       ; [debug line = 62:6]
  %33 = load %"class.hls::stream"** %2, align 8, !dbg !264 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 63:6]
  %34 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %33), !dbg !264 ; [#uses=0 type=i8] [debug line = 63:6]
  br label %57, !dbg !265                         ; [debug line = 64:5]

; <label>:35                                      ; preds = %28
  store i32 0, i32* %i, align 4, !dbg !266        ; [debug line = 65:10]
  br label %36, !dbg !266                         ; [debug line = 65:10]

; <label>:36                                      ; preds = %48, %35
  %37 = load i32* %i, align 4, !dbg !266          ; [#uses=1 type=i32] [debug line = 65:10]
  %38 = icmp slt i32 %37, 64, !dbg !266           ; [#uses=1 type=i1] [debug line = 65:10]
  br i1 %38, label %39, label %51, !dbg !266      ; [debug line = 65:10]

; <label>:39                                      ; preds = %36
  %40 = load %"class.hls::stream"** %2, align 8, !dbg !269 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 66:40]
  %41 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %40), !dbg !269 ; [#uses=1 type=i8] [debug line = 66:40]
  %42 = load i32* @_ZL13contacts_size, align 4, !dbg !269 ; [#uses=1 type=i32] [debug line = 66:40]
  %43 = mul nsw i32 %42, 64, !dbg !269            ; [#uses=1 type=i32] [debug line = 66:40]
  %44 = load i32* %i, align 4, !dbg !269          ; [#uses=1 type=i32] [debug line = 66:40]
  %45 = add nsw i32 %43, %44, !dbg !269           ; [#uses=1 type=i32] [debug line = 66:40]
  %46 = sext i32 %45 to i64, !dbg !269            ; [#uses=1 type=i64] [debug line = 66:40]
  %47 = getelementptr inbounds [8192 x i8]* @_ZL8contacts, i32 0, i64 %46, !dbg !269 ; [#uses=1 type=i8*] [debug line = 66:40]
  store i8 %41, i8* %47, align 1, !dbg !269       ; [debug line = 66:40]
  br label %48, !dbg !271                         ; [debug line = 67:6]

; <label>:48                                      ; preds = %39
  %49 = load i32* %i, align 4, !dbg !272          ; [#uses=1 type=i32] [debug line = 65:21]
  %50 = add nsw i32 %49, 1, !dbg !272             ; [#uses=1 type=i32] [debug line = 65:21]
  store i32 %50, i32* %i, align 4, !dbg !272      ; [debug line = 65:21]
  br label %36, !dbg !272                         ; [debug line = 65:21]

; <label>:51                                      ; preds = %36
  %52 = load i32* @_ZL13contacts_size, align 4, !dbg !273 ; [#uses=1 type=i32] [debug line = 68:6]
  %53 = add nsw i32 %52, 1, !dbg !273             ; [#uses=1 type=i32] [debug line = 68:6]
  store i32 %53, i32* @_ZL13contacts_size, align 4, !dbg !273 ; [debug line = 68:6]
  %54 = load i32* @_ZL13contacts_size, align 4, !dbg !274 ; [#uses=1 type=i32] [debug line = 69:6]
  %55 = load i32** %7, align 8, !dbg !274         ; [#uses=1 type=i32*] [debug line = 69:6]
  store i32 %54, i32* %55, align 4, !dbg !274     ; [debug line = 69:6]
  %56 = load i32** %6, align 8, !dbg !275         ; [#uses=1 type=i32*] [debug line = 70:6]
  store i32 0, i32* %56, align 4, !dbg !275       ; [debug line = 70:6]
  br label %57

; <label>:57                                      ; preds = %51, %31
  br label %24, !dbg !276                         ; [debug line = 72:4]

; <label>:58                                      ; preds = %24
  br label %122, !dbg !277                        ; [debug line = 73:4]

; <label>:59                                      ; preds = %0
  %60 = load i32** %5, align 8, !dbg !278         ; [#uses=1 type=i32*] [debug line = 76:4]
  store i32 0, i32* %60, align 4, !dbg !278       ; [debug line = 76:4]
  %61 = load i32** %6, align 8, !dbg !279         ; [#uses=1 type=i32*] [debug line = 77:4]
  store i32 0, i32* %61, align 4, !dbg !279       ; [debug line = 77:4]
  %62 = load i32* @_ZL13contacts_size, align 4, !dbg !280 ; [#uses=1 type=i32] [debug line = 78:4]
  %63 = load i32** %7, align 8, !dbg !280         ; [#uses=1 type=i32*] [debug line = 78:4]
  store i32 %62, i32* %63, align 4, !dbg !280     ; [debug line = 78:4]
  br label %64, !dbg !281                         ; [debug line = 79:4]

; <label>:64                                      ; preds = %97, %59
  %65 = load %"class.hls::stream"** %3, align 8, !dbg !282 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 79:11]
  %66 = call zeroext i1 @_ZNK3hls6streamIhE5emptyEv(%"class.hls::stream"* %65), !dbg !282 ; [#uses=1 type=i1] [debug line = 79:11]
  %67 = xor i1 %66, true, !dbg !282               ; [#uses=1 type=i1] [debug line = 79:11]
  br i1 %67, label %68, label %99, !dbg !282      ; [debug line = 79:11]

; <label>:68                                      ; preds = %64
  store i1 false, i1* %found, align 1, !dbg !283  ; [debug line = 80:5]
  store i32 0, i32* %i, align 4, !dbg !285        ; [debug line = 81:9]
  br label %69, !dbg !285                         ; [debug line = 81:9]

; <label>:69                                      ; preds = %78, %68
  %70 = load i32* %i, align 4, !dbg !285          ; [#uses=1 type=i32] [debug line = 81:9]
  %71 = icmp slt i32 %70, 64, !dbg !285           ; [#uses=1 type=i1] [debug line = 81:9]
  br i1 %71, label %72, label %81, !dbg !285      ; [debug line = 81:9]

; <label>:72                                      ; preds = %69
  %73 = load %"class.hls::stream"** %3, align 8, !dbg !287 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 82:33]
  %74 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %73), !dbg !287 ; [#uses=1 type=i8] [debug line = 82:33]
  %75 = load i32* %i, align 4, !dbg !287          ; [#uses=1 type=i32] [debug line = 82:33]
  %76 = sext i32 %75 to i64, !dbg !287            ; [#uses=1 type=i64] [debug line = 82:33]
  %77 = getelementptr inbounds [64 x i8]* @_ZL21current_database_item, i32 0, i64 %76, !dbg !287 ; [#uses=1 type=i8*] [debug line = 82:33]
  store i8 %74, i8* %77, align 1, !dbg !287       ; [debug line = 82:33]
  br label %78, !dbg !289                         ; [debug line = 83:5]

; <label>:78                                      ; preds = %72
  %79 = load i32* %i, align 4, !dbg !290          ; [#uses=1 type=i32] [debug line = 81:20]
  %80 = add nsw i32 %79, 1, !dbg !290             ; [#uses=1 type=i32] [debug line = 81:20]
  store i32 %80, i32* %i, align 4, !dbg !290      ; [debug line = 81:20]
  br label %69, !dbg !290                         ; [debug line = 81:20]

; <label>:81                                      ; preds = %69
  store i32 0, i32* %i, align 4, !dbg !291        ; [debug line = 84:9]
  br label %82, !dbg !291                         ; [debug line = 84:9]

; <label>:82                                      ; preds = %94, %81
  %83 = load i32* %i, align 4, !dbg !291          ; [#uses=1 type=i32] [debug line = 84:9]
  %84 = icmp slt i32 %83, 128, !dbg !291          ; [#uses=1 type=i1] [debug line = 84:9]
  br i1 %84, label %85, label %97, !dbg !291      ; [debug line = 84:9]

; <label>:85                                      ; preds = %82
  call void @llvm.dbg.declare(metadata !{i1* %comp}, metadata !293), !dbg !295 ; [debug line = 85:11] [debug variable = comp]
  %86 = load i32* %i, align 4, !dbg !296          ; [#uses=1 type=i32] [debug line = 85:18]
  %87 = call zeroext i1 @_Z7comparei(i32 %86), !dbg !296 ; [#uses=1 type=i1] [debug line = 85:18]
  store i1 %87, i1* %comp, align 1, !dbg !296     ; [debug line = 85:18]
  %88 = load i1* %comp, align 1, !dbg !297        ; [#uses=1 type=i1] [debug line = 86:6]
  %89 = zext i1 %88 to i32, !dbg !297             ; [#uses=1 type=i32] [debug line = 86:6]
  %90 = load i1* %found, align 1, !dbg !297       ; [#uses=1 type=i1] [debug line = 86:6]
  %91 = zext i1 %90 to i32, !dbg !297             ; [#uses=1 type=i32] [debug line = 86:6]
  %92 = or i32 %91, %89, !dbg !297                ; [#uses=1 type=i32] [debug line = 86:6]
  %93 = icmp ne i32 %92, 0, !dbg !297             ; [#uses=1 type=i1] [debug line = 86:6]
  store i1 %93, i1* %found, align 1, !dbg !297    ; [debug line = 86:6]
  br label %94, !dbg !298                         ; [debug line = 87:5]

; <label>:94                                      ; preds = %85
  %95 = load i32* %i, align 4, !dbg !299          ; [#uses=1 type=i32] [debug line = 84:21]
  %96 = add nsw i32 %95, 1, !dbg !299             ; [#uses=1 type=i32] [debug line = 84:21]
  store i32 %96, i32* %i, align 4, !dbg !299      ; [debug line = 84:21]
  br label %82, !dbg !299                         ; [debug line = 84:21]

; <label>:97                                      ; preds = %82
  %98 = load %"class.hls::stream.0"** %4, align 8, !dbg !300 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 88:5]
  call void @_ZN3hls6streamIbE5writeERKb(%"class.hls::stream.0"* %98, i1* %found), !dbg !300 ; [debug line = 88:5]
  br label %64, !dbg !301                         ; [debug line = 89:4]

; <label>:99                                      ; preds = %64
  %100 = load i32** %5, align 8, !dbg !302        ; [#uses=1 type=i32*] [debug line = 90:4]
  store i32 1, i32* %100, align 4, !dbg !302      ; [debug line = 90:4]
  br label %122, !dbg !303                        ; [debug line = 91:4]

; <label>:101                                     ; preds = %0
  %102 = load i32** %5, align 8, !dbg !304        ; [#uses=1 type=i32*] [debug line = 94:4]
  store i32 0, i32* %102, align 4, !dbg !304      ; [debug line = 94:4]
  %103 = load i32** %6, align 8, !dbg !305        ; [#uses=1 type=i32*] [debug line = 95:4]
  store i32 0, i32* %103, align 4, !dbg !305      ; [debug line = 95:4]
  store i32 0, i32* @_ZL13contacts_size, align 4, !dbg !306 ; [debug line = 97:4]
  %104 = load i32* @_ZL13contacts_size, align 4, !dbg !307 ; [#uses=1 type=i32] [debug line = 99:4]
  %105 = load i32** %7, align 8, !dbg !307        ; [#uses=1 type=i32*] [debug line = 99:4]
  store i32 %104, i32* %105, align 4, !dbg !307   ; [debug line = 99:4]
  store i32 0, i32* %i, align 4, !dbg !308        ; [debug line = 100:8]
  br label %106, !dbg !308                        ; [debug line = 100:8]

; <label>:106                                     ; preds = %113, %101
  %107 = load i32* %i, align 4, !dbg !308         ; [#uses=1 type=i32] [debug line = 100:8]
  %108 = icmp slt i32 %107, 128, !dbg !308        ; [#uses=1 type=i1] [debug line = 100:8]
  br i1 %108, label %109, label %116, !dbg !308   ; [debug line = 100:8]

; <label>:109                                     ; preds = %106
  %110 = load i32* %i, align 4, !dbg !310         ; [#uses=1 type=i32] [debug line = 101:5]
  %111 = sext i32 %110 to i64, !dbg !310          ; [#uses=1 type=i64] [debug line = 101:5]
  %112 = getelementptr inbounds [8192 x i8]* @_ZL8contacts, i32 0, i64 %111, !dbg !310 ; [#uses=1 type=i8*] [debug line = 101:5]
  store i8 0, i8* %112, align 1, !dbg !310        ; [debug line = 101:5]
  br label %113, !dbg !312                        ; [debug line = 102:4]

; <label>:113                                     ; preds = %109
  %114 = load i32* %i, align 4, !dbg !313         ; [#uses=1 type=i32] [debug line = 100:20]
  %115 = add nsw i32 %114, 1, !dbg !313           ; [#uses=1 type=i32] [debug line = 100:20]
  store i32 %115, i32* %i, align 4, !dbg !313     ; [debug line = 100:20]
  br label %106, !dbg !313                        ; [debug line = 100:20]

; <label>:116                                     ; preds = %106
  br label %122, !dbg !314                        ; [debug line = 103:4]

; <label>:117                                     ; preds = %0
  %118 = load i32* @_ZL13contacts_size, align 4, !dbg !315 ; [#uses=1 type=i32] [debug line = 106:4]
  %119 = load i32** %7, align 8, !dbg !315        ; [#uses=1 type=i32*] [debug line = 106:4]
  store i32 %118, i32* %119, align 4, !dbg !315   ; [debug line = 106:4]
  %120 = load i32** %5, align 8, !dbg !316        ; [#uses=1 type=i32*] [debug line = 107:4]
  store i32 0, i32* %120, align 4, !dbg !316      ; [debug line = 107:4]
  %121 = load i32** %6, align 8, !dbg !317        ; [#uses=1 type=i32*] [debug line = 108:4]
  store i32 3, i32* %121, align 4, !dbg !317      ; [debug line = 108:4]
  br label %122, !dbg !318                        ; [debug line = 109:4]

; <label>:122                                     ; preds = %117, %116, %99, %58
  ret void, !dbg !319                             ; [debug line = 111:1]
}

; [#uses=9]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecStream(...) nounwind

; [#uses=2]
define linkonce_odr zeroext i1 @_ZNK3hls6streamIhE5emptyEv(%"class.hls::stream"* %this) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %tmp = alloca i1, align 1                       ; [#uses=2 type=i1*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !320), !dbg !322 ; [debug line = 112:48] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i1* %tmp}, metadata !323), !dbg !325 ; [debug line = 113:14] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream"* %2, i32 0, i32 0, !dbg !326 ; [#uses=1 type=i8*] [debug line = 113:20]
  %4 = call zeroext i1 (...)* @_ssdm_StreamCanRead(i8* %3) nounwind, !dbg !326 ; [#uses=1 type=i1] [debug line = 113:20]
  store i1 %4, i1* %tmp, align 1, !dbg !326       ; [debug line = 113:20]
  %5 = load i1* %tmp, align 1, !dbg !327          ; [#uses=1 type=i1] [debug line = 114:9]
  %6 = xor i1 %5, true, !dbg !327                 ; [#uses=1 type=i1] [debug line = 114:9]
  ret i1 %6, !dbg !327                            ; [debug line = 114:9]
}

; [#uses=3]
define linkonce_odr zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %this) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !328), !dbg !330 ; [debug line = 129:56] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !331), !dbg !333 ; [debug line = 130:22] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream"* %2, i32 0, i32 0, !dbg !334 ; [#uses=1 type=i8*] [debug line = 131:9]
  call void (...)* @_ssdm_StreamRead(i8* %3, i8* %tmp) nounwind, !dbg !334 ; [debug line = 131:9]
  %4 = load i8* %tmp, align 1, !dbg !335          ; [#uses=1 type=i8] [debug line = 132:9]
  ret i8 %4, !dbg !335                            ; [debug line = 132:9]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIbE5writeERKb(%"class.hls::stream.0"* %this, i1* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %2 = alloca i1*, align 8                        ; [#uses=2 type=i1**]
  %tmp = alloca i1, align 1                       ; [#uses=2 type=i1*]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !336), !dbg !338 ; [debug line = 144:48] [debug variable = this]
  store i1* %din, i1** %2, align 8
  call void @llvm.dbg.declare(metadata !{i1** %2}, metadata !339), !dbg !340 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.declare(metadata !{i1* %tmp}, metadata !341), !dbg !343 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load i1** %2, align 8, !dbg !344           ; [#uses=1 type=i1*] [debug line = 145:31]
  %5 = load i1* %4, align 1, !dbg !344            ; [#uses=1 type=i1] [debug line = 145:31]
  store i1 %5, i1* %tmp, align 1, !dbg !344       ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream.0"* %3, i32 0, i32 0, !dbg !345 ; [#uses=1 type=i1*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(i1* %6, i1* %tmp) nounwind, !dbg !345 ; [debug line = 146:9]
  ret void, !dbg !346                             ; [debug line = 147:5]
}

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

; [#uses=1]
declare zeroext i1 @_ssdm_StreamCanRead(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!148, !155, !161, !167, !170, !176}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !129} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !18, metadata !126, metadata !127, metadata !128}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !6, i32 12, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @_Z7_memcpyPhS_i, null, null, metadata !12, i32 12} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"contact_discovery/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"compare", metadata !"compare", metadata !"_Z7comparei", metadata !6, i32 19, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i32)* @_Z7comparei, null, null, metadata !12, i32 19} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{metadata !17, metadata !11}
!17 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiRN3hls6streamIhEES2_RNS0_IbEEPiS5_S5_", metadata !6, i32 29, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*, i32*, i32*, i32*)* @_Z17contact_discoveryiRN3hls6streamIhEES2_RNS0_IbEEPiS5_S5_, null, null, metadata !12, i32 37} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !11, metadata !21, metadata !21, metadata !76, metadata !125, metadata !125, metadata !125}
!21 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_reference_type ]
!22 = metadata !{i32 786434, metadata !23, metadata !"stream<unsigned char>", metadata !24, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !25, i32 0, null, metadata !74} ; [ DW_TAG_class_type ]
!23 = metadata !{i32 786489, null, metadata !"hls", metadata !24, i32 69} ; [ DW_TAG_namespace ]
!24 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!25 = metadata !{metadata !26, metadata !27, metadata !31, metadata !37, metadata !42, metadata !45, metadata !49, metadata !54, metadata !58, metadata !59, metadata !60, metadata !63, metadata !66, metadata !67, metadata !70}
!26 = metadata !{i32 786445, metadata !22, metadata !"V", metadata !24, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ]
!27 = metadata !{i32 786478, i32 0, metadata !22, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 83, metadata !28, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 83} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !30}
!30 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !22} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 786478, i32 0, metadata !22, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 86, metadata !32, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 86} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !30, metadata !34}
!34 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!35 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ]
!36 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!37 = metadata !{i32 786478, i32 0, metadata !22, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 91, metadata !38, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 91} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !30, metadata !40}
!40 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_reference_type ]
!41 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ]
!42 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !24, i32 94, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 94} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{metadata !21, metadata !30, metadata !40}
!45 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !24, i32 101, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 101} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !30, metadata !48}
!48 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!49 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !24, i32 105, metadata !50, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 105} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !30, metadata !52}
!52 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_reference_type ]
!53 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!54 = metadata !{i32 786478, i32 0, metadata !22, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !24, i32 112, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 112} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{metadata !17, metadata !57}
!57 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !41} ; [ DW_TAG_pointer_type ]
!58 = metadata !{i32 786478, i32 0, metadata !22, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !24, i32 117, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 117} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !24, i32 123, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 123} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !24, i32 129, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !10, metadata !30}
!63 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !24, i32 136, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 136} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{metadata !17, metadata !30, metadata !48}
!66 = metadata !{i32 786478, i32 0, metadata !22, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !24, i32 144, metadata !50, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 144} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786478, i32 0, metadata !22, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !24, i32 150, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 150} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !17, metadata !30, metadata !52}
!70 = metadata !{i32 786478, i32 0, metadata !22, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !24, i32 157, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 157} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !73, metadata !30}
!73 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !10, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!76 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_reference_type ]
!77 = metadata !{i32 786434, metadata !23, metadata !"stream<bool>", metadata !24, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !78, i32 0, null, metadata !123} ; [ DW_TAG_class_type ]
!78 = metadata !{metadata !79, metadata !80, metadata !84, metadata !87, metadata !92, metadata !95, metadata !99, metadata !104, metadata !108, metadata !109, metadata !110, metadata !113, metadata !116, metadata !117, metadata !120}
!79 = metadata !{i32 786445, metadata !77, metadata !"V", metadata !24, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ]
!80 = metadata !{i32 786478, i32 0, metadata !77, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 83, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 83} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !83}
!83 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !77} ; [ DW_TAG_pointer_type ]
!84 = metadata !{i32 786478, i32 0, metadata !77, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 86, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 86} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !83, metadata !34}
!87 = metadata !{i32 786478, i32 0, metadata !77, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 91, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 91} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{null, metadata !83, metadata !90}
!90 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_reference_type ]
!91 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ]
!92 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIbEaSERKS1_", metadata !24, i32 94, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 94} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{metadata !76, metadata !83, metadata !90}
!95 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIbErsERb", metadata !24, i32 101, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 101} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !83, metadata !98}
!98 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_reference_type ]
!99 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIbElsERKb", metadata !24, i32 105, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 105} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !83, metadata !102}
!102 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_reference_type ]
!103 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ]
!104 = metadata !{i32 786478, i32 0, metadata !77, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIbE5emptyEv", metadata !24, i32 112, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 112} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !17, metadata !107}
!107 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !91} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 786478, i32 0, metadata !77, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIbE4fullEv", metadata !24, i32 117, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 117} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786478, i32 0, metadata !77, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readERb", metadata !24, i32 123, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 123} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786478, i32 0, metadata !77, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readEv", metadata !24, i32 129, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !17, metadata !83}
!113 = metadata !{i32 786478, i32 0, metadata !77, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIbE7read_nbERb", metadata !24, i32 136, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 136} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !17, metadata !83, metadata !98}
!116 = metadata !{i32 786478, i32 0, metadata !77, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !24, i32 144, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 144} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786478, i32 0, metadata !77, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIbE8write_nbERKb", metadata !24, i32 150, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 150} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{metadata !17, metadata !83, metadata !102}
!120 = metadata !{i32 786478, i32 0, metadata !77, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIbE4sizeEv", metadata !24, i32 157, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 157} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{metadata !73, metadata !83}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !17, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!125 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!126 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !24, i32 144, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, i1*)* @_ZN3hls6streamIbE5writeERKb, null, metadata !116, metadata !12, i32 144} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !24, i32 129, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (%"class.hls::stream"*)* @_ZN3hls6streamIhE4readEv, null, metadata !60, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786478, i32 0, metadata !23, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !24, i32 112, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"class.hls::stream"*)* @_ZNK3hls6streamIhE5emptyEv, null, metadata !54, metadata !12, i32 112} ; [ DW_TAG_subprogram ]
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !131, metadata !134, metadata !135, metadata !136, metadata !138, metadata !139, metadata !140, metadata !144}
!131 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !132, i32 315, metadata !133, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!132 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!133 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !132, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!134 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !132, i32 316, metadata !133, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!135 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !132, i32 317, metadata !133, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!136 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !137, i32 26, metadata !11, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!137 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!138 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !137, i32 30, metadata !11, i32 0, i32 1, i32* @_sys_nerr} ; [ DW_TAG_variable ]
!139 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !6, i32 9, metadata !11, i32 1, i32 1, i32* @_ZL13contacts_size} ; [ DW_TAG_variable ]
!140 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !6, i32 7, metadata !141, i32 1, i32 1, [8192 x i8]* @_ZL8contacts} ; [ DW_TAG_variable ]
!141 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !10, metadata !142, i32 0, i32 0} ; [ DW_TAG_array_type ]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786465, i64 0, i64 8191}    ; [ DW_TAG_subrange_type ]
!144 = metadata !{i32 786484, i32 0, null, metadata !"current_database_item", metadata !"current_database_item", metadata !"_ZL21current_database_item", metadata !6, i32 8, metadata !145, i32 1, i32 1, [64 x i8]* @_ZL21current_database_item} ; [ DW_TAG_variable ]
!145 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !10, metadata !146, i32 0, i32 0} ; [ DW_TAG_array_type ]
!146 = metadata !{metadata !147}
!147 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!148 = metadata !{void (i8*, i8*, i32)* @_Z7_memcpyPhS_i, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154}
!149 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!150 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!152 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!153 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!154 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!155 = metadata !{i1 (i32)* @_Z7comparei, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !154}
!156 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!157 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!159 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!160 = metadata !{metadata !"kernel_arg_name", metadata !"contact_index"}
!161 = metadata !{void (i32, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*, i32*, i32*, i32*)* @_Z17contact_discoveryiRN3hls6streamIhEES2_RNS0_IbEEPiS5_S5_, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !154}
!162 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1}
!163 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &", metadata !"hls::stream<_Bool> &", metadata !"int*", metadata !"int*", metadata !"int*"}
!165 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!166 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contacts_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"contacts_size_out"}
!167 = metadata !{void (%"class.hls::stream.0"*, i1*)* @_ZN3hls6streamIbE5writeERKb, metadata !156, metadata !157, metadata !168, metadata !159, metadata !169, metadata !154}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"const _Bool &"}
!169 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!170 = metadata !{i8 (%"class.hls::stream"*)* @_ZN3hls6streamIhE4readEv, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !154}
!171 = metadata !{metadata !"kernel_arg_addr_space"}
!172 = metadata !{metadata !"kernel_arg_access_qual"}
!173 = metadata !{metadata !"kernel_arg_type"}
!174 = metadata !{metadata !"kernel_arg_type_qual"}
!175 = metadata !{metadata !"kernel_arg_name"}
!176 = metadata !{i1 (%"class.hls::stream"*)* @_ZNK3hls6streamIhE5emptyEv, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !154}
!177 = metadata !{i32 786689, metadata !5, metadata !"dest", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 12, i32 29, metadata !5, null}
!179 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 33554444, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!180 = metadata !{i32 12, i32 50, metadata !5, null}
!181 = metadata !{i32 786689, metadata !5, metadata !"length", metadata !6, i32 50331660, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 12, i32 59, metadata !5, null}
!183 = metadata !{i32 786688, metadata !184, metadata !"i", metadata !6, i32 13, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 786443, metadata !5, i32 12, i32 66, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 13, i32 6, metadata !184, null}
!186 = metadata !{i32 14, i32 6, metadata !187, null}
!187 = metadata !{i32 786443, metadata !184, i32 14, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 15, i32 3, metadata !189, null}
!189 = metadata !{i32 786443, metadata !187, i32 14, i32 25, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 16, i32 2, metadata !189, null}
!191 = metadata !{i32 14, i32 21, metadata !187, null}
!192 = metadata !{i32 17, i32 1, metadata !184, null}
!193 = metadata !{i32 786689, metadata !14, metadata !"contact_index", metadata !6, i32 16777235, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 19, i32 18, metadata !14, null}
!195 = metadata !{i32 786688, metadata !196, metadata !"i", metadata !6, i32 20, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 786443, metadata !14, i32 19, i32 32, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 20, i32 6, metadata !196, null}
!198 = metadata !{i32 786688, metadata !196, metadata !"found", metadata !6, i32 21, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 21, i32 7, metadata !196, null}
!200 = metadata !{i32 21, i32 19, metadata !196, null}
!201 = metadata !{i32 23, i32 6, metadata !202, null}
!202 = metadata !{i32 786443, metadata !196, i32 23, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 24, i32 3, metadata !204, null}
!204 = metadata !{i32 786443, metadata !202, i32 23, i32 21, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 25, i32 2, metadata !204, null}
!206 = metadata !{i32 23, i32 17, metadata !202, null}
!207 = metadata !{i32 26, i32 2, metadata !196, null}
!208 = metadata !{i32 786689, metadata !18, metadata !"operation", metadata !6, i32 16777246, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 30, i32 6, metadata !18, null}
!210 = metadata !{i32 786689, metadata !18, metadata !"contacts_in", metadata !6, i32 33554463, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!211 = metadata !{i32 31, i32 30, metadata !18, null}
!212 = metadata !{i32 786689, metadata !18, metadata !"database_in", metadata !6, i32 50331680, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!213 = metadata !{i32 32, i32 30, metadata !18, null}
!214 = metadata !{i32 786689, metadata !18, metadata !"matched_out", metadata !6, i32 67108897, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 33, i32 21, metadata !18, null}
!216 = metadata !{i32 786689, metadata !18, metadata !"matched_finished", metadata !6, i32 83886114, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!217 = metadata !{i32 34, i32 7, metadata !18, null}
!218 = metadata !{i32 786689, metadata !18, metadata !"error_out", metadata !6, i32 100663331, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 35, i32 7, metadata !18, null}
!220 = metadata !{i32 786689, metadata !18, metadata !"contacts_size_out", metadata !6, i32 117440548, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 36, i32 7, metadata !18, null}
!222 = metadata !{i32 38, i32 1, metadata !223, null}
!223 = metadata !{i32 786443, metadata !18, i32 37, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 39, i32 1, metadata !223, null}
!225 = metadata !{i32 40, i32 1, metadata !223, null}
!226 = metadata !{i32 41, i32 1, metadata !223, null}
!227 = metadata !{i32 42, i32 1, metadata !223, null}
!228 = metadata !{i32 43, i32 1, metadata !223, null}
!229 = metadata !{i32 44, i32 1, metadata !223, null}
!230 = metadata !{i32 45, i32 1, metadata !223, null}
!231 = metadata !{i32 46, i32 1, metadata !223, null}
!232 = metadata !{i32 47, i32 1, metadata !223, null}
!233 = metadata !{i32 48, i32 1, metadata !223, null}
!234 = metadata !{i32 786688, metadata !223, metadata !"database_index", metadata !6, i32 49, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 49, i32 6, metadata !223, null}
!236 = metadata !{i32 786688, metadata !223, metadata !"contacts_index", metadata !6, i32 49, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 49, i32 22, metadata !223, null}
!238 = metadata !{i32 786688, metadata !223, metadata !"i", metadata !6, i32 49, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 49, i32 38, metadata !223, null}
!240 = metadata !{i32 786688, metadata !223, metadata !"j", metadata !6, i32 49, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 49, i32 41, metadata !223, null}
!242 = metadata !{i32 786688, metadata !223, metadata !"results", metadata !6, i32 50, metadata !243, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80, i64 8, i32 0, i32 0, metadata !17, metadata !244, i32 0, i32 0} ; [ DW_TAG_array_type ]
!244 = metadata !{metadata !245}
!245 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ]
!246 = metadata !{i32 50, i32 7, metadata !223, null}
!247 = metadata !{i32 786688, metadata !223, metadata !"matched", metadata !6, i32 51, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 51, i32 7, metadata !223, null}
!249 = metadata !{i32 786688, metadata !223, metadata !"current_matched", metadata !6, i32 51, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 51, i32 16, metadata !223, null}
!251 = metadata !{i32 786688, metadata !223, metadata !"found", metadata !6, i32 52, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 52, i32 7, metadata !223, null}
!253 = metadata !{i32 54, i32 2, metadata !223, null}
!254 = metadata !{i32 57, i32 4, metadata !255, null}
!255 = metadata !{i32 786443, metadata !223, i32 54, i32 19, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!256 = metadata !{i32 58, i32 4, metadata !255, null}
!257 = metadata !{i32 59, i32 4, metadata !255, null}
!258 = metadata !{i32 60, i32 4, metadata !255, null}
!259 = metadata !{i32 60, i32 11, metadata !255, null}
!260 = metadata !{i32 61, i32 5, metadata !261, null}
!261 = metadata !{i32 786443, metadata !255, i32 60, i32 31, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 62, i32 6, metadata !263, null}
!263 = metadata !{i32 786443, metadata !261, i32 61, i32 29, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 63, i32 6, metadata !263, null}
!265 = metadata !{i32 64, i32 5, metadata !263, null}
!266 = metadata !{i32 65, i32 10, metadata !267, null}
!267 = metadata !{i32 786443, metadata !268, i32 65, i32 6, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!268 = metadata !{i32 786443, metadata !261, i32 64, i32 12, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 66, i32 40, metadata !270, null}
!270 = metadata !{i32 786443, metadata !267, i32 65, i32 25, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 67, i32 6, metadata !270, null}
!272 = metadata !{i32 65, i32 21, metadata !267, null}
!273 = metadata !{i32 68, i32 6, metadata !268, null}
!274 = metadata !{i32 69, i32 6, metadata !268, null}
!275 = metadata !{i32 70, i32 6, metadata !268, null}
!276 = metadata !{i32 72, i32 4, metadata !261, null}
!277 = metadata !{i32 73, i32 4, metadata !255, null}
!278 = metadata !{i32 76, i32 4, metadata !255, null}
!279 = metadata !{i32 77, i32 4, metadata !255, null}
!280 = metadata !{i32 78, i32 4, metadata !255, null}
!281 = metadata !{i32 79, i32 4, metadata !255, null}
!282 = metadata !{i32 79, i32 11, metadata !255, null}
!283 = metadata !{i32 80, i32 5, metadata !284, null}
!284 = metadata !{i32 786443, metadata !255, i32 79, i32 31, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 81, i32 9, metadata !286, null}
!286 = metadata !{i32 786443, metadata !284, i32 81, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 82, i32 33, metadata !288, null}
!288 = metadata !{i32 786443, metadata !286, i32 81, i32 24, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!289 = metadata !{i32 83, i32 5, metadata !288, null}
!290 = metadata !{i32 81, i32 20, metadata !286, null}
!291 = metadata !{i32 84, i32 9, metadata !292, null}
!292 = metadata !{i32 786443, metadata !284, i32 84, i32 5, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 786688, metadata !294, metadata !"comp", metadata !6, i32 85, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 786443, metadata !292, i32 84, i32 25, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!295 = metadata !{i32 85, i32 11, metadata !294, null}
!296 = metadata !{i32 85, i32 18, metadata !294, null}
!297 = metadata !{i32 86, i32 6, metadata !294, null}
!298 = metadata !{i32 87, i32 5, metadata !294, null}
!299 = metadata !{i32 84, i32 21, metadata !292, null}
!300 = metadata !{i32 88, i32 5, metadata !284, null}
!301 = metadata !{i32 89, i32 4, metadata !284, null}
!302 = metadata !{i32 90, i32 4, metadata !255, null}
!303 = metadata !{i32 91, i32 4, metadata !255, null}
!304 = metadata !{i32 94, i32 4, metadata !255, null}
!305 = metadata !{i32 95, i32 4, metadata !255, null}
!306 = metadata !{i32 97, i32 4, metadata !255, null}
!307 = metadata !{i32 99, i32 4, metadata !255, null}
!308 = metadata !{i32 100, i32 8, metadata !309, null}
!309 = metadata !{i32 786443, metadata !255, i32 100, i32 4, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!310 = metadata !{i32 101, i32 5, metadata !311, null}
!311 = metadata !{i32 786443, metadata !309, i32 100, i32 24, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!312 = metadata !{i32 102, i32 4, metadata !311, null}
!313 = metadata !{i32 100, i32 20, metadata !309, null}
!314 = metadata !{i32 103, i32 4, metadata !255, null}
!315 = metadata !{i32 106, i32 4, metadata !255, null}
!316 = metadata !{i32 107, i32 4, metadata !255, null}
!317 = metadata !{i32 108, i32 4, metadata !255, null}
!318 = metadata !{i32 109, i32 4, metadata !255, null}
!319 = metadata !{i32 111, i32 1, metadata !223, null}
!320 = metadata !{i32 786689, metadata !128, metadata !"this", metadata !24, i32 16777328, metadata !321, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!321 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!322 = metadata !{i32 112, i32 48, metadata !128, null}
!323 = metadata !{i32 786688, metadata !324, metadata !"tmp", metadata !24, i32 113, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 786443, metadata !128, i32 112, i32 62, metadata !24, i32 22} ; [ DW_TAG_lexical_block ]
!325 = metadata !{i32 113, i32 14, metadata !324, null}
!326 = metadata !{i32 113, i32 20, metadata !324, null}
!327 = metadata !{i32 114, i32 9, metadata !324, null}
!328 = metadata !{i32 786689, metadata !127, metadata !"this", metadata !24, i32 16777345, metadata !329, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!329 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!330 = metadata !{i32 129, i32 56, metadata !127, null}
!331 = metadata !{i32 786688, metadata !332, metadata !"tmp", metadata !24, i32 130, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!332 = metadata !{i32 786443, metadata !127, i32 129, i32 63, metadata !24, i32 21} ; [ DW_TAG_lexical_block ]
!333 = metadata !{i32 130, i32 22, metadata !332, null}
!334 = metadata !{i32 131, i32 9, metadata !332, null}
!335 = metadata !{i32 132, i32 9, metadata !332, null}
!336 = metadata !{i32 786689, metadata !126, metadata !"this", metadata !24, i32 16777360, metadata !337, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!337 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ]
!338 = metadata !{i32 144, i32 48, metadata !126, null}
!339 = metadata !{i32 786689, metadata !126, metadata !"din", metadata !24, i32 33554576, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!340 = metadata !{i32 144, i32 74, metadata !126, null}
!341 = metadata !{i32 786688, metadata !342, metadata !"tmp", metadata !24, i32 145, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!342 = metadata !{i32 786443, metadata !126, i32 144, i32 79, metadata !24, i32 20} ; [ DW_TAG_lexical_block ]
!343 = metadata !{i32 145, i32 22, metadata !342, null}
!344 = metadata !{i32 145, i32 31, metadata !342, null}
!345 = metadata !{i32 146, i32 9, metadata !342, null}
!346 = metadata !{i32 147, i32 5, metadata !342, null}