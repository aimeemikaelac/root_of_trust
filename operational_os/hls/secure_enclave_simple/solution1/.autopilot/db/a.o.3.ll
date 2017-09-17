; ModuleID = '/home/michael/xilinx_workspace/secure_enclave_simple/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secure_enclave_str = internal unnamed_addr constant [15 x i8] c"secure_enclave\00" ; [#uses=1 type=[15 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=2 type=[7 x i8]*]
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_ovld\00", align 1 ; [#uses=1 type=[8 x i8]*]
@p_str3 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=2 type=[7 x i8]*]
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=66 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]

; [#uses=0]
define i32 @secure_enclave([2 x i128]* %secure_storage_in_V, i128 %pin_attempt_V, [2 x i128]* %secure_storage_out_V, i128* %key_out_V, i32 %counter_in, i32* %increment_counter, i32* %reset_counter) {
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i128]* %secure_storage_in_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i128 %pin_attempt_V), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i128]* %secure_storage_out_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %key_out_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %counter_in), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %increment_counter), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %reset_counter), !map !59
  %counter_in_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %counter_in) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %counter_in_read}, i64 0, metadata !63), !dbg !446 ; [debug line = 9:22] [debug variable = counter_in]
  %pin_attempt_V_read = call i128 @_ssdm_op_Read.ap_vld.i128(i128 %pin_attempt_V) ; [#uses=2 type=i128]
  %secure_storage_in_V_s = getelementptr [2 x i128]* %secure_storage_in_V, i64 0, i64 0 ; [#uses=1 type=i128*]
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !447
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @secure_enclave_str) nounwind
  call void @llvm.dbg.value(metadata !{[2 x i128]* %secure_storage_in_V}, i64 0, metadata !453), !dbg !464 ; [debug line = 5:33] [debug variable = secure_storage_in.V]
  call void @llvm.dbg.value(metadata !{[2 x i128]* %secure_storage_out_V}, i64 0, metadata !465), !dbg !467 ; [debug line = 7:22] [debug variable = secure_storage_out.V]
  call void @llvm.dbg.value(metadata !{i128* %key_out_V}, i64 0, metadata !468), !dbg !471 ; [debug line = 8:23] [debug variable = key_out.V]
  call void @llvm.dbg.value(metadata !{i32 %counter_in}, i64 0, metadata !63), !dbg !446 ; [debug line = 9:22] [debug variable = counter_in]
  call void @llvm.dbg.value(metadata !{i32* %increment_counter}, i64 0, metadata !472), !dbg !473 ; [debug line = 10:14] [debug variable = increment_counter]
  call void @llvm.dbg.value(metadata !{i32* %reset_counter}, i64 0, metadata !474), !dbg !475 ; [debug line = 11:14] [debug variable = reset_counter]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !476 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !478 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %reset_counter, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !479 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %increment_counter, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !480 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %counter_in, [7 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !481 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %counter_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !482 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i128* %key_out_V, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !483 ; [debug line = 18:1]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([2 x i128]* %secure_storage_out_V, [1 x i8]* @p_str6, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str6, i32 -1, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([2 x i128]* %secure_storage_out_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128 %pin_attempt_V, [7 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !484 ; [debug line = 21:1]
  call void (...)* @_ssdm_op_SpecInterface(i128 %pin_attempt_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !485 ; [debug line = 22:1]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecMemCore([2 x i128]* %secure_storage_in_V, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([2 x i128]* %secure_storage_in_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %stored_pin_V = load i128* %secure_storage_in_V_s, align 8, !dbg !486 ; [#uses=1 type=i128] [debug line = 26:48]
  call void @llvm.dbg.value(metadata !{i128 %stored_pin_V}, i64 0, metadata !487), !dbg !486 ; [debug line = 26:48] [debug variable = stored_pin.V]
  call void @llvm.dbg.value(metadata !{i128 %stored_pin_V}, i64 0, metadata !489), !dbg !491 ; [debug line = 27:52] [debug variable = encryption_key.V]
  %tmp = icmp ult i32 %counter_in_read, 5, !dbg !492 ; [#uses=1 type=i1] [debug line = 29:2]
  %tmp_1 = icmp eq i128 %stored_pin_V, %pin_attempt_V_read, !dbg !493 ; [#uses=1 type=i1] [debug line = 2922:9@29:23]
  %or_cond = and i1 %tmp, %tmp_1, !dbg !496       ; [#uses=1 type=i1] [debug line = 29:23]
  br i1 %or_cond, label %1, label %._crit_edge, !dbg !492 ; [debug line = 29:2]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{i128* %key_out_V}, i64 0, metadata !497), !dbg !500 ; [debug line = 276:53@30:3] [debug variable = ssdm_int<128 + 1024 * 0, false>.V]
  call void @_ssdm_op_Write.ap_ovld.i128P(i128* %key_out_V, i128 %pin_attempt_V_read), !dbg !503 ; [debug line = 277:10@30:3]
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %reset_counter, i32 1), !dbg !505 ; [debug line = 31:3]
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %increment_counter, i32 0), !dbg !506 ; [debug line = 32:3]
  br label %2, !dbg !507                          ; [debug line = 33:3]

._crit_edge:                                      ; preds = %0
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %increment_counter, i32 1), !dbg !508 ; [debug line = 35:3]
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %reset_counter, i32 0), !dbg !510 ; [debug line = 36:3]
  call void @llvm.dbg.value(metadata !{i128* %key_out_V}, i64 0, metadata !497), !dbg !511 ; [debug line = 276:53@37:3] [debug variable = ssdm_int<128 + 1024 * 0, false>.V]
  call void @_ssdm_op_Write.ap_ovld.i128P(i128* %key_out_V, i128 0), !dbg !513 ; [debug line = 277:10@37:3]
  br label %2, !dbg !514                          ; [debug line = 38:3]

; <label>:2                                       ; preds = %._crit_edge, %1
  %p_s = phi i1 [ true, %1 ], [ false, %._crit_edge ] ; [#uses=1 type=i1]
  %p_cast = zext i1 %p_s to i32, !dbg !515        ; [#uses=1 type=i32] [debug line = 41:1]
  ret i32 %p_cast, !dbg !515                      ; [debug line = 41:1]
}

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
define weak void @_ssdm_op_Write.s_axilite.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_Write.ap_ovld.i128P(i128*, i128) {
entry:
  store i128 %1, i128* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=11]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i128 @_ssdm_op_Read.ap_vld.i128(i128) {
entry:
  ret i128 %0
}

; [#uses=1]
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
!63 = metadata !{i32 786689, metadata !64, metadata !"counter_in", metadata !65, i32 83886089, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 786478, i32 0, metadata !65, metadata !"secure_enclave", metadata !"secure_enclave", metadata !"_Z14secure_enclaveP7ap_uintILi128EES0_S1_S1_jPiS2_", metadata !65, i32 5, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !87, i32 11} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786473, metadata !"secure_enclave_simple/src/secure_enclave_simple.cpp", metadata !"/home/michael/xilinx_workspace", null} ; [ DW_TAG_file_type ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !69, metadata !69, metadata !141, metadata !445, metadata !445}
!68 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 786434, null, metadata !"ap_uint<128>", metadata !71, i32 180, i64 128, i64 128, i32 0, i32 0, null, metadata !72, i32 0, null, metadata !444} ; [ DW_TAG_class_type ]
!71 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/ap_int.h", metadata !"/home/michael/xilinx_workspace", null} ; [ DW_TAG_file_type ]
!72 = metadata !{metadata !73, metadata !365, metadata !369, metadata !375, metadata !381, metadata !384, metadata !387, metadata !390, metadata !393, metadata !396, metadata !399, metadata !402, metadata !405, metadata !408, metadata !411, metadata !414, metadata !417, metadata !420, metadata !423, metadata !426, metadata !429, metadata !433, metadata !436, metadata !440, metadata !443}
!73 = metadata !{i32 786460, metadata !70, null, metadata !71, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_inheritance ]
!74 = metadata !{i32 786434, null, metadata !"ap_int_base<128, false, false>", metadata !75, i32 2341, i64 128, i64 128, i32 0, i32 0, null, metadata !76, i32 0, null, metadata !362} ; [ DW_TAG_class_type ]
!75 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/ap_int_syn.h", metadata !"/home/michael/xilinx_workspace", null} ; [ DW_TAG_file_type ]
!76 = metadata !{metadata !77, metadata !98, metadata !102, metadata !110, metadata !116, metadata !119, metadata !123, metadata !127, metadata !131, metadata !135, metadata !138, metadata !142, metadata !146, metadata !150, metadata !155, metadata !160, metadata !164, metadata !168, metadata !174, metadata !177, metadata !181, metadata !184, metadata !187, metadata !188, metadata !192, metadata !195, metadata !198, metadata !201, metadata !204, metadata !207, metadata !210, metadata !213, metadata !216, metadata !219, metadata !222, metadata !225, metadata !235, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !245, metadata !248, metadata !251, metadata !254, metadata !257, metadata !260, metadata !263, metadata !264, metadata !268, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !279, metadata !280, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !291, metadata !292, metadata !293, metadata !296, metadata !297, metadata !300, metadata !308, metadata !309, metadata !312, metadata !315, metadata !319, metadata !320, metadata !323, metadata !324, metadata !328, metadata !329, metadata !330, metadata !331, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !355, metadata !358, metadata !361}
!77 = metadata !{i32 786460, metadata !74, null, metadata !75, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_inheritance ]
!78 = metadata !{i32 786434, null, metadata !"ssdm_int<128 + 1024 * 0, false>", metadata !79, i32 136, i64 128, i64 128, i32 0, i32 0, null, metadata !80, i32 0, null, metadata !94} ; [ DW_TAG_class_type ]
!79 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/michael/xilinx_workspace", null} ; [ DW_TAG_file_type ]
!80 = metadata !{metadata !81, metadata !83, metadata !89}
!81 = metadata !{i32 786445, metadata !78, metadata !"V", metadata !79, i32 136, i64 128, i64 128, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ]
!82 = metadata !{i32 786468, null, metadata !"uint128", null, i32 0, i64 128, i64 128, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!83 = metadata !{i32 786478, i32 0, metadata !78, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !79, i32 136, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 136} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{null, metadata !86}
!86 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !78} ; [ DW_TAG_pointer_type ]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!89 = metadata !{i32 786478, i32 0, metadata !78, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !79, i32 136, metadata !90, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !87, i32 136} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{null, metadata !86, metadata !92}
!92 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_reference_type ]
!93 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_const_type ]
!94 = metadata !{metadata !95, metadata !96}
!95 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !68, i64 128, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!96 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !97, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!97 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2379, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2379} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{null, metadata !101}
!101 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !74} ; [ DW_TAG_pointer_type ]
!102 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base<128, false>", metadata !"ap_int_base<128, false>", metadata !"", metadata !75, i32 2391, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !107, i32 0, metadata !87, i32 2391} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{null, metadata !101, metadata !105}
!105 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_reference_type ]
!106 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_const_type ]
!107 = metadata !{metadata !108, metadata !109}
!108 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !68, i64 128, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!109 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !97, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!110 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base<128, false>", metadata !"ap_int_base<128, false>", metadata !"", metadata !75, i32 2394, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !107, i32 0, metadata !87, i32 2394} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{null, metadata !101, metadata !113}
!113 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_reference_type ]
!114 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_const_type ]
!115 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_volatile_type ]
!116 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2401, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2401} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{null, metadata !101, metadata !97}
!119 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2402, metadata !120, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2402} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{null, metadata !101, metadata !122}
!122 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!123 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2403, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2403} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !101, metadata !126}
!126 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!127 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2404, metadata !128, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2404} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{null, metadata !101, metadata !130}
!130 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!131 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2405, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2405} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{null, metadata !101, metadata !134}
!134 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!135 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2406, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2406} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !101, metadata !68}
!138 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2407, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2407} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!140 = metadata !{null, metadata !101, metadata !141}
!141 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!142 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2408, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2408} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{null, metadata !101, metadata !145}
!145 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2409, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2409} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{null, metadata !101, metadata !149}
!149 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!150 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2410, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2410} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{null, metadata !101, metadata !153}
!153 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !75, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ]
!154 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!155 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2411, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2411} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{null, metadata !101, metadata !158}
!158 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !75, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_typedef ]
!159 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!160 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2412, metadata !161, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2412} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!162 = metadata !{null, metadata !101, metadata !163}
!163 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!164 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2413, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !87, i32 2413} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!166 = metadata !{null, metadata !101, metadata !167}
!167 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!168 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2440, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2440} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{null, metadata !101, metadata !171}
!171 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ]
!172 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_const_type ]
!173 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!174 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2447, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2447} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{null, metadata !101, metadata !171, metadata !122}
!177 = metadata !{i32 786478, i32 0, metadata !74, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi128ELb0ELb0EE4readEv", metadata !75, i32 2468, metadata !178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2468} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!179 = metadata !{metadata !74, metadata !180}
!180 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !115} ; [ DW_TAG_pointer_type ]
!181 = metadata !{i32 786478, i32 0, metadata !74, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi128ELb0ELb0EE5writeERKS0_", metadata !75, i32 2474, metadata !182, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2474} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!183 = metadata !{null, metadata !180, metadata !105}
!184 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi128ELb0ELb0EEaSERVKS0_", metadata !75, i32 2486, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2486} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{null, metadata !180, metadata !113}
!187 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi128ELb0ELb0EEaSERKS0_", metadata !75, i32 2495, metadata !182, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2495} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSERVKS0_", metadata !75, i32 2518, metadata !189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2518} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!190 = metadata !{metadata !191, metadata !101, metadata !113}
!191 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_reference_type ]
!192 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSERKS0_", metadata !75, i32 2523, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2523} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{metadata !191, metadata !101, metadata !105}
!195 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSEPKc", metadata !75, i32 2527, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2527} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !191, metadata !101, metadata !171}
!198 = metadata !{i32 786478, i32 0, metadata !74, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE3setEPKca", metadata !75, i32 2535, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2535} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{metadata !191, metadata !101, metadata !171, metadata !122}
!201 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSEc", metadata !75, i32 2549, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2549} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{metadata !191, metadata !101, metadata !173}
!204 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSEh", metadata !75, i32 2550, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2550} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!206 = metadata !{metadata !191, metadata !101, metadata !126}
!207 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSEs", metadata !75, i32 2551, metadata !208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2551} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!209 = metadata !{metadata !191, metadata !101, metadata !130}
!210 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSEt", metadata !75, i32 2552, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2552} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{metadata !191, metadata !101, metadata !134}
!213 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSEi", metadata !75, i32 2553, metadata !214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2553} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{metadata !191, metadata !101, metadata !68}
!216 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSEj", metadata !75, i32 2554, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2554} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !191, metadata !101, metadata !141}
!219 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSEx", metadata !75, i32 2555, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2555} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!221 = metadata !{metadata !191, metadata !101, metadata !153}
!222 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEaSEy", metadata !75, i32 2556, metadata !223, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2556} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!224 = metadata !{metadata !191, metadata !101, metadata !158}
!225 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EEcvyEv", metadata !75, i32 2595, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2595} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{metadata !228, metadata !234}
!228 = metadata !{i32 786454, metadata !74, metadata !"RetType", metadata !75, i32 2345, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ]
!229 = metadata !{i32 786454, metadata !230, metadata !"Type", metadata !75, i32 1363, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ]
!230 = metadata !{i32 786434, null, metadata !"retval<8, false>", metadata !75, i32 1362, i64 8, i64 8, i32 0, i32 0, null, metadata !231, i32 0, null, metadata !232} ; [ DW_TAG_class_type ]
!231 = metadata !{i32 0}
!232 = metadata !{metadata !233, metadata !96}
!233 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !68, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!234 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !106} ; [ DW_TAG_pointer_type ]
!235 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE7to_boolEv", metadata !75, i32 2601, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2601} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!237 = metadata !{metadata !97, metadata !234}
!238 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE8to_ucharEv", metadata !75, i32 2602, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2602} ; [ DW_TAG_subprogram ]
!239 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE7to_charEv", metadata !75, i32 2603, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2603} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE9to_ushortEv", metadata !75, i32 2604, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2604} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE8to_shortEv", metadata !75, i32 2605, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2605} ; [ DW_TAG_subprogram ]
!242 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE6to_intEv", metadata !75, i32 2606, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2606} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!244 = metadata !{metadata !68, metadata !234}
!245 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE7to_uintEv", metadata !75, i32 2607, metadata !246, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2607} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!247 = metadata !{metadata !141, metadata !234}
!248 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE7to_longEv", metadata !75, i32 2608, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2608} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!250 = metadata !{metadata !145, metadata !234}
!251 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE8to_ulongEv", metadata !75, i32 2609, metadata !252, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2609} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!253 = metadata !{metadata !149, metadata !234}
!254 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE8to_int64Ev", metadata !75, i32 2610, metadata !255, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2610} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{metadata !153, metadata !234}
!257 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE9to_uint64Ev", metadata !75, i32 2611, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2611} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{metadata !158, metadata !234}
!260 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE9to_doubleEv", metadata !75, i32 2612, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2612} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!262 = metadata !{metadata !167, metadata !234}
!263 = metadata !{i32 786478, i32 0, metadata !74, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE6lengthEv", metadata !75, i32 2625, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2625} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786478, i32 0, metadata !74, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi128ELb0ELb0EE6lengthEv", metadata !75, i32 2626, metadata !265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2626} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!266 = metadata !{metadata !68, metadata !267}
!267 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !114} ; [ DW_TAG_pointer_type ]
!268 = metadata !{i32 786478, i32 0, metadata !74, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE7reverseEv", metadata !75, i32 2631, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2631} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!270 = metadata !{metadata !191, metadata !101}
!271 = metadata !{i32 786478, i32 0, metadata !74, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE6iszeroEv", metadata !75, i32 2637, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2637} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786478, i32 0, metadata !74, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE7is_zeroEv", metadata !75, i32 2642, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2642} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 786478, i32 0, metadata !74, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE4signEv", metadata !75, i32 2647, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2647} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786478, i32 0, metadata !74, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE5clearEi", metadata !75, i32 2655, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2655} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786478, i32 0, metadata !74, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE6invertEi", metadata !75, i32 2661, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2661} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786478, i32 0, metadata !74, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE4testEi", metadata !75, i32 2669, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2669} ; [ DW_TAG_subprogram ]
!277 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!278 = metadata !{metadata !97, metadata !234, metadata !68}
!279 = metadata !{i32 786478, i32 0, metadata !74, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE3setEi", metadata !75, i32 2675, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2675} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786478, i32 0, metadata !74, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE3setEib", metadata !75, i32 2681, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2681} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!282 = metadata !{null, metadata !101, metadata !68, metadata !97}
!283 = metadata !{i32 786478, i32 0, metadata !74, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE7lrotateEi", metadata !75, i32 2688, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2688} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 786478, i32 0, metadata !74, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE7rrotateEi", metadata !75, i32 2697, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2697} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 786478, i32 0, metadata !74, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE7set_bitEib", metadata !75, i32 2705, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2705} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786478, i32 0, metadata !74, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE7get_bitEi", metadata !75, i32 2710, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2710} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 786478, i32 0, metadata !74, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE5b_notEv", metadata !75, i32 2715, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2715} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 786478, i32 0, metadata !74, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE17countLeadingZerosEv", metadata !75, i32 2722, metadata !289, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2722} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!290 = metadata !{metadata !68, metadata !101}
!291 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEppEv", metadata !75, i32 2779, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2779} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEmmEv", metadata !75, i32 2783, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2783} ; [ DW_TAG_subprogram ]
!293 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEppEi", metadata !75, i32 2791, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2791} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{metadata !106, metadata !101, metadata !68}
!296 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEmmEi", metadata !75, i32 2796, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2796} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EEpsEv", metadata !75, i32 2805, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2805} ; [ DW_TAG_subprogram ]
!298 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!299 = metadata !{metadata !74, metadata !234}
!300 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EEngEv", metadata !75, i32 2809, metadata !301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2809} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!302 = metadata !{metadata !303, metadata !234}
!303 = metadata !{i32 786454, metadata !304, metadata !"minus", metadata !75, i32 2368, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_typedef ]
!304 = metadata !{i32 786434, metadata !74, metadata !"RType<1, false>", metadata !75, i32 2350, i64 8, i64 8, i32 0, i32 0, null, metadata !231, i32 0, null, metadata !305} ; [ DW_TAG_class_type ]
!305 = metadata !{metadata !306, metadata !109}
!306 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !68, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!307 = metadata !{i32 786434, null, metadata !"ap_int_base<129, true, false>", metadata !75, i32 650, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!308 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EEntEv", metadata !75, i32 2816, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2816} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator~", metadata !"operator~", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EEcoEv", metadata !75, i32 2823, metadata !310, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2823} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!311 = metadata !{metadata !307, metadata !234}
!312 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator==<128, false>", metadata !"operator==<128, false>", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EEeqILi128ELb0EEEbRKS_IXT_EXT0_EXleT_Li64EEE", metadata !75, i32 2921, metadata !313, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !107, i32 0, metadata !87, i32 2921} ; [ DW_TAG_subprogram ]
!313 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !314, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!314 = metadata !{metadata !97, metadata !234, metadata !105}
!315 = metadata !{i32 786478, i32 0, metadata !74, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE5rangeEii", metadata !75, i32 2950, metadata !316, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2950} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!317 = metadata !{metadata !318, metadata !101, metadata !68, metadata !68}
!318 = metadata !{i32 786434, null, metadata !"ap_range_ref<128, false>", metadata !75, i32 923, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!319 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEclEii", metadata !75, i32 2956, metadata !316, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2956} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786478, i32 0, metadata !74, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE5rangeEii", metadata !75, i32 2962, metadata !321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2962} ; [ DW_TAG_subprogram ]
!321 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!322 = metadata !{metadata !318, metadata !234, metadata !68, metadata !68}
!323 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EEclEii", metadata !75, i32 2968, metadata !321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2968} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EEixEi", metadata !75, i32 2988, metadata !325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 2988} ; [ DW_TAG_subprogram ]
!325 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!326 = metadata !{metadata !327, metadata !101, metadata !68}
!327 = metadata !{i32 786434, null, metadata !"ap_bit_ref<128, false>", metadata !75, i32 1193, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!328 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EEixEi", metadata !75, i32 3002, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3002} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786478, i32 0, metadata !74, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE3bitEi", metadata !75, i32 3016, metadata !325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3016} ; [ DW_TAG_subprogram ]
!330 = metadata !{i32 786478, i32 0, metadata !74, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE3bitEi", metadata !75, i32 3030, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3030} ; [ DW_TAG_subprogram ]
!331 = metadata !{i32 786478, i32 0, metadata !74, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE10and_reduceEv", metadata !75, i32 3210, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3210} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !97, metadata !101}
!334 = metadata !{i32 786478, i32 0, metadata !74, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE11nand_reduceEv", metadata !75, i32 3213, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3213} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786478, i32 0, metadata !74, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE9or_reduceEv", metadata !75, i32 3216, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3216} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 786478, i32 0, metadata !74, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE10nor_reduceEv", metadata !75, i32 3219, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3219} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 786478, i32 0, metadata !74, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE10xor_reduceEv", metadata !75, i32 3222, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3222} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786478, i32 0, metadata !74, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi128ELb0ELb0EE11xnor_reduceEv", metadata !75, i32 3225, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3225} ; [ DW_TAG_subprogram ]
!339 = metadata !{i32 786478, i32 0, metadata !74, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE10and_reduceEv", metadata !75, i32 3229, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3229} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 786478, i32 0, metadata !74, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE11nand_reduceEv", metadata !75, i32 3232, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3232} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786478, i32 0, metadata !74, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE9or_reduceEv", metadata !75, i32 3235, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3235} ; [ DW_TAG_subprogram ]
!342 = metadata !{i32 786478, i32 0, metadata !74, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE10nor_reduceEv", metadata !75, i32 3238, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3238} ; [ DW_TAG_subprogram ]
!343 = metadata !{i32 786478, i32 0, metadata !74, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE10xor_reduceEv", metadata !75, i32 3241, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3241} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786478, i32 0, metadata !74, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE11xnor_reduceEv", metadata !75, i32 3244, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3244} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE9to_stringEPci8BaseModeb", metadata !75, i32 3251, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3251} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!347 = metadata !{null, metadata !234, metadata !348, metadata !68, metadata !349, metadata !97}
!348 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ]
!349 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !75, i32 602, i64 5, i64 8, i32 0, i32 0, null, metadata !350, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!350 = metadata !{metadata !351, metadata !352, metadata !353, metadata !354}
!351 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!352 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!353 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!354 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!355 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE9to_stringE8BaseModeb", metadata !75, i32 3278, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3278} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!357 = metadata !{metadata !348, metadata !234, metadata !349, metadata !97}
!358 = metadata !{i32 786478, i32 0, metadata !74, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EE9to_stringEab", metadata !75, i32 3282, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 3282} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!360 = metadata !{metadata !348, metadata !234, metadata !122, metadata !97}
!361 = metadata !{i32 786478, i32 0, metadata !74, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !75, i32 2341, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !87, i32 2341} ; [ DW_TAG_subprogram ]
!362 = metadata !{metadata !363, metadata !96, metadata !364}
!363 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !68, i64 128, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!364 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !97, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!365 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 183, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 183} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{null, metadata !368}
!368 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !70} ; [ DW_TAG_pointer_type ]
!369 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint<128>", metadata !"ap_uint<128>", metadata !"", metadata !71, i32 185, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !374, i32 0, metadata !87, i32 185} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!371 = metadata !{null, metadata !368, metadata !372}
!372 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !373} ; [ DW_TAG_reference_type ]
!373 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_const_type ]
!374 = metadata !{metadata !108}
!375 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint<128>", metadata !"ap_uint<128>", metadata !"", metadata !71, i32 191, metadata !376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !374, i32 0, metadata !87, i32 191} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!377 = metadata !{null, metadata !368, metadata !378}
!378 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !379} ; [ DW_TAG_reference_type ]
!379 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !380} ; [ DW_TAG_const_type ]
!380 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_volatile_type ]
!381 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint<128, false>", metadata !"ap_uint<128, false>", metadata !"", metadata !71, i32 226, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !107, i32 0, metadata !87, i32 226} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!383 = metadata !{null, metadata !368, metadata !105}
!384 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 245, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 245} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{null, metadata !368, metadata !97}
!387 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 246, metadata !388, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 246} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!389 = metadata !{null, metadata !368, metadata !122}
!390 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 247, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 247} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!392 = metadata !{null, metadata !368, metadata !126}
!393 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 248, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 248} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!395 = metadata !{null, metadata !368, metadata !130}
!396 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 249, metadata !397, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 249} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!398 = metadata !{null, metadata !368, metadata !134}
!399 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 250, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 250} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!401 = metadata !{null, metadata !368, metadata !68}
!402 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 251, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 251} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!404 = metadata !{null, metadata !368, metadata !141}
!405 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 252, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 252} ; [ DW_TAG_subprogram ]
!406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!407 = metadata !{null, metadata !368, metadata !145}
!408 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 253, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 253} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!410 = metadata !{null, metadata !368, metadata !149}
!411 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 254, metadata !412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 254} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{null, metadata !368, metadata !159}
!414 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 255, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 255} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{null, metadata !368, metadata !154}
!417 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 256, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 256} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!419 = metadata !{null, metadata !368, metadata !163}
!420 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 257, metadata !421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 257} ; [ DW_TAG_subprogram ]
!421 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!422 = metadata !{null, metadata !368, metadata !167}
!423 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 259, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 259} ; [ DW_TAG_subprogram ]
!424 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !425, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!425 = metadata !{null, metadata !368, metadata !171}
!426 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 260, metadata !427, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 260} ; [ DW_TAG_subprogram ]
!427 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!428 = metadata !{null, metadata !368, metadata !171, metadata !122}
!429 = metadata !{i32 786478, i32 0, metadata !70, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi128EEaSERKS0_", metadata !71, i32 263, metadata !430, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 263} ; [ DW_TAG_subprogram ]
!430 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !431, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!431 = metadata !{null, metadata !432, metadata !372}
!432 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !380} ; [ DW_TAG_pointer_type ]
!433 = metadata !{i32 786478, i32 0, metadata !70, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi128EEaSERVKS0_", metadata !71, i32 267, metadata !434, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 267} ; [ DW_TAG_subprogram ]
!434 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!435 = metadata !{null, metadata !432, metadata !378}
!436 = metadata !{i32 786478, i32 0, metadata !70, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi128EEaSERVKS0_", metadata !71, i32 271, metadata !437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 271} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!438 = metadata !{metadata !439, metadata !368, metadata !378}
!439 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_reference_type ]
!440 = metadata !{i32 786478, i32 0, metadata !70, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi128EEaSERKS0_", metadata !71, i32 276, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !87, i32 276} ; [ DW_TAG_subprogram ]
!441 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !442, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!442 = metadata !{metadata !439, metadata !368, metadata !372}
!443 = metadata !{i32 786478, i32 0, metadata !70, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !71, i32 180, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !87, i32 180} ; [ DW_TAG_subprogram ]
!444 = metadata !{metadata !363}
!445 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!446 = metadata !{i32 9, i32 22, metadata !64, null}
!447 = metadata !{metadata !448}
!448 = metadata !{i32 0, i32 31, metadata !449}
!449 = metadata !{metadata !450}
!450 = metadata !{metadata !"return", metadata !451, metadata !"int", i32 0, i32 31}
!451 = metadata !{metadata !452}
!452 = metadata !{i32 0, i32 1, i32 0}
!453 = metadata !{i32 790531, metadata !454, metadata !"secure_storage_in.V", null, i32 5, metadata !455, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!454 = metadata !{i32 786689, metadata !64, metadata !"secure_storage_in", metadata !65, i32 16777221, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!455 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 128, i32 0, i32 0, metadata !456, metadata !462, i32 0, i32 0} ; [ DW_TAG_array_type ]
!456 = metadata !{i32 786438, null, metadata !"ap_uint<128>", metadata !71, i32 180, i64 128, i64 128, i32 0, i32 0, null, metadata !457, i32 0, null, metadata !444} ; [ DW_TAG_class_field_type ]
!457 = metadata !{metadata !458}
!458 = metadata !{i32 786438, null, metadata !"ap_int_base<128, false, false>", metadata !75, i32 2341, i64 128, i64 128, i32 0, i32 0, null, metadata !459, i32 0, null, metadata !362} ; [ DW_TAG_class_field_type ]
!459 = metadata !{metadata !460}
!460 = metadata !{i32 786438, null, metadata !"ssdm_int<128 + 1024 * 0, false>", metadata !79, i32 136, i64 128, i64 128, i32 0, i32 0, null, metadata !461, i32 0, null, metadata !94} ; [ DW_TAG_class_field_type ]
!461 = metadata !{metadata !81}
!462 = metadata !{metadata !463}
!463 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!464 = metadata !{i32 5, i32 33, metadata !64, null}
!465 = metadata !{i32 790531, metadata !466, metadata !"secure_storage_out.V", null, i32 7, metadata !455, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!466 = metadata !{i32 786689, metadata !64, metadata !"secure_storage_out", metadata !65, i32 50331655, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!467 = metadata !{i32 7, i32 22, metadata !64, null}
!468 = metadata !{i32 790531, metadata !469, metadata !"key_out.V", null, i32 8, metadata !470, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!469 = metadata !{i32 786689, metadata !64, metadata !"key_out", metadata !65, i32 67108872, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!470 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !456} ; [ DW_TAG_pointer_type ]
!471 = metadata !{i32 8, i32 23, metadata !64, null}
!472 = metadata !{i32 786689, metadata !64, metadata !"increment_counter", metadata !65, i32 100663306, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!473 = metadata !{i32 10, i32 14, metadata !64, null}
!474 = metadata !{i32 786689, metadata !64, metadata !"reset_counter", metadata !65, i32 117440523, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!475 = metadata !{i32 11, i32 14, metadata !64, null}
!476 = metadata !{i32 12, i32 1, metadata !477, null}
!477 = metadata !{i32 786443, metadata !64, i32 11, i32 28, metadata !65, i32 0} ; [ DW_TAG_lexical_block ]
!478 = metadata !{i32 13, i32 1, metadata !477, null}
!479 = metadata !{i32 14, i32 1, metadata !477, null}
!480 = metadata !{i32 15, i32 1, metadata !477, null}
!481 = metadata !{i32 16, i32 1, metadata !477, null}
!482 = metadata !{i32 17, i32 1, metadata !477, null}
!483 = metadata !{i32 18, i32 1, metadata !477, null}
!484 = metadata !{i32 21, i32 1, metadata !477, null}
!485 = metadata !{i32 22, i32 1, metadata !477, null}
!486 = metadata !{i32 26, i32 48, metadata !477, null}
!487 = metadata !{i32 790529, metadata !488, metadata !"stored_pin.V", null, i32 26, metadata !456, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!488 = metadata !{i32 786688, metadata !477, metadata !"stored_pin", metadata !65, i32 26, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!489 = metadata !{i32 790529, metadata !490, metadata !"encryption_key.V", null, i32 27, metadata !456, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!490 = metadata !{i32 786688, metadata !477, metadata !"encryption_key", metadata !65, i32 27, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!491 = metadata !{i32 27, i32 52, metadata !477, null}
!492 = metadata !{i32 29, i32 2, metadata !477, null}
!493 = metadata !{i32 2922, i32 9, metadata !494, metadata !496}
!494 = metadata !{i32 786443, metadata !495, i32 2921, i32 107, metadata !75, i32 4} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 786478, i32 0, null, metadata !"operator==<128, false>", metadata !"operator==<128, false>", metadata !"_ZNK11ap_int_baseILi128ELb0ELb0EEeqILi128ELb0EEEbRKS_IXT_EXT0_EXleT_Li64EEE", metadata !75, i32 2921, metadata !313, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !107, metadata !312, metadata !87, i32 2921} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 29, i32 23, metadata !477, null}
!497 = metadata !{i32 790531, metadata !498, metadata !"ssdm_int<128 + 1024 * 0, false>.V", null, i32 276, metadata !470, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!498 = metadata !{i32 786689, metadata !499, metadata !"this", metadata !71, i32 16777492, metadata !69, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!499 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi128EEaSERKS0_", metadata !71, i32 276, metadata !441, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !440, metadata !87, i32 276} ; [ DW_TAG_subprogram ]
!500 = metadata !{i32 276, i32 53, metadata !499, metadata !501}
!501 = metadata !{i32 30, i32 3, metadata !502, null}
!502 = metadata !{i32 786443, metadata !477, i32 29, i32 49, metadata !65, i32 1} ; [ DW_TAG_lexical_block ]
!503 = metadata !{i32 277, i32 10, metadata !504, metadata !501}
!504 = metadata !{i32 786443, metadata !499, i32 276, i32 92, metadata !71, i32 3} ; [ DW_TAG_lexical_block ]
!505 = metadata !{i32 31, i32 3, metadata !502, null}
!506 = metadata !{i32 32, i32 3, metadata !502, null}
!507 = metadata !{i32 33, i32 3, metadata !502, null}
!508 = metadata !{i32 35, i32 3, metadata !509, null}
!509 = metadata !{i32 786443, metadata !477, i32 34, i32 8, metadata !65, i32 2} ; [ DW_TAG_lexical_block ]
!510 = metadata !{i32 36, i32 3, metadata !509, null}
!511 = metadata !{i32 276, i32 53, metadata !499, metadata !512}
!512 = metadata !{i32 37, i32 3, metadata !509, null}
!513 = metadata !{i32 277, i32 10, metadata !504, metadata !512}
!514 = metadata !{i32 38, i32 3, metadata !509, null}
!515 = metadata !{i32 41, i32 1, metadata !477, null}
