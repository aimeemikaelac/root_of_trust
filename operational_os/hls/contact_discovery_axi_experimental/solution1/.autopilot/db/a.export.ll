; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@contacts_size = internal unnamed_addr global i32 0, align 4
@contacts_V = internal unnamed_addr global [128 x i512] zeroinitializer
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00"
@p_str6 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define internal fastcc i1 @match_db_contact(i512 %db_item_V) readonly {
  %db_item_V_read = call i512 @_ssdm_op_Read.ap_auto.i512(i512 %db_item_V)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %contacts_index = phi i8 [ 0, %0 ], [ %contacts_index_1, %2 ]
  %matched = phi i1 [ false, %0 ], [ %matched_1, %2 ]
  %exitcond = icmp eq i8 %contacts_index, -128
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %contacts_index_1 = add i8 %contacts_index, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i8 %contacts_index to i64
  %contacts_V_addr = getelementptr [128 x i512]* @contacts_V, i64 0, i64 %tmp
  %contacts_V_load = load i512* %contacts_V_addr, align 64
  %tmp_1 = icmp eq i512 %contacts_V_load, %db_item_V_read
  %matched_1 = or i1 %tmp_1, %matched
  br label %1

; <label>:3                                       ; preds = %1
  ret i1 %matched
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @contact_discovery(i32 %operation, i512 %contact_in_V, i512* %db_in_V_V, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, i8* %results_out_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %contact_in_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %db_in_V_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %db_size_in), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %results_out_V), !map !60
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %db_size_in_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %db_size_in)
  %contact_in_V_read = call i512 @_ssdm_op_Read.s_axilite.i512(i512 %contact_in_V)
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation)
  call void (...)* @_ssdm_op_SpecInterface(i8* %results_out_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %db_in_V_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str5, i32 1, i32 1, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512 %contact_in_V, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  %contacts_size_load = load i32* @contacts_size, align 4
  switch i32 %operation_read, label %9 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %8
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
  br label %.loopexit

; <label>:5                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  br label %6

; <label>:6                                       ; preds = %7, %5
  %database_index = phi i32 [ 0, %5 ], [ %database_index_1, %7 ]
  %tmp_6 = icmp ult i32 %database_index, %db_size_in_read
  br i1 %tmp_6, label %7, label %.loopexit.loopexit

; <label>:7                                       ; preds = %6
  %tmp_V = call i512 @_ssdm_op_Read.axis.volatile.i512P(i512* %db_in_V_V)
  %tmp_8 = call fastcc i1 @match_db_contact(i512 %tmp_V)
  %tmp_1 = zext i1 %tmp_8 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_1)
  %tmp_V_1 = call i512 @_ssdm_op_Read.axis.volatile.i512P(i512* %db_in_V_V)
  %tmp_s = call fastcc i1 @match_db_contact(i512 %tmp_V_1)
  %tmp_2 = zext i1 %tmp_s to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_2)
  %tmp_V_2 = call i512 @_ssdm_op_Read.axis.volatile.i512P(i512* %db_in_V_V)
  %tmp_9 = call fastcc i1 @match_db_contact(i512 %tmp_V_2)
  %tmp_3 = zext i1 %tmp_9 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_3)
  %tmp_V_3 = call i512 @_ssdm_op_Read.axis.volatile.i512P(i512* %db_in_V_V)
  %tmp_7 = call fastcc i1 @match_db_contact(i512 %tmp_V_3)
  %tmp_10 = zext i1 %tmp_7 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_10)
  %database_index_1 = add nsw i32 %database_index, 4
  br label %6

; <label>:8                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  store i32 0, i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0)
  br label %.loopexit

; <label>:9                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %6
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %9, %8, %4
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

define weak i512 @_ssdm_op_Read.s_axilite.i512(i512) {
entry:
  ret i512 %0
}

define weak i512 @_ssdm_op_Read.axis.volatile.i512P(i512*) {
entry:
  %empty = load i512* %0
  ret i512 %empty
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

define weak i512 @_ssdm_op_Read.ap_auto.i512(i512) {
entry:
  ret i512 %0
}

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i25
  ret i25 %empty_4
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!opencl.kernels = !{!0, !7, !13, !19, !22, !25, !13, !13, !13, !13}
!llvm.map.gv = !{!27}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hash"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"db_item"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"hash", metadata !"hls::stream<hash> &", metadata !"uint", metadata !"int*", metadata !"int*", metadata !"hls::stream<uchar> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"db_in", metadata !"db_size_in", metadata !"error_out", metadata !"contacts_size_out", metadata !"results_out"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!22 = metadata !{null, metadata !1, metadata !2, metadata !23, metadata !4, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<512> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!25 = metadata !{null, metadata !1, metadata !2, metadata !26, metadata !4, metadata !24, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<512, false> &"}
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
!47 = metadata !{metadata !"db_in.V.V", metadata !32, metadata !"uint512", i32 0, i32 511}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"db_size_in", metadata !38, metadata !"unsigned int", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"error_out", metadata !32, metadata !"int", i32 0, i32 31}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"contacts_size_out", metadata !32, metadata !"int", i32 0, i32 31}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 7, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"results_out.V", metadata !32, metadata !"unsigned char", i32 0, i32 7}
