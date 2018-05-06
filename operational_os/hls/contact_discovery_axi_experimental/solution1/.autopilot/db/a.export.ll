; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@contacts_size = internal unnamed_addr global i32 0, align 4
@contacts_V = internal unnamed_addr global [128 x i512] zeroinitializer
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00"
@p_str7 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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
  %db_size_in_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %db_size_in)
  %offset_read = call i64 @_ssdm_op_Read.ap_none.i64(i64 %offset)
  %contact_in_V_read = call i512 @_ssdm_op_Read.s_axilite.i512(i512 %contact_in_V)
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation)
  call void (...)* @_ssdm_op_SpecInterface(i64* %current_offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %current_offset, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %offset, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %db_mem_V, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 536870912, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 16, i32 16, i32 4, i32 16, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i8* %results_out_V, [5 x i8]* @p_str5, i32 1, i32 1, [5 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512 %contact_in_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %contacts_size_load = load i32* @contacts_size, align 4
  switch i32 %operation_read, label %12 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %11
  ]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  %tmp = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load, i32 7, i32 31)
  %icmp = icmp sgt i25 %tmp, 0
  br i1 %icmp, label %2, label %3

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1)
  br label %4

; <label>:3                                       ; preds = %1
  %tmp_4 = sext i32 %contacts_size_load to i64
  %contacts_V_addr = getelementptr [128 x i512]* @contacts_V, i64 0, i64 %tmp_4
  store i512 %contact_in_V_read, i512* %contacts_V_addr, align 64
  %tmp_5 = add nsw i32 %contacts_size_load, 1
  store i32 %tmp_5, i32* @contacts_size, align 4
  br label %4

; <label>:4                                       ; preds = %3, %2
  %storemerge = phi i32 [ %tmp_5, %3 ], [ %contacts_size_load, %2 ]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %storemerge)
  br label %.loopexit3

; <label>:5                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  %tmp_2 = trunc i64 %offset_read to i25
  br label %6

; <label>:6                                       ; preds = %.loopexit, %5
  %database_index = phi i32 [ 0, %5 ], [ %database_index_1, %.loopexit ]
  %tmp_6 = icmp ult i32 %database_index, %db_size_in_read
  br i1 %tmp_6, label %.preheader.preheader, label %.loopexit3.loopexit

.preheader.preheader:                             ; preds = %6
  %tmp_7 = sext i32 %database_index to i64
  %tmp_9 = trunc i32 %database_index to i25
  %tmp_8 = add i64 %offset_read, %tmp_7
  %tmp_8_cast = add i25 %tmp_9, %tmp_2
  br label %.preheader

.preheader:                                       ; preds = %match_db_contact.exit, %.preheader.preheader
  %i = phi i6 [ %i_1, %match_db_contact.exit ], [ 0, %.preheader.preheader ]
  %i_cast2 = zext i6 %i to i32
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i, i32 5)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 32, i64 16)
  %i_1 = add i6 %i, 1
  br i1 %tmp_10, label %.loopexit, label %7

; <label>:7                                       ; preds = %.preheader
  %tmp_s = add nsw i32 %i_cast2, %database_index
  %tmp_1 = icmp ult i32 %tmp_s, %db_size_in_read
  br i1 %tmp_1, label %8, label %.loopexit

; <label>:8                                       ; preds = %7
  %tmp_2_cast = zext i6 %i to i25
  %sum = add i25 %tmp_8_cast, %tmp_2_cast
  %sum_cast = zext i25 %sum to i64
  %db_mem_V_addr = getelementptr i512* %db_mem_V, i64 %sum_cast
  %db_mem_V_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i512P(i512* %db_mem_V_addr, i32 1)
  %db_mem_V_addr_read = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  br label %9

; <label>:9                                       ; preds = %10, %8
  %contacts_index_i = phi i8 [ 0, %8 ], [ %contacts_index, %10 ]
  %matched_i = phi i1 [ false, %8 ], [ %matched, %10 ]
  %exitcond_i = icmp eq i8 %contacts_index_i, -128
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %contacts_index = add i8 %contacts_index_i, 1
  br i1 %exitcond_i, label %match_db_contact.exit, label %10

; <label>:10                                      ; preds = %9
  %tmp_i = zext i8 %contacts_index_i to i64
  %contacts_V_addr_1 = getelementptr [128 x i512]* @contacts_V, i64 0, i64 %tmp_i
  %contacts_V_load = load i512* %contacts_V_addr_1, align 64
  %tmp_1_i = icmp eq i512 %contacts_V_load, %db_mem_V_addr_read
  %matched = or i1 %tmp_1_i, %matched_i
  br label %9

match_db_contact.exit:                            ; preds = %9
  %tmp_3 = zext i1 %matched_i to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_3)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_8)
  br label %.preheader

.loopexit:                                        ; preds = %.preheader, %7
  %database_index_1 = add nsw i32 %database_index, 32
  br label %6

; <label>:11                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  store i32 0, i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0)
  br label %.loopexit3

; <label>:12                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3)
  br label %.loopexit3

.loopexit3.loopexit:                              ; preds = %6
  br label %.loopexit3

.loopexit3:                                       ; preds = %.loopexit3.loopexit, %12, %11, %4
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i64P(i64*, i64) {
entry:
  store i64 %1, i64* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i512P(i512*, i32) {
entry:
  ret i1 true
}

define weak i512 @_ssdm_op_Read.s_axilite.i512(i512) {
entry:
  ret i512 %0
}

define weak i512 @_ssdm_op_Read.m_axi.i512P(i512*) {
entry:
  %empty = load i512* %0
  ret i512 %empty
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak i64 @_ssdm_op_Read.ap_none.i64(i64) {
entry:
  ret i64 %0
}

define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

declare i25 @_ssdm_op_PartSelect.i25.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i25
  ret i25 %empty_5
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_6 = shl i6 1, %empty
  %empty_7 = and i6 %0, %empty_6
  %empty_8 = icmp ne i6 %empty_7, 0
  ret i1 %empty_8
}

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
