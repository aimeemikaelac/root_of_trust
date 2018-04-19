; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream" = type { i8 }
%"class.hls::stream.0" = type { i32 }

@_ZL9db_stream = internal global %"class.hls::stream" zeroinitializer, align 1 ; [#uses=4 type=%"class.hls::stream"*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@_ZL8contacts = internal global [8192 x i8] zeroinitializer, align 16 ; [#uses=2 type=[8192 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@_ZL13contacts_size = internal global i32 0, align 4 ; [#uses=11 type=i32*]
@_IO_2_1_stdin_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stdout_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stderr_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@_sys_nerr = external global i32                  ; [#uses=0 type=i32*]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }] ; [#uses=0 type=[1 x { i32, void ()* }]*]

; [#uses=1]
define internal void @__cxx_global_var_init() nounwind section ".text.startup" {
  call void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream"* @_ZL9db_stream)
  ret void
}

; [#uses=3]
define linkonce_odr void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream"* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !185), !dbg !187 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @_ZN3hls6streamIhEC2Ev(%"class.hls::stream"* %2), !dbg !188 ; [debug line = 84:5]
  ret void, !dbg !188                             ; [debug line = 84:5]
}

; [#uses=1]
define void @_Z7_memcpyPhS_i(i8* %dest, i8* %src, i32 %length) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i8* %dest, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !189), !dbg !190 ; [debug line = 13:29] [debug variable = dest]
  store i8* %src, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !191), !dbg !192 ; [debug line = 13:50] [debug variable = src]
  store i32 %length, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !193), !dbg !194 ; [debug line = 13:59] [debug variable = length]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !195), !dbg !197 ; [debug line = 14:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !198        ; [debug line = 15:6]
  br label %4, !dbg !198                          ; [debug line = 15:6]

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %i, align 4, !dbg !198           ; [#uses=1 type=i32] [debug line = 15:6]
  %6 = load i32* %3, align 4, !dbg !198           ; [#uses=1 type=i32] [debug line = 15:6]
  %7 = icmp slt i32 %5, %6, !dbg !198             ; [#uses=1 type=i1] [debug line = 15:6]
  br i1 %7, label %8, label %21, !dbg !198        ; [debug line = 15:6]

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4, !dbg !200           ; [#uses=1 type=i32] [debug line = 16:3]
  %10 = sext i32 %9 to i64, !dbg !200             ; [#uses=1 type=i64] [debug line = 16:3]
  %11 = load i8** %2, align 8, !dbg !200          ; [#uses=1 type=i8*] [debug line = 16:3]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !200 ; [#uses=1 type=i8*] [debug line = 16:3]
  %13 = load i8* %12, align 1, !dbg !200          ; [#uses=1 type=i8] [debug line = 16:3]
  %14 = load i32* %i, align 4, !dbg !200          ; [#uses=1 type=i32] [debug line = 16:3]
  %15 = sext i32 %14 to i64, !dbg !200            ; [#uses=1 type=i64] [debug line = 16:3]
  %16 = load i8** %1, align 8, !dbg !200          ; [#uses=1 type=i8*] [debug line = 16:3]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !200 ; [#uses=1 type=i8*] [debug line = 16:3]
  store i8 %13, i8* %17, align 1, !dbg !200       ; [debug line = 16:3]
  br label %18, !dbg !202                         ; [debug line = 17:2]

; <label>:18                                      ; preds = %8
  %19 = load i32* %i, align 4, !dbg !203          ; [#uses=1 type=i32] [debug line = 15:21]
  %20 = add nsw i32 %19, 1, !dbg !203             ; [#uses=1 type=i32] [debug line = 15:21]
  store i32 %20, i32* %i, align 4, !dbg !203      ; [debug line = 15:21]
  br label %4, !dbg !203                          ; [debug line = 15:21]

; <label>:21                                      ; preds = %4
  ret void, !dbg !204                             ; [debug line = 18:1]
}

; [#uses=39]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define zeroext i1 @_Z7compareRN3hls6streamIhEES2_(%"class.hls::stream"* %contact, %"class.hls::stream"* %db_item) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %i = alloca i32, align 4                        ; [#uses=10 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %found = alloca i1, align 1                     ; [#uses=4 type=i1*]
  %results_local = alloca [64 x i1], align 16     ; [#uses=2 type=[64 x i1]*]
  store %"class.hls::stream"* %contact, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !205), !dbg !206 ; [debug line = 20:42] [debug variable = contact]
  store %"class.hls::stream"* %db_item, %"class.hls::stream"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !207), !dbg !208 ; [debug line = 20:79] [debug variable = db_item]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !209), !dbg !211 ; [debug line = 21:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !212), !dbg !213 ; [debug line = 21:9] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i1* %found}, metadata !214), !dbg !215 ; [debug line = 22:7] [debug variable = found]
  store i1 true, i1* %found, align 1, !dbg !216   ; [debug line = 22:19]
  call void @llvm.dbg.declare(metadata !{[64 x i1]* %results_local}, metadata !217), !dbg !221 ; [debug line = 23:7] [debug variable = results_local]
  store i32 0, i32* %i, align 4, !dbg !222        ; [debug line = 24:6]
  br label %3, !dbg !222                          ; [debug line = 24:6]

; <label>:3                                       ; preds = %17, %0
  %4 = load i32* %i, align 4, !dbg !222           ; [#uses=1 type=i32] [debug line = 24:6]
  %5 = icmp slt i32 %4, 64, !dbg !222             ; [#uses=1 type=i1] [debug line = 24:6]
  br i1 %5, label %6, label %20, !dbg !222        ; [debug line = 24:6]

; <label>:6                                       ; preds = %3
  %7 = load %"class.hls::stream"** %1, align 8, !dbg !224 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 25:23]
  %8 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %7), !dbg !224 ; [#uses=1 type=i8] [debug line = 25:23]
  %9 = zext i8 %8 to i32, !dbg !224               ; [#uses=1 type=i32] [debug line = 25:23]
  %10 = load %"class.hls::stream"** %2, align 8, !dbg !226 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 25:41]
  %11 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %10), !dbg !226 ; [#uses=1 type=i8] [debug line = 25:41]
  %12 = zext i8 %11 to i32, !dbg !226             ; [#uses=1 type=i32] [debug line = 25:41]
  %13 = icmp eq i32 %9, %12, !dbg !226            ; [#uses=1 type=i1] [debug line = 25:41]
  %14 = load i32* %i, align 4, !dbg !226          ; [#uses=1 type=i32] [debug line = 25:41]
  %15 = sext i32 %14 to i64, !dbg !226            ; [#uses=1 type=i64] [debug line = 25:41]
  %16 = getelementptr inbounds [64 x i1]* %results_local, i32 0, i64 %15, !dbg !226 ; [#uses=1 type=i1*] [debug line = 25:41]
  store i1 %13, i1* %16, align 1, !dbg !226       ; [debug line = 25:41]
  br label %17, !dbg !227                         ; [debug line = 26:2]

; <label>:17                                      ; preds = %6
  %18 = load i32* %i, align 4, !dbg !228          ; [#uses=1 type=i32] [debug line = 24:17]
  %19 = add nsw i32 %18, 1, !dbg !228             ; [#uses=1 type=i32] [debug line = 24:17]
  store i32 %19, i32* %i, align 4, !dbg !228      ; [debug line = 24:17]
  br label %3, !dbg !228                          ; [debug line = 24:17]

; <label>:20                                      ; preds = %3
  store i32 0, i32* %i, align 4, !dbg !229        ; [debug line = 27:6]
  br label %21, !dbg !229                         ; [debug line = 27:6]

; <label>:21                                      ; preds = %34, %20
  %22 = load i32* %i, align 4, !dbg !229          ; [#uses=1 type=i32] [debug line = 27:6]
  %23 = icmp slt i32 %22, 64, !dbg !229           ; [#uses=1 type=i1] [debug line = 27:6]
  br i1 %23, label %24, label %37, !dbg !229      ; [debug line = 27:6]

; <label>:24                                      ; preds = %21
  %25 = load i32* %i, align 4, !dbg !231          ; [#uses=1 type=i32] [debug line = 28:3]
  %26 = sext i32 %25 to i64, !dbg !231            ; [#uses=1 type=i64] [debug line = 28:3]
  %27 = getelementptr inbounds [64 x i1]* %results_local, i32 0, i64 %26, !dbg !231 ; [#uses=1 type=i1*] [debug line = 28:3]
  %28 = load i1* %27, align 1, !dbg !231          ; [#uses=1 type=i1] [debug line = 28:3]
  %29 = zext i1 %28 to i32, !dbg !231             ; [#uses=1 type=i32] [debug line = 28:3]
  %30 = load i1* %found, align 1, !dbg !231       ; [#uses=1 type=i1] [debug line = 28:3]
  %31 = zext i1 %30 to i32, !dbg !231             ; [#uses=1 type=i32] [debug line = 28:3]
  %32 = and i32 %31, %29, !dbg !231               ; [#uses=1 type=i32] [debug line = 28:3]
  %33 = icmp ne i32 %32, 0, !dbg !231             ; [#uses=1 type=i1] [debug line = 28:3]
  store i1 %33, i1* %found, align 1, !dbg !231    ; [debug line = 28:3]
  br label %34, !dbg !233                         ; [debug line = 29:2]

; <label>:34                                      ; preds = %24
  %35 = load i32* %i, align 4, !dbg !234          ; [#uses=1 type=i32] [debug line = 27:17]
  %36 = add nsw i32 %35, 1, !dbg !234             ; [#uses=1 type=i32] [debug line = 27:17]
  store i32 %36, i32* %i, align 4, !dbg !234      ; [debug line = 27:17]
  br label %21, !dbg !234                         ; [debug line = 27:17]

; <label>:37                                      ; preds = %21
  %38 = load i1* %found, align 1, !dbg !235       ; [#uses=1 type=i1] [debug line = 30:2]
  ret i1 %38, !dbg !235                           ; [debug line = 30:2]
}

; [#uses=4]
define linkonce_odr zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %this) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !236), !dbg !237 ; [debug line = 129:56] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !238), !dbg !240 ; [debug line = 130:22] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream"* %2, i32 0, i32 0, !dbg !241 ; [#uses=1 type=i8*] [debug line = 131:9]
  call void (...)* @_ssdm_StreamRead(i8* %3, i8* %tmp) nounwind, !dbg !241 ; [debug line = 131:9]
  %4 = load i8* %tmp, align 1, !dbg !242          ; [#uses=1 type=i8] [debug line = 132:9]
  ret i8 %4, !dbg !242                            ; [debug line = 132:9]
}

; [#uses=1]
define zeroext i1 @_Z16match_db_contactv() nounwind uwtable {
  %contacts_index = alloca i32, align 4           ; [#uses=11 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=11 type=i32*]
  %matched = alloca i1, align 1                   ; [#uses=4 type=i1*]
  %local_results = alloca [128 x i1], align 16    ; [#uses=2 type=[128 x i1]*]
  %db_item_temp = alloca [64 x i8], align 16      ; [#uses=2 type=[64 x i8]*]
  %contact = alloca %"class.hls::stream", align 1 ; [#uses=4 type=%"class.hls::stream"*]
  %db_item = alloca %"class.hls::stream", align 1 ; [#uses=4 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i32* %contacts_index}, metadata !243), !dbg !245 ; [debug line = 34:6] [debug variable = contacts_index]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !246), !dbg !247 ; [debug line = 34:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i1* %matched}, metadata !248), !dbg !249 ; [debug line = 35:7] [debug variable = matched]
  store i1 false, i1* %matched, align 1, !dbg !250 ; [debug line = 35:22]
  call void @llvm.dbg.declare(metadata !{[128 x i1]* %local_results}, metadata !251), !dbg !255 ; [debug line = 36:7] [debug variable = local_results]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %db_item_temp}, metadata !256), !dbg !258 ; [debug line = 37:16] [debug variable = db_item_temp]
  store i32 0, i32* %i, align 4, !dbg !259        ; [debug line = 38:6]
  br label %1, !dbg !259                          ; [debug line = 38:6]

; <label>:1                                       ; preds = %9, %0
  %2 = load i32* %i, align 4, !dbg !259           ; [#uses=1 type=i32] [debug line = 38:6]
  %3 = icmp slt i32 %2, 64, !dbg !259             ; [#uses=1 type=i1] [debug line = 38:6]
  br i1 %3, label %4, label %12, !dbg !259        ; [debug line = 38:6]

; <label>:4                                       ; preds = %1
  %5 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* @_ZL9db_stream), !dbg !261 ; [#uses=1 type=i8] [debug line = 39:21]
  %6 = load i32* %i, align 4, !dbg !261           ; [#uses=1 type=i32] [debug line = 39:21]
  %7 = sext i32 %6 to i64, !dbg !261              ; [#uses=1 type=i64] [debug line = 39:21]
  %8 = getelementptr inbounds [64 x i8]* %db_item_temp, i32 0, i64 %7, !dbg !261 ; [#uses=1 type=i8*] [debug line = 39:21]
  store i8 %5, i8* %8, align 1, !dbg !261         ; [debug line = 39:21]
  br label %9, !dbg !263                          ; [debug line = 40:2]

; <label>:9                                       ; preds = %4
  %10 = load i32* %i, align 4, !dbg !264          ; [#uses=1 type=i32] [debug line = 38:17]
  %11 = add nsw i32 %10, 1, !dbg !264             ; [#uses=1 type=i32] [debug line = 38:17]
  store i32 %11, i32* %i, align 4, !dbg !264      ; [debug line = 38:17]
  br label %1, !dbg !264                          ; [debug line = 38:17]

; <label>:12                                      ; preds = %1
  store i32 0, i32* %contacts_index, align 4, !dbg !265 ; [debug line = 41:6]
  br label %13, !dbg !265                         ; [debug line = 41:6]

; <label>:13                                      ; preds = %38, %12
  %14 = load i32* %contacts_index, align 4, !dbg !265 ; [#uses=1 type=i32] [debug line = 41:6]
  %15 = icmp slt i32 %14, 128, !dbg !265          ; [#uses=1 type=i1] [debug line = 41:6]
  br i1 %15, label %16, label %41, !dbg !265      ; [debug line = 41:6]

; <label>:16                                      ; preds = %13
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !267 ; [debug line = 41:64]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %contact}, metadata !269), !dbg !270 ; [debug line = 42:30] [debug variable = contact]
  call void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream"* %contact), !dbg !271 ; [debug line = 42:37]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream"* %contact, i32 1, i32 128, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !272 ; [debug line = 43:1]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %db_item}, metadata !273), !dbg !274 ; [debug line = 44:29] [debug variable = db_item]
  call void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream"* %db_item), !dbg !275 ; [debug line = 44:36]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream"* %db_item, i32 1, i32 128, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !276 ; [debug line = 45:1]
  store i32 0, i32* %i, align 4, !dbg !277        ; [debug line = 46:6]
  br label %17, !dbg !277                         ; [debug line = 46:6]

; <label>:17                                      ; preds = %30, %16
  %18 = load i32* %i, align 4, !dbg !277          ; [#uses=1 type=i32] [debug line = 46:6]
  %19 = icmp slt i32 %18, 64, !dbg !277           ; [#uses=1 type=i1] [debug line = 46:6]
  br i1 %19, label %20, label %33, !dbg !277      ; [debug line = 46:6]

; <label>:20                                      ; preds = %17
  %21 = load i32* %contacts_index, align 4, !dbg !279 ; [#uses=1 type=i32] [debug line = 47:4]
  %22 = mul nsw i32 %21, 64, !dbg !279            ; [#uses=1 type=i32] [debug line = 47:4]
  %23 = load i32* %i, align 4, !dbg !279          ; [#uses=1 type=i32] [debug line = 47:4]
  %24 = add nsw i32 %22, %23, !dbg !279           ; [#uses=1 type=i32] [debug line = 47:4]
  %25 = sext i32 %24 to i64, !dbg !279            ; [#uses=1 type=i64] [debug line = 47:4]
  %26 = getelementptr inbounds [8192 x i8]* @_ZL8contacts, i32 0, i64 %25, !dbg !279 ; [#uses=1 type=i8*] [debug line = 47:4]
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream"* %contact, i8* %26), !dbg !279 ; [debug line = 47:4]
  %27 = load i32* %i, align 4, !dbg !281          ; [#uses=1 type=i32] [debug line = 48:4]
  %28 = sext i32 %27 to i64, !dbg !281            ; [#uses=1 type=i64] [debug line = 48:4]
  %29 = getelementptr inbounds [64 x i8]* %db_item_temp, i32 0, i64 %28, !dbg !281 ; [#uses=1 type=i8*] [debug line = 48:4]
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream"* %db_item, i8* %29), !dbg !281 ; [debug line = 48:4]
  br label %30, !dbg !282                         ; [debug line = 49:3]

; <label>:30                                      ; preds = %20
  %31 = load i32* %i, align 4, !dbg !283          ; [#uses=1 type=i32] [debug line = 46:17]
  %32 = add nsw i32 %31, 1, !dbg !283             ; [#uses=1 type=i32] [debug line = 46:17]
  store i32 %32, i32* %i, align 4, !dbg !283      ; [debug line = 46:17]
  br label %17, !dbg !283                         ; [debug line = 46:17]

; <label>:33                                      ; preds = %17
  %34 = call zeroext i1 @_Z7compareRN3hls6streamIhEES2_(%"class.hls::stream"* %contact, %"class.hls::stream"* %db_item), !dbg !284 ; [#uses=1 type=i1] [debug line = 50:35]
  %35 = load i32* %contacts_index, align 4, !dbg !284 ; [#uses=1 type=i32] [debug line = 50:35]
  %36 = sext i32 %35 to i64, !dbg !284            ; [#uses=1 type=i64] [debug line = 50:35]
  %37 = getelementptr inbounds [128 x i1]* %local_results, i32 0, i64 %36, !dbg !284 ; [#uses=1 type=i1*] [debug line = 50:35]
  store i1 %34, i1* %37, align 1, !dbg !284       ; [debug line = 50:35]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !285 ; [debug line = 51:2]
  br label %38, !dbg !285                         ; [debug line = 51:2]

; <label>:38                                      ; preds = %33
  %39 = load i32* %contacts_index, align 4, !dbg !286 ; [#uses=1 type=i32] [debug line = 41:46]
  %40 = add nsw i32 %39, 1, !dbg !286             ; [#uses=1 type=i32] [debug line = 41:46]
  store i32 %40, i32* %contacts_index, align 4, !dbg !286 ; [debug line = 41:46]
  br label %13, !dbg !286                         ; [debug line = 41:46]

; <label>:41                                      ; preds = %13
  store i32 0, i32* %contacts_index, align 4, !dbg !287 ; [debug line = 52:6]
  br label %42, !dbg !287                         ; [debug line = 52:6]

; <label>:42                                      ; preds = %55, %41
  %43 = load i32* %contacts_index, align 4, !dbg !287 ; [#uses=1 type=i32] [debug line = 52:6]
  %44 = icmp slt i32 %43, 128, !dbg !287          ; [#uses=1 type=i1] [debug line = 52:6]
  br i1 %44, label %45, label %58, !dbg !287      ; [debug line = 52:6]

; <label>:45                                      ; preds = %42
  %46 = load i32* %contacts_index, align 4, !dbg !289 ; [#uses=1 type=i32] [debug line = 53:3]
  %47 = sext i32 %46 to i64, !dbg !289            ; [#uses=1 type=i64] [debug line = 53:3]
  %48 = getelementptr inbounds [128 x i1]* %local_results, i32 0, i64 %47, !dbg !289 ; [#uses=1 type=i1*] [debug line = 53:3]
  %49 = load i1* %48, align 1, !dbg !289          ; [#uses=1 type=i1] [debug line = 53:3]
  %50 = zext i1 %49 to i32, !dbg !289             ; [#uses=1 type=i32] [debug line = 53:3]
  %51 = load i1* %matched, align 1, !dbg !289     ; [#uses=1 type=i1] [debug line = 53:3]
  %52 = zext i1 %51 to i32, !dbg !289             ; [#uses=1 type=i32] [debug line = 53:3]
  %53 = or i32 %52, %50, !dbg !289                ; [#uses=1 type=i32] [debug line = 53:3]
  %54 = icmp ne i32 %53, 0, !dbg !289             ; [#uses=1 type=i1] [debug line = 53:3]
  store i1 %54, i1* %matched, align 1, !dbg !289  ; [debug line = 53:3]
  br label %55, !dbg !291                         ; [debug line = 54:2]

; <label>:55                                      ; preds = %45
  %56 = load i32* %contacts_index, align 4, !dbg !292 ; [#uses=1 type=i32] [debug line = 52:46]
  %57 = add nsw i32 %56, 1, !dbg !292             ; [#uses=1 type=i32] [debug line = 52:46]
  store i32 %57, i32* %contacts_index, align 4, !dbg !292 ; [debug line = 52:46]
  br label %42, !dbg !292                         ; [debug line = 52:46]

; <label>:58                                      ; preds = %42
  %59 = load i1* %matched, align 1, !dbg !293     ; [#uses=1 type=i1] [debug line = 55:2]
  ret i1 %59, !dbg !293                           ; [debug line = 55:2]
}

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecStream(...) nounwind

; [#uses=3]
define linkonce_odr void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream"* %this, i8* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !294), !dbg !295 ; [debug line = 144:48] [debug variable = this]
  store i8* %din, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !296), !dbg !297 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !298), !dbg !300 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load i8** %2, align 8, !dbg !301           ; [#uses=1 type=i8*] [debug line = 145:31]
  %5 = load i8* %4, align 1, !dbg !301            ; [#uses=1 type=i8] [debug line = 145:31]
  store i8 %5, i8* %tmp, align 1, !dbg !301       ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !302 ; [#uses=1 type=i8*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(i8* %6, i8* %tmp) nounwind, !dbg !302 ; [debug line = 146:9]
  ret void, !dbg !303                             ; [debug line = 147:5]
}

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=0]
define void @_Z17contact_discoveryiPhRN3hls6streamIhEEjPiS4_RNS1_IjEE(i32 %operation, i8* %contact_in, %"class.hls::stream"* %db_in, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, %"class.hls::stream.0"* %results_out) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %2 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %3 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %4 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %5 = alloca i32*, align 8                       ; [#uses=8 type=i32**]
  %6 = alloca i32*, align 8                       ; [#uses=9 type=i32**]
  %7 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %database_index = alloca i32, align 4           ; [#uses=4 type=i32*]
  %contacts_index = alloca i32, align 4           ; [#uses=0 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %matched = alloca i1, align 1                   ; [#uses=0 type=i1*]
  %current_matched = alloca i1, align 1           ; [#uses=0 type=i1*]
  %8 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %9 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  store i32 %operation, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !304), !dbg !305 ; [debug line = 61:6] [debug variable = operation]
  store i8* %contact_in, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !306), !dbg !307 ; [debug line = 62:16] [debug variable = contact_in]
  store %"class.hls::stream"* %db_in, %"class.hls::stream"** %3, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %3}, metadata !308), !dbg !309 ; [debug line = 63:30] [debug variable = db_in]
  store i32 %db_size_in, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !310), !dbg !311 ; [debug line = 64:15] [debug variable = db_size_in]
  store i32* %error_out, i32** %5, align 8
  call void @llvm.dbg.declare(metadata !{i32** %5}, metadata !312), !dbg !313 ; [debug line = 65:7] [debug variable = error_out]
  store i32* %contacts_size_out, i32** %6, align 8
  call void @llvm.dbg.declare(metadata !{i32** %6}, metadata !314), !dbg !315 ; [debug line = 66:7] [debug variable = contacts_size_out]
  store %"class.hls::stream.0"* %results_out, %"class.hls::stream.0"** %7, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %7}, metadata !316), !dbg !317 ; [debug line = 67:29] [debug variable = results_out]
  %10 = load i8** %2, align 8, !dbg !318          ; [#uses=1 type=i8*] [debug line = 68:3]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %10, i32 64) nounwind, !dbg !318 ; [debug line = 68:3]
  %11 = load i32* %4, align 4, !dbg !320          ; [#uses=1 type=i32] [debug line = 69:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %11, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !320 ; [debug line = 69:1]
  %12 = load i32* %4, align 4, !dbg !321          ; [#uses=1 type=i32] [debug line = 70:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %12, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !321 ; [debug line = 70:1]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream"* @_ZL9db_stream, i32 1, i32 128, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !322 ; [debug line = 71:1]
  %13 = load i32* %1, align 4, !dbg !323          ; [#uses=1 type=i32] [debug line = 72:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %13, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !323 ; [debug line = 72:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !324 ; [debug line = 73:1]
  %14 = load i32** %6, align 8, !dbg !325         ; [#uses=1 type=i32*] [debug line = 74:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %14, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !325 ; [debug line = 74:1]
  %15 = load i32** %6, align 8, !dbg !326         ; [#uses=1 type=i32*] [debug line = 75:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %15, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !326 ; [debug line = 75:1]
  %16 = load i32** %5, align 8, !dbg !327         ; [#uses=1 type=i32*] [debug line = 76:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %16, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !327 ; [debug line = 76:1]
  %17 = load i32** %5, align 8, !dbg !328         ; [#uses=1 type=i32*] [debug line = 77:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %17, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !328 ; [debug line = 77:1]
  %18 = load i32* %1, align 4, !dbg !329          ; [#uses=1 type=i32] [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %18, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !329 ; [debug line = 78:1]
  %19 = load i8** %2, align 8, !dbg !330          ; [#uses=1 type=i8*] [debug line = 79:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %19, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !330 ; [debug line = 79:1]
  call void @llvm.dbg.declare(metadata !{i32* %database_index}, metadata !331), !dbg !332 ; [debug line = 80:6] [debug variable = database_index]
  call void @llvm.dbg.declare(metadata !{i32* %contacts_index}, metadata !333), !dbg !334 ; [debug line = 80:22] [debug variable = contacts_index]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !335), !dbg !336 ; [debug line = 80:38] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i1* %matched}, metadata !337), !dbg !338 ; [debug line = 81:7] [debug variable = matched]
  call void @llvm.dbg.declare(metadata !{i1* %current_matched}, metadata !339), !dbg !340 ; [debug line = 81:16] [debug variable = current_matched]
  %20 = load i32* %1, align 4, !dbg !341          ; [#uses=1 type=i32] [debug line = 83:2]
  switch i32 %20, label %72 [
    i32 0, label %21
    i32 1, label %42
    i32 2, label %68
  ], !dbg !341                                    ; [debug line = 83:2]

; <label>:21                                      ; preds = %0
  %22 = load i32** %5, align 8, !dbg !342         ; [#uses=1 type=i32*] [debug line = 86:4]
  store i32 0, i32* %22, align 4, !dbg !342       ; [debug line = 86:4]
  %23 = load i32* @_ZL13contacts_size, align 4, !dbg !344 ; [#uses=1 type=i32] [debug line = 87:4]
  %24 = load i32** %6, align 8, !dbg !344         ; [#uses=1 type=i32*] [debug line = 87:4]
  store i32 %23, i32* %24, align 4, !dbg !344     ; [debug line = 87:4]
  %25 = load i32* @_ZL13contacts_size, align 4, !dbg !345 ; [#uses=1 type=i32] [debug line = 88:4]
  %26 = icmp sge i32 %25, 128, !dbg !345          ; [#uses=1 type=i1] [debug line = 88:4]
  br i1 %26, label %27, label %31, !dbg !345      ; [debug line = 88:4]

; <label>:27                                      ; preds = %21
  %28 = load i32** %5, align 8, !dbg !346         ; [#uses=1 type=i32*] [debug line = 89:5]
  store i32 1, i32* %28, align 4, !dbg !346       ; [debug line = 89:5]
  %29 = load i32* @_ZL13contacts_size, align 4, !dbg !348 ; [#uses=1 type=i32] [debug line = 90:5]
  %30 = load i32** %6, align 8, !dbg !348         ; [#uses=1 type=i32*] [debug line = 90:5]
  store i32 %29, i32* %30, align 4, !dbg !348     ; [debug line = 90:5]
  br label %41, !dbg !349                         ; [debug line = 91:4]

; <label>:31                                      ; preds = %21
  %32 = load i32* @_ZL13contacts_size, align 4, !dbg !350 ; [#uses=1 type=i32] [debug line = 92:5]
  %33 = mul nsw i32 %32, 64, !dbg !350            ; [#uses=1 type=i32] [debug line = 92:5]
  %34 = sext i32 %33 to i64, !dbg !350            ; [#uses=1 type=i64] [debug line = 92:5]
  %35 = getelementptr inbounds i8* getelementptr inbounds ([8192 x i8]* @_ZL8contacts, i32 0, i32 0), i64 %34, !dbg !350 ; [#uses=1 type=i8*] [debug line = 92:5]
  %36 = load i8** %2, align 8, !dbg !350          ; [#uses=1 type=i8*] [debug line = 92:5]
  call void @_Z7_memcpyPhS_i(i8* %35, i8* %36, i32 64), !dbg !350 ; [debug line = 92:5]
  %37 = load i32* @_ZL13contacts_size, align 4, !dbg !352 ; [#uses=1 type=i32] [debug line = 93:5]
  %38 = add nsw i32 %37, 1, !dbg !352             ; [#uses=1 type=i32] [debug line = 93:5]
  store i32 %38, i32* @_ZL13contacts_size, align 4, !dbg !352 ; [debug line = 93:5]
  %39 = load i32* @_ZL13contacts_size, align 4, !dbg !353 ; [#uses=1 type=i32] [debug line = 94:5]
  %40 = load i32** %6, align 8, !dbg !353         ; [#uses=1 type=i32*] [debug line = 94:5]
  store i32 %39, i32* %40, align 4, !dbg !353     ; [debug line = 94:5]
  br label %41

; <label>:41                                      ; preds = %31, %27
  br label %76, !dbg !354                         ; [debug line = 96:4]

; <label>:42                                      ; preds = %0
  %43 = load i32** %5, align 8, !dbg !355         ; [#uses=1 type=i32*] [debug line = 99:4]
  store i32 0, i32* %43, align 4, !dbg !355       ; [debug line = 99:4]
  %44 = load i32* @_ZL13contacts_size, align 4, !dbg !356 ; [#uses=1 type=i32] [debug line = 100:4]
  %45 = load i32** %6, align 8, !dbg !356         ; [#uses=1 type=i32*] [debug line = 100:4]
  store i32 %44, i32* %45, align 4, !dbg !356     ; [debug line = 100:4]
  store i32 0, i32* %database_index, align 4, !dbg !357 ; [debug line = 101:8]
  br label %46, !dbg !357                         ; [debug line = 101:8]

; <label>:46                                      ; preds = %64, %42
  %47 = load i32* %database_index, align 4, !dbg !357 ; [#uses=1 type=i32] [debug line = 101:8]
  %48 = load i32* %4, align 4, !dbg !357          ; [#uses=1 type=i32] [debug line = 101:8]
  %49 = icmp ult i32 %47, %48, !dbg !357          ; [#uses=1 type=i1] [debug line = 101:8]
  br i1 %49, label %50, label %67, !dbg !357      ; [debug line = 101:8]

; <label>:50                                      ; preds = %46
  store i32 0, i32* %i, align 4, !dbg !359        ; [debug line = 102:9]
  br label %51, !dbg !359                         ; [debug line = 102:9]

; <label>:51                                      ; preds = %57, %50
  %52 = load i32* %i, align 4, !dbg !359          ; [#uses=1 type=i32] [debug line = 102:9]
  %53 = icmp slt i32 %52, 64, !dbg !359           ; [#uses=1 type=i1] [debug line = 102:9]
  br i1 %53, label %54, label %60, !dbg !359      ; [debug line = 102:9]

; <label>:54                                      ; preds = %51
  %55 = load %"class.hls::stream"** %3, align 8, !dbg !362 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 103:22]
  %56 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %55), !dbg !362 ; [#uses=1 type=i8] [debug line = 103:22]
  store i8 %56, i8* %8, align 1, !dbg !362        ; [debug line = 103:22]
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream"* @_ZL9db_stream, i8* %8), !dbg !362 ; [debug line = 103:22]
  br label %57, !dbg !364                         ; [debug line = 104:5]

; <label>:57                                      ; preds = %54
  %58 = load i32* %i, align 4, !dbg !365          ; [#uses=1 type=i32] [debug line = 102:21]
  %59 = add nsw i32 %58, 1, !dbg !365             ; [#uses=1 type=i32] [debug line = 102:21]
  store i32 %59, i32* %i, align 4, !dbg !365      ; [debug line = 102:21]
  br label %51, !dbg !365                         ; [debug line = 102:21]

; <label>:60                                      ; preds = %51
  %61 = load %"class.hls::stream.0"** %7, align 8, !dbg !366 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 105:5]
  %62 = call zeroext i1 @_Z16match_db_contactv(), !dbg !367 ; [#uses=1 type=i1] [debug line = 105:38]
  %63 = zext i1 %62 to i32, !dbg !367             ; [#uses=1 type=i32] [debug line = 105:38]
  store i32 %63, i32* %9, align 4, !dbg !367      ; [debug line = 105:38]
  call void @_ZN3hls6streamIjE5writeERKj(%"class.hls::stream.0"* %61, i32* %9), !dbg !367 ; [debug line = 105:38]
  br label %64, !dbg !368                         ; [debug line = 106:4]

; <label>:64                                      ; preds = %60
  %65 = load i32* %database_index, align 4, !dbg !369 ; [#uses=1 type=i32] [debug line = 101:57]
  %66 = add nsw i32 %65, 1, !dbg !369             ; [#uses=1 type=i32] [debug line = 101:57]
  store i32 %66, i32* %database_index, align 4, !dbg !369 ; [debug line = 101:57]
  br label %46, !dbg !369                         ; [debug line = 101:57]

; <label>:67                                      ; preds = %46
  br label %76, !dbg !370                         ; [debug line = 107:4]

; <label>:68                                      ; preds = %0
  %69 = load i32** %5, align 8, !dbg !371         ; [#uses=1 type=i32*] [debug line = 110:4]
  store i32 0, i32* %69, align 4, !dbg !371       ; [debug line = 110:4]
  store i32 0, i32* @_ZL13contacts_size, align 4, !dbg !372 ; [debug line = 111:4]
  %70 = load i32* @_ZL13contacts_size, align 4, !dbg !373 ; [#uses=1 type=i32] [debug line = 112:4]
  %71 = load i32** %6, align 8, !dbg !373         ; [#uses=1 type=i32*] [debug line = 112:4]
  store i32 %70, i32* %71, align 4, !dbg !373     ; [debug line = 112:4]
  br label %76, !dbg !374                         ; [debug line = 113:4]

; <label>:72                                      ; preds = %0
  %73 = load i32* @_ZL13contacts_size, align 4, !dbg !375 ; [#uses=1 type=i32] [debug line = 116:4]
  %74 = load i32** %6, align 8, !dbg !375         ; [#uses=1 type=i32*] [debug line = 116:4]
  store i32 %73, i32* %74, align 4, !dbg !375     ; [debug line = 116:4]
  %75 = load i32** %5, align 8, !dbg !376         ; [#uses=1 type=i32*] [debug line = 117:4]
  store i32 3, i32* %75, align 4, !dbg !376       ; [debug line = 117:4]
  br label %76, !dbg !377                         ; [debug line = 118:4]

; <label>:76                                      ; preds = %72, %68, %67, %41
  ret void, !dbg !378                             ; [debug line = 120:1]
}

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=10]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIjE5writeERKj(%"class.hls::stream.0"* %this, i32* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %2 = alloca i32*, align 8                       ; [#uses=2 type=i32**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !379), !dbg !381 ; [debug line = 144:48] [debug variable = this]
  store i32* %din, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !382), !dbg !383 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !384), !dbg !386 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load i32** %2, align 8, !dbg !387          ; [#uses=1 type=i32*] [debug line = 145:31]
  %5 = load i32* %4, align 4, !dbg !387           ; [#uses=1 type=i32] [debug line = 145:31]
  store i32 %5, i32* %tmp, align 4, !dbg !387     ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream.0"* %3, i32 0, i32 0, !dbg !388 ; [#uses=1 type=i32*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(i32* %6, i32* %tmp) nounwind, !dbg !388 ; [debug line = 146:9]
  ret void, !dbg !389                             ; [debug line = 147:5]
}

; [#uses=2]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIhEC2Ev(%"class.hls::stream"* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !390), !dbg !391 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=0 type=%"class.hls::stream"*]
  ret void, !dbg !392                             ; [debug line = 84:5]
}

; [#uses=1]
define internal void @_GLOBAL__I_a() nounwind section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

!llvm.dbg.cu = !{!0, !3}
!hls.encrypted.func = !{}
!opencl.kernels = !{!149, !156, !162, !168, !174, !180, !182, !183, !184}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/sha512.pragma.2.c", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !1, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !4, metadata !133} ; [ DW_TAG_compile_unit ]
!4 = metadata !{metadata !5}
!5 = metadata !{metadata !6, metadata !15, metadata !74, metadata !77, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!6 = metadata !{i32 786478, i32 0, metadata !7, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !7, i32 13, metadata !8, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @_Z7_memcpyPhS_i, null, null, metadata !13, i32 13} ; [ DW_TAG_subprogram ]
!7 = metadata !{i32 786473, metadata !"contact_discovery_axi_experimental/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !9, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!9 = metadata !{null, metadata !10, metadata !10, metadata !12}
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !7, metadata !"compare", metadata !"compare", metadata !"_Z7compareRN3hls6streamIhEES2_", metadata !7, i32 20, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z7compareRN3hls6streamIhEES2_, null, null, metadata !13, i32 20} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !18, metadata !19, metadata !19}
!18 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_reference_type ]
!20 = metadata !{i32 786434, metadata !21, metadata !"stream<unsigned char>", metadata !22, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !23, i32 0, null, metadata !72} ; [ DW_TAG_class_type ]
!21 = metadata !{i32 786489, null, metadata !"hls", metadata !22, i32 69} ; [ DW_TAG_namespace ]
!22 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!23 = metadata !{metadata !24, metadata !25, metadata !29, metadata !35, metadata !40, metadata !43, metadata !47, metadata !52, metadata !56, metadata !57, metadata !58, metadata !61, metadata !64, metadata !65, metadata !68}
!24 = metadata !{i32 786445, metadata !20, metadata !"V", metadata !22, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!25 = metadata !{i32 786478, i32 0, metadata !20, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 83, metadata !26, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28}
!28 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !20} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786478, i32 0, metadata !20, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 86, metadata !30, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 86} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !28, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!34 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786478, i32 0, metadata !20, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 91, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !13, i32 91} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !28, metadata !38}
!38 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_reference_type ]
!39 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ]
!40 = metadata !{i32 786478, i32 0, metadata !20, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !22, i32 94, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !13, i32 94} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{metadata !19, metadata !28, metadata !38}
!43 = metadata !{i32 786478, i32 0, metadata !20, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !22, i32 101, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 101} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !28, metadata !46}
!46 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_reference_type ]
!47 = metadata !{i32 786478, i32 0, metadata !20, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !22, i32 105, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 105} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !28, metadata !50}
!50 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_reference_type ]
!51 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!52 = metadata !{i32 786478, i32 0, metadata !20, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !22, i32 112, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 112} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !18, metadata !55}
!55 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !39} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786478, i32 0, metadata !20, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !22, i32 117, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 117} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786478, i32 0, metadata !20, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !22, i32 123, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 123} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786478, i32 0, metadata !20, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !22, i32 129, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 129} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{metadata !11, metadata !28}
!61 = metadata !{i32 786478, i32 0, metadata !20, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !22, i32 136, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 136} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{metadata !18, metadata !28, metadata !46}
!64 = metadata !{i32 786478, i32 0, metadata !20, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !22, i32 144, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786478, i32 0, metadata !20, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !22, i32 150, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 150} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !18, metadata !28, metadata !50}
!68 = metadata !{i32 786478, i32 0, metadata !20, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !22, i32 157, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 157} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{metadata !71, metadata !28}
!71 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !11, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!74 = metadata !{i32 786478, i32 0, metadata !7, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contactv", metadata !7, i32 33, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 ()* @_Z16match_db_contactv, null, null, metadata !13, i32 33} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !18}
!77 = metadata !{i32 786478, i32 0, metadata !7, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhRN3hls6streamIhEEjPiS4_RNS1_IjEE", metadata !7, i32 60, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i8*, %"class.hls::stream"*, i32, i32*, i32*, %"class.hls::stream.0"*)* @_Z17contact_discoveryiPhRN3hls6streamIhEEjPiS4_RNS1_IjEE, null, null, metadata !13, i32 68} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{null, metadata !12, metadata !10, metadata !19, metadata !71, metadata !80, metadata !80, metadata !81}
!80 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!81 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_reference_type ]
!82 = metadata !{i32 786434, metadata !21, metadata !"stream<unsigned int>", metadata !22, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !83, i32 0, null, metadata !126} ; [ DW_TAG_class_type ]
!83 = metadata !{metadata !84, metadata !85, metadata !89, metadata !92, metadata !97, metadata !100, metadata !104, metadata !109, metadata !113, metadata !114, metadata !115, metadata !118, metadata !121, metadata !122, metadata !125}
!84 = metadata !{i32 786445, metadata !82, metadata !"V", metadata !22, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ]
!85 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 83, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !88}
!88 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !82} ; [ DW_TAG_pointer_type ]
!89 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 86, metadata !90, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 86} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{null, metadata !88, metadata !32}
!92 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 91, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !13, i32 91} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !88, metadata !95}
!95 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_reference_type ]
!96 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_const_type ]
!97 = metadata !{i32 786478, i32 0, metadata !82, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIjEaSERKS1_", metadata !22, i32 94, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !13, i32 94} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !81, metadata !88, metadata !95}
!100 = metadata !{i32 786478, i32 0, metadata !82, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIjErsERj", metadata !22, i32 101, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 101} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{null, metadata !88, metadata !103}
!103 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_reference_type ]
!104 = metadata !{i32 786478, i32 0, metadata !82, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIjElsERKj", metadata !22, i32 105, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 105} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !88, metadata !107}
!107 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_reference_type ]
!108 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_const_type ]
!109 = metadata !{i32 786478, i32 0, metadata !82, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIjE5emptyEv", metadata !22, i32 112, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 112} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{metadata !18, metadata !112}
!112 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !96} ; [ DW_TAG_pointer_type ]
!113 = metadata !{i32 786478, i32 0, metadata !82, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIjE4fullEv", metadata !22, i32 117, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 117} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readERj", metadata !22, i32 123, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 123} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readEv", metadata !22, i32 129, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 129} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{metadata !71, metadata !88}
!118 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIjE7read_nbERj", metadata !22, i32 136, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 136} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{metadata !18, metadata !88, metadata !103}
!121 = metadata !{i32 786478, i32 0, metadata !82, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !22, i32 144, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786478, i32 0, metadata !82, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIjE8write_nbERKj", metadata !22, i32 150, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 150} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{metadata !18, metadata !88, metadata !107}
!125 = metadata !{i32 786478, i32 0, metadata !82, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIjE4sizeEv", metadata !22, i32 157, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 157} ; [ DW_TAG_subprogram ]
!126 = metadata !{metadata !127}
!127 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !71, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!128 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !22, i32 144, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, i32*)* @_ZN3hls6streamIjE5writeERKj, null, metadata !121, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !22, i32 144, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i8*)* @_ZN3hls6streamIhE5writeERKh, null, metadata !64, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !22, i32 129, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (%"class.hls::stream"*)* @_ZN3hls6streamIhE4readEv, null, metadata !58, metadata !13, i32 129} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIhEC1Ev", metadata !22, i32 83, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIhEC1Ev, null, metadata !25, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIhEC2Ev", metadata !22, i32 83, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIhEC2Ev, null, metadata !25, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !135, metadata !136, metadata !139, metadata !140, metadata !141, metadata !143, metadata !144, metadata !145}
!135 = metadata !{i32 786484, i32 0, null, metadata !"db_stream", metadata !"db_stream", metadata !"_ZL9db_stream", metadata !7, i32 10, metadata !20, i32 1, i32 1, %"class.hls::stream"* @_ZL9db_stream} ; [ DW_TAG_variable ]
!136 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !137, i32 315, metadata !138, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!137 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!138 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !137, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!139 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !137, i32 316, metadata !138, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!140 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !137, i32 317, metadata !138, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!141 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !142, i32 26, metadata !12, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!142 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!143 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !142, i32 30, metadata !12, i32 0, i32 1, i32* @_sys_nerr} ; [ DW_TAG_variable ]
!144 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !7, i32 9, metadata !12, i32 1, i32 1, i32* @_ZL13contacts_size} ; [ DW_TAG_variable ]
!145 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !7, i32 8, metadata !146, i32 1, i32 1, [8192 x i8]* @_ZL8contacts} ; [ DW_TAG_variable ]
!146 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !11, metadata !147, i32 0, i32 0} ; [ DW_TAG_array_type ]
!147 = metadata !{metadata !148}
!148 = metadata !{i32 786465, i64 0, i64 8191}    ; [ DW_TAG_subrange_type ]
!149 = metadata !{void (i8*, i8*, i32)* @_Z7_memcpyPhS_i, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155}
!150 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!151 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!153 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!154 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!155 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!156 = metadata !{i1 (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z7compareRN3hls6streamIhEES2_, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !155}
!157 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!158 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &"}
!160 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!161 = metadata !{metadata !"kernel_arg_name", metadata !"contact", metadata !"db_item"}
!162 = metadata !{i1 ()* @_Z16match_db_contactv, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !155}
!163 = metadata !{metadata !"kernel_arg_addr_space"}
!164 = metadata !{metadata !"kernel_arg_access_qual"}
!165 = metadata !{metadata !"kernel_arg_type"}
!166 = metadata !{metadata !"kernel_arg_type_qual"}
!167 = metadata !{metadata !"kernel_arg_name"}
!168 = metadata !{void (i32, i8*, %"class.hls::stream"*, i32, i32*, i32*, %"class.hls::stream.0"*)* @_Z17contact_discoveryiPhRN3hls6streamIhEEjPiS4_RNS1_IjEE, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !155}
!169 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0}
!170 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"hls::stream<uchar> &", metadata !"uint", metadata !"int*", metadata !"int*", metadata !"hls::stream<uint> &"}
!172 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!173 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"db_in", metadata !"db_size_in", metadata !"error_out", metadata !"contacts_size_out", metadata !"results_out"}
!174 = metadata !{void (%"class.hls::stream.0"*, i32*)* @_ZN3hls6streamIjE5writeERKj, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !155}
!175 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!176 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"const uint &"}
!178 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!179 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!180 = metadata !{void (%"class.hls::stream"*, i8*)* @_ZN3hls6streamIhE5writeERKh, metadata !175, metadata !176, metadata !181, metadata !178, metadata !179, metadata !155}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!182 = metadata !{i8 (%"class.hls::stream"*)* @_ZN3hls6streamIhE4readEv, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !155}
!183 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIhEC1Ev, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !155}
!184 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIhEC2Ev, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !155}
!185 = metadata !{i32 786689, metadata !131, metadata !"this", metadata !22, i32 16777299, metadata !186, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!187 = metadata !{i32 83, i32 43, metadata !131, null}
!188 = metadata !{i32 84, i32 5, metadata !131, null}
!189 = metadata !{i32 786689, metadata !6, metadata !"dest", metadata !7, i32 16777229, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 13, i32 29, metadata !6, null}
!191 = metadata !{i32 786689, metadata !6, metadata !"src", metadata !7, i32 33554445, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 13, i32 50, metadata !6, null}
!193 = metadata !{i32 786689, metadata !6, metadata !"length", metadata !7, i32 50331661, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 13, i32 59, metadata !6, null}
!195 = metadata !{i32 786688, metadata !196, metadata !"i", metadata !7, i32 14, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 786443, metadata !6, i32 13, i32 66, metadata !7, i32 0} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 14, i32 6, metadata !196, null}
!198 = metadata !{i32 15, i32 6, metadata !199, null}
!199 = metadata !{i32 786443, metadata !196, i32 15, i32 2, metadata !7, i32 1} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 16, i32 3, metadata !201, null}
!201 = metadata !{i32 786443, metadata !199, i32 15, i32 25, metadata !7, i32 2} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 17, i32 2, metadata !201, null}
!203 = metadata !{i32 15, i32 21, metadata !199, null}
!204 = metadata !{i32 18, i32 1, metadata !196, null}
!205 = metadata !{i32 786689, metadata !15, metadata !"contact", metadata !7, i32 16777236, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 20, i32 42, metadata !15, null}
!207 = metadata !{i32 786689, metadata !15, metadata !"db_item", metadata !7, i32 33554452, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!208 = metadata !{i32 20, i32 79, metadata !15, null}
!209 = metadata !{i32 786688, metadata !210, metadata !"i", metadata !7, i32 21, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 786443, metadata !15, i32 20, i32 87, metadata !7, i32 3} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 21, i32 6, metadata !210, null}
!212 = metadata !{i32 786688, metadata !210, metadata !"j", metadata !7, i32 21, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 21, i32 9, metadata !210, null}
!214 = metadata !{i32 786688, metadata !210, metadata !"found", metadata !7, i32 22, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 22, i32 7, metadata !210, null}
!216 = metadata !{i32 22, i32 19, metadata !210, null}
!217 = metadata !{i32 786688, metadata !210, metadata !"results_local", metadata !7, i32 23, metadata !218, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !18, metadata !219, i32 0, i32 0} ; [ DW_TAG_array_type ]
!219 = metadata !{metadata !220}
!220 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!221 = metadata !{i32 23, i32 7, metadata !210, null}
!222 = metadata !{i32 24, i32 6, metadata !223, null}
!223 = metadata !{i32 786443, metadata !210, i32 24, i32 2, metadata !7, i32 4} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 25, i32 23, metadata !225, null}
!225 = metadata !{i32 786443, metadata !223, i32 24, i32 21, metadata !7, i32 5} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 25, i32 41, metadata !225, null}
!227 = metadata !{i32 26, i32 2, metadata !225, null}
!228 = metadata !{i32 24, i32 17, metadata !223, null}
!229 = metadata !{i32 27, i32 6, metadata !230, null}
!230 = metadata !{i32 786443, metadata !210, i32 27, i32 2, metadata !7, i32 6} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 28, i32 3, metadata !232, null}
!232 = metadata !{i32 786443, metadata !230, i32 27, i32 21, metadata !7, i32 7} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 29, i32 2, metadata !232, null}
!234 = metadata !{i32 27, i32 17, metadata !230, null}
!235 = metadata !{i32 30, i32 2, metadata !210, null}
!236 = metadata !{i32 786689, metadata !130, metadata !"this", metadata !22, i32 16777345, metadata !186, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!237 = metadata !{i32 129, i32 56, metadata !130, null}
!238 = metadata !{i32 786688, metadata !239, metadata !"tmp", metadata !22, i32 130, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 786443, metadata !130, i32 129, i32 63, metadata !22, i32 27} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 130, i32 22, metadata !239, null}
!241 = metadata !{i32 131, i32 9, metadata !239, null}
!242 = metadata !{i32 132, i32 9, metadata !239, null}
!243 = metadata !{i32 786688, metadata !244, metadata !"contacts_index", metadata !7, i32 34, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 786443, metadata !74, i32 33, i32 24, metadata !7, i32 8} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 34, i32 6, metadata !244, null}
!246 = metadata !{i32 786688, metadata !244, metadata !"i", metadata !7, i32 34, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 34, i32 22, metadata !244, null}
!248 = metadata !{i32 786688, metadata !244, metadata !"matched", metadata !7, i32 35, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 35, i32 7, metadata !244, null}
!250 = metadata !{i32 35, i32 22, metadata !244, null}
!251 = metadata !{i32 786688, metadata !244, metadata !"local_results", metadata !7, i32 36, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !18, metadata !253, i32 0, i32 0} ; [ DW_TAG_array_type ]
!253 = metadata !{metadata !254}
!254 = metadata !{i32 786465, i64 0, i64 127}     ; [ DW_TAG_subrange_type ]
!255 = metadata !{i32 36, i32 7, metadata !244, null}
!256 = metadata !{i32 786688, metadata !244, metadata !"db_item_temp", metadata !7, i32 37, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !11, metadata !219, i32 0, i32 0} ; [ DW_TAG_array_type ]
!258 = metadata !{i32 37, i32 16, metadata !244, null}
!259 = metadata !{i32 38, i32 6, metadata !260, null}
!260 = metadata !{i32 786443, metadata !244, i32 38, i32 2, metadata !7, i32 9} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 39, i32 21, metadata !262, null}
!262 = metadata !{i32 786443, metadata !260, i32 38, i32 21, metadata !7, i32 10} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 40, i32 2, metadata !262, null}
!264 = metadata !{i32 38, i32 17, metadata !260, null}
!265 = metadata !{i32 41, i32 6, metadata !266, null}
!266 = metadata !{i32 786443, metadata !244, i32 41, i32 2, metadata !7, i32 11} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 41, i32 64, metadata !268, null}
!268 = metadata !{i32 786443, metadata !266, i32 41, i32 63, metadata !7, i32 12} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 786688, metadata !268, metadata !"contact", metadata !7, i32 42, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 42, i32 30, metadata !268, null}
!271 = metadata !{i32 42, i32 37, metadata !268, null}
!272 = metadata !{i32 43, i32 1, metadata !268, null}
!273 = metadata !{i32 786688, metadata !268, metadata !"db_item", metadata !7, i32 44, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 44, i32 29, metadata !268, null}
!275 = metadata !{i32 44, i32 36, metadata !268, null}
!276 = metadata !{i32 45, i32 1, metadata !268, null}
!277 = metadata !{i32 46, i32 6, metadata !278, null}
!278 = metadata !{i32 786443, metadata !268, i32 46, i32 2, metadata !7, i32 13} ; [ DW_TAG_lexical_block ]
!279 = metadata !{i32 47, i32 4, metadata !280, null}
!280 = metadata !{i32 786443, metadata !278, i32 46, i32 21, metadata !7, i32 14} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 48, i32 4, metadata !280, null}
!282 = metadata !{i32 49, i32 3, metadata !280, null}
!283 = metadata !{i32 46, i32 17, metadata !278, null}
!284 = metadata !{i32 50, i32 35, metadata !268, null}
!285 = metadata !{i32 51, i32 2, metadata !268, null}
!286 = metadata !{i32 41, i32 46, metadata !266, null}
!287 = metadata !{i32 52, i32 6, metadata !288, null}
!288 = metadata !{i32 786443, metadata !244, i32 52, i32 2, metadata !7, i32 15} ; [ DW_TAG_lexical_block ]
!289 = metadata !{i32 53, i32 3, metadata !290, null}
!290 = metadata !{i32 786443, metadata !288, i32 52, i32 63, metadata !7, i32 16} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 54, i32 2, metadata !290, null}
!292 = metadata !{i32 52, i32 46, metadata !288, null}
!293 = metadata !{i32 55, i32 2, metadata !244, null}
!294 = metadata !{i32 786689, metadata !129, metadata !"this", metadata !22, i32 16777360, metadata !186, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!295 = metadata !{i32 144, i32 48, metadata !129, null}
!296 = metadata !{i32 786689, metadata !129, metadata !"din", metadata !22, i32 33554576, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!297 = metadata !{i32 144, i32 74, metadata !129, null}
!298 = metadata !{i32 786688, metadata !299, metadata !"tmp", metadata !22, i32 145, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 786443, metadata !129, i32 144, i32 79, metadata !22, i32 26} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 145, i32 22, metadata !299, null}
!301 = metadata !{i32 145, i32 31, metadata !299, null}
!302 = metadata !{i32 146, i32 9, metadata !299, null}
!303 = metadata !{i32 147, i32 5, metadata !299, null}
!304 = metadata !{i32 786689, metadata !77, metadata !"operation", metadata !7, i32 16777277, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!305 = metadata !{i32 61, i32 6, metadata !77, null}
!306 = metadata !{i32 786689, metadata !77, metadata !"contact_in", metadata !7, i32 33554494, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!307 = metadata !{i32 62, i32 16, metadata !77, null}
!308 = metadata !{i32 786689, metadata !77, metadata !"db_in", metadata !7, i32 50331711, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!309 = metadata !{i32 63, i32 30, metadata !77, null}
!310 = metadata !{i32 786689, metadata !77, metadata !"db_size_in", metadata !7, i32 67108928, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!311 = metadata !{i32 64, i32 15, metadata !77, null}
!312 = metadata !{i32 786689, metadata !77, metadata !"error_out", metadata !7, i32 83886145, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!313 = metadata !{i32 65, i32 7, metadata !77, null}
!314 = metadata !{i32 786689, metadata !77, metadata !"contacts_size_out", metadata !7, i32 100663362, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!315 = metadata !{i32 66, i32 7, metadata !77, null}
!316 = metadata !{i32 786689, metadata !77, metadata !"results_out", metadata !7, i32 117440579, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!317 = metadata !{i32 67, i32 29, metadata !77, null}
!318 = metadata !{i32 68, i32 3, metadata !319, null}
!319 = metadata !{i32 786443, metadata !77, i32 68, i32 2, metadata !7, i32 17} ; [ DW_TAG_lexical_block ]
!320 = metadata !{i32 69, i32 1, metadata !319, null}
!321 = metadata !{i32 70, i32 1, metadata !319, null}
!322 = metadata !{i32 71, i32 1, metadata !319, null}
!323 = metadata !{i32 72, i32 1, metadata !319, null}
!324 = metadata !{i32 73, i32 1, metadata !319, null}
!325 = metadata !{i32 74, i32 1, metadata !319, null}
!326 = metadata !{i32 75, i32 1, metadata !319, null}
!327 = metadata !{i32 76, i32 1, metadata !319, null}
!328 = metadata !{i32 77, i32 1, metadata !319, null}
!329 = metadata !{i32 78, i32 1, metadata !319, null}
!330 = metadata !{i32 79, i32 1, metadata !319, null}
!331 = metadata !{i32 786688, metadata !319, metadata !"database_index", metadata !7, i32 80, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!332 = metadata !{i32 80, i32 6, metadata !319, null}
!333 = metadata !{i32 786688, metadata !319, metadata !"contacts_index", metadata !7, i32 80, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!334 = metadata !{i32 80, i32 22, metadata !319, null}
!335 = metadata !{i32 786688, metadata !319, metadata !"i", metadata !7, i32 80, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!336 = metadata !{i32 80, i32 38, metadata !319, null}
!337 = metadata !{i32 786688, metadata !319, metadata !"matched", metadata !7, i32 81, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!338 = metadata !{i32 81, i32 7, metadata !319, null}
!339 = metadata !{i32 786688, metadata !319, metadata !"current_matched", metadata !7, i32 81, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!340 = metadata !{i32 81, i32 16, metadata !319, null}
!341 = metadata !{i32 83, i32 2, metadata !319, null}
!342 = metadata !{i32 86, i32 4, metadata !343, null}
!343 = metadata !{i32 786443, metadata !319, i32 83, i32 19, metadata !7, i32 18} ; [ DW_TAG_lexical_block ]
!344 = metadata !{i32 87, i32 4, metadata !343, null}
!345 = metadata !{i32 88, i32 4, metadata !343, null}
!346 = metadata !{i32 89, i32 5, metadata !347, null}
!347 = metadata !{i32 786443, metadata !343, i32 88, i32 28, metadata !7, i32 19} ; [ DW_TAG_lexical_block ]
!348 = metadata !{i32 90, i32 5, metadata !347, null}
!349 = metadata !{i32 91, i32 4, metadata !347, null}
!350 = metadata !{i32 92, i32 5, metadata !351, null}
!351 = metadata !{i32 786443, metadata !343, i32 91, i32 10, metadata !7, i32 20} ; [ DW_TAG_lexical_block ]
!352 = metadata !{i32 93, i32 5, metadata !351, null}
!353 = metadata !{i32 94, i32 5, metadata !351, null}
!354 = metadata !{i32 96, i32 4, metadata !343, null}
!355 = metadata !{i32 99, i32 4, metadata !343, null}
!356 = metadata !{i32 100, i32 4, metadata !343, null}
!357 = metadata !{i32 101, i32 8, metadata !358, null}
!358 = metadata !{i32 786443, metadata !343, i32 101, i32 4, metadata !7, i32 21} ; [ DW_TAG_lexical_block ]
!359 = metadata !{i32 102, i32 9, metadata !360, null}
!360 = metadata !{i32 786443, metadata !361, i32 102, i32 5, metadata !7, i32 23} ; [ DW_TAG_lexical_block ]
!361 = metadata !{i32 786443, metadata !358, i32 101, i32 74, metadata !7, i32 22} ; [ DW_TAG_lexical_block ]
!362 = metadata !{i32 103, i32 22, metadata !363, null}
!363 = metadata !{i32 786443, metadata !360, i32 102, i32 25, metadata !7, i32 24} ; [ DW_TAG_lexical_block ]
!364 = metadata !{i32 104, i32 5, metadata !363, null}
!365 = metadata !{i32 102, i32 21, metadata !360, null}
!366 = metadata !{i32 105, i32 5, metadata !361, null}
!367 = metadata !{i32 105, i32 38, metadata !361, null}
!368 = metadata !{i32 106, i32 4, metadata !361, null}
!369 = metadata !{i32 101, i32 57, metadata !358, null}
!370 = metadata !{i32 107, i32 4, metadata !343, null}
!371 = metadata !{i32 110, i32 4, metadata !343, null}
!372 = metadata !{i32 111, i32 4, metadata !343, null}
!373 = metadata !{i32 112, i32 4, metadata !343, null}
!374 = metadata !{i32 113, i32 4, metadata !343, null}
!375 = metadata !{i32 116, i32 4, metadata !343, null}
!376 = metadata !{i32 117, i32 4, metadata !343, null}
!377 = metadata !{i32 118, i32 4, metadata !343, null}
!378 = metadata !{i32 120, i32 1, metadata !319, null}
!379 = metadata !{i32 786689, metadata !128, metadata !"this", metadata !22, i32 16777360, metadata !380, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!380 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ]
!381 = metadata !{i32 144, i32 48, metadata !128, null}
!382 = metadata !{i32 786689, metadata !128, metadata !"din", metadata !22, i32 33554576, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!383 = metadata !{i32 144, i32 74, metadata !128, null}
!384 = metadata !{i32 786688, metadata !385, metadata !"tmp", metadata !22, i32 145, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!385 = metadata !{i32 786443, metadata !128, i32 144, i32 79, metadata !22, i32 25} ; [ DW_TAG_lexical_block ]
!386 = metadata !{i32 145, i32 22, metadata !385, null}
!387 = metadata !{i32 145, i32 31, metadata !385, null}
!388 = metadata !{i32 146, i32 9, metadata !385, null}
!389 = metadata !{i32 147, i32 5, metadata !385, null}
!390 = metadata !{i32 786689, metadata !132, metadata !"this", metadata !22, i32 16777299, metadata !186, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!391 = metadata !{i32 83, i32 43, metadata !132, null}
!392 = metadata !{i32 84, i32 5, metadata !393, null}
!393 = metadata !{i32 786443, metadata !132, i32 83, i32 52, metadata !22, i32 28} ; [ DW_TAG_lexical_block ]
