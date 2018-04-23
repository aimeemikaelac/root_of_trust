; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@contacts_V = internal unnamed_addr global [128 x i512] zeroinitializer ; [#uses=2 type=[128 x i512]*]
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@p_str7 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str6 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=6 type=[10 x i8]*]
@p_str5 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=3 type=[8 x i8]*]
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=71 type=[1 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=4]
define internal fastcc i1 @match_db_contact(i512 %db_item_V) readonly {
  %db_item_V_read = call i512 @_ssdm_op_Read.ap_auto.i512(i512 %db_item_V) ; [#uses=1 type=i512]
  br label %1, !dbg !34                           ; [debug line = 18:6]

; <label>:1                                       ; preds = %2, %0
  %contacts_index = phi i8 [ 0, %0 ], [ %contacts_index_1, %2 ] ; [#uses=3 type=i8]
  %matched = phi i1 [ false, %0 ], [ %matched_1, %2 ] ; [#uses=2 type=i1]
  %exitcond = icmp eq i8 %contacts_index, -128, !dbg !34 ; [#uses=1 type=i1] [debug line = 18:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) ; [#uses=0 type=i32]
  %contacts_index_1 = add i8 %contacts_index, 1, !dbg !406 ; [#uses=1 type=i8] [debug line = 18:46]
  br i1 %exitcond, label %3, label %2, !dbg !34   ; [debug line = 18:6]

; <label>:2                                       ; preds = %1
  %tmp = zext i8 %contacts_index to i64, !dbg !407 ; [#uses=1 type=i64] [debug line = 19:15]
  %contacts_V_addr = getelementptr [128 x i512]* @contacts_V, i64 0, i64 %tmp, !dbg !409 ; [#uses=1 type=i512*] [debug line = 2925:9@19:15]
  %contacts_V_load = load i512* %contacts_V_addr, align 64, !dbg !409 ; [#uses=1 type=i512] [debug line = 2925:9@19:15]
  %tmp_1 = icmp eq i512 %contacts_V_load, %db_item_V_read, !dbg !409 ; [#uses=1 type=i1] [debug line = 2925:9@19:15]
  %matched_1 = or i1 %tmp_1, %matched, !dbg !407  ; [#uses=1 type=i1] [debug line = 19:15]
  call void @llvm.dbg.value(metadata !{i1 %matched_1}, i64 0, metadata !414), !dbg !407 ; [debug line = 19:15] [debug variable = matched]
  call void @llvm.dbg.value(metadata !{i8 %contacts_index_1}, i64 0, metadata !415), !dbg !406 ; [debug line = 18:46] [debug variable = contacts_index]
  br label %1, !dbg !406                          ; [debug line = 18:46]

; <label>:3                                       ; preds = %1
  ret i1 %matched, !dbg !416                      ; [debug line = 21:2]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=20]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, i512 %contact_in_V, i512* %db_mem_V, i64 %offset, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, i8* %results_out_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !417
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %contact_in_V), !map !423
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %db_mem_V), !map !427
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %offset), !map !433
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %db_size_in), !map !437
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !441
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !445
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %results_out_V), !map !449
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %db_size_in_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %db_size_in) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %db_size_in_read}, i64 0, metadata !453), !dbg !510 ; [debug line = 38:15] [debug variable = db_size_in]
  %offset_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %offset) ; [#uses=1 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %offset_read}, i64 0, metadata !511), !dbg !512 ; [debug line = 37:21] [debug variable = offset]
  %contact_in_V_read = call i512 @_ssdm_op_Read.s_axilite.i512(i512 %contact_in_V) ; [#uses=1 type=i512]
  call void @llvm.dbg.value(metadata !{i512 %contact_in_V_read}, i64 0, metadata !513), !dbg !523 ; [debug line = 279:87@69:5] [debug variable = op2.V]
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %operation_read}, i64 0, metadata !528), !dbg !529 ; [debug line = 34:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !528), !dbg !529 ; [debug line = 34:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i512* %db_mem_V}, i64 0, metadata !530), !dbg !535 ; [debug line = 36:7] [debug variable = db_mem.V]
  call void @llvm.dbg.value(metadata !{i64 %offset}, i64 0, metadata !511), !dbg !512 ; [debug line = 37:21] [debug variable = offset]
  call void @llvm.dbg.value(metadata !{i32 %db_size_in}, i64 0, metadata !453), !dbg !510 ; [debug line = 38:15] [debug variable = db_size_in]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !536), !dbg !537 ; [debug line = 39:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !538), !dbg !539 ; [debug line = 40:7] [debug variable = contacts_size_out]
  call void @llvm.dbg.value(metadata !{i8* %results_out_V}, i64 0, metadata !540), !dbg !545 ; [debug line = 41:30] [debug variable = results_out.V]
  call void (...)* @_ssdm_op_SpecInterface(i512* %db_mem_V, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 536870912, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 16, i32 16, i32 4, i32 16, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i8* %results_out_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !546 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !547 ; [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !548 ; [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !549 ; [debug line = 49:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !550 ; [debug line = 50:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str5, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !551 ; [debug line = 51:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !552 ; [debug line = 52:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str5, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !553 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !554 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str6, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !555 ; [debug line = 55:1]
  call void (...)* @_ssdm_op_SpecInterface(i512 %contact_in_V, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !556 ; [debug line = 56:1]
  %contacts_size_load = load i32* @contacts_size, align 4, !dbg !557 ; [#uses=6 type=i32] [debug line = 64:4]
  switch i32 %operation_read, label %9 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %8
  ], !dbg !558                                    ; [debug line = 60:2]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !559 ; [debug line = 63:4]
  %tmp = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load, i32 7, i32 31), !dbg !560 ; [#uses=1 type=i25] [debug line = 65:4]
  %icmp = icmp sgt i25 %tmp, 0, !dbg !560         ; [#uses=1 type=i1] [debug line = 65:4]
  br i1 %icmp, label %2, label %3, !dbg !560      ; [debug line = 65:4]

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1), !dbg !561 ; [debug line = 66:5]
  br label %4, !dbg !563                          ; [debug line = 68:4]

; <label>:3                                       ; preds = %1
  %tmp_4 = sext i32 %contacts_size_load to i64, !dbg !524 ; [#uses=1 type=i64] [debug line = 69:5]
  call void @llvm.dbg.value(metadata !{i512 %contact_in_V}, i64 0, metadata !513), !dbg !523 ; [debug line = 279:87@69:5] [debug variable = op2.V]
  %contacts_V_addr = getelementptr [128 x i512]* @contacts_V, i64 0, i64 %tmp_4, !dbg !564 ; [#uses=1 type=i512*] [debug line = 280:10@69:5]
  store i512 %contact_in_V_read, i512* %contacts_V_addr, align 64, !dbg !564 ; [debug line = 280:10@69:5]
  %tmp_5 = add nsw i32 %contacts_size_load, 1, !dbg !566 ; [#uses=2 type=i32] [debug line = 70:5]
  store i32 %tmp_5, i32* @contacts_size, align 4, !dbg !566 ; [debug line = 70:5]
  br label %4

; <label>:4                                       ; preds = %3, %2
  %storemerge = phi i32 [ %tmp_5, %3 ], [ %contacts_size_load, %2 ] ; [#uses=1 type=i32]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %storemerge), !dbg !567 ; [debug line = 67:5]
  br label %.loopexit, !dbg !568                  ; [debug line = 73:4]

; <label>:5                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !569 ; [debug line = 76:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load), !dbg !570 ; [debug line = 77:4]
  %tmp_1 = trunc i64 %offset_read to i25          ; [#uses=4 type=i25]
  br label %6, !dbg !571                          ; [debug line = 78:8]

; <label>:6                                       ; preds = %7, %5
  %database_index = phi i32 [ 0, %5 ], [ %database_index_1, %7 ] ; [#uses=3 type=i32]
  %tmp_6 = icmp ult i32 %database_index, %db_size_in_read, !dbg !571 ; [#uses=1 type=i1] [debug line = 78:8]
  br i1 %tmp_6, label %7, label %.loopexit.loopexit, !dbg !571 ; [debug line = 78:8]

; <label>:7                                       ; preds = %6
  %tmp_7 = trunc i32 %database_index to i25       ; [#uses=4 type=i25]
  %sum = add i25 %tmp_7, %tmp_1                   ; [#uses=1 type=i25]
  %sum_cast = zext i25 %sum to i64                ; [#uses=1 type=i64]
  %db_mem_V_addr = getelementptr i512* %db_mem_V, i64 %sum_cast ; [#uses=2 type=i512*]
  %db_mem_V_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i512P(i512* %db_mem_V_addr, i32 1), !dbg !573 ; [#uses=0 type=i1] [debug line = 88:39]
  %db_mem_V_addr_read = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr), !dbg !573 ; [#uses=1 type=i512] [debug line = 88:39]
  %tmp_9 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read), !dbg !573 ; [#uses=1 type=i1] [debug line = 88:39]
  %tmp_2 = zext i1 %tmp_9 to i8, !dbg !573        ; [#uses=1 type=i8] [debug line = 88:39]
  call void @llvm.dbg.value(metadata !{i8* %results_out_V}, i64 0, metadata !575), !dbg !580 ; [debug line = 144:48@88:39] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_2}, i64 0, metadata !581), !dbg !583 ; [debug line = 145:31@88:39] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_2), !dbg !584 ; [debug line = 146:9@88:39]
  %tmp3 = or i25 %tmp_7, 1                        ; [#uses=1 type=i25]
  %sum2 = add i25 %tmp3, %tmp_1                   ; [#uses=1 type=i25]
  %sum2_cast = zext i25 %sum2 to i64              ; [#uses=1 type=i64]
  %db_mem_V_addr_1 = getelementptr i512* %db_mem_V, i64 %sum2_cast ; [#uses=2 type=i512*]
  %db_mem_V_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i512P(i512* %db_mem_V_addr_1, i32 1), !dbg !585 ; [#uses=0 type=i1] [debug line = 89:39]
  %db_mem_V_addr_1_read = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr_1), !dbg !585 ; [#uses=1 type=i512] [debug line = 89:39]
  %tmp_3 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_1_read), !dbg !585 ; [#uses=1 type=i1] [debug line = 89:39]
  %tmp_8 = zext i1 %tmp_3 to i8, !dbg !585        ; [#uses=1 type=i8] [debug line = 89:39]
  call void @llvm.dbg.value(metadata !{i8 %tmp_8}, i64 0, metadata !581), !dbg !586 ; [debug line = 145:31@89:39] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_8), !dbg !587 ; [debug line = 146:9@89:39]
  %tmp9 = or i25 %tmp_7, 2                        ; [#uses=1 type=i25]
  %sum4 = add i25 %tmp9, %tmp_1                   ; [#uses=1 type=i25]
  %sum4_cast = zext i25 %sum4 to i64              ; [#uses=1 type=i64]
  %db_mem_V_addr_2 = getelementptr i512* %db_mem_V, i64 %sum4_cast ; [#uses=2 type=i512*]
  %db_mem_V_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i512P(i512* %db_mem_V_addr_2, i32 1), !dbg !588 ; [#uses=0 type=i1] [debug line = 90:39]
  %db_mem_V_addr_2_read = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr_2), !dbg !588 ; [#uses=1 type=i512] [debug line = 90:39]
  %tmp_s = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_2_read), !dbg !588 ; [#uses=1 type=i1] [debug line = 90:39]
  %tmp_10 = zext i1 %tmp_s to i8, !dbg !588       ; [#uses=1 type=i8] [debug line = 90:39]
  call void @llvm.dbg.value(metadata !{i8 %tmp_10}, i64 0, metadata !581), !dbg !589 ; [debug line = 145:31@90:39] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_10), !dbg !590 ; [debug line = 146:9@90:39]
  %tmp11 = or i25 %tmp_7, 3                       ; [#uses=1 type=i25]
  %sum6 = add i25 %tmp11, %tmp_1                  ; [#uses=1 type=i25]
  %sum6_cast = zext i25 %sum6 to i64              ; [#uses=1 type=i64]
  %db_mem_V_addr_3 = getelementptr i512* %db_mem_V, i64 %sum6_cast ; [#uses=2 type=i512*]
  %db_mem_V_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i512P(i512* %db_mem_V_addr_3, i32 1), !dbg !591 ; [#uses=0 type=i1] [debug line = 91:39]
  %db_mem_V_addr_3_read = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr_3), !dbg !591 ; [#uses=1 type=i512] [debug line = 91:39]
  %tmp_11 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_3_read), !dbg !591 ; [#uses=1 type=i1] [debug line = 91:39]
  %tmp_12 = zext i1 %tmp_11 to i8, !dbg !591      ; [#uses=1 type=i8] [debug line = 91:39]
  call void @llvm.dbg.value(metadata !{i8 %tmp_12}, i64 0, metadata !581), !dbg !592 ; [debug line = 145:31@91:39] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_12), !dbg !593 ; [debug line = 146:9@91:39]
  %database_index_1 = add nsw i32 4, %database_index, !dbg !594 ; [#uses=1 type=i32] [debug line = 78:57]
  call void @llvm.dbg.value(metadata !{i32 %database_index_1}, i64 0, metadata !595), !dbg !594 ; [debug line = 78:57] [debug variable = database_index]
  br label %6, !dbg !594                          ; [debug line = 78:57]

; <label>:8                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !596 ; [debug line = 96:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !597 ; [debug line = 97:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0), !dbg !598 ; [debug line = 98:4]
  br label %.loopexit, !dbg !599                  ; [debug line = 99:4]

; <label>:9                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load), !dbg !600 ; [debug line = 102:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3), !dbg !601 ; [debug line = 103:4]
  br label %.loopexit, !dbg !602                  ; [debug line = 104:4]

.loopexit.loopexit:                               ; preds = %6
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %9, %8, %4
  ret void, !dbg !603                             ; [debug line = 106:1]
}

; [#uses=4]
define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
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

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=12]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i1 @_ssdm_op_ReadReq.m_axi.i512P(i512*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i512 @_ssdm_op_Read.s_axilite.i512(i512) {
entry:
  ret i512 %0
}

; [#uses=4]
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
define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

; [#uses=1]
define weak i512 @_ssdm_op_Read.ap_auto.i512(i512) {
entry:
  ret i512 %0
}

; [#uses=0]
declare i25 @_ssdm_op_PartSelect.i25.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=1]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i25              ; [#uses=1 type=i25]
  ret i25 %empty_4
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
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"hash", metadata !"hash*", metadata !"ulong long", metadata !"uint", metadata !"int*", metadata !"int*", metadata !"hls::stream<uchar> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"db_mem", metadata !"offset", metadata !"db_size_in", metadata !"error_out", metadata !"contacts_size_out", metadata !"results_out"}
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
!34 = metadata !{i32 18, i32 6, metadata !35, null}
!35 = metadata !{i32 786443, metadata !36, i32 18, i32 2, metadata !38, i32 1} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 786443, metadata !37, i32 15, i32 36, metadata !38, i32 0} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786478, i32 0, metadata !38, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contact7ap_uintILi512EE", metadata !38, i32 15, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 15} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786473, metadata !"contact_discovery_axi_experimental/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 786454, null, metadata !"hash", metadata !38, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ]
!43 = metadata !{i32 786434, null, metadata !"ap_uint<512>", metadata !44, i32 182, i64 512, i64 512, i32 0, i32 0, null, metadata !45, i32 0, null, metadata !405} ; [ DW_TAG_class_type ]
!44 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/ap_int.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!45 = metadata !{metadata !46, metadata !334, metadata !338, metadata !341, metadata !344, metadata !347, metadata !350, metadata !353, metadata !356, metadata !359, metadata !362, metadata !365, metadata !368, metadata !371, metadata !374, metadata !377, metadata !380, metadata !383, metadata !386, metadata !393, metadata !398, metadata !402}
!46 = metadata !{i32 786460, metadata !43, null, metadata !44, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_inheritance ]
!47 = metadata !{i32 786434, null, metadata !"ap_int_base<512, false, false>", metadata !48, i32 2343, i64 512, i64 512, i32 0, i32 0, null, metadata !49, i32 0, null, metadata !331} ; [ DW_TAG_class_type ]
!48 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/ap_int_syn.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!49 = metadata !{metadata !50, metadata !66, metadata !70, metadata !78, metadata !84, metadata !87, metadata !91, metadata !95, metadata !99, metadata !103, metadata !106, metadata !110, metadata !114, metadata !118, metadata !123, metadata !128, metadata !133, metadata !137, metadata !141, metadata !147, metadata !150, metadata !154, metadata !157, metadata !160, metadata !161, metadata !165, metadata !168, metadata !171, metadata !174, metadata !177, metadata !180, metadata !183, metadata !186, metadata !189, metadata !192, metadata !195, metadata !198, metadata !208, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !218, metadata !221, metadata !224, metadata !227, metadata !230, metadata !233, metadata !236, metadata !237, metadata !241, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !252, metadata !253, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !264, metadata !265, metadata !266, metadata !269, metadata !270, metadata !273, metadata !281, metadata !282, metadata !285, metadata !289, metadata !290, metadata !293, metadata !294, metadata !298, metadata !299, metadata !300, metadata !301, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !325, metadata !328}
!50 = metadata !{i32 786460, metadata !47, null, metadata !48, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_inheritance ]
!51 = metadata !{i32 786434, null, metadata !"ssdm_int<512 + 1024 * 0, false>", metadata !52, i32 526, i64 512, i64 512, i32 0, i32 0, null, metadata !53, i32 0, null, metadata !62} ; [ DW_TAG_class_type ]
!52 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!53 = metadata !{metadata !54, metadata !56}
!54 = metadata !{i32 786445, metadata !51, metadata !"V", metadata !52, i32 526, i64 512, i64 512, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!55 = metadata !{i32 786468, null, metadata !"uint512", null, i32 0, i64 512, i64 512, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786478, i32 0, metadata !51, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !52, i32 526, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 526} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{null, metadata !59}
!59 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !51} ; [ DW_TAG_pointer_type ]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!62 = metadata !{metadata !63, metadata !65}
!63 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !64, i64 512, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!64 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!65 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !41, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!66 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2381, metadata !67, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2381} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{null, metadata !69}
!69 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !47} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base<512, false>", metadata !"ap_int_base<512, false>", metadata !"", metadata !48, i32 2393, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !75, i32 0, metadata !60, i32 2393} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !69, metadata !73}
!73 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_reference_type ]
!74 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!75 = metadata !{metadata !76, metadata !77}
!76 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !64, i64 512, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!77 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !41, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!78 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base<512, false>", metadata !"ap_int_base<512, false>", metadata !"", metadata !48, i32 2396, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !75, i32 0, metadata !60, i32 2396} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{null, metadata !69, metadata !81}
!81 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_reference_type ]
!82 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_const_type ]
!83 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_volatile_type ]
!84 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2403, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2403} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !69, metadata !41}
!87 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2404, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2404} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{null, metadata !69, metadata !90}
!90 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!91 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2405, metadata !92, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2405} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !69, metadata !94}
!94 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!95 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2406, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2406} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !69, metadata !98}
!98 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!99 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2407, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2407} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !69, metadata !102}
!102 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!103 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2408, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2408} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{null, metadata !69, metadata !64}
!106 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2409, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2409} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{null, metadata !69, metadata !109}
!109 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2410, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2410} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{null, metadata !69, metadata !113}
!113 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!114 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2411, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2411} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{null, metadata !69, metadata !117}
!117 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!118 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2412, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2412} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{null, metadata !69, metadata !121}
!121 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !48, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ]
!122 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!123 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2413, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2413} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !69, metadata !126}
!126 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !48, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ]
!127 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!128 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2414, metadata !129, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2414} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{null, metadata !69, metadata !131}
!131 = metadata !{i32 786454, null, metadata !"half", metadata !48, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_typedef ]
!132 = metadata !{i32 786468, null, metadata !"half", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!133 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2415, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2415} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{null, metadata !69, metadata !136}
!136 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!137 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2416, metadata !138, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !60, i32 2416} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!139 = metadata !{null, metadata !69, metadata !140}
!140 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!141 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2443, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2443} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{null, metadata !69, metadata !144}
!144 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ]
!145 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_const_type ]
!146 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!147 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !48, i32 2450, metadata !148, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2450} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!149 = metadata !{null, metadata !69, metadata !144, metadata !90}
!150 = metadata !{i32 786478, i32 0, metadata !47, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi512ELb0ELb0EE4readEv", metadata !48, i32 2471, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2471} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{metadata !47, metadata !153}
!153 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !83} ; [ DW_TAG_pointer_type ]
!154 = metadata !{i32 786478, i32 0, metadata !47, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi512ELb0ELb0EE5writeERKS0_", metadata !48, i32 2477, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2477} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!156 = metadata !{null, metadata !153, metadata !73}
!157 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi512ELb0ELb0EEaSERVKS0_", metadata !48, i32 2489, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2489} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{null, metadata !153, metadata !81}
!160 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi512ELb0ELb0EEaSERKS0_", metadata !48, i32 2498, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2498} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSERVKS0_", metadata !48, i32 2521, metadata !162, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2521} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!163 = metadata !{metadata !164, metadata !69, metadata !81}
!164 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_reference_type ]
!165 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSERKS0_", metadata !48, i32 2526, metadata !166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2526} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!167 = metadata !{metadata !164, metadata !69, metadata !73}
!168 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEPKc", metadata !48, i32 2530, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2530} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{metadata !164, metadata !69, metadata !144}
!171 = metadata !{i32 786478, i32 0, metadata !47, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE3setEPKca", metadata !48, i32 2538, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2538} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{metadata !164, metadata !69, metadata !144, metadata !90}
!174 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEc", metadata !48, i32 2552, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2552} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{metadata !164, metadata !69, metadata !146}
!177 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEh", metadata !48, i32 2553, metadata !178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2553} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!179 = metadata !{metadata !164, metadata !69, metadata !94}
!180 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEs", metadata !48, i32 2554, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2554} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{metadata !164, metadata !69, metadata !98}
!183 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEt", metadata !48, i32 2555, metadata !184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2555} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{metadata !164, metadata !69, metadata !102}
!186 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEi", metadata !48, i32 2556, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2556} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{metadata !164, metadata !69, metadata !64}
!189 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEj", metadata !48, i32 2557, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2557} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!191 = metadata !{metadata !164, metadata !69, metadata !109}
!192 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEx", metadata !48, i32 2558, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2558} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{metadata !164, metadata !69, metadata !121}
!195 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEaSEy", metadata !48, i32 2559, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2559} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !164, metadata !69, metadata !126}
!198 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEcvyEv", metadata !48, i32 2598, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2598} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{metadata !201, metadata !207}
!201 = metadata !{i32 786454, metadata !47, metadata !"RetType", metadata !48, i32 2347, i64 0, i64 0, i64 0, i32 0, metadata !202} ; [ DW_TAG_typedef ]
!202 = metadata !{i32 786454, metadata !203, metadata !"Type", metadata !48, i32 1364, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ]
!203 = metadata !{i32 786434, null, metadata !"retval<8, false>", metadata !48, i32 1363, i64 8, i64 8, i32 0, i32 0, null, metadata !204, i32 0, null, metadata !205} ; [ DW_TAG_class_type ]
!204 = metadata !{i32 0}
!205 = metadata !{metadata !206, metadata !65}
!206 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !64, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!207 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !74} ; [ DW_TAG_pointer_type ]
!208 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7to_boolEv", metadata !48, i32 2604, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2604} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!210 = metadata !{metadata !41, metadata !207}
!211 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE8to_ucharEv", metadata !48, i32 2605, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2605} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7to_charEv", metadata !48, i32 2606, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2606} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_ushortEv", metadata !48, i32 2607, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2607} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE8to_shortEv", metadata !48, i32 2608, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2608} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE6to_intEv", metadata !48, i32 2609, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2609} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !64, metadata !207}
!218 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7to_uintEv", metadata !48, i32 2610, metadata !219, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2610} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !109, metadata !207}
!221 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7to_longEv", metadata !48, i32 2611, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2611} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !113, metadata !207}
!224 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE8to_ulongEv", metadata !48, i32 2612, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2612} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !117, metadata !207}
!227 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE8to_int64Ev", metadata !48, i32 2613, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2613} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !121, metadata !207}
!230 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_uint64Ev", metadata !48, i32 2614, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2614} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !126, metadata !207}
!233 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_doubleEv", metadata !48, i32 2615, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2615} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !140, metadata !207}
!236 = metadata !{i32 786478, i32 0, metadata !47, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE6lengthEv", metadata !48, i32 2628, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2628} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786478, i32 0, metadata !47, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi512ELb0ELb0EE6lengthEv", metadata !48, i32 2629, metadata !238, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2629} ; [ DW_TAG_subprogram ]
!238 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!239 = metadata !{metadata !64, metadata !240}
!240 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !82} ; [ DW_TAG_pointer_type ]
!241 = metadata !{i32 786478, i32 0, metadata !47, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE7reverseEv", metadata !48, i32 2634, metadata !242, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2634} ; [ DW_TAG_subprogram ]
!242 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!243 = metadata !{metadata !164, metadata !69}
!244 = metadata !{i32 786478, i32 0, metadata !47, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE6iszeroEv", metadata !48, i32 2640, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2640} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786478, i32 0, metadata !47, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7is_zeroEv", metadata !48, i32 2645, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2645} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786478, i32 0, metadata !47, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE4signEv", metadata !48, i32 2650, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2650} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786478, i32 0, metadata !47, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE5clearEi", metadata !48, i32 2658, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2658} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 786478, i32 0, metadata !47, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE6invertEi", metadata !48, i32 2664, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2664} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786478, i32 0, metadata !47, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE4testEi", metadata !48, i32 2672, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2672} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!251 = metadata !{metadata !41, metadata !207, metadata !64}
!252 = metadata !{i32 786478, i32 0, metadata !47, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE3setEi", metadata !48, i32 2678, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2678} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786478, i32 0, metadata !47, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE3setEib", metadata !48, i32 2684, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2684} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{null, metadata !69, metadata !64, metadata !41}
!256 = metadata !{i32 786478, i32 0, metadata !47, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE7lrotateEi", metadata !48, i32 2691, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2691} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786478, i32 0, metadata !47, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE7rrotateEi", metadata !48, i32 2700, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2700} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786478, i32 0, metadata !47, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE7set_bitEib", metadata !48, i32 2708, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2708} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786478, i32 0, metadata !47, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE7get_bitEi", metadata !48, i32 2713, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2713} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 786478, i32 0, metadata !47, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE5b_notEv", metadata !48, i32 2718, metadata !67, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2718} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786478, i32 0, metadata !47, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE17countLeadingZerosEv", metadata !48, i32 2725, metadata !262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2725} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!263 = metadata !{metadata !64, metadata !69}
!264 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEppEv", metadata !48, i32 2782, metadata !242, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2782} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEmmEv", metadata !48, i32 2786, metadata !242, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2786} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEppEi", metadata !48, i32 2794, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2794} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!268 = metadata !{metadata !74, metadata !69, metadata !64}
!269 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEmmEi", metadata !48, i32 2799, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2799} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEpsEv", metadata !48, i32 2808, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2808} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!272 = metadata !{metadata !47, metadata !207}
!273 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEngEv", metadata !48, i32 2812, metadata !274, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2812} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!275 = metadata !{metadata !276, metadata !207}
!276 = metadata !{i32 786454, metadata !277, metadata !"minus", metadata !48, i32 2370, i64 0, i64 0, i64 0, i32 0, metadata !280} ; [ DW_TAG_typedef ]
!277 = metadata !{i32 786434, metadata !47, metadata !"RType<1, false>", metadata !48, i32 2352, i64 8, i64 8, i32 0, i32 0, null, metadata !204, i32 0, null, metadata !278} ; [ DW_TAG_class_type ]
!278 = metadata !{metadata !279, metadata !77}
!279 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !64, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!280 = metadata !{i32 786434, null, metadata !"ap_int_base<513, true, false>", metadata !48, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!281 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEntEv", metadata !48, i32 2819, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2819} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator~", metadata !"operator~", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEcoEv", metadata !48, i32 2826, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2826} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!284 = metadata !{metadata !280, metadata !207}
!285 = metadata !{i32 786478, i32 0, metadata !47, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE5rangeEii", metadata !48, i32 2953, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2953} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!287 = metadata !{metadata !288, metadata !69, metadata !64, metadata !64}
!288 = metadata !{i32 786434, null, metadata !"ap_range_ref<512, false>", metadata !48, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!289 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEclEii", metadata !48, i32 2959, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2959} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 786478, i32 0, metadata !47, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE5rangeEii", metadata !48, i32 2965, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2965} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{metadata !288, metadata !207, metadata !64, metadata !64}
!293 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEclEii", metadata !48, i32 2971, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2971} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EEixEi", metadata !48, i32 2991, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 2991} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{metadata !297, metadata !69, metadata !64}
!297 = metadata !{i32 786434, null, metadata !"ap_bit_ref<512, false>", metadata !48, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!298 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEixEi", metadata !48, i32 3005, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3005} ; [ DW_TAG_subprogram ]
!299 = metadata !{i32 786478, i32 0, metadata !47, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE3bitEi", metadata !48, i32 3019, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3019} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786478, i32 0, metadata !47, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE3bitEi", metadata !48, i32 3033, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3033} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786478, i32 0, metadata !47, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE10and_reduceEv", metadata !48, i32 3213, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3213} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!303 = metadata !{metadata !41, metadata !69}
!304 = metadata !{i32 786478, i32 0, metadata !47, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE11nand_reduceEv", metadata !48, i32 3216, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3216} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786478, i32 0, metadata !47, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE9or_reduceEv", metadata !48, i32 3219, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3219} ; [ DW_TAG_subprogram ]
!306 = metadata !{i32 786478, i32 0, metadata !47, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE10nor_reduceEv", metadata !48, i32 3222, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3222} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 786478, i32 0, metadata !47, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE10xor_reduceEv", metadata !48, i32 3225, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3225} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786478, i32 0, metadata !47, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi512ELb0ELb0EE11xnor_reduceEv", metadata !48, i32 3228, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3228} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786478, i32 0, metadata !47, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE10and_reduceEv", metadata !48, i32 3232, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3232} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786478, i32 0, metadata !47, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE11nand_reduceEv", metadata !48, i32 3235, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3235} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786478, i32 0, metadata !47, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9or_reduceEv", metadata !48, i32 3238, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3238} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 786478, i32 0, metadata !47, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE10nor_reduceEv", metadata !48, i32 3241, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3241} ; [ DW_TAG_subprogram ]
!313 = metadata !{i32 786478, i32 0, metadata !47, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE10xor_reduceEv", metadata !48, i32 3244, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3244} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786478, i32 0, metadata !47, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE11xnor_reduceEv", metadata !48, i32 3247, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3247} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_stringEPci8BaseModeb", metadata !48, i32 3254, metadata !316, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3254} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!317 = metadata !{null, metadata !207, metadata !318, metadata !64, metadata !319, metadata !41}
!318 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ]
!319 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !48, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!320 = metadata !{metadata !321, metadata !322, metadata !323, metadata !324}
!321 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!322 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!323 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!324 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!325 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_stringE8BaseModeb", metadata !48, i32 3281, metadata !326, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3281} ; [ DW_TAG_subprogram ]
!326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!327 = metadata !{metadata !318, metadata !207, metadata !319, metadata !41}
!328 = metadata !{i32 786478, i32 0, metadata !47, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EE9to_stringEab", metadata !48, i32 3285, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 3285} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{metadata !318, metadata !207, metadata !90, metadata !41}
!331 = metadata !{metadata !332, metadata !65, metadata !333}
!332 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !64, i64 512, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!333 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !41, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!334 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 185, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 185} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{null, metadata !337}
!337 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !43} ; [ DW_TAG_pointer_type ]
!338 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 247, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 247} ; [ DW_TAG_subprogram ]
!339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!340 = metadata !{null, metadata !337, metadata !41}
!341 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 248, metadata !342, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 248} ; [ DW_TAG_subprogram ]
!342 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !343, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!343 = metadata !{null, metadata !337, metadata !90}
!344 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 249, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 249} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!346 = metadata !{null, metadata !337, metadata !94}
!347 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 250, metadata !348, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 250} ; [ DW_TAG_subprogram ]
!348 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !349, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!349 = metadata !{null, metadata !337, metadata !98}
!350 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 251, metadata !351, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 251} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!352 = metadata !{null, metadata !337, metadata !102}
!353 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 252, metadata !354, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 252} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{null, metadata !337, metadata !64}
!356 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 253, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 253} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!358 = metadata !{null, metadata !337, metadata !109}
!359 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 254, metadata !360, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 254} ; [ DW_TAG_subprogram ]
!360 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !361, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!361 = metadata !{null, metadata !337, metadata !113}
!362 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 255, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 255} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!364 = metadata !{null, metadata !337, metadata !117}
!365 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 256, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 256} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{null, metadata !337, metadata !127}
!368 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 257, metadata !369, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 257} ; [ DW_TAG_subprogram ]
!369 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!370 = metadata !{null, metadata !337, metadata !122}
!371 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 258, metadata !372, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 258} ; [ DW_TAG_subprogram ]
!372 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !373, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!373 = metadata !{null, metadata !337, metadata !131}
!374 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 259, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 259} ; [ DW_TAG_subprogram ]
!375 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !376, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!376 = metadata !{null, metadata !337, metadata !136}
!377 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 260, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 260} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{null, metadata !337, metadata !140}
!380 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 262, metadata !381, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 262} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!382 = metadata !{null, metadata !337, metadata !144}
!383 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !44, i32 263, metadata !384, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 263} ; [ DW_TAG_subprogram ]
!384 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !385, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!385 = metadata !{null, metadata !337, metadata !144, metadata !90}
!386 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi512EEaSERKS0_", metadata !44, i32 266, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 266} ; [ DW_TAG_subprogram ]
!387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!388 = metadata !{null, metadata !389, metadata !391}
!389 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !390} ; [ DW_TAG_pointer_type ]
!390 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_volatile_type ]
!391 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !392} ; [ DW_TAG_reference_type ]
!392 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_const_type ]
!393 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi512EEaSERVKS0_", metadata !44, i32 270, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 270} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!395 = metadata !{null, metadata !389, metadata !396}
!396 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !397} ; [ DW_TAG_reference_type ]
!397 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !390} ; [ DW_TAG_const_type ]
!398 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi512EEaSERVKS0_", metadata !44, i32 274, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 274} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{metadata !401, metadata !337, metadata !396}
!401 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_reference_type ]
!402 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi512EEaSERKS0_", metadata !44, i32 279, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 279} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!404 = metadata !{metadata !401, metadata !337, metadata !391}
!405 = metadata !{metadata !332}
!406 = metadata !{i32 18, i32 46, metadata !35, null}
!407 = metadata !{i32 19, i32 15, metadata !408, null}
!408 = metadata !{i32 786443, metadata !35, i32 18, i32 63, metadata !38, i32 2} ; [ DW_TAG_lexical_block ]
!409 = metadata !{i32 2925, i32 9, metadata !410, metadata !407}
!410 = metadata !{i32 786443, metadata !411, i32 2924, i32 107, metadata !48, i32 11} ; [ DW_TAG_lexical_block ]
!411 = metadata !{i32 786478, i32 0, null, metadata !"operator==<512, false>", metadata !"operator==<512, false>", metadata !"_ZNK11ap_int_baseILi512ELb0ELb0EEeqILi512ELb0EEEbRKS_IXT_EXT0_EXleT_Li64EEE", metadata !48, i32 2924, metadata !412, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !75, null, metadata !60, i32 2924} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{metadata !41, metadata !207, metadata !73}
!414 = metadata !{i32 786688, metadata !36, metadata !"matched", metadata !38, i32 17, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!415 = metadata !{i32 786688, metadata !36, metadata !"contacts_index", metadata !38, i32 16, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!416 = metadata !{i32 21, i32 2, metadata !36, null}
!417 = metadata !{metadata !418}
!418 = metadata !{i32 0, i32 31, metadata !419}
!419 = metadata !{metadata !420}
!420 = metadata !{metadata !"operation", metadata !421, metadata !"int", i32 0, i32 31}
!421 = metadata !{metadata !422}
!422 = metadata !{i32 0, i32 0, i32 0}
!423 = metadata !{metadata !424}
!424 = metadata !{i32 0, i32 511, metadata !425}
!425 = metadata !{metadata !426}
!426 = metadata !{metadata !"contact_in.V", metadata !421, metadata !"uint512", i32 0, i32 511}
!427 = metadata !{metadata !428}
!428 = metadata !{i32 0, i32 511, metadata !429}
!429 = metadata !{metadata !430}
!430 = metadata !{metadata !"db_mem.V", metadata !431, metadata !"uint512", i32 0, i32 511}
!431 = metadata !{metadata !432}
!432 = metadata !{i32 0, i32 8388607, i32 1}
!433 = metadata !{metadata !434}
!434 = metadata !{i32 0, i32 63, metadata !435}
!435 = metadata !{metadata !436}
!436 = metadata !{metadata !"offset", metadata !421, metadata !"long long unsigned int", i32 0, i32 63}
!437 = metadata !{metadata !438}
!438 = metadata !{i32 0, i32 31, metadata !439}
!439 = metadata !{metadata !440}
!440 = metadata !{metadata !"db_size_in", metadata !421, metadata !"unsigned int", i32 0, i32 31}
!441 = metadata !{metadata !442}
!442 = metadata !{i32 0, i32 31, metadata !443}
!443 = metadata !{metadata !444}
!444 = metadata !{metadata !"error_out", metadata !32, metadata !"int", i32 0, i32 31}
!445 = metadata !{metadata !446}
!446 = metadata !{i32 0, i32 31, metadata !447}
!447 = metadata !{metadata !448}
!448 = metadata !{metadata !"contacts_size_out", metadata !32, metadata !"int", i32 0, i32 31}
!449 = metadata !{metadata !450}
!450 = metadata !{i32 0, i32 7, metadata !451}
!451 = metadata !{metadata !452}
!452 = metadata !{metadata !"results_out.V", metadata !32, metadata !"unsigned char", i32 0, i32 7}
!453 = metadata !{i32 786689, metadata !454, metadata !"db_size_in", metadata !38, i32 83886118, metadata !109, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!454 = metadata !{i32 786478, i32 0, metadata !38, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryi7ap_uintILi512EEPS0_yjPiS2_RN3hls6streamIhEE", metadata !38, i32 33, metadata !455, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 42} ; [ DW_TAG_subprogram ]
!455 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !456, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!456 = metadata !{null, metadata !64, metadata !42, metadata !457, metadata !127, metadata !109, metadata !458, metadata !458, metadata !459}
!457 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!458 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!459 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !460} ; [ DW_TAG_reference_type ]
!460 = metadata !{i32 786434, metadata !461, metadata !"stream<unsigned char>", metadata !462, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !463, i32 0, null, metadata !508} ; [ DW_TAG_class_type ]
!461 = metadata !{i32 786489, null, metadata !"hls", metadata !462, i32 69} ; [ DW_TAG_namespace ]
!462 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!463 = metadata !{metadata !464, metadata !465, metadata !469, metadata !472, metadata !477, metadata !480, metadata !484, metadata !489, metadata !493, metadata !494, metadata !495, metadata !498, metadata !501, metadata !502, metadata !505}
!464 = metadata !{i32 786445, metadata !460, metadata !"V", metadata !462, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !94} ; [ DW_TAG_member ]
!465 = metadata !{i32 786478, i32 0, metadata !460, metadata !"stream", metadata !"stream", metadata !"", metadata !462, i32 83, metadata !466, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!466 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!467 = metadata !{null, metadata !468}
!468 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !460} ; [ DW_TAG_pointer_type ]
!469 = metadata !{i32 786478, i32 0, metadata !460, metadata !"stream", metadata !"stream", metadata !"", metadata !462, i32 86, metadata !470, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 86} ; [ DW_TAG_subprogram ]
!470 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!471 = metadata !{null, metadata !468, metadata !144}
!472 = metadata !{i32 786478, i32 0, metadata !460, metadata !"stream", metadata !"stream", metadata !"", metadata !462, i32 91, metadata !473, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 91} ; [ DW_TAG_subprogram ]
!473 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !474, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!474 = metadata !{null, metadata !468, metadata !475}
!475 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !476} ; [ DW_TAG_reference_type ]
!476 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !460} ; [ DW_TAG_const_type ]
!477 = metadata !{i32 786478, i32 0, metadata !460, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !462, i32 94, metadata !478, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 94} ; [ DW_TAG_subprogram ]
!478 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !479, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!479 = metadata !{metadata !459, metadata !468, metadata !475}
!480 = metadata !{i32 786478, i32 0, metadata !460, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !462, i32 101, metadata !481, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 101} ; [ DW_TAG_subprogram ]
!481 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !482, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!482 = metadata !{null, metadata !468, metadata !483}
!483 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_reference_type ]
!484 = metadata !{i32 786478, i32 0, metadata !460, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !462, i32 105, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 105} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!486 = metadata !{null, metadata !468, metadata !487}
!487 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !488} ; [ DW_TAG_reference_type ]
!488 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_const_type ]
!489 = metadata !{i32 786478, i32 0, metadata !460, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !462, i32 112, metadata !490, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 112} ; [ DW_TAG_subprogram ]
!490 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !491, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!491 = metadata !{metadata !41, metadata !492}
!492 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !476} ; [ DW_TAG_pointer_type ]
!493 = metadata !{i32 786478, i32 0, metadata !460, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !462, i32 117, metadata !490, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 117} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 786478, i32 0, metadata !460, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !462, i32 123, metadata !481, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 123} ; [ DW_TAG_subprogram ]
!495 = metadata !{i32 786478, i32 0, metadata !460, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !462, i32 129, metadata !496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 129} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !497, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!497 = metadata !{metadata !94, metadata !468}
!498 = metadata !{i32 786478, i32 0, metadata !460, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !462, i32 136, metadata !499, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 136} ; [ DW_TAG_subprogram ]
!499 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !500, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!500 = metadata !{metadata !41, metadata !468, metadata !483}
!501 = metadata !{i32 786478, i32 0, metadata !460, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !462, i32 144, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 144} ; [ DW_TAG_subprogram ]
!502 = metadata !{i32 786478, i32 0, metadata !460, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !462, i32 150, metadata !503, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 150} ; [ DW_TAG_subprogram ]
!503 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !504, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!504 = metadata !{metadata !41, metadata !468, metadata !487}
!505 = metadata !{i32 786478, i32 0, metadata !460, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !462, i32 157, metadata !506, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 157} ; [ DW_TAG_subprogram ]
!506 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !507, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!507 = metadata !{metadata !109, metadata !468}
!508 = metadata !{metadata !509}
!509 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !94, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!510 = metadata !{i32 38, i32 15, metadata !454, null}
!511 = metadata !{i32 786689, metadata !454, metadata !"offset", metadata !38, i32 67108901, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!512 = metadata !{i32 37, i32 21, metadata !454, null}
!513 = metadata !{i32 790533, metadata !514, metadata !"op2.V", null, i32 279, metadata !516, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!514 = metadata !{i32 786689, metadata !515, metadata !"op2", metadata !44, i32 33554711, metadata !391, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!515 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi512EEaSERKS0_", metadata !44, i32 279, metadata !403, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !402, metadata !60, i32 279} ; [ DW_TAG_subprogram ]
!516 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !517} ; [ DW_TAG_pointer_type ]
!517 = metadata !{i32 786438, null, metadata !"ap_uint<512>", metadata !44, i32 182, i64 512, i64 512, i32 0, i32 0, null, metadata !518, i32 0, null, metadata !405} ; [ DW_TAG_class_field_type ]
!518 = metadata !{metadata !519}
!519 = metadata !{i32 786438, null, metadata !"ap_int_base<512, false, false>", metadata !48, i32 2343, i64 512, i64 512, i32 0, i32 0, null, metadata !520, i32 0, null, metadata !331} ; [ DW_TAG_class_field_type ]
!520 = metadata !{metadata !521}
!521 = metadata !{i32 786438, null, metadata !"ssdm_int<512 + 1024 * 0, false>", metadata !52, i32 526, i64 512, i64 512, i32 0, i32 0, null, metadata !522, i32 0, null, metadata !62} ; [ DW_TAG_class_field_type ]
!522 = metadata !{metadata !54}
!523 = metadata !{i32 279, i32 87, metadata !515, metadata !524}
!524 = metadata !{i32 69, i32 5, metadata !525, null}
!525 = metadata !{i32 786443, metadata !526, i32 68, i32 10, metadata !38, i32 6} ; [ DW_TAG_lexical_block ]
!526 = metadata !{i32 786443, metadata !527, i32 60, i32 19, metadata !38, i32 4} ; [ DW_TAG_lexical_block ]
!527 = metadata !{i32 786443, metadata !454, i32 42, i32 2, metadata !38, i32 3} ; [ DW_TAG_lexical_block ]
!528 = metadata !{i32 786689, metadata !454, metadata !"operation", metadata !38, i32 16777250, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!529 = metadata !{i32 34, i32 6, metadata !454, null}
!530 = metadata !{i32 790531, metadata !531, metadata !"db_mem.V", null, i32 36, metadata !532, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!531 = metadata !{i32 786689, metadata !454, metadata !"db_mem", metadata !38, i32 50331684, metadata !457, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!532 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4294967296, i64 512, i32 0, i32 0, metadata !517, metadata !533, i32 0, i32 0} ; [ DW_TAG_array_type ]
!533 = metadata !{metadata !534}
!534 = metadata !{i32 786465, i64 0, i64 8388607} ; [ DW_TAG_subrange_type ]
!535 = metadata !{i32 36, i32 7, metadata !454, null}
!536 = metadata !{i32 786689, metadata !454, metadata !"error_out", metadata !38, i32 100663335, metadata !458, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!537 = metadata !{i32 39, i32 7, metadata !454, null}
!538 = metadata !{i32 786689, metadata !454, metadata !"contacts_size_out", metadata !38, i32 117440552, metadata !458, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!539 = metadata !{i32 40, i32 7, metadata !454, null}
!540 = metadata !{i32 790531, metadata !541, metadata !"results_out.V", null, i32 41, metadata !542, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!541 = metadata !{i32 786689, metadata !454, metadata !"results_out", metadata !38, i32 134217769, metadata !459, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!542 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !543} ; [ DW_TAG_pointer_type ]
!543 = metadata !{i32 786438, metadata !461, metadata !"stream<unsigned char>", metadata !462, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !544, i32 0, null, metadata !508} ; [ DW_TAG_class_field_type ]
!544 = metadata !{metadata !464}
!545 = metadata !{i32 41, i32 30, metadata !454, null}
!546 = metadata !{i32 44, i32 1, metadata !527, null}
!547 = metadata !{i32 46, i32 1, metadata !527, null}
!548 = metadata !{i32 47, i32 1, metadata !527, null}
!549 = metadata !{i32 49, i32 1, metadata !527, null}
!550 = metadata !{i32 50, i32 1, metadata !527, null}
!551 = metadata !{i32 51, i32 1, metadata !527, null}
!552 = metadata !{i32 52, i32 1, metadata !527, null}
!553 = metadata !{i32 53, i32 1, metadata !527, null}
!554 = metadata !{i32 54, i32 1, metadata !527, null}
!555 = metadata !{i32 55, i32 1, metadata !527, null}
!556 = metadata !{i32 56, i32 1, metadata !527, null}
!557 = metadata !{i32 64, i32 4, metadata !526, null}
!558 = metadata !{i32 60, i32 2, metadata !527, null}
!559 = metadata !{i32 63, i32 4, metadata !526, null}
!560 = metadata !{i32 65, i32 4, metadata !526, null}
!561 = metadata !{i32 66, i32 5, metadata !562, null}
!562 = metadata !{i32 786443, metadata !526, i32 65, i32 28, metadata !38, i32 5} ; [ DW_TAG_lexical_block ]
!563 = metadata !{i32 68, i32 4, metadata !562, null}
!564 = metadata !{i32 280, i32 10, metadata !565, metadata !524}
!565 = metadata !{i32 786443, metadata !515, i32 279, i32 92, metadata !44, i32 10} ; [ DW_TAG_lexical_block ]
!566 = metadata !{i32 70, i32 5, metadata !525, null}
!567 = metadata !{i32 67, i32 5, metadata !562, null}
!568 = metadata !{i32 73, i32 4, metadata !526, null}
!569 = metadata !{i32 76, i32 4, metadata !526, null}
!570 = metadata !{i32 77, i32 4, metadata !526, null}
!571 = metadata !{i32 78, i32 8, metadata !572, null}
!572 = metadata !{i32 786443, metadata !526, i32 78, i32 4, metadata !38, i32 7} ; [ DW_TAG_lexical_block ]
!573 = metadata !{i32 88, i32 39, metadata !574, null}
!574 = metadata !{i32 786443, metadata !572, i32 78, i32 75, metadata !38, i32 8} ; [ DW_TAG_lexical_block ]
!575 = metadata !{i32 790531, metadata !576, metadata !"stream<unsigned char>.V", null, i32 144, metadata !579, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!576 = metadata !{i32 786689, metadata !577, metadata !"this", metadata !462, i32 16777360, metadata !578, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!577 = metadata !{i32 786478, i32 0, metadata !461, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !462, i32 144, metadata !485, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !501, metadata !60, i32 144} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !460} ; [ DW_TAG_pointer_type ]
!579 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !543} ; [ DW_TAG_pointer_type ]
!580 = metadata !{i32 144, i32 48, metadata !577, metadata !573}
!581 = metadata !{i32 786688, metadata !582, metadata !"tmp", metadata !462, i32 145, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!582 = metadata !{i32 786443, metadata !577, i32 144, i32 79, metadata !462, i32 9} ; [ DW_TAG_lexical_block ]
!583 = metadata !{i32 145, i32 31, metadata !582, metadata !573}
!584 = metadata !{i32 146, i32 9, metadata !582, metadata !573}
!585 = metadata !{i32 89, i32 39, metadata !574, null}
!586 = metadata !{i32 145, i32 31, metadata !582, metadata !585}
!587 = metadata !{i32 146, i32 9, metadata !582, metadata !585}
!588 = metadata !{i32 90, i32 39, metadata !574, null}
!589 = metadata !{i32 145, i32 31, metadata !582, metadata !588}
!590 = metadata !{i32 146, i32 9, metadata !582, metadata !588}
!591 = metadata !{i32 91, i32 39, metadata !574, null}
!592 = metadata !{i32 145, i32 31, metadata !582, metadata !591}
!593 = metadata !{i32 146, i32 9, metadata !582, metadata !591}
!594 = metadata !{i32 78, i32 57, metadata !572, null}
!595 = metadata !{i32 786688, metadata !527, metadata !"database_index", metadata !38, i32 57, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!596 = metadata !{i32 96, i32 4, metadata !526, null}
!597 = metadata !{i32 97, i32 4, metadata !526, null}
!598 = metadata !{i32 98, i32 4, metadata !526, null}
!599 = metadata !{i32 99, i32 4, metadata !526, null}
!600 = metadata !{i32 102, i32 4, metadata !526, null}
!601 = metadata !{i32 103, i32 4, metadata !526, null}
!602 = metadata !{i32 104, i32 4, metadata !526, null}
!603 = metadata !{i32 106, i32 1, metadata !527, null}
