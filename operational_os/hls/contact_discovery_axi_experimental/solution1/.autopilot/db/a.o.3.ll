; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]
@db_stream_OC_V_str = internal unnamed_addr constant [12 x i8] c"db_stream.V\00" ; [#uses=1 type=[12 x i8]*]
@db_stream_V = internal global i8 0               ; [#uses=6 type=i8*]
@db_item_OC_V_str = internal unnamed_addr constant [10 x i8] c"db_item.V\00" ; [#uses=1 type=[10 x i8]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@contacts = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16 ; [#uses=2 type=[8192 x i8]*]
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@contact_OC_V_str = internal unnamed_addr constant [10 x i8] c"contact.V\00" ; [#uses=1 type=[10 x i8]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=5 type=[8 x i8]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=1 type=[7 x i8]*]
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str6 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=6 type=[10 x i8]*]
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=3 type=[8 x i8]*]
@p_str36 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str35 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str34 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str32 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str31 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str30 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str28 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str19 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=65 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=1]
define internal fastcc zeroext i1 @match_db_contact() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecInterface(i8* @db_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str31, i32 0, i32 0, [1 x i8]* @p_str32, [1 x i8]* @p_str33, [1 x i8]* @p_str34, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str35, [1 x i8]* @p_str36)
  %results_local = alloca [64 x i1], align 16     ; [#uses=2 type=[64 x i1]*]
  call void @llvm.dbg.declare(metadata !{[64 x i1]* %results_local}, metadata !41) nounwind, !dbg !109 ; [debug line = 23:7@50:35] [debug variable = results_local]
  %local_results = alloca [128 x i1], align 16    ; [#uses=2 type=[128 x i1]*]
  %db_item_temp = alloca [64 x i8], align 16      ; [#uses=2 type=[64 x i8]*]
  %contact_V = alloca i8, align 1                 ; [#uses=5 type=i8*]
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @contact_OC_V_str, i32 1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, i32 128, i32 128, i8* %contact_V, i8* %contact_V) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i8* %contact_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str11, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str13, [1 x i8]* @p_str14, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str15, [1 x i8]* @p_str16)
  call void @llvm.dbg.value(metadata !{i8* %contact_V}, i64 0, metadata !117) nounwind, !dbg !122 ; [debug line = 20:42@50:35] [debug variable = contact.V]
  %db_item_V = alloca i8, align 1                 ; [#uses=5 type=i8*]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @db_item_OC_V_str, i32 1, [1 x i8]* @p_str17, [1 x i8]* @p_str17, i32 128, i32 128, i8* %db_item_V, i8* %db_item_V) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i8* %db_item_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str18, i32 0, i32 0, [1 x i8]* @p_str19, [1 x i8]* @p_str20, [1 x i8]* @p_str21, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str22, [1 x i8]* @p_str23)
  call void @llvm.dbg.value(metadata !{i8* %db_item_V}, i64 0, metadata !123) nounwind, !dbg !125 ; [debug line = 20:79@50:35] [debug variable = db_item.V]
  call void @llvm.dbg.declare(metadata !{[128 x i1]* %local_results}, metadata !126), !dbg !130 ; [debug line = 36:7] [debug variable = local_results]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %db_item_temp}, metadata !131), !dbg !133 ; [debug line = 37:16] [debug variable = db_item_temp]
  br label %1, !dbg !134                          ; [debug line = 38:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i7 [ 0, %0 ], [ %i_2, %2 ]             ; [#uses=3 type=i7]
  %exitcond1 = icmp eq i7 %i, -64, !dbg !134      ; [#uses=1 type=i1] [debug line = 38:6]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %i_2 = add i7 %i, 1, !dbg !136                  ; [#uses=1 type=i7] [debug line = 38:17]
  br i1 %exitcond1, label %.preheader11.preheader, label %2, !dbg !134 ; [debug line = 38:6]

.preheader11.preheader:                           ; preds = %1
  br label %.preheader11, !dbg !137               ; [debug line = 41:6]

; <label>:2                                       ; preds = %1
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* @db_stream_V) nounwind, !dbg !138 ; [#uses=1 type=i8] [debug line = 131:9@39:21]
  call void @llvm.dbg.value(metadata !{i8 %tmp}, i64 0, metadata !143), !dbg !138 ; [debug line = 131:9@39:21] [debug variable = tmp]
  %tmp_1 = zext i7 %i to i64, !dbg !141           ; [#uses=1 type=i64] [debug line = 39:21]
  %db_item_temp_addr = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp_1, !dbg !141 ; [#uses=1 type=i8*] [debug line = 39:21]
  store i8 %tmp, i8* %db_item_temp_addr, align 1, !dbg !141 ; [debug line = 39:21]
  call void @llvm.dbg.value(metadata !{i7 %i_2}, i64 0, metadata !144), !dbg !136 ; [debug line = 38:17] [debug variable = i]
  br label %1, !dbg !136                          ; [debug line = 38:17]

.preheader11:                                     ; preds = %compare.exit, %.preheader11.preheader
  %contacts_index = phi i8 [ %contacts_index_3, %compare.exit ], [ 0, %.preheader11.preheader ] ; [#uses=4 type=i8]
  %exitcond9 = icmp eq i8 %contacts_index, -128, !dbg !137 ; [#uses=1 type=i1] [debug line = 41:6]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  %contacts_index_3 = add i8 %contacts_index, 1, !dbg !146 ; [#uses=1 type=i8] [debug line = 41:46]
  br i1 %exitcond9, label %.preheader.preheader, label %3, !dbg !137 ; [debug line = 41:6]

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader, !dbg !147                 ; [debug line = 52:6]

; <label>:3                                       ; preds = %.preheader11
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind, !dbg !149 ; [#uses=1 type=i32] [debug line = 41:64]
  call void @llvm.dbg.declare(metadata !{i8* %contact_V}, metadata !150), !dbg !152 ; [debug line = 42:30] [debug variable = contact.V]
  call void @llvm.dbg.declare(metadata !{i8* %db_item_V}, metadata !153), !dbg !155 ; [debug line = 44:29] [debug variable = db_item.V]
  %tmp_5 = trunc i8 %contacts_index to i7         ; [#uses=1 type=i7]
  %tmp_3 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_5, i6 0), !dbg !156 ; [#uses=1 type=i13] [debug line = 47:4]
  br label %4, !dbg !159                          ; [debug line = 46:6]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i7 [ 0, %3 ], [ %i_3, %5 ]           ; [#uses=4 type=i7]
  %i_1_cast5 = zext i7 %i_1 to i13, !dbg !159     ; [#uses=1 type=i13] [debug line = 46:6]
  %exitcond8 = icmp eq i7 %i_1, -64, !dbg !159    ; [#uses=1 type=i1] [debug line = 46:6]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %i_3 = add i7 %i_1, 1, !dbg !160                ; [#uses=1 type=i7] [debug line = 46:17]
  br i1 %exitcond8, label %.preheader3.preheader, label %5, !dbg !159 ; [debug line = 46:6]

.preheader3.preheader:                            ; preds = %4
  br label %.preheader3, !dbg !161                ; [debug line = 24:6@50:35]

; <label>:5                                       ; preds = %4
  %tmp_s = add i13 %tmp_3, %i_1_cast5, !dbg !156  ; [#uses=1 type=i13] [debug line = 47:4]
  %tmp_2 = zext i13 %tmp_s to i64, !dbg !156      ; [#uses=1 type=i64] [debug line = 47:4]
  %contacts_addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_2, !dbg !156 ; [#uses=1 type=i8*] [debug line = 47:4]
  call void @llvm.dbg.value(metadata !{i8* %contacts_addr}, i64 0, metadata !163), !dbg !165 ; [debug line = 144:74@47:4] [debug variable = din]
  %tmp_7 = load i8* %contacts_addr, align 1, !dbg !166 ; [#uses=1 type=i8] [debug line = 145:31@47:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_7}, i64 0, metadata !168), !dbg !166 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %contact_V, i8 %tmp_7) nounwind, !dbg !169 ; [debug line = 146:9@47:4]
  %tmp_9 = zext i7 %i_1 to i64, !dbg !170         ; [#uses=1 type=i64] [debug line = 48:4]
  %db_item_temp_addr_1 = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp_9, !dbg !170 ; [#uses=1 type=i8*] [debug line = 48:4]
  call void @llvm.dbg.value(metadata !{i8* %db_item_temp_addr_1}, i64 0, metadata !163), !dbg !171 ; [debug line = 144:74@48:4] [debug variable = din]
  %tmp_10 = load i8* %db_item_temp_addr_1, align 1, !dbg !172 ; [#uses=1 type=i8] [debug line = 145:31@48:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_10}, i64 0, metadata !168), !dbg !172 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %db_item_V, i8 %tmp_10) nounwind, !dbg !173 ; [debug line = 146:9@48:4]
  call void @llvm.dbg.value(metadata !{i7 %i_3}, i64 0, metadata !144), !dbg !160 ; [debug line = 46:17] [debug variable = i]
  br label %4, !dbg !160                          ; [debug line = 46:17]

.preheader3:                                      ; preds = %6, %.preheader3.preheader
  %i_i = phi i7 [ %i_4, %6 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i7]
  %exitcond3_i = icmp eq i7 %i_i, -64, !dbg !161  ; [#uses=1 type=i1] [debug line = 24:6@50:35]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %i_4 = add i7 %i_i, 1, !dbg !174                ; [#uses=1 type=i7] [debug line = 24:17@50:35]
  br i1 %exitcond3_i, label %.preheader.i.preheader, label %6, !dbg !161 ; [debug line = 24:6@50:35]

.preheader.i.preheader:                           ; preds = %.preheader3
  br label %.preheader.i, !dbg !175               ; [debug line = 27:6@50:35]

; <label>:6                                       ; preds = %.preheader3
  call void @llvm.dbg.value(metadata !{i8* %contact_V}, i64 0, metadata !177) nounwind, !dbg !183 ; [debug line = 129:56@25:23@50:35] [debug variable = stream<unsigned char>.V]
  %tmp_11 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %contact_V) nounwind, !dbg !184 ; [#uses=1 type=i8] [debug line = 131:9@25:23@50:35]
  call void @llvm.dbg.value(metadata !{i8 %tmp_11}, i64 0, metadata !143), !dbg !184 ; [debug line = 131:9@25:23@50:35] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %db_item_V}, i64 0, metadata !185) nounwind, !dbg !187 ; [debug line = 129:56@25:41@50:35] [debug variable = stream<unsigned char>.V]
  %tmp_12 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %db_item_V) nounwind, !dbg !188 ; [#uses=1 type=i8] [debug line = 131:9@25:41@50:35]
  call void @llvm.dbg.value(metadata !{i8 %tmp_12}, i64 0, metadata !143), !dbg !188 ; [debug line = 131:9@25:41@50:35] [debug variable = tmp]
  %tmp_i = icmp eq i8 %tmp_11, %tmp_12, !dbg !186 ; [#uses=1 type=i1] [debug line = 25:41@50:35]
  %tmp_5_i = zext i7 %i_i to i64, !dbg !186       ; [#uses=1 type=i64] [debug line = 25:41@50:35]
  %results_local_addr = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp_5_i, !dbg !186 ; [#uses=1 type=i1*] [debug line = 25:41@50:35]
  store i1 %tmp_i, i1* %results_local_addr, align 1, !dbg !186 ; [debug line = 25:41@50:35]
  call void @llvm.dbg.value(metadata !{i7 %i_4}, i64 0, metadata !189) nounwind, !dbg !174 ; [debug line = 24:17@50:35] [debug variable = i]
  br label %.preheader3, !dbg !174                ; [debug line = 24:17@50:35]

.preheader.i:                                     ; preds = %7, %.preheader.i.preheader
  %i_1_i = phi i7 [ %i_5, %7 ], [ 0, %.preheader.i.preheader ] ; [#uses=3 type=i7]
  %found_i = phi i1 [ %found, %7 ], [ true, %.preheader.i.preheader ] ; [#uses=2 type=i1]
  %exitcond_i = icmp eq i7 %i_1_i, -64, !dbg !175 ; [#uses=1 type=i1] [debug line = 27:6@50:35]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %i_5 = add i7 %i_1_i, 1, !dbg !190              ; [#uses=1 type=i7] [debug line = 27:17@50:35]
  br i1 %exitcond_i, label %compare.exit, label %7, !dbg !175 ; [debug line = 27:6@50:35]

; <label>:7                                       ; preds = %.preheader.i
  %tmp_6_i = zext i7 %i_1_i to i64, !dbg !191     ; [#uses=1 type=i64] [debug line = 28:3@50:35]
  %results_local_addr_1 = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp_6_i, !dbg !191 ; [#uses=1 type=i1*] [debug line = 28:3@50:35]
  %results_local_load = load i1* %results_local_addr_1, align 1, !dbg !191 ; [#uses=1 type=i1] [debug line = 28:3@50:35]
  %found = and i1 %results_local_load, %found_i, !dbg !191 ; [#uses=1 type=i1] [debug line = 28:3@50:35]
  call void @llvm.dbg.value(metadata !{i1 %found}, i64 0, metadata !193) nounwind, !dbg !191 ; [debug line = 28:3@50:35] [debug variable = found]
  call void @llvm.dbg.value(metadata !{i7 %i_5}, i64 0, metadata !189) nounwind, !dbg !190 ; [debug line = 27:17@50:35] [debug variable = i]
  br label %.preheader.i, !dbg !190               ; [debug line = 27:17@50:35]

compare.exit:                                     ; preds = %.preheader.i
  %tmp_8 = zext i8 %contacts_index to i64, !dbg !110 ; [#uses=1 type=i64] [debug line = 50:35]
  %local_results_addr_1 = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp_8, !dbg !110 ; [#uses=1 type=i1*] [debug line = 50:35]
  store i1 %found_i, i1* %local_results_addr_1, align 1, !dbg !110 ; [debug line = 50:35]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_6) nounwind, !dbg !194 ; [#uses=0 type=i32] [debug line = 51:2]
  call void @llvm.dbg.value(metadata !{i8 %contacts_index_3}, i64 0, metadata !195), !dbg !146 ; [debug line = 41:46] [debug variable = contacts_index]
  br label %.preheader11, !dbg !146               ; [debug line = 41:46]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %contacts_index_1 = phi i8 [ %contacts_index_2, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i8]
  %matched = phi i1 [ %matched_1, %8 ], [ false, %.preheader.preheader ] ; [#uses=2 type=i1]
  %exitcond = icmp eq i8 %contacts_index_1, -128, !dbg !147 ; [#uses=1 type=i1] [debug line = 52:6]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  %contacts_index_2 = add i8 %contacts_index_1, 1, !dbg !196 ; [#uses=1 type=i8] [debug line = 52:46]
  br i1 %exitcond, label %9, label %8, !dbg !147  ; [debug line = 52:6]

; <label>:8                                       ; preds = %.preheader
  %tmp_4 = zext i8 %contacts_index_1 to i64, !dbg !197 ; [#uses=1 type=i64] [debug line = 53:3]
  %local_results_addr = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp_4, !dbg !197 ; [#uses=1 type=i1*] [debug line = 53:3]
  %local_results_load = load i1* %local_results_addr, align 1, !dbg !197 ; [#uses=1 type=i1] [debug line = 53:3]
  %matched_1 = or i1 %local_results_load, %matched, !dbg !197 ; [#uses=1 type=i1] [debug line = 53:3]
  call void @llvm.dbg.value(metadata !{i1 %matched_1}, i64 0, metadata !199), !dbg !197 ; [debug line = 53:3] [debug variable = matched]
  call void @llvm.dbg.value(metadata !{i8 %contacts_index_2}, i64 0, metadata !195), !dbg !196 ; [debug line = 52:46] [debug variable = contacts_index]
  br label %.preheader, !dbg !196                 ; [debug line = 52:46]

; <label>:9                                       ; preds = %.preheader
  ret i1 %matched, !dbg !200                      ; [debug line = 55:2]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=37]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, [64 x i8]* %contact_in, i8* %db_in_V, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, i32* %results_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([12 x i8]* @db_stream_OC_V_str, i32 1, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 128, i32 128, i8* @db_stream_V, i8* @db_stream_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i8* @db_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str31, i32 0, i32 0, [1 x i8]* @p_str32, [1 x i8]* @p_str33, [1 x i8]* @p_str34, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str35, [1 x i8]* @p_str36)
  call void (...)* @_ssdm_op_SpecInterface(i32* %results_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str24, i32 0, i32 0, [1 x i8]* @p_str25, [1 x i8]* @p_str26, [1 x i8]* @p_str27, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str28, [1 x i8]* @p_str29)
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !201
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i8]* %contact_in), !map !207
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %db_in_V), !map !213
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %db_size_in), !map !217
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !221
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !225
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %results_out_V), !map !229
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %db_size_in_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %db_size_in) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %db_size_in_read}, i64 0, metadata !233), !dbg !286 ; [debug line = 64:15] [debug variable = db_size_in]
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %operation_read}, i64 0, metadata !287), !dbg !288 ; [debug line = 61:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !287), !dbg !288 ; [debug line = 61:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %contact_in}, i64 0, metadata !289), !dbg !290 ; [debug line = 62:16] [debug variable = contact_in]
  call void @llvm.dbg.value(metadata !{i8* %db_in_V}, i64 0, metadata !291), !dbg !293 ; [debug line = 63:30] [debug variable = db_in.V]
  call void @llvm.dbg.value(metadata !{i32 %db_size_in}, i64 0, metadata !233), !dbg !286 ; [debug line = 64:15] [debug variable = db_size_in]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !294), !dbg !295 ; [debug line = 65:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !296), !dbg !297 ; [debug line = 66:7] [debug variable = contacts_size_out]
  call void @llvm.dbg.value(metadata !{i32* %results_out_V}, i64 0, metadata !298), !dbg !303 ; [debug line = 67:29] [debug variable = results_out.V]
  call void (...)* @_ssdm_op_SpecInterface(i8* %db_in_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !304 ; [debug line = 70:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !306 ; [debug line = 71:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !307 ; [debug line = 72:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !308 ; [debug line = 74:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !309 ; [debug line = 75:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !310 ; [debug line = 76:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !311 ; [debug line = 77:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !312 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !313 ; [debug line = 79:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str5, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !314 ; [debug line = 80:1]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecMemCore([64 x i8]* %contact_in, [1 x i8]* @p_str7, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str7, i32 -1, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([64 x i8]* %contact_in, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %contacts_size_load = load i32* @contacts_size, align 4, !dbg !315 ; [#uses=6 type=i32] [debug line = 89:4]
  switch i32 %operation_read, label %12 [
    i32 0, label %1
    i32 1, label %7
    i32 2, label %11
  ], !dbg !317                                    ; [debug line = 85:2]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !318 ; [debug line = 88:4]
  %tmp = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load, i32 7, i32 31), !dbg !319 ; [#uses=1 type=i25] [debug line = 90:4]
  %icmp = icmp sgt i25 %tmp, 0, !dbg !319         ; [#uses=1 type=i1] [debug line = 90:4]
  br i1 %icmp, label %2, label %3, !dbg !319      ; [debug line = 90:4]

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1), !dbg !320 ; [debug line = 91:5]
  br label %6, !dbg !322                          ; [debug line = 93:4]

; <label>:3                                       ; preds = %1
  %tmp_13 = trunc i32 %contacts_size_load to i9   ; [#uses=1 type=i9]
  %tmp_1_cast = call i15 @_ssdm_op_BitConcatenate.i15.i9.i6(i9 %tmp_13, i6 0), !dbg !323 ; [#uses=1 type=i15] [debug line = 13:50@94:5]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %contact_in}, i64 0, metadata !329), !dbg !323 ; [debug line = 13:50@94:5] [debug variable = src]
  br label %4, !dbg !330                          ; [debug line = 15:6@94:5]

; <label>:4                                       ; preds = %5, %3
  %i_i = phi i7 [ 0, %3 ], [ %i_6, %5 ]           ; [#uses=4 type=i7]
  %exitcond_i = icmp eq i7 %i_i, -64, !dbg !330   ; [#uses=1 type=i1] [debug line = 15:6@94:5]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %i_6 = add i7 %i_i, 1, !dbg !333                ; [#uses=1 type=i7] [debug line = 15:21@94:5]
  br i1 %exitcond_i, label %_memcpy.exit, label %5, !dbg !330 ; [debug line = 15:6@94:5]

; <label>:5                                       ; preds = %4
  %tmp_i = zext i7 %i_i to i64, !dbg !334         ; [#uses=1 type=i64] [debug line = 16:3@94:5]
  %tmp_i_cast = zext i7 %i_i to i15, !dbg !334    ; [#uses=1 type=i15] [debug line = 16:3@94:5]
  %contact_in_addr = getelementptr [64 x i8]* %contact_in, i64 0, i64 %tmp_i, !dbg !334 ; [#uses=1 type=i8*] [debug line = 16:3@94:5]
  %contact_in_load = load i8* %contact_in_addr, align 1, !dbg !334 ; [#uses=1 type=i8] [debug line = 16:3@94:5]
  %sum_i = add i15 %tmp_i_cast, %tmp_1_cast       ; [#uses=1 type=i15]
  %sum_i_cast = sext i15 %sum_i to i64            ; [#uses=1 type=i64]
  %contacts_addr = getelementptr [8192 x i8]* @contacts, i64 0, i64 %sum_i_cast, !dbg !334 ; [#uses=1 type=i8*] [debug line = 16:3@94:5]
  store i8 %contact_in_load, i8* %contacts_addr, align 1, !dbg !334 ; [debug line = 16:3@94:5]
  call void @llvm.dbg.value(metadata !{i7 %i_6}, i64 0, metadata !336), !dbg !333 ; [debug line = 15:21@94:5] [debug variable = i]
  br label %4, !dbg !333                          ; [debug line = 15:21@94:5]

_memcpy.exit:                                     ; preds = %4
  %tmp_2 = add nsw i32 %contacts_size_load, 1, !dbg !337 ; [#uses=2 type=i32] [debug line = 95:5]
  store i32 %tmp_2, i32* @contacts_size, align 4, !dbg !337 ; [debug line = 95:5]
  br label %6

; <label>:6                                       ; preds = %_memcpy.exit, %2
  %storemerge = phi i32 [ %tmp_2, %_memcpy.exit ], [ %contacts_size_load, %2 ] ; [#uses=1 type=i32]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %storemerge), !dbg !338 ; [debug line = 92:5]
  br label %.loopexit, !dbg !339                  ; [debug line = 98:4]

; <label>:7                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !340 ; [debug line = 101:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load), !dbg !341 ; [debug line = 102:4]
  br label %8, !dbg !342                          ; [debug line = 103:8]

; <label>:8                                       ; preds = %10, %7
  %database_index = phi i32 [ 0, %7 ], [ %database_index_1, %10 ] ; [#uses=2 type=i32]
  %exitcond4 = icmp eq i32 %database_index, %db_size_in_read, !dbg !342 ; [#uses=1 type=i1] [debug line = 103:8]
  %database_index_1 = add nsw i32 %database_index, 1, !dbg !344 ; [#uses=1 type=i32] [debug line = 103:57]
  br i1 %exitcond4, label %.loopexit.loopexit, label %.preheader.preheader, !dbg !342 ; [debug line = 103:8]

.preheader.preheader:                             ; preds = %8
  br label %.preheader, !dbg !345                 ; [debug line = 104:9]

.preheader:                                       ; preds = %9, %.preheader.preheader
  %i = phi i7 [ %i_4, %9 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i7]
  %exitcond = icmp eq i7 %i, -64, !dbg !345       ; [#uses=1 type=i1] [debug line = 104:9]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %i_4 = add i7 %i, 1, !dbg !348                  ; [#uses=1 type=i7] [debug line = 104:21]
  br i1 %exitcond, label %10, label %9, !dbg !345 ; [debug line = 104:9]

; <label>:9                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i8* %db_in_V}, i64 0, metadata !349), !dbg !350 ; [debug line = 129:56@105:22] [debug variable = stream<unsigned char>.V]
  %tmp_14 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %db_in_V), !dbg !353 ; [#uses=1 type=i8] [debug line = 131:9@105:22]
  call void @llvm.dbg.value(metadata !{i8 %tmp_14}, i64 0, metadata !143), !dbg !353 ; [debug line = 131:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp_14}, i64 0, metadata !168), !dbg !354 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* @db_stream_V, i8 %tmp_14), !dbg !355 ; [debug line = 146:9@105:22]
  call void @llvm.dbg.value(metadata !{i7 %i_4}, i64 0, metadata !356), !dbg !348 ; [debug line = 104:21] [debug variable = i]
  br label %.preheader, !dbg !348                 ; [debug line = 104:21]

; <label>:10                                      ; preds = %.preheader
  %tmp_3 = call fastcc zeroext i1 @match_db_contact(), !dbg !357 ; [#uses=1 type=i1] [debug line = 107:38]
  %tmp_4 = zext i1 %tmp_3 to i32, !dbg !357       ; [#uses=1 type=i32] [debug line = 107:38]
  call void @llvm.dbg.value(metadata !{i32* %results_out_V}, i64 0, metadata !358), !dbg !363 ; [debug line = 144:48@107:38] [debug variable = stream<unsigned int>.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_4}, i64 0, metadata !364), !dbg !366 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %results_out_V, i32 %tmp_4), !dbg !367 ; [debug line = 146:9@107:38]
  call void @llvm.dbg.value(metadata !{i32 %database_index_1}, i64 0, metadata !368), !dbg !344 ; [debug line = 103:57] [debug variable = database_index]
  br label %8, !dbg !344                          ; [debug line = 103:57]

; <label>:11                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !369 ; [debug line = 112:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !370 ; [debug line = 113:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0), !dbg !371 ; [debug line = 114:4]
  br label %.loopexit, !dbg !372                  ; [debug line = 115:4]

; <label>:12                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load), !dbg !373 ; [debug line = 118:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3), !dbg !374 ; [debug line = 119:4]
  br label %.loopexit, !dbg !375                  ; [debug line = 120:4]

.loopexit.loopexit:                               ; preds = %8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %12, %11, %6
  ret void, !dbg !376                             ; [debug line = 122:1]
}

; [#uses=9]
define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; [#uses=0 type=i8]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=16]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=3]
define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)   ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=0]
declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=1]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_18 = trunc i32 %empty to i25             ; [#uses=1 type=i25]
  ret i25 %empty_18
}

; [#uses=1]
define weak i15 @_ssdm_op_BitConcatenate.i15.i9.i6(i9, i6) nounwind readnone {
entry:
  %empty = zext i9 %0 to i15                      ; [#uses=1 type=i15]
  %empty_19 = zext i6 %1 to i15                   ; [#uses=1 type=i15]
  %empty_20 = shl i15 %empty, 6                   ; [#uses=1 type=i15]
  %empty_21 = or i15 %empty_20, %empty_19         ; [#uses=1 type=i15]
  ret i15 %empty_21
}

; [#uses=1]
define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13                      ; [#uses=1 type=i13]
  %empty_22 = zext i6 %1 to i13                   ; [#uses=1 type=i13]
  %empty_23 = shl i13 %empty, 6                   ; [#uses=1 type=i13]
  %empty_24 = or i13 %empty_23, %empty_22         ; [#uses=1 type=i13]
  ret i13 %empty_24
}

; [#uses=1]
declare i8 @_autotb_FifoWrite_i8(i8*, i8)

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare i8 @_autotb_FifoRead_i8(i8*)

!hls.encrypted.func = !{}
!opencl.kernels = !{!0, !7, !13, !19, !25, !31, !33, !33, !33}
!llvm.map.gv = !{!34}

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
!34 = metadata !{metadata !35, [0 x i32]* @llvm_global_ctors_0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"llvm.global_ctors.0", metadata !39, metadata !"", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, i32 1}
!41 = metadata !{i32 786688, metadata !42, metadata !"results_local", metadata !44, i32 23, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 786443, metadata !43, i32 20, i32 87, metadata !44, i32 3} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786478, i32 0, metadata !44, metadata !"compare", metadata !"compare", metadata !"_Z7compareRN3hls6streamIhEES2_", metadata !44, i32 20, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !59, i32 20} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786473, metadata !"contact_discovery_axi_experimental/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{metadata !47, metadata !48, metadata !48}
!47 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_reference_type ]
!49 = metadata !{i32 786434, metadata !50, metadata !"stream<unsigned char>", metadata !51, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !52, i32 0, null, metadata !104} ; [ DW_TAG_class_type ]
!50 = metadata !{i32 786489, null, metadata !"hls", metadata !51, i32 69} ; [ DW_TAG_namespace ]
!51 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!52 = metadata !{metadata !53, metadata !55, metadata !61, metadata !67, metadata !72, metadata !75, metadata !79, metadata !84, metadata !88, metadata !89, metadata !90, metadata !93, metadata !96, metadata !97, metadata !100}
!53 = metadata !{i32 786445, metadata !49, metadata !"V", metadata !51, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 786478, i32 0, metadata !49, metadata !"stream", metadata !"stream", metadata !"", metadata !51, i32 83, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 83} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{null, metadata !58}
!58 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !49} ; [ DW_TAG_pointer_type ]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!61 = metadata !{i32 786478, i32 0, metadata !49, metadata !"stream", metadata !"stream", metadata !"", metadata !51, i32 86, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 86} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{null, metadata !58, metadata !64}
!64 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_const_type ]
!66 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 786478, i32 0, metadata !49, metadata !"stream", metadata !"stream", metadata !"", metadata !51, i32 91, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !59, i32 91} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{null, metadata !58, metadata !70}
!70 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_reference_type ]
!71 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ]
!72 = metadata !{i32 786478, i32 0, metadata !49, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !51, i32 94, metadata !73, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !59, i32 94} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{metadata !48, metadata !58, metadata !70}
!75 = metadata !{i32 786478, i32 0, metadata !49, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !51, i32 101, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 101} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !58, metadata !78}
!78 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_reference_type ]
!79 = metadata !{i32 786478, i32 0, metadata !49, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !51, i32 105, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 105} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !58, metadata !82}
!82 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_reference_type ]
!83 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ]
!84 = metadata !{i32 786478, i32 0, metadata !49, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !51, i32 112, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 112} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{metadata !47, metadata !87}
!87 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !71} ; [ DW_TAG_pointer_type ]
!88 = metadata !{i32 786478, i32 0, metadata !49, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !51, i32 117, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 117} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786478, i32 0, metadata !49, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !51, i32 123, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 123} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786478, i32 0, metadata !49, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !51, i32 129, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 129} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{metadata !54, metadata !58}
!93 = metadata !{i32 786478, i32 0, metadata !49, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !51, i32 136, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 136} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{metadata !47, metadata !58, metadata !78}
!96 = metadata !{i32 786478, i32 0, metadata !49, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !51, i32 144, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 144} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786478, i32 0, metadata !49, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !51, i32 150, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 150} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !47, metadata !58, metadata !82}
!100 = metadata !{i32 786478, i32 0, metadata !49, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !51, i32 157, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 157} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{metadata !103, metadata !58}
!103 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !54, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!106 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !47, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!109 = metadata !{i32 23, i32 7, metadata !42, metadata !110}
!110 = metadata !{i32 50, i32 35, metadata !111, null}
!111 = metadata !{i32 786443, metadata !112, i32 41, i32 63, metadata !44, i32 12} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786443, metadata !113, i32 41, i32 2, metadata !44, i32 11} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786443, metadata !114, i32 33, i32 24, metadata !44, i32 8} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786478, i32 0, metadata !44, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contactv", metadata !44, i32 33, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 ()* @match_db_contact, null, null, metadata !59, i32 33} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{metadata !47}
!117 = metadata !{i32 790531, metadata !118, metadata !"contact.V", null, i32 20, metadata !119, i32 0, metadata !110} ; [ DW_TAG_arg_variable_field ]
!118 = metadata !{i32 786689, metadata !43, metadata !"contact", metadata !44, i32 16777236, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ]
!120 = metadata !{i32 786438, metadata !50, metadata !"stream<unsigned char>", metadata !51, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !121, i32 0, null, metadata !104} ; [ DW_TAG_class_field_type ]
!121 = metadata !{metadata !53}
!122 = metadata !{i32 20, i32 42, metadata !43, metadata !110}
!123 = metadata !{i32 790531, metadata !124, metadata !"db_item.V", null, i32 20, metadata !119, i32 0, metadata !110} ; [ DW_TAG_arg_variable_field ]
!124 = metadata !{i32 786689, metadata !43, metadata !"db_item", metadata !44, i32 33554452, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 20, i32 79, metadata !43, metadata !110}
!126 = metadata !{i32 786688, metadata !113, metadata !"local_results", metadata !44, i32 36, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !47, metadata !128, i32 0, i32 0} ; [ DW_TAG_array_type ]
!128 = metadata !{metadata !129}
!129 = metadata !{i32 786465, i64 0, i64 127}     ; [ DW_TAG_subrange_type ]
!130 = metadata !{i32 36, i32 7, metadata !113, null}
!131 = metadata !{i32 786688, metadata !113, metadata !"db_item_temp", metadata !44, i32 37, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !54, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ]
!133 = metadata !{i32 37, i32 16, metadata !113, null}
!134 = metadata !{i32 38, i32 6, metadata !135, null}
!135 = metadata !{i32 786443, metadata !113, i32 38, i32 2, metadata !44, i32 9} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 38, i32 17, metadata !135, null}
!137 = metadata !{i32 41, i32 6, metadata !112, null}
!138 = metadata !{i32 131, i32 9, metadata !139, metadata !141}
!139 = metadata !{i32 786443, metadata !140, i32 129, i32 63, metadata !51, i32 27} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 786478, i32 0, metadata !50, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !51, i32 129, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !90, metadata !59, i32 129} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 39, i32 21, metadata !142, null}
!142 = metadata !{i32 786443, metadata !135, i32 38, i32 21, metadata !44, i32 10} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 786688, metadata !139, metadata !"tmp", metadata !51, i32 130, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 786688, metadata !113, metadata !"i", metadata !44, i32 34, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 41, i32 46, metadata !112, null}
!147 = metadata !{i32 52, i32 6, metadata !148, null}
!148 = metadata !{i32 786443, metadata !113, i32 52, i32 2, metadata !44, i32 15} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 41, i32 64, metadata !111, null}
!150 = metadata !{i32 790529, metadata !151, metadata !"contact.V", null, i32 42, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!151 = metadata !{i32 786688, metadata !111, metadata !"contact", metadata !44, i32 42, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 42, i32 30, metadata !111, null}
!153 = metadata !{i32 790529, metadata !154, metadata !"db_item.V", null, i32 44, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!154 = metadata !{i32 786688, metadata !111, metadata !"db_item", metadata !44, i32 44, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 44, i32 29, metadata !111, null}
!156 = metadata !{i32 47, i32 4, metadata !157, null}
!157 = metadata !{i32 786443, metadata !158, i32 46, i32 21, metadata !44, i32 14} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !111, i32 46, i32 2, metadata !44, i32 13} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 46, i32 6, metadata !158, null}
!160 = metadata !{i32 46, i32 17, metadata !158, null}
!161 = metadata !{i32 24, i32 6, metadata !162, metadata !110}
!162 = metadata !{i32 786443, metadata !42, i32 24, i32 2, metadata !44, i32 4} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786689, metadata !164, metadata !"din", metadata !51, i32 33554576, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 786478, i32 0, metadata !50, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !51, i32 144, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !96, metadata !59, i32 144} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 144, i32 74, metadata !164, metadata !156}
!166 = metadata !{i32 145, i32 31, metadata !167, metadata !156}
!167 = metadata !{i32 786443, metadata !164, i32 144, i32 79, metadata !51, i32 26} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 786688, metadata !167, metadata !"tmp", metadata !51, i32 145, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 146, i32 9, metadata !167, metadata !156}
!170 = metadata !{i32 48, i32 4, metadata !157, null}
!171 = metadata !{i32 144, i32 74, metadata !164, metadata !170}
!172 = metadata !{i32 145, i32 31, metadata !167, metadata !170}
!173 = metadata !{i32 146, i32 9, metadata !167, metadata !170}
!174 = metadata !{i32 24, i32 17, metadata !162, metadata !110}
!175 = metadata !{i32 27, i32 6, metadata !176, metadata !110}
!176 = metadata !{i32 786443, metadata !42, i32 27, i32 2, metadata !44, i32 6} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 790531, metadata !178, metadata !"stream<unsigned char>.V", null, i32 129, metadata !180, i32 0, metadata !181} ; [ DW_TAG_arg_variable_field ]
!178 = metadata !{i32 786689, metadata !140, metadata !"this", metadata !51, i32 16777345, metadata !179, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!180 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ]
!181 = metadata !{i32 25, i32 23, metadata !182, metadata !110}
!182 = metadata !{i32 786443, metadata !162, i32 24, i32 21, metadata !44, i32 5} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 129, i32 56, metadata !140, metadata !181}
!184 = metadata !{i32 131, i32 9, metadata !139, metadata !181}
!185 = metadata !{i32 790531, metadata !178, metadata !"stream<unsigned char>.V", null, i32 129, metadata !180, i32 0, metadata !186} ; [ DW_TAG_arg_variable_field ]
!186 = metadata !{i32 25, i32 41, metadata !182, metadata !110}
!187 = metadata !{i32 129, i32 56, metadata !140, metadata !186}
!188 = metadata !{i32 131, i32 9, metadata !139, metadata !186}
!189 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !44, i32 21, metadata !145, i32 0, metadata !110} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 27, i32 17, metadata !176, metadata !110}
!191 = metadata !{i32 28, i32 3, metadata !192, metadata !110}
!192 = metadata !{i32 786443, metadata !176, i32 27, i32 21, metadata !44, i32 7} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 786688, metadata !42, metadata !"found", metadata !44, i32 22, metadata !47, i32 0, metadata !110} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 51, i32 2, metadata !111, null}
!195 = metadata !{i32 786688, metadata !113, metadata !"contacts_index", metadata !44, i32 34, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 52, i32 46, metadata !148, null}
!197 = metadata !{i32 53, i32 3, metadata !198, null}
!198 = metadata !{i32 786443, metadata !148, i32 52, i32 63, metadata !44, i32 16} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 786688, metadata !113, metadata !"matched", metadata !44, i32 35, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 55, i32 2, metadata !113, null}
!201 = metadata !{metadata !202}
!202 = metadata !{i32 0, i32 31, metadata !203}
!203 = metadata !{metadata !204}
!204 = metadata !{metadata !"operation", metadata !205, metadata !"int", i32 0, i32 31}
!205 = metadata !{metadata !206}
!206 = metadata !{i32 0, i32 0, i32 0}
!207 = metadata !{metadata !208}
!208 = metadata !{i32 0, i32 7, metadata !209}
!209 = metadata !{metadata !210}
!210 = metadata !{metadata !"contact_in", metadata !211, metadata !"unsigned char", i32 0, i32 7}
!211 = metadata !{metadata !212}
!212 = metadata !{i32 0, i32 63, i32 1}
!213 = metadata !{metadata !214}
!214 = metadata !{i32 0, i32 7, metadata !215}
!215 = metadata !{metadata !216}
!216 = metadata !{metadata !"db_in.V", metadata !39, metadata !"unsigned char", i32 0, i32 7}
!217 = metadata !{metadata !218}
!218 = metadata !{i32 0, i32 31, metadata !219}
!219 = metadata !{metadata !220}
!220 = metadata !{metadata !"db_size_in", metadata !205, metadata !"unsigned int", i32 0, i32 31}
!221 = metadata !{metadata !222}
!222 = metadata !{i32 0, i32 31, metadata !223}
!223 = metadata !{metadata !224}
!224 = metadata !{metadata !"error_out", metadata !39, metadata !"int", i32 0, i32 31}
!225 = metadata !{metadata !226}
!226 = metadata !{i32 0, i32 31, metadata !227}
!227 = metadata !{metadata !228}
!228 = metadata !{metadata !"contacts_size_out", metadata !39, metadata !"int", i32 0, i32 31}
!229 = metadata !{metadata !230}
!230 = metadata !{i32 0, i32 31, metadata !231}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !"results_out.V", metadata !39, metadata !"unsigned int", i32 0, i32 31}
!233 = metadata !{i32 786689, metadata !234, metadata !"db_size_in", metadata !44, i32 67108928, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 786478, i32 0, metadata !44, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhRN3hls6streamIhEEjPiS4_RNS1_IjEE", metadata !44, i32 60, metadata !235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !59, i32 68} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{null, metadata !145, metadata !237, metadata !48, metadata !103, metadata !238, metadata !238, metadata !239}
!237 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ]
!238 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ]
!239 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_reference_type ]
!240 = metadata !{i32 786434, metadata !50, metadata !"stream<unsigned int>", metadata !51, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !241, i32 0, null, metadata !284} ; [ DW_TAG_class_type ]
!241 = metadata !{metadata !242, metadata !243, metadata !247, metadata !250, metadata !255, metadata !258, metadata !262, metadata !267, metadata !271, metadata !272, metadata !273, metadata !276, metadata !279, metadata !280, metadata !283}
!242 = metadata !{i32 786445, metadata !240, metadata !"V", metadata !51, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ]
!243 = metadata !{i32 786478, i32 0, metadata !240, metadata !"stream", metadata !"stream", metadata !"", metadata !51, i32 83, metadata !244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 83} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{null, metadata !246}
!246 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !240} ; [ DW_TAG_pointer_type ]
!247 = metadata !{i32 786478, i32 0, metadata !240, metadata !"stream", metadata !"stream", metadata !"", metadata !51, i32 86, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 86} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!249 = metadata !{null, metadata !246, metadata !64}
!250 = metadata !{i32 786478, i32 0, metadata !240, metadata !"stream", metadata !"stream", metadata !"", metadata !51, i32 91, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !59, i32 91} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{null, metadata !246, metadata !253}
!253 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !254} ; [ DW_TAG_reference_type ]
!254 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_const_type ]
!255 = metadata !{i32 786478, i32 0, metadata !240, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIjEaSERKS1_", metadata !51, i32 94, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !59, i32 94} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!257 = metadata !{metadata !239, metadata !246, metadata !253}
!258 = metadata !{i32 786478, i32 0, metadata !240, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIjErsERj", metadata !51, i32 101, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 101} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!260 = metadata !{null, metadata !246, metadata !261}
!261 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_reference_type ]
!262 = metadata !{i32 786478, i32 0, metadata !240, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIjElsERKj", metadata !51, i32 105, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 105} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{null, metadata !246, metadata !265}
!265 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !266} ; [ DW_TAG_reference_type ]
!266 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_const_type ]
!267 = metadata !{i32 786478, i32 0, metadata !240, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIjE5emptyEv", metadata !51, i32 112, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 112} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{metadata !47, metadata !270}
!270 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !254} ; [ DW_TAG_pointer_type ]
!271 = metadata !{i32 786478, i32 0, metadata !240, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIjE4fullEv", metadata !51, i32 117, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 117} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786478, i32 0, metadata !240, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readERj", metadata !51, i32 123, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 123} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 786478, i32 0, metadata !240, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readEv", metadata !51, i32 129, metadata !274, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 129} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!275 = metadata !{metadata !103, metadata !246}
!276 = metadata !{i32 786478, i32 0, metadata !240, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIjE7read_nbERj", metadata !51, i32 136, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 136} ; [ DW_TAG_subprogram ]
!277 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!278 = metadata !{metadata !47, metadata !246, metadata !261}
!279 = metadata !{i32 786478, i32 0, metadata !240, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !51, i32 144, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 144} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786478, i32 0, metadata !240, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIjE8write_nbERKj", metadata !51, i32 150, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 150} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!282 = metadata !{metadata !47, metadata !246, metadata !265}
!283 = metadata !{i32 786478, i32 0, metadata !240, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIjE4sizeEv", metadata !51, i32 157, metadata !274, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !59, i32 157} ; [ DW_TAG_subprogram ]
!284 = metadata !{metadata !285}
!285 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !103, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!286 = metadata !{i32 64, i32 15, metadata !234, null}
!287 = metadata !{i32 786689, metadata !234, metadata !"operation", metadata !44, i32 16777277, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!288 = metadata !{i32 61, i32 6, metadata !234, null}
!289 = metadata !{i32 786689, metadata !234, metadata !"contact_in", null, i32 62, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 62, i32 16, metadata !234, null}
!291 = metadata !{i32 790531, metadata !292, metadata !"db_in.V", null, i32 63, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!292 = metadata !{i32 786689, metadata !234, metadata !"db_in", metadata !44, i32 50331711, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!293 = metadata !{i32 63, i32 30, metadata !234, null}
!294 = metadata !{i32 786689, metadata !234, metadata !"error_out", metadata !44, i32 83886145, metadata !238, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!295 = metadata !{i32 65, i32 7, metadata !234, null}
!296 = metadata !{i32 786689, metadata !234, metadata !"contacts_size_out", metadata !44, i32 100663362, metadata !238, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!297 = metadata !{i32 66, i32 7, metadata !234, null}
!298 = metadata !{i32 790531, metadata !299, metadata !"results_out.V", null, i32 67, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!299 = metadata !{i32 786689, metadata !234, metadata !"results_out", metadata !44, i32 117440579, metadata !239, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!300 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !301} ; [ DW_TAG_pointer_type ]
!301 = metadata !{i32 786438, metadata !50, metadata !"stream<unsigned int>", metadata !51, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !302, i32 0, null, metadata !284} ; [ DW_TAG_class_field_type ]
!302 = metadata !{metadata !242}
!303 = metadata !{i32 67, i32 29, metadata !234, null}
!304 = metadata !{i32 70, i32 1, metadata !305, null}
!305 = metadata !{i32 786443, metadata !234, i32 68, i32 2, metadata !44, i32 17} ; [ DW_TAG_lexical_block ]
!306 = metadata !{i32 71, i32 1, metadata !305, null}
!307 = metadata !{i32 72, i32 1, metadata !305, null}
!308 = metadata !{i32 74, i32 1, metadata !305, null}
!309 = metadata !{i32 75, i32 1, metadata !305, null}
!310 = metadata !{i32 76, i32 1, metadata !305, null}
!311 = metadata !{i32 77, i32 1, metadata !305, null}
!312 = metadata !{i32 78, i32 1, metadata !305, null}
!313 = metadata !{i32 79, i32 1, metadata !305, null}
!314 = metadata !{i32 80, i32 1, metadata !305, null}
!315 = metadata !{i32 89, i32 4, metadata !316, null}
!316 = metadata !{i32 786443, metadata !305, i32 85, i32 19, metadata !44, i32 18} ; [ DW_TAG_lexical_block ]
!317 = metadata !{i32 85, i32 2, metadata !305, null}
!318 = metadata !{i32 88, i32 4, metadata !316, null}
!319 = metadata !{i32 90, i32 4, metadata !316, null}
!320 = metadata !{i32 91, i32 5, metadata !321, null}
!321 = metadata !{i32 786443, metadata !316, i32 90, i32 28, metadata !44, i32 19} ; [ DW_TAG_lexical_block ]
!322 = metadata !{i32 93, i32 4, metadata !321, null}
!323 = metadata !{i32 13, i32 50, metadata !324, metadata !327}
!324 = metadata !{i32 786478, i32 0, metadata !44, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !44, i32 13, metadata !325, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !59, i32 13} ; [ DW_TAG_subprogram ]
!325 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!326 = metadata !{null, metadata !237, metadata !237, metadata !145}
!327 = metadata !{i32 94, i32 5, metadata !328, null}
!328 = metadata !{i32 786443, metadata !316, i32 93, i32 10, metadata !44, i32 20} ; [ DW_TAG_lexical_block ]
!329 = metadata !{i32 786689, metadata !324, metadata !"src", null, i32 13, metadata !132, i32 0, metadata !327} ; [ DW_TAG_arg_variable ]
!330 = metadata !{i32 15, i32 6, metadata !331, metadata !327}
!331 = metadata !{i32 786443, metadata !332, i32 15, i32 2, metadata !44, i32 1} ; [ DW_TAG_lexical_block ]
!332 = metadata !{i32 786443, metadata !324, i32 13, i32 66, metadata !44, i32 0} ; [ DW_TAG_lexical_block ]
!333 = metadata !{i32 15, i32 21, metadata !331, metadata !327}
!334 = metadata !{i32 16, i32 3, metadata !335, metadata !327}
!335 = metadata !{i32 786443, metadata !331, i32 15, i32 25, metadata !44, i32 2} ; [ DW_TAG_lexical_block ]
!336 = metadata !{i32 786688, metadata !332, metadata !"i", metadata !44, i32 14, metadata !145, i32 0, metadata !327} ; [ DW_TAG_auto_variable ]
!337 = metadata !{i32 95, i32 5, metadata !328, null}
!338 = metadata !{i32 92, i32 5, metadata !321, null}
!339 = metadata !{i32 98, i32 4, metadata !316, null}
!340 = metadata !{i32 101, i32 4, metadata !316, null}
!341 = metadata !{i32 102, i32 4, metadata !316, null}
!342 = metadata !{i32 103, i32 8, metadata !343, null}
!343 = metadata !{i32 786443, metadata !316, i32 103, i32 4, metadata !44, i32 21} ; [ DW_TAG_lexical_block ]
!344 = metadata !{i32 103, i32 57, metadata !343, null}
!345 = metadata !{i32 104, i32 9, metadata !346, null}
!346 = metadata !{i32 786443, metadata !347, i32 104, i32 5, metadata !44, i32 23} ; [ DW_TAG_lexical_block ]
!347 = metadata !{i32 786443, metadata !343, i32 103, i32 74, metadata !44, i32 22} ; [ DW_TAG_lexical_block ]
!348 = metadata !{i32 104, i32 21, metadata !346, null}
!349 = metadata !{i32 790531, metadata !178, metadata !"stream<unsigned char>.V", null, i32 129, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!350 = metadata !{i32 129, i32 56, metadata !140, metadata !351}
!351 = metadata !{i32 105, i32 22, metadata !352, null}
!352 = metadata !{i32 786443, metadata !346, i32 104, i32 25, metadata !44, i32 24} ; [ DW_TAG_lexical_block ]
!353 = metadata !{i32 131, i32 9, metadata !139, metadata !351}
!354 = metadata !{i32 145, i32 31, metadata !167, metadata !351}
!355 = metadata !{i32 146, i32 9, metadata !167, metadata !351}
!356 = metadata !{i32 786688, metadata !305, metadata !"i", metadata !44, i32 82, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!357 = metadata !{i32 107, i32 38, metadata !347, null}
!358 = metadata !{i32 790531, metadata !359, metadata !"stream<unsigned int>.V", null, i32 144, metadata !362, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!359 = metadata !{i32 786689, metadata !360, metadata !"this", metadata !51, i32 16777360, metadata !361, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!360 = metadata !{i32 786478, i32 0, metadata !50, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !51, i32 144, metadata !263, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !279, metadata !59, i32 144} ; [ DW_TAG_subprogram ]
!361 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_pointer_type ]
!362 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !301} ; [ DW_TAG_pointer_type ]
!363 = metadata !{i32 144, i32 48, metadata !360, metadata !357}
!364 = metadata !{i32 786688, metadata !365, metadata !"tmp", metadata !51, i32 145, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!365 = metadata !{i32 786443, metadata !360, i32 144, i32 79, metadata !51, i32 25} ; [ DW_TAG_lexical_block ]
!366 = metadata !{i32 145, i32 31, metadata !365, metadata !357}
!367 = metadata !{i32 146, i32 9, metadata !365, metadata !357}
!368 = metadata !{i32 786688, metadata !305, metadata !"database_index", metadata !44, i32 82, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!369 = metadata !{i32 112, i32 4, metadata !316, null}
!370 = metadata !{i32 113, i32 4, metadata !316, null}
!371 = metadata !{i32 114, i32 4, metadata !316, null}
!372 = metadata !{i32 115, i32 4, metadata !316, null}
!373 = metadata !{i32 118, i32 4, metadata !316, null}
!374 = metadata !{i32 119, i32 4, metadata !316, null}
!375 = metadata !{i32 120, i32 4, metadata !316, null}
!376 = metadata !{i32 122, i32 1, metadata !305, null}
