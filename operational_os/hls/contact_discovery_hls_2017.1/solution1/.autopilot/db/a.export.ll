; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_database_ite = internal unnamed_addr global [64 x i8] zeroinitializer, align 16
@contacts_size = internal unnamed_addr global i32 0, align 4
@contacts = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00"
@p_str6 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str5 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str4 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @contact_discovery(i32 %operation, i8* %contacts_in_V, i8* %database_in_V, i8* %matched_out_V, i32* %matched_finished, i32* %error_out, i32* %contacts_size_out) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %contacts_in_V), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %database_in_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %matched_out_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %matched_finished), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !56
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %matched_out_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %database_in_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %contacts_in_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [8 x i8]* @p_str5, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str5, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str5, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  switch i32 %operation_read, label %19 [
    i32 0, label %1
    i32 1, label %8
    i32 2, label %16
  ]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  %contacts_size_load_1 = load i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load_1)
  br label %2

; <label>:2                                       ; preds = %7, %1
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i8P(i8* %contacts_in_V, i32 1)
  br i1 %tmp, label %3, label %.loopexit.loopexit5

; <label>:3                                       ; preds = %2
  %contacts_size_load_3 = load i32* @contacts_size, align 4
  %tmp_2 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load_3, i32 7, i32 31)
  %icmp = icmp sgt i25 %tmp_2, 0
  br i1 %icmp, label %4, label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %3
  br label %.preheader11

; <label>:4                                       ; preds = %3
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1)
  %tmp_4_0 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %contacts_in_V)
  br label %7

.preheader11:                                     ; preds = %.preheader11.preheader, %5
  %i1 = phi i7 [ %i_4, %5 ], [ 0, %.preheader11.preheader ]
  %i1_cast = zext i7 %i1 to i32
  %exitcond9 = icmp eq i7 %i1, -64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %i_4 = add i7 %i1, 1
  br i1 %exitcond9, label %6, label %5

; <label>:5                                       ; preds = %.preheader11
  %tmp_5 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %contacts_in_V)
  %contacts_size_load_5 = load i32* @contacts_size, align 4
  %tmp_6 = shl i32 %contacts_size_load_5, 6
  %tmp_8 = add nsw i32 %tmp_6, %i1_cast
  %tmp_s = sext i32 %tmp_8 to i64
  %contacts_addr_1 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_s
  store i8 %tmp_5, i8* %contacts_addr_1, align 1
  br label %.preheader11

; <label>:6                                       ; preds = %.preheader11
  %contacts_size_load_4 = load i32* @contacts_size, align 4
  %tmp_9 = add nsw i32 %contacts_size_load_4, 1
  store i32 %tmp_9, i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %tmp_9)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  br label %7

; <label>:7                                       ; preds = %6, %4
  br label %2

; <label>:8                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  %contacts_size_load_2 = load i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load_2)
  br label %9

; <label>:9                                       ; preds = %14, %8
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.axis.i8P(i8* %database_in_V, i32 1)
  br i1 %tmp_1, label %.preheader10.preheader, label %15

.preheader10.preheader:                           ; preds = %9
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %10
  %i_1 = phi i7 [ %i_2, %10 ], [ 0, %.preheader10.preheader ]
  %exitcond8 = icmp eq i7 %i_1, -64
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %i_2 = add i7 %i_1, 1
  br i1 %exitcond8, label %.preheader.preheader, label %10

.preheader.preheader:                             ; preds = %.preheader10
  br label %.preheader

; <label>:10                                      ; preds = %.preheader10
  %tmp_4 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %database_in_V)
  %tmp_7 = zext i7 %i_1 to i64
  %current_database_ite = getelementptr inbounds [64 x i8]* @current_database_ite, i64 0, i64 %tmp_7
  store i8 %tmp_4, i8* %current_database_ite, align 1
  br label %.preheader10

.preheader:                                       ; preds = %.preheader.preheader, %compare.exit
  %tmp_10 = phi i1 [ %found, %compare.exit ], [ false, %.preheader.preheader ]
  %contact_index_assign = phi i8 [ %i_5, %compare.exit ], [ 0, %.preheader.preheader ]
  %exitcond7 = icmp eq i8 %contact_index_assign, -128
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %i_5 = add i8 %contact_index_assign, 1
  br i1 %exitcond7, label %14, label %11

