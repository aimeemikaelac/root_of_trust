; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@contacts_V = internal unnamed_addr global [128 x i512] zeroinitializer ; [#uses=2 type=[128 x i512]*]
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@p_str7 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str6 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str5 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=5 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=95 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=8 type=[10 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, i512 %contact_in_V, i512* %db_mem_V, i64 %offset, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, i8* %results_out_V, i64* %current_offset) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %contact_in_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %db_mem_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %offset), !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %db_size_in), !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %results_out_V), !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %current_offset), !map !70
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %db_size_in_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %db_size_in) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %db_size_in_read}, i64 0, metadata !74), !dbg !498 ; [debug line = 39:15] [debug variable = db_size_in]
  %offset_read = call i64 @_ssdm_op_Read.ap_none.i64(i64 %offset) ; [#uses=2 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %offset_read}, i64 0, metadata !499), !dbg !500 ; [debug line = 38:21] [debug variable = offset]
  %contact_in_V_read = call i512 @_ssdm_op_Read.s_axilite.i512(i512 %contact_in_V) ; [#uses=1 type=i512]
  call void @llvm.dbg.value(metadata !{i512 %contact_in_V_read}, i64 0, metadata !501), !dbg !511 ; [debug line = 279:87@75:5] [debug variable = op2.V]
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %operation_read}, i64 0, metadata !516), !dbg !517 ; [debug line = 35:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !516), !dbg !517 ; [debug line = 35:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i512* %db_mem_V}, i64 0, metadata !518), !dbg !523 ; [debug line = 37:7] [debug variable = db_mem.V]
  call void @llvm.dbg.value(metadata !{i64 %offset}, i64 0, metadata !499), !dbg !500 ; [debug line = 38:21] [debug variable = offset]
  call void @llvm.dbg.value(metadata !{i32 %db_size_in}, i64 0, metadata !74), !dbg !498 ; [debug line = 39:15] [debug variable = db_size_in]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !524), !dbg !525 ; [debug line = 40:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !526), !dbg !527 ; [debug line = 41:7] [debug variable = contacts_size_out]
  call void @llvm.dbg.value(metadata !{i8* %results_out_V}, i64 0, metadata !528), !dbg !533 ; [debug line = 42:30] [debug variable = results_out.V]
  call void @llvm.dbg.value(metadata !{i64* %current_offset}, i64 0, metadata !534), !dbg !535 ; [debug line = 43:22] [debug variable = current_offset]
  call void (...)* @_ssdm_op_SpecInterface(i64* %current_offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !536 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface(i64* %current_offset, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !537 ; [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecInterface(i64 %offset, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !538 ; [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i64 %offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !539 ; [debug line = 48:1]
  call void (...)* @_ssdm_op_SpecInterface(i512* %db_mem_V, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 536870912, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 16, i32 16, i32 4, i32 16, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i8* %results_out_V, [5 x i8]* @p_str5, i32 1, i32 1, [5 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !540 ; [debug line = 50:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !541 ; [debug line = 52:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !542 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !543 ; [debug line = 55:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !544 ; [debug line = 56:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !545 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !546 ; [debug line = 58:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !547 ; [debug line = 59:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !548 ; [debug line = 60:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !549 ; [debug line = 61:1]
  call void (...)* @_ssdm_op_SpecInterface(i512 %contact_in_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !550 ; [debug line = 62:1]
  %contacts_size_load = load i32* @contacts_size, align 4, !dbg !551 ; [#uses=6 type=i32] [debug line = 70:4]
  switch i32 %operation_read, label %12 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %11
  ], !dbg !552                                    ; [debug line = 66:2]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !553 ; [debug line = 69:4]
  %tmp = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load, i32 7, i32 31), !dbg !554 ; [#uses=1 type=i25] [debug line = 71:4]
  %icmp = icmp sgt i25 %tmp, 0, !dbg !554         ; [#uses=1 type=i1] [debug line = 71:4]
  br i1 %icmp, label %2, label %3, !dbg !554      ; [debug line = 71:4]

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1), !dbg !555 ; [debug line = 72:5]
  br label %4, !dbg !557                          ; [debug line = 74:4]

; <label>:3                                       ; preds = %1
  %tmp_4 = sext i32 %contacts_size_load to i64, !dbg !512 ; [#uses=1 type=i64] [debug line = 75:5]
  call void @llvm.dbg.value(metadata !{i512 %contact_in_V}, i64 0, metadata !501), !dbg !511 ; [debug line = 279:87@75:5] [debug variable = op2.V]
  %contacts_V_addr = getelementptr [128 x i512]* @contacts_V, i64 0, i64 %tmp_4, !dbg !558 ; [#uses=1 type=i512*] [debug line = 280:10@75:5]
  store i512 %contact_in_V_read, i512* %contacts_V_addr, align 64, !dbg !558 ; [debug line = 280:10@75:5]
  %tmp_5 = add nsw i32 %contacts_size_load, 1, !dbg !560 ; [#uses=2 type=i32] [debug line = 76:5]
  store i32 %tmp_5, i32* @contacts_size, align 4, !dbg !560 ; [debug line = 76:5]
  br label %4

; <label>:4                                       ; preds = %3, %2
  %storemerge = phi i32 [ %tmp_5, %3 ], [ %contacts_size_load, %2 ] ; [#uses=1 type=i32]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %storemerge), !dbg !561 ; [debug line = 73:5]
  br label %.loopexit3, !dbg !562                 ; [debug line = 79:4]

; <label>:5                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !563 ; [debug line = 82:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load), !dbg !564 ; [debug line = 83:4]
  %tmp_2 = trunc i64 %offset_read to i25          ; [#uses=1 type=i25]
  br label %6, !dbg !565                          ; [debug line = 84:8]

; <label>:6                                       ; preds = %.loopexit, %5
  %database_index = phi i32 [ 0, %5 ], [ %database_index_1, %.loopexit ] ; [#uses=5 type=i32]
  %tmp_6 = icmp ult i32 %database_index, %db_size_in_read, !dbg !565 ; [#uses=1 type=i1] [debug line = 84:8]
  br i1 %tmp_6, label %.preheader.preheader, label %.loopexit3.loopexit, !dbg !565 ; [debug line = 84:8]

.preheader.preheader:                             ; preds = %6
  %tmp_7 = sext i32 %database_index to i64, !dbg !567 ; [#uses=1 type=i64] [debug line = 99:40]
  %tmp_9 = trunc i32 %database_index to i25       ; [#uses=1 type=i25]
  %tmp_8 = add i64 %offset_read, %tmp_7, !dbg !567 ; [#uses=1 type=i64] [debug line = 99:40]
  %tmp_8_cast = add i25 %tmp_9, %tmp_2, !dbg !571 ; [#uses=1 type=i25] [debug line = 94:9]
  br label %.preheader, !dbg !571                 ; [debug line = 94:9]

.preheader:                                       ; preds = %match_db_contact.exit, %.preheader.preheader
  %i = phi i6 [ %i_1, %match_db_contact.exit ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i6]
  %i_cast2 = zext i6 %i to i32, !dbg !571         ; [#uses=1 type=i32] [debug line = 94:9]
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i, i32 5), !dbg !571 ; [#uses=1 type=i1] [debug line = 94:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 32, i64 16) ; [#uses=0 type=i32]
  %i_1 = add i6 %i, 1, !dbg !572                  ; [#uses=1 type=i6] [debug line = 94:20]
  br i1 %tmp_10, label %.loopexit, label %7, !dbg !571 ; [debug line = 94:9]

; <label>:7                                       ; preds = %.preheader
  %tmp_s = add nsw i32 %i_cast2, %database_index, !dbg !573 ; [#uses=1 type=i32] [debug line = 95:6]
  %tmp_1 = icmp ult i32 %tmp_s, %db_size_in_read, !dbg !573 ; [#uses=1 type=i1] [debug line = 95:6]
  br i1 %tmp_1, label %8, label %.loopexit, !dbg !573 ; [debug line = 95:6]

; <label>:8                                       ; preds = %7
  %tmp_2_cast = zext i6 %i to i25                 ; [#uses=1 type=i25]
  %sum = add i25 %tmp_8_cast, %tmp_2_cast         ; [#uses=1 type=i25]
  %sum_cast = zext i25 %sum to i64                ; [#uses=1 type=i64]
  %db_mem_V_addr = getelementptr i512* %db_mem_V, i64 %sum_cast ; [#uses=2 type=i512*]
  %db_mem_V_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i512P(i512* %db_mem_V_addr, i32 1), !dbg !567 ; [#uses=0 type=i1] [debug line = 99:40]
  %db_mem_V_addr_read = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr), !dbg !567 ; [#uses=1 type=i512] [debug line = 99:40]
  br label %9, !dbg !574                          ; [debug line = 19:6@99:40]

; <label>:9                                       ; preds = %10, %8
  %contacts_index_i = phi i8 [ 0, %8 ], [ %contacts_index, %10 ] ; [#uses=3 type=i8]
  %matched_i = phi i1 [ false, %8 ], [ %matched, %10 ] ; [#uses=2 type=i1]
  %exitcond_i = icmp eq i8 %contacts_index_i, -128, !dbg !574 ; [#uses=1 type=i1] [debug line = 19:6@99:40]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) ; [#uses=0 type=i32]
  %contacts_index = add i8 %contacts_index_i, 1, !dbg !580 ; [#uses=1 type=i8] [debug line = 19:46@99:40]
  br i1 %exitcond_i, label %match_db_contact.exit, label %10, !dbg !574 ; [debug line = 19:6@99:40]

; <label>:10                                      ; preds = %9
  %tmp_i = zext i8 %contacts_index_i to i64, !dbg !581 ; [#uses=1 type=i64] [debug line = 20:15@99:40]
  %contacts_V_addr_1 = getelementptr [128 x i512]* @contacts_V, i64 0, i64 %tmp_i, !dbg !583 ; [#uses=1 type=i512*] [debug line = 2925:9@20:15@99:40]
  %contacts_V_load = load i512* %contacts_V_addr_1, align 64, !dbg !583 ; [#uses=1 type=i512] [debug line = 2925:9@20:15@99:40]
  %tmp_1_i = icmp eq i512 %contacts_V_load, %db_mem_V_addr_read, !dbg !583 ; [#uses=1 type=i1] [debug line = 2925:9@20:15@99:40]
  %matched = or i1 %tmp_1_i, %matched_i, !dbg !581 ; [#uses=1 type=i1] [debug line = 20:15@99:40]
  call void @llvm.dbg.value(metadata !{i1 %matched}, i64 0, metadata !588), !dbg !581 ; [debug line = 20:15@99:40] [debug variable = matched]
  call void @llvm.dbg.value(metadata !{i8 %contacts_index}, i64 0, metadata !589), !dbg !580 ; [debug line = 19:46@99:40] [debug variable = contacts_index]
  br label %9, !dbg !580                          ; [debug line = 19:46@99:40]

match_db_contact.exit:                            ; preds = %9
  %tmp_3 = zext i1 %matched_i to i8, !dbg !567    ; [#uses=1 type=i8] [debug line = 99:40]
  call void @llvm.dbg.value(metadata !{i8* %results_out_V}, i64 0, metadata !590), !dbg !595 ; [debug line = 144:48@99:40] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3}, i64 0, metadata !596), !dbg !598 ; [debug line = 145:31@99:40] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_3), !dbg !599 ; [debug line = 146:9@99:40]
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_8), !dbg !600 ; [debug line = 100:6]
  call void @llvm.dbg.value(metadata !{i6 %i_1}, i64 0, metadata !601), !dbg !572 ; [debug line = 94:20] [debug variable = i]
  br label %.preheader, !dbg !572                 ; [debug line = 94:20]

.loopexit:                                        ; preds = %7, %.preheader
  %database_index_1 = add nsw i32 %database_index, 32, !dbg !602 ; [#uses=1 type=i32] [debug line = 84:57]
  call void @llvm.dbg.value(metadata !{i32 %database_index_1}, i64 0, metadata !603), !dbg !602 ; [debug line = 84:57] [debug variable = database_index]
  br label %6, !dbg !602                          ; [debug line = 84:57]

; <label>:11                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !604 ; [debug line = 106:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !605 ; [debug line = 107:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0), !dbg !606 ; [debug line = 108:4]
  br label %.loopexit3, !dbg !607                 ; [debug line = 109:4]

; <label>:12                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load), !dbg !608 ; [debug line = 112:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3), !dbg !609 ; [debug line = 113:4]
  br label %.loopexit3, !dbg !610                 ; [debug line = 114:4]

.loopexit3.loopexit:                              ; preds = %6
  br label %.loopexit3

.loopexit3:                                       ; preds = %.loopexit3.loopexit, %12, %11, %4
  ret void, !dbg !611                             ; [debug line = 116:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_none.i64P(i64*, i64) {
entry:
  store i64 %1, i64* %0
  ret void
}

; [#uses=9]
define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=16]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=9]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_ReadReq.m_axi.i512P(i512*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i512 @_ssdm_op_Read.s_axilite.i512(i512) {
entry:
  ret i512 %0
}

; [#uses=1]
define weak i512 @_ssdm_op_Read.m_axi.i512P(i512*) {
entry:
  %empty = load i512* %0                          ; [#uses=1 type=i512]
  ret i512 %empty
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i64 @_ssdm_op_Read.ap_none.i64(i64) {
entry:
  ret i64 %0
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=0]
declare i25 @_ssdm_op_PartSelect.i25.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=1]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i25              ; [#uses=1 type=i25]
  ret i25 %empty_5
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6                     ; [#uses=1 type=i6]
  %empty_6 = shl i6 1, %empty                     ; [#uses=1 type=i6]
  %empty_7 = and i6 %0, %empty_6                  ; [#uses=1 type=i6]
  %empty_8 = icmp ne i6 %empty_7, 0               ; [#uses=1 type=i1]
  ret i1 %empty_8
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!opencl.kernels = !{!0, !7, !13, !16, !19, !21, !21, !21, !21}
!llvm.map.gv = !{!27}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hash"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"db_item"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"hash", metadata !"hash*", metadata !"ulong long", metadata !"uint", metadata !"int*", metadata !"int*", metadata !"hls::stream<uchar> &", metadata !"ulong long*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"db_mem", metadata !"offset", metadata !"db_size_in", metadata !"error_out", metadata !"contacts_size_out", metadata !"results_out", metadata !"current_offset"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<512> &"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!19 = metadata !{null, metadata !1, metadata !2, metadata !20, metadata !4, metadata !18, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<512, false> &"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space"}
!23 = metadata !{metadata !"kernel_arg_access_qual"}
!24 = metadata !{metadata !"kernel_arg_type"}
!25 = metadata !{metadata !"kernel_arg_type_qual"}
!26 = metadata !{metadata !"kernel_arg_name"}
!27 = metadata !{metadata !28, [1 x i32]* @llvm_global_ctors_0}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"llvm.global_ctors.0", metadata !32, metadata !"", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 1}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"operation", metadata !38, metadata !"int", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 0}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 511, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"contact_in.V", metadata !38, metadata !"uint512", i32 0, i32 511}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 511, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"db_mem.V", metadata !48, metadata !"uint512", i32 0, i32 511}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 8388607, i32 1}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 63, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"offset", metadata !38, metadata !"long long unsigned int", i32 0, i32 63}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"db_size_in", metadata !38, metadata !"unsigned int", i32 0, i32 31}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 31, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"error_out", metadata !32, metadata !"int", i32 0, i32 31}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 31, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"contacts_size_out", metadata !32, metadata !"int", i32 0, i32 31}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 7, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"results_out.V", metadata !32, metadata !"unsigned char", i32 0, i32 7}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 63, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"current_offset", metadata !32, metadata !"long long unsigned int", i32 0, i32 63}
!74 = metadata !{i32 786689, metadata !75, metadata !"db_size_in", metadata !76, i32 83886119, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 786478, i32 0, metadata !76, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryi7ap_uintILi512EEPS0_yjPiS2_RN3hls6streamIhEEPy", metadata !76, i32 34, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !98, i32 44} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786473, metadata !"contact_discovery_axi_experimental/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{null, metadata !79, metadata !80, metadata !444, metadata !165, metadata !147, metadata !445, metadata !445, metadata !446, metadata !497}
!79 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 786454, null, metadata !"hash", metadata !76, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ]
!81 = metadata !{i32 786434, null, metadata !"ap_uint<512>", metadata !82, i32 182, i64 512, i64 512, i32 0, i32 0, null, metadata !83, i32 0, null, metadata !443} ; [ DW_TAG_class_type ]
!82 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/ap_int.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!83 = metadata !{metadata !84, metadata !372, metadata !376, metadata !379, metadata !382, metadata !385, metadata !388, metadata !391, metadata !394, metadata !397, metadata !400, metadata !403, metadata !406, metadata !409, metadata !412, metadata !415, metadata !418, metadata !421, metadata !424, metadata !431, metadata !436, metadata !440}
!84 = metadata !{i32 786460, metadata !81, null, metadata !82, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_inheritance ]
!85 = metadata !{i32 786434, null, metadata !"ap_int_base<512, false, false>", metadata !86, i32 2343, i64 512, i64 512, i32 0, i32 0, null, metadata !87, i32 0, null, metadata !369} ; [ DW_TAG_class_type ]
!86 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/ap_int_syn.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!87 = metadata !{metadata !88, metadata !104, metadata !108, metadata !116, metadata !122, metadata !125, metadata !129, metadata !133, metadata !137, metadata !141, metadata !144, metadata !148, metadata !152, metadata !156, metadata !161, metadata !166, metadata !171, metadata !175, metadata !179, metadata !185, metadata !188, metadata !192, metadata !195, metadata !198, metadata !199, metadata !203, metadata !206, metadata !209, metadata !212, metadata !215, metadata !218, metadata !221, metadata !224, metadata !227, metadata !230, metadata !233, metadata !236, metadata !246, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !256, metadata !259, metadata !262, metadata !265, metadata !268, metadata !271, metadata !274, metadata !275, metadata !279, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !290, metadata !291, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !302, metadata !303, metadata !304, metadata !307, metadata !308, metadata !311, metadata !319, metadata !320, metadata !323, metadata !327, metadata !328, metadata !331, metadata !332, metadata !336, metadata !337, metadata !338, metadata !339, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !363, metadata !366}
!88 = metadata !{i32 786460, metadata !85, null, metadata !86, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_inheritance ]
!89 = metadata !{i32 786434, null, metadata !"ssdm_int<512 + 1024 * 0, false>", metadata !90, i32 526, i64 512, i64 512, i32 0, i32 0, null, metadata !91, i32 0, null, metadata !100} ; [ DW_TAG_class_type ]
!90 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!91 = metadata !{metadata !92, metadata !94}
!92 = metadata !{i32 786445, metadata !89, metadata !"V", metadata !90, i32 526, i64 512, i64 512, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ]
!93 = metadata !{i32 786468, null, metadata !"uint512", null, i32 0, i64 512, i64 512, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 786478, i32 0, metadata !89, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !90, i32 526, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 526} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{null, metadata !97}
!97 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !89} ; [ DW_TAG_pointer_type ]
!98 = metadata !{metadata !99}
!99 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!100 = metadata !{metadata !101, metadata !102}
!101 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !79, i64 512, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!102 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !103, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!103 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!104 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2381, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2381} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !107}
!107 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !85} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base<512, false>", metadata !"ap_int_base<512, false>", metadata !"", metadata !86, i32 2393, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !113, i32 0, metadata !98, i32 2393} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{null, metadata !107, metadata !111}
!111 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_reference_type ]
!112 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_const_type ]
!113 = metadata !{metadata !114, metadata !115}
!114 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !79, i64 512, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!115 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !103, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!116 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base<512, false>", metadata !"ap_int_base<512, false>", metadata !"", metadata !86, i32 2396, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !113, i32 0, metadata !98, i32 2396} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{null, metadata !107, metadata !119}
!119 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_reference_type ]
!120 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_const_type ]
!121 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_volatile_type ]
!122 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2403, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2403} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{null, metadata !107, metadata !103}
!125 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2404, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2404} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{null, metadata !107, metadata !128}
!128 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!129 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2405, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2405} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{null, metadata !107, metadata !132}
!132 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!133 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2406, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2406} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{null, metadata !107, metadata !136}
!136 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!137 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2407, metadata !138, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2407} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!139 = metadata !{null, metadata !107, metadata !140}
!140 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!141 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2408, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2408} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{null, metadata !107, metadata !79}
!144 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2409, metadata !145, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2409} ; [ DW_TAG_subprogram ]
!145 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!146 = metadata !{null, metadata !107, metadata !147}
!147 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!148 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2410, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2410} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{null, metadata !107, metadata !151}
!151 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!152 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2411, metadata !153, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2411} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!154 = metadata !{null, metadata !107, metadata !155}
!155 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!156 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2412, metadata !157, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2412} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{null, metadata !107, metadata !159}
!159 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !86, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ]
!160 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!161 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2413, metadata !162, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2413} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!163 = metadata !{null, metadata !107, metadata !164}
!164 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !86, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_typedef ]
!165 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!166 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2414, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2414} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{null, metadata !107, metadata !169}
!169 = metadata !{i32 786454, null, metadata !"half", metadata !86, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ]
!170 = metadata !{i32 786468, null, metadata !"half", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!171 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2415, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2415} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{null, metadata !107, metadata !174}
!174 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!175 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2416, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !98, i32 2416} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{null, metadata !107, metadata !178}
!178 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!179 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2443, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2443} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{null, metadata !107, metadata !182}
!182 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ]
!183 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_const_type ]
!184 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!185 = metadata !{i32 786478, i32 0, metadata !85, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !86, i32 2450, metadata !186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2450} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!187 = metadata !{null, metadata !107, metadata !182, metadata !128}
!188 = metadata !{i32 786478, i32 0, metadata !85, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi512ELb0ELb0EE4readEv", metadata !86, i32 2471, metadata !189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2471} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!190 = metadata !{metadata !85, metadata !191}
!191 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !121} ; [ DW_TAG_pointer_type ]
!192 = metadata !{i32 786478, i32 0, metadata !85, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi512ELb0ELb0EE5writeERKS0_", metadata !86, i32 2477, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2477} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{null, metadata !191, metadata !111}
!195 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi512ELb0ELb0EEaSERVKS0_", metadata !86, i32 2489, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2489} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{null, metadata !191, metadata !119}
!198 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi512ELb0ELb0EEaSERKS0_", metadata !86, i32 2498, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2498} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSERVKS0_", metadata !86, i32 2521, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2521} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!201 = metadata !{metadata !202, metadata !107, metadata !119}
!202 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_reference_type ]
!203 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSERKS0_", metadata !86, i32 2526, metadata !204, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2526} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!205 = metadata !{metadata !202, metadata !107, metadata !111}
!206 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEPKc", metadata !86, i32 2530, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2530} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!208 = metadata !{metadata !202, metadata !107, metadata !182}
!209 = metadata !{i32 786478, i32 0, metadata !85, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE3setEPKca", metadata !86, i32 2538, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2538} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{metadata !202, metadata !107, metadata !182, metadata !128}
!212 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEc", metadata !86, i32 2552, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2552} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{metadata !202, metadata !107, metadata !184}
!215 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEh", metadata !86, i32 2553, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2553} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !202, metadata !107, metadata !132}
!218 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEs", metadata !86, i32 2554, metadata !219, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2554} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !202, metadata !107, metadata !136}
!221 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEt", metadata !86, i32 2555, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2555} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !202, metadata !107, metadata !140}
!224 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEi", metadata !86, i32 2556, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2556} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !202, metadata !107, metadata !79}
!227 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEj", metadata !86, i32 2557, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2557} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !202, metadata !107, metadata !147}
!230 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEx", metadata !86, i32 2558, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2558} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !202, metadata !107, metadata !159}
!233 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEy", metadata !86, i32 2559, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2559} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !202, metadata !107, metadata !164}
!236 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEcvyEv", metadata !86, i32 2598, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2598} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!238 = metadata !{metadata !239, metadata !245}
!239 = metadata !{i32 786454, metadata !85, metadata !"RetType", metadata !86, i32 2347, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_typedef ]
!240 = metadata !{i32 786454, metadata !241, metadata !"Type", metadata !86, i32 1364, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_typedef ]
!241 = metadata !{i32 786434, null, metadata !"retval<8, false>", metadata !86, i32 1363, i64 8, i64 8, i32 0, i32 0, null, metadata !242, i32 0, null, metadata !243} ; [ DW_TAG_class_type ]
!242 = metadata !{i32 0}
!243 = metadata !{metadata !244, metadata !102}
!244 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !79, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!245 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !112} ; [ DW_TAG_pointer_type ]
!246 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7to_boolEv", metadata !86, i32 2604, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2604} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{metadata !103, metadata !245}
!249 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE8to_ucharEv", metadata !86, i32 2605, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2605} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7to_charEv", metadata !86, i32 2606, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2606} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_ushortEv", metadata !86, i32 2607, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2607} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE8to_shortEv", metadata !86, i32 2608, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2608} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE6to_intEv", metadata !86, i32 2609, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2609} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{metadata !79, metadata !245}
!256 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7to_uintEv", metadata !86, i32 2610, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2610} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!258 = metadata !{metadata !147, metadata !245}
!259 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7to_longEv", metadata !86, i32 2611, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2611} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!261 = metadata !{metadata !151, metadata !245}
!262 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE8to_ulongEv", metadata !86, i32 2612, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2612} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{metadata !155, metadata !245}
!265 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE8to_int64Ev", metadata !86, i32 2613, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2613} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!267 = metadata !{metadata !159, metadata !245}
!268 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_uint64Ev", metadata !86, i32 2614, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2614} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!270 = metadata !{metadata !164, metadata !245}
!271 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_doubleEv", metadata !86, i32 2615, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2615} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !178, metadata !245}
!274 = metadata !{i32 786478, i32 0, metadata !85, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE6lengthEv", metadata !86, i32 2628, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2628} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786478, i32 0, metadata !85, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi512ELb0ELb0EE6lengthEv", metadata !86, i32 2629, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2629} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{metadata !79, metadata !278}
!278 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !120} ; [ DW_TAG_pointer_type ]
!279 = metadata !{i32 786478, i32 0, metadata !85, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE7reverseEv", metadata !86, i32 2634, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2634} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!281 = metadata !{metadata !202, metadata !107}
!282 = metadata !{i32 786478, i32 0, metadata !85, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE6iszeroEv", metadata !86, i32 2640, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2640} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786478, i32 0, metadata !85, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7is_zeroEv", metadata !86, i32 2645, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2645} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 786478, i32 0, metadata !85, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE4signEv", metadata !86, i32 2650, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2650} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 786478, i32 0, metadata !85, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE5clearEi", metadata !86, i32 2658, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2658} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786478, i32 0, metadata !85, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE6invertEi", metadata !86, i32 2664, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2664} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 786478, i32 0, metadata !85, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE4testEi", metadata !86, i32 2672, metadata !288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2672} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!289 = metadata !{metadata !103, metadata !245, metadata !79}
!290 = metadata !{i32 786478, i32 0, metadata !85, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE3setEi", metadata !86, i32 2678, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2678} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786478, i32 0, metadata !85, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE3setEib", metadata !86, i32 2684, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2684} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!293 = metadata !{null, metadata !107, metadata !79, metadata !103}
!294 = metadata !{i32 786478, i32 0, metadata !85, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE7lrotateEi", metadata !86, i32 2691, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2691} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786478, i32 0, metadata !85, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE7rrotateEi", metadata !86, i32 2700, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2700} ; [ DW_TAG_subprogram ]
!296 = metadata !{i32 786478, i32 0, metadata !85, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE7set_bitEib", metadata !86, i32 2708, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2708} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786478, i32 0, metadata !85, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7get_bitEi", metadata !86, i32 2713, metadata !288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2713} ; [ DW_TAG_subprogram ]
!298 = metadata !{i32 786478, i32 0, metadata !85, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE5b_notEv", metadata !86, i32 2718, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2718} ; [ DW_TAG_subprogram ]
!299 = metadata !{i32 786478, i32 0, metadata !85, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE17countLeadingZerosEv", metadata !86, i32 2725, metadata !300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2725} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!301 = metadata !{metadata !79, metadata !107}
!302 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEppEv", metadata !86, i32 2782, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2782} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEmmEv", metadata !86, i32 2786, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2786} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEppEi", metadata !86, i32 2794, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2794} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!306 = metadata !{metadata !112, metadata !107, metadata !79}
!307 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEmmEi", metadata !86, i32 2799, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2799} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEpsEv", metadata !86, i32 2808, metadata !309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2808} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!310 = metadata !{metadata !85, metadata !245}
!311 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEngEv", metadata !86, i32 2812, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2812} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!313 = metadata !{metadata !314, metadata !245}
!314 = metadata !{i32 786454, metadata !315, metadata !"minus", metadata !86, i32 2370, i64 0, i64 0, i64 0, i32 0, metadata !318} ; [ DW_TAG_typedef ]
!315 = metadata !{i32 786434, metadata !85, metadata !"RType<1, false>", metadata !86, i32 2352, i64 8, i64 8, i32 0, i32 0, null, metadata !242, i32 0, null, metadata !316} ; [ DW_TAG_class_type ]
!316 = metadata !{metadata !317, metadata !115}
!317 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !79, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!318 = metadata !{i32 786434, null, metadata !"ap_int_base<513, true, false>", metadata !86, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!319 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEntEv", metadata !86, i32 2819, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2819} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator~", metadata !"operator~", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEcoEv", metadata !86, i32 2826, metadata !321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2826} ; [ DW_TAG_subprogram ]
!321 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!322 = metadata !{metadata !318, metadata !245}
!323 = metadata !{i32 786478, i32 0, metadata !85, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE5rangeEii", metadata !86, i32 2953, metadata !324, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2953} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!325 = metadata !{metadata !326, metadata !107, metadata !79, metadata !79}
!326 = metadata !{i32 786434, null, metadata !"ap_range_ref<512, false>", metadata !86, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!327 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEclEii", metadata !86, i32 2959, metadata !324, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2959} ; [ DW_TAG_subprogram ]
!328 = metadata !{i32 786478, i32 0, metadata !85, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE5rangeEii", metadata !86, i32 2965, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2965} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{metadata !326, metadata !245, metadata !79, metadata !79}
!331 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEclEii", metadata !86, i32 2971, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2971} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEixEi", metadata !86, i32 2991, metadata !333, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 2991} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!334 = metadata !{metadata !335, metadata !107, metadata !79}
!335 = metadata !{i32 786434, null, metadata !"ap_bit_ref<512, false>", metadata !86, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!336 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEixEi", metadata !86, i32 3005, metadata !288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3005} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 786478, i32 0, metadata !85, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE3bitEi", metadata !86, i32 3019, metadata !333, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3019} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786478, i32 0, metadata !85, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE3bitEi", metadata !86, i32 3033, metadata !288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3033} ; [ DW_TAG_subprogram ]
!339 = metadata !{i32 786478, i32 0, metadata !85, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE10and_reduceEv", metadata !86, i32 3213, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3213} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!341 = metadata !{metadata !103, metadata !107}
!342 = metadata !{i32 786478, i32 0, metadata !85, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE11nand_reduceEv", metadata !86, i32 3216, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3216} ; [ DW_TAG_subprogram ]
!343 = metadata !{i32 786478, i32 0, metadata !85, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE9or_reduceEv", metadata !86, i32 3219, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3219} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786478, i32 0, metadata !85, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE10nor_reduceEv", metadata !86, i32 3222, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3222} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786478, i32 0, metadata !85, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE10xor_reduceEv", metadata !86, i32 3225, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3225} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 786478, i32 0, metadata !85, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE11xnor_reduceEv", metadata !86, i32 3228, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3228} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786478, i32 0, metadata !85, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE10and_reduceEv", metadata !86, i32 3232, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3232} ; [ DW_TAG_subprogram ]
!348 = metadata !{i32 786478, i32 0, metadata !85, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE11nand_reduceEv", metadata !86, i32 3235, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3235} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786478, i32 0, metadata !85, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9or_reduceEv", metadata !86, i32 3238, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3238} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786478, i32 0, metadata !85, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE10nor_reduceEv", metadata !86, i32 3241, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3241} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786478, i32 0, metadata !85, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE10xor_reduceEv", metadata !86, i32 3244, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3244} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 786478, i32 0, metadata !85, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE11xnor_reduceEv", metadata !86, i32 3247, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3247} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_stringEPci8BaseModeb", metadata !86, i32 3254, metadata !354, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3254} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{null, metadata !245, metadata !356, metadata !79, metadata !357, metadata !103}
!356 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ]
!357 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !86, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!358 = metadata !{metadata !359, metadata !360, metadata !361, metadata !362}
!359 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!360 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!361 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!362 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!363 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_stringE8BaseModeb", metadata !86, i32 3281, metadata !364, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3281} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!365 = metadata !{metadata !356, metadata !245, metadata !357, metadata !103}
!366 = metadata !{i32 786478, i32 0, metadata !85, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_stringEab", metadata !86, i32 3285, metadata !367, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 3285} ; [ DW_TAG_subprogram ]
!367 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!368 = metadata !{metadata !356, metadata !245, metadata !128, metadata !103}
!369 = metadata !{metadata !370, metadata !102, metadata !371}
!370 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !79, i64 512, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!371 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !103, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!372 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 185, metadata !373, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 185} ; [ DW_TAG_subprogram ]
!373 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !374, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!374 = metadata !{null, metadata !375}
!375 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !81} ; [ DW_TAG_pointer_type ]
!376 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 247, metadata !377, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 247} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!378 = metadata !{null, metadata !375, metadata !103}
!379 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 248, metadata !380, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 248} ; [ DW_TAG_subprogram ]
!380 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !381, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!381 = metadata !{null, metadata !375, metadata !128}
!382 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 249, metadata !383, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 249} ; [ DW_TAG_subprogram ]
!383 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!384 = metadata !{null, metadata !375, metadata !132}
!385 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 250, metadata !386, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 250} ; [ DW_TAG_subprogram ]
!386 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !387, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!387 = metadata !{null, metadata !375, metadata !136}
!388 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 251, metadata !389, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 251} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !390, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!390 = metadata !{null, metadata !375, metadata !140}
!391 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 252, metadata !392, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 252} ; [ DW_TAG_subprogram ]
!392 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !393, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!393 = metadata !{null, metadata !375, metadata !79}
!394 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 253, metadata !395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 253} ; [ DW_TAG_subprogram ]
!395 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!396 = metadata !{null, metadata !375, metadata !147}
!397 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 254, metadata !398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 254} ; [ DW_TAG_subprogram ]
!398 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!399 = metadata !{null, metadata !375, metadata !151}
!400 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 255, metadata !401, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 255} ; [ DW_TAG_subprogram ]
!401 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !402, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!402 = metadata !{null, metadata !375, metadata !155}
!403 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 256, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 256} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!405 = metadata !{null, metadata !375, metadata !165}
!406 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 257, metadata !407, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 257} ; [ DW_TAG_subprogram ]
!407 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!408 = metadata !{null, metadata !375, metadata !160}
!409 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 258, metadata !410, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 258} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !411, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!411 = metadata !{null, metadata !375, metadata !169}
!412 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 259, metadata !413, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 259} ; [ DW_TAG_subprogram ]
!413 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !414, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!414 = metadata !{null, metadata !375, metadata !174}
!415 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 260, metadata !416, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 260} ; [ DW_TAG_subprogram ]
!416 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !417, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!417 = metadata !{null, metadata !375, metadata !178}
!418 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 262, metadata !419, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 262} ; [ DW_TAG_subprogram ]
!419 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!420 = metadata !{null, metadata !375, metadata !182}
!421 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !82, i32 263, metadata !422, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 263} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!423 = metadata !{null, metadata !375, metadata !182, metadata !128}
!424 = metadata !{i32 786478, i32 0, metadata !81, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi512EEaSERKS0_", metadata !82, i32 266, metadata !425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 266} ; [ DW_TAG_subprogram ]
!425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!426 = metadata !{null, metadata !427, metadata !429}
!427 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !428} ; [ DW_TAG_pointer_type ]
!428 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_volatile_type ]
!429 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !430} ; [ DW_TAG_reference_type ]
!430 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_const_type ]
!431 = metadata !{i32 786478, i32 0, metadata !81, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi512EEaSERVKS0_", metadata !82, i32 270, metadata !432, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 270} ; [ DW_TAG_subprogram ]
!432 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!433 = metadata !{null, metadata !427, metadata !434}
!434 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !435} ; [ DW_TAG_reference_type ]
!435 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !428} ; [ DW_TAG_const_type ]
!436 = metadata !{i32 786478, i32 0, metadata !81, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi512EEaSERVKS0_", metadata !82, i32 274, metadata !437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 274} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!438 = metadata !{metadata !439, metadata !375, metadata !434}
!439 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_reference_type ]
!440 = metadata !{i32 786478, i32 0, metadata !81, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi512EEaSERKS0_", metadata !82, i32 279, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 279} ; [ DW_TAG_subprogram ]
!441 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !442, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!442 = metadata !{metadata !439, metadata !375, metadata !429}
!443 = metadata !{metadata !370}
!444 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ]
!445 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ]
!446 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !447} ; [ DW_TAG_reference_type ]
!447 = metadata !{i32 786434, metadata !448, metadata !"stream<unsigned char>", metadata !449, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !450, i32 0, null, metadata !495} ; [ DW_TAG_class_type ]
!448 = metadata !{i32 786489, null, metadata !"hls", metadata !449, i32 69} ; [ DW_TAG_namespace ]
!449 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!450 = metadata !{metadata !451, metadata !452, metadata !456, metadata !459, metadata !464, metadata !467, metadata !471, metadata !476, metadata !480, metadata !481, metadata !482, metadata !485, metadata !488, metadata !489, metadata !492}
!451 = metadata !{i32 786445, metadata !447, metadata !"V", metadata !449, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ]
!452 = metadata !{i32 786478, i32 0, metadata !447, metadata !"stream", metadata !"stream", metadata !"", metadata !449, i32 83, metadata !453, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 83} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!454 = metadata !{null, metadata !455}
!455 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !447} ; [ DW_TAG_pointer_type ]
!456 = metadata !{i32 786478, i32 0, metadata !447, metadata !"stream", metadata !"stream", metadata !"", metadata !449, i32 86, metadata !457, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 86} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!458 = metadata !{null, metadata !455, metadata !182}
!459 = metadata !{i32 786478, i32 0, metadata !447, metadata !"stream", metadata !"stream", metadata !"", metadata !449, i32 91, metadata !460, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !98, i32 91} ; [ DW_TAG_subprogram ]
!460 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!461 = metadata !{null, metadata !455, metadata !462}
!462 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !463} ; [ DW_TAG_reference_type ]
!463 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !447} ; [ DW_TAG_const_type ]
!464 = metadata !{i32 786478, i32 0, metadata !447, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !449, i32 94, metadata !465, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !98, i32 94} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !466, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!466 = metadata !{metadata !446, metadata !455, metadata !462}
!467 = metadata !{i32 786478, i32 0, metadata !447, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !449, i32 101, metadata !468, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 101} ; [ DW_TAG_subprogram ]
!468 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !469, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!469 = metadata !{null, metadata !455, metadata !470}
!470 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_reference_type ]
!471 = metadata !{i32 786478, i32 0, metadata !447, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !449, i32 105, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 105} ; [ DW_TAG_subprogram ]
!472 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !473, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!473 = metadata !{null, metadata !455, metadata !474}
!474 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !475} ; [ DW_TAG_reference_type ]
!475 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_const_type ]
!476 = metadata !{i32 786478, i32 0, metadata !447, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !449, i32 112, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 112} ; [ DW_TAG_subprogram ]
!477 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!478 = metadata !{metadata !103, metadata !479}
!479 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !463} ; [ DW_TAG_pointer_type ]
!480 = metadata !{i32 786478, i32 0, metadata !447, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !449, i32 117, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 117} ; [ DW_TAG_subprogram ]
!481 = metadata !{i32 786478, i32 0, metadata !447, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !449, i32 123, metadata !468, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 123} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786478, i32 0, metadata !447, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !449, i32 129, metadata !483, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 129} ; [ DW_TAG_subprogram ]
!483 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!484 = metadata !{metadata !132, metadata !455}
!485 = metadata !{i32 786478, i32 0, metadata !447, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !449, i32 136, metadata !486, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 136} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !487, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!487 = metadata !{metadata !103, metadata !455, metadata !470}
!488 = metadata !{i32 786478, i32 0, metadata !447, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !449, i32 144, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 144} ; [ DW_TAG_subprogram ]
!489 = metadata !{i32 786478, i32 0, metadata !447, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !449, i32 150, metadata !490, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 150} ; [ DW_TAG_subprogram ]
!490 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !491, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!491 = metadata !{metadata !103, metadata !455, metadata !474}
!492 = metadata !{i32 786478, i32 0, metadata !447, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !449, i32 157, metadata !493, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !98, i32 157} ; [ DW_TAG_subprogram ]
!493 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !494, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!494 = metadata !{metadata !147, metadata !455}
!495 = metadata !{metadata !496}
!496 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !132, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!497 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ]
!498 = metadata !{i32 39, i32 15, metadata !75, null}
!499 = metadata !{i32 786689, metadata !75, metadata !"offset", metadata !76, i32 67108902, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!500 = metadata !{i32 38, i32 21, metadata !75, null}
!501 = metadata !{i32 790533, metadata !502, metadata !"op2.V", null, i32 279, metadata !504, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!502 = metadata !{i32 786689, metadata !503, metadata !"op2", metadata !82, i32 33554711, metadata !429, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!503 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi512EEaSERKS0_", metadata !82, i32 279, metadata !441, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !440, metadata !98, i32 279} ; [ DW_TAG_subprogram ]
!504 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !505} ; [ DW_TAG_pointer_type ]
!505 = metadata !{i32 786438, null, metadata !"ap_uint<512>", metadata !82, i32 182, i64 512, i64 512, i32 0, i32 0, null, metadata !506, i32 0, null, metadata !443} ; [ DW_TAG_class_field_type ]
!506 = metadata !{metadata !507}
!507 = metadata !{i32 786438, null, metadata !"ap_int_base<512, false, false>", metadata !86, i32 2343, i64 512, i64 512, i32 0, i32 0, null, metadata !508, i32 0, null, metadata !369} ; [ DW_TAG_class_field_type ]
!508 = metadata !{metadata !509}
!509 = metadata !{i32 786438, null, metadata !"ssdm_int<512 + 1024 * 0, false>", metadata !90, i32 526, i64 512, i64 512, i32 0, i32 0, null, metadata !510, i32 0, null, metadata !100} ; [ DW_TAG_class_field_type ]
!510 = metadata !{metadata !92}
!511 = metadata !{i32 279, i32 87, metadata !503, metadata !512}
!512 = metadata !{i32 75, i32 5, metadata !513, null}
!513 = metadata !{i32 786443, metadata !514, i32 74, i32 10, metadata !76, i32 6} ; [ DW_TAG_lexical_block ]
!514 = metadata !{i32 786443, metadata !515, i32 66, i32 19, metadata !76, i32 4} ; [ DW_TAG_lexical_block ]
!515 = metadata !{i32 786443, metadata !75, i32 44, i32 2, metadata !76, i32 3} ; [ DW_TAG_lexical_block ]
!516 = metadata !{i32 786689, metadata !75, metadata !"operation", metadata !76, i32 16777251, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!517 = metadata !{i32 35, i32 6, metadata !75, null}
!518 = metadata !{i32 790531, metadata !519, metadata !"db_mem.V", null, i32 37, metadata !520, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!519 = metadata !{i32 786689, metadata !75, metadata !"db_mem", metadata !76, i32 50331685, metadata !444, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!520 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4294967296, i64 512, i32 0, i32 0, metadata !505, metadata !521, i32 0, i32 0} ; [ DW_TAG_array_type ]
!521 = metadata !{metadata !522}
!522 = metadata !{i32 786465, i64 0, i64 8388607} ; [ DW_TAG_subrange_type ]
!523 = metadata !{i32 37, i32 7, metadata !75, null}
!524 = metadata !{i32 786689, metadata !75, metadata !"error_out", metadata !76, i32 100663336, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!525 = metadata !{i32 40, i32 7, metadata !75, null}
!526 = metadata !{i32 786689, metadata !75, metadata !"contacts_size_out", metadata !76, i32 117440553, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!527 = metadata !{i32 41, i32 7, metadata !75, null}
!528 = metadata !{i32 790531, metadata !529, metadata !"results_out.V", null, i32 42, metadata !530, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!529 = metadata !{i32 786689, metadata !75, metadata !"results_out", metadata !76, i32 134217770, metadata !446, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!530 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !531} ; [ DW_TAG_pointer_type ]
!531 = metadata !{i32 786438, metadata !448, metadata !"stream<unsigned char>", metadata !449, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !532, i32 0, null, metadata !495} ; [ DW_TAG_class_field_type ]
!532 = metadata !{metadata !451}
!533 = metadata !{i32 42, i32 30, metadata !75, null}
!534 = metadata !{i32 786689, metadata !75, metadata !"current_offset", metadata !76, i32 150994987, metadata !497, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!535 = metadata !{i32 43, i32 22, metadata !75, null}
!536 = metadata !{i32 45, i32 1, metadata !515, null}
!537 = metadata !{i32 46, i32 1, metadata !515, null}
!538 = metadata !{i32 47, i32 1, metadata !515, null}
!539 = metadata !{i32 48, i32 1, metadata !515, null}
!540 = metadata !{i32 50, i32 1, metadata !515, null}
!541 = metadata !{i32 52, i32 1, metadata !515, null}
!542 = metadata !{i32 53, i32 1, metadata !515, null}
!543 = metadata !{i32 55, i32 1, metadata !515, null}
!544 = metadata !{i32 56, i32 1, metadata !515, null}
!545 = metadata !{i32 57, i32 1, metadata !515, null}
!546 = metadata !{i32 58, i32 1, metadata !515, null}
!547 = metadata !{i32 59, i32 1, metadata !515, null}
!548 = metadata !{i32 60, i32 1, metadata !515, null}
!549 = metadata !{i32 61, i32 1, metadata !515, null}
!550 = metadata !{i32 62, i32 1, metadata !515, null}
!551 = metadata !{i32 70, i32 4, metadata !514, null}
!552 = metadata !{i32 66, i32 2, metadata !515, null}
!553 = metadata !{i32 69, i32 4, metadata !514, null}
!554 = metadata !{i32 71, i32 4, metadata !514, null}
!555 = metadata !{i32 72, i32 5, metadata !556, null}
!556 = metadata !{i32 786443, metadata !514, i32 71, i32 28, metadata !76, i32 5} ; [ DW_TAG_lexical_block ]
!557 = metadata !{i32 74, i32 4, metadata !556, null}
!558 = metadata !{i32 280, i32 10, metadata !559, metadata !512}
!559 = metadata !{i32 786443, metadata !503, i32 279, i32 92, metadata !82, i32 13} ; [ DW_TAG_lexical_block ]
!560 = metadata !{i32 76, i32 5, metadata !513, null}
!561 = metadata !{i32 73, i32 5, metadata !556, null}
!562 = metadata !{i32 79, i32 4, metadata !514, null}
!563 = metadata !{i32 82, i32 4, metadata !514, null}
!564 = metadata !{i32 83, i32 4, metadata !514, null}
!565 = metadata !{i32 84, i32 8, metadata !566, null}
!566 = metadata !{i32 786443, metadata !514, i32 84, i32 4, metadata !76, i32 7} ; [ DW_TAG_lexical_block ]
!567 = metadata !{i32 99, i32 40, metadata !568, null}
!568 = metadata !{i32 786443, metadata !569, i32 94, i32 24, metadata !76, i32 10} ; [ DW_TAG_lexical_block ]
!569 = metadata !{i32 786443, metadata !570, i32 94, i32 5, metadata !76, i32 9} ; [ DW_TAG_lexical_block ]
!570 = metadata !{i32 786443, metadata !566, i32 84, i32 76, metadata !76, i32 8} ; [ DW_TAG_lexical_block ]
!571 = metadata !{i32 94, i32 9, metadata !569, null}
!572 = metadata !{i32 94, i32 20, metadata !569, null}
!573 = metadata !{i32 95, i32 6, metadata !568, null}
!574 = metadata !{i32 19, i32 6, metadata !575, metadata !567}
!575 = metadata !{i32 786443, metadata !576, i32 19, i32 2, metadata !76, i32 1} ; [ DW_TAG_lexical_block ]
!576 = metadata !{i32 786443, metadata !577, i32 16, i32 36, metadata !76, i32 0} ; [ DW_TAG_lexical_block ]
!577 = metadata !{i32 786478, i32 0, metadata !76, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contact7ap_uintILi512EE", metadata !76, i32 16, metadata !578, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !98, i32 16} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !579, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!579 = metadata !{metadata !103, metadata !80}
!580 = metadata !{i32 19, i32 46, metadata !575, metadata !567}
!581 = metadata !{i32 20, i32 15, metadata !582, metadata !567}
!582 = metadata !{i32 786443, metadata !575, i32 19, i32 63, metadata !76, i32 2} ; [ DW_TAG_lexical_block ]
!583 = metadata !{i32 2925, i32 9, metadata !584, metadata !581}
!584 = metadata !{i32 786443, metadata !585, i32 2924, i32 107, metadata !86, i32 14} ; [ DW_TAG_lexical_block ]
!585 = metadata !{i32 786478, i32 0, null, metadata !"operator==<512, false>", metadata !"operator==<512, false>", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEeqILi512ELb0EEEbRKS_IXT_EXT0_EXleT_Li64EEE", metadata !86, i32 2924, metadata !586, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !113, null, metadata !98, i32 2924} ; [ DW_TAG_subprogram ]
!586 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !587, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!587 = metadata !{metadata !103, metadata !245, metadata !111}
!588 = metadata !{i32 786688, metadata !576, metadata !"matched", metadata !76, i32 18, metadata !103, i32 0, metadata !567} ; [ DW_TAG_auto_variable ]
!589 = metadata !{i32 786688, metadata !576, metadata !"contacts_index", metadata !76, i32 17, metadata !79, i32 0, metadata !567} ; [ DW_TAG_auto_variable ]
!590 = metadata !{i32 790531, metadata !591, metadata !"stream<unsigned char>.V", null, i32 144, metadata !594, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!591 = metadata !{i32 786689, metadata !592, metadata !"this", metadata !449, i32 16777360, metadata !593, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!592 = metadata !{i32 786478, i32 0, metadata !448, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !449, i32 144, metadata !472, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !488, metadata !98, i32 144} ; [ DW_TAG_subprogram ]
!593 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !447} ; [ DW_TAG_pointer_type ]
!594 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !531} ; [ DW_TAG_pointer_type ]
!595 = metadata !{i32 144, i32 48, metadata !592, metadata !567}
!596 = metadata !{i32 786688, metadata !597, metadata !"tmp", metadata !449, i32 145, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!597 = metadata !{i32 786443, metadata !592, i32 144, i32 79, metadata !449, i32 12} ; [ DW_TAG_lexical_block ]
!598 = metadata !{i32 145, i32 31, metadata !597, metadata !567}
!599 = metadata !{i32 146, i32 9, metadata !597, metadata !567}
!600 = metadata !{i32 100, i32 6, metadata !568, null}
!601 = metadata !{i32 786688, metadata !515, metadata !"i", metadata !76, i32 63, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!602 = metadata !{i32 84, i32 57, metadata !566, null}
!603 = metadata !{i32 786688, metadata !515, metadata !"database_index", metadata !76, i32 63, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!604 = metadata !{i32 106, i32 4, metadata !514, null}
!605 = metadata !{i32 107, i32 4, metadata !514, null}
!606 = metadata !{i32 108, i32 4, metadata !514, null}
!607 = metadata !{i32 109, i32 4, metadata !514, null}
!608 = metadata !{i32 112, i32 4, metadata !514, null}
!609 = metadata !{i32 113, i32 4, metadata !514, null}
!610 = metadata !{i32 114, i32 4, metadata !514, null}
!611 = metadata !{i32 116, i32 1, metadata !515, null}
