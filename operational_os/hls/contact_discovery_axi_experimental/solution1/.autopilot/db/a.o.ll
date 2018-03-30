; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream" = type { i8 }

@_ZL9db_stream = internal global %"class.hls::stream" zeroinitializer, align 1 ; [#uses=3 type=%"class.hls::stream"*]
@_ZL8contacts = internal global [8192 x i8] zeroinitializer, align 16 ; [#uses=2 type=[8192 x i8]*]
@_ZL7results = internal global [30000 x i1] zeroinitializer, align 16 ; [#uses=2 type=[30000 x i1]*]
@.str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@_ZL13contacts_size = internal global i32 0, align 4 ; [#uses=12 type=i32*]
@_ZL13database_size = internal global i32 0, align 4 ; [#uses=12 type=i32*]
@_ZL8database = internal global [1920000 x i8] zeroinitializer, align 16 ; [#uses=2 type=[1920000 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
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
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !147), !dbg !149 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @_ZN3hls6streamIhEC2Ev(%"class.hls::stream"* %2), !dbg !150 ; [debug line = 84:5]
  ret void, !dbg !150                             ; [debug line = 84:5]
}

; [#uses=2]
define void @_Z7_memcpyPhS_i(i8* %dest, i8* %src, i32 %length) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i8* %dest, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !151), !dbg !152 ; [debug line = 19:29] [debug variable = dest]
  store i8* %src, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !153), !dbg !154 ; [debug line = 19:50] [debug variable = src]
  store i32 %length, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !155), !dbg !156 ; [debug line = 19:59] [debug variable = length]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !157), !dbg !159 ; [debug line = 20:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !160        ; [debug line = 21:6]
  br label %4, !dbg !160                          ; [debug line = 21:6]

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %i, align 4, !dbg !160           ; [#uses=1 type=i32] [debug line = 21:6]
  %6 = load i32* %3, align 4, !dbg !160           ; [#uses=1 type=i32] [debug line = 21:6]
  %7 = icmp slt i32 %5, %6, !dbg !160             ; [#uses=1 type=i1] [debug line = 21:6]
  br i1 %7, label %8, label %21, !dbg !160        ; [debug line = 21:6]

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4, !dbg !162           ; [#uses=1 type=i32] [debug line = 22:3]
  %10 = sext i32 %9 to i64, !dbg !162             ; [#uses=1 type=i64] [debug line = 22:3]
  %11 = load i8** %2, align 8, !dbg !162          ; [#uses=1 type=i8*] [debug line = 22:3]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !162 ; [#uses=1 type=i8*] [debug line = 22:3]
  %13 = load i8* %12, align 1, !dbg !162          ; [#uses=1 type=i8] [debug line = 22:3]
  %14 = load i32* %i, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 22:3]
  %15 = sext i32 %14 to i64, !dbg !162            ; [#uses=1 type=i64] [debug line = 22:3]
  %16 = load i8** %1, align 8, !dbg !162          ; [#uses=1 type=i8*] [debug line = 22:3]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !162 ; [#uses=1 type=i8*] [debug line = 22:3]
  store i8 %13, i8* %17, align 1, !dbg !162       ; [debug line = 22:3]
  br label %18, !dbg !164                         ; [debug line = 23:2]

; <label>:18                                      ; preds = %8
  %19 = load i32* %i, align 4, !dbg !165          ; [#uses=1 type=i32] [debug line = 21:21]
  %20 = add nsw i32 %19, 1, !dbg !165             ; [#uses=1 type=i32] [debug line = 21:21]
  store i32 %20, i32* %i, align 4, !dbg !165      ; [debug line = 21:21]
  br label %4, !dbg !165                          ; [debug line = 21:21]

; <label>:21                                      ; preds = %4
  ret void, !dbg !166                             ; [debug line = 24:1]
}

; [#uses=38]
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
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !167), !dbg !168 ; [debug line = 26:42] [debug variable = contact]
  store %"class.hls::stream"* %db_item, %"class.hls::stream"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !169), !dbg !170 ; [debug line = 26:79] [debug variable = db_item]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !171), !dbg !173 ; [debug line = 29:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !174), !dbg !175 ; [debug line = 29:9] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i1* %found}, metadata !176), !dbg !177 ; [debug line = 30:7] [debug variable = found]
  store i1 true, i1* %found, align 1, !dbg !178   ; [debug line = 30:19]
  call void @llvm.dbg.declare(metadata !{[64 x i1]* %results_local}, metadata !179), !dbg !183 ; [debug line = 31:7] [debug variable = results_local]
  store i32 0, i32* %i, align 4, !dbg !184        ; [debug line = 37:6]
  br label %3, !dbg !184                          ; [debug line = 37:6]

; <label>:3                                       ; preds = %17, %0
  %4 = load i32* %i, align 4, !dbg !184           ; [#uses=1 type=i32] [debug line = 37:6]
  %5 = icmp slt i32 %4, 64, !dbg !184             ; [#uses=1 type=i1] [debug line = 37:6]
  br i1 %5, label %6, label %20, !dbg !184        ; [debug line = 37:6]

; <label>:6                                       ; preds = %3
  %7 = load %"class.hls::stream"** %1, align 8, !dbg !186 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 42:23]
  %8 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %7), !dbg !186 ; [#uses=1 type=i8] [debug line = 42:23]
  %9 = zext i8 %8 to i32, !dbg !186               ; [#uses=1 type=i32] [debug line = 42:23]
  %10 = load %"class.hls::stream"** %2, align 8, !dbg !188 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 42:41]
  %11 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %10), !dbg !188 ; [#uses=1 type=i8] [debug line = 42:41]
  %12 = zext i8 %11 to i32, !dbg !188             ; [#uses=1 type=i32] [debug line = 42:41]
  %13 = icmp eq i32 %9, %12, !dbg !188            ; [#uses=1 type=i1] [debug line = 42:41]
  %14 = load i32* %i, align 4, !dbg !188          ; [#uses=1 type=i32] [debug line = 42:41]
  %15 = sext i32 %14 to i64, !dbg !188            ; [#uses=1 type=i64] [debug line = 42:41]
  %16 = getelementptr inbounds [64 x i1]* %results_local, i32 0, i64 %15, !dbg !188 ; [#uses=1 type=i1*] [debug line = 42:41]
  store i1 %13, i1* %16, align 1, !dbg !188       ; [debug line = 42:41]
  br label %17, !dbg !189                         ; [debug line = 43:2]

; <label>:17                                      ; preds = %6
  %18 = load i32* %i, align 4, !dbg !190          ; [#uses=1 type=i32] [debug line = 37:17]
  %19 = add nsw i32 %18, 1, !dbg !190             ; [#uses=1 type=i32] [debug line = 37:17]
  store i32 %19, i32* %i, align 4, !dbg !190      ; [debug line = 37:17]
  br label %3, !dbg !190                          ; [debug line = 37:17]

; <label>:20                                      ; preds = %3
  store i32 0, i32* %i, align 4, !dbg !191        ; [debug line = 44:6]
  br label %21, !dbg !191                         ; [debug line = 44:6]

; <label>:21                                      ; preds = %34, %20
  %22 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 44:6]
  %23 = icmp slt i32 %22, 64, !dbg !191           ; [#uses=1 type=i1] [debug line = 44:6]
  br i1 %23, label %24, label %37, !dbg !191      ; [debug line = 44:6]

; <label>:24                                      ; preds = %21
  %25 = load i32* %i, align 4, !dbg !193          ; [#uses=1 type=i32] [debug line = 45:3]
  %26 = sext i32 %25 to i64, !dbg !193            ; [#uses=1 type=i64] [debug line = 45:3]
  %27 = getelementptr inbounds [64 x i1]* %results_local, i32 0, i64 %26, !dbg !193 ; [#uses=1 type=i1*] [debug line = 45:3]
  %28 = load i1* %27, align 1, !dbg !193          ; [#uses=1 type=i1] [debug line = 45:3]
  %29 = zext i1 %28 to i32, !dbg !193             ; [#uses=1 type=i32] [debug line = 45:3]
  %30 = load i1* %found, align 1, !dbg !193       ; [#uses=1 type=i1] [debug line = 45:3]
  %31 = zext i1 %30 to i32, !dbg !193             ; [#uses=1 type=i32] [debug line = 45:3]
  %32 = and i32 %31, %29, !dbg !193               ; [#uses=1 type=i32] [debug line = 45:3]
  %33 = icmp ne i32 %32, 0, !dbg !193             ; [#uses=1 type=i1] [debug line = 45:3]
  store i1 %33, i1* %found, align 1, !dbg !193    ; [debug line = 45:3]
  br label %34, !dbg !195                         ; [debug line = 46:2]

; <label>:34                                      ; preds = %24
  %35 = load i32* %i, align 4, !dbg !196          ; [#uses=1 type=i32] [debug line = 44:17]
  %36 = add nsw i32 %35, 1, !dbg !196             ; [#uses=1 type=i32] [debug line = 44:17]
  store i32 %36, i32* %i, align 4, !dbg !196      ; [debug line = 44:17]
  br label %21, !dbg !196                         ; [debug line = 44:17]

; <label>:37                                      ; preds = %21
  %38 = load i1* %found, align 1, !dbg !197       ; [#uses=1 type=i1] [debug line = 47:2]
  ret i1 %38, !dbg !197                           ; [debug line = 47:2]
}

; [#uses=3]
define linkonce_odr zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %this) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !198), !dbg !199 ; [debug line = 129:56] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !200), !dbg !202 ; [debug line = 130:22] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream"* %2, i32 0, i32 0, !dbg !203 ; [#uses=1 type=i8*] [debug line = 131:9]
  call void (...)* @_ssdm_StreamRead(i8* %3, i8* %tmp) nounwind, !dbg !203 ; [debug line = 131:9]
  %4 = load i8* %tmp, align 1, !dbg !204          ; [#uses=1 type=i8] [debug line = 132:9]
  ret i8 %4, !dbg !204                            ; [debug line = 132:9]
}

; [#uses=1]
define void @_Z16match_db_contacti(i32 %database_index) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %contacts_index = alloca i32, align 4           ; [#uses=11 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=11 type=i32*]
  %matched = alloca i1, align 1                   ; [#uses=4 type=i1*]
  %local_results = alloca [128 x i1], align 16    ; [#uses=2 type=[128 x i1]*]
  %db_item_temp = alloca [64 x i8], align 16      ; [#uses=2 type=[64 x i8]*]
  %contact = alloca %"class.hls::stream", align 1 ; [#uses=3 type=%"class.hls::stream"*]
  %db_item = alloca %"class.hls::stream", align 1 ; [#uses=3 type=%"class.hls::stream"*]
  store i32 %database_index, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !205), !dbg !206 ; [debug line = 50:27] [debug variable = database_index]
  call void @llvm.dbg.declare(metadata !{i32* %contacts_index}, metadata !207), !dbg !209 ; [debug line = 52:6] [debug variable = contacts_index]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !210), !dbg !211 ; [debug line = 52:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i1* %matched}, metadata !212), !dbg !213 ; [debug line = 53:7] [debug variable = matched]
  store i1 false, i1* %matched, align 1, !dbg !214 ; [debug line = 53:22]
  call void @llvm.dbg.declare(metadata !{[128 x i1]* %local_results}, metadata !215), !dbg !219 ; [debug line = 54:7] [debug variable = local_results]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %db_item_temp}, metadata !220), !dbg !222 ; [debug line = 55:16] [debug variable = db_item_temp]
  store i32 0, i32* %i, align 4, !dbg !223        ; [debug line = 56:6]
  br label %2, !dbg !223                          ; [debug line = 56:6]

; <label>:2                                       ; preds = %10, %0
  %3 = load i32* %i, align 4, !dbg !223           ; [#uses=1 type=i32] [debug line = 56:6]
  %4 = icmp slt i32 %3, 64, !dbg !223             ; [#uses=1 type=i1] [debug line = 56:6]
  br i1 %4, label %5, label %13, !dbg !223        ; [debug line = 56:6]

; <label>:5                                       ; preds = %2
  %6 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* @_ZL9db_stream), !dbg !225 ; [#uses=1 type=i8] [debug line = 58:21]
  %7 = load i32* %i, align 4, !dbg !225           ; [#uses=1 type=i32] [debug line = 58:21]
  %8 = sext i32 %7 to i64, !dbg !225              ; [#uses=1 type=i64] [debug line = 58:21]
  %9 = getelementptr inbounds [64 x i8]* %db_item_temp, i32 0, i64 %8, !dbg !225 ; [#uses=1 type=i8*] [debug line = 58:21]
  store i8 %6, i8* %9, align 1, !dbg !225         ; [debug line = 58:21]
  br label %10, !dbg !227                         ; [debug line = 59:2]

; <label>:10                                      ; preds = %5
  %11 = load i32* %i, align 4, !dbg !228          ; [#uses=1 type=i32] [debug line = 56:17]
  %12 = add nsw i32 %11, 1, !dbg !228             ; [#uses=1 type=i32] [debug line = 56:17]
  store i32 %12, i32* %i, align 4, !dbg !228      ; [debug line = 56:17]
  br label %2, !dbg !228                          ; [debug line = 56:17]

; <label>:13                                      ; preds = %2
  store i32 0, i32* %contacts_index, align 4, !dbg !229 ; [debug line = 60:6]
  br label %14, !dbg !229                         ; [debug line = 60:6]

; <label>:14                                      ; preds = %39, %13
  %15 = load i32* %contacts_index, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 60:6]
  %16 = icmp slt i32 %15, 128, !dbg !229          ; [#uses=1 type=i1] [debug line = 60:6]
  br i1 %16, label %17, label %42, !dbg !229      ; [debug line = 60:6]

; <label>:17                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %contact}, metadata !231), !dbg !233 ; [debug line = 65:30] [debug variable = contact]
  call void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream"* %contact), !dbg !234 ; [debug line = 65:37]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %db_item}, metadata !235), !dbg !236 ; [debug line = 66:30] [debug variable = db_item]
  call void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream"* %db_item), !dbg !237 ; [debug line = 66:37]
  store i32 0, i32* %i, align 4, !dbg !238        ; [debug line = 68:7]
  br label %18, !dbg !238                         ; [debug line = 68:7]

; <label>:18                                      ; preds = %31, %17
  %19 = load i32* %i, align 4, !dbg !238          ; [#uses=1 type=i32] [debug line = 68:7]
  %20 = icmp slt i32 %19, 64, !dbg !238           ; [#uses=1 type=i1] [debug line = 68:7]
  br i1 %20, label %21, label %34, !dbg !238      ; [debug line = 68:7]

; <label>:21                                      ; preds = %18
  %22 = load i32* %contacts_index, align 4, !dbg !240 ; [#uses=1 type=i32] [debug line = 69:4]
  %23 = mul nsw i32 %22, 64, !dbg !240            ; [#uses=1 type=i32] [debug line = 69:4]
  %24 = load i32* %i, align 4, !dbg !240          ; [#uses=1 type=i32] [debug line = 69:4]
  %25 = add nsw i32 %23, %24, !dbg !240           ; [#uses=1 type=i32] [debug line = 69:4]
  %26 = sext i32 %25 to i64, !dbg !240            ; [#uses=1 type=i64] [debug line = 69:4]
  %27 = getelementptr inbounds [8192 x i8]* @_ZL8contacts, i32 0, i64 %26, !dbg !240 ; [#uses=1 type=i8*] [debug line = 69:4]
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream"* %contact, i8* %27), !dbg !240 ; [debug line = 69:4]
  %28 = load i32* %i, align 4, !dbg !242          ; [#uses=1 type=i32] [debug line = 70:4]
  %29 = sext i32 %28 to i64, !dbg !242            ; [#uses=1 type=i64] [debug line = 70:4]
  %30 = getelementptr inbounds [64 x i8]* %db_item_temp, i32 0, i64 %29, !dbg !242 ; [#uses=1 type=i8*] [debug line = 70:4]
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream"* %db_item, i8* %30), !dbg !242 ; [debug line = 70:4]
  br label %31, !dbg !243                         ; [debug line = 71:3]

; <label>:31                                      ; preds = %21
  %32 = load i32* %i, align 4, !dbg !244          ; [#uses=1 type=i32] [debug line = 68:18]
  %33 = add nsw i32 %32, 1, !dbg !244             ; [#uses=1 type=i32] [debug line = 68:18]
  store i32 %33, i32* %i, align 4, !dbg !244      ; [debug line = 68:18]
  br label %18, !dbg !244                         ; [debug line = 68:18]

; <label>:34                                      ; preds = %18
  %35 = call zeroext i1 @_Z7compareRN3hls6streamIhEES2_(%"class.hls::stream"* %contact, %"class.hls::stream"* %db_item), !dbg !245 ; [#uses=1 type=i1] [debug line = 72:35]
  %36 = load i32* %contacts_index, align 4, !dbg !245 ; [#uses=1 type=i32] [debug line = 72:35]
  %37 = sext i32 %36 to i64, !dbg !245            ; [#uses=1 type=i64] [debug line = 72:35]
  %38 = getelementptr inbounds [128 x i1]* %local_results, i32 0, i64 %37, !dbg !245 ; [#uses=1 type=i1*] [debug line = 72:35]
  store i1 %35, i1* %38, align 1, !dbg !245       ; [debug line = 72:35]
  br label %39, !dbg !246                         ; [debug line = 73:2]

; <label>:39                                      ; preds = %34
  %40 = load i32* %contacts_index, align 4, !dbg !247 ; [#uses=1 type=i32] [debug line = 60:46]
  %41 = add nsw i32 %40, 1, !dbg !247             ; [#uses=1 type=i32] [debug line = 60:46]
  store i32 %41, i32* %contacts_index, align 4, !dbg !247 ; [debug line = 60:46]
  br label %14, !dbg !247                         ; [debug line = 60:46]

; <label>:42                                      ; preds = %14
  store i32 0, i32* %contacts_index, align 4, !dbg !248 ; [debug line = 74:6]
  br label %43, !dbg !248                         ; [debug line = 74:6]

; <label>:43                                      ; preds = %56, %42
  %44 = load i32* %contacts_index, align 4, !dbg !248 ; [#uses=1 type=i32] [debug line = 74:6]
  %45 = icmp slt i32 %44, 128, !dbg !248          ; [#uses=1 type=i1] [debug line = 74:6]
  br i1 %45, label %46, label %59, !dbg !248      ; [debug line = 74:6]

; <label>:46                                      ; preds = %43
  %47 = load i32* %contacts_index, align 4, !dbg !250 ; [#uses=1 type=i32] [debug line = 75:3]
  %48 = sext i32 %47 to i64, !dbg !250            ; [#uses=1 type=i64] [debug line = 75:3]
  %49 = getelementptr inbounds [128 x i1]* %local_results, i32 0, i64 %48, !dbg !250 ; [#uses=1 type=i1*] [debug line = 75:3]
  %50 = load i1* %49, align 1, !dbg !250          ; [#uses=1 type=i1] [debug line = 75:3]
  %51 = zext i1 %50 to i32, !dbg !250             ; [#uses=1 type=i32] [debug line = 75:3]
  %52 = load i1* %matched, align 1, !dbg !250     ; [#uses=1 type=i1] [debug line = 75:3]
  %53 = zext i1 %52 to i32, !dbg !250             ; [#uses=1 type=i32] [debug line = 75:3]
  %54 = or i32 %53, %51, !dbg !250                ; [#uses=1 type=i32] [debug line = 75:3]
  %55 = icmp ne i32 %54, 0, !dbg !250             ; [#uses=1 type=i1] [debug line = 75:3]
  store i1 %55, i1* %matched, align 1, !dbg !250  ; [debug line = 75:3]
  br label %56, !dbg !252                         ; [debug line = 76:2]

; <label>:56                                      ; preds = %46
  %57 = load i32* %contacts_index, align 4, !dbg !253 ; [#uses=1 type=i32] [debug line = 74:46]
  %58 = add nsw i32 %57, 1, !dbg !253             ; [#uses=1 type=i32] [debug line = 74:46]
  store i32 %58, i32* %contacts_index, align 4, !dbg !253 ; [debug line = 74:46]
  br label %43, !dbg !253                         ; [debug line = 74:46]

; <label>:59                                      ; preds = %43
  %60 = load i1* %matched, align 1, !dbg !254     ; [#uses=1 type=i1] [debug line = 77:2]
  %61 = load i32* %1, align 4, !dbg !254          ; [#uses=1 type=i32] [debug line = 77:2]
  %62 = sext i32 %61 to i64, !dbg !254            ; [#uses=1 type=i64] [debug line = 77:2]
  %63 = getelementptr inbounds [30000 x i1]* @_ZL7results, i32 0, i64 %62, !dbg !254 ; [#uses=1 type=i1*] [debug line = 77:2]
  store i1 %60, i1* %63, align 1, !dbg !254       ; [debug line = 77:2]
  ret void, !dbg !255                             ; [debug line = 78:1]
}

; [#uses=3]
define linkonce_odr void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream"* %this, i8* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !256), !dbg !257 ; [debug line = 144:48] [debug variable = this]
  store i8* %din, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !258), !dbg !259 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !260), !dbg !262 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load i8** %2, align 8, !dbg !263           ; [#uses=1 type=i8*] [debug line = 145:31]
  %5 = load i8* %4, align 1, !dbg !263            ; [#uses=1 type=i8] [debug line = 145:31]
  store i8 %5, i8* %tmp, align 1, !dbg !263       ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !264 ; [#uses=1 type=i8*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(i8* %6, i8* %tmp) nounwind, !dbg !264 ; [debug line = 146:9]
  ret void, !dbg !265                             ; [debug line = 147:5]
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
  %database_index = alloca i32, align 4           ; [#uses=6 type=i32*]
  %contacts_index = alloca i32, align 4           ; [#uses=0 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=11 type=i32*]
  %matched = alloca i1, align 1                   ; [#uses=0 type=i1*]
  %current_matched = alloca i1, align 1           ; [#uses=0 type=i1*]
  store i32 %operation, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !266), !dbg !267 ; [debug line = 83:6] [debug variable = operation]
  store i8* %contact_in, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !268), !dbg !269 ; [debug line = 84:16] [debug variable = contact_in]
  store i8* %database_in, i8** %3, align 8
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !270), !dbg !271 ; [debug line = 85:16] [debug variable = database_in]
  store i1* %matched_out, i1** %4, align 8
  call void @llvm.dbg.declare(metadata !{i1** %4}, metadata !272), !dbg !273 ; [debug line = 86:7] [debug variable = matched_out]
  store i32* %matched_finished, i32** %5, align 8
  call void @llvm.dbg.declare(metadata !{i32** %5}, metadata !274), !dbg !275 ; [debug line = 87:7] [debug variable = matched_finished]
  store i32* %error_out, i32** %6, align 8
  call void @llvm.dbg.declare(metadata !{i32** %6}, metadata !276), !dbg !277 ; [debug line = 88:7] [debug variable = error_out]
  store i32* %database_size_out, i32** %7, align 8
  call void @llvm.dbg.declare(metadata !{i32** %7}, metadata !278), !dbg !279 ; [debug line = 89:7] [debug variable = database_size_out]
  store i32* %contacts_size_out, i32** %8, align 8
  call void @llvm.dbg.declare(metadata !{i32** %8}, metadata !280), !dbg !281 ; [debug line = 90:7] [debug variable = contacts_size_out]
  %9 = load i8** %2, align 8, !dbg !282           ; [#uses=1 type=i8*] [debug line = 91:3]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %9, i32 64) nounwind, !dbg !282 ; [debug line = 91:3]
  %10 = load i8** %3, align 8, !dbg !284          ; [#uses=1 type=i8*] [debug line = 91:41]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %10, i32 64) nounwind, !dbg !284 ; [debug line = 91:41]
  %11 = load i1** %4, align 8, !dbg !285          ; [#uses=1 type=i1*] [debug line = 91:80]
  call void (...)* @_ssdm_SpecArrayDimSize(i1* %11, i32 30000) nounwind, !dbg !285 ; [debug line = 91:80]
  %12 = load i32* %1, align 4, !dbg !286          ; [#uses=1 type=i32] [debug line = 94:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %12, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !286 ; [debug line = 94:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !287 ; [debug line = 95:1]
  %13 = load i32** %5, align 8, !dbg !288         ; [#uses=1 type=i32*] [debug line = 96:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %13, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !288 ; [debug line = 96:1]
  %14 = load i32** %8, align 8, !dbg !289         ; [#uses=1 type=i32*] [debug line = 97:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %14, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !289 ; [debug line = 97:1]
  %15 = load i32** %8, align 8, !dbg !290         ; [#uses=1 type=i32*] [debug line = 98:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %15, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !290 ; [debug line = 98:1]
  %16 = load i32** %7, align 8, !dbg !291         ; [#uses=1 type=i32*] [debug line = 99:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %16, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !291 ; [debug line = 99:1]
  %17 = load i32** %7, align 8, !dbg !292         ; [#uses=1 type=i32*] [debug line = 100:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %17, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !292 ; [debug line = 100:1]
  %18 = load i32** %6, align 8, !dbg !293         ; [#uses=1 type=i32*] [debug line = 101:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %18, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !293 ; [debug line = 101:1]
  %19 = load i32** %5, align 8, !dbg !294         ; [#uses=1 type=i32*] [debug line = 102:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %19, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !294 ; [debug line = 102:1]
  %20 = load i32** %6, align 8, !dbg !295         ; [#uses=1 type=i32*] [debug line = 103:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %20, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !295 ; [debug line = 103:1]
  %21 = load i32* %1, align 4, !dbg !296          ; [#uses=1 type=i32] [debug line = 104:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %21, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !296 ; [debug line = 104:1]
  %22 = load i1** %4, align 8, !dbg !297          ; [#uses=1 type=i1*] [debug line = 105:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %22, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !297 ; [debug line = 105:1]
  %23 = load i8** %3, align 8, !dbg !298          ; [#uses=1 type=i8*] [debug line = 106:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %23, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !298 ; [debug line = 106:1]
  %24 = load i8** %2, align 8, !dbg !299          ; [#uses=1 type=i8*] [debug line = 107:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %24, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !299 ; [debug line = 107:1]
  call void @llvm.dbg.declare(metadata !{i32* %database_index}, metadata !300), !dbg !301 ; [debug line = 108:6] [debug variable = database_index]
  call void @llvm.dbg.declare(metadata !{i32* %contacts_index}, metadata !302), !dbg !303 ; [debug line = 108:22] [debug variable = contacts_index]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !304), !dbg !305 ; [debug line = 108:38] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i1* %matched}, metadata !306), !dbg !307 ; [debug line = 109:7] [debug variable = matched]
  call void @llvm.dbg.declare(metadata !{i1* %current_matched}, metadata !308), !dbg !309 ; [debug line = 109:16] [debug variable = current_matched]
  %25 = load i32* %1, align 4, !dbg !310          ; [#uses=1 type=i32] [debug line = 118:2]
  switch i32 %25, label %131 [
    i32 0, label %26
    i32 1, label %50
    i32 2, label %70
    i32 3, label %117
    i32 4, label %124
  ], !dbg !310                                    ; [debug line = 118:2]

; <label>:26                                      ; preds = %0
  %27 = load i32** %5, align 8, !dbg !311         ; [#uses=1 type=i32*] [debug line = 121:4]
  store i32 0, i32* %27, align 4, !dbg !311       ; [debug line = 121:4]
  %28 = load i32** %6, align 8, !dbg !313         ; [#uses=1 type=i32*] [debug line = 122:4]
  store i32 0, i32* %28, align 4, !dbg !313       ; [debug line = 122:4]
  %29 = load i32* @_ZL13contacts_size, align 4, !dbg !314 ; [#uses=1 type=i32] [debug line = 123:4]
  %30 = load i32** %8, align 8, !dbg !314         ; [#uses=1 type=i32*] [debug line = 123:4]
  store i32 %29, i32* %30, align 4, !dbg !314     ; [debug line = 123:4]
  %31 = load i32* @_ZL13database_size, align 4, !dbg !315 ; [#uses=1 type=i32] [debug line = 124:4]
  %32 = load i32** %7, align 8, !dbg !315         ; [#uses=1 type=i32*] [debug line = 124:4]
  store i32 %31, i32* %32, align 4, !dbg !315     ; [debug line = 124:4]
  %33 = load i32* @_ZL13contacts_size, align 4, !dbg !316 ; [#uses=1 type=i32] [debug line = 125:4]
  %34 = icmp sge i32 %33, 128, !dbg !316          ; [#uses=1 type=i1] [debug line = 125:4]
  br i1 %34, label %35, label %39, !dbg !316      ; [debug line = 125:4]

; <label>:35                                      ; preds = %26
  %36 = load i32** %6, align 8, !dbg !317         ; [#uses=1 type=i32*] [debug line = 126:5]
  store i32 1, i32* %36, align 4, !dbg !317       ; [debug line = 126:5]
  %37 = load i32* @_ZL13contacts_size, align 4, !dbg !319 ; [#uses=1 type=i32] [debug line = 127:5]
  %38 = load i32** %8, align 8, !dbg !319         ; [#uses=1 type=i32*] [debug line = 127:5]
  store i32 %37, i32* %38, align 4, !dbg !319     ; [debug line = 127:5]
  br label %49, !dbg !320                         ; [debug line = 128:4]

; <label>:39                                      ; preds = %26
  %40 = load i32* @_ZL13contacts_size, align 4, !dbg !321 ; [#uses=1 type=i32] [debug line = 129:5]
  %41 = mul nsw i32 %40, 64, !dbg !321            ; [#uses=1 type=i32] [debug line = 129:5]
  %42 = sext i32 %41 to i64, !dbg !321            ; [#uses=1 type=i64] [debug line = 129:5]
  %43 = getelementptr inbounds i8* getelementptr inbounds ([8192 x i8]* @_ZL8contacts, i32 0, i32 0), i64 %42, !dbg !321 ; [#uses=1 type=i8*] [debug line = 129:5]
  %44 = load i8** %2, align 8, !dbg !321          ; [#uses=1 type=i8*] [debug line = 129:5]
  call void @_Z7_memcpyPhS_i(i8* %43, i8* %44, i32 64), !dbg !321 ; [debug line = 129:5]
  %45 = load i32* @_ZL13contacts_size, align 4, !dbg !323 ; [#uses=1 type=i32] [debug line = 130:5]
  %46 = add nsw i32 %45, 1, !dbg !323             ; [#uses=1 type=i32] [debug line = 130:5]
  store i32 %46, i32* @_ZL13contacts_size, align 4, !dbg !323 ; [debug line = 130:5]
  %47 = load i32* @_ZL13contacts_size, align 4, !dbg !324 ; [#uses=1 type=i32] [debug line = 131:5]
  %48 = load i32** %8, align 8, !dbg !324         ; [#uses=1 type=i32*] [debug line = 131:5]
  store i32 %47, i32* %48, align 4, !dbg !324     ; [debug line = 131:5]
  br label %49

; <label>:49                                      ; preds = %39, %35
  br label %138, !dbg !325                        ; [debug line = 133:4]

; <label>:50                                      ; preds = %0
  %51 = load i32** %5, align 8, !dbg !326         ; [#uses=1 type=i32*] [debug line = 136:4]
  store i32 0, i32* %51, align 4, !dbg !326       ; [debug line = 136:4]
  %52 = load i32** %6, align 8, !dbg !327         ; [#uses=1 type=i32*] [debug line = 137:4]
  store i32 0, i32* %52, align 4, !dbg !327       ; [debug line = 137:4]
  %53 = load i32* @_ZL13database_size, align 4, !dbg !328 ; [#uses=1 type=i32] [debug line = 138:4]
  %54 = icmp sge i32 %53, 30000, !dbg !328        ; [#uses=1 type=i1] [debug line = 138:4]
  br i1 %54, label %55, label %59, !dbg !328      ; [debug line = 138:4]

; <label>:55                                      ; preds = %50
  %56 = load i32** %6, align 8, !dbg !329         ; [#uses=1 type=i32*] [debug line = 139:5]
  store i32 2, i32* %56, align 4, !dbg !329       ; [debug line = 139:5]
  %57 = load i32* @_ZL13database_size, align 4, !dbg !331 ; [#uses=1 type=i32] [debug line = 140:5]
  %58 = load i32** %7, align 8, !dbg !331         ; [#uses=1 type=i32*] [debug line = 140:5]
  store i32 %57, i32* %58, align 4, !dbg !331     ; [debug line = 140:5]
  br label %69, !dbg !332                         ; [debug line = 141:4]

; <label>:59                                      ; preds = %50
  %60 = load i32* @_ZL13database_size, align 4, !dbg !333 ; [#uses=1 type=i32] [debug line = 142:5]
  %61 = mul nsw i32 %60, 64, !dbg !333            ; [#uses=1 type=i32] [debug line = 142:5]
  %62 = sext i32 %61 to i64, !dbg !333            ; [#uses=1 type=i64] [debug line = 142:5]
  %63 = getelementptr inbounds i8* getelementptr inbounds ([1920000 x i8]* @_ZL8database, i32 0, i32 0), i64 %62, !dbg !333 ; [#uses=1 type=i8*] [debug line = 142:5]
  %64 = load i8** %3, align 8, !dbg !333          ; [#uses=1 type=i8*] [debug line = 142:5]
  call void @_Z7_memcpyPhS_i(i8* %63, i8* %64, i32 64), !dbg !333 ; [debug line = 142:5]
  %65 = load i32* @_ZL13database_size, align 4, !dbg !335 ; [#uses=1 type=i32] [debug line = 143:5]
  %66 = add nsw i32 %65, 1, !dbg !335             ; [#uses=1 type=i32] [debug line = 143:5]
  store i32 %66, i32* @_ZL13database_size, align 4, !dbg !335 ; [debug line = 143:5]
  %67 = load i32* @_ZL13database_size, align 4, !dbg !336 ; [#uses=1 type=i32] [debug line = 144:5]
  %68 = load i32** %7, align 8, !dbg !336         ; [#uses=1 type=i32*] [debug line = 144:5]
  store i32 %67, i32* %68, align 4, !dbg !336     ; [debug line = 144:5]
  br label %69

; <label>:69                                      ; preds = %59, %55
  br label %138, !dbg !337                        ; [debug line = 146:4]

; <label>:70                                      ; preds = %0
  %71 = load i32** %5, align 8, !dbg !338         ; [#uses=1 type=i32*] [debug line = 149:4]
  store i32 0, i32* %71, align 4, !dbg !338       ; [debug line = 149:4]
  %72 = load i32** %6, align 8, !dbg !339         ; [#uses=1 type=i32*] [debug line = 150:4]
  store i32 0, i32* %72, align 4, !dbg !339       ; [debug line = 150:4]
  %73 = load i32* @_ZL13contacts_size, align 4, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:4]
  %74 = load i32** %8, align 8, !dbg !340         ; [#uses=1 type=i32*] [debug line = 151:4]
  store i32 %73, i32* %74, align 4, !dbg !340     ; [debug line = 151:4]
  %75 = load i32* @_ZL13database_size, align 4, !dbg !341 ; [#uses=1 type=i32] [debug line = 152:4]
  %76 = load i32** %7, align 8, !dbg !341         ; [#uses=1 type=i32*] [debug line = 152:4]
  store i32 %75, i32* %76, align 4, !dbg !341     ; [debug line = 152:4]
  store i32 0, i32* %database_index, align 4, !dbg !342 ; [debug line = 157:8]
  br label %77, !dbg !342                         ; [debug line = 157:8]

; <label>:77                                      ; preds = %96, %70
  %78 = load i32* %database_index, align 4, !dbg !342 ; [#uses=1 type=i32] [debug line = 157:8]
  %79 = icmp slt i32 %78, 30000, !dbg !342        ; [#uses=1 type=i1] [debug line = 157:8]
  br i1 %79, label %80, label %99, !dbg !342      ; [debug line = 157:8]

; <label>:80                                      ; preds = %77
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !344 ; [debug line = 157:70]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !346 ; [debug line = 158:1]
  store i32 0, i32* %i, align 4, !dbg !347        ; [debug line = 172:9]
  br label %81, !dbg !347                         ; [debug line = 172:9]

; <label>:81                                      ; preds = %91, %80
  %82 = load i32* %i, align 4, !dbg !347          ; [#uses=1 type=i32] [debug line = 172:9]
  %83 = icmp slt i32 %82, 64, !dbg !347           ; [#uses=1 type=i1] [debug line = 172:9]
  br i1 %83, label %84, label %94, !dbg !347      ; [debug line = 172:9]

; <label>:84                                      ; preds = %81
  %85 = load i32* %database_index, align 4, !dbg !349 ; [#uses=1 type=i32] [debug line = 173:6]
  %86 = mul nsw i32 %85, 64, !dbg !349            ; [#uses=1 type=i32] [debug line = 173:6]
  %87 = load i32* %i, align 4, !dbg !349          ; [#uses=1 type=i32] [debug line = 173:6]
  %88 = add nsw i32 %86, %87, !dbg !349           ; [#uses=1 type=i32] [debug line = 173:6]
  %89 = sext i32 %88 to i64, !dbg !349            ; [#uses=1 type=i64] [debug line = 173:6]
  %90 = getelementptr inbounds [1920000 x i8]* @_ZL8database, i32 0, i64 %89, !dbg !349 ; [#uses=1 type=i8*] [debug line = 173:6]
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream"* @_ZL9db_stream, i8* %90), !dbg !349 ; [debug line = 173:6]
  br label %91, !dbg !351                         ; [debug line = 174:5]

; <label>:91                                      ; preds = %84
  %92 = load i32* %i, align 4, !dbg !352          ; [#uses=1 type=i32] [debug line = 172:20]
  %93 = add nsw i32 %92, 1, !dbg !352             ; [#uses=1 type=i32] [debug line = 172:20]
  store i32 %93, i32* %i, align 4, !dbg !352      ; [debug line = 172:20]
  br label %81, !dbg !352                         ; [debug line = 172:20]

; <label>:94                                      ; preds = %81
  %95 = load i32* %database_index, align 4, !dbg !353 ; [#uses=1 type=i32] [debug line = 175:5]
  call void @_Z16match_db_contacti(i32 %95), !dbg !353 ; [debug line = 175:5]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !354 ; [debug line = 176:4]
  br label %96, !dbg !354                         ; [debug line = 176:4]

; <label>:96                                      ; preds = %94
  %97 = load i32* %database_index, align 4, !dbg !355 ; [#uses=1 type=i32] [debug line = 157:52]
  %98 = add nsw i32 %97, 1, !dbg !355             ; [#uses=1 type=i32] [debug line = 157:52]
  store i32 %98, i32* %database_index, align 4, !dbg !355 ; [debug line = 157:52]
  br label %77, !dbg !355                         ; [debug line = 157:52]

; <label>:99                                      ; preds = %77
  store i32 0, i32* %i, align 4, !dbg !356        ; [debug line = 177:8]
  br label %100, !dbg !356                        ; [debug line = 177:8]

; <label>:100                                     ; preds = %112, %99
  %101 = load i32* %i, align 4, !dbg !356         ; [#uses=1 type=i32] [debug line = 177:8]
  %102 = icmp slt i32 %101, 30000, !dbg !356      ; [#uses=1 type=i1] [debug line = 177:8]
  br i1 %102, label %103, label %115, !dbg !356   ; [debug line = 177:8]

; <label>:103                                     ; preds = %100
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !358 ; [debug line = 177:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !360 ; [debug line = 178:1]
  %104 = load i32* %i, align 4, !dbg !361         ; [#uses=1 type=i32] [debug line = 179:2]
  %105 = sext i32 %104 to i64, !dbg !361          ; [#uses=1 type=i64] [debug line = 179:2]
  %106 = getelementptr inbounds [30000 x i1]* @_ZL7results, i32 0, i64 %105, !dbg !361 ; [#uses=1 type=i1*] [debug line = 179:2]
  %107 = load i1* %106, align 1, !dbg !361        ; [#uses=1 type=i1] [debug line = 179:2]
  %108 = load i32* %i, align 4, !dbg !361         ; [#uses=1 type=i32] [debug line = 179:2]
  %109 = sext i32 %108 to i64, !dbg !361          ; [#uses=1 type=i64] [debug line = 179:2]
  %110 = load i1** %4, align 8, !dbg !361         ; [#uses=1 type=i1*] [debug line = 179:2]
  %111 = getelementptr inbounds i1* %110, i64 %109, !dbg !361 ; [#uses=1 type=i1*] [debug line = 179:2]
  store i1 %107, i1* %111, align 1, !dbg !361     ; [debug line = 179:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !362 ; [debug line = 180:4]
  br label %112, !dbg !362                        ; [debug line = 180:4]

; <label>:112                                     ; preds = %103
  %113 = load i32* %i, align 4, !dbg !363         ; [#uses=1 type=i32] [debug line = 177:22]
  %114 = add nsw i32 %113, 1, !dbg !363           ; [#uses=1 type=i32] [debug line = 177:22]
  store i32 %114, i32* %i, align 4, !dbg !363     ; [debug line = 177:22]
  br label %100, !dbg !363                        ; [debug line = 177:22]

; <label>:115                                     ; preds = %100
  %116 = load i32** %5, align 8, !dbg !364        ; [#uses=1 type=i32*] [debug line = 181:4]
  store i32 1, i32* %116, align 4, !dbg !364      ; [debug line = 181:4]
  br label %138, !dbg !365                        ; [debug line = 182:4]

; <label>:117                                     ; preds = %0
  %118 = load i32** %5, align 8, !dbg !366        ; [#uses=1 type=i32*] [debug line = 185:4]
  store i32 0, i32* %118, align 4, !dbg !366      ; [debug line = 185:4]
  %119 = load i32** %6, align 8, !dbg !367        ; [#uses=1 type=i32*] [debug line = 186:4]
  store i32 0, i32* %119, align 4, !dbg !367      ; [debug line = 186:4]
  store i32 0, i32* @_ZL13database_size, align 4, !dbg !368 ; [debug line = 188:4]
  %120 = load i32* @_ZL13contacts_size, align 4, !dbg !369 ; [#uses=1 type=i32] [debug line = 190:4]
  %121 = load i32** %8, align 8, !dbg !369        ; [#uses=1 type=i32*] [debug line = 190:4]
  store i32 %120, i32* %121, align 4, !dbg !369   ; [debug line = 190:4]
  %122 = load i32* @_ZL13database_size, align 4, !dbg !370 ; [#uses=1 type=i32] [debug line = 191:4]
  %123 = load i32** %7, align 8, !dbg !370        ; [#uses=1 type=i32*] [debug line = 191:4]
  store i32 %122, i32* %123, align 4, !dbg !370   ; [debug line = 191:4]
  br label %138, !dbg !371                        ; [debug line = 192:4]

; <label>:124                                     ; preds = %0
  %125 = load i32** %5, align 8, !dbg !372        ; [#uses=1 type=i32*] [debug line = 195:4]
  store i32 0, i32* %125, align 4, !dbg !372      ; [debug line = 195:4]
  %126 = load i32** %6, align 8, !dbg !373        ; [#uses=1 type=i32*] [debug line = 196:4]
  store i32 0, i32* %126, align 4, !dbg !373      ; [debug line = 196:4]
  store i32 0, i32* @_ZL13contacts_size, align 4, !dbg !374 ; [debug line = 198:4]
  %127 = load i32* @_ZL13contacts_size, align 4, !dbg !375 ; [#uses=1 type=i32] [debug line = 200:4]
  %128 = load i32** %8, align 8, !dbg !375        ; [#uses=1 type=i32*] [debug line = 200:4]
  store i32 %127, i32* %128, align 4, !dbg !375   ; [debug line = 200:4]
  %129 = load i32* @_ZL13database_size, align 4, !dbg !376 ; [#uses=1 type=i32] [debug line = 201:4]
  %130 = load i32** %7, align 8, !dbg !376        ; [#uses=1 type=i32*] [debug line = 201:4]
  store i32 %129, i32* %130, align 4, !dbg !376   ; [debug line = 201:4]
  br label %138, !dbg !377                        ; [debug line = 202:4]

; <label>:131                                     ; preds = %0
  %132 = load i32* @_ZL13contacts_size, align 4, !dbg !378 ; [#uses=1 type=i32] [debug line = 213:4]
  %133 = load i32** %8, align 8, !dbg !378        ; [#uses=1 type=i32*] [debug line = 213:4]
  store i32 %132, i32* %133, align 4, !dbg !378   ; [debug line = 213:4]
  %134 = load i32* @_ZL13database_size, align 4, !dbg !379 ; [#uses=1 type=i32] [debug line = 214:4]
  %135 = load i32** %7, align 8, !dbg !379        ; [#uses=1 type=i32*] [debug line = 214:4]
  store i32 %134, i32* %135, align 4, !dbg !379   ; [debug line = 214:4]
  %136 = load i32** %5, align 8, !dbg !380        ; [#uses=1 type=i32*] [debug line = 215:4]
  store i32 0, i32* %136, align 4, !dbg !380      ; [debug line = 215:4]
  %137 = load i32** %6, align 8, !dbg !381        ; [#uses=1 type=i32*] [debug line = 216:4]
  store i32 3, i32* %137, align 4, !dbg !381      ; [debug line = 216:4]
  br label %138, !dbg !382                        ; [debug line = 217:4]

; <label>:138                                     ; preds = %131, %124, %117, %115, %69, %49
  ret void, !dbg !383                             ; [debug line = 220:1]
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

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIhEC2Ev(%"class.hls::stream"* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !384), !dbg !385 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=0 type=%"class.hls::stream"*]
  ret void, !dbg !386                             ; [debug line = 84:5]
}

; [#uses=1]
define internal void @_GLOBAL__I_a() nounwind section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

!llvm.dbg.cu = !{!0, !3}
!hls.encrypted.func = !{}
!opencl.kernels = !{!111, !118, !124, !130, !136, !139, !145, !146}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/sha512.pragma.2.c", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !1, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !4, metadata !86} ; [ DW_TAG_compile_unit ]
!4 = metadata !{metadata !5}
!5 = metadata !{metadata !6, metadata !15, metadata !74, metadata !77, metadata !82, metadata !83, metadata !84, metadata !85}
!6 = metadata !{i32 786478, i32 0, metadata !7, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !7, i32 19, metadata !8, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @_Z7_memcpyPhS_i, null, null, metadata !13, i32 19} ; [ DW_TAG_subprogram ]
!7 = metadata !{i32 786473, metadata !"contact_discovery_axi/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !9, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!9 = metadata !{null, metadata !10, metadata !10, metadata !12}
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !7, metadata !"compare", metadata !"compare", metadata !"_Z7compareRN3hls6streamIhEES2_", metadata !7, i32 26, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z7compareRN3hls6streamIhEES2_, null, null, metadata !13, i32 26} ; [ DW_TAG_subprogram ]
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
!74 = metadata !{i32 786478, i32 0, metadata !7, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contacti", metadata !7, i32 50, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @_Z16match_db_contacti, null, null, metadata !13, i32 50} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{null, metadata !12}
!77 = metadata !{i32 786478, i32 0, metadata !7, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhS_PbPiS1_S1_S1_", metadata !7, i32 82, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @_Z17contact_discoveryiPhS_PbPiS1_S1_S1_, null, null, metadata !13, i32 91} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{null, metadata !12, metadata !10, metadata !10, metadata !80, metadata !81, metadata !81, metadata !81, metadata !81}
!80 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!81 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!82 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !22, i32 144, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i8*)* @_ZN3hls6streamIhE5writeERKh, null, metadata !64, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !22, i32 129, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (%"class.hls::stream"*)* @_ZN3hls6streamIhE4readEv, null, metadata !58, metadata !13, i32 129} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIhEC1Ev", metadata !22, i32 83, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIhEC1Ev, null, metadata !25, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIhEC2Ev", metadata !22, i32 83, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIhEC2Ev, null, metadata !25, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !88, metadata !89, metadata !92, metadata !93, metadata !94, metadata !96, metadata !97, metadata !101, metadata !102, metadata !103, metadata !107}
!88 = metadata !{i32 786484, i32 0, null, metadata !"db_stream", metadata !"db_stream", metadata !"_ZL9db_stream", metadata !7, i32 16, metadata !20, i32 1, i32 1, %"class.hls::stream"* @_ZL9db_stream} ; [ DW_TAG_variable ]
!89 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !90, i32 315, metadata !91, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!91 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !90, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!92 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !90, i32 316, metadata !91, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !90, i32 317, metadata !91, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!94 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !95, i32 26, metadata !12, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!96 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !95, i32 30, metadata !12, i32 0, i32 1, i32* @_sys_nerr} ; [ DW_TAG_variable ]
!97 = metadata !{i32 786484, i32 0, null, metadata !"database", metadata !"database", metadata !"_ZL8database", metadata !7, i32 10, metadata !98, i32 1, i32 1, [1920000 x i8]* @_ZL8database} ; [ DW_TAG_variable ]
!98 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360000, i64 8, i32 0, i32 0, metadata !11, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 1919999} ; [ DW_TAG_subrange_type ]
!101 = metadata !{i32 786484, i32 0, null, metadata !"database_size", metadata !"database_size", metadata !"_ZL13database_size", metadata !7, i32 14, metadata !12, i32 1, i32 1, i32* @_ZL13database_size} ; [ DW_TAG_variable ]
!102 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !7, i32 13, metadata !12, i32 1, i32 1, i32* @_ZL13contacts_size} ; [ DW_TAG_variable ]
!103 = metadata !{i32 786484, i32 0, null, metadata !"results", metadata !"results", metadata !"_ZL7results", metadata !7, i32 12, metadata !104, i32 1, i32 1, [30000 x i1]* @_ZL7results} ; [ DW_TAG_variable ]
!104 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 240000, i64 8, i32 0, i32 0, metadata !18, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786465, i64 0, i64 29999}   ; [ DW_TAG_subrange_type ]
!107 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !7, i32 9, metadata !108, i32 1, i32 1, [8192 x i8]* @_ZL8contacts} ; [ DW_TAG_variable ]
!108 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !11, metadata !109, i32 0, i32 0} ; [ DW_TAG_array_type ]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786465, i64 0, i64 8191}    ; [ DW_TAG_subrange_type ]
!111 = metadata !{void (i8*, i8*, i32)* @_Z7_memcpyPhS_i, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!112 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!113 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!115 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!116 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!117 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!118 = metadata !{i1 (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z7compareRN3hls6streamIhEES2_, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !117}
!119 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!120 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &"}
!122 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!123 = metadata !{metadata !"kernel_arg_name", metadata !"contact", metadata !"db_item"}
!124 = metadata !{void (i32)* @_Z16match_db_contacti, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !117}
!125 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!126 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!128 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!129 = metadata !{metadata !"kernel_arg_name", metadata !"database_index"}
!130 = metadata !{void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @_Z17contact_discoveryiPhS_PbPiS1_S1_S1_, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !117}
!131 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!132 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"uchar*", metadata !"_Bool*", metadata !"int*", metadata !"int*", metadata !"int*", metadata !"int*"}
!134 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!135 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"database_size_out", metadata !"contacts_size_out"}
!136 = metadata !{void (%"class.hls::stream"*, i8*)* @_ZN3hls6streamIhE5writeERKh, metadata !125, metadata !126, metadata !137, metadata !128, metadata !138, metadata !117}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!138 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!139 = metadata !{i8 (%"class.hls::stream"*)* @_ZN3hls6streamIhE4readEv, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !117}
!140 = metadata !{metadata !"kernel_arg_addr_space"}
!141 = metadata !{metadata !"kernel_arg_access_qual"}
!142 = metadata !{metadata !"kernel_arg_type"}
!143 = metadata !{metadata !"kernel_arg_type_qual"}
!144 = metadata !{metadata !"kernel_arg_name"}
!145 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIhEC1Ev, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !117}
!146 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIhEC2Ev, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !117}
!147 = metadata !{i32 786689, metadata !84, metadata !"this", metadata !22, i32 16777299, metadata !148, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!149 = metadata !{i32 83, i32 43, metadata !84, null}
!150 = metadata !{i32 84, i32 5, metadata !84, null}
!151 = metadata !{i32 786689, metadata !6, metadata !"dest", metadata !7, i32 16777235, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 19, i32 29, metadata !6, null}
!153 = metadata !{i32 786689, metadata !6, metadata !"src", metadata !7, i32 33554451, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 19, i32 50, metadata !6, null}
!155 = metadata !{i32 786689, metadata !6, metadata !"length", metadata !7, i32 50331667, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 19, i32 59, metadata !6, null}
!157 = metadata !{i32 786688, metadata !158, metadata !"i", metadata !7, i32 20, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 786443, metadata !6, i32 19, i32 66, metadata !7, i32 0} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 20, i32 6, metadata !158, null}
!160 = metadata !{i32 21, i32 6, metadata !161, null}
!161 = metadata !{i32 786443, metadata !158, i32 21, i32 2, metadata !7, i32 1} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 22, i32 3, metadata !163, null}
!163 = metadata !{i32 786443, metadata !161, i32 21, i32 25, metadata !7, i32 2} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 23, i32 2, metadata !163, null}
!165 = metadata !{i32 21, i32 21, metadata !161, null}
!166 = metadata !{i32 24, i32 1, metadata !158, null}
!167 = metadata !{i32 786689, metadata !15, metadata !"contact", metadata !7, i32 16777242, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 26, i32 42, metadata !15, null}
!169 = metadata !{i32 786689, metadata !15, metadata !"db_item", metadata !7, i32 33554458, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 26, i32 79, metadata !15, null}
!171 = metadata !{i32 786688, metadata !172, metadata !"i", metadata !7, i32 29, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 786443, metadata !15, i32 26, i32 87, metadata !7, i32 3} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 29, i32 6, metadata !172, null}
!174 = metadata !{i32 786688, metadata !172, metadata !"j", metadata !7, i32 29, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 29, i32 9, metadata !172, null}
!176 = metadata !{i32 786688, metadata !172, metadata !"found", metadata !7, i32 30, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 30, i32 7, metadata !172, null}
!178 = metadata !{i32 30, i32 19, metadata !172, null}
!179 = metadata !{i32 786688, metadata !172, metadata !"results_local", metadata !7, i32 31, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !18, metadata !181, i32 0, i32 0} ; [ DW_TAG_array_type ]
!181 = metadata !{metadata !182}
!182 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!183 = metadata !{i32 31, i32 7, metadata !172, null}
!184 = metadata !{i32 37, i32 6, metadata !185, null}
!185 = metadata !{i32 786443, metadata !172, i32 37, i32 2, metadata !7, i32 4} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 42, i32 23, metadata !187, null}
!187 = metadata !{i32 786443, metadata !185, i32 37, i32 21, metadata !7, i32 5} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 42, i32 41, metadata !187, null}
!189 = metadata !{i32 43, i32 2, metadata !187, null}
!190 = metadata !{i32 37, i32 17, metadata !185, null}
!191 = metadata !{i32 44, i32 6, metadata !192, null}
!192 = metadata !{i32 786443, metadata !172, i32 44, i32 2, metadata !7, i32 6} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 45, i32 3, metadata !194, null}
!194 = metadata !{i32 786443, metadata !192, i32 44, i32 21, metadata !7, i32 7} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 46, i32 2, metadata !194, null}
!196 = metadata !{i32 44, i32 17, metadata !192, null}
!197 = metadata !{i32 47, i32 2, metadata !172, null}
!198 = metadata !{i32 786689, metadata !83, metadata !"this", metadata !22, i32 16777345, metadata !148, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 129, i32 56, metadata !83, null}
!200 = metadata !{i32 786688, metadata !201, metadata !"tmp", metadata !22, i32 130, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 786443, metadata !83, i32 129, i32 63, metadata !22, i32 30} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 130, i32 22, metadata !201, null}
!203 = metadata !{i32 131, i32 9, metadata !201, null}
!204 = metadata !{i32 132, i32 9, metadata !201, null}
!205 = metadata !{i32 786689, metadata !74, metadata !"database_index", metadata !7, i32 16777266, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 50, i32 27, metadata !74, null}
!207 = metadata !{i32 786688, metadata !208, metadata !"contacts_index", metadata !7, i32 52, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 786443, metadata !74, i32 50, i32 42, metadata !7, i32 8} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 52, i32 6, metadata !208, null}
!210 = metadata !{i32 786688, metadata !208, metadata !"i", metadata !7, i32 52, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 52, i32 22, metadata !208, null}
!212 = metadata !{i32 786688, metadata !208, metadata !"matched", metadata !7, i32 53, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 53, i32 7, metadata !208, null}
!214 = metadata !{i32 53, i32 22, metadata !208, null}
!215 = metadata !{i32 786688, metadata !208, metadata !"local_results", metadata !7, i32 54, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !18, metadata !217, i32 0, i32 0} ; [ DW_TAG_array_type ]
!217 = metadata !{metadata !218}
!218 = metadata !{i32 786465, i64 0, i64 127}     ; [ DW_TAG_subrange_type ]
!219 = metadata !{i32 54, i32 7, metadata !208, null}
!220 = metadata !{i32 786688, metadata !208, metadata !"db_item_temp", metadata !7, i32 55, metadata !221, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!221 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !11, metadata !181, i32 0, i32 0} ; [ DW_TAG_array_type ]
!222 = metadata !{i32 55, i32 16, metadata !208, null}
!223 = metadata !{i32 56, i32 6, metadata !224, null}
!224 = metadata !{i32 786443, metadata !208, i32 56, i32 2, metadata !7, i32 9} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 58, i32 21, metadata !226, null}
!226 = metadata !{i32 786443, metadata !224, i32 56, i32 21, metadata !7, i32 10} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 59, i32 2, metadata !226, null}
!228 = metadata !{i32 56, i32 17, metadata !224, null}
!229 = metadata !{i32 60, i32 6, metadata !230, null}
!230 = metadata !{i32 786443, metadata !208, i32 60, i32 2, metadata !7, i32 11} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 786688, metadata !232, metadata !"contact", metadata !7, i32 65, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 786443, metadata !230, i32 60, i32 63, metadata !7, i32 12} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 65, i32 30, metadata !232, null}
!234 = metadata !{i32 65, i32 37, metadata !232, null}
!235 = metadata !{i32 786688, metadata !232, metadata !"db_item", metadata !7, i32 66, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 66, i32 30, metadata !232, null}
!237 = metadata !{i32 66, i32 37, metadata !232, null}
!238 = metadata !{i32 68, i32 7, metadata !239, null}
!239 = metadata !{i32 786443, metadata !232, i32 68, i32 3, metadata !7, i32 13} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 69, i32 4, metadata !241, null}
!241 = metadata !{i32 786443, metadata !239, i32 68, i32 22, metadata !7, i32 14} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 70, i32 4, metadata !241, null}
!243 = metadata !{i32 71, i32 3, metadata !241, null}
!244 = metadata !{i32 68, i32 18, metadata !239, null}
!245 = metadata !{i32 72, i32 35, metadata !232, null}
!246 = metadata !{i32 73, i32 2, metadata !232, null}
!247 = metadata !{i32 60, i32 46, metadata !230, null}
!248 = metadata !{i32 74, i32 6, metadata !249, null}
!249 = metadata !{i32 786443, metadata !208, i32 74, i32 2, metadata !7, i32 15} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 75, i32 3, metadata !251, null}
!251 = metadata !{i32 786443, metadata !249, i32 74, i32 63, metadata !7, i32 16} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 76, i32 2, metadata !251, null}
!253 = metadata !{i32 74, i32 46, metadata !249, null}
!254 = metadata !{i32 77, i32 2, metadata !208, null}
!255 = metadata !{i32 78, i32 1, metadata !208, null}
!256 = metadata !{i32 786689, metadata !82, metadata !"this", metadata !22, i32 16777360, metadata !148, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 144, i32 48, metadata !82, null}
!258 = metadata !{i32 786689, metadata !82, metadata !"din", metadata !22, i32 33554576, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!259 = metadata !{i32 144, i32 74, metadata !82, null}
!260 = metadata !{i32 786688, metadata !261, metadata !"tmp", metadata !22, i32 145, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 786443, metadata !82, i32 144, i32 79, metadata !22, i32 29} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 145, i32 22, metadata !261, null}
!263 = metadata !{i32 145, i32 31, metadata !261, null}
!264 = metadata !{i32 146, i32 9, metadata !261, null}
!265 = metadata !{i32 147, i32 5, metadata !261, null}
!266 = metadata !{i32 786689, metadata !77, metadata !"operation", metadata !7, i32 16777299, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 83, i32 6, metadata !77, null}
!268 = metadata !{i32 786689, metadata !77, metadata !"contact_in", metadata !7, i32 33554516, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!269 = metadata !{i32 84, i32 16, metadata !77, null}
!270 = metadata !{i32 786689, metadata !77, metadata !"database_in", metadata !7, i32 50331733, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!271 = metadata !{i32 85, i32 16, metadata !77, null}
!272 = metadata !{i32 786689, metadata !77, metadata !"matched_out", metadata !7, i32 67108950, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 86, i32 7, metadata !77, null}
!274 = metadata !{i32 786689, metadata !77, metadata !"matched_finished", metadata !7, i32 83886167, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!275 = metadata !{i32 87, i32 7, metadata !77, null}
!276 = metadata !{i32 786689, metadata !77, metadata !"error_out", metadata !7, i32 100663384, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!277 = metadata !{i32 88, i32 7, metadata !77, null}
!278 = metadata !{i32 786689, metadata !77, metadata !"database_size_out", metadata !7, i32 117440601, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!279 = metadata !{i32 89, i32 7, metadata !77, null}
!280 = metadata !{i32 786689, metadata !77, metadata !"contacts_size_out", metadata !7, i32 134217818, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!281 = metadata !{i32 90, i32 7, metadata !77, null}
!282 = metadata !{i32 91, i32 3, metadata !283, null}
!283 = metadata !{i32 786443, metadata !77, i32 91, i32 2, metadata !7, i32 17} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 91, i32 41, metadata !283, null}
!285 = metadata !{i32 91, i32 80, metadata !283, null}
!286 = metadata !{i32 94, i32 1, metadata !283, null}
!287 = metadata !{i32 95, i32 1, metadata !283, null}
!288 = metadata !{i32 96, i32 1, metadata !283, null}
!289 = metadata !{i32 97, i32 1, metadata !283, null}
!290 = metadata !{i32 98, i32 1, metadata !283, null}
!291 = metadata !{i32 99, i32 1, metadata !283, null}
!292 = metadata !{i32 100, i32 1, metadata !283, null}
!293 = metadata !{i32 101, i32 1, metadata !283, null}
!294 = metadata !{i32 102, i32 1, metadata !283, null}
!295 = metadata !{i32 103, i32 1, metadata !283, null}
!296 = metadata !{i32 104, i32 1, metadata !283, null}
!297 = metadata !{i32 105, i32 1, metadata !283, null}
!298 = metadata !{i32 106, i32 1, metadata !283, null}
!299 = metadata !{i32 107, i32 1, metadata !283, null}
!300 = metadata !{i32 786688, metadata !283, metadata !"database_index", metadata !7, i32 108, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!301 = metadata !{i32 108, i32 6, metadata !283, null}
!302 = metadata !{i32 786688, metadata !283, metadata !"contacts_index", metadata !7, i32 108, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 108, i32 22, metadata !283, null}
!304 = metadata !{i32 786688, metadata !283, metadata !"i", metadata !7, i32 108, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 108, i32 38, metadata !283, null}
!306 = metadata !{i32 786688, metadata !283, metadata !"matched", metadata !7, i32 109, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!307 = metadata !{i32 109, i32 7, metadata !283, null}
!308 = metadata !{i32 786688, metadata !283, metadata !"current_matched", metadata !7, i32 109, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!309 = metadata !{i32 109, i32 16, metadata !283, null}
!310 = metadata !{i32 118, i32 2, metadata !283, null}
!311 = metadata !{i32 121, i32 4, metadata !312, null}
!312 = metadata !{i32 786443, metadata !283, i32 118, i32 19, metadata !7, i32 18} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 122, i32 4, metadata !312, null}
!314 = metadata !{i32 123, i32 4, metadata !312, null}
!315 = metadata !{i32 124, i32 4, metadata !312, null}
!316 = metadata !{i32 125, i32 4, metadata !312, null}
!317 = metadata !{i32 126, i32 5, metadata !318, null}
!318 = metadata !{i32 786443, metadata !312, i32 125, i32 28, metadata !7, i32 19} ; [ DW_TAG_lexical_block ]
!319 = metadata !{i32 127, i32 5, metadata !318, null}
!320 = metadata !{i32 128, i32 4, metadata !318, null}
!321 = metadata !{i32 129, i32 5, metadata !322, null}
!322 = metadata !{i32 786443, metadata !312, i32 128, i32 10, metadata !7, i32 20} ; [ DW_TAG_lexical_block ]
!323 = metadata !{i32 130, i32 5, metadata !322, null}
!324 = metadata !{i32 131, i32 5, metadata !322, null}
!325 = metadata !{i32 133, i32 4, metadata !312, null}
!326 = metadata !{i32 136, i32 4, metadata !312, null}
!327 = metadata !{i32 137, i32 4, metadata !312, null}
!328 = metadata !{i32 138, i32 4, metadata !312, null}
!329 = metadata !{i32 139, i32 5, metadata !330, null}
!330 = metadata !{i32 786443, metadata !312, i32 138, i32 30, metadata !7, i32 21} ; [ DW_TAG_lexical_block ]
!331 = metadata !{i32 140, i32 5, metadata !330, null}
!332 = metadata !{i32 141, i32 4, metadata !330, null}
!333 = metadata !{i32 142, i32 5, metadata !334, null}
!334 = metadata !{i32 786443, metadata !312, i32 141, i32 10, metadata !7, i32 22} ; [ DW_TAG_lexical_block ]
!335 = metadata !{i32 143, i32 5, metadata !334, null}
!336 = metadata !{i32 144, i32 5, metadata !334, null}
!337 = metadata !{i32 146, i32 4, metadata !312, null}
!338 = metadata !{i32 149, i32 4, metadata !312, null}
!339 = metadata !{i32 150, i32 4, metadata !312, null}
!340 = metadata !{i32 151, i32 4, metadata !312, null}
!341 = metadata !{i32 152, i32 4, metadata !312, null}
!342 = metadata !{i32 157, i32 8, metadata !343, null}
!343 = metadata !{i32 786443, metadata !312, i32 157, i32 4, metadata !7, i32 23} ; [ DW_TAG_lexical_block ]
!344 = metadata !{i32 157, i32 70, metadata !345, null}
!345 = metadata !{i32 786443, metadata !343, i32 157, i32 69, metadata !7, i32 24} ; [ DW_TAG_lexical_block ]
!346 = metadata !{i32 158, i32 1, metadata !345, null}
!347 = metadata !{i32 172, i32 9, metadata !348, null}
!348 = metadata !{i32 786443, metadata !345, i32 172, i32 5, metadata !7, i32 25} ; [ DW_TAG_lexical_block ]
!349 = metadata !{i32 173, i32 6, metadata !350, null}
!350 = metadata !{i32 786443, metadata !348, i32 172, i32 24, metadata !7, i32 26} ; [ DW_TAG_lexical_block ]
!351 = metadata !{i32 174, i32 5, metadata !350, null}
!352 = metadata !{i32 172, i32 20, metadata !348, null}
!353 = metadata !{i32 175, i32 5, metadata !345, null}
!354 = metadata !{i32 176, i32 4, metadata !345, null}
!355 = metadata !{i32 157, i32 52, metadata !343, null}
!356 = metadata !{i32 177, i32 8, metadata !357, null}
!357 = metadata !{i32 786443, metadata !312, i32 177, i32 4, metadata !7, i32 27} ; [ DW_TAG_lexical_block ]
!358 = metadata !{i32 177, i32 27, metadata !359, null}
!359 = metadata !{i32 786443, metadata !357, i32 177, i32 26, metadata !7, i32 28} ; [ DW_TAG_lexical_block ]
!360 = metadata !{i32 178, i32 1, metadata !359, null}
!361 = metadata !{i32 179, i32 2, metadata !359, null}
!362 = metadata !{i32 180, i32 4, metadata !359, null}
!363 = metadata !{i32 177, i32 22, metadata !357, null}
!364 = metadata !{i32 181, i32 4, metadata !312, null}
!365 = metadata !{i32 182, i32 4, metadata !312, null}
!366 = metadata !{i32 185, i32 4, metadata !312, null}
!367 = metadata !{i32 186, i32 4, metadata !312, null}
!368 = metadata !{i32 188, i32 4, metadata !312, null}
!369 = metadata !{i32 190, i32 4, metadata !312, null}
!370 = metadata !{i32 191, i32 4, metadata !312, null}
!371 = metadata !{i32 192, i32 4, metadata !312, null}
!372 = metadata !{i32 195, i32 4, metadata !312, null}
!373 = metadata !{i32 196, i32 4, metadata !312, null}
!374 = metadata !{i32 198, i32 4, metadata !312, null}
!375 = metadata !{i32 200, i32 4, metadata !312, null}
!376 = metadata !{i32 201, i32 4, metadata !312, null}
!377 = metadata !{i32 202, i32 4, metadata !312, null}
!378 = metadata !{i32 213, i32 4, metadata !312, null}
!379 = metadata !{i32 214, i32 4, metadata !312, null}
!380 = metadata !{i32 215, i32 4, metadata !312, null}
!381 = metadata !{i32 216, i32 4, metadata !312, null}
!382 = metadata !{i32 217, i32 4, metadata !312, null}
!383 = metadata !{i32 220, i32 1, metadata !283, null}
!384 = metadata !{i32 786689, metadata !85, metadata !"this", metadata !22, i32 16777299, metadata !148, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!385 = metadata !{i32 83, i32 43, metadata !85, null}
!386 = metadata !{i32 84, i32 5, metadata !387, null}
!387 = metadata !{i32 786443, metadata !85, i32 83, i32 52, metadata !22, i32 31} ; [ DW_TAG_lexical_block ]