; <label>:11                                      ; preds = %.preheader
  %tmp_11 = trunc i8 %contact_index_assign to i7
  %tmp_i = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_11, i6 0)
  br label %12

; <label>:12                                      ; preds = %13, %11
  %i_i = phi i7 [ 0, %11 ], [ %i_6, %13 ]
  %comp = phi i1 [ true, %11 ], [ %found_1, %13 ]
  %i_i_cast7 = zext i7 %i_i to i13
  %exitcond_i = icmp eq i7 %i_i, -64
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i_6 = add i7 %i_i, 1
  br i1 %exitcond_i, label %compare.exit, label %13

; <label>:13                                      ; preds = %12
  %tmp_i_7 = zext i7 %i_i to i64
  %current_database_ite_1 = getelementptr inbounds [64 x i8]* @current_database_ite, i64 0, i64 %tmp_i_7
  %current_database_ite_2 = load i8* %current_database_ite_1, align 1
  %tmp_12_i = add i13 %i_i_cast7, %tmp_i
  %tmp_13_i = zext i13 %tmp_12_i to i64
  %contacts_addr_2 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_13_i
  %contacts_load = load i8* %contacts_addr_2, align 1
  %tmp_14_i = icmp eq i8 %current_database_ite_2, %contacts_load
  %found_1 = and i1 %tmp_14_i, %comp
  br label %12

compare.exit:                                     ; preds = %12
  %found = or i1 %comp, %tmp_10
  br label %.preheader

; <label>:14                                      ; preds = %.preheader
  %cast = zext i1 %tmp_10 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %matched_out_V, i8 %cast)
  br label %9

; <label>:15                                      ; preds = %9
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 1)
  br label %.loopexit

; <label>:16                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  store i32 0, i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0)
  br label %17

; <label>:17                                      ; preds = %18, %16
  %i_3 = phi i8 [ 0, %16 ], [ %i, %18 ]
  %exitcond = icmp eq i8 %i_3, -128
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %i = add i8 %i_3, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %18

; <label>:18                                      ; preds = %17
  %tmp_3 = zext i8 %i_3 to i64
  %contacts_addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_3
  store i8 0, i8* %contacts_addr, align 1
  br label %17

; <label>:19                                      ; preds = %0
  %contacts_size_load = load i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %17
  br label %.loopexit

.loopexit.loopexit5:                              ; preds = %2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit5, %.loopexit.loopexit, %19, %15
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
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

define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_9 = trunc i32 %empty to i25
  ret i25 %empty_9
}

define weak i1 @_ssdm_op_NbReadReq.axis.i8P(i8*, i32) {
entry:
  ret i1 true
}

declare i32 @_ssdm_op_BitConcatenate.i32.i26.i6(i26, i6) nounwind readnone

define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13
  %empty_10 = zext i6 %1 to i13
  %empty_11 = shl i13 %empty, 6
  %empty_12 = or i13 %empty_11, %empty_10
  ret i13 %empty_12
}

!opencl.kernels = !{!0, !7, !13, !19, !22, !22}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"contact_index"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &", metadata !"hls::stream<_Bool> &", metadata !"int*", metadata !"int*", metadata !"int*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contacts_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"contacts_size_out"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const _Bool &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space"}
!24 = metadata !{metadata !"kernel_arg_access_qual"}
!25 = metadata !{metadata !"kernel_arg_type"}
!26 = metadata !{metadata !"kernel_arg_type_qual"}
!27 = metadata !{metadata !"kernel_arg_name"}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"operation", metadata !32, metadata !"int", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 0}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 7, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"contacts_in.V", metadata !38, metadata !"unsigned char", i32 0, i32 7}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 1}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 7, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"database_in.V", metadata !38, metadata !"unsigned char", i32 0, i32 7}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 0, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"matched_out.V", metadata !38, metadata !"bool", i32 0, i32 0}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"matched_finished", metadata !38, metadata !"int", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"error_out", metadata !38, metadata !"int", i32 0, i32 31}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"contacts_size_out", metadata !38, metadata !"int", i32 0, i32 31}
