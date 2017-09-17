; ModuleID = '/home/michael/xilinx_workspace/secure_enclave_simple/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secure_enclave_str = internal unnamed_addr constant [15 x i8] c"secure_enclave\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_ovld\00", align 1
@p_str3 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define i32 @secure_enclave([2 x i128]* %secure_storage_in_V, i128 %pin_attempt_V, [2 x i128]* %secure_storage_out_V, i128* %key_out_V, i32 %counter_in, i32* %increment_counter, i32* %reset_counter) {
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i128]* %secure_storage_in_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i128 %pin_attempt_V), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i128]* %secure_storage_out_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %key_out_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %counter_in), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %increment_counter), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %reset_counter), !map !59
  %counter_in_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %counter_in)
  %pin_attempt_V_read = call i128 @_ssdm_op_Read.ap_vld.i128(i128 %pin_attempt_V)
  %secure_storage_in_V_s = getelementptr [2 x i128]* %secure_storage_in_V, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !63
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @secure_enclave_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %reset_counter, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %increment_counter, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %counter_in, [7 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %counter_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %key_out_V, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([2 x i128]* %secure_storage_out_V, [1 x i8]* @p_str6, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str6, i32 -1, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecInterface([2 x i128]* %secure_storage_out_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128 %pin_attempt_V, [7 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128 %pin_attempt_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_2 = call i32 (...)* @_ssdm_op_SpecMemCore([2 x i128]* %secure_storage_in_V, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecInterface([2 x i128]* %secure_storage_in_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %stored_pin_V = load i128* %secure_storage_in_V_s, align 8
  %tmp = icmp ult i32 %counter_in_read, 5
  %tmp_1 = icmp eq i128 %stored_pin_V, %pin_attempt_V_read
  %or_cond = and i1 %tmp, %tmp_1
  br i1 %or_cond, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_ovld.i128P(i128* %key_out_V, i128 %pin_attempt_V_read)
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %reset_counter, i32 1)
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %increment_counter, i32 0)
  br label %2

._crit_edge:                                      ; preds = %0
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %increment_counter, i32 1)
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %reset_counter, i32 0)
  call void @_ssdm_op_Write.ap_ovld.i128P(i128* %key_out_V, i128 0)
  br label %2

; <label>:2                                       ; preds = %._crit_edge, %1
  %p_s = phi i1 [ true, %1 ], [ false, %._crit_edge ]
  %p_cast = zext i1 %p_s to i32
  ret i32 %p_cast
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.s_axilite.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_ovld.i128P(i128*, i128) {
entry:
  store i128 %1, i128* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
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

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak i128 @_ssdm_op_Read.ap_vld.i128(i128) {
entry:
  ret i128 %0
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !15, !15, !18, !18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!24}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<128>*", metadata !"ap_uint<128>", metadata !"ap_uint<128>*", metadata !"ap_uint<128>*", metadata !"uint", metadata !"int*", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"secure_storage_in", metadata !"pin_attempt", metadata !"secure_storage_out", metadata !"key_out", metadata !"counter_in", metadata !"increment_counter", metadata !"reset_counter"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<128> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !12, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<128, false> &"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!18 = metadata !{null, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !6}
!19 = metadata !{metadata !"kernel_arg_addr_space"}
!20 = metadata !{metadata !"kernel_arg_access_qual"}
!21 = metadata !{metadata !"kernel_arg_type"}
!22 = metadata !{metadata !"kernel_arg_type_qual"}
!23 = metadata !{metadata !"kernel_arg_name"}
!24 = metadata !{metadata !25, [1 x i32]* @llvm_global_ctors_0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"llvm.global_ctors.0", metadata !29, metadata !"", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, i32 1}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 127, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"secure_storage_in.V", metadata !35, metadata !"uint128", i32 0, i32 127}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 1, i32 1}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 127, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"pin_attempt.V", metadata !41, metadata !"uint128", i32 0, i32 127}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, i32 0}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 127, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"secure_storage_out.V", metadata !35, metadata !"uint128", i32 0, i32 127}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 127, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"key_out.V", metadata !29, metadata !"uint128", i32 0, i32 127}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"counter_in", metadata !41, metadata !"unsigned int", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"increment_counter", metadata !29, metadata !"int", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"reset_counter", metadata !29, metadata !"int", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"return", metadata !67, metadata !"int", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 1, i32 0}
