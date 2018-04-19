; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors.1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm.global_ctors.0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]
@db_stream_OC_V.str = internal unnamed_addr constant [12 x i8] c"db_stream.V\00" ; [#uses=1 type=[12 x i8]*]
@db_stream.V = internal global i8 0               ; [#uses=6 type=i8*]
@db_item_OC_V.str = internal unnamed_addr constant [10 x i8] c"db_item.V\00" ; [#uses=1 type=[10 x i8]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@contacts = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16 ; [#uses=2 type=[8192 x i8]*]
@contact_discovery.str = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@contact_OC_V.str = internal unnamed_addr constant [10 x i8] c"contact.V\00" ; [#uses=1 type=[10 x i8]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=6 type=[8 x i8]*]
@.str42 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@.str41 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@.str40 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@.str4 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str39 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@.str38 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@.str37 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@.str36 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@.str35 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str34 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str33 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str32 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str31 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str30 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=6 type=[10 x i8]*]
@.str29 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str28 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str27 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str26 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str25 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str24 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str23 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str22 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str21 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str20 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=3 type=[8 x i8]*]
@.str19 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str18 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str17 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@.str16 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str12 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=60 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=1]
define internal fastcc zeroext i1 @match_db_contact() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecInterface(i8* @db_stream.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str37, i32 0, i32 0, [1 x i8]* @.str38, [1 x i8]* @.str39, [1 x i8]* @.str40, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str41, [1 x i8]* @.str42)
  %tmp.13 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp.12 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %results_local = alloca [64 x i1], align 16     ; [#uses=2 type=[64 x i1]*]
  call void @llvm.dbg.declare(metadata !{[64 x i1]* %results_local}, metadata !122) nounwind, !dbg !130 ; [debug line = 23:7@50:35] [debug variable = results_local]
  %tmp.5 = alloca i8, align 1                     ; [#uses=2 type=i8*]
  %tmp.10 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %local_results = alloca [128 x i1], align 16    ; [#uses=2 type=[128 x i1]*]
  %db_item_temp = alloca [64 x i8], align 16      ; [#uses=2 type=[64 x i8]*]
  %contact.V = alloca i8, align 1                 ; [#uses=5 type=i8*]
  %1 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @contact_OC_V.str, i32 1, [1 x i8]* @.str10, [1 x i8]* @.str10, i32 128, i32 128, i8* %contact.V, i8* %contact.V) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i8* %contact.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str11, i32 0, i32 0, [1 x i8]* @.str12, [1 x i8]* @.str13, [1 x i8]* @.str14, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str15, [1 x i8]* @.str16)
  call void @llvm.dbg.value(metadata !{i8* %contact.V}, i64 0, metadata !138) nounwind, !dbg !141 ; [debug line = 20:42@50:35] [debug variable = contact.V]
  %db_item.V = alloca i8, align 1                 ; [#uses=5 type=i8*]
  %2 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @db_item_OC_V.str, i32 1, [1 x i8]* @.str17, [1 x i8]* @.str17, i32 128, i32 128, i8* %db_item.V, i8* %db_item.V) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i8* %db_item.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str18, i32 0, i32 0, [1 x i8]* @.str19, [1 x i8]* @.str20, [1 x i8]* @.str21, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str22, [1 x i8]* @.str23)
  call void @llvm.dbg.value(metadata !{i8* %db_item.V}, i64 0, metadata !142) nounwind, !dbg !144 ; [debug line = 20:79@50:35] [debug variable = db_item.V]
  call void @llvm.dbg.declare(metadata !{[128 x i1]* %local_results}, metadata !145), !dbg !149 ; [debug line = 36:7] [debug variable = local_results]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %db_item_temp}, metadata !150), !dbg !152 ; [debug line = 37:16] [debug variable = db_item_temp]
  br label %3, !dbg !153                          ; [debug line = 38:6]

; <label>:3                                       ; preds = %5, %0
  %i = phi i7 [ 0, %0 ], [ %i.2, %5 ]             ; [#uses=3 type=i7]
  %exitcond1 = icmp eq i7 %i, -64, !dbg !153      ; [#uses=1 type=i1] [debug line = 38:6]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader11.preheader, label %5, !dbg !153 ; [debug line = 38:6]

.preheader11.preheader:                           ; preds = %3
  br label %.preheader11, !dbg !155               ; [debug line = 41:6]

; <label>:5                                       ; preds = %3
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !156) nounwind, !dbg !159 ; [debug line = 130:22@39:21] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* @db_stream.V, i8* %tmp) nounwind, !dbg !162 ; [debug line = 131:9@39:21]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !156), !dbg !163 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !156), !dbg !163 ; [debug line = 132:9@39:21] [debug variable = tmp]
  %6 = load i8* %tmp, align 1, !dbg !163          ; [#uses=1 type=i8] [debug line = 132:9@39:21]
  %tmp.1 = zext i7 %i to i64, !dbg !160           ; [#uses=1 type=i64] [debug line = 39:21]
  %db_item_temp.addr = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp.1, !dbg !160 ; [#uses=1 type=i8*] [debug line = 39:21]
  store i8 %6, i8* %db_item_temp.addr, align 1, !dbg !160 ; [debug line = 39:21]
  %i.2 = add i7 %i, 1, !dbg !164                  ; [#uses=1 type=i7] [debug line = 38:17]
  call void @llvm.dbg.value(metadata !{i7 %i.2}, i64 0, metadata !165), !dbg !164 ; [debug line = 38:17] [debug variable = i]
  br label %3, !dbg !164                          ; [debug line = 38:17]

.preheader11:                                     ; preds = %compare.exit, %.preheader11.preheader
  %contacts_index = phi i8 [ %contacts_index.3, %compare.exit ], [ 0, %.preheader11.preheader ] ; [#uses=4 type=i8]
  %contacts_index.cast6 = zext i8 %contacts_index to i13, !dbg !155 ; [#uses=1 type=i13] [debug line = 41:6]
  %exitcond9 = icmp eq i8 %contacts_index, -128, !dbg !155 ; [#uses=1 type=i1] [debug line = 41:6]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond9, label %.preheader.preheader, label %8, !dbg !155 ; [debug line = 41:6]

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader, !dbg !166                 ; [debug line = 52:6]

; <label>:8                                       ; preds = %.preheader11
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str) nounwind, !dbg !168 ; [#uses=1 type=i32] [debug line = 41:64]
  call void @llvm.dbg.declare(metadata !{i8* %contact.V}, metadata !169), !dbg !171 ; [debug line = 42:30] [debug variable = contact.V]
  call void @llvm.dbg.declare(metadata !{i8* %db_item.V}, metadata !172), !dbg !174 ; [debug line = 44:29] [debug variable = db_item.V]
  %tmp.3 = shl i13 %contacts_index.cast6, 6, !dbg !175 ; [#uses=1 type=i13] [debug line = 47:4]
  br label %9, !dbg !178                          ; [debug line = 46:6]

; <label>:9                                       ; preds = %11, %8
  %i.1 = phi i7 [ 0, %8 ], [ %i.3, %11 ]          ; [#uses=4 type=i7]
  %i.1.cast5 = zext i7 %i.1 to i13, !dbg !178     ; [#uses=1 type=i13] [debug line = 46:6]
  %exitcond8 = icmp eq i7 %i.1, -64, !dbg !178    ; [#uses=1 type=i1] [debug line = 46:6]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond8, label %.preheader3.preheader, label %11, !dbg !178 ; [debug line = 46:6]

.preheader3.preheader:                            ; preds = %9
  br label %.preheader3, !dbg !179                ; [debug line = 24:6@50:35]

; <label>:11                                      ; preds = %9
  %tmp. = add i13 %i.1.cast5, %tmp.3, !dbg !175   ; [#uses=1 type=i13] [debug line = 47:4]
  %tmp.2 = zext i13 %tmp. to i64, !dbg !175       ; [#uses=1 type=i64] [debug line = 47:4]
  %din.assign = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.2, !dbg !175 ; [#uses=1 type=i8*] [debug line = 47:4]
  call void @llvm.dbg.value(metadata !{i8* %din.assign}, i64 0, metadata !181), !dbg !183 ; [debug line = 144:74@47:4] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.5}, metadata !184) nounwind, !dbg !186 ; [debug line = 145:22@47:4] [debug variable = tmp]
  %tmp.7 = load i8* %din.assign, align 1, !dbg !187 ; [#uses=1 type=i8] [debug line = 145:31@47:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp.7}, i64 0, metadata !184), !dbg !187 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.7}, i64 0, metadata !184), !dbg !187 ; [debug line = 145:31@47:4] [debug variable = tmp]
  store i8 %tmp.7, i8* %tmp.5, align 1, !dbg !187 ; [debug line = 145:31@47:4]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %contact.V, i8* %tmp.5) nounwind, !dbg !188 ; [debug line = 146:9@47:4]
  %tmp.9 = zext i7 %i.1 to i64, !dbg !189         ; [#uses=1 type=i64] [debug line = 48:4]
  %din.assign.1 = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp.9, !dbg !189 ; [#uses=1 type=i8*] [debug line = 48:4]
  call void @llvm.dbg.value(metadata !{i8* %din.assign.1}, i64 0, metadata !181), !dbg !190 ; [debug line = 144:74@48:4] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.10}, metadata !184) nounwind, !dbg !191 ; [debug line = 145:22@48:4] [debug variable = tmp]
  %tmp.11 = load i8* %din.assign.1, align 1, !dbg !192 ; [#uses=1 type=i8] [debug line = 145:31@48:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp.11}, i64 0, metadata !184), !dbg !192 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.11}, i64 0, metadata !184), !dbg !192 ; [debug line = 145:31@48:4] [debug variable = tmp]
  store i8 %tmp.11, i8* %tmp.10, align 1, !dbg !192 ; [debug line = 145:31@48:4]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %db_item.V, i8* %tmp.10) nounwind, !dbg !193 ; [debug line = 146:9@48:4]
  %i.3 = add i7 %i.1, 1, !dbg !194                ; [#uses=1 type=i7] [debug line = 46:17]
  call void @llvm.dbg.value(metadata !{i7 %i.3}, i64 0, metadata !165), !dbg !194 ; [debug line = 46:17] [debug variable = i]
  br label %9, !dbg !194                          ; [debug line = 46:17]

.preheader3:                                      ; preds = %13, %.preheader3.preheader
  %i.i = phi i7 [ %i.4, %13 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i7]
  %exitcond3.i = icmp eq i7 %i.i, -64, !dbg !179  ; [#uses=1 type=i1] [debug line = 24:6@50:35]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3.i, label %.preheader.i.preheader, label %13, !dbg !179 ; [debug line = 24:6@50:35]

.preheader.i.preheader:                           ; preds = %.preheader3
  br label %.preheader.i, !dbg !195               ; [debug line = 27:6@50:35]

; <label>:13                                      ; preds = %.preheader3
  call void @llvm.dbg.value(metadata !{i8* %contact.V}, i64 0, metadata !197) nounwind, !dbg !203 ; [debug line = 129:56@25:23@50:35] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.12}, metadata !156) nounwind, !dbg !204 ; [debug line = 130:22@25:23@50:35] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %contact.V, i8* %tmp.12) nounwind, !dbg !205 ; [debug line = 131:9@25:23@50:35]
  call void @llvm.dbg.value(metadata !{i8* %tmp.12}, i64 0, metadata !206) nounwind, !dbg !207 ; [debug line = 132:9@25:23@50:35] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.12}, i64 0, metadata !156), !dbg !207 ; [debug line = 132:9@25:23@50:35] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.12}, i64 0, metadata !156), !dbg !207 ; [debug line = 132:9@25:23@50:35] [debug variable = tmp]
  %tmp.12.load = load i8* %tmp.12, align 1, !dbg !207 ; [#uses=1 type=i8] [debug line = 132:9@25:23@50:35]
  call void @llvm.dbg.value(metadata !{i8* %db_item.V}, i64 0, metadata !208) nounwind, !dbg !210 ; [debug line = 129:56@25:41@50:35] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.13}, metadata !156) nounwind, !dbg !211 ; [debug line = 130:22@25:41@50:35] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %db_item.V, i8* %tmp.13) nounwind, !dbg !212 ; [debug line = 131:9@25:41@50:35]
  call void @llvm.dbg.value(metadata !{i8* %tmp.13}, i64 0, metadata !213) nounwind, !dbg !214 ; [debug line = 132:9@25:41@50:35] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.13}, i64 0, metadata !156), !dbg !214 ; [debug line = 132:9@25:41@50:35] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.13}, i64 0, metadata !156), !dbg !214 ; [debug line = 132:9@25:41@50:35] [debug variable = tmp]
  %tmp.13.load = load i8* %tmp.13, align 1, !dbg !214 ; [#uses=1 type=i8] [debug line = 132:9@25:41@50:35]
  %tmp..i = icmp eq i8 %tmp.12.load, %tmp.13.load, !dbg !209 ; [#uses=1 type=i1] [debug line = 25:41@50:35]
  %tmp.5.i = zext i7 %i.i to i64, !dbg !209       ; [#uses=1 type=i64] [debug line = 25:41@50:35]
  %results_local.addr = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp.5.i, !dbg !209 ; [#uses=1 type=i1*] [debug line = 25:41@50:35]
  store i1 %tmp..i, i1* %results_local.addr, align 1, !dbg !209 ; [debug line = 25:41@50:35]
  %i.4 = add i7 %i.i, 1, !dbg !215                ; [#uses=1 type=i7] [debug line = 24:17@50:35]
  call void @llvm.dbg.value(metadata !{i7 %i.4}, i64 0, metadata !216) nounwind, !dbg !215 ; [debug line = 24:17@50:35] [debug variable = i]
  br label %.preheader3, !dbg !215                ; [debug line = 24:17@50:35]

.preheader.i:                                     ; preds = %15, %.preheader.i.preheader
  %i.1.i = phi i7 [ %i.5, %15 ], [ 0, %.preheader.i.preheader ] ; [#uses=3 type=i7]
  %found.i = phi i1 [ %found, %15 ], [ true, %.preheader.i.preheader ] ; [#uses=2 type=i1]
  %exitcond.i = icmp eq i7 %i.1.i, -64, !dbg !195 ; [#uses=1 type=i1] [debug line = 27:6@50:35]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %compare.exit, label %15, !dbg !195 ; [debug line = 27:6@50:35]

; <label>:15                                      ; preds = %.preheader.i
  %tmp.6.i = zext i7 %i.1.i to i64, !dbg !217     ; [#uses=1 type=i64] [debug line = 28:3@50:35]
  %results_local.addr.1 = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp.6.i, !dbg !217 ; [#uses=1 type=i1*] [debug line = 28:3@50:35]
  %results_local.load = load i1* %results_local.addr.1, align 1, !dbg !217 ; [#uses=1 type=i1] [debug line = 28:3@50:35]
  %found = and i1 %results_local.load, %found.i, !dbg !217 ; [#uses=1 type=i1] [debug line = 28:3@50:35]
  call void @llvm.dbg.value(metadata !{i1 %found}, i64 0, metadata !219) nounwind, !dbg !217 ; [debug line = 28:3@50:35] [debug variable = found]
  %i.5 = add i7 %i.1.i, 1, !dbg !220              ; [#uses=1 type=i7] [debug line = 27:17@50:35]
  call void @llvm.dbg.value(metadata !{i7 %i.5}, i64 0, metadata !216) nounwind, !dbg !220 ; [debug line = 27:17@50:35] [debug variable = i]
  br label %.preheader.i, !dbg !220               ; [debug line = 27:17@50:35]

compare.exit:                                     ; preds = %.preheader.i
  %found.i.lcssa = phi i1 [ %found.i, %.preheader.i ] ; [#uses=1 type=i1]
  %tmp.8 = zext i8 %contacts_index to i64, !dbg !131 ; [#uses=1 type=i64] [debug line = 50:35]
  %local_results.addr.1 = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp.8, !dbg !131 ; [#uses=1 type=i1*] [debug line = 50:35]
  store i1 %found.i.lcssa, i1* %local_results.addr.1, align 1, !dbg !131 ; [debug line = 50:35]
  %16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str, i32 %tmp.6) nounwind, !dbg !221 ; [#uses=0 type=i32] [debug line = 51:2]
  %contacts_index.3 = add i8 %contacts_index, 1, !dbg !222 ; [#uses=1 type=i8] [debug line = 41:46]
  call void @llvm.dbg.value(metadata !{i8 %contacts_index.3}, i64 0, metadata !223), !dbg !222 ; [debug line = 41:46] [debug variable = contacts_index]
  br label %.preheader11, !dbg !222               ; [debug line = 41:46]

.preheader:                                       ; preds = %18, %.preheader.preheader
  %contacts_index.1 = phi i8 [ %contacts_index.2, %18 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i8]
  %matched = phi i1 [ %matched.1, %18 ], [ false, %.preheader.preheader ] ; [#uses=2 type=i1]
  %exitcond = icmp eq i8 %contacts_index.1, -128, !dbg !166 ; [#uses=1 type=i1] [debug line = 52:6]
  %17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %19, label %18, !dbg !166 ; [debug line = 52:6]

; <label>:18                                      ; preds = %.preheader
  %tmp.4 = zext i8 %contacts_index.1 to i64, !dbg !224 ; [#uses=1 type=i64] [debug line = 53:3]
  %local_results.addr = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp.4, !dbg !224 ; [#uses=1 type=i1*] [debug line = 53:3]
  %local_results.load = load i1* %local_results.addr, align 1, !dbg !224 ; [#uses=1 type=i1] [debug line = 53:3]
  %matched.1 = or i1 %local_results.load, %matched, !dbg !224 ; [#uses=1 type=i1] [debug line = 53:3]
  call void @llvm.dbg.value(metadata !{i1 %matched.1}, i64 0, metadata !226), !dbg !224 ; [debug line = 53:3] [debug variable = matched]
  %contacts_index.2 = add i8 %contacts_index.1, 1, !dbg !227 ; [#uses=1 type=i8] [debug line = 52:46]
  call void @llvm.dbg.value(metadata !{i8 %contacts_index.2}, i64 0, metadata !223), !dbg !227 ; [debug line = 52:46] [debug variable = contacts_index]
  br label %.preheader, !dbg !227                 ; [debug line = 52:46]

; <label>:19                                      ; preds = %.preheader
  %matched.lcssa = phi i1 [ %matched, %.preheader ] ; [#uses=1 type=i1]
  ret i1 %matched.lcssa, !dbg !228                ; [debug line = 55:2]
}

; [#uses=45]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=13]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, [64 x i8]* %contact_in, i8* %db_in.V, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, i32* %results_out.V) {
  %1 = call i32 (...)* @_ssdm_op_SpecChannel([12 x i8]* @db_stream_OC_V.str, i32 1, [1 x i8]* @.str36, [1 x i8]* @.str36, i32 128, i32 128, i8* @db_stream.V, i8* @db_stream.V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i8* @db_stream.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str37, i32 0, i32 0, [1 x i8]* @.str38, [1 x i8]* @.str39, [1 x i8]* @.str40, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str41, [1 x i8]* @.str42)
  call void (...)* @_ssdm_op_SpecInterface(i32* %results_out.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str30, i32 0, i32 0, [1 x i8]* @.str31, [1 x i8]* @.str32, [1 x i8]* @.str33, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str34, [1 x i8]* @.str35)
  call void (...)* @_ssdm_op_SpecInterface(i8* %db_in.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str24, i32 0, i32 0, [1 x i8]* @.str25, [1 x i8]* @.str26, [1 x i8]* @.str27, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str28, [1 x i8]* @.str29)
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !229
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i8]* %contact_in), !map !235
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %db_in.V), !map !241
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %db_size_in), !map !245
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !249
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !253
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %results_out.V), !map !257
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery.str) nounwind
  %tmp.14 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.16 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp.15 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !261), !dbg !314 ; [debug line = 61:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %contact_in}, i64 0, metadata !315), !dbg !316 ; [debug line = 62:16] [debug variable = contact_in]
  call void @llvm.dbg.value(metadata !{i8* %db_in.V}, i64 0, metadata !317), !dbg !319 ; [debug line = 63:30] [debug variable = db_in.V]
  call void @llvm.dbg.value(metadata !{i32 %db_size_in}, i64 0, metadata !320), !dbg !321 ; [debug line = 64:15] [debug variable = db_size_in]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !322), !dbg !323 ; [debug line = 65:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !324), !dbg !325 ; [debug line = 66:7] [debug variable = contacts_size_out]
  call void @llvm.dbg.value(metadata !{i32* %results_out.V}, i64 0, metadata !326), !dbg !331 ; [debug line = 67:29] [debug variable = results_out.V]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [8 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !332 ; [debug line = 69:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !334 ; [debug line = 70:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !335 ; [debug line = 72:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !336 ; [debug line = 73:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @.str2, i32 1, i32 1, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !337 ; [debug line = 74:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !338 ; [debug line = 75:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @.str2, i32 1, i32 1, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !339 ; [debug line = 76:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !340 ; [debug line = 77:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @.str3, i32 1, i32 1, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !341 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface([64 x i8]* %contact_in, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  %contacts_size.load = load i32* @contacts_size, align 4, !dbg !342 ; [#uses=6 type=i32] [debug line = 87:4]
  switch i32 %operation, label %15 [
    i32 0, label %2
    i32 1, label %9
    i32 2, label %14
  ], !dbg !344                                    ; [debug line = 83:2]

; <label>:2                                       ; preds = %0
  store i32 0, i32* %error_out, align 4, !dbg !345 ; [debug line = 86:4]
  %tmp = icmp sgt i32 %contacts_size.load, 127, !dbg !346 ; [#uses=1 type=i1] [debug line = 88:4]
  br i1 %tmp, label %3, label %4, !dbg !346       ; [debug line = 88:4]

; <label>:3                                       ; preds = %2
  store i32 1, i32* %error_out, align 4, !dbg !347 ; [debug line = 89:5]
  br label %8, !dbg !349                          ; [debug line = 91:4]

; <label>:4                                       ; preds = %2
  %tmp.18 = trunc i32 %contacts_size.load to i15, !dbg !350 ; [#uses=1 type=i15] [debug line = 92:5]
  %tmp.1.cast = shl i15 %tmp.18, 6, !dbg !352     ; [#uses=1 type=i15] [debug line = 13:50@92:5]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %contact_in}, i64 0, metadata !356), !dbg !352 ; [debug line = 13:50@92:5] [debug variable = src]
  br label %5, !dbg !357                          ; [debug line = 15:6@92:5]

; <label>:5                                       ; preds = %7, %4
  %i.i = phi i7 [ 0, %4 ], [ %i.6, %7 ]           ; [#uses=4 type=i7]
  %exitcond.i = icmp eq i7 %i.i, -64, !dbg !357   ; [#uses=1 type=i1] [debug line = 15:6@92:5]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.exit, label %7, !dbg !357 ; [debug line = 15:6@92:5]

; <label>:7                                       ; preds = %5
  %tmp..i = zext i7 %i.i to i64, !dbg !360        ; [#uses=1 type=i64] [debug line = 16:3@92:5]
  %tmp..i.cast = zext i7 %i.i to i15, !dbg !360   ; [#uses=1 type=i15] [debug line = 16:3@92:5]
  %contact_in.addr = getelementptr [64 x i8]* %contact_in, i64 0, i64 %tmp..i, !dbg !360 ; [#uses=1 type=i8*] [debug line = 16:3@92:5]
  %contact_in.load = load i8* %contact_in.addr, align 1, !dbg !360 ; [#uses=1 type=i8] [debug line = 16:3@92:5]
  %sum.i = add i15 %tmp.1.cast, %tmp..i.cast      ; [#uses=1 type=i15]
  %sum.i.cast = sext i15 %sum.i to i64            ; [#uses=1 type=i64]
  %contacts.addr = getelementptr [8192 x i8]* @contacts, i64 0, i64 %sum.i.cast, !dbg !360 ; [#uses=1 type=i8*] [debug line = 16:3@92:5]
  store i8 %contact_in.load, i8* %contacts.addr, align 1, !dbg !360 ; [debug line = 16:3@92:5]
  %i.6 = add i7 %i.i, 1, !dbg !362                ; [#uses=1 type=i7] [debug line = 15:21@92:5]
  call void @llvm.dbg.value(metadata !{i7 %i.6}, i64 0, metadata !363), !dbg !362 ; [debug line = 15:21@92:5] [debug variable = i]
  br label %5, !dbg !362                          ; [debug line = 15:21@92:5]

_memcpy.exit:                                     ; preds = %5
  %tmp.2 = add nsw i32 %contacts_size.load, 1, !dbg !364 ; [#uses=2 type=i32] [debug line = 93:5]
  store i32 %tmp.2, i32* @contacts_size, align 4, !dbg !364 ; [debug line = 93:5]
  br label %8

; <label>:8                                       ; preds = %_memcpy.exit, %3
  %storemerge = phi i32 [ %tmp.2, %_memcpy.exit ], [ %contacts_size.load, %3 ] ; [#uses=1 type=i32]
  store i32 %storemerge, i32* %contacts_size_out, align 4, !dbg !365 ; [debug line = 90:5]
  br label %.loopexit, !dbg !366                  ; [debug line = 96:4]

; <label>:9                                       ; preds = %0
  store i32 0, i32* %error_out, align 4, !dbg !367 ; [debug line = 99:4]
  store i32 %contacts_size.load, i32* %contacts_size_out, align 4, !dbg !368 ; [debug line = 100:4]
  br label %10, !dbg !369                         ; [debug line = 101:8]

; <label>:10                                      ; preds = %13, %9
  %database_index = phi i32 [ 0, %9 ], [ %database_index.1, %13 ] ; [#uses=2 type=i32]
  %exitcond4 = icmp eq i32 %database_index, %db_size_in, !dbg !369 ; [#uses=1 type=i1] [debug line = 101:8]
  br i1 %exitcond4, label %.loopexit.loopexit, label %.preheader.preheader, !dbg !369 ; [debug line = 101:8]

.preheader.preheader:                             ; preds = %10
  br label %.preheader, !dbg !371                 ; [debug line = 102:9]

.preheader:                                       ; preds = %12, %.preheader.preheader
  %i = phi i7 [ %i.4, %12 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i7]
  %exitcond = icmp eq i7 %i, -64, !dbg !371       ; [#uses=1 type=i1] [debug line = 102:9]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  br i1 %exitcond, label %13, label %12, !dbg !371 ; [debug line = 102:9]

; <label>:12                                      ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i8* %db_in.V}, i64 0, metadata !374), !dbg !375 ; [debug line = 129:56@103:22] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.15}, metadata !156) nounwind, !dbg !378 ; [debug line = 130:22@103:22] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %db_in.V, i8* %tmp.15) nounwind, !dbg !379 ; [debug line = 131:9@103:22]
  call void @llvm.dbg.value(metadata !{i8* %tmp.15}, i64 0, metadata !156), !dbg !380 ; [debug line = 132:9@103:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.15}, i64 0, metadata !156), !dbg !380 ; [debug line = 132:9@103:22] [debug variable = tmp]
  %tmp.19 = load i8* %tmp.15, align 1, !dbg !380  ; [#uses=1 type=i8] [debug line = 132:9@103:22]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.16}, metadata !184) nounwind, !dbg !381 ; [debug line = 145:22@103:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.19}, i64 0, metadata !184), !dbg !382 ; [debug line = 145:31@103:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.19}, i64 0, metadata !184), !dbg !382 ; [debug line = 145:31@103:22] [debug variable = tmp]
  store i8 %tmp.19, i8* %tmp.16, align 1, !dbg !382 ; [debug line = 145:31@103:22]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* @db_stream.V, i8* %tmp.16) nounwind, !dbg !383 ; [debug line = 146:9@103:22]
  %i.4 = add i7 %i, 1, !dbg !384                  ; [#uses=1 type=i7] [debug line = 102:21]
  call void @llvm.dbg.value(metadata !{i7 %i.4}, i64 0, metadata !385), !dbg !384 ; [debug line = 102:21] [debug variable = i]
  br label %.preheader, !dbg !384                 ; [debug line = 102:21]

; <label>:13                                      ; preds = %.preheader
  %tmp.3 = call fastcc zeroext i1 @match_db_contact(), !dbg !386 ; [#uses=1 type=i1] [debug line = 105:38]
  %tmp.4 = zext i1 %tmp.3 to i32, !dbg !386       ; [#uses=1 type=i32] [debug line = 105:38]
  call void @llvm.dbg.value(metadata !{i32* %results_out.V}, i64 0, metadata !387), !dbg !392 ; [debug line = 144:48@105:38] [debug variable = stream<unsigned int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.14}, metadata !393) nounwind, !dbg !395 ; [debug line = 145:22@105:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.4}, i64 0, metadata !393), !dbg !396 ; [debug line = 145:31@105:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.4}, i64 0, metadata !393), !dbg !396 ; [debug line = 145:31@105:38] [debug variable = tmp]
  store i32 %tmp.4, i32* %tmp.14, align 4, !dbg !396 ; [debug line = 145:31@105:38]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %results_out.V, i32* %tmp.14) nounwind, !dbg !397 ; [debug line = 146:9@105:38]
  %database_index.1 = add nsw i32 %database_index, 1, !dbg !398 ; [#uses=1 type=i32] [debug line = 101:57]
  call void @llvm.dbg.value(metadata !{i32 %database_index.1}, i64 0, metadata !399), !dbg !398 ; [debug line = 101:57] [debug variable = database_index]
  br label %10, !dbg !398                         ; [debug line = 101:57]

; <label>:14                                      ; preds = %0
  store i32 0, i32* %error_out, align 4, !dbg !400 ; [debug line = 110:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !401 ; [debug line = 111:4]
  store i32 0, i32* %contacts_size_out, align 4, !dbg !402 ; [debug line = 112:4]
  br label %.loopexit, !dbg !403                  ; [debug line = 113:4]

; <label>:15                                      ; preds = %0
  store i32 %contacts_size.load, i32* %contacts_size_out, align 4, !dbg !404 ; [debug line = 116:4]
  store i32 3, i32* %error_out, align 4, !dbg !405 ; [debug line = 117:4]
  br label %.loopexit, !dbg !406                  ; [debug line = 118:4]

.loopexit.loopexit:                               ; preds = %10
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %15, %14, %8
  ret void, !dbg !407                             ; [debug line = 120:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=8]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=16]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare i32 @_ssdm_op_SpecChannel(...)

; [#uses=7]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=3]
declare void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8*, i8*)

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32*, i32*)

; [#uses=4]
declare void @_ssdm_op_IfRead.Stream.i8P.i8P(i8*, i8*)

!hls.encrypted.func = !{}
!opencl.kernels = !{!0, !7, !13, !19, !25, !31, !33, !33, !33}
!llvm.map.gv = !{!34}
!llvm.dbg.cu = !{!41}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"contact", metadata !"db_item"}
!13 = metadata !{i1 ()* @match_db_contact, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"hls::stream<uchar> &", metadata !"uint", metadata !"int*", metadata !"int*", metadata !"hls::stream<uint> &"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"db_in", metadata !"db_size_in", metadata !"error_out", metadata !"contacts_size_out", metadata !"results_out"}
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const uint &"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!31 = metadata !{null, metadata !26, metadata !27, metadata !32, metadata !29, metadata !30, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!33 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!34 = metadata !{metadata !35, [0 x i32]* @llvm.global_ctors.0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"llvm.global_ctors.0", metadata !39, metadata !"", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, i32 1}
!41 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !42} ; [ DW_TAG_compile_unit ]
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !44, metadata !50, metadata !111, metadata !113, metadata !114, metadata !117, metadata !118, metadata !119, metadata !121}
!44 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !45, i32 8, metadata !46, i32 1, i32 1, [8192 x i8]* @contacts} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786473, metadata !"contact_discovery_axi_experimental/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !47, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 8191}     ; [ DW_TAG_subrange_type ]
!50 = metadata !{i32 790546, i32 0, null, metadata !"db_stream.V", metadata !"db_stream.V", metadata !"db_stream.V", metadata !45, i32 10, metadata !51, i32 1, i32 1, i8* @db_stream.V} ; [ DW_TAG_variable_field ]
!51 = metadata !{i32 786438, metadata !52, metadata !"stream<unsigned char>", metadata !53, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !54, i32 0, null, metadata !109} ; [ DW_TAG_class_field_type ]
!52 = metadata !{i32 786489, null, metadata !"hls", metadata !53, i32 69} ; [ DW_TAG_namespace ]
!53 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786445, metadata !56, metadata !"V", metadata !53, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ]
!56 = metadata !{i32 786434, metadata !52, metadata !"stream<unsigned char>", metadata !53, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !57, i32 0, null, metadata !109} ; [ DW_TAG_class_type ]
!57 = metadata !{metadata !55, metadata !58, metadata !64, metadata !70, metadata !75, metadata !79, metadata !83, metadata !88, metadata !93, metadata !94, metadata !95, metadata !98, metadata !101, metadata !102, metadata !105}
!58 = metadata !{i32 786478, i32 0, metadata !56, metadata !"stream", metadata !"stream", metadata !"", metadata !53, i32 83, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 83} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !61}
!61 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !56} ; [ DW_TAG_pointer_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786478, i32 0, metadata !56, metadata !"stream", metadata !"stream", metadata !"", metadata !53, i32 86, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 86} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !61, metadata !67}
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_const_type ]
!69 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786478, i32 0, metadata !56, metadata !"stream", metadata !"stream", metadata !"", metadata !53, i32 91, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 91} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !61, metadata !73}
!73 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_reference_type ]
!74 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_const_type ]
!75 = metadata !{i32 786478, i32 0, metadata !56, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !53, i32 94, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 94} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !78, metadata !61, metadata !73}
!78 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_reference_type ]
!79 = metadata !{i32 786478, i32 0, metadata !56, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !53, i32 101, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 101} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !61, metadata !82}
!82 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_reference_type ]
!83 = metadata !{i32 786478, i32 0, metadata !56, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !53, i32 105, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 105} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{null, metadata !61, metadata !86}
!86 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_reference_type ]
!87 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!88 = metadata !{i32 786478, i32 0, metadata !56, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !53, i32 112, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 112} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !91, metadata !92}
!91 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!92 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !74} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 786478, i32 0, metadata !56, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !53, i32 117, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 117} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786478, i32 0, metadata !56, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !53, i32 123, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 123} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786478, i32 0, metadata !56, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !53, i32 129, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{metadata !47, metadata !61}
!98 = metadata !{i32 786478, i32 0, metadata !56, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !53, i32 136, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 136} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !91, metadata !61, metadata !82}
!101 = metadata !{i32 786478, i32 0, metadata !56, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !53, i32 144, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 144} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786478, i32 0, metadata !56, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !53, i32 150, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 150} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{metadata !91, metadata !61, metadata !86}
!105 = metadata !{i32 786478, i32 0, metadata !56, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !53, i32 157, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 157} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{metadata !108, metadata !61}
!108 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !47, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!111 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !45, i32 9, metadata !112, i32 1, i32 1, i32* @contacts_size} ; [ DW_TAG_variable ]
!112 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!113 = metadata !{i32 786484, i32 0, null, metadata !"db_stream", metadata !"db_stream", metadata !"_ZL9db_stream", metadata !45, i32 10, metadata !56, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!114 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !115, i32 315, metadata !116, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!115 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!116 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !115, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!117 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !115, i32 316, metadata !116, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!118 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !115, i32 317, metadata !116, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!119 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !120, i32 26, metadata !112, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!120 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!121 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !120, i32 30, metadata !112, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!122 = metadata !{i32 786688, metadata !123, metadata !"results_local", metadata !45, i32 23, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 786443, metadata !124, i32 20, i32 87, metadata !45, i32 3} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786478, i32 0, metadata !45, metadata !"compare", metadata !"compare", metadata !"_Z7compareRN3hls6streamIhEES2_", metadata !45, i32 20, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 20} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!126 = metadata !{metadata !91, metadata !78, metadata !78}
!127 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !91, metadata !128, i32 0, i32 0} ; [ DW_TAG_array_type ]
!128 = metadata !{metadata !129}
!129 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!130 = metadata !{i32 23, i32 7, metadata !123, metadata !131}
!131 = metadata !{i32 50, i32 35, metadata !132, null}
!132 = metadata !{i32 786443, metadata !133, i32 41, i32 63, metadata !45, i32 12} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786443, metadata !134, i32 41, i32 2, metadata !45, i32 11} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 786443, metadata !135, i32 33, i32 24, metadata !45, i32 8} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 786478, i32 0, metadata !45, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contactv", metadata !45, i32 33, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 ()* @match_db_contact, null, null, metadata !62, i32 33} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{metadata !91}
!138 = metadata !{i32 790531, metadata !139, metadata !"contact.V", null, i32 20, metadata !140, i32 0, metadata !131} ; [ DW_TAG_arg_variable_field ]
!139 = metadata !{i32 786689, metadata !124, metadata !"contact", metadata !45, i32 16777236, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ]
!141 = metadata !{i32 20, i32 42, metadata !124, metadata !131}
!142 = metadata !{i32 790531, metadata !143, metadata !"db_item.V", null, i32 20, metadata !140, i32 0, metadata !131} ; [ DW_TAG_arg_variable_field ]
!143 = metadata !{i32 786689, metadata !124, metadata !"db_item", metadata !45, i32 33554452, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 20, i32 79, metadata !124, metadata !131}
!145 = metadata !{i32 786688, metadata !134, metadata !"local_results", metadata !45, i32 36, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !91, metadata !147, i32 0, i32 0} ; [ DW_TAG_array_type ]
!147 = metadata !{metadata !148}
!148 = metadata !{i32 786465, i64 0, i64 127}     ; [ DW_TAG_subrange_type ]
!149 = metadata !{i32 36, i32 7, metadata !134, null}
!150 = metadata !{i32 786688, metadata !134, metadata !"db_item_temp", metadata !45, i32 37, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !47, metadata !128, i32 0, i32 0} ; [ DW_TAG_array_type ]
!152 = metadata !{i32 37, i32 16, metadata !134, null}
!153 = metadata !{i32 38, i32 6, metadata !154, null}
!154 = metadata !{i32 786443, metadata !134, i32 38, i32 2, metadata !45, i32 9} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 41, i32 6, metadata !133, null}
!156 = metadata !{i32 786688, metadata !157, metadata !"tmp", metadata !53, i32 130, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 786443, metadata !158, i32 129, i32 63, metadata !53, i32 27} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786478, i32 0, metadata !52, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !53, i32 129, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !95, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 130, i32 22, metadata !157, metadata !160}
!160 = metadata !{i32 39, i32 21, metadata !161, null}
!161 = metadata !{i32 786443, metadata !154, i32 38, i32 21, metadata !45, i32 10} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 131, i32 9, metadata !157, metadata !160}
!163 = metadata !{i32 132, i32 9, metadata !157, metadata !160}
!164 = metadata !{i32 38, i32 17, metadata !154, null}
!165 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !45, i32 34, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 52, i32 6, metadata !167, null}
!167 = metadata !{i32 786443, metadata !134, i32 52, i32 2, metadata !45, i32 15} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 41, i32 64, metadata !132, null}
!169 = metadata !{i32 790529, metadata !170, metadata !"contact.V", null, i32 42, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!170 = metadata !{i32 786688, metadata !132, metadata !"contact", metadata !45, i32 42, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 42, i32 30, metadata !132, null}
!172 = metadata !{i32 790529, metadata !173, metadata !"db_item.V", null, i32 44, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!173 = metadata !{i32 786688, metadata !132, metadata !"db_item", metadata !45, i32 44, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 44, i32 29, metadata !132, null}
!175 = metadata !{i32 47, i32 4, metadata !176, null}
!176 = metadata !{i32 786443, metadata !177, i32 46, i32 21, metadata !45, i32 14} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 786443, metadata !132, i32 46, i32 2, metadata !45, i32 13} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 46, i32 6, metadata !177, null}
!179 = metadata !{i32 24, i32 6, metadata !180, metadata !131}
!180 = metadata !{i32 786443, metadata !123, i32 24, i32 2, metadata !45, i32 4} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786689, metadata !182, metadata !"din", metadata !53, i32 33554576, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 786478, i32 0, metadata !52, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !53, i32 144, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !101, metadata !62, i32 144} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 144, i32 74, metadata !182, metadata !175}
!184 = metadata !{i32 786688, metadata !185, metadata !"tmp", metadata !53, i32 145, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 786443, metadata !182, i32 144, i32 79, metadata !53, i32 26} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 145, i32 22, metadata !185, metadata !175}
!187 = metadata !{i32 145, i32 31, metadata !185, metadata !175}
!188 = metadata !{i32 146, i32 9, metadata !185, metadata !175}
!189 = metadata !{i32 48, i32 4, metadata !176, null}
!190 = metadata !{i32 144, i32 74, metadata !182, metadata !189}
!191 = metadata !{i32 145, i32 22, metadata !185, metadata !189}
!192 = metadata !{i32 145, i32 31, metadata !185, metadata !189}
!193 = metadata !{i32 146, i32 9, metadata !185, metadata !189}
!194 = metadata !{i32 46, i32 17, metadata !177, null}
!195 = metadata !{i32 27, i32 6, metadata !196, metadata !131}
!196 = metadata !{i32 786443, metadata !123, i32 27, i32 2, metadata !45, i32 6} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 790531, metadata !198, metadata !"stream<unsigned char>.V", null, i32 129, metadata !200, i32 0, metadata !201} ; [ DW_TAG_arg_variable_field ]
!198 = metadata !{i32 786689, metadata !158, metadata !"this", metadata !53, i32 16777345, metadata !199, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ]
!200 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ]
!201 = metadata !{i32 25, i32 23, metadata !202, metadata !131}
!202 = metadata !{i32 786443, metadata !180, i32 24, i32 21, metadata !45, i32 5} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 129, i32 56, metadata !158, metadata !201}
!204 = metadata !{i32 130, i32 22, metadata !157, metadata !201}
!205 = metadata !{i32 131, i32 9, metadata !157, metadata !201}
!206 = metadata !{i32 786688, metadata !157, metadata !"tmp", metadata !53, i32 130, metadata !47, i32 0, metadata !201} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 132, i32 9, metadata !157, metadata !201}
!208 = metadata !{i32 790531, metadata !198, metadata !"stream<unsigned char>.V", null, i32 129, metadata !200, i32 0, metadata !209} ; [ DW_TAG_arg_variable_field ]
!209 = metadata !{i32 25, i32 41, metadata !202, metadata !131}
!210 = metadata !{i32 129, i32 56, metadata !158, metadata !209}
!211 = metadata !{i32 130, i32 22, metadata !157, metadata !209}
!212 = metadata !{i32 131, i32 9, metadata !157, metadata !209}
!213 = metadata !{i32 786688, metadata !157, metadata !"tmp", metadata !53, i32 130, metadata !47, i32 0, metadata !209} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 132, i32 9, metadata !157, metadata !209}
!215 = metadata !{i32 24, i32 17, metadata !180, metadata !131}
!216 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !45, i32 21, metadata !112, i32 0, metadata !131} ; [ DW_TAG_auto_variable ]
!217 = metadata !{i32 28, i32 3, metadata !218, metadata !131}
!218 = metadata !{i32 786443, metadata !196, i32 27, i32 21, metadata !45, i32 7} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 786688, metadata !123, metadata !"found", metadata !45, i32 22, metadata !91, i32 0, metadata !131} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 27, i32 17, metadata !196, metadata !131}
!221 = metadata !{i32 51, i32 2, metadata !132, null}
!222 = metadata !{i32 41, i32 46, metadata !133, null}
!223 = metadata !{i32 786688, metadata !134, metadata !"contacts_index", metadata !45, i32 34, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 53, i32 3, metadata !225, null}
!225 = metadata !{i32 786443, metadata !167, i32 52, i32 63, metadata !45, i32 16} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 786688, metadata !134, metadata !"matched", metadata !45, i32 35, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 52, i32 46, metadata !167, null}
!228 = metadata !{i32 55, i32 2, metadata !134, null}
!229 = metadata !{metadata !230}
!230 = metadata !{i32 0, i32 31, metadata !231}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !"operation", metadata !233, metadata !"int", i32 0, i32 31}
!233 = metadata !{metadata !234}
!234 = metadata !{i32 0, i32 0, i32 0}
!235 = metadata !{metadata !236}
!236 = metadata !{i32 0, i32 7, metadata !237}
!237 = metadata !{metadata !238}
!238 = metadata !{metadata !"contact_in", metadata !239, metadata !"unsigned char", i32 0, i32 7}
!239 = metadata !{metadata !240}
!240 = metadata !{i32 0, i32 63, i32 1}
!241 = metadata !{metadata !242}
!242 = metadata !{i32 0, i32 7, metadata !243}
!243 = metadata !{metadata !244}
!244 = metadata !{metadata !"db_in.V", metadata !39, metadata !"unsigned char", i32 0, i32 7}
!245 = metadata !{metadata !246}
!246 = metadata !{i32 0, i32 31, metadata !247}
!247 = metadata !{metadata !248}
!248 = metadata !{metadata !"db_size_in", metadata !233, metadata !"unsigned int", i32 0, i32 31}
!249 = metadata !{metadata !250}
!250 = metadata !{i32 0, i32 31, metadata !251}
!251 = metadata !{metadata !252}
!252 = metadata !{metadata !"error_out", metadata !39, metadata !"int", i32 0, i32 31}
!253 = metadata !{metadata !254}
!254 = metadata !{i32 0, i32 31, metadata !255}
!255 = metadata !{metadata !256}
!256 = metadata !{metadata !"contacts_size_out", metadata !39, metadata !"int", i32 0, i32 31}
!257 = metadata !{metadata !258}
!258 = metadata !{i32 0, i32 31, metadata !259}
!259 = metadata !{metadata !260}
!260 = metadata !{metadata !"results_out.V", metadata !39, metadata !"unsigned int", i32 0, i32 31}
!261 = metadata !{i32 786689, metadata !262, metadata !"operation", metadata !45, i32 16777277, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!262 = metadata !{i32 786478, i32 0, metadata !45, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhRN3hls6streamIhEEjPiS4_RNS1_IjEE", metadata !45, i32 60, metadata !263, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 68} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{null, metadata !112, metadata !265, metadata !78, metadata !108, metadata !266, metadata !266, metadata !267}
!265 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ]
!266 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!267 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !268} ; [ DW_TAG_reference_type ]
!268 = metadata !{i32 786434, metadata !52, metadata !"stream<unsigned int>", metadata !53, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !269, i32 0, null, metadata !312} ; [ DW_TAG_class_type ]
!269 = metadata !{metadata !270, metadata !271, metadata !275, metadata !278, metadata !283, metadata !286, metadata !290, metadata !295, metadata !299, metadata !300, metadata !301, metadata !304, metadata !307, metadata !308, metadata !311}
!270 = metadata !{i32 786445, metadata !268, metadata !"V", metadata !53, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ]
!271 = metadata !{i32 786478, i32 0, metadata !268, metadata !"stream", metadata !"stream", metadata !"", metadata !53, i32 83, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 83} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{null, metadata !274}
!274 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !268} ; [ DW_TAG_pointer_type ]
!275 = metadata !{i32 786478, i32 0, metadata !268, metadata !"stream", metadata !"stream", metadata !"", metadata !53, i32 86, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 86} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{null, metadata !274, metadata !67}
!278 = metadata !{i32 786478, i32 0, metadata !268, metadata !"stream", metadata !"stream", metadata !"", metadata !53, i32 91, metadata !279, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 91} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!280 = metadata !{null, metadata !274, metadata !281}
!281 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !282} ; [ DW_TAG_reference_type ]
!282 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !268} ; [ DW_TAG_const_type ]
!283 = metadata !{i32 786478, i32 0, metadata !268, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIjEaSERKS1_", metadata !53, i32 94, metadata !284, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 94} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!285 = metadata !{metadata !267, metadata !274, metadata !281}
!286 = metadata !{i32 786478, i32 0, metadata !268, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIjErsERj", metadata !53, i32 101, metadata !287, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 101} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!288 = metadata !{null, metadata !274, metadata !289}
!289 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_reference_type ]
!290 = metadata !{i32 786478, i32 0, metadata !268, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIjElsERKj", metadata !53, i32 105, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 105} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{null, metadata !274, metadata !293}
!293 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_reference_type ]
!294 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_const_type ]
!295 = metadata !{i32 786478, i32 0, metadata !268, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIjE5emptyEv", metadata !53, i32 112, metadata !296, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 112} ; [ DW_TAG_subprogram ]
!296 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!297 = metadata !{metadata !91, metadata !298}
!298 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !282} ; [ DW_TAG_pointer_type ]
!299 = metadata !{i32 786478, i32 0, metadata !268, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIjE4fullEv", metadata !53, i32 117, metadata !296, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 117} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786478, i32 0, metadata !268, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readERj", metadata !53, i32 123, metadata !287, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 123} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786478, i32 0, metadata !268, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readEv", metadata !53, i32 129, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!303 = metadata !{metadata !108, metadata !274}
!304 = metadata !{i32 786478, i32 0, metadata !268, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIjE7read_nbERj", metadata !53, i32 136, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 136} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!306 = metadata !{metadata !91, metadata !274, metadata !289}
!307 = metadata !{i32 786478, i32 0, metadata !268, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !53, i32 144, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 144} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786478, i32 0, metadata !268, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIjE8write_nbERKj", metadata !53, i32 150, metadata !309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 150} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!310 = metadata !{metadata !91, metadata !274, metadata !293}
!311 = metadata !{i32 786478, i32 0, metadata !268, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIjE4sizeEv", metadata !53, i32 157, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 157} ; [ DW_TAG_subprogram ]
!312 = metadata !{metadata !313}
!313 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !108, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!314 = metadata !{i32 61, i32 6, metadata !262, null}
!315 = metadata !{i32 786689, metadata !262, metadata !"contact_in", null, i32 62, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!316 = metadata !{i32 62, i32 16, metadata !262, null}
!317 = metadata !{i32 790531, metadata !318, metadata !"db_in.V", null, i32 63, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!318 = metadata !{i32 786689, metadata !262, metadata !"db_in", metadata !45, i32 50331711, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!319 = metadata !{i32 63, i32 30, metadata !262, null}
!320 = metadata !{i32 786689, metadata !262, metadata !"db_size_in", metadata !45, i32 67108928, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!321 = metadata !{i32 64, i32 15, metadata !262, null}
!322 = metadata !{i32 786689, metadata !262, metadata !"error_out", metadata !45, i32 83886145, metadata !266, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!323 = metadata !{i32 65, i32 7, metadata !262, null}
!324 = metadata !{i32 786689, metadata !262, metadata !"contacts_size_out", metadata !45, i32 100663362, metadata !266, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!325 = metadata !{i32 66, i32 7, metadata !262, null}
!326 = metadata !{i32 790531, metadata !327, metadata !"results_out.V", null, i32 67, metadata !328, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!327 = metadata !{i32 786689, metadata !262, metadata !"results_out", metadata !45, i32 117440579, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!328 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !329} ; [ DW_TAG_pointer_type ]
!329 = metadata !{i32 786438, metadata !52, metadata !"stream<unsigned int>", metadata !53, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !330, i32 0, null, metadata !312} ; [ DW_TAG_class_field_type ]
!330 = metadata !{metadata !270}
!331 = metadata !{i32 67, i32 29, metadata !262, null}
!332 = metadata !{i32 69, i32 1, metadata !333, null}
!333 = metadata !{i32 786443, metadata !262, i32 68, i32 2, metadata !45, i32 17} ; [ DW_TAG_lexical_block ]
!334 = metadata !{i32 70, i32 1, metadata !333, null}
!335 = metadata !{i32 72, i32 1, metadata !333, null}
!336 = metadata !{i32 73, i32 1, metadata !333, null}
!337 = metadata !{i32 74, i32 1, metadata !333, null}
!338 = metadata !{i32 75, i32 1, metadata !333, null}
!339 = metadata !{i32 76, i32 1, metadata !333, null}
!340 = metadata !{i32 77, i32 1, metadata !333, null}
!341 = metadata !{i32 78, i32 1, metadata !333, null}
!342 = metadata !{i32 87, i32 4, metadata !343, null}
!343 = metadata !{i32 786443, metadata !333, i32 83, i32 19, metadata !45, i32 18} ; [ DW_TAG_lexical_block ]
!344 = metadata !{i32 83, i32 2, metadata !333, null}
!345 = metadata !{i32 86, i32 4, metadata !343, null}
!346 = metadata !{i32 88, i32 4, metadata !343, null}
!347 = metadata !{i32 89, i32 5, metadata !348, null}
!348 = metadata !{i32 786443, metadata !343, i32 88, i32 28, metadata !45, i32 19} ; [ DW_TAG_lexical_block ]
!349 = metadata !{i32 91, i32 4, metadata !348, null}
!350 = metadata !{i32 92, i32 5, metadata !351, null}
!351 = metadata !{i32 786443, metadata !343, i32 91, i32 10, metadata !45, i32 20} ; [ DW_TAG_lexical_block ]
!352 = metadata !{i32 13, i32 50, metadata !353, metadata !350}
!353 = metadata !{i32 786478, i32 0, metadata !45, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !45, i32 13, metadata !354, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 13} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{null, metadata !265, metadata !265, metadata !112}
!356 = metadata !{i32 786689, metadata !353, metadata !"src", null, i32 13, metadata !151, i32 0, metadata !350} ; [ DW_TAG_arg_variable ]
!357 = metadata !{i32 15, i32 6, metadata !358, metadata !350}
!358 = metadata !{i32 786443, metadata !359, i32 15, i32 2, metadata !45, i32 1} ; [ DW_TAG_lexical_block ]
!359 = metadata !{i32 786443, metadata !353, i32 13, i32 66, metadata !45, i32 0} ; [ DW_TAG_lexical_block ]
!360 = metadata !{i32 16, i32 3, metadata !361, metadata !350}
!361 = metadata !{i32 786443, metadata !358, i32 15, i32 25, metadata !45, i32 2} ; [ DW_TAG_lexical_block ]
!362 = metadata !{i32 15, i32 21, metadata !358, metadata !350}
!363 = metadata !{i32 786688, metadata !359, metadata !"i", metadata !45, i32 14, metadata !112, i32 0, metadata !350} ; [ DW_TAG_auto_variable ]
!364 = metadata !{i32 93, i32 5, metadata !351, null}
!365 = metadata !{i32 90, i32 5, metadata !348, null}
!366 = metadata !{i32 96, i32 4, metadata !343, null}
!367 = metadata !{i32 99, i32 4, metadata !343, null}
!368 = metadata !{i32 100, i32 4, metadata !343, null}
!369 = metadata !{i32 101, i32 8, metadata !370, null}
!370 = metadata !{i32 786443, metadata !343, i32 101, i32 4, metadata !45, i32 21} ; [ DW_TAG_lexical_block ]
!371 = metadata !{i32 102, i32 9, metadata !372, null}
!372 = metadata !{i32 786443, metadata !373, i32 102, i32 5, metadata !45, i32 23} ; [ DW_TAG_lexical_block ]
!373 = metadata !{i32 786443, metadata !370, i32 101, i32 74, metadata !45, i32 22} ; [ DW_TAG_lexical_block ]
!374 = metadata !{i32 790531, metadata !198, metadata !"stream<unsigned char>.V", null, i32 129, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!375 = metadata !{i32 129, i32 56, metadata !158, metadata !376}
!376 = metadata !{i32 103, i32 22, metadata !377, null}
!377 = metadata !{i32 786443, metadata !372, i32 102, i32 25, metadata !45, i32 24} ; [ DW_TAG_lexical_block ]
!378 = metadata !{i32 130, i32 22, metadata !157, metadata !376}
!379 = metadata !{i32 131, i32 9, metadata !157, metadata !376}
!380 = metadata !{i32 132, i32 9, metadata !157, metadata !376}
!381 = metadata !{i32 145, i32 22, metadata !185, metadata !376}
!382 = metadata !{i32 145, i32 31, metadata !185, metadata !376}
!383 = metadata !{i32 146, i32 9, metadata !185, metadata !376}
!384 = metadata !{i32 102, i32 21, metadata !372, null}
!385 = metadata !{i32 786688, metadata !333, metadata !"i", metadata !45, i32 80, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!386 = metadata !{i32 105, i32 38, metadata !373, null}
!387 = metadata !{i32 790531, metadata !388, metadata !"stream<unsigned int>.V", null, i32 144, metadata !391, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!388 = metadata !{i32 786689, metadata !389, metadata !"this", metadata !53, i32 16777360, metadata !390, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!389 = metadata !{i32 786478, i32 0, metadata !52, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !53, i32 144, metadata !291, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !307, metadata !62, i32 144} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !268} ; [ DW_TAG_pointer_type ]
!391 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !329} ; [ DW_TAG_pointer_type ]
!392 = metadata !{i32 144, i32 48, metadata !389, metadata !386}
!393 = metadata !{i32 786688, metadata !394, metadata !"tmp", metadata !53, i32 145, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!394 = metadata !{i32 786443, metadata !389, i32 144, i32 79, metadata !53, i32 25} ; [ DW_TAG_lexical_block ]
!395 = metadata !{i32 145, i32 22, metadata !394, metadata !386}
!396 = metadata !{i32 145, i32 31, metadata !394, metadata !386}
!397 = metadata !{i32 146, i32 9, metadata !394, metadata !386}
!398 = metadata !{i32 101, i32 57, metadata !370, null}
!399 = metadata !{i32 786688, metadata !333, metadata !"database_index", metadata !45, i32 80, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!400 = metadata !{i32 110, i32 4, metadata !343, null}
!401 = metadata !{i32 111, i32 4, metadata !343, null}
!402 = metadata !{i32 112, i32 4, metadata !343, null}
!403 = metadata !{i32 113, i32 4, metadata !343, null}
!404 = metadata !{i32 116, i32 4, metadata !343, null}
!405 = metadata !{i32 117, i32 4, metadata !343, null}
!406 = metadata !{i32 118, i32 4, metadata !343, null}
!407 = metadata !{i32 120, i32 1, metadata !333, null}
