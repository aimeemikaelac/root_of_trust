; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/curve25519/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memset_t_str = internal unnamed_addr constant [9 x i8] c"memset_t\00" ; [#uses=1 type=[9 x i8]*]
@memset_nqz2_str = internal unnamed_addr constant [12 x i8] c"memset_nqz2\00" ; [#uses=1 type=[12 x i8]*]
@memset_nqz_str = internal unnamed_addr constant [11 x i8] c"memset_nqz\00" ; [#uses=1 type=[11 x i8]*]
@memset_nqx2_str = internal unnamed_addr constant [12 x i8] c"memset_nqx2\00" ; [#uses=1 type=[12 x i8]*]
@memset_nqx_str = internal unnamed_addr constant [11 x i8] c"memset_nqx\00" ; [#uses=1 type=[11 x i8]*]
@memset_nqpqz2_str = internal unnamed_addr constant [14 x i8] c"memset_nqpqz2\00" ; [#uses=1 type=[14 x i8]*]
@memset_nqpqz_str = internal unnamed_addr constant [13 x i8] c"memset_nqpqz\00" ; [#uses=1 type=[13 x i8]*]
@memset_nqpqx2_str = internal unnamed_addr constant [14 x i8] c"memset_nqpqx2\00" ; [#uses=1 type=[14 x i8]*]
@memset_nqpqx_str = internal unnamed_addr constant [13 x i8] c"memset_nqpqx\00" ; [#uses=1 type=[13 x i8]*]
@memset_e_str = internal unnamed_addr constant [9 x i8] c"memset_e\00" ; [#uses=1 type=[9 x i8]*]
@curve25519_donna_str = internal unnamed_addr constant [17 x i8] c"curve25519_donna\00" ; [#uses=1 type=[17 x i8]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=13 type=[7 x i8]*]
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str8 = private unnamed_addr constant [4 x i8] c"add\00", align 1 ; [#uses=13 type=[4 x i8]*]
@p_str7 = private unnamed_addr constant [4 x i8] c"mul\00", align 1 ; [#uses=13 type=[4 x i8]*]
@p_str6 = private unnamed_addr constant [9 x i8] c"fproduct\00", align 1 ; [#uses=1 type=[9 x i8]*]
@p_str5 = private unnamed_addr constant [7 x i8] c"crecip\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str4 = private unnamed_addr constant [14 x i8] c"fsquare_inner\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str3 = private unnamed_addr constant [8 x i8] c"fsquare\00", align 1 ; [#uses=1 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"cmult\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=14 type=[1 x i8]*]
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=49 type=[1 x i8]*]
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=135 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]

; [#uses=4]
define internal fastcc void @swap_conditional([19 x i64]* nocapture %a, [19 x i64]* nocapture %b, i1 %iswap) {
  %iswap_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %iswap) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %iswap_read}, i64 0, metadata !73), !dbg !84 ; [debug line = 775:47] [debug variable = iswap]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %a}, i64 0, metadata !85), !dbg !89 ; [debug line = 775:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %b}, i64 0, metadata !90), !dbg !91 ; [debug line = 775:35] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i1 %iswap}, i64 0, metadata !73), !dbg !84 ; [debug line = 775:47] [debug variable = iswap]
  %swap_cast = select i1 %iswap_read, i32 -1, i32 0, !dbg !92 ; [#uses=1 type=i32] [debug line = 777:32]
  call void @llvm.dbg.value(metadata !{i1 %iswap}, i64 0, metadata !94), !dbg !92 ; [debug line = 777:32] [debug variable = swap]
  br label %1, !dbg !99                           ; [debug line = 779:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i4]
  %tmp_1 = icmp eq i4 %i, -6, !dbg !99            ; [#uses=1 type=i1] [debug line = 779:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_1 = add i4 %i, 1, !dbg !101                  ; [#uses=1 type=i4] [debug line = 779:23]
  br i1 %tmp_1, label %3, label %2, !dbg !99      ; [debug line = 779:8]

; <label>:2                                       ; preds = %1
  %tmp_2 = zext i4 %i to i64, !dbg !102           ; [#uses=2 type=i64] [debug line = 780:55]
  %a_addr = getelementptr [19 x i64]* %a, i64 0, i64 %tmp_2, !dbg !102 ; [#uses=2 type=i64*] [debug line = 780:55]
  %a_load = load i64* %a_addr, align 8, !dbg !102 ; [#uses=1 type=i64] [debug line = 780:55]
  %tmp = trunc i64 %a_load to i32, !dbg !102      ; [#uses=2 type=i32] [debug line = 780:55]
  %b_addr = getelementptr [19 x i64]* %b, i64 0, i64 %tmp_2, !dbg !102 ; [#uses=2 type=i64*] [debug line = 780:55]
  %b_load = load i64* %b_addr, align 8, !dbg !102 ; [#uses=1 type=i64] [debug line = 780:55]
  %tmp_3 = trunc i64 %b_load to i32, !dbg !102    ; [#uses=2 type=i32] [debug line = 780:55]
  %tmp_5 = xor i32 %tmp_3, %tmp, !dbg !102        ; [#uses=1 type=i32] [debug line = 780:55]
  %x = and i32 %tmp_5, %swap_cast, !dbg !102      ; [#uses=2 type=i32] [debug line = 780:55]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !104), !dbg !102 ; [debug line = 780:55] [debug variable = x]
  %tmp_6 = xor i32 %x, %tmp, !dbg !105            ; [#uses=1 type=i32] [debug line = 781:5]
  %tmp_7 = sext i32 %tmp_6 to i64, !dbg !105      ; [#uses=1 type=i64] [debug line = 781:5]
  store i64 %tmp_7, i64* %a_addr, align 8, !dbg !105 ; [debug line = 781:5]
  %tmp_9 = xor i32 %tmp_3, %x, !dbg !106          ; [#uses=1 type=i32] [debug line = 782:5]
  %tmp_s = sext i32 %tmp_9 to i64, !dbg !106      ; [#uses=1 type=i64] [debug line = 782:5]
  store i64 %tmp_s, i64* %b_addr, align 8, !dbg !106 ; [debug line = 782:5]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !107), !dbg !101 ; [debug line = 779:23] [debug variable = i]
  br label %1, !dbg !101                          ; [debug line = 779:23]

; <label>:3                                       ; preds = %1
  ret void, !dbg !109                             ; [debug line = 784:1]
}

; [#uses=6]
declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

; [#uses=2]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=5]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=189]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=42]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
define internal fastcc void @fsum([19 x i64]* nocapture %output, [19 x i64]* nocapture %in) {
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !110), !dbg !116 ; [debug line = 89:24] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %in}, i64 0, metadata !117), !dbg !119 ; [debug line = 89:44] [debug variable = in]
  br label %1, !dbg !120                          ; [debug line = 91:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_2, %2 ]             ; [#uses=4 type=i4]
  %tmp = icmp ult i4 %i, -6, !dbg !120            ; [#uses=1 type=i1] [debug line = 91:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp, label %2, label %3, !dbg !120       ; [debug line = 91:8]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i4 %i to i64, !dbg !123           ; [#uses=2 type=i64] [debug line = 92:5]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 %tmp_s, !dbg !123 ; [#uses=2 type=i64*] [debug line = 92:5]
  %output_load = load i64* %output_addr, align 8, !dbg !123 ; [#uses=1 type=i64] [debug line = 92:5]
  %in_addr = getelementptr [19 x i64]* %in, i64 0, i64 %tmp_s, !dbg !123 ; [#uses=1 type=i64*] [debug line = 92:5]
  %in_load = load i64* %in_addr, align 8, !dbg !123 ; [#uses=1 type=i64] [debug line = 92:5]
  %tmp_6 = add nsw i64 %in_load, %output_load, !dbg !123 ; [#uses=1 type=i64] [debug line = 92:5]
  store i64 %tmp_6, i64* %output_addr, align 8, !dbg !123 ; [debug line = 92:5]
  %tmp_7 = or i4 %i, 1, !dbg !125                 ; [#uses=1 type=i4] [debug line = 93:5]
  %tmp_8 = zext i4 %tmp_7 to i64, !dbg !125       ; [#uses=2 type=i64] [debug line = 93:5]
  %output_addr_1 = getelementptr [19 x i64]* %output, i64 0, i64 %tmp_8, !dbg !125 ; [#uses=2 type=i64*] [debug line = 93:5]
  %output_load_1 = load i64* %output_addr_1, align 8, !dbg !125 ; [#uses=1 type=i64] [debug line = 93:5]
  %in_addr_1 = getelementptr [19 x i64]* %in, i64 0, i64 %tmp_8, !dbg !125 ; [#uses=1 type=i64*] [debug line = 93:5]
  %in_load_1 = load i64* %in_addr_1, align 8, !dbg !125 ; [#uses=1 type=i64] [debug line = 93:5]
  %tmp_9 = add nsw i64 %in_load_1, %output_load_1, !dbg !125 ; [#uses=1 type=i64] [debug line = 93:5]
  store i64 %tmp_9, i64* %output_addr_1, align 8, !dbg !125 ; [debug line = 93:5]
  %i_2 = add i4 %i, 2, !dbg !126                  ; [#uses=1 type=i4] [debug line = 91:23]
  call void @llvm.dbg.value(metadata !{i4 %i_2}, i64 0, metadata !127), !dbg !126 ; [debug line = 91:23] [debug variable = i]
  br label %1, !dbg !126                          ; [debug line = 91:23]

; <label>:3                                       ; preds = %1
  ret void, !dbg !128                             ; [debug line = 95:1]
}

; [#uses=1]
define internal fastcc void @fsquare_inner.2([19 x i64]* nocapture %output, [19 x i64]* nocapture %in) {
  %in_addr = getelementptr [19 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !129 ; [debug line = 369:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !132 ; [debug line = 370:1]
  %in_load = load i64* %in_addr, align 8, !dbg !133 ; [#uses=1 type=i64] [debug line = 371:53]
  %tmp = trunc i64 %in_load to i32, !dbg !133     ; [#uses=2 type=i32] [debug line = 371:53]
  %tmp_s = sext i32 %tmp to i64, !dbg !133        ; [#uses=9 type=i64] [debug line = 371:53]
  %out_1 = mul nsw i64 %tmp_s, %tmp_s, !dbg !133  ; [#uses=1 type=i64] [debug line = 371:53]
  call void @llvm.dbg.value(metadata !{i64 %out_1}, i64 0, metadata !134), !dbg !133 ; [debug line = 371:53] [debug variable = out_1]
  store i64 %out_1, i64* %output_addr, align 8, !dbg !135 ; [debug line = 374:3]
  %in_addr_2 = getelementptr [19 x i64]* %in, i64 0, i64 1, !dbg !136 ; [#uses=1 type=i64*] [debug line = 378:3]
  %in_load_2 = load i64* %in_addr_2, align 8, !dbg !136 ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp_7 = trunc i64 %in_load_2 to i32, !dbg !136 ; [#uses=3 type=i32] [debug line = 378:3]
  %tmp_2 = sext i32 %tmp_7 to i64, !dbg !136      ; [#uses=8 type=i64] [debug line = 378:3]
  %tmp_8 = sext i32 %tmp to i63, !dbg !136        ; [#uses=2 type=i63] [debug line = 378:3]
  %tmp_9 = sext i32 %tmp_7 to i63, !dbg !136      ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp_3 = mul i63 %tmp_9, %tmp_8, !dbg !136      ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp_5 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_3, i1 false), !dbg !136 ; [#uses=1 type=i64] [debug line = 378:3]
  %output_addr_2 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !136 ; [#uses=1 type=i64*] [debug line = 378:3]
  store i64 %tmp_5, i64* %output_addr_2, align 8, !dbg !136 ; [debug line = 378:3]
  %tmp_6 = mul nsw i64 %tmp_2, %tmp_2, !dbg !137  ; [#uses=1 type=i64] [debug line = 383:3]
  %in_addr_3 = getelementptr [19 x i64]* %in, i64 0, i64 2, !dbg !137 ; [#uses=1 type=i64*] [debug line = 383:3]
  %in_load_3 = load i64* %in_addr_3, align 8, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp_12 = trunc i64 %in_load_3 to i32, !dbg !137 ; [#uses=1 type=i32] [debug line = 383:3]
  %tmp_4 = sext i32 %tmp_12 to i64, !dbg !137     ; [#uses=11 type=i64] [debug line = 383:3]
  %tmp_1 = mul nsw i64 %tmp_4, %tmp_s, !dbg !137  ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp_10 = add nsw i64 %tmp_1, %tmp_6, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp_13 = shl i64 %tmp_10, 1, !dbg !137         ; [#uses=1 type=i64] [debug line = 383:3]
  %output_addr_3 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !137 ; [#uses=1 type=i64*] [debug line = 383:3]
  store i64 %tmp_13, i64* %output_addr_3, align 8, !dbg !137 ; [debug line = 383:3]
  %tmp_11 = mul nsw i64 %tmp_4, %tmp_2, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %in_addr_4 = getelementptr [19 x i64]* %in, i64 0, i64 3, !dbg !138 ; [#uses=1 type=i64*] [debug line = 386:3]
  %in_load_4 = load i64* %in_addr_4, align 8, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp_14 = trunc i64 %in_load_4 to i32, !dbg !138 ; [#uses=2 type=i32] [debug line = 386:3]
  %tmp_15 = sext i32 %tmp_14 to i64, !dbg !138    ; [#uses=10 type=i64] [debug line = 386:3]
  %tmp_16 = mul nsw i64 %tmp_15, %tmp_s, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp_17 = add nsw i64 %tmp_16, %tmp_11, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp_18 = shl i64 %tmp_17, 1, !dbg !138         ; [#uses=1 type=i64] [debug line = 386:3]
  %output_addr_4 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !138 ; [#uses=1 type=i64*] [debug line = 386:3]
  store i64 %tmp_18, i64* %output_addr_4, align 8, !dbg !138 ; [debug line = 386:3]
  %tmp_19 = mul nsw i64 %tmp_4, %tmp_4, !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp_20 = sext i32 %tmp_7 to i62, !dbg !139     ; [#uses=2 type=i62] [debug line = 389:3]
  %tmp_21 = sext i32 %tmp_14 to i62, !dbg !139    ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp_22 = mul i62 %tmp_21, %tmp_20, !dbg !139   ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp_23 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_22, i2 0), !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %in_addr_5 = getelementptr [19 x i64]* %in, i64 0, i64 4, !dbg !139 ; [#uses=1 type=i64*] [debug line = 389:3]
  %in_load_5 = load i64* %in_addr_5, align 8, !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp_24 = trunc i64 %in_load_5 to i32, !dbg !139 ; [#uses=2 type=i32] [debug line = 389:3]
  %tmp_25 = sext i32 %tmp_24 to i64, !dbg !139    ; [#uses=10 type=i64] [debug line = 389:3]
  %tmp_26 = sext i32 %tmp_24 to i63, !dbg !139    ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp_27 = mul i63 %tmp_26, %tmp_8, !dbg !139    ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp_28 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_27, i1 false), !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp1 = add i64 %tmp_28, %tmp_23, !dbg !139     ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp_29 = add i64 %tmp_19, %tmp1, !dbg !139     ; [#uses=1 type=i64] [debug line = 389:3]
  %output_addr_5 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !139 ; [#uses=1 type=i64*] [debug line = 389:3]
  store i64 %tmp_29, i64* %output_addr_5, align 8, !dbg !139 ; [debug line = 389:3]
  %tmp_30 = mul nsw i64 %tmp_15, %tmp_4, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_31 = mul nsw i64 %tmp_25, %tmp_2, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %in_addr_6 = getelementptr [19 x i64]* %in, i64 0, i64 5, !dbg !140 ; [#uses=1 type=i64*] [debug line = 393:3]
  %in_load_6 = load i64* %in_addr_6, align 8, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_32 = trunc i64 %in_load_6 to i32, !dbg !140 ; [#uses=2 type=i32] [debug line = 393:3]
  %tmp_33 = sext i32 %tmp_32 to i64, !dbg !140    ; [#uses=9 type=i64] [debug line = 393:3]
  %tmp_34 = mul nsw i64 %tmp_33, %tmp_s, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp2 = add i64 %tmp_34, %tmp_31, !dbg !140     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_35 = add i64 %tmp_30, %tmp2, !dbg !140     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_36 = shl i64 %tmp_35, 1, !dbg !140         ; [#uses=1 type=i64] [debug line = 393:3]
  %output_addr_6 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !140 ; [#uses=1 type=i64*] [debug line = 393:3]
  store i64 %tmp_36, i64* %output_addr_6, align 8, !dbg !140 ; [debug line = 393:3]
  %tmp_37 = mul nsw i64 %tmp_15, %tmp_15, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_38 = mul nsw i64 %tmp_25, %tmp_4, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %in_addr_7 = getelementptr [19 x i64]* %in, i64 0, i64 6, !dbg !141 ; [#uses=1 type=i64*] [debug line = 397:3]
  %in_load_7 = load i64* %in_addr_7, align 8, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_39 = trunc i64 %in_load_7 to i32, !dbg !141 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp_40 = sext i32 %tmp_39 to i64, !dbg !141    ; [#uses=11 type=i64] [debug line = 397:3]
  %tmp_41 = mul nsw i64 %tmp_40, %tmp_s, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_42 = sext i32 %tmp_32 to i62, !dbg !141    ; [#uses=2 type=i62] [debug line = 397:3]
  %tmp_43 = mul i62 %tmp_42, %tmp_20, !dbg !141   ; [#uses=1 type=i62] [debug line = 397:3]
  %tmp_44 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_43, i1 false) ; [#uses=1 type=i63]
  %tmp3 = add i64 %tmp_41, %tmp_38, !dbg !141     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_45 = add i64 %tmp_37, %tmp3, !dbg !141     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_46 = trunc i64 %tmp_45 to i63              ; [#uses=1 type=i63]
  %tmp_47 = add i63 %tmp_44, %tmp_46, !dbg !141   ; [#uses=1 type=i63] [debug line = 397:3]
  %tmp_48 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_47, i1 false), !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %output_addr_7 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !141 ; [#uses=1 type=i64*] [debug line = 397:3]
  store i64 %tmp_48, i64* %output_addr_7, align 8, !dbg !141 ; [debug line = 397:3]
  %tmp_49 = mul nsw i64 %tmp_25, %tmp_15, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_50 = mul nsw i64 %tmp_33, %tmp_4, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_51 = mul nsw i64 %tmp_40, %tmp_2, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %in_addr_8 = getelementptr [19 x i64]* %in, i64 0, i64 7, !dbg !142 ; [#uses=1 type=i64*] [debug line = 402:3]
  %in_load_8 = load i64* %in_addr_8, align 8, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_52 = trunc i64 %in_load_8 to i32, !dbg !142 ; [#uses=2 type=i32] [debug line = 402:3]
  %tmp_53 = sext i32 %tmp_52 to i64, !dbg !142    ; [#uses=10 type=i64] [debug line = 402:3]
  %tmp_54 = mul nsw i64 %tmp_53, %tmp_s, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp4 = add i64 %tmp_50, %tmp_49, !dbg !142     ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp5 = add i64 %tmp_54, %tmp_51, !dbg !142     ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_55 = trunc i64 %tmp5 to i63                ; [#uses=1 type=i63]
  %tmp_56 = trunc i64 %tmp4 to i63                ; [#uses=1 type=i63]
  %tmp_57 = add i63 %tmp_55, %tmp_56, !dbg !142   ; [#uses=1 type=i63] [debug line = 402:3]
  %tmp_58 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_57, i1 false), !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %output_addr_8 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !142 ; [#uses=1 type=i64*] [debug line = 402:3]
  store i64 %tmp_58, i64* %output_addr_8, align 8, !dbg !142 ; [debug line = 402:3]
  %tmp_59 = mul nsw i64 %tmp_25, %tmp_25, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_60 = mul nsw i64 %tmp_40, %tmp_4, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %in_addr_9 = getelementptr [19 x i64]* %in, i64 0, i64 8, !dbg !143 ; [#uses=1 type=i64*] [debug line = 407:3]
  %in_load_9 = load i64* %in_addr_9, align 8, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_61 = trunc i64 %in_load_9 to i32, !dbg !143 ; [#uses=2 type=i32] [debug line = 407:3]
  %tmp_62 = sext i32 %tmp_61 to i64, !dbg !143    ; [#uses=10 type=i64] [debug line = 407:3]
  %tmp_63 = mul nsw i64 %tmp_62, %tmp_s, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_64 = mul nsw i64 %tmp_53, %tmp_2, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_65 = mul nsw i64 %tmp_33, %tmp_15, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_66 = add nsw i64 %tmp_65, %tmp_64, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_67 = trunc i64 %tmp_66 to i62              ; [#uses=1 type=i62]
  %tmp_68 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_67, i1 false) ; [#uses=1 type=i63]
  %tmp_69 = add i64 %tmp_63, %tmp_60, !dbg !143   ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_70 = trunc i64 %tmp_69 to i63              ; [#uses=1 type=i63]
  %tmp_71 = add i63 %tmp_68, %tmp_70, !dbg !143   ; [#uses=1 type=i63] [debug line = 407:3]
  %tmp_72 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_71, i1 false), !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_73 = add nsw i64 %tmp_72, %tmp_59, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %output_addr_9 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !143 ; [#uses=1 type=i64*] [debug line = 407:3]
  store i64 %tmp_73, i64* %output_addr_9, align 8, !dbg !143 ; [debug line = 407:3]
  %tmp_74 = mul nsw i64 %tmp_33, %tmp_25, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_75 = mul nsw i64 %tmp_40, %tmp_15, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_76 = mul nsw i64 %tmp_53, %tmp_4, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_77 = mul nsw i64 %tmp_62, %tmp_2, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %in_addr_10 = getelementptr [19 x i64]* %in, i64 0, i64 9, !dbg !144 ; [#uses=1 type=i64*] [debug line = 413:3]
  %in_load_10 = load i64* %in_addr_10, align 8, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_78 = trunc i64 %in_load_10 to i32, !dbg !144 ; [#uses=3 type=i32] [debug line = 413:3]
  %tmp_79 = sext i32 %tmp_78 to i64, !dbg !144    ; [#uses=6 type=i64] [debug line = 413:3]
  %tmp_80 = mul nsw i64 %tmp_79, %tmp_s, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp6 = add i64 %tmp_75, %tmp_74, !dbg !144     ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp8 = add i64 %tmp_80, %tmp_77, !dbg !144     ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp7 = add i64 %tmp_76, %tmp8, !dbg !144       ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_81 = trunc i64 %tmp7 to i63                ; [#uses=1 type=i63]
  %tmp_82 = trunc i64 %tmp6 to i63                ; [#uses=1 type=i63]
  %tmp_83 = add i63 %tmp_81, %tmp_82, !dbg !144   ; [#uses=1 type=i63] [debug line = 413:3]
  %tmp_84 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_83, i1 false), !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %output_addr_10 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !144 ; [#uses=1 type=i64*] [debug line = 413:3]
  store i64 %tmp_84, i64* %output_addr_10, align 8, !dbg !144 ; [debug line = 413:3]
  %tmp_85 = mul nsw i64 %tmp_33, %tmp_33, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_86 = mul nsw i64 %tmp_40, %tmp_25, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_87 = mul nsw i64 %tmp_62, %tmp_4, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_88 = mul nsw i64 %tmp_53, %tmp_15, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_89 = mul nsw i64 %tmp_79, %tmp_2, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_90 = add nsw i64 %tmp_89, %tmp_88, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_91 = trunc i64 %tmp_90 to i62              ; [#uses=1 type=i62]
  %tmp_92 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_91, i1 false) ; [#uses=1 type=i63]
  %tmp9 = add i64 %tmp_87, %tmp_86, !dbg !145     ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_93 = add i64 %tmp_85, %tmp9, !dbg !145     ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_94 = trunc i64 %tmp_93 to i63              ; [#uses=1 type=i63]
  %tmp_95 = add i63 %tmp_92, %tmp_94, !dbg !145   ; [#uses=1 type=i63] [debug line = 419:3]
  %tmp_96 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_95, i1 false), !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %output_addr_11 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !145 ; [#uses=1 type=i64*] [debug line = 419:3]
  store i64 %tmp_96, i64* %output_addr_11, align 8, !dbg !145 ; [debug line = 419:3]
  %tmp_97 = mul nsw i64 %tmp_40, %tmp_33, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_98 = mul nsw i64 %tmp_53, %tmp_25, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_99 = mul nsw i64 %tmp_62, %tmp_15, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_100 = mul nsw i64 %tmp_79, %tmp_4, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp10 = add i64 %tmp_98, %tmp_97, !dbg !146    ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp11 = add i64 %tmp_100, %tmp_99, !dbg !146   ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_101 = trunc i64 %tmp11 to i63              ; [#uses=1 type=i63]
  %tmp_102 = trunc i64 %tmp10 to i63              ; [#uses=1 type=i63]
  %tmp_103 = add i63 %tmp_101, %tmp_102, !dbg !146 ; [#uses=1 type=i63] [debug line = 425:3]
  %tmp_104 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_103, i1 false), !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %output_addr_12 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !146 ; [#uses=1 type=i64*] [debug line = 425:3]
  store i64 %tmp_104, i64* %output_addr_12, align 8, !dbg !146 ; [debug line = 425:3]
  %tmp_105 = mul nsw i64 %tmp_40, %tmp_40, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_106 = mul nsw i64 %tmp_62, %tmp_25, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_107 = mul nsw i64 %tmp_53, %tmp_33, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_108 = mul nsw i64 %tmp_79, %tmp_15, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_109 = add nsw i64 %tmp_108, %tmp_107, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_110 = shl i64 %tmp_109, 1, !dbg !147       ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_111 = add nsw i64 %tmp_110, %tmp_106, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_112 = shl i64 %tmp_111, 1, !dbg !147       ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_113 = add nsw i64 %tmp_112, %tmp_105, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %output_addr_13 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !147 ; [#uses=1 type=i64*] [debug line = 430:3]
  store i64 %tmp_113, i64* %output_addr_13, align 8, !dbg !147 ; [debug line = 430:3]
  %tmp_114 = mul nsw i64 %tmp_53, %tmp_40, !dbg !148 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_115 = mul nsw i64 %tmp_62, %tmp_33, !dbg !148 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_116 = mul nsw i64 %tmp_79, %tmp_25, !dbg !148 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp12 = add i64 %tmp_116, %tmp_115, !dbg !148  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_117 = add i64 %tmp_114, %tmp12, !dbg !148  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_118 = shl i64 %tmp_117, 1, !dbg !148       ; [#uses=1 type=i64] [debug line = 435:3]
  %output_addr_14 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !148 ; [#uses=1 type=i64*] [debug line = 435:3]
  store i64 %tmp_118, i64* %output_addr_14, align 8, !dbg !148 ; [debug line = 435:3]
  %tmp_119 = mul nsw i64 %tmp_53, %tmp_53, !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp_120 = mul nsw i64 %tmp_62, %tmp_40, !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp_121 = sext i32 %tmp_78 to i63, !dbg !149   ; [#uses=3 type=i63] [debug line = 439:3]
  %tmp_122 = sext i32 %tmp_78 to i62, !dbg !149   ; [#uses=2 type=i62] [debug line = 439:3]
  %tmp_123 = mul i62 %tmp_122, %tmp_42, !dbg !149 ; [#uses=1 type=i62] [debug line = 439:3]
  %tmp_124 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_123, i1 false) ; [#uses=1 type=i63]
  %tmp_125 = add i64 %tmp_120, %tmp_119, !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp_126 = trunc i64 %tmp_125 to i63            ; [#uses=1 type=i63]
  %tmp_127 = add i63 %tmp_124, %tmp_126, !dbg !149 ; [#uses=1 type=i63] [debug line = 439:3]
  %tmp_128 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_127, i1 false), !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %output_addr_15 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !149 ; [#uses=1 type=i64*] [debug line = 439:3]
  store i64 %tmp_128, i64* %output_addr_15, align 8, !dbg !149 ; [debug line = 439:3]
  %tmp_129 = mul nsw i64 %tmp_62, %tmp_53, !dbg !150 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp_130 = mul nsw i64 %tmp_79, %tmp_40, !dbg !150 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp_131 = add nsw i64 %tmp_130, %tmp_129, !dbg !150 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp_132 = shl i64 %tmp_131, 1, !dbg !150       ; [#uses=1 type=i64] [debug line = 443:3]
  %output_addr_16 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !150 ; [#uses=1 type=i64*] [debug line = 443:3]
  store i64 %tmp_132, i64* %output_addr_16, align 8, !dbg !150 ; [debug line = 443:3]
  %tmp_133 = mul nsw i64 %tmp_62, %tmp_62, !dbg !151 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp_134 = sext i32 %tmp_52 to i62, !dbg !151   ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp_135 = mul i62 %tmp_122, %tmp_134, !dbg !151 ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp_136 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_135, i2 0), !dbg !151 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp_137 = add nsw i64 %tmp_136, %tmp_133, !dbg !151 ; [#uses=1 type=i64] [debug line = 446:3]
  %output_addr_17 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !151 ; [#uses=1 type=i64*] [debug line = 446:3]
  store i64 %tmp_137, i64* %output_addr_17, align 8, !dbg !151 ; [debug line = 446:3]
  %tmp_138 = sext i32 %tmp_61 to i63, !dbg !152   ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp_139 = mul i63 %tmp_121, %tmp_138, !dbg !152 ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp_140 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_139, i1 false), !dbg !152 ; [#uses=1 type=i64] [debug line = 449:3]
  %output_addr_18 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !152 ; [#uses=1 type=i64*] [debug line = 449:3]
  store i64 %tmp_140, i64* %output_addr_18, align 8, !dbg !152 ; [debug line = 449:3]
  %tmp_141 = mul i63 %tmp_121, %tmp_121, !dbg !153 ; [#uses=1 type=i63] [debug line = 451:3]
  %tmp_142 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_141, i1 false), !dbg !153 ; [#uses=1 type=i64] [debug line = 451:3]
  %output_addr_19 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !153 ; [#uses=1 type=i64*] [debug line = 451:3]
  store i64 %tmp_142, i64* %output_addr_19, align 8, !dbg !153 ; [debug line = 451:3]
  ret void, !dbg !154                             ; [debug line = 452:1]
}

; [#uses=1]
define internal fastcc void @fsquare_inner.1([19 x i64]* nocapture %output, [10 x i64]* nocapture %in) {
  %in_addr = getelementptr [10 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !129 ; [debug line = 369:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !132 ; [debug line = 370:1]
  %in_load = load i64* %in_addr, align 8, !dbg !133 ; [#uses=1 type=i64] [debug line = 371:53]
  %tmp = trunc i64 %in_load to i32, !dbg !133     ; [#uses=2 type=i32] [debug line = 371:53]
  %tmp_s = sext i32 %tmp to i64, !dbg !133        ; [#uses=9 type=i64] [debug line = 371:53]
  %out_1 = mul nsw i64 %tmp_s, %tmp_s, !dbg !133  ; [#uses=1 type=i64] [debug line = 371:53]
  call void @llvm.dbg.value(metadata !{i64 %out_1}, i64 0, metadata !134), !dbg !133 ; [debug line = 371:53] [debug variable = out_1]
  store i64 %out_1, i64* %output_addr, align 8, !dbg !135 ; [debug line = 374:3]
  %in_addr_11 = getelementptr [10 x i64]* %in, i64 0, i64 1, !dbg !136 ; [#uses=1 type=i64*] [debug line = 378:3]
  %in_load_3 = load i64* %in_addr_11, align 8, !dbg !136 ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp_133 = trunc i64 %in_load_3 to i32, !dbg !136 ; [#uses=3 type=i32] [debug line = 378:3]
  %tmp_13 = sext i32 %tmp_133 to i64, !dbg !136   ; [#uses=8 type=i64] [debug line = 378:3]
  %tmp_146 = sext i32 %tmp to i63, !dbg !136      ; [#uses=2 type=i63] [debug line = 378:3]
  %tmp_149 = sext i32 %tmp_133 to i63, !dbg !136  ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp_150 = mul i63 %tmp_149, %tmp_146, !dbg !136 ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp_15 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_150, i1 false), !dbg !136 ; [#uses=1 type=i64] [debug line = 378:3]
  %output_addr_20 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !136 ; [#uses=1 type=i64*] [debug line = 378:3]
  store i64 %tmp_15, i64* %output_addr_20, align 8, !dbg !136 ; [debug line = 378:3]
  %tmp_18 = mul nsw i64 %tmp_13, %tmp_13, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %in_addr_12 = getelementptr [10 x i64]* %in, i64 0, i64 2, !dbg !137 ; [#uses=1 type=i64*] [debug line = 383:3]
  %in_load_6 = load i64* %in_addr_12, align 8, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp_134 = trunc i64 %in_load_6 to i32, !dbg !137 ; [#uses=1 type=i32] [debug line = 383:3]
  %tmp_22 = sext i32 %tmp_134 to i64, !dbg !137   ; [#uses=11 type=i64] [debug line = 383:3]
  %tmp_23 = mul nsw i64 %tmp_22, %tmp_s, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp_24 = add nsw i64 %tmp_23, %tmp_18, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp_135 = shl i64 %tmp_24, 1, !dbg !137        ; [#uses=1 type=i64] [debug line = 383:3]
  %output_addr_21 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !137 ; [#uses=1 type=i64*] [debug line = 383:3]
  store i64 %tmp_135, i64* %output_addr_21, align 8, !dbg !137 ; [debug line = 383:3]
  %tmp_30 = mul nsw i64 %tmp_22, %tmp_13, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %in_addr_13 = getelementptr [10 x i64]* %in, i64 0, i64 3, !dbg !138 ; [#uses=1 type=i64*] [debug line = 386:3]
  %in_load_10 = load i64* %in_addr_13, align 8, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp_136 = trunc i64 %in_load_10 to i32, !dbg !138 ; [#uses=2 type=i32] [debug line = 386:3]
  %tmp_34 = sext i32 %tmp_136 to i64, !dbg !138   ; [#uses=10 type=i64] [debug line = 386:3]
  %tmp_35 = mul nsw i64 %tmp_34, %tmp_s, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp_36 = add nsw i64 %tmp_35, %tmp_30, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp_138 = shl i64 %tmp_36, 1, !dbg !138        ; [#uses=1 type=i64] [debug line = 386:3]
  %output_addr_22 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !138 ; [#uses=1 type=i64*] [debug line = 386:3]
  store i64 %tmp_138, i64* %output_addr_22, align 8, !dbg !138 ; [debug line = 386:3]
  %tmp_40 = mul nsw i64 %tmp_22, %tmp_22, !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp_151 = sext i32 %tmp_133 to i62, !dbg !139  ; [#uses=2 type=i62] [debug line = 389:3]
  %tmp_152 = sext i32 %tmp_136 to i62, !dbg !139  ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp_154 = mul i62 %tmp_152, %tmp_151, !dbg !139 ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp_46 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_154, i2 0), !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %in_addr_14 = getelementptr [10 x i64]* %in, i64 0, i64 4, !dbg !139 ; [#uses=1 type=i64*] [debug line = 389:3]
  %in_load_11 = load i64* %in_addr_14, align 8, !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp_139 = trunc i64 %in_load_11 to i32, !dbg !139 ; [#uses=2 type=i32] [debug line = 389:3]
  %tmp_50 = sext i32 %tmp_139 to i64, !dbg !139   ; [#uses=10 type=i64] [debug line = 389:3]
  %tmp_155 = sext i32 %tmp_139 to i63, !dbg !139  ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp_156 = mul i63 %tmp_155, %tmp_146, !dbg !139 ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp_52 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_156, i1 false), !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp1 = add i64 %tmp_52, %tmp_46, !dbg !139     ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp_54 = add i64 %tmp_40, %tmp1, !dbg !139     ; [#uses=1 type=i64] [debug line = 389:3]
  %output_addr_23 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !139 ; [#uses=1 type=i64*] [debug line = 389:3]
  store i64 %tmp_54, i64* %output_addr_23, align 8, !dbg !139 ; [debug line = 389:3]
  %tmp_59 = mul nsw i64 %tmp_34, %tmp_22, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_64 = mul nsw i64 %tmp_50, %tmp_13, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %in_addr_15 = getelementptr [10 x i64]* %in, i64 0, i64 5, !dbg !140 ; [#uses=1 type=i64*] [debug line = 393:3]
  %in_load_12 = load i64* %in_addr_15, align 8, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_140 = trunc i64 %in_load_12 to i32, !dbg !140 ; [#uses=2 type=i32] [debug line = 393:3]
  %tmp_68 = sext i32 %tmp_140 to i64, !dbg !140   ; [#uses=9 type=i64] [debug line = 393:3]
  %tmp_69 = mul nsw i64 %tmp_68, %tmp_s, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp2 = add i64 %tmp_69, %tmp_64, !dbg !140     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_71 = add i64 %tmp_59, %tmp2, !dbg !140     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_141 = shl i64 %tmp_71, 1, !dbg !140        ; [#uses=1 type=i64] [debug line = 393:3]
  %output_addr_24 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !140 ; [#uses=1 type=i64*] [debug line = 393:3]
  store i64 %tmp_141, i64* %output_addr_24, align 8, !dbg !140 ; [debug line = 393:3]
  %tmp_75 = mul nsw i64 %tmp_34, %tmp_34, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_80 = mul nsw i64 %tmp_50, %tmp_22, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %in_addr_16 = getelementptr [10 x i64]* %in, i64 0, i64 6, !dbg !141 ; [#uses=1 type=i64*] [debug line = 397:3]
  %in_load_13 = load i64* %in_addr_16, align 8, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_157 = trunc i64 %in_load_13 to i32, !dbg !141 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp_84 = sext i32 %tmp_157 to i64, !dbg !141   ; [#uses=11 type=i64] [debug line = 397:3]
  %tmp_85 = mul nsw i64 %tmp_84, %tmp_s, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_159 = sext i32 %tmp_140 to i62, !dbg !141  ; [#uses=2 type=i62] [debug line = 397:3]
  %tmp_160 = mul i62 %tmp_159, %tmp_151, !dbg !141 ; [#uses=1 type=i62] [debug line = 397:3]
  %tmp_91 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_160, i1 false) ; [#uses=1 type=i63]
  %tmp3 = add i64 %tmp_85, %tmp_80, !dbg !141     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_93 = add i64 %tmp_75, %tmp3, !dbg !141     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_161 = trunc i64 %tmp_93 to i63             ; [#uses=1 type=i63]
  %tmp_162 = add i63 %tmp_91, %tmp_161, !dbg !141 ; [#uses=1 type=i63] [debug line = 397:3]
  %tmp_95 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_162, i1 false), !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %output_addr_25 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !141 ; [#uses=1 type=i64*] [debug line = 397:3]
  store i64 %tmp_95, i64* %output_addr_25, align 8, !dbg !141 ; [debug line = 397:3]
  %tmp_100 = mul nsw i64 %tmp_50, %tmp_34, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_105 = mul nsw i64 %tmp_68, %tmp_22, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_110 = mul nsw i64 %tmp_84, %tmp_13, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %in_addr_17 = getelementptr [10 x i64]* %in, i64 0, i64 7, !dbg !142 ; [#uses=1 type=i64*] [debug line = 402:3]
  %in_load_14 = load i64* %in_addr_17, align 8, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_164 = trunc i64 %in_load_14 to i32, !dbg !142 ; [#uses=2 type=i32] [debug line = 402:3]
  %tmp_114 = sext i32 %tmp_164 to i64, !dbg !142  ; [#uses=10 type=i64] [debug line = 402:3]
  %tmp_115 = mul nsw i64 %tmp_114, %tmp_s, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp4 = add i64 %tmp_105, %tmp_100, !dbg !142   ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp5 = add i64 %tmp_115, %tmp_110, !dbg !142   ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_166 = trunc i64 %tmp5 to i63               ; [#uses=1 type=i63]
  %tmp_169 = trunc i64 %tmp4 to i63               ; [#uses=1 type=i63]
  %tmp_165 = add i63 %tmp_166, %tmp_169, !dbg !142 ; [#uses=1 type=i63] [debug line = 402:3]
  %tmp_119 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_165, i1 false), !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %output_addr_26 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !142 ; [#uses=1 type=i64*] [debug line = 402:3]
  store i64 %tmp_119, i64* %output_addr_26, align 8, !dbg !142 ; [debug line = 402:3]
  %tmp_122 = mul nsw i64 %tmp_50, %tmp_50, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_127 = mul nsw i64 %tmp_84, %tmp_22, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %in_addr_18 = getelementptr [10 x i64]* %in, i64 0, i64 8, !dbg !143 ; [#uses=1 type=i64*] [debug line = 407:3]
  %in_load_15 = load i64* %in_addr_18, align 8, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_182 = trunc i64 %in_load_15 to i32, !dbg !143 ; [#uses=2 type=i32] [debug line = 407:3]
  %tmp_131 = sext i32 %tmp_182 to i64, !dbg !143  ; [#uses=10 type=i64] [debug line = 407:3]
  %tmp_132 = mul nsw i64 %tmp_131, %tmp_s, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_137 = mul nsw i64 %tmp_114, %tmp_13, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_142 = mul nsw i64 %tmp_68, %tmp_34, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_143 = add nsw i64 %tmp_142, %tmp_137, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_196 = trunc i64 %tmp_143 to i62            ; [#uses=1 type=i62]
  %tmp_144 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_196, i1 false) ; [#uses=1 type=i63]
  %tmp_145 = add i64 %tmp_132, %tmp_127, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_197 = trunc i64 %tmp_145 to i63            ; [#uses=1 type=i63]
  %tmp_167 = add i63 %tmp_144, %tmp_197, !dbg !143 ; [#uses=1 type=i63] [debug line = 407:3]
  %tmp_147 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_167, i1 false), !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_148 = add nsw i64 %tmp_147, %tmp_122, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %output_addr_27 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !143 ; [#uses=1 type=i64*] [debug line = 407:3]
  store i64 %tmp_148, i64* %output_addr_27, align 8, !dbg !143 ; [debug line = 407:3]
  %tmp_153 = mul nsw i64 %tmp_68, %tmp_50, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_158 = mul nsw i64 %tmp_84, %tmp_34, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_163 = mul nsw i64 %tmp_114, %tmp_22, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_168 = mul nsw i64 %tmp_131, %tmp_13, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %in_addr_19 = getelementptr [10 x i64]* %in, i64 0, i64 9, !dbg !144 ; [#uses=1 type=i64*] [debug line = 413:3]
  %in_load_16 = load i64* %in_addr_19, align 8, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_199 = trunc i64 %in_load_16 to i32, !dbg !144 ; [#uses=3 type=i32] [debug line = 413:3]
  %tmp_170 = sext i32 %tmp_199 to i64, !dbg !144  ; [#uses=6 type=i64] [debug line = 413:3]
  %tmp_171 = mul nsw i64 %tmp_170, %tmp_s, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp6 = add i64 %tmp_158, %tmp_153, !dbg !144   ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp8 = add i64 %tmp_171, %tmp_168, !dbg !144   ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp7 = add i64 %tmp_163, %tmp8, !dbg !144      ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_200 = trunc i64 %tmp7 to i63               ; [#uses=1 type=i63]
  %tmp_206 = trunc i64 %tmp6 to i63               ; [#uses=1 type=i63]
  %tmp_172 = add i63 %tmp_200, %tmp_206, !dbg !144 ; [#uses=1 type=i63] [debug line = 413:3]
  %tmp_173 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_172, i1 false), !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %output_addr_28 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !144 ; [#uses=1 type=i64*] [debug line = 413:3]
  store i64 %tmp_173, i64* %output_addr_28, align 8, !dbg !144 ; [debug line = 413:3]
  %tmp_174 = mul nsw i64 %tmp_68, %tmp_68, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_175 = mul nsw i64 %tmp_84, %tmp_50, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_176 = mul nsw i64 %tmp_131, %tmp_22, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_177 = mul nsw i64 %tmp_114, %tmp_34, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_178 = mul nsw i64 %tmp_170, %tmp_13, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_179 = add nsw i64 %tmp_178, %tmp_177, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_207 = trunc i64 %tmp_179 to i62            ; [#uses=1 type=i62]
  %tmp_180 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_207, i1 false) ; [#uses=1 type=i63]
  %tmp9 = add i64 %tmp_176, %tmp_175, !dbg !145   ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_181 = add i64 %tmp_174, %tmp9, !dbg !145   ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_215 = trunc i64 %tmp_181 to i63            ; [#uses=1 type=i63]
  %tmp_183 = add i63 %tmp_180, %tmp_215, !dbg !145 ; [#uses=1 type=i63] [debug line = 419:3]
  %tmp_184 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_183, i1 false), !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %output_addr_29 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !145 ; [#uses=1 type=i64*] [debug line = 419:3]
  store i64 %tmp_184, i64* %output_addr_29, align 8, !dbg !145 ; [debug line = 419:3]
  %tmp_185 = mul nsw i64 %tmp_84, %tmp_68, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_186 = mul nsw i64 %tmp_114, %tmp_50, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_187 = mul nsw i64 %tmp_131, %tmp_34, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_188 = mul nsw i64 %tmp_170, %tmp_22, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp10 = add i64 %tmp_186, %tmp_185, !dbg !146  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp11 = add i64 %tmp_188, %tmp_187, !dbg !146  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_221 = trunc i64 %tmp11 to i63              ; [#uses=1 type=i63]
  %tmp_222 = trunc i64 %tmp10 to i63              ; [#uses=1 type=i63]
  %tmp_189 = add i63 %tmp_221, %tmp_222, !dbg !146 ; [#uses=1 type=i63] [debug line = 425:3]
  %tmp_190 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_189, i1 false), !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %output_addr_30 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !146 ; [#uses=1 type=i64*] [debug line = 425:3]
  store i64 %tmp_190, i64* %output_addr_30, align 8, !dbg !146 ; [debug line = 425:3]
  %tmp_191 = mul nsw i64 %tmp_84, %tmp_84, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_192 = mul nsw i64 %tmp_131, %tmp_50, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_193 = mul nsw i64 %tmp_114, %tmp_68, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_194 = mul nsw i64 %tmp_170, %tmp_34, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_195 = add nsw i64 %tmp_194, %tmp_193, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_233 = shl i64 %tmp_195, 1, !dbg !147       ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_198 = add nsw i64 %tmp_233, %tmp_192, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_234 = shl i64 %tmp_198, 1, !dbg !147       ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_201 = add nsw i64 %tmp_234, %tmp_191, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %output_addr_31 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !147 ; [#uses=1 type=i64*] [debug line = 430:3]
  store i64 %tmp_201, i64* %output_addr_31, align 8, !dbg !147 ; [debug line = 430:3]
  %tmp_202 = mul nsw i64 %tmp_114, %tmp_84, !dbg !148 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_203 = mul nsw i64 %tmp_131, %tmp_68, !dbg !148 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_204 = mul nsw i64 %tmp_170, %tmp_50, !dbg !148 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp12 = add i64 %tmp_204, %tmp_203, !dbg !148  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_205 = add i64 %tmp_202, %tmp12, !dbg !148  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_235 = shl i64 %tmp_205, 1, !dbg !148       ; [#uses=1 type=i64] [debug line = 435:3]
  %output_addr_32 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !148 ; [#uses=1 type=i64*] [debug line = 435:3]
  store i64 %tmp_235, i64* %output_addr_32, align 8, !dbg !148 ; [debug line = 435:3]
  %tmp_208 = mul nsw i64 %tmp_114, %tmp_114, !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp_209 = mul nsw i64 %tmp_131, %tmp_84, !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp_210 = sext i32 %tmp_199 to i63, !dbg !149  ; [#uses=3 type=i63] [debug line = 439:3]
  %tmp_211 = sext i32 %tmp_199 to i62, !dbg !149  ; [#uses=2 type=i62] [debug line = 439:3]
  %tmp_212 = mul i62 %tmp_211, %tmp_159, !dbg !149 ; [#uses=1 type=i62] [debug line = 439:3]
  %tmp_213 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_212, i1 false) ; [#uses=1 type=i63]
  %tmp_214 = add i64 %tmp_209, %tmp_208, !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp_236 = trunc i64 %tmp_214 to i63            ; [#uses=1 type=i63]
  %tmp_216 = add i63 %tmp_213, %tmp_236, !dbg !149 ; [#uses=1 type=i63] [debug line = 439:3]
  %tmp_217 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_216, i1 false), !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %output_addr_33 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !149 ; [#uses=1 type=i64*] [debug line = 439:3]
  store i64 %tmp_217, i64* %output_addr_33, align 8, !dbg !149 ; [debug line = 439:3]
  %tmp_218 = mul nsw i64 %tmp_131, %tmp_114, !dbg !150 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp_219 = mul nsw i64 %tmp_170, %tmp_84, !dbg !150 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp_220 = add nsw i64 %tmp_219, %tmp_218, !dbg !150 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp_237 = shl i64 %tmp_220, 1, !dbg !150       ; [#uses=1 type=i64] [debug line = 443:3]
  %output_addr_34 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !150 ; [#uses=1 type=i64*] [debug line = 443:3]
  store i64 %tmp_237, i64* %output_addr_34, align 8, !dbg !150 ; [debug line = 443:3]
  %tmp_223 = mul nsw i64 %tmp_131, %tmp_131, !dbg !151 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp_224 = sext i32 %tmp_164 to i62, !dbg !151  ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp_225 = mul i62 %tmp_211, %tmp_224, !dbg !151 ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp_226 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_225, i2 0), !dbg !151 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp_227 = add nsw i64 %tmp_226, %tmp_223, !dbg !151 ; [#uses=1 type=i64] [debug line = 446:3]
  %output_addr_35 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !151 ; [#uses=1 type=i64*] [debug line = 446:3]
  store i64 %tmp_227, i64* %output_addr_35, align 8, !dbg !151 ; [debug line = 446:3]
  %tmp_228 = sext i32 %tmp_182 to i63, !dbg !152  ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp_229 = mul i63 %tmp_210, %tmp_228, !dbg !152 ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp_230 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_229, i1 false), !dbg !152 ; [#uses=1 type=i64] [debug line = 449:3]
  %output_addr_36 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !152 ; [#uses=1 type=i64*] [debug line = 449:3]
  store i64 %tmp_230, i64* %output_addr_36, align 8, !dbg !152 ; [debug line = 449:3]
  %tmp_231 = mul i63 %tmp_210, %tmp_210, !dbg !153 ; [#uses=1 type=i63] [debug line = 451:3]
  %tmp_232 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_231, i1 false), !dbg !153 ; [#uses=1 type=i64] [debug line = 451:3]
  %output_addr_37 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !153 ; [#uses=1 type=i64*] [debug line = 451:3]
  store i64 %tmp_232, i64* %output_addr_37, align 8, !dbg !153 ; [debug line = 451:3]
  ret void, !dbg !154                             ; [debug line = 452:1]
}

; [#uses=1]
define internal fastcc void @fsquare_inner([19 x i64]* nocapture %output, [11 x i64]* nocapture %in) {
  %in_addr = getelementptr [11 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !155), !dbg !156 ; [debug line = 368:33] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[11 x i64]* %in}, i64 0, metadata !157), !dbg !161 ; [debug line = 368:53] [debug variable = in]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !129 ; [debug line = 369:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !132 ; [debug line = 370:1]
  %in_load = load i64* %in_addr, align 8, !dbg !133 ; [#uses=1 type=i64] [debug line = 371:53]
  %tmp = trunc i64 %in_load to i32, !dbg !133     ; [#uses=2 type=i32] [debug line = 371:53]
  %tmp_s = sext i32 %tmp to i64, !dbg !133        ; [#uses=9 type=i64] [debug line = 371:53]
  %out_1 = mul nsw i64 %tmp_s, %tmp_s, !dbg !133  ; [#uses=1 type=i64] [debug line = 371:53]
  call void @llvm.dbg.value(metadata !{i64 %out_1}, i64 0, metadata !134), !dbg !133 ; [debug line = 371:53] [debug variable = out_1]
  store i64 %out_1, i64* %output_addr, align 8, !dbg !135 ; [debug line = 374:3]
  %in_addr_20 = getelementptr [11 x i64]* %in, i64 0, i64 1, !dbg !136 ; [#uses=1 type=i64*] [debug line = 378:3]
  %in_load_3 = load i64* %in_addr_20, align 8, !dbg !136 ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp_246 = trunc i64 %in_load_3 to i32, !dbg !136 ; [#uses=3 type=i32] [debug line = 378:3]
  %tmp_13 = sext i32 %tmp_246 to i64, !dbg !136   ; [#uses=8 type=i64] [debug line = 378:3]
  %tmp_233 = sext i32 %tmp to i63, !dbg !136      ; [#uses=2 type=i63] [debug line = 378:3]
  %tmp_235 = sext i32 %tmp_246 to i63, !dbg !136  ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp_236 = mul i63 %tmp_235, %tmp_233, !dbg !136 ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp_15 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_236, i1 false), !dbg !136 ; [#uses=1 type=i64] [debug line = 378:3]
  %output_addr_38 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !136 ; [#uses=1 type=i64*] [debug line = 378:3]
  store i64 %tmp_15, i64* %output_addr_38, align 8, !dbg !136 ; [debug line = 378:3]
  %tmp_18 = mul nsw i64 %tmp_13, %tmp_13, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %in_addr_21 = getelementptr [11 x i64]* %in, i64 0, i64 2, !dbg !137 ; [#uses=1 type=i64*] [debug line = 383:3]
  %in_load_6 = load i64* %in_addr_21, align 8, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp_251 = trunc i64 %in_load_6 to i32, !dbg !137 ; [#uses=1 type=i32] [debug line = 383:3]
  %tmp_22 = sext i32 %tmp_251 to i64, !dbg !137   ; [#uses=11 type=i64] [debug line = 383:3]
  %tmp_23 = mul nsw i64 %tmp_22, %tmp_s, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp_24 = add nsw i64 %tmp_23, %tmp_18, !dbg !137 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp_253 = shl i64 %tmp_24, 1, !dbg !137        ; [#uses=1 type=i64] [debug line = 383:3]
  %output_addr_22 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !137 ; [#uses=1 type=i64*] [debug line = 383:3]
  store i64 %tmp_253, i64* %output_addr_22, align 8, !dbg !137 ; [debug line = 383:3]
  %tmp_30 = mul nsw i64 %tmp_22, %tmp_13, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %in_addr_22 = getelementptr [11 x i64]* %in, i64 0, i64 3, !dbg !138 ; [#uses=1 type=i64*] [debug line = 386:3]
  %in_load_10 = load i64* %in_addr_22, align 8, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp_255 = trunc i64 %in_load_10 to i32, !dbg !138 ; [#uses=2 type=i32] [debug line = 386:3]
  %tmp_34 = sext i32 %tmp_255 to i64, !dbg !138   ; [#uses=10 type=i64] [debug line = 386:3]
  %tmp_35 = mul nsw i64 %tmp_34, %tmp_s, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp_36 = add nsw i64 %tmp_35, %tmp_30, !dbg !138 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp_258 = shl i64 %tmp_36, 1, !dbg !138        ; [#uses=1 type=i64] [debug line = 386:3]
  %output_addr_33 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !138 ; [#uses=1 type=i64*] [debug line = 386:3]
  store i64 %tmp_258, i64* %output_addr_33, align 8, !dbg !138 ; [debug line = 386:3]
  %tmp_40 = mul nsw i64 %tmp_22, %tmp_22, !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp_237 = sext i32 %tmp_246 to i62, !dbg !139  ; [#uses=2 type=i62] [debug line = 389:3]
  %tmp_238 = sext i32 %tmp_255 to i62, !dbg !139  ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp_240 = mul i62 %tmp_238, %tmp_237, !dbg !139 ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp_46 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_240, i2 0), !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %in_addr_23 = getelementptr [11 x i64]* %in, i64 0, i64 4, !dbg !139 ; [#uses=1 type=i64*] [debug line = 389:3]
  %in_load_15 = load i64* %in_addr_23, align 8, !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp_265 = trunc i64 %in_load_15 to i32, !dbg !139 ; [#uses=2 type=i32] [debug line = 389:3]
  %tmp_50 = sext i32 %tmp_265 to i64, !dbg !139   ; [#uses=10 type=i64] [debug line = 389:3]
  %tmp_241 = sext i32 %tmp_265 to i63, !dbg !139  ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp_242 = mul i63 %tmp_241, %tmp_233, !dbg !139 ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp_52 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_242, i1 false), !dbg !139 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp1 = add i64 %tmp_52, %tmp_46, !dbg !139     ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp_54 = add i64 %tmp_40, %tmp1, !dbg !139     ; [#uses=1 type=i64] [debug line = 389:3]
  %output_addr_39 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !139 ; [#uses=1 type=i64*] [debug line = 389:3]
  store i64 %tmp_54, i64* %output_addr_39, align 8, !dbg !139 ; [debug line = 389:3]
  %tmp_59 = mul nsw i64 %tmp_34, %tmp_22, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_64 = mul nsw i64 %tmp_50, %tmp_13, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %in_addr_24 = getelementptr [11 x i64]* %in, i64 0, i64 5, !dbg !140 ; [#uses=1 type=i64*] [debug line = 393:3]
  %in_load_17 = load i64* %in_addr_24, align 8, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_273 = trunc i64 %in_load_17 to i32, !dbg !140 ; [#uses=2 type=i32] [debug line = 393:3]
  %tmp_68 = sext i32 %tmp_273 to i64, !dbg !140   ; [#uses=9 type=i64] [debug line = 393:3]
  %tmp_69 = mul nsw i64 %tmp_68, %tmp_s, !dbg !140 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp2 = add i64 %tmp_69, %tmp_64, !dbg !140     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_71 = add i64 %tmp_59, %tmp2, !dbg !140     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp_279 = shl i64 %tmp_71, 1, !dbg !140        ; [#uses=1 type=i64] [debug line = 393:3]
  %output_addr_40 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !140 ; [#uses=1 type=i64*] [debug line = 393:3]
  store i64 %tmp_279, i64* %output_addr_40, align 8, !dbg !140 ; [debug line = 393:3]
  %tmp_75 = mul nsw i64 %tmp_34, %tmp_34, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_80 = mul nsw i64 %tmp_50, %tmp_22, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %in_addr_25 = getelementptr [11 x i64]* %in, i64 0, i64 6, !dbg !141 ; [#uses=1 type=i64*] [debug line = 397:3]
  %in_load_18 = load i64* %in_addr_25, align 8, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_280 = trunc i64 %in_load_18 to i32, !dbg !141 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp_84 = sext i32 %tmp_280 to i64, !dbg !141   ; [#uses=11 type=i64] [debug line = 397:3]
  %tmp_85 = mul nsw i64 %tmp_84, %tmp_s, !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_243 = sext i32 %tmp_273 to i62, !dbg !141  ; [#uses=2 type=i62] [debug line = 397:3]
  %tmp_245 = mul i62 %tmp_243, %tmp_237, !dbg !141 ; [#uses=1 type=i62] [debug line = 397:3]
  %tmp_91 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_245, i1 false) ; [#uses=1 type=i63]
  %tmp3 = add i64 %tmp_85, %tmp_80, !dbg !141     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_93 = add i64 %tmp_75, %tmp3, !dbg !141     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp_291 = trunc i64 %tmp_93 to i63             ; [#uses=1 type=i63]
  %tmp_247 = add i63 %tmp_91, %tmp_291, !dbg !141 ; [#uses=1 type=i63] [debug line = 397:3]
  %tmp_95 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_247, i1 false), !dbg !141 ; [#uses=1 type=i64] [debug line = 397:3]
  %output_addr_41 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !141 ; [#uses=1 type=i64*] [debug line = 397:3]
  store i64 %tmp_95, i64* %output_addr_41, align 8, !dbg !141 ; [debug line = 397:3]
  %tmp_100 = mul nsw i64 %tmp_50, %tmp_34, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_105 = mul nsw i64 %tmp_68, %tmp_22, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_110 = mul nsw i64 %tmp_84, %tmp_13, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %in_addr_26 = getelementptr [11 x i64]* %in, i64 0, i64 7, !dbg !142 ; [#uses=1 type=i64*] [debug line = 402:3]
  %in_load_19 = load i64* %in_addr_26, align 8, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_292 = trunc i64 %in_load_19 to i32, !dbg !142 ; [#uses=2 type=i32] [debug line = 402:3]
  %tmp_114 = sext i32 %tmp_292 to i64, !dbg !142  ; [#uses=10 type=i64] [debug line = 402:3]
  %tmp_115 = mul nsw i64 %tmp_114, %tmp_s, !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp4 = add i64 %tmp_105, %tmp_100, !dbg !142   ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp5 = add i64 %tmp_115, %tmp_110, !dbg !142   ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp_293 = trunc i64 %tmp5 to i63               ; [#uses=1 type=i63]
  %tmp_294 = trunc i64 %tmp4 to i63               ; [#uses=1 type=i63]
  %tmp_248 = add i63 %tmp_293, %tmp_294, !dbg !142 ; [#uses=1 type=i63] [debug line = 402:3]
  %tmp_119 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_248, i1 false), !dbg !142 ; [#uses=1 type=i64] [debug line = 402:3]
  %output_addr_42 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !142 ; [#uses=1 type=i64*] [debug line = 402:3]
  store i64 %tmp_119, i64* %output_addr_42, align 8, !dbg !142 ; [debug line = 402:3]
  %tmp_122 = mul nsw i64 %tmp_50, %tmp_50, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_127 = mul nsw i64 %tmp_84, %tmp_22, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %in_addr_27 = getelementptr [11 x i64]* %in, i64 0, i64 8, !dbg !143 ; [#uses=1 type=i64*] [debug line = 407:3]
  %in_load_20 = load i64* %in_addr_27, align 8, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_295 = trunc i64 %in_load_20 to i32, !dbg !143 ; [#uses=2 type=i32] [debug line = 407:3]
  %tmp_131 = sext i32 %tmp_295 to i64, !dbg !143  ; [#uses=10 type=i64] [debug line = 407:3]
  %tmp_132 = mul nsw i64 %tmp_131, %tmp_s, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_137 = mul nsw i64 %tmp_114, %tmp_13, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_142 = mul nsw i64 %tmp_68, %tmp_34, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_143 = add nsw i64 %tmp_142, %tmp_137, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_296 = trunc i64 %tmp_143 to i62            ; [#uses=1 type=i62]
  %tmp_144 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_296, i1 false) ; [#uses=1 type=i63]
  %tmp_145 = add i64 %tmp_132, %tmp_127, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_297 = trunc i64 %tmp_145 to i63            ; [#uses=1 type=i63]
  %tmp_256 = add i63 %tmp_144, %tmp_297, !dbg !143 ; [#uses=1 type=i63] [debug line = 407:3]
  %tmp_147 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_256, i1 false), !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp_148 = add nsw i64 %tmp_147, %tmp_122, !dbg !143 ; [#uses=1 type=i64] [debug line = 407:3]
  %output_addr_43 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !143 ; [#uses=1 type=i64*] [debug line = 407:3]
  store i64 %tmp_148, i64* %output_addr_43, align 8, !dbg !143 ; [debug line = 407:3]
  %tmp_153 = mul nsw i64 %tmp_68, %tmp_50, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_158 = mul nsw i64 %tmp_84, %tmp_34, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_163 = mul nsw i64 %tmp_114, %tmp_22, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_168 = mul nsw i64 %tmp_131, %tmp_13, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %in_addr_28 = getelementptr [11 x i64]* %in, i64 0, i64 9, !dbg !144 ; [#uses=1 type=i64*] [debug line = 413:3]
  %in_load_21 = load i64* %in_addr_28, align 8, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_298 = trunc i64 %in_load_21 to i32, !dbg !144 ; [#uses=3 type=i32] [debug line = 413:3]
  %tmp_172 = sext i32 %tmp_298 to i64, !dbg !144  ; [#uses=6 type=i64] [debug line = 413:3]
  %tmp_173 = mul nsw i64 %tmp_172, %tmp_s, !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp6 = add i64 %tmp_158, %tmp_153, !dbg !144   ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp8 = add i64 %tmp_173, %tmp_168, !dbg !144   ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp7 = add i64 %tmp_163, %tmp8, !dbg !144      ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp_299 = trunc i64 %tmp7 to i63               ; [#uses=1 type=i63]
  %tmp_300 = trunc i64 %tmp6 to i63               ; [#uses=1 type=i63]
  %tmp_257 = add i63 %tmp_299, %tmp_300, !dbg !144 ; [#uses=1 type=i63] [debug line = 413:3]
  %tmp_178 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_257, i1 false), !dbg !144 ; [#uses=1 type=i64] [debug line = 413:3]
  %output_addr_44 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !144 ; [#uses=1 type=i64*] [debug line = 413:3]
  store i64 %tmp_178, i64* %output_addr_44, align 8, !dbg !144 ; [debug line = 413:3]
  %tmp_181 = mul nsw i64 %tmp_68, %tmp_68, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_186 = mul nsw i64 %tmp_84, %tmp_50, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_191 = mul nsw i64 %tmp_131, %tmp_22, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_196 = mul nsw i64 %tmp_114, %tmp_34, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_201 = mul nsw i64 %tmp_172, %tmp_13, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_202 = add nsw i64 %tmp_201, %tmp_196, !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_301 = trunc i64 %tmp_202 to i62            ; [#uses=1 type=i62]
  %tmp_203 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_301, i1 false) ; [#uses=1 type=i63]
  %tmp9 = add i64 %tmp_191, %tmp_186, !dbg !145   ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_205 = add i64 %tmp_181, %tmp9, !dbg !145   ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp_302 = trunc i64 %tmp_205 to i63            ; [#uses=1 type=i63]
  %tmp_260 = add i63 %tmp_203, %tmp_302, !dbg !145 ; [#uses=1 type=i63] [debug line = 419:3]
  %tmp_207 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_260, i1 false), !dbg !145 ; [#uses=1 type=i64] [debug line = 419:3]
  %output_addr_45 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !145 ; [#uses=1 type=i64*] [debug line = 419:3]
  store i64 %tmp_207, i64* %output_addr_45, align 8, !dbg !145 ; [debug line = 419:3]
  %tmp_212 = mul nsw i64 %tmp_84, %tmp_68, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_217 = mul nsw i64 %tmp_114, %tmp_50, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_222 = mul nsw i64 %tmp_131, %tmp_34, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_227 = mul nsw i64 %tmp_172, %tmp_22, !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp10 = add i64 %tmp_217, %tmp_212, !dbg !146  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp11 = add i64 %tmp_227, %tmp_222, !dbg !146  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp_303 = trunc i64 %tmp11 to i63              ; [#uses=1 type=i63]
  %tmp_304 = trunc i64 %tmp10 to i63              ; [#uses=1 type=i63]
  %tmp_261 = add i63 %tmp_303, %tmp_304, !dbg !146 ; [#uses=1 type=i63] [debug line = 425:3]
  %tmp_231 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_261, i1 false), !dbg !146 ; [#uses=1 type=i64] [debug line = 425:3]
  %output_addr_46 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !146 ; [#uses=1 type=i64*] [debug line = 425:3]
  store i64 %tmp_231, i64* %output_addr_46, align 8, !dbg !146 ; [debug line = 425:3]
  %tmp_234 = mul nsw i64 %tmp_84, %tmp_84, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_239 = mul nsw i64 %tmp_131, %tmp_50, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_244 = mul nsw i64 %tmp_114, %tmp_68, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_249 = mul nsw i64 %tmp_172, %tmp_34, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_250 = add nsw i64 %tmp_249, %tmp_244, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_305 = shl i64 %tmp_250, 1, !dbg !147       ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_252 = add nsw i64 %tmp_305, %tmp_239, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_306 = shl i64 %tmp_252, 1, !dbg !147       ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp_254 = add nsw i64 %tmp_306, %tmp_234, !dbg !147 ; [#uses=1 type=i64] [debug line = 430:3]
  %output_addr_47 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !147 ; [#uses=1 type=i64*] [debug line = 430:3]
  store i64 %tmp_254, i64* %output_addr_47, align 8, !dbg !147 ; [debug line = 430:3]
  %tmp_259 = mul nsw i64 %tmp_114, %tmp_84, !dbg !148 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_262 = mul nsw i64 %tmp_131, %tmp_68, !dbg !148 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_263 = mul nsw i64 %tmp_172, %tmp_50, !dbg !148 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp12 = add i64 %tmp_263, %tmp_262, !dbg !148  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_264 = add i64 %tmp_259, %tmp12, !dbg !148  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp_307 = shl i64 %tmp_264, 1, !dbg !148       ; [#uses=1 type=i64] [debug line = 435:3]
  %output_addr_48 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !148 ; [#uses=1 type=i64*] [debug line = 435:3]
  store i64 %tmp_307, i64* %output_addr_48, align 8, !dbg !148 ; [debug line = 435:3]
  %tmp_266 = mul nsw i64 %tmp_114, %tmp_114, !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp_267 = mul nsw i64 %tmp_131, %tmp_84, !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp_268 = sext i32 %tmp_298 to i63, !dbg !149  ; [#uses=3 type=i63] [debug line = 439:3]
  %tmp_269 = sext i32 %tmp_298 to i62, !dbg !149  ; [#uses=2 type=i62] [debug line = 439:3]
  %tmp_270 = mul i62 %tmp_269, %tmp_243, !dbg !149 ; [#uses=1 type=i62] [debug line = 439:3]
  %tmp_271 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_270, i1 false) ; [#uses=1 type=i63]
  %tmp_272 = add i64 %tmp_267, %tmp_266, !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp_308 = trunc i64 %tmp_272 to i63            ; [#uses=1 type=i63]
  %tmp_274 = add i63 %tmp_271, %tmp_308, !dbg !149 ; [#uses=1 type=i63] [debug line = 439:3]
  %tmp_275 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_274, i1 false), !dbg !149 ; [#uses=1 type=i64] [debug line = 439:3]
  %output_addr_49 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !149 ; [#uses=1 type=i64*] [debug line = 439:3]
  store i64 %tmp_275, i64* %output_addr_49, align 8, !dbg !149 ; [debug line = 439:3]
  %tmp_276 = mul nsw i64 %tmp_131, %tmp_114, !dbg !150 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp_277 = mul nsw i64 %tmp_172, %tmp_84, !dbg !150 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp_278 = add nsw i64 %tmp_277, %tmp_276, !dbg !150 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp_309 = shl i64 %tmp_278, 1, !dbg !150       ; [#uses=1 type=i64] [debug line = 443:3]
  %output_addr_50 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !150 ; [#uses=1 type=i64*] [debug line = 443:3]
  store i64 %tmp_309, i64* %output_addr_50, align 8, !dbg !150 ; [debug line = 443:3]
  %tmp_281 = mul nsw i64 %tmp_131, %tmp_131, !dbg !151 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp_282 = sext i32 %tmp_292 to i62, !dbg !151  ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp_283 = mul i62 %tmp_269, %tmp_282, !dbg !151 ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp_284 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_283, i2 0), !dbg !151 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp_285 = add nsw i64 %tmp_284, %tmp_281, !dbg !151 ; [#uses=1 type=i64] [debug line = 446:3]
  %output_addr_51 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !151 ; [#uses=1 type=i64*] [debug line = 446:3]
  store i64 %tmp_285, i64* %output_addr_51, align 8, !dbg !151 ; [debug line = 446:3]
  %tmp_286 = sext i32 %tmp_295 to i63, !dbg !152  ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp_287 = mul i63 %tmp_268, %tmp_286, !dbg !152 ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp_288 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_287, i1 false), !dbg !152 ; [#uses=1 type=i64] [debug line = 449:3]
  %output_addr_52 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !152 ; [#uses=1 type=i64*] [debug line = 449:3]
  store i64 %tmp_288, i64* %output_addr_52, align 8, !dbg !152 ; [debug line = 449:3]
  %tmp_289 = mul i63 %tmp_268, %tmp_268, !dbg !153 ; [#uses=1 type=i63] [debug line = 451:3]
  %tmp_290 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_289, i1 false), !dbg !153 ; [#uses=1 type=i64] [debug line = 451:3]
  %output_addr_53 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !153 ; [#uses=1 type=i64*] [debug line = 451:3]
  store i64 %tmp_290, i64* %output_addr_53, align 8, !dbg !153 ; [debug line = 451:3]
  ret void, !dbg !154                             ; [debug line = 452:1]
}

; [#uses=1]
define internal fastcc void @fsquare.2([10 x i64]* nocapture %output, [11 x i64]* nocapture %in) {
  %t = alloca [19 x i64], align 16                ; [#uses=23 type=[19 x i64]*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !162 ; [debug line = 463:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !165 ; [debug line = 464:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !166), !dbg !168 ; [debug line = 465:7] [debug variable = t]
  call fastcc void @fsquare_inner([19 x i64]* %t, [11 x i64]* %in), !dbg !169 ; [debug line = 466:3]
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=4 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !170), !dbg !175 ; [debug line = 229:34@470:3] [debug variable = output]
  %t_addr_1 = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !176 ; [#uses=1 type=i64*] [debug line = 234:3@470:3]
  %t_load = load i64* %t_addr_1, align 16, !dbg !176 ; [#uses=3 type=i64] [debug line = 234:3@470:3]
  %tmp_310 = shl i64 %t_load, 4, !dbg !176        ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %t_addr_2 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !176 ; [#uses=2 type=i64*] [debug line = 234:3@470:3]
  %t_load_2 = load i64* %t_addr_2, align 16, !dbg !176 ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %tmp_311 = shl i64 %t_load, 1, !dbg !178        ; [#uses=1 type=i64] [debug line = 235:3@470:3]
  %tmp = add i64 %t_load_2, %t_load, !dbg !179    ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp3 = add i64 %tmp_310, %tmp_311, !dbg !179   ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp_325_i = add nsw i64 %tmp3, %tmp, !dbg !179 ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  store i64 %tmp_325_i, i64* %t_addr_2, align 16, !dbg !179 ; [debug line = 236:3@470:3]
  %t_addr_3 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !180 ; [#uses=1 type=i64*] [debug line = 237:3@470:3]
  %t_load_3 = load i64* %t_addr_3, align 8, !dbg !180 ; [#uses=3 type=i64] [debug line = 237:3@470:3]
  %tmp_312 = shl i64 %t_load_3, 4, !dbg !180      ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %t_addr_4 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !180 ; [#uses=2 type=i64*] [debug line = 237:3@470:3]
  %t_load_4 = load i64* %t_addr_4, align 8, !dbg !180 ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %tmp_313 = shl i64 %t_load_3, 1, !dbg !181      ; [#uses=1 type=i64] [debug line = 238:3@470:3]
  %tmp4 = add i64 %t_load_4, %t_load_3, !dbg !182 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp5 = add i64 %tmp_312, %tmp_313, !dbg !182   ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp_330_i = add nsw i64 %tmp5, %tmp4, !dbg !182 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  store i64 %tmp_330_i, i64* %t_addr_4, align 8, !dbg !182 ; [debug line = 239:3@470:3]
  %t_addr_5 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !183 ; [#uses=1 type=i64*] [debug line = 240:3@470:3]
  %t_load_5 = load i64* %t_addr_5, align 16, !dbg !183 ; [#uses=3 type=i64] [debug line = 240:3@470:3]
  %tmp_314 = shl i64 %t_load_5, 4, !dbg !183      ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %t_addr_6 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !183 ; [#uses=2 type=i64*] [debug line = 240:3@470:3]
  %t_load_6 = load i64* %t_addr_6, align 16, !dbg !183 ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %tmp_315 = shl i64 %t_load_5, 1, !dbg !184      ; [#uses=1 type=i64] [debug line = 241:3@470:3]
  %tmp6 = add i64 %t_load_6, %t_load_5, !dbg !185 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp7 = add i64 %tmp_314, %tmp_315, !dbg !185   ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp_335_i = add nsw i64 %tmp7, %tmp6, !dbg !185 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  store i64 %tmp_335_i, i64* %t_addr_6, align 16, !dbg !185 ; [debug line = 242:3@470:3]
  %t_addr_7 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !186 ; [#uses=1 type=i64*] [debug line = 243:3@470:3]
  %t_load_7 = load i64* %t_addr_7, align 8, !dbg !186 ; [#uses=3 type=i64] [debug line = 243:3@470:3]
  %tmp_316 = shl i64 %t_load_7, 4, !dbg !186      ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %t_addr_8 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !186 ; [#uses=2 type=i64*] [debug line = 243:3@470:3]
  %t_load_8 = load i64* %t_addr_8, align 8, !dbg !186 ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %tmp_317 = shl i64 %t_load_7, 1, !dbg !187      ; [#uses=1 type=i64] [debug line = 244:3@470:3]
  %tmp8 = add i64 %t_load_8, %t_load_7, !dbg !188 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp9 = add i64 %tmp_316, %tmp_317, !dbg !188   ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp_340_i = add nsw i64 %tmp9, %tmp8, !dbg !188 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  store i64 %tmp_340_i, i64* %t_addr_8, align 8, !dbg !188 ; [debug line = 245:3@470:3]
  %t_addr_9 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !189 ; [#uses=1 type=i64*] [debug line = 246:3@470:3]
  %t_load_9 = load i64* %t_addr_9, align 16, !dbg !189 ; [#uses=3 type=i64] [debug line = 246:3@470:3]
  %tmp_318 = shl i64 %t_load_9, 4, !dbg !189      ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %t_addr_10 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !189 ; [#uses=2 type=i64*] [debug line = 246:3@470:3]
  %t_load_10 = load i64* %t_addr_10, align 16, !dbg !189 ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %tmp_319 = shl i64 %t_load_9, 1, !dbg !190      ; [#uses=1 type=i64] [debug line = 247:3@470:3]
  %tmp10 = add i64 %t_load_10, %t_load_9, !dbg !191 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp11 = add i64 %tmp_318, %tmp_319, !dbg !191  ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp_345_i = add nsw i64 %tmp11, %tmp10, !dbg !191 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  store i64 %tmp_345_i, i64* %t_addr_10, align 16, !dbg !191 ; [debug line = 248:3@470:3]
  %t_addr_11 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !192 ; [#uses=1 type=i64*] [debug line = 249:3@470:3]
  %t_load_11 = load i64* %t_addr_11, align 8, !dbg !192 ; [#uses=3 type=i64] [debug line = 249:3@470:3]
  %tmp_320 = shl i64 %t_load_11, 4, !dbg !192     ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %t_addr_12 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !192 ; [#uses=2 type=i64*] [debug line = 249:3@470:3]
  %t_load_12 = load i64* %t_addr_12, align 8, !dbg !192 ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %tmp_321 = shl i64 %t_load_11, 1, !dbg !193     ; [#uses=1 type=i64] [debug line = 250:3@470:3]
  %tmp12 = add i64 %t_load_12, %t_load_11, !dbg !194 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp13 = add i64 %tmp_320, %tmp_321, !dbg !194  ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp_350_i = add nsw i64 %tmp13, %tmp12, !dbg !194 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  store i64 %tmp_350_i, i64* %t_addr_12, align 8, !dbg !194 ; [debug line = 251:3@470:3]
  %t_addr_13 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !195 ; [#uses=1 type=i64*] [debug line = 252:3@470:3]
  %t_load_13 = load i64* %t_addr_13, align 16, !dbg !195 ; [#uses=3 type=i64] [debug line = 252:3@470:3]
  %tmp_322 = shl i64 %t_load_13, 4, !dbg !195     ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %t_addr_14 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !195 ; [#uses=2 type=i64*] [debug line = 252:3@470:3]
  %t_load_14 = load i64* %t_addr_14, align 16, !dbg !195 ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %tmp_323 = shl i64 %t_load_13, 1, !dbg !196     ; [#uses=1 type=i64] [debug line = 253:3@470:3]
  %tmp14 = add i64 %t_load_14, %t_load_13, !dbg !197 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp15 = add i64 %tmp_322, %tmp_323, !dbg !197  ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp_355_i = add nsw i64 %tmp15, %tmp14, !dbg !197 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  store i64 %tmp_355_i, i64* %t_addr_14, align 16, !dbg !197 ; [debug line = 254:3@470:3]
  %t_addr_15 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !198 ; [#uses=1 type=i64*] [debug line = 255:3@470:3]
  %t_load_15 = load i64* %t_addr_15, align 8, !dbg !198 ; [#uses=3 type=i64] [debug line = 255:3@470:3]
  %tmp_324 = shl i64 %t_load_15, 4, !dbg !198     ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %t_addr_16 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !198 ; [#uses=4 type=i64*] [debug line = 255:3@470:3]
  %t_load_16 = load i64* %t_addr_16, align 8, !dbg !198 ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %tmp_325 = shl i64 %t_load_15, 1, !dbg !199     ; [#uses=1 type=i64] [debug line = 256:3@470:3]
  %tmp16 = add i64 %t_load_16, %t_load_15, !dbg !200 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp17 = add i64 %tmp_324, %tmp_325, !dbg !200  ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp_360_i = add nsw i64 %tmp17, %tmp16, !dbg !200 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  store i64 %tmp_360_i, i64* %t_addr_16, align 8, !dbg !200 ; [debug line = 257:3@470:3]
  %t_addr_17 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !201 ; [#uses=4 type=i64*] [debug line = 258:3@470:3]
  %t_load_17 = load i64* %t_addr_17, align 16, !dbg !201 ; [#uses=3 type=i64] [debug line = 258:3@470:3]
  %tmp_326 = shl i64 %t_load_17, 4, !dbg !201     ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %t_load_1 = load i64* %t_addr, align 16, !dbg !201 ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %tmp_327 = shl i64 %t_load_17, 1, !dbg !202     ; [#uses=1 type=i64] [debug line = 259:3@470:3]
  %tmp18 = add i64 %t_load_1, %t_load_17, !dbg !203 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp19 = add i64 %tmp_326, %tmp_327, !dbg !203  ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp_365_i = add nsw i64 %tmp19, %tmp18, !dbg !203 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  store i64 %tmp_365_i, i64* %t_addr, align 16, !dbg !203 ; [debug line = 260:3@470:3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !204), !dbg !207 ; [debug line = 302:40@471:3] [debug variable = output]
  store i64 0, i64* %t_addr_17, align 16, !dbg !208 ; [debug line = 305:3@471:3]
  br label %1, !dbg !210                          ; [debug line = 307:8@471:3]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]             ; [#uses=4 type=i4]
  %tmp_i = icmp ult i4 %i_i, -6, !dbg !210        ; [#uses=1 type=i1] [debug line = 307:8@471:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit, !dbg !210 ; [debug line = 307:8@471:3]

; <label>:2                                       ; preds = %1
  %tmp_i_9 = zext i4 %i_i to i64, !dbg !212       ; [#uses=1 type=i64] [debug line = 308:17@471:3]
  %t_addr_18 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_9, !dbg !212 ; [#uses=2 type=i64*] [debug line = 308:17@471:3]
  %t_load_18 = load i64* %t_addr_18, align 16, !dbg !212 ; [#uses=3 type=i64] [debug line = 308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %t_load_18}, i64 0, metadata !214), !dbg !218 ; [debug line = 271:24@308:17@471:3] [debug variable = v]
  %tmp_328 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_18, i32 63), !dbg !219 ; [#uses=1 type=i1] [debug line = 276:50@308:17@471:3]
  %tmp_i_i_cast_cast = select i1 %tmp_328, i64 67108863, i64 0, !dbg !221 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp_1064_i_i = add nsw i64 %t_load_18, %tmp_i_i_cast_cast, !dbg !221 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63), !dbg !221 ; [#uses=2 type=i38] [debug line = 280:3@308:17@471:3]
  %over = sext i38 %tmp_397_i_i to i64, !dbg !221 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !222), !dbg !212 ; [debug line = 308:17@471:3] [debug variable = over]
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0), !dbg !223 ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  %tmp_367_i = sub nsw i64 %t_load_18, %tmp_366_i, !dbg !223 ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  store i64 %tmp_367_i, i64* %t_addr_18, align 16, !dbg !223 ; [debug line = 313:5@471:3]
  %tmp_368_i = or i4 %i_i, 1, !dbg !224           ; [#uses=1 type=i4] [debug line = 314:5@471:3]
  %tmp_369_i = zext i4 %tmp_368_i to i64, !dbg !224 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %t_addr_19 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i, !dbg !224 ; [#uses=2 type=i64*] [debug line = 314:5@471:3]
  %t_load_19 = load i64* %t_addr_19, align 8, !dbg !224 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %v_assign_1 = add nsw i64 %t_load_19, %over, !dbg !224 ; [#uses=3 type=i64] [debug line = 314:5@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_1}, i64 0, metadata !225), !dbg !228 ; [debug line = 287:24@322:12@471:3] [debug variable = v]
  %tmp_329 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_1, i32 63), !dbg !229 ; [#uses=1 type=i1] [debug line = 292:50@322:12@471:3]
  %tmp_i10_i_cast_cast = select i1 %tmp_329, i64 33554431, i64 0, !dbg !231 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_1, !dbg !231 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63), !dbg !231 ; [#uses=2 type=i39] [debug line = 296:3@322:12@471:3]
  %over_1 = sext i39 %tmp_399_i_i to i64, !dbg !231 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over_1}, i64 0, metadata !222), !dbg !227 ; [debug line = 322:12@471:3] [debug variable = over]
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0), !dbg !232 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  %tmp_372_i = sub nsw i64 %v_assign_1, %tmp_371_i, !dbg !232 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  store i64 %tmp_372_i, i64* %t_addr_19, align 8, !dbg !232 ; [debug line = 323:5@471:3]
  %i = add i4 %i_i, 2, !dbg !233                  ; [#uses=2 type=i4] [debug line = 324:5@471:3]
  %tmp_373_i = zext i4 %i to i64, !dbg !233       ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %t_addr_20 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i, !dbg !233 ; [#uses=2 type=i64*] [debug line = 324:5@471:3]
  %t_load_20 = load i64* %t_addr_20, align 16, !dbg !233 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %tmp_374_i = add nsw i64 %t_load_20, %over_1, !dbg !233 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  store i64 %tmp_374_i, i64* %t_addr_20, align 16, !dbg !233 ; [debug line = 324:5@471:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !234), !dbg !235 ; [debug line = 307:23@471:3] [debug variable = i]
  br label %1, !dbg !235                          ; [debug line = 307:23@471:3]

freduce_coefficients.exit:                        ; preds = %1
  %t_load_21 = load i64* %t_addr_17, align 16, !dbg !236 ; [#uses=3 type=i64] [debug line = 327:3@471:3]
  %tmp_330 = shl i64 %t_load_21, 4, !dbg !236     ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %t_load_22 = load i64* %t_addr, align 16, !dbg !236 ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %tmp_331 = shl i64 %t_load_21, 1, !dbg !237     ; [#uses=1 type=i64] [debug line = 328:3@471:3]
  %tmp21 = add i64 %t_load_21, %t_load_22, !dbg !238 ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %tmp22 = add i64 %tmp_331, %tmp_330, !dbg !238  ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %v_assign_2 = add nsw i64 %tmp21, %tmp22, !dbg !238 ; [#uses=3 type=i64] [debug line = 329:3@471:3]
  store i64 0, i64* %t_addr_17, align 16, !dbg !239 ; [debug line = 331:3@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_2}, i64 0, metadata !240), !dbg !243 ; [debug line = 271:24@336:17@471:3] [debug variable = v]
  %tmp_332 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_2, i32 63), !dbg !244 ; [#uses=1 type=i1] [debug line = 276:50@336:17@471:3]
  %tmp_i13_i_cast_cast = select i1 %tmp_332, i64 67108863, i64 0, !dbg !245 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp_1064_i14_i = add nsw i64 %v_assign_2, %tmp_i13_i_cast_cast, !dbg !245 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63), !dbg !245 ; [#uses=2 type=i38] [debug line = 280:3@336:17@471:3]
  %over_2 = sext i38 %tmp_397_i16_i to i64, !dbg !245 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over_2}, i64 0, metadata !246), !dbg !241 ; [debug line = 336:17@471:3] [debug variable = over]
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0), !dbg !247 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  %tmp_381_i = sub nsw i64 %v_assign_2, %tmp_380_i, !dbg !247 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  store i64 %tmp_381_i, i64* %t_addr, align 16, !dbg !247 ; [debug line = 337:5@471:3]
  %t_load_23 = load i64* %t_addr_16, align 8, !dbg !248 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  %tmp_382_i = add nsw i64 %over_2, %t_load_23, !dbg !248 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  store i64 %tmp_382_i, i64* %t_addr_16, align 8, !dbg !248 ; [debug line = 338:5@471:3]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !249), !dbg !257 ; [debug line = 59:20@473:3] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !258), !dbg !259 ; [debug line = 59:31@473:3] [debug variable = src]
  br label %3, !dbg !260                          ; [debug line = 61:6@473:3]

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i2 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_3, %4 ] ; [#uses=3 type=i4]
  %exitcond_i = icmp eq i4 %i_i2, -6, !dbg !260   ; [#uses=1 type=i1] [debug line = 61:6@473:3]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_3 = add i4 %i_i2, 1, !dbg !263               ; [#uses=1 type=i4] [debug line = 61:18@473:3]
  br i1 %exitcond_i, label %_memcpy.exit, label %4, !dbg !260 ; [debug line = 61:6@473:3]

; <label>:4                                       ; preds = %3
  %tmp_i3 = zext i4 %i_i2 to i64, !dbg !264       ; [#uses=2 type=i64] [debug line = 62:3@473:3]
  %t_addr_21 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i3, !dbg !264 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  %t_load_24 = load i64* %t_addr_21, align 8, !dbg !264 ; [#uses=1 type=i64] [debug line = 62:3@473:3]
  %output_addr = getelementptr [10 x i64]* %output, i64 0, i64 %tmp_i3, !dbg !264 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  store i64 %t_load_24, i64* %output_addr, align 8, !dbg !264 ; [debug line = 62:3@473:3]
  call void @llvm.dbg.value(metadata !{i4 %i_3}, i64 0, metadata !266), !dbg !263 ; [debug line = 61:18@473:3] [debug variable = i]
  br label %3, !dbg !263                          ; [debug line = 61:18@473:3]

_memcpy.exit:                                     ; preds = %3
  ret void, !dbg !267                             ; [debug line = 474:1]
}

; [#uses=37]
define internal fastcc void @fsquare.1([10 x i64]* nocapture %output, [10 x i64]* nocapture %in) {
  %t = alloca [19 x i64], align 16                ; [#uses=23 type=[19 x i64]*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !162 ; [debug line = 463:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !165 ; [debug line = 464:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !166), !dbg !168 ; [debug line = 465:7] [debug variable = t]
  call fastcc void @fsquare_inner.1([19 x i64]* %t, [10 x i64]* %in), !dbg !169 ; [debug line = 466:3]
  %t_addr_2 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=4 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !170), !dbg !175 ; [debug line = 229:34@470:3] [debug variable = output]
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !176 ; [#uses=1 type=i64*] [debug line = 234:3@470:3]
  %t_load = load i64* %t_addr, align 16, !dbg !176 ; [#uses=3 type=i64] [debug line = 234:3@470:3]
  %tmp_333 = shl i64 %t_load, 4, !dbg !176        ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %t_addr_22 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !176 ; [#uses=2 type=i64*] [debug line = 234:3@470:3]
  %t_load_25 = load i64* %t_addr_22, align 16, !dbg !176 ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %tmp_334 = shl i64 %t_load, 1, !dbg !178        ; [#uses=1 type=i64] [debug line = 235:3@470:3]
  %tmp = add i64 %t_load_25, %t_load, !dbg !179   ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp3 = add i64 %tmp_333, %tmp_334, !dbg !179   ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp_325_i = add nsw i64 %tmp3, %tmp, !dbg !179 ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  store i64 %tmp_325_i, i64* %t_addr_22, align 16, !dbg !179 ; [debug line = 236:3@470:3]
  %t_addr_23 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !180 ; [#uses=1 type=i64*] [debug line = 237:3@470:3]
  %t_load_26 = load i64* %t_addr_23, align 8, !dbg !180 ; [#uses=3 type=i64] [debug line = 237:3@470:3]
  %tmp_335 = shl i64 %t_load_26, 4, !dbg !180     ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %t_addr_24 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !180 ; [#uses=2 type=i64*] [debug line = 237:3@470:3]
  %t_load_27 = load i64* %t_addr_24, align 8, !dbg !180 ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %tmp_336 = shl i64 %t_load_26, 1, !dbg !181     ; [#uses=1 type=i64] [debug line = 238:3@470:3]
  %tmp4 = add i64 %t_load_27, %t_load_26, !dbg !182 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp5 = add i64 %tmp_335, %tmp_336, !dbg !182   ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp_330_i = add nsw i64 %tmp5, %tmp4, !dbg !182 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  store i64 %tmp_330_i, i64* %t_addr_24, align 8, !dbg !182 ; [debug line = 239:3@470:3]
  %t_addr_25 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !183 ; [#uses=1 type=i64*] [debug line = 240:3@470:3]
  %t_load_28 = load i64* %t_addr_25, align 16, !dbg !183 ; [#uses=3 type=i64] [debug line = 240:3@470:3]
  %tmp_337 = shl i64 %t_load_28, 4, !dbg !183     ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %t_addr_26 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !183 ; [#uses=2 type=i64*] [debug line = 240:3@470:3]
  %t_load_29 = load i64* %t_addr_26, align 16, !dbg !183 ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %tmp_338 = shl i64 %t_load_28, 1, !dbg !184     ; [#uses=1 type=i64] [debug line = 241:3@470:3]
  %tmp6 = add i64 %t_load_29, %t_load_28, !dbg !185 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp7 = add i64 %tmp_337, %tmp_338, !dbg !185   ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp_335_i = add nsw i64 %tmp7, %tmp6, !dbg !185 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  store i64 %tmp_335_i, i64* %t_addr_26, align 16, !dbg !185 ; [debug line = 242:3@470:3]
  %t_addr_27 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !186 ; [#uses=1 type=i64*] [debug line = 243:3@470:3]
  %t_load_30 = load i64* %t_addr_27, align 8, !dbg !186 ; [#uses=3 type=i64] [debug line = 243:3@470:3]
  %tmp_339 = shl i64 %t_load_30, 4, !dbg !186     ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %t_addr_28 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !186 ; [#uses=2 type=i64*] [debug line = 243:3@470:3]
  %t_load_31 = load i64* %t_addr_28, align 8, !dbg !186 ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %tmp_340 = shl i64 %t_load_30, 1, !dbg !187     ; [#uses=1 type=i64] [debug line = 244:3@470:3]
  %tmp8 = add i64 %t_load_31, %t_load_30, !dbg !188 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp9 = add i64 %tmp_339, %tmp_340, !dbg !188   ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp_340_i = add nsw i64 %tmp9, %tmp8, !dbg !188 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  store i64 %tmp_340_i, i64* %t_addr_28, align 8, !dbg !188 ; [debug line = 245:3@470:3]
  %t_addr_29 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !189 ; [#uses=1 type=i64*] [debug line = 246:3@470:3]
  %t_load_32 = load i64* %t_addr_29, align 16, !dbg !189 ; [#uses=3 type=i64] [debug line = 246:3@470:3]
  %tmp_341 = shl i64 %t_load_32, 4, !dbg !189     ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %t_addr_30 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !189 ; [#uses=2 type=i64*] [debug line = 246:3@470:3]
  %t_load_33 = load i64* %t_addr_30, align 16, !dbg !189 ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %tmp_342 = shl i64 %t_load_32, 1, !dbg !190     ; [#uses=1 type=i64] [debug line = 247:3@470:3]
  %tmp10 = add i64 %t_load_33, %t_load_32, !dbg !191 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp11 = add i64 %tmp_341, %tmp_342, !dbg !191  ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp_345_i = add nsw i64 %tmp11, %tmp10, !dbg !191 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  store i64 %tmp_345_i, i64* %t_addr_30, align 16, !dbg !191 ; [debug line = 248:3@470:3]
  %t_addr_31 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !192 ; [#uses=1 type=i64*] [debug line = 249:3@470:3]
  %t_load_34 = load i64* %t_addr_31, align 8, !dbg !192 ; [#uses=3 type=i64] [debug line = 249:3@470:3]
  %tmp_343 = shl i64 %t_load_34, 4, !dbg !192     ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %t_addr_32 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !192 ; [#uses=2 type=i64*] [debug line = 249:3@470:3]
  %t_load_35 = load i64* %t_addr_32, align 8, !dbg !192 ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %tmp_344 = shl i64 %t_load_34, 1, !dbg !193     ; [#uses=1 type=i64] [debug line = 250:3@470:3]
  %tmp12 = add i64 %t_load_35, %t_load_34, !dbg !194 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp13 = add i64 %tmp_343, %tmp_344, !dbg !194  ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp_350_i = add nsw i64 %tmp13, %tmp12, !dbg !194 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  store i64 %tmp_350_i, i64* %t_addr_32, align 8, !dbg !194 ; [debug line = 251:3@470:3]
  %t_addr_33 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !195 ; [#uses=1 type=i64*] [debug line = 252:3@470:3]
  %t_load_36 = load i64* %t_addr_33, align 16, !dbg !195 ; [#uses=3 type=i64] [debug line = 252:3@470:3]
  %tmp_345 = shl i64 %t_load_36, 4, !dbg !195     ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %t_addr_34 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !195 ; [#uses=2 type=i64*] [debug line = 252:3@470:3]
  %t_load_37 = load i64* %t_addr_34, align 16, !dbg !195 ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %tmp_346 = shl i64 %t_load_36, 1, !dbg !196     ; [#uses=1 type=i64] [debug line = 253:3@470:3]
  %tmp14 = add i64 %t_load_37, %t_load_36, !dbg !197 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp15 = add i64 %tmp_345, %tmp_346, !dbg !197  ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp_355_i = add nsw i64 %tmp15, %tmp14, !dbg !197 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  store i64 %tmp_355_i, i64* %t_addr_34, align 16, !dbg !197 ; [debug line = 254:3@470:3]
  %t_addr_35 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !198 ; [#uses=1 type=i64*] [debug line = 255:3@470:3]
  %t_load_38 = load i64* %t_addr_35, align 8, !dbg !198 ; [#uses=3 type=i64] [debug line = 255:3@470:3]
  %tmp_347 = shl i64 %t_load_38, 4, !dbg !198     ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %t_addr_36 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !198 ; [#uses=4 type=i64*] [debug line = 255:3@470:3]
  %t_load_39 = load i64* %t_addr_36, align 8, !dbg !198 ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %tmp_348 = shl i64 %t_load_38, 1, !dbg !199     ; [#uses=1 type=i64] [debug line = 256:3@470:3]
  %tmp16 = add i64 %t_load_39, %t_load_38, !dbg !200 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp17 = add i64 %tmp_347, %tmp_348, !dbg !200  ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp_360_i = add nsw i64 %tmp17, %tmp16, !dbg !200 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  store i64 %tmp_360_i, i64* %t_addr_36, align 8, !dbg !200 ; [debug line = 257:3@470:3]
  %t_addr_37 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !201 ; [#uses=4 type=i64*] [debug line = 258:3@470:3]
  %t_load_40 = load i64* %t_addr_37, align 16, !dbg !201 ; [#uses=3 type=i64] [debug line = 258:3@470:3]
  %tmp_349 = shl i64 %t_load_40, 4, !dbg !201     ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %t_load_2 = load i64* %t_addr_2, align 16, !dbg !201 ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %tmp_350 = shl i64 %t_load_40, 1, !dbg !202     ; [#uses=1 type=i64] [debug line = 259:3@470:3]
  %tmp18 = add i64 %t_load_2, %t_load_40, !dbg !203 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp19 = add i64 %tmp_349, %tmp_350, !dbg !203  ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp_365_i = add nsw i64 %tmp19, %tmp18, !dbg !203 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  store i64 %tmp_365_i, i64* %t_addr_2, align 16, !dbg !203 ; [debug line = 260:3@470:3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !204), !dbg !207 ; [debug line = 302:40@471:3] [debug variable = output]
  store i64 0, i64* %t_addr_37, align 16, !dbg !208 ; [debug line = 305:3@471:3]
  br label %1, !dbg !210                          ; [debug line = 307:8@471:3]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]             ; [#uses=4 type=i4]
  %tmp_i = icmp ult i4 %i_i, -6, !dbg !210        ; [#uses=1 type=i1] [debug line = 307:8@471:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit, !dbg !210 ; [debug line = 307:8@471:3]

; <label>:2                                       ; preds = %1
  %tmp_i_11 = zext i4 %i_i to i64, !dbg !212      ; [#uses=1 type=i64] [debug line = 308:17@471:3]
  %t_addr_38 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_11, !dbg !212 ; [#uses=2 type=i64*] [debug line = 308:17@471:3]
  %t_load_41 = load i64* %t_addr_38, align 16, !dbg !212 ; [#uses=3 type=i64] [debug line = 308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %t_load_41}, i64 0, metadata !214), !dbg !218 ; [debug line = 271:24@308:17@471:3] [debug variable = v]
  %tmp_351 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_41, i32 63), !dbg !219 ; [#uses=1 type=i1] [debug line = 276:50@308:17@471:3]
  %tmp_i_i_cast_cast = select i1 %tmp_351, i64 67108863, i64 0, !dbg !221 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp_1064_i_i = add nsw i64 %t_load_41, %tmp_i_i_cast_cast, !dbg !221 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63), !dbg !221 ; [#uses=2 type=i38] [debug line = 280:3@308:17@471:3]
  %over = sext i38 %tmp_397_i_i to i64, !dbg !221 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !222), !dbg !212 ; [debug line = 308:17@471:3] [debug variable = over]
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0), !dbg !223 ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  %tmp_367_i = sub nsw i64 %t_load_41, %tmp_366_i, !dbg !223 ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  store i64 %tmp_367_i, i64* %t_addr_38, align 16, !dbg !223 ; [debug line = 313:5@471:3]
  %tmp_368_i = or i4 %i_i, 1, !dbg !224           ; [#uses=1 type=i4] [debug line = 314:5@471:3]
  %tmp_369_i = zext i4 %tmp_368_i to i64, !dbg !224 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %t_addr_39 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i, !dbg !224 ; [#uses=2 type=i64*] [debug line = 314:5@471:3]
  %t_load_42 = load i64* %t_addr_39, align 8, !dbg !224 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %v_assign_3 = add nsw i64 %t_load_42, %over, !dbg !224 ; [#uses=3 type=i64] [debug line = 314:5@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_3}, i64 0, metadata !225), !dbg !228 ; [debug line = 287:24@322:12@471:3] [debug variable = v]
  %tmp_352 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_3, i32 63), !dbg !229 ; [#uses=1 type=i1] [debug line = 292:50@322:12@471:3]
  %tmp_i10_i_cast_cast = select i1 %tmp_352, i64 33554431, i64 0, !dbg !231 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_3, !dbg !231 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63), !dbg !231 ; [#uses=2 type=i39] [debug line = 296:3@322:12@471:3]
  %over_3 = sext i39 %tmp_399_i_i to i64, !dbg !231 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over_3}, i64 0, metadata !222), !dbg !227 ; [debug line = 322:12@471:3] [debug variable = over]
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0), !dbg !232 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  %tmp_372_i = sub nsw i64 %v_assign_3, %tmp_371_i, !dbg !232 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  store i64 %tmp_372_i, i64* %t_addr_39, align 8, !dbg !232 ; [debug line = 323:5@471:3]
  %i = add i4 %i_i, 2, !dbg !233                  ; [#uses=2 type=i4] [debug line = 324:5@471:3]
  %tmp_373_i = zext i4 %i to i64, !dbg !233       ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %t_addr_40 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i, !dbg !233 ; [#uses=2 type=i64*] [debug line = 324:5@471:3]
  %t_load_43 = load i64* %t_addr_40, align 16, !dbg !233 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %tmp_374_i = add nsw i64 %t_load_43, %over_3, !dbg !233 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  store i64 %tmp_374_i, i64* %t_addr_40, align 16, !dbg !233 ; [debug line = 324:5@471:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !234), !dbg !235 ; [debug line = 307:23@471:3] [debug variable = i]
  br label %1, !dbg !235                          ; [debug line = 307:23@471:3]

freduce_coefficients.exit:                        ; preds = %1
  %t_load_44 = load i64* %t_addr_37, align 16, !dbg !236 ; [#uses=3 type=i64] [debug line = 327:3@471:3]
  %tmp_353 = shl i64 %t_load_44, 4, !dbg !236     ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %t_load_45 = load i64* %t_addr_2, align 16, !dbg !236 ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %tmp_354 = shl i64 %t_load_44, 1, !dbg !237     ; [#uses=1 type=i64] [debug line = 328:3@471:3]
  %tmp21 = add i64 %t_load_44, %t_load_45, !dbg !238 ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %tmp22 = add i64 %tmp_354, %tmp_353, !dbg !238  ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %v_assign_4 = add nsw i64 %tmp21, %tmp22, !dbg !238 ; [#uses=3 type=i64] [debug line = 329:3@471:3]
  store i64 0, i64* %t_addr_37, align 16, !dbg !239 ; [debug line = 331:3@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_4}, i64 0, metadata !240), !dbg !243 ; [debug line = 271:24@336:17@471:3] [debug variable = v]
  %tmp_355 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_4, i32 63), !dbg !244 ; [#uses=1 type=i1] [debug line = 276:50@336:17@471:3]
  %tmp_i13_i_cast_cast = select i1 %tmp_355, i64 67108863, i64 0, !dbg !245 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp_1064_i14_i = add nsw i64 %v_assign_4, %tmp_i13_i_cast_cast, !dbg !245 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63), !dbg !245 ; [#uses=2 type=i38] [debug line = 280:3@336:17@471:3]
  %over_4 = sext i38 %tmp_397_i16_i to i64, !dbg !245 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over_4}, i64 0, metadata !246), !dbg !241 ; [debug line = 336:17@471:3] [debug variable = over]
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0), !dbg !247 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  %tmp_381_i = sub nsw i64 %v_assign_4, %tmp_380_i, !dbg !247 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  store i64 %tmp_381_i, i64* %t_addr_2, align 16, !dbg !247 ; [debug line = 337:5@471:3]
  %t_load_46 = load i64* %t_addr_36, align 8, !dbg !248 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  %tmp_382_i = add nsw i64 %over_4, %t_load_46, !dbg !248 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  store i64 %tmp_382_i, i64* %t_addr_36, align 8, !dbg !248 ; [debug line = 338:5@471:3]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !249), !dbg !257 ; [debug line = 59:20@473:3] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !258), !dbg !259 ; [debug line = 59:31@473:3] [debug variable = src]
  br label %3, !dbg !260                          ; [debug line = 61:6@473:3]

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i2 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_4, %4 ] ; [#uses=3 type=i4]
  %exitcond_i = icmp eq i4 %i_i2, -6, !dbg !260   ; [#uses=1 type=i1] [debug line = 61:6@473:3]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_4 = add i4 %i_i2, 1, !dbg !263               ; [#uses=1 type=i4] [debug line = 61:18@473:3]
  br i1 %exitcond_i, label %_memcpy.exit, label %4, !dbg !260 ; [debug line = 61:6@473:3]

; <label>:4                                       ; preds = %3
  %tmp_i3 = zext i4 %i_i2 to i64, !dbg !264       ; [#uses=2 type=i64] [debug line = 62:3@473:3]
  %t_addr_41 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i3, !dbg !264 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  %t_load_47 = load i64* %t_addr_41, align 8, !dbg !264 ; [#uses=1 type=i64] [debug line = 62:3@473:3]
  %output_addr = getelementptr [10 x i64]* %output, i64 0, i64 %tmp_i3, !dbg !264 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  store i64 %t_load_47, i64* %output_addr, align 8, !dbg !264 ; [debug line = 62:3@473:3]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !266), !dbg !263 ; [debug line = 61:18@473:3] [debug variable = i]
  br label %3, !dbg !263                          ; [debug line = 61:18@473:3]

_memcpy.exit:                                     ; preds = %3
  ret void, !dbg !267                             ; [debug line = 474:1]
}

; [#uses=4]
define internal fastcc void @fsquare([19 x i64]* nocapture %output, [19 x i64]* nocapture %in) {
  %t = alloca [19 x i64], align 16                ; [#uses=23 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !268), !dbg !269 ; [debug line = 462:15] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %in}, i64 0, metadata !270), !dbg !271 ; [debug line = 462:35] [debug variable = in]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !162 ; [debug line = 463:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !165 ; [debug line = 464:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !166), !dbg !168 ; [debug line = 465:7] [debug variable = t]
  call fastcc void @fsquare_inner.2([19 x i64]* %t, [19 x i64]* %in), !dbg !169 ; [debug line = 466:3]
  %t_addr_3 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=4 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !170), !dbg !175 ; [debug line = 229:34@470:3] [debug variable = output]
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !176 ; [#uses=1 type=i64*] [debug line = 234:3@470:3]
  %t_load = load i64* %t_addr, align 16, !dbg !176 ; [#uses=3 type=i64] [debug line = 234:3@470:3]
  %tmp_356 = shl i64 %t_load, 4, !dbg !176        ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %t_addr_42 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !176 ; [#uses=2 type=i64*] [debug line = 234:3@470:3]
  %t_load_48 = load i64* %t_addr_42, align 16, !dbg !176 ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %tmp_357 = shl i64 %t_load, 1, !dbg !178        ; [#uses=1 type=i64] [debug line = 235:3@470:3]
  %tmp = add i64 %t_load_48, %t_load, !dbg !179   ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp3 = add i64 %tmp_356, %tmp_357, !dbg !179   ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp_325_i = add nsw i64 %tmp3, %tmp, !dbg !179 ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  store i64 %tmp_325_i, i64* %t_addr_42, align 16, !dbg !179 ; [debug line = 236:3@470:3]
  %t_addr_43 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !180 ; [#uses=1 type=i64*] [debug line = 237:3@470:3]
  %t_load_49 = load i64* %t_addr_43, align 8, !dbg !180 ; [#uses=3 type=i64] [debug line = 237:3@470:3]
  %tmp_358 = shl i64 %t_load_49, 4, !dbg !180     ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %t_addr_44 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !180 ; [#uses=2 type=i64*] [debug line = 237:3@470:3]
  %t_load_50 = load i64* %t_addr_44, align 8, !dbg !180 ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %tmp_359 = shl i64 %t_load_49, 1, !dbg !181     ; [#uses=1 type=i64] [debug line = 238:3@470:3]
  %tmp4 = add i64 %t_load_50, %t_load_49, !dbg !182 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp5 = add i64 %tmp_358, %tmp_359, !dbg !182   ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp_330_i = add nsw i64 %tmp5, %tmp4, !dbg !182 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  store i64 %tmp_330_i, i64* %t_addr_44, align 8, !dbg !182 ; [debug line = 239:3@470:3]
  %t_addr_45 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !183 ; [#uses=1 type=i64*] [debug line = 240:3@470:3]
  %t_load_51 = load i64* %t_addr_45, align 16, !dbg !183 ; [#uses=3 type=i64] [debug line = 240:3@470:3]
  %tmp_360 = shl i64 %t_load_51, 4, !dbg !183     ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %t_addr_46 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !183 ; [#uses=2 type=i64*] [debug line = 240:3@470:3]
  %t_load_52 = load i64* %t_addr_46, align 16, !dbg !183 ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %tmp_361 = shl i64 %t_load_51, 1, !dbg !184     ; [#uses=1 type=i64] [debug line = 241:3@470:3]
  %tmp6 = add i64 %t_load_52, %t_load_51, !dbg !185 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp7 = add i64 %tmp_360, %tmp_361, !dbg !185   ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp_335_i = add nsw i64 %tmp7, %tmp6, !dbg !185 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  store i64 %tmp_335_i, i64* %t_addr_46, align 16, !dbg !185 ; [debug line = 242:3@470:3]
  %t_addr_47 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !186 ; [#uses=1 type=i64*] [debug line = 243:3@470:3]
  %t_load_53 = load i64* %t_addr_47, align 8, !dbg !186 ; [#uses=3 type=i64] [debug line = 243:3@470:3]
  %tmp_362 = shl i64 %t_load_53, 4, !dbg !186     ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %t_addr_48 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !186 ; [#uses=2 type=i64*] [debug line = 243:3@470:3]
  %t_load_54 = load i64* %t_addr_48, align 8, !dbg !186 ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %tmp_363 = shl i64 %t_load_53, 1, !dbg !187     ; [#uses=1 type=i64] [debug line = 244:3@470:3]
  %tmp8 = add i64 %t_load_54, %t_load_53, !dbg !188 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp9 = add i64 %tmp_362, %tmp_363, !dbg !188   ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp_340_i = add nsw i64 %tmp9, %tmp8, !dbg !188 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  store i64 %tmp_340_i, i64* %t_addr_48, align 8, !dbg !188 ; [debug line = 245:3@470:3]
  %t_addr_49 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !189 ; [#uses=1 type=i64*] [debug line = 246:3@470:3]
  %t_load_55 = load i64* %t_addr_49, align 16, !dbg !189 ; [#uses=3 type=i64] [debug line = 246:3@470:3]
  %tmp_364 = shl i64 %t_load_55, 4, !dbg !189     ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %t_addr_50 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !189 ; [#uses=2 type=i64*] [debug line = 246:3@470:3]
  %t_load_56 = load i64* %t_addr_50, align 16, !dbg !189 ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %tmp_365 = shl i64 %t_load_55, 1, !dbg !190     ; [#uses=1 type=i64] [debug line = 247:3@470:3]
  %tmp10 = add i64 %t_load_56, %t_load_55, !dbg !191 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp11 = add i64 %tmp_364, %tmp_365, !dbg !191  ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp_345_i = add nsw i64 %tmp11, %tmp10, !dbg !191 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  store i64 %tmp_345_i, i64* %t_addr_50, align 16, !dbg !191 ; [debug line = 248:3@470:3]
  %t_addr_51 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !192 ; [#uses=1 type=i64*] [debug line = 249:3@470:3]
  %t_load_57 = load i64* %t_addr_51, align 8, !dbg !192 ; [#uses=3 type=i64] [debug line = 249:3@470:3]
  %tmp_366 = shl i64 %t_load_57, 4, !dbg !192     ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %t_addr_52 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !192 ; [#uses=2 type=i64*] [debug line = 249:3@470:3]
  %t_load_58 = load i64* %t_addr_52, align 8, !dbg !192 ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %tmp_367 = shl i64 %t_load_57, 1, !dbg !193     ; [#uses=1 type=i64] [debug line = 250:3@470:3]
  %tmp12 = add i64 %t_load_58, %t_load_57, !dbg !194 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp13 = add i64 %tmp_366, %tmp_367, !dbg !194  ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp_350_i = add nsw i64 %tmp13, %tmp12, !dbg !194 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  store i64 %tmp_350_i, i64* %t_addr_52, align 8, !dbg !194 ; [debug line = 251:3@470:3]
  %t_addr_53 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !195 ; [#uses=1 type=i64*] [debug line = 252:3@470:3]
  %t_load_59 = load i64* %t_addr_53, align 16, !dbg !195 ; [#uses=3 type=i64] [debug line = 252:3@470:3]
  %tmp_368 = shl i64 %t_load_59, 4, !dbg !195     ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %t_addr_54 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !195 ; [#uses=2 type=i64*] [debug line = 252:3@470:3]
  %t_load_60 = load i64* %t_addr_54, align 16, !dbg !195 ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %tmp_369 = shl i64 %t_load_59, 1, !dbg !196     ; [#uses=1 type=i64] [debug line = 253:3@470:3]
  %tmp14 = add i64 %t_load_60, %t_load_59, !dbg !197 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp15 = add i64 %tmp_368, %tmp_369, !dbg !197  ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp_355_i = add nsw i64 %tmp15, %tmp14, !dbg !197 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  store i64 %tmp_355_i, i64* %t_addr_54, align 16, !dbg !197 ; [debug line = 254:3@470:3]
  %t_addr_55 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !198 ; [#uses=1 type=i64*] [debug line = 255:3@470:3]
  %t_load_61 = load i64* %t_addr_55, align 8, !dbg !198 ; [#uses=3 type=i64] [debug line = 255:3@470:3]
  %tmp_370 = shl i64 %t_load_61, 4, !dbg !198     ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %t_addr_56 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !198 ; [#uses=4 type=i64*] [debug line = 255:3@470:3]
  %t_load_62 = load i64* %t_addr_56, align 8, !dbg !198 ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %tmp_371 = shl i64 %t_load_61, 1, !dbg !199     ; [#uses=1 type=i64] [debug line = 256:3@470:3]
  %tmp16 = add i64 %t_load_62, %t_load_61, !dbg !200 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp17 = add i64 %tmp_370, %tmp_371, !dbg !200  ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp_360_i = add nsw i64 %tmp17, %tmp16, !dbg !200 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  store i64 %tmp_360_i, i64* %t_addr_56, align 8, !dbg !200 ; [debug line = 257:3@470:3]
  %t_addr_57 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !201 ; [#uses=4 type=i64*] [debug line = 258:3@470:3]
  %t_load_63 = load i64* %t_addr_57, align 16, !dbg !201 ; [#uses=3 type=i64] [debug line = 258:3@470:3]
  %tmp_372 = shl i64 %t_load_63, 4, !dbg !201     ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %t_load_3 = load i64* %t_addr_3, align 16, !dbg !201 ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %tmp_373 = shl i64 %t_load_63, 1, !dbg !202     ; [#uses=1 type=i64] [debug line = 259:3@470:3]
  %tmp18 = add i64 %t_load_3, %t_load_63, !dbg !203 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp19 = add i64 %tmp_372, %tmp_373, !dbg !203  ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp_365_i = add nsw i64 %tmp19, %tmp18, !dbg !203 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  store i64 %tmp_365_i, i64* %t_addr_3, align 16, !dbg !203 ; [debug line = 260:3@470:3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !204), !dbg !207 ; [debug line = 302:40@471:3] [debug variable = output]
  store i64 0, i64* %t_addr_57, align 16, !dbg !208 ; [debug line = 305:3@471:3]
  br label %1, !dbg !210                          ; [debug line = 307:8@471:3]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]             ; [#uses=4 type=i4]
  %tmp_i = icmp ult i4 %i_i, -6, !dbg !210        ; [#uses=1 type=i1] [debug line = 307:8@471:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit, !dbg !210 ; [debug line = 307:8@471:3]

; <label>:2                                       ; preds = %1
  %tmp_i_13 = zext i4 %i_i to i64, !dbg !212      ; [#uses=1 type=i64] [debug line = 308:17@471:3]
  %t_addr_58 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_13, !dbg !212 ; [#uses=2 type=i64*] [debug line = 308:17@471:3]
  %t_load_64 = load i64* %t_addr_58, align 16, !dbg !212 ; [#uses=3 type=i64] [debug line = 308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %t_load_64}, i64 0, metadata !214), !dbg !218 ; [debug line = 271:24@308:17@471:3] [debug variable = v]
  %tmp_374 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_64, i32 63), !dbg !219 ; [#uses=1 type=i1] [debug line = 276:50@308:17@471:3]
  %tmp_i_i_cast_cast = select i1 %tmp_374, i64 67108863, i64 0, !dbg !221 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp_1064_i_i = add nsw i64 %t_load_64, %tmp_i_i_cast_cast, !dbg !221 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63), !dbg !221 ; [#uses=2 type=i38] [debug line = 280:3@308:17@471:3]
  %over = sext i38 %tmp_397_i_i to i64, !dbg !221 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !222), !dbg !212 ; [debug line = 308:17@471:3] [debug variable = over]
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0), !dbg !223 ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  %tmp_367_i = sub nsw i64 %t_load_64, %tmp_366_i, !dbg !223 ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  store i64 %tmp_367_i, i64* %t_addr_58, align 16, !dbg !223 ; [debug line = 313:5@471:3]
  %tmp_368_i = or i4 %i_i, 1, !dbg !224           ; [#uses=1 type=i4] [debug line = 314:5@471:3]
  %tmp_369_i = zext i4 %tmp_368_i to i64, !dbg !224 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %t_addr_59 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i, !dbg !224 ; [#uses=2 type=i64*] [debug line = 314:5@471:3]
  %t_load_65 = load i64* %t_addr_59, align 8, !dbg !224 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %v_assign_5 = add nsw i64 %t_load_65, %over, !dbg !224 ; [#uses=3 type=i64] [debug line = 314:5@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_5}, i64 0, metadata !225), !dbg !228 ; [debug line = 287:24@322:12@471:3] [debug variable = v]
  %tmp_375 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_5, i32 63), !dbg !229 ; [#uses=1 type=i1] [debug line = 292:50@322:12@471:3]
  %tmp_i10_i_cast_cast = select i1 %tmp_375, i64 33554431, i64 0, !dbg !231 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_5, !dbg !231 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63), !dbg !231 ; [#uses=2 type=i39] [debug line = 296:3@322:12@471:3]
  %over_5 = sext i39 %tmp_399_i_i to i64, !dbg !231 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over_5}, i64 0, metadata !222), !dbg !227 ; [debug line = 322:12@471:3] [debug variable = over]
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0), !dbg !232 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  %tmp_372_i = sub nsw i64 %v_assign_5, %tmp_371_i, !dbg !232 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  store i64 %tmp_372_i, i64* %t_addr_59, align 8, !dbg !232 ; [debug line = 323:5@471:3]
  %i = add i4 %i_i, 2, !dbg !233                  ; [#uses=2 type=i4] [debug line = 324:5@471:3]
  %tmp_373_i = zext i4 %i to i64, !dbg !233       ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %t_addr_60 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i, !dbg !233 ; [#uses=2 type=i64*] [debug line = 324:5@471:3]
  %t_load_66 = load i64* %t_addr_60, align 16, !dbg !233 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %tmp_374_i = add nsw i64 %t_load_66, %over_5, !dbg !233 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  store i64 %tmp_374_i, i64* %t_addr_60, align 16, !dbg !233 ; [debug line = 324:5@471:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !234), !dbg !235 ; [debug line = 307:23@471:3] [debug variable = i]
  br label %1, !dbg !235                          ; [debug line = 307:23@471:3]

freduce_coefficients.exit:                        ; preds = %1
  %t_load_67 = load i64* %t_addr_57, align 16, !dbg !236 ; [#uses=3 type=i64] [debug line = 327:3@471:3]
  %tmp_376 = shl i64 %t_load_67, 4, !dbg !236     ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %t_load_68 = load i64* %t_addr_3, align 16, !dbg !236 ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %tmp_377 = shl i64 %t_load_67, 1, !dbg !237     ; [#uses=1 type=i64] [debug line = 328:3@471:3]
  %tmp21 = add i64 %t_load_67, %t_load_68, !dbg !238 ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %tmp22 = add i64 %tmp_377, %tmp_376, !dbg !238  ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %v_assign_6 = add nsw i64 %tmp21, %tmp22, !dbg !238 ; [#uses=3 type=i64] [debug line = 329:3@471:3]
  store i64 0, i64* %t_addr_57, align 16, !dbg !239 ; [debug line = 331:3@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_6}, i64 0, metadata !240), !dbg !243 ; [debug line = 271:24@336:17@471:3] [debug variable = v]
  %tmp_378 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_6, i32 63), !dbg !244 ; [#uses=1 type=i1] [debug line = 276:50@336:17@471:3]
  %tmp_i13_i_cast_cast = select i1 %tmp_378, i64 67108863, i64 0, !dbg !245 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp_1064_i14_i = add nsw i64 %v_assign_6, %tmp_i13_i_cast_cast, !dbg !245 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63), !dbg !245 ; [#uses=2 type=i38] [debug line = 280:3@336:17@471:3]
  %over_6 = sext i38 %tmp_397_i16_i to i64, !dbg !245 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over_6}, i64 0, metadata !246), !dbg !241 ; [debug line = 336:17@471:3] [debug variable = over]
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0), !dbg !247 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  %tmp_381_i = sub nsw i64 %v_assign_6, %tmp_380_i, !dbg !247 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  store i64 %tmp_381_i, i64* %t_addr_3, align 16, !dbg !247 ; [debug line = 337:5@471:3]
  %t_load_69 = load i64* %t_addr_56, align 8, !dbg !248 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  %tmp_382_i = add nsw i64 %over_6, %t_load_69, !dbg !248 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  store i64 %tmp_382_i, i64* %t_addr_56, align 8, !dbg !248 ; [debug line = 338:5@471:3]
  br label %3, !dbg !260                          ; [debug line = 61:6@473:3]

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i2 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_5, %4 ] ; [#uses=3 type=i4]
  %exitcond_i = icmp eq i4 %i_i2, -6, !dbg !260   ; [#uses=1 type=i1] [debug line = 61:6@473:3]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_i2, 1, !dbg !263               ; [#uses=1 type=i4] [debug line = 61:18@473:3]
  br i1 %exitcond_i, label %_memcpy.1.exit, label %4, !dbg !260 ; [debug line = 61:6@473:3]

; <label>:4                                       ; preds = %3
  %tmp_i3 = zext i4 %i_i2 to i64, !dbg !264       ; [#uses=2 type=i64] [debug line = 62:3@473:3]
  %t_addr_61 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i3, !dbg !264 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  %t_load_70 = load i64* %t_addr_61, align 8, !dbg !264 ; [#uses=1 type=i64] [debug line = 62:3@473:3]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 %tmp_i3, !dbg !264 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  store i64 %t_load_70, i64* %output_addr, align 8, !dbg !264 ; [debug line = 62:3@473:3]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !266), !dbg !263 ; [debug line = 61:18@473:3] [debug variable = i]
  br label %3, !dbg !263                          ; [debug line = 61:18@473:3]

_memcpy.1.exit:                                   ; preds = %3
  ret void, !dbg !267                             ; [debug line = 474:1]
}

; [#uses=5]
define internal fastcc void @freduce_degree([19 x i64]* nocapture %output) {
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !272), !dbg !273 ; [debug line = 229:34] [debug variable = output]
  %output_addr_54 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !274 ; [#uses=1 type=i64*] [debug line = 234:3]
  %output_load = load i64* %output_addr_54, align 8, !dbg !274 ; [#uses=3 type=i64] [debug line = 234:3]
  %tmp = shl i64 %output_load, 4, !dbg !274       ; [#uses=1 type=i64] [debug line = 234:3]
  %output_addr_55 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !274 ; [#uses=2 type=i64*] [debug line = 234:3]
  %output_load_2 = load i64* %output_addr_55, align 8, !dbg !274 ; [#uses=1 type=i64] [debug line = 234:3]
  %tmp_379 = shl i64 %output_load, 1, !dbg !275   ; [#uses=1 type=i64] [debug line = 235:3]
  %tmp1 = add i64 %output_load_2, %output_load, !dbg !276 ; [#uses=1 type=i64] [debug line = 236:3]
  %tmp2 = add i64 %tmp, %tmp_379, !dbg !276       ; [#uses=1 type=i64] [debug line = 236:3]
  %tmp_291 = add nsw i64 %tmp2, %tmp1, !dbg !276  ; [#uses=1 type=i64] [debug line = 236:3]
  store i64 %tmp_291, i64* %output_addr_55, align 8, !dbg !276 ; [debug line = 236:3]
  %output_addr_56 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !277 ; [#uses=1 type=i64*] [debug line = 237:3]
  %output_load_3 = load i64* %output_addr_56, align 8, !dbg !277 ; [#uses=3 type=i64] [debug line = 237:3]
  %tmp_380 = shl i64 %output_load_3, 4, !dbg !277 ; [#uses=1 type=i64] [debug line = 237:3]
  %output_addr_57 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !277 ; [#uses=2 type=i64*] [debug line = 237:3]
  %output_load_4 = load i64* %output_addr_57, align 8, !dbg !277 ; [#uses=1 type=i64] [debug line = 237:3]
  %tmp_381 = shl i64 %output_load_3, 1, !dbg !278 ; [#uses=1 type=i64] [debug line = 238:3]
  %tmp3 = add i64 %output_load_4, %output_load_3, !dbg !279 ; [#uses=1 type=i64] [debug line = 239:3]
  %tmp4 = add i64 %tmp_380, %tmp_381, !dbg !279   ; [#uses=1 type=i64] [debug line = 239:3]
  %tmp_292 = add nsw i64 %tmp4, %tmp3, !dbg !279  ; [#uses=1 type=i64] [debug line = 239:3]
  store i64 %tmp_292, i64* %output_addr_57, align 8, !dbg !279 ; [debug line = 239:3]
  %output_addr_58 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !280 ; [#uses=1 type=i64*] [debug line = 240:3]
  %output_load_5 = load i64* %output_addr_58, align 8, !dbg !280 ; [#uses=3 type=i64] [debug line = 240:3]
  %tmp_382 = shl i64 %output_load_5, 4, !dbg !280 ; [#uses=1 type=i64] [debug line = 240:3]
  %output_addr_59 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !280 ; [#uses=2 type=i64*] [debug line = 240:3]
  %output_load_6 = load i64* %output_addr_59, align 8, !dbg !280 ; [#uses=1 type=i64] [debug line = 240:3]
  %tmp_383 = shl i64 %output_load_5, 1, !dbg !281 ; [#uses=1 type=i64] [debug line = 241:3]
  %tmp5 = add i64 %output_load_6, %output_load_5, !dbg !282 ; [#uses=1 type=i64] [debug line = 242:3]
  %tmp6 = add i64 %tmp_382, %tmp_383, !dbg !282   ; [#uses=1 type=i64] [debug line = 242:3]
  %tmp_293 = add nsw i64 %tmp6, %tmp5, !dbg !282  ; [#uses=1 type=i64] [debug line = 242:3]
  store i64 %tmp_293, i64* %output_addr_59, align 8, !dbg !282 ; [debug line = 242:3]
  %output_addr_60 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !283 ; [#uses=1 type=i64*] [debug line = 243:3]
  %output_load_7 = load i64* %output_addr_60, align 8, !dbg !283 ; [#uses=3 type=i64] [debug line = 243:3]
  %tmp_384 = shl i64 %output_load_7, 4, !dbg !283 ; [#uses=1 type=i64] [debug line = 243:3]
  %output_addr_61 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !283 ; [#uses=2 type=i64*] [debug line = 243:3]
  %output_load_8 = load i64* %output_addr_61, align 8, !dbg !283 ; [#uses=1 type=i64] [debug line = 243:3]
  %tmp_385 = shl i64 %output_load_7, 1, !dbg !284 ; [#uses=1 type=i64] [debug line = 244:3]
  %tmp7 = add i64 %output_load_8, %output_load_7, !dbg !285 ; [#uses=1 type=i64] [debug line = 245:3]
  %tmp8 = add i64 %tmp_384, %tmp_385, !dbg !285   ; [#uses=1 type=i64] [debug line = 245:3]
  %tmp_294 = add nsw i64 %tmp8, %tmp7, !dbg !285  ; [#uses=1 type=i64] [debug line = 245:3]
  store i64 %tmp_294, i64* %output_addr_61, align 8, !dbg !285 ; [debug line = 245:3]
  %output_addr_62 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !286 ; [#uses=1 type=i64*] [debug line = 246:3]
  %output_load_9 = load i64* %output_addr_62, align 8, !dbg !286 ; [#uses=3 type=i64] [debug line = 246:3]
  %tmp_386 = shl i64 %output_load_9, 4, !dbg !286 ; [#uses=1 type=i64] [debug line = 246:3]
  %output_addr_63 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !286 ; [#uses=2 type=i64*] [debug line = 246:3]
  %output_load_10 = load i64* %output_addr_63, align 8, !dbg !286 ; [#uses=1 type=i64] [debug line = 246:3]
  %tmp_387 = shl i64 %output_load_9, 1, !dbg !287 ; [#uses=1 type=i64] [debug line = 247:3]
  %tmp9 = add i64 %output_load_10, %output_load_9, !dbg !288 ; [#uses=1 type=i64] [debug line = 248:3]
  %tmp10 = add i64 %tmp_386, %tmp_387, !dbg !288  ; [#uses=1 type=i64] [debug line = 248:3]
  %tmp_295 = add nsw i64 %tmp10, %tmp9, !dbg !288 ; [#uses=1 type=i64] [debug line = 248:3]
  store i64 %tmp_295, i64* %output_addr_63, align 8, !dbg !288 ; [debug line = 248:3]
  %output_addr_64 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !289 ; [#uses=1 type=i64*] [debug line = 249:3]
  %output_load_11 = load i64* %output_addr_64, align 8, !dbg !289 ; [#uses=3 type=i64] [debug line = 249:3]
  %tmp_388 = shl i64 %output_load_11, 4, !dbg !289 ; [#uses=1 type=i64] [debug line = 249:3]
  %output_addr_65 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !289 ; [#uses=2 type=i64*] [debug line = 249:3]
  %output_load_12 = load i64* %output_addr_65, align 8, !dbg !289 ; [#uses=1 type=i64] [debug line = 249:3]
  %tmp_389 = shl i64 %output_load_11, 1, !dbg !290 ; [#uses=1 type=i64] [debug line = 250:3]
  %tmp11 = add i64 %output_load_12, %output_load_11, !dbg !291 ; [#uses=1 type=i64] [debug line = 251:3]
  %tmp12 = add i64 %tmp_388, %tmp_389, !dbg !291  ; [#uses=1 type=i64] [debug line = 251:3]
  %tmp_s = add nsw i64 %tmp12, %tmp11, !dbg !291  ; [#uses=1 type=i64] [debug line = 251:3]
  store i64 %tmp_s, i64* %output_addr_65, align 8, !dbg !291 ; [debug line = 251:3]
  %output_addr_66 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !292 ; [#uses=1 type=i64*] [debug line = 252:3]
  %output_load_13 = load i64* %output_addr_66, align 8, !dbg !292 ; [#uses=3 type=i64] [debug line = 252:3]
  %tmp_390 = shl i64 %output_load_13, 4, !dbg !292 ; [#uses=1 type=i64] [debug line = 252:3]
  %output_addr_67 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !292 ; [#uses=2 type=i64*] [debug line = 252:3]
  %output_load_14 = load i64* %output_addr_67, align 8, !dbg !292 ; [#uses=1 type=i64] [debug line = 252:3]
  %tmp_391 = shl i64 %output_load_13, 1, !dbg !293 ; [#uses=1 type=i64] [debug line = 253:3]
  %tmp13 = add i64 %output_load_14, %output_load_13, !dbg !294 ; [#uses=1 type=i64] [debug line = 254:3]
  %tmp14 = add i64 %tmp_390, %tmp_391, !dbg !294  ; [#uses=1 type=i64] [debug line = 254:3]
  %tmp_296 = add nsw i64 %tmp14, %tmp13, !dbg !294 ; [#uses=1 type=i64] [debug line = 254:3]
  store i64 %tmp_296, i64* %output_addr_67, align 8, !dbg !294 ; [debug line = 254:3]
  %output_addr_68 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !295 ; [#uses=1 type=i64*] [debug line = 255:3]
  %output_load_15 = load i64* %output_addr_68, align 8, !dbg !295 ; [#uses=3 type=i64] [debug line = 255:3]
  %tmp_392 = shl i64 %output_load_15, 4, !dbg !295 ; [#uses=1 type=i64] [debug line = 255:3]
  %output_addr_69 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !295 ; [#uses=2 type=i64*] [debug line = 255:3]
  %output_load_16 = load i64* %output_addr_69, align 8, !dbg !295 ; [#uses=1 type=i64] [debug line = 255:3]
  %tmp_393 = shl i64 %output_load_15, 1, !dbg !296 ; [#uses=1 type=i64] [debug line = 256:3]
  %tmp15 = add i64 %output_load_16, %output_load_15, !dbg !297 ; [#uses=1 type=i64] [debug line = 257:3]
  %tmp16 = add i64 %tmp_392, %tmp_393, !dbg !297  ; [#uses=1 type=i64] [debug line = 257:3]
  %tmp_297 = add nsw i64 %tmp16, %tmp15, !dbg !297 ; [#uses=1 type=i64] [debug line = 257:3]
  store i64 %tmp_297, i64* %output_addr_69, align 8, !dbg !297 ; [debug line = 257:3]
  %output_addr_70 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !298 ; [#uses=1 type=i64*] [debug line = 258:3]
  %output_load_17 = load i64* %output_addr_70, align 8, !dbg !298 ; [#uses=3 type=i64] [debug line = 258:3]
  %tmp_394 = shl i64 %output_load_17, 4, !dbg !298 ; [#uses=1 type=i64] [debug line = 258:3]
  %output_load_18 = load i64* %output_addr, align 8, !dbg !298 ; [#uses=1 type=i64] [debug line = 258:3]
  %tmp_395 = shl i64 %output_load_17, 1, !dbg !299 ; [#uses=1 type=i64] [debug line = 259:3]
  %tmp17 = add i64 %output_load_18, %output_load_17, !dbg !300 ; [#uses=1 type=i64] [debug line = 260:3]
  %tmp18 = add i64 %tmp_394, %tmp_395, !dbg !300  ; [#uses=1 type=i64] [debug line = 260:3]
  %tmp_298 = add nsw i64 %tmp18, %tmp17, !dbg !300 ; [#uses=1 type=i64] [debug line = 260:3]
  store i64 %tmp_298, i64* %output_addr, align 8, !dbg !300 ; [debug line = 260:3]
  ret void, !dbg !301                             ; [debug line = 261:1]
}

; [#uses=6]
define internal fastcc void @freduce_coefficients([19 x i64]* nocapture %output) {
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !302), !dbg !303 ; [debug line = 302:40] [debug variable = output]
  %output_addr_71 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !304 ; [#uses=3 type=i64*] [debug line = 305:3]
  store i64 0, i64* %output_addr_71, align 8, !dbg !304 ; [debug line = 305:3]
  br label %1, !dbg !305                          ; [debug line = 307:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %tmp = icmp ult i4 %i, -6, !dbg !305            ; [#uses=1 type=i1] [debug line = 307:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp, label %2, label %3, !dbg !305       ; [debug line = 307:8]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i4 %i to i64, !dbg !306           ; [#uses=1 type=i64] [debug line = 308:17]
  %output_addr_72 = getelementptr [19 x i64]* %output, i64 0, i64 %tmp_s, !dbg !306 ; [#uses=2 type=i64*] [debug line = 308:17]
  %output_load_23 = load i64* %output_addr_72, align 8, !dbg !306 ; [#uses=3 type=i64] [debug line = 308:17]
  call void @llvm.dbg.value(metadata !{i64 %output_load_23}, i64 0, metadata !307), !dbg !308 ; [debug line = 271:24@308:17] [debug variable = v]
  %tmp_396 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %output_load_23, i32 63), !dbg !309 ; [#uses=1 type=i1] [debug line = 276:50@308:17]
  %tmp_i_cast_cast = select i1 %tmp_396, i64 67108863, i64 0, !dbg !310 ; [#uses=1 type=i64] [debug line = 280:3@308:17]
  %tmp_1064_i = add nsw i64 %output_load_23, %tmp_i_cast_cast, !dbg !310 ; [#uses=1 type=i64] [debug line = 280:3@308:17]
  %tmp_397_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i, i32 26, i32 63), !dbg !310 ; [#uses=2 type=i38] [debug line = 280:3@308:17]
  %over = sext i38 %tmp_397_i to i64, !dbg !310   ; [#uses=1 type=i64] [debug line = 280:3@308:17]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !311), !dbg !306 ; [debug line = 308:17] [debug variable = over]
  %tmp_299 = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i, i26 0), !dbg !312 ; [#uses=1 type=i64] [debug line = 313:5]
  %tmp_300 = sub nsw i64 %output_load_23, %tmp_299, !dbg !312 ; [#uses=1 type=i64] [debug line = 313:5]
  store i64 %tmp_300, i64* %output_addr_72, align 8, !dbg !312 ; [debug line = 313:5]
  %tmp_301 = or i4 %i, 1, !dbg !313               ; [#uses=1 type=i4] [debug line = 314:5]
  %tmp_302 = zext i4 %tmp_301 to i64, !dbg !313   ; [#uses=1 type=i64] [debug line = 314:5]
  %output_addr_73 = getelementptr [19 x i64]* %output, i64 0, i64 %tmp_302, !dbg !313 ; [#uses=2 type=i64*] [debug line = 314:5]
  %output_load = load i64* %output_addr_73, align 8, !dbg !313 ; [#uses=1 type=i64] [debug line = 314:5]
  %v_assign_7 = add nsw i64 %output_load, %over, !dbg !313 ; [#uses=3 type=i64] [debug line = 314:5]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_7}, i64 0, metadata !314), !dbg !316 ; [debug line = 287:24@322:12] [debug variable = v]
  %tmp_397 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_7, i32 63), !dbg !317 ; [#uses=1 type=i1] [debug line = 292:50@322:12]
  %tmp_i1_cast_cast = select i1 %tmp_397, i64 33554431, i64 0, !dbg !318 ; [#uses=1 type=i64] [debug line = 296:3@322:12]
  %tmp_1066_i = add nsw i64 %tmp_i1_cast_cast, %v_assign_7, !dbg !318 ; [#uses=1 type=i64] [debug line = 296:3@322:12]
  %tmp_399_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i, i32 25, i32 63), !dbg !318 ; [#uses=2 type=i39] [debug line = 296:3@322:12]
  %over_7 = sext i39 %tmp_399_i to i64, !dbg !318 ; [#uses=1 type=i64] [debug line = 296:3@322:12]
  call void @llvm.dbg.value(metadata !{i64 %over_7}, i64 0, metadata !311), !dbg !315 ; [debug line = 322:12] [debug variable = over]
  %tmp_303 = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i, i25 0), !dbg !319 ; [#uses=1 type=i64] [debug line = 323:5]
  %tmp_304 = sub nsw i64 %v_assign_7, %tmp_303, !dbg !319 ; [#uses=1 type=i64] [debug line = 323:5]
  store i64 %tmp_304, i64* %output_addr_73, align 8, !dbg !319 ; [debug line = 323:5]
  %i_4 = add i4 %i, 2, !dbg !320                  ; [#uses=2 type=i4] [debug line = 324:5]
  %tmp_305 = zext i4 %i_4 to i64, !dbg !320       ; [#uses=1 type=i64] [debug line = 324:5]
  %output_addr_74 = getelementptr [19 x i64]* %output, i64 0, i64 %tmp_305, !dbg !320 ; [#uses=2 type=i64*] [debug line = 324:5]
  %output_load_19 = load i64* %output_addr_74, align 8, !dbg !320 ; [#uses=1 type=i64] [debug line = 324:5]
  %tmp_306 = add nsw i64 %output_load_19, %over_7, !dbg !320 ; [#uses=1 type=i64] [debug line = 324:5]
  store i64 %tmp_306, i64* %output_addr_74, align 8, !dbg !320 ; [debug line = 324:5]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !321), !dbg !322 ; [debug line = 307:23] [debug variable = i]
  br label %1, !dbg !322                          ; [debug line = 307:23]

; <label>:3                                       ; preds = %1
  %output_load_20 = load i64* %output_addr_71, align 8, !dbg !323 ; [#uses=3 type=i64] [debug line = 327:3]
  %tmp_398 = shl i64 %output_load_20, 4, !dbg !323 ; [#uses=1 type=i64] [debug line = 327:3]
  %output_load_21 = load i64* %output_addr, align 8, !dbg !323 ; [#uses=1 type=i64] [debug line = 327:3]
  %tmp_399 = shl i64 %output_load_20, 1, !dbg !324 ; [#uses=1 type=i64] [debug line = 328:3]
  %tmp2 = add i64 %output_load_20, %output_load_21, !dbg !325 ; [#uses=1 type=i64] [debug line = 329:3]
  %tmp3 = add i64 %tmp_399, %tmp_398, !dbg !325   ; [#uses=1 type=i64] [debug line = 329:3]
  %v_assign_8 = add nsw i64 %tmp2, %tmp3, !dbg !325 ; [#uses=3 type=i64] [debug line = 329:3]
  store i64 0, i64* %output_addr_71, align 8, !dbg !326 ; [debug line = 331:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_8}, i64 0, metadata !327), !dbg !329 ; [debug line = 271:24@336:17] [debug variable = v]
  %tmp_400 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_8, i32 63), !dbg !330 ; [#uses=1 type=i1] [debug line = 276:50@336:17]
  %tmp_i2_cast_cast = select i1 %tmp_400, i64 67108863, i64 0, !dbg !331 ; [#uses=1 type=i64] [debug line = 280:3@336:17]
  %tmp_1064_i1 = add nsw i64 %v_assign_8, %tmp_i2_cast_cast, !dbg !331 ; [#uses=1 type=i64] [debug line = 280:3@336:17]
  %tmp_397_i1 = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i1, i32 26, i32 63), !dbg !331 ; [#uses=2 type=i38] [debug line = 280:3@336:17]
  %over_8 = sext i38 %tmp_397_i1 to i64, !dbg !331 ; [#uses=1 type=i64] [debug line = 280:3@336:17]
  call void @llvm.dbg.value(metadata !{i64 %over_8}, i64 0, metadata !332), !dbg !328 ; [debug line = 336:17] [debug variable = over]
  %tmp_307 = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i1, i26 0), !dbg !333 ; [#uses=1 type=i64] [debug line = 337:5]
  %tmp_308 = sub nsw i64 %v_assign_8, %tmp_307, !dbg !333 ; [#uses=1 type=i64] [debug line = 337:5]
  store i64 %tmp_308, i64* %output_addr, align 8, !dbg !333 ; [debug line = 337:5]
  %output_addr_75 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !334 ; [#uses=2 type=i64*] [debug line = 338:5]
  %output_load_22 = load i64* %output_addr_75, align 8, !dbg !334 ; [#uses=1 type=i64] [debug line = 338:5]
  %tmp_309 = add nsw i64 %over_8, %output_load_22, !dbg !334 ; [#uses=1 type=i64] [debug line = 338:5]
  store i64 %tmp_309, i64* %output_addr_75, align 8, !dbg !334 ; [debug line = 338:5]
  ret void, !dbg !335                             ; [debug line = 343:1]
}

; [#uses=1]
define internal fastcc void @fproduct.3([19 x i64]* nocapture %output, [10 x i64]* nocapture %in2, [11 x i64]* nocapture %in) {
  %in_addr = getelementptr [11 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %in2_addr = getelementptr [10 x i64]* %in2, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !336 ; [debug line = 121:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !341 ; [debug line = 122:1]
  %in2_load = load i64* %in2_addr, align 8, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp = trunc i64 %in2_load to i32, !dbg !342    ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp_s = sext i32 %tmp to i64, !dbg !342        ; [#uses=10 type=i64] [debug line = 123:2]
  %in_load = load i64* %in_addr, align 8, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp_406 = trunc i64 %in_load to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp_310 = sext i32 %tmp_406 to i64, !dbg !342  ; [#uses=10 type=i64] [debug line = 123:2]
  %tmp_311 = mul nsw i64 %tmp_s, %tmp_310, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  store i64 %tmp_311, i64* %output_addr, align 8, !dbg !342 ; [debug line = 123:2]
  %in_addr_29 = getelementptr [11 x i64]* %in, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in_load_22 = load i64* %in_addr_29, align 8, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_409 = trunc i64 %in_load_22 to i32, !dbg !343 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp_312 = sext i32 %tmp_409 to i64, !dbg !343  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp_313 = mul nsw i64 %tmp_s, %tmp_312, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %in2_addr_1 = getelementptr [10 x i64]* %in2, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in2_load_1 = load i64* %in2_addr_1, align 8, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_422 = trunc i64 %in2_load_1 to i32, !dbg !343 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp_314 = sext i32 %tmp_422 to i64, !dbg !343  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp_315 = mul nsw i64 %tmp_314, %tmp_310, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_316 = add nsw i64 %tmp_313, %tmp_315, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %output_addr_76 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  store i64 %tmp_316, i64* %output_addr_76, align 8, !dbg !343 ; [debug line = 124:3]
  %tmp_317 = sext i32 %tmp_422 to i63, !dbg !344  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_318 = sext i32 %tmp_409 to i63, !dbg !344  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_319 = mul i63 %tmp_317, %tmp_318, !dbg !344 ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_320 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_319, i1 false), !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %in_addr_30 = getelementptr [11 x i64]* %in, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in_load_23 = load i64* %in_addr_30, align 8, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_425 = trunc i64 %in_load_23 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp_321 = sext i32 %tmp_425 to i64, !dbg !344  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp_322 = mul nsw i64 %tmp_s, %tmp_321, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2_addr_2 = getelementptr [10 x i64]* %in2, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in2_load_2 = load i64* %in2_addr_2, align 8, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_437 = trunc i64 %in2_load_2 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp_323 = sext i32 %tmp_437 to i64, !dbg !344  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp_324 = mul nsw i64 %tmp_323, %tmp_310, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp1 = add i64 %tmp_324, %tmp_320, !dbg !344   ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_325 = add i64 %tmp_322, %tmp1, !dbg !344   ; [#uses=1 type=i64] [debug line = 126:3]
  %output_addr_77 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  store i64 %tmp_325, i64* %output_addr_77, align 8, !dbg !344 ; [debug line = 126:3]
  %tmp_326 = mul nsw i64 %tmp_314, %tmp_321, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_327 = mul nsw i64 %tmp_323, %tmp_312, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %in_addr_31 = getelementptr [11 x i64]* %in, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in_load_24 = load i64* %in_addr_31, align 8, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_440 = trunc i64 %in_load_24 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp_328 = sext i32 %tmp_440 to i64, !dbg !345  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp_329 = mul nsw i64 %tmp_s, %tmp_328, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2_addr_3 = getelementptr [10 x i64]* %in2, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in2_load_3 = load i64* %in2_addr_3, align 8, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_486 = trunc i64 %in2_load_3 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp_330 = sext i32 %tmp_486 to i64, !dbg !345  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp_331 = mul nsw i64 %tmp_330, %tmp_310, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp2 = add i64 %tmp_326, %tmp_327, !dbg !345   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp3 = add i64 %tmp_331, %tmp_329, !dbg !345   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_332 = add i64 %tmp2, %tmp3, !dbg !345      ; [#uses=1 type=i64] [debug line = 129:3]
  %output_addr_78 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  store i64 %tmp_332, i64* %output_addr_78, align 8, !dbg !345 ; [debug line = 129:3]
  %tmp_333 = mul nsw i64 %tmp_323, %tmp_321, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_334 = mul nsw i64 %tmp_314, %tmp_328, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_335 = mul nsw i64 %tmp_330, %tmp_312, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_336 = add nsw i64 %tmp_334, %tmp_335, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_487 = shl i64 %tmp_336, 1, !dbg !346       ; [#uses=1 type=i64] [debug line = 133:3]
  %in_addr_32 = getelementptr [11 x i64]* %in, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in_load_25 = load i64* %in_addr_32, align 8, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_500 = trunc i64 %in_load_25 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp_337 = sext i32 %tmp_500 to i64, !dbg !346  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp_338 = mul nsw i64 %tmp_s, %tmp_337, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2_addr_4 = getelementptr [10 x i64]* %in2, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in2_load_4 = load i64* %in2_addr_4, align 8, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_501 = trunc i64 %in2_load_4 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp_339 = sext i32 %tmp_501 to i64, !dbg !346  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp_340 = mul nsw i64 %tmp_339, %tmp_310, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp4 = add i64 %tmp_333, %tmp_487, !dbg !346   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp5 = add i64 %tmp_340, %tmp_338, !dbg !346   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_341 = add i64 %tmp4, %tmp5, !dbg !346      ; [#uses=1 type=i64] [debug line = 133:3]
  %output_addr_79 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  store i64 %tmp_341, i64* %output_addr_79, align 8, !dbg !346 ; [debug line = 133:3]
  %tmp_342 = mul nsw i64 %tmp_323, %tmp_328, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_343 = mul nsw i64 %tmp_330, %tmp_321, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_344 = mul nsw i64 %tmp_314, %tmp_337, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_345 = mul nsw i64 %tmp_339, %tmp_312, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %in_addr_33 = getelementptr [11 x i64]* %in, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in_load_26 = load i64* %in_addr_33, align 8, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_508 = trunc i64 %in_load_26 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp_346 = sext i32 %tmp_508 to i64, !dbg !347  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp_347 = mul nsw i64 %tmp_s, %tmp_346, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2_addr_5 = getelementptr [10 x i64]* %in2, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in2_load_5 = load i64* %in2_addr_5, align 8, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_509 = trunc i64 %in2_load_5 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp_348 = sext i32 %tmp_509 to i64, !dbg !347  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp_349 = mul nsw i64 %tmp_348, %tmp_310, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp7 = add i64 %tmp_344, %tmp_342, !dbg !347   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp6 = add i64 %tmp_343, %tmp7, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp9 = add i64 %tmp_349, %tmp_347, !dbg !347   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp8 = add i64 %tmp_345, %tmp9, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_350 = add i64 %tmp6, %tmp8, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %output_addr_80 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  store i64 %tmp_350, i64* %output_addr_80, align 8, !dbg !347 ; [debug line = 138:3]
  %tmp_353 = mul nsw i64 %tmp_330, %tmp_328, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_354 = mul nsw i64 %tmp_314, %tmp_346, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_355 = mul nsw i64 %tmp_348, %tmp_312, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp10 = add i64 %tmp_355, %tmp_353, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_356 = add i64 %tmp_354, %tmp10, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_510 = shl i64 %tmp_356, 1, !dbg !348       ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_357 = mul nsw i64 %tmp_323, %tmp_337, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_358 = mul nsw i64 %tmp_339, %tmp_321, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %in_addr_34 = getelementptr [11 x i64]* %in, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in_load_27 = load i64* %in_addr_34, align 8, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_511 = trunc i64 %in_load_27 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp_359 = sext i32 %tmp_511 to i64, !dbg !348  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp_360 = mul nsw i64 %tmp_s, %tmp_359, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2_addr_6 = getelementptr [10 x i64]* %in2, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in2_load_6 = load i64* %in2_addr_6, align 8, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_512 = trunc i64 %in2_load_6 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp_361 = sext i32 %tmp_512 to i64, !dbg !348  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp_362 = mul nsw i64 %tmp_361, %tmp_310, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp11 = add i64 %tmp_510, %tmp_357, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp13 = add i64 %tmp_362, %tmp_360, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp12 = add i64 %tmp_358, %tmp13, !dbg !348    ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_363 = add i64 %tmp11, %tmp12, !dbg !348    ; [#uses=1 type=i64] [debug line = 144:3]
  %output_addr_81 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  store i64 %tmp_363, i64* %output_addr_81, align 8, !dbg !348 ; [debug line = 144:3]
  %tmp_364 = mul nsw i64 %tmp_330, %tmp_337, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_365 = mul nsw i64 %tmp_339, %tmp_328, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_366 = mul nsw i64 %tmp_323, %tmp_346, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_367 = mul nsw i64 %tmp_348, %tmp_321, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_368 = mul nsw i64 %tmp_314, %tmp_359, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_369 = mul nsw i64 %tmp_361, %tmp_312, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %in_addr_35 = getelementptr [11 x i64]* %in, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in_load_28 = load i64* %in_addr_35, align 8, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_513 = trunc i64 %in_load_28 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp_370 = sext i32 %tmp_513 to i64, !dbg !349  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp_371 = mul nsw i64 %tmp_s, %tmp_370, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2_addr_7 = getelementptr [10 x i64]* %in2, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in2_load_7 = load i64* %in2_addr_7, align 8, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_514 = trunc i64 %in2_load_7 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp_372 = sext i32 %tmp_514 to i64, !dbg !349  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp_373 = mul nsw i64 %tmp_372, %tmp_310, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp15 = add i64 %tmp_364, %tmp_365, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp16 = add i64 %tmp_367, %tmp_366, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp14 = add i64 %tmp15, %tmp16, !dbg !349      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp18 = add i64 %tmp_369, %tmp_368, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp19 = add i64 %tmp_373, %tmp_371, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp17 = add i64 %tmp18, %tmp19, !dbg !349      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_374 = add i64 %tmp14, %tmp17, !dbg !349    ; [#uses=1 type=i64] [debug line = 151:3]
  %output_addr_82 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  store i64 %tmp_374, i64* %output_addr_82, align 8, !dbg !349 ; [debug line = 151:3]
  %tmp_375 = mul nsw i64 %tmp_339, %tmp_337, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_376 = mul nsw i64 %tmp_330, %tmp_346, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_377 = mul nsw i64 %tmp_348, %tmp_328, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_378 = mul nsw i64 %tmp_314, %tmp_370, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_379 = mul nsw i64 %tmp_372, %tmp_312, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp20 = add i64 %tmp_376, %tmp_377, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp21 = add i64 %tmp_379, %tmp_378, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_515 = trunc i64 %tmp21 to i63              ; [#uses=1 type=i63]
  %tmp_516 = trunc i64 %tmp20 to i63              ; [#uses=1 type=i63]
  %tmp_380 = add i63 %tmp_515, %tmp_516, !dbg !350 ; [#uses=1 type=i63] [debug line = 159:3]
  %tmp_381 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_380, i1 false), !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_382 = mul nsw i64 %tmp_323, %tmp_359, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_383 = mul nsw i64 %tmp_361, %tmp_321, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %in_addr_36 = getelementptr [11 x i64]* %in, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in_load_29 = load i64* %in_addr_36, align 8, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_517 = trunc i64 %in_load_29 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp_384 = sext i32 %tmp_517 to i64, !dbg !350  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp_385 = mul nsw i64 %tmp_s, %tmp_384, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2_addr_8 = getelementptr [10 x i64]* %in2, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in2_load_8 = load i64* %in2_addr_8, align 8, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_518 = trunc i64 %in2_load_8 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp_386 = sext i32 %tmp_518 to i64, !dbg !350  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp_387 = mul nsw i64 %tmp_386, %tmp_310, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp23 = add i64 %tmp_382, %tmp_375, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp22 = add i64 %tmp_381, %tmp23, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp25 = add i64 %tmp_387, %tmp_385, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp24 = add i64 %tmp_383, %tmp25, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_388 = add i64 %tmp22, %tmp24, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %output_addr_83 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  store i64 %tmp_388, i64* %output_addr_83, align 8, !dbg !350 ; [debug line = 159:3]
  %tmp_389 = mul nsw i64 %tmp_339, %tmp_346, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_390 = mul nsw i64 %tmp_348, %tmp_337, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_391 = mul nsw i64 %tmp_330, %tmp_359, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_392 = mul nsw i64 %tmp_361, %tmp_328, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_393 = mul nsw i64 %tmp_323, %tmp_370, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_394 = mul nsw i64 %tmp_372, %tmp_321, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_395 = mul nsw i64 %tmp_314, %tmp_384, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_396 = mul nsw i64 %tmp_386, %tmp_312, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %in_addr_37 = getelementptr [11 x i64]* %in, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in_load_30 = load i64* %in_addr_37, align 8, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_519 = trunc i64 %in_load_30 to i32, !dbg !351 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp_397 = sext i32 %tmp_519 to i64, !dbg !351  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp_398 = mul nsw i64 %tmp_s, %tmp_397, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2_addr_9 = getelementptr [10 x i64]* %in2, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in2_load_9 = load i64* %in2_addr_9, align 8, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_520 = trunc i64 %in2_load_9 to i32, !dbg !351 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp_399 = sext i32 %tmp_520 to i64, !dbg !351  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp_400 = mul nsw i64 %tmp_399, %tmp_310, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp27 = add i64 %tmp_389, %tmp_390, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp29 = add i64 %tmp_393, %tmp_392, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp28 = add i64 %tmp_391, %tmp29, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp26 = add i64 %tmp27, %tmp28, !dbg !351      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp31 = add i64 %tmp_395, %tmp_394, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp33 = add i64 %tmp_400, %tmp_398, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp32 = add i64 %tmp_396, %tmp33, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp30 = add i64 %tmp31, %tmp32, !dbg !351      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_401 = add i64 %tmp26, %tmp30, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %output_addr_84 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  store i64 %tmp_401, i64* %output_addr_84, align 8, !dbg !351 ; [debug line = 168:3]
  %tmp_402 = mul nsw i64 %tmp_348, %tmp_346, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_403 = mul nsw i64 %tmp_330, %tmp_370, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_404 = mul nsw i64 %tmp_372, %tmp_328, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_405 = mul nsw i64 %tmp_314, %tmp_397, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_407 = mul nsw i64 %tmp_399, %tmp_312, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp34 = add i64 %tmp_402, %tmp_403, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp36 = add i64 %tmp_407, %tmp_405, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp35 = add i64 %tmp_404, %tmp36, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_521 = trunc i64 %tmp35 to i63              ; [#uses=1 type=i63]
  %tmp_522 = trunc i64 %tmp34 to i63              ; [#uses=1 type=i63]
  %tmp_408 = add i63 %tmp_521, %tmp_522, !dbg !352 ; [#uses=1 type=i63] [debug line = 178:3]
  %tmp_410 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_408, i1 false), !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_411 = mul nsw i64 %tmp_339, %tmp_359, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_412 = mul nsw i64 %tmp_361, %tmp_337, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_413 = mul nsw i64 %tmp_323, %tmp_384, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_414 = mul nsw i64 %tmp_386, %tmp_321, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp37 = add i64 %tmp_410, %tmp_411, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp39 = add i64 %tmp_414, %tmp_413, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp38 = add i64 %tmp_412, %tmp39, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_415 = add i64 %tmp37, %tmp38, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %output_addr_85 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !352 ; [#uses=1 type=i64*] [debug line = 178:3]
  store i64 %tmp_415, i64* %output_addr_85, align 8, !dbg !352 ; [debug line = 178:3]
  %tmp_416 = mul nsw i64 %tmp_348, %tmp_359, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_417 = mul nsw i64 %tmp_361, %tmp_346, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_418 = mul nsw i64 %tmp_339, %tmp_370, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_419 = mul nsw i64 %tmp_372, %tmp_337, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_420 = mul nsw i64 %tmp_330, %tmp_384, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_421 = mul nsw i64 %tmp_386, %tmp_328, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_423 = mul nsw i64 %tmp_323, %tmp_397, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_424 = mul nsw i64 %tmp_399, %tmp_321, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp41 = add i64 %tmp_416, %tmp_417, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp42 = add i64 %tmp_419, %tmp_418, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp40 = add i64 %tmp41, %tmp42, !dbg !353      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp44 = add i64 %tmp_421, %tmp_420, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp45 = add i64 %tmp_424, %tmp_423, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp43 = add i64 %tmp44, %tmp45, !dbg !353      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_426 = add i64 %tmp40, %tmp43, !dbg !353    ; [#uses=1 type=i64] [debug line = 187:3]
  %output_addr_86 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !353 ; [#uses=1 type=i64*] [debug line = 187:3]
  store i64 %tmp_426, i64* %output_addr_86, align 8, !dbg !353 ; [debug line = 187:3]
  %tmp_427 = mul nsw i64 %tmp_361, %tmp_359, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_428 = mul nsw i64 %tmp_348, %tmp_370, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_429 = mul nsw i64 %tmp_372, %tmp_346, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_430 = mul nsw i64 %tmp_330, %tmp_397, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_431 = mul nsw i64 %tmp_399, %tmp_328, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp46 = add i64 %tmp_428, %tmp_429, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp47 = add i64 %tmp_431, %tmp_430, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_523 = trunc i64 %tmp47 to i63              ; [#uses=1 type=i63]
  %tmp_524 = trunc i64 %tmp46 to i63              ; [#uses=1 type=i63]
  %tmp_432 = add i63 %tmp_523, %tmp_524, !dbg !354 ; [#uses=1 type=i63] [debug line = 195:3]
  %tmp_433 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_432, i1 false), !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_434 = mul nsw i64 %tmp_339, %tmp_384, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_435 = mul nsw i64 %tmp_386, %tmp_337, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp48 = add i64 %tmp_427, %tmp_433, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp49 = add i64 %tmp_435, %tmp_434, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_436 = add i64 %tmp48, %tmp49, !dbg !354    ; [#uses=1 type=i64] [debug line = 195:3]
  %output_addr_87 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !354 ; [#uses=1 type=i64*] [debug line = 195:3]
  store i64 %tmp_436, i64* %output_addr_87, align 8, !dbg !354 ; [debug line = 195:3]
  %tmp_438 = mul nsw i64 %tmp_361, %tmp_370, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_439 = mul nsw i64 %tmp_372, %tmp_359, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_441 = mul nsw i64 %tmp_348, %tmp_384, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_442 = mul nsw i64 %tmp_386, %tmp_346, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_443 = mul nsw i64 %tmp_339, %tmp_397, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_444 = mul nsw i64 %tmp_399, %tmp_337, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp51 = add i64 %tmp_441, %tmp_438, !dbg !355  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp50 = add i64 %tmp_439, %tmp51, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp53 = add i64 %tmp_444, %tmp_443, !dbg !355  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp52 = add i64 %tmp_442, %tmp53, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_445 = add i64 %tmp50, %tmp52, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %output_addr_88 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !355 ; [#uses=1 type=i64*] [debug line = 202:3]
  store i64 %tmp_445, i64* %output_addr_88, align 8, !dbg !355 ; [debug line = 202:3]
  %tmp_446 = mul nsw i64 %tmp_372, %tmp_370, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_447 = mul nsw i64 %tmp_348, %tmp_397, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_448 = mul nsw i64 %tmp_399, %tmp_346, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp54 = add i64 %tmp_448, %tmp_446, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_449 = add i64 %tmp_447, %tmp54, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_525 = shl i64 %tmp_449, 1, !dbg !356       ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_450 = mul nsw i64 %tmp_361, %tmp_384, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_451 = mul nsw i64 %tmp_386, %tmp_359, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp55 = add i64 %tmp_451, %tmp_525, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_452 = add i64 %tmp_450, %tmp55, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %output_addr_89 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !356 ; [#uses=1 type=i64*] [debug line = 208:3]
  store i64 %tmp_452, i64* %output_addr_89, align 8, !dbg !356 ; [debug line = 208:3]
  %tmp_453 = mul nsw i64 %tmp_372, %tmp_384, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_454 = mul nsw i64 %tmp_386, %tmp_370, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_455 = mul nsw i64 %tmp_361, %tmp_397, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_456 = mul nsw i64 %tmp_399, %tmp_359, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp56 = add i64 %tmp_453, %tmp_454, !dbg !357  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp57 = add i64 %tmp_456, %tmp_455, !dbg !357  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_457 = add i64 %tmp56, %tmp57, !dbg !357    ; [#uses=1 type=i64] [debug line = 213:3]
  %output_addr_90 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !357 ; [#uses=1 type=i64*] [debug line = 213:3]
  store i64 %tmp_457, i64* %output_addr_90, align 8, !dbg !357 ; [debug line = 213:3]
  %tmp_458 = mul nsw i64 %tmp_386, %tmp_384, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_459 = mul nsw i64 %tmp_372, %tmp_397, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_460 = mul nsw i64 %tmp_399, %tmp_370, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_461 = add nsw i64 %tmp_459, %tmp_460, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_526 = shl i64 %tmp_461, 1, !dbg !358       ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_462 = add nsw i64 %tmp_458, %tmp_526, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %output_addr_91 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !358 ; [#uses=1 type=i64*] [debug line = 217:3]
  store i64 %tmp_462, i64* %output_addr_91, align 8, !dbg !358 ; [debug line = 217:3]
  %tmp_463 = mul nsw i64 %tmp_386, %tmp_397, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp_464 = mul nsw i64 %tmp_399, %tmp_384, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp_465 = add nsw i64 %tmp_463, %tmp_464, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %output_addr_92 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !359 ; [#uses=1 type=i64*] [debug line = 220:3]
  store i64 %tmp_465, i64* %output_addr_92, align 8, !dbg !359 ; [debug line = 220:3]
  %tmp_351 = sext i32 %tmp_520 to i63, !dbg !360  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_352 = sext i32 %tmp_519 to i63, !dbg !360  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_466 = mul i63 %tmp_351, %tmp_352, !dbg !360 ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_467 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_466, i1 false), !dbg !360 ; [#uses=1 type=i64] [debug line = 222:3]
  %output_addr_93 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !360 ; [#uses=1 type=i64*] [debug line = 222:3]
  store i64 %tmp_467, i64* %output_addr_93, align 8, !dbg !360 ; [debug line = 222:3]
  ret void, !dbg !361                             ; [debug line = 223:1]
}

; [#uses=2]
define internal fastcc void @fproduct.2([19 x i64]* nocapture %output, [10 x i64]* nocapture %in2, [10 x i64]* nocapture %in) {
  %in_addr = getelementptr [10 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %in2_addr = getelementptr [10 x i64]* %in2, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !336 ; [debug line = 121:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !341 ; [debug line = 122:1]
  %in2_load = load i64* %in2_addr, align 8, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp = trunc i64 %in2_load to i32, !dbg !342    ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp_s = sext i32 %tmp to i64, !dbg !342        ; [#uses=10 type=i64] [debug line = 123:2]
  %in_load = load i64* %in_addr, align 8, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp_528 = trunc i64 %in_load to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp_384 = sext i32 %tmp_528 to i64, !dbg !342  ; [#uses=10 type=i64] [debug line = 123:2]
  %tmp_385 = mul nsw i64 %tmp_s, %tmp_384, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  store i64 %tmp_385, i64* %output_addr, align 8, !dbg !342 ; [debug line = 123:2]
  %in_addr_38 = getelementptr [10 x i64]* %in, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in_load_31 = load i64* %in_addr_38, align 8, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_531 = trunc i64 %in_load_31 to i32, !dbg !343 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp_389 = sext i32 %tmp_531 to i64, !dbg !343  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp_390 = mul nsw i64 %tmp_s, %tmp_389, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %in2_addr_10 = getelementptr [10 x i64]* %in2, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in2_load_2 = load i64* %in2_addr_10, align 8, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_544 = trunc i64 %in2_load_2 to i32, !dbg !343 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp_392 = sext i32 %tmp_544 to i64, !dbg !343  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp_395 = mul nsw i64 %tmp_392, %tmp_384, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_396 = add nsw i64 %tmp_390, %tmp_395, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %output_addr_94 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  store i64 %tmp_396, i64* %output_addr_94, align 8, !dbg !343 ; [debug line = 124:3]
  %tmp_353 = sext i32 %tmp_544 to i63, !dbg !344  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_354 = sext i32 %tmp_531 to i63, !dbg !344  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_468 = mul i63 %tmp_353, %tmp_354, !dbg !344 ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_402 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_468, i1 false), !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %in_addr_39 = getelementptr [10 x i64]* %in, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in_load_32 = load i64* %in_addr_39, align 8, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_547 = trunc i64 %in_load_32 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp_406 = sext i32 %tmp_547 to i64, !dbg !344  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp_407 = mul nsw i64 %tmp_s, %tmp_406, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2_addr_11 = getelementptr [10 x i64]* %in2, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in2_load_5 = load i64* %in2_addr_11, align 8, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_559 = trunc i64 %in2_load_5 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp_409 = sext i32 %tmp_559 to i64, !dbg !344  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp_412 = mul nsw i64 %tmp_409, %tmp_384, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp1 = add i64 %tmp_412, %tmp_402, !dbg !344   ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_414 = add i64 %tmp_407, %tmp1, !dbg !344   ; [#uses=1 type=i64] [debug line = 126:3]
  %output_addr_95 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  store i64 %tmp_414, i64* %output_addr_95, align 8, !dbg !344 ; [debug line = 126:3]
  %tmp_419 = mul nsw i64 %tmp_392, %tmp_406, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_424 = mul nsw i64 %tmp_409, %tmp_389, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %in_addr_40 = getelementptr [10 x i64]* %in, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in_load_33 = load i64* %in_addr_40, align 8, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_562 = trunc i64 %in_load_33 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp_428 = sext i32 %tmp_562 to i64, !dbg !345  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp_429 = mul nsw i64 %tmp_s, %tmp_428, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2_addr_12 = getelementptr [10 x i64]* %in2, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in2_load_9 = load i64* %in2_addr_12, align 8, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_608 = trunc i64 %in2_load_9 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp_431 = sext i32 %tmp_608 to i64, !dbg !345  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp_434 = mul nsw i64 %tmp_431, %tmp_384, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp2 = add i64 %tmp_419, %tmp_424, !dbg !345   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp3 = add i64 %tmp_434, %tmp_429, !dbg !345   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_437 = add i64 %tmp2, %tmp3, !dbg !345      ; [#uses=1 type=i64] [debug line = 129:3]
  %output_addr_96 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  store i64 %tmp_437, i64* %output_addr_96, align 8, !dbg !345 ; [debug line = 129:3]
  %tmp_442 = mul nsw i64 %tmp_409, %tmp_406, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_447 = mul nsw i64 %tmp_392, %tmp_428, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_452 = mul nsw i64 %tmp_431, %tmp_389, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_453 = add nsw i64 %tmp_447, %tmp_452, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_621 = shl i64 %tmp_453, 1, !dbg !346       ; [#uses=1 type=i64] [debug line = 133:3]
  %in_addr_41 = getelementptr [10 x i64]* %in, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in_load_34 = load i64* %in_addr_41, align 8, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_628 = trunc i64 %in_load_34 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp_458 = sext i32 %tmp_628 to i64, !dbg !346  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp_459 = mul nsw i64 %tmp_s, %tmp_458, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2_addr_13 = getelementptr [10 x i64]* %in2, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in2_load_10 = load i64* %in2_addr_13, align 8, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_629 = trunc i64 %in2_load_10 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp_461 = sext i32 %tmp_629 to i64, !dbg !346  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp_464 = mul nsw i64 %tmp_461, %tmp_384, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp4 = add i64 %tmp_442, %tmp_621, !dbg !346   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp5 = add i64 %tmp_464, %tmp_459, !dbg !346   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_467 = add i64 %tmp4, %tmp5, !dbg !346      ; [#uses=1 type=i64] [debug line = 133:3]
  %output_addr_97 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  store i64 %tmp_467, i64* %output_addr_97, align 8, !dbg !346 ; [debug line = 133:3]
  %tmp_469 = mul nsw i64 %tmp_409, %tmp_428, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_470 = mul nsw i64 %tmp_431, %tmp_406, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_471 = mul nsw i64 %tmp_392, %tmp_458, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_472 = mul nsw i64 %tmp_461, %tmp_389, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %in_addr_42 = getelementptr [10 x i64]* %in, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in_load_35 = load i64* %in_addr_42, align 8, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_630 = trunc i64 %in_load_35 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp_473 = sext i32 %tmp_630 to i64, !dbg !347  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp_474 = mul nsw i64 %tmp_s, %tmp_473, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2_addr_14 = getelementptr [10 x i64]* %in2, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in2_load_11 = load i64* %in2_addr_14, align 8, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_631 = trunc i64 %in2_load_11 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp_475 = sext i32 %tmp_631 to i64, !dbg !347  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp_476 = mul nsw i64 %tmp_475, %tmp_384, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp7 = add i64 %tmp_471, %tmp_469, !dbg !347   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp6 = add i64 %tmp_470, %tmp7, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp9 = add i64 %tmp_476, %tmp_474, !dbg !347   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp8 = add i64 %tmp_472, %tmp9, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_477 = add i64 %tmp6, %tmp8, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %output_addr_98 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  store i64 %tmp_477, i64* %output_addr_98, align 8, !dbg !347 ; [debug line = 138:3]
  %tmp_478 = mul nsw i64 %tmp_431, %tmp_428, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_479 = mul nsw i64 %tmp_392, %tmp_473, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_480 = mul nsw i64 %tmp_475, %tmp_389, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp10 = add i64 %tmp_480, %tmp_478, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_481 = add i64 %tmp_479, %tmp10, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_632 = shl i64 %tmp_481, 1, !dbg !348       ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_482 = mul nsw i64 %tmp_409, %tmp_458, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_483 = mul nsw i64 %tmp_461, %tmp_406, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %in_addr_43 = getelementptr [10 x i64]* %in, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in_load_36 = load i64* %in_addr_43, align 8, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_633 = trunc i64 %in_load_36 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp_484 = sext i32 %tmp_633 to i64, !dbg !348  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp_485 = mul nsw i64 %tmp_s, %tmp_484, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2_addr_15 = getelementptr [10 x i64]* %in2, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in2_load_12 = load i64* %in2_addr_15, align 8, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_634 = trunc i64 %in2_load_12 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp_486 = sext i32 %tmp_634 to i64, !dbg !348  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp_487 = mul nsw i64 %tmp_486, %tmp_384, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp11 = add i64 %tmp_632, %tmp_482, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp13 = add i64 %tmp_487, %tmp_485, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp12 = add i64 %tmp_483, %tmp13, !dbg !348    ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_488 = add i64 %tmp11, %tmp12, !dbg !348    ; [#uses=1 type=i64] [debug line = 144:3]
  %output_addr_99 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  store i64 %tmp_488, i64* %output_addr_99, align 8, !dbg !348 ; [debug line = 144:3]
  %tmp_489 = mul nsw i64 %tmp_431, %tmp_458, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_490 = mul nsw i64 %tmp_461, %tmp_428, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_491 = mul nsw i64 %tmp_409, %tmp_473, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_492 = mul nsw i64 %tmp_475, %tmp_406, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_493 = mul nsw i64 %tmp_392, %tmp_484, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_494 = mul nsw i64 %tmp_486, %tmp_389, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %in_addr_44 = getelementptr [10 x i64]* %in, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in_load_37 = load i64* %in_addr_44, align 8, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_635 = trunc i64 %in_load_37 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp_495 = sext i32 %tmp_635 to i64, !dbg !349  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp_496 = mul nsw i64 %tmp_s, %tmp_495, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2_addr_16 = getelementptr [10 x i64]* %in2, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in2_load_13 = load i64* %in2_addr_16, align 8, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_636 = trunc i64 %in2_load_13 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp_497 = sext i32 %tmp_636 to i64, !dbg !349  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp_498 = mul nsw i64 %tmp_497, %tmp_384, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp15 = add i64 %tmp_489, %tmp_490, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp16 = add i64 %tmp_492, %tmp_491, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp14 = add i64 %tmp15, %tmp16, !dbg !349      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp18 = add i64 %tmp_494, %tmp_493, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp19 = add i64 %tmp_498, %tmp_496, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp17 = add i64 %tmp18, %tmp19, !dbg !349      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_499 = add i64 %tmp14, %tmp17, !dbg !349    ; [#uses=1 type=i64] [debug line = 151:3]
  %output_addr_100 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  store i64 %tmp_499, i64* %output_addr_100, align 8, !dbg !349 ; [debug line = 151:3]
  %tmp_500 = mul nsw i64 %tmp_461, %tmp_458, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_501 = mul nsw i64 %tmp_431, %tmp_473, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_502 = mul nsw i64 %tmp_475, %tmp_428, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_503 = mul nsw i64 %tmp_392, %tmp_495, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_504 = mul nsw i64 %tmp_497, %tmp_389, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp20 = add i64 %tmp_501, %tmp_502, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp21 = add i64 %tmp_504, %tmp_503, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_637 = trunc i64 %tmp21 to i63              ; [#uses=1 type=i63]
  %tmp_638 = trunc i64 %tmp20 to i63              ; [#uses=1 type=i63]
  %tmp_505 = add i63 %tmp_637, %tmp_638, !dbg !350 ; [#uses=1 type=i63] [debug line = 159:3]
  %tmp_506 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_505, i1 false), !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_507 = mul nsw i64 %tmp_409, %tmp_484, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_508 = mul nsw i64 %tmp_486, %tmp_406, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %in_addr_45 = getelementptr [10 x i64]* %in, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in_load_38 = load i64* %in_addr_45, align 8, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_639 = trunc i64 %in_load_38 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp_509 = sext i32 %tmp_639 to i64, !dbg !350  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp_510 = mul nsw i64 %tmp_s, %tmp_509, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2_addr_17 = getelementptr [10 x i64]* %in2, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in2_load_14 = load i64* %in2_addr_17, align 8, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_640 = trunc i64 %in2_load_14 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp_511 = sext i32 %tmp_640 to i64, !dbg !350  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp_512 = mul nsw i64 %tmp_511, %tmp_384, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp23 = add i64 %tmp_507, %tmp_500, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp22 = add i64 %tmp_506, %tmp23, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp25 = add i64 %tmp_512, %tmp_510, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp24 = add i64 %tmp_508, %tmp25, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_513 = add i64 %tmp22, %tmp24, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %output_addr_101 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  store i64 %tmp_513, i64* %output_addr_101, align 8, !dbg !350 ; [debug line = 159:3]
  %tmp_514 = mul nsw i64 %tmp_461, %tmp_473, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_515 = mul nsw i64 %tmp_475, %tmp_458, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_516 = mul nsw i64 %tmp_431, %tmp_484, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_517 = mul nsw i64 %tmp_486, %tmp_428, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_518 = mul nsw i64 %tmp_409, %tmp_495, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_519 = mul nsw i64 %tmp_497, %tmp_406, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_520 = mul nsw i64 %tmp_392, %tmp_509, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_521 = mul nsw i64 %tmp_511, %tmp_389, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %in_addr_46 = getelementptr [10 x i64]* %in, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in_load_39 = load i64* %in_addr_46, align 8, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_641 = trunc i64 %in_load_39 to i32, !dbg !351 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp_522 = sext i32 %tmp_641 to i64, !dbg !351  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp_523 = mul nsw i64 %tmp_s, %tmp_522, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2_addr_18 = getelementptr [10 x i64]* %in2, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in2_load_15 = load i64* %in2_addr_18, align 8, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_642 = trunc i64 %in2_load_15 to i32, !dbg !351 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp_524 = sext i32 %tmp_642 to i64, !dbg !351  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp_525 = mul nsw i64 %tmp_524, %tmp_384, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp27 = add i64 %tmp_514, %tmp_515, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp29 = add i64 %tmp_518, %tmp_517, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp28 = add i64 %tmp_516, %tmp29, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp26 = add i64 %tmp27, %tmp28, !dbg !351      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp31 = add i64 %tmp_520, %tmp_519, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp33 = add i64 %tmp_525, %tmp_523, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp32 = add i64 %tmp_521, %tmp33, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp30 = add i64 %tmp31, %tmp32, !dbg !351      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_526 = add i64 %tmp26, %tmp30, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %output_addr_102 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  store i64 %tmp_526, i64* %output_addr_102, align 8, !dbg !351 ; [debug line = 168:3]
  %tmp_527 = mul nsw i64 %tmp_475, %tmp_473, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_529 = mul nsw i64 %tmp_431, %tmp_495, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_530 = mul nsw i64 %tmp_497, %tmp_428, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_532 = mul nsw i64 %tmp_392, %tmp_522, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_533 = mul nsw i64 %tmp_524, %tmp_389, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp34 = add i64 %tmp_527, %tmp_529, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp36 = add i64 %tmp_533, %tmp_532, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp35 = add i64 %tmp_530, %tmp36, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_643 = trunc i64 %tmp35 to i63              ; [#uses=1 type=i63]
  %tmp_644 = trunc i64 %tmp34 to i63              ; [#uses=1 type=i63]
  %tmp_534 = add i63 %tmp_643, %tmp_644, !dbg !352 ; [#uses=1 type=i63] [debug line = 178:3]
  %tmp_535 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_534, i1 false), !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_536 = mul nsw i64 %tmp_461, %tmp_484, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_537 = mul nsw i64 %tmp_486, %tmp_458, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_538 = mul nsw i64 %tmp_409, %tmp_509, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_539 = mul nsw i64 %tmp_511, %tmp_406, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp37 = add i64 %tmp_535, %tmp_536, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp39 = add i64 %tmp_539, %tmp_538, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp38 = add i64 %tmp_537, %tmp39, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_540 = add i64 %tmp37, %tmp38, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %output_addr_103 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !352 ; [#uses=1 type=i64*] [debug line = 178:3]
  store i64 %tmp_540, i64* %output_addr_103, align 8, !dbg !352 ; [debug line = 178:3]
  %tmp_541 = mul nsw i64 %tmp_475, %tmp_484, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_542 = mul nsw i64 %tmp_486, %tmp_473, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_543 = mul nsw i64 %tmp_461, %tmp_495, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_545 = mul nsw i64 %tmp_497, %tmp_458, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_546 = mul nsw i64 %tmp_431, %tmp_509, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_548 = mul nsw i64 %tmp_511, %tmp_428, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_549 = mul nsw i64 %tmp_409, %tmp_522, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_550 = mul nsw i64 %tmp_524, %tmp_406, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp41 = add i64 %tmp_541, %tmp_542, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp42 = add i64 %tmp_545, %tmp_543, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp40 = add i64 %tmp41, %tmp42, !dbg !353      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp44 = add i64 %tmp_548, %tmp_546, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp45 = add i64 %tmp_550, %tmp_549, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp43 = add i64 %tmp44, %tmp45, !dbg !353      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_551 = add i64 %tmp40, %tmp43, !dbg !353    ; [#uses=1 type=i64] [debug line = 187:3]
  %output_addr_104 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !353 ; [#uses=1 type=i64*] [debug line = 187:3]
  store i64 %tmp_551, i64* %output_addr_104, align 8, !dbg !353 ; [debug line = 187:3]
  %tmp_552 = mul nsw i64 %tmp_486, %tmp_484, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_553 = mul nsw i64 %tmp_475, %tmp_495, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_554 = mul nsw i64 %tmp_497, %tmp_473, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_555 = mul nsw i64 %tmp_431, %tmp_522, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_556 = mul nsw i64 %tmp_524, %tmp_428, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp46 = add i64 %tmp_553, %tmp_554, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp47 = add i64 %tmp_556, %tmp_555, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_645 = trunc i64 %tmp47 to i63              ; [#uses=1 type=i63]
  %tmp_646 = trunc i64 %tmp46 to i63              ; [#uses=1 type=i63]
  %tmp_557 = add i63 %tmp_645, %tmp_646, !dbg !354 ; [#uses=1 type=i63] [debug line = 195:3]
  %tmp_558 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_557, i1 false), !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_560 = mul nsw i64 %tmp_461, %tmp_509, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_561 = mul nsw i64 %tmp_511, %tmp_458, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp48 = add i64 %tmp_552, %tmp_558, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp49 = add i64 %tmp_561, %tmp_560, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_563 = add i64 %tmp48, %tmp49, !dbg !354    ; [#uses=1 type=i64] [debug line = 195:3]
  %output_addr_105 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !354 ; [#uses=1 type=i64*] [debug line = 195:3]
  store i64 %tmp_563, i64* %output_addr_105, align 8, !dbg !354 ; [debug line = 195:3]
  %tmp_564 = mul nsw i64 %tmp_486, %tmp_495, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_565 = mul nsw i64 %tmp_497, %tmp_484, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_566 = mul nsw i64 %tmp_475, %tmp_509, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_567 = mul nsw i64 %tmp_511, %tmp_473, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_568 = mul nsw i64 %tmp_461, %tmp_522, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_569 = mul nsw i64 %tmp_524, %tmp_458, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp51 = add i64 %tmp_566, %tmp_564, !dbg !355  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp50 = add i64 %tmp_565, %tmp51, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp53 = add i64 %tmp_569, %tmp_568, !dbg !355  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp52 = add i64 %tmp_567, %tmp53, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_570 = add i64 %tmp50, %tmp52, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %output_addr_106 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !355 ; [#uses=1 type=i64*] [debug line = 202:3]
  store i64 %tmp_570, i64* %output_addr_106, align 8, !dbg !355 ; [debug line = 202:3]
  %tmp_571 = mul nsw i64 %tmp_497, %tmp_495, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_572 = mul nsw i64 %tmp_475, %tmp_522, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_573 = mul nsw i64 %tmp_524, %tmp_473, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp54 = add i64 %tmp_573, %tmp_571, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_574 = add i64 %tmp_572, %tmp54, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_647 = shl i64 %tmp_574, 1, !dbg !356       ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_575 = mul nsw i64 %tmp_486, %tmp_509, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_576 = mul nsw i64 %tmp_511, %tmp_484, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp55 = add i64 %tmp_576, %tmp_647, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_577 = add i64 %tmp_575, %tmp55, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %output_addr_107 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !356 ; [#uses=1 type=i64*] [debug line = 208:3]
  store i64 %tmp_577, i64* %output_addr_107, align 8, !dbg !356 ; [debug line = 208:3]
  %tmp_578 = mul nsw i64 %tmp_497, %tmp_509, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_579 = mul nsw i64 %tmp_511, %tmp_495, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_580 = mul nsw i64 %tmp_486, %tmp_522, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_581 = mul nsw i64 %tmp_524, %tmp_484, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp56 = add i64 %tmp_578, %tmp_579, !dbg !357  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp57 = add i64 %tmp_581, %tmp_580, !dbg !357  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_582 = add i64 %tmp56, %tmp57, !dbg !357    ; [#uses=1 type=i64] [debug line = 213:3]
  %output_addr_108 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !357 ; [#uses=1 type=i64*] [debug line = 213:3]
  store i64 %tmp_582, i64* %output_addr_108, align 8, !dbg !357 ; [debug line = 213:3]
  %tmp_583 = mul nsw i64 %tmp_511, %tmp_509, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_584 = mul nsw i64 %tmp_497, %tmp_522, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_585 = mul nsw i64 %tmp_524, %tmp_495, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_586 = add nsw i64 %tmp_584, %tmp_585, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_648 = shl i64 %tmp_586, 1, !dbg !358       ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_587 = add nsw i64 %tmp_583, %tmp_648, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %output_addr_109 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !358 ; [#uses=1 type=i64*] [debug line = 217:3]
  store i64 %tmp_587, i64* %output_addr_109, align 8, !dbg !358 ; [debug line = 217:3]
  %tmp_588 = mul nsw i64 %tmp_511, %tmp_522, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp_589 = mul nsw i64 %tmp_524, %tmp_509, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp_590 = add nsw i64 %tmp_588, %tmp_589, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %output_addr_110 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !359 ; [#uses=1 type=i64*] [debug line = 220:3]
  store i64 %tmp_590, i64* %output_addr_110, align 8, !dbg !359 ; [debug line = 220:3]
  %tmp_355 = sext i32 %tmp_642 to i63, !dbg !360  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_356 = sext i32 %tmp_641 to i63, !dbg !360  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_591 = mul i63 %tmp_355, %tmp_356, !dbg !360 ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_592 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_591, i1 false), !dbg !360 ; [#uses=1 type=i64] [debug line = 222:3]
  %output_addr_111 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !360 ; [#uses=1 type=i64*] [debug line = 222:3]
  store i64 %tmp_592, i64* %output_addr_111, align 8, !dbg !360 ; [debug line = 222:3]
  ret void, !dbg !361                             ; [debug line = 223:1]
}

; [#uses=1]
define internal fastcc void @fproduct.1([19 x i64]* nocapture %output, [19 x i64]* %in2, [10 x i26]* %in) {
  %in_addr = getelementptr [10 x i26]* %in, i64 0, i64 0 ; [#uses=1 type=i26*]
  %in2_addr = getelementptr [19 x i64]* %in2, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !336 ; [debug line = 121:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !341 ; [debug line = 122:1]
  %in2_load = load i64* %in2_addr, align 8, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp = trunc i64 %in2_load to i32, !dbg !342    ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp_s = sext i32 %tmp to i64, !dbg !342        ; [#uses=10 type=i64] [debug line = 123:2]
  %in_load = load i26* %in_addr, align 4          ; [#uses=1 type=i26]
  %tmp_384 = zext i26 %in_load to i64, !dbg !342  ; [#uses=10 type=i64] [debug line = 123:2]
  %tmp_385 = mul nsw i64 %tmp_s, %tmp_384, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  store i64 %tmp_385, i64* %output_addr, align 8, !dbg !342 ; [debug line = 123:2]
  %in_addr25 = getelementptr [10 x i26]* %in, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i26*] [debug line = 124:3]
  %in_load26 = load i26* %in_addr25, align 4      ; [#uses=2 type=i26]
  %tmp_389 = zext i26 %in_load26 to i64, !dbg !343 ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp_390 = mul nsw i64 %tmp_s, %tmp_389, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %in2_addr_19 = getelementptr [19 x i64]* %in2, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in2_load_2 = load i64* %in2_addr_19, align 8, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_649 = trunc i64 %in2_load_2 to i32, !dbg !343 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp_392 = sext i32 %tmp_649 to i64, !dbg !343  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp_395 = mul nsw i64 %tmp_392, %tmp_384, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_396 = add nsw i64 %tmp_390, %tmp_395, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %output_addr_112 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  store i64 %tmp_396, i64* %output_addr_112, align 8, !dbg !343 ; [debug line = 124:3]
  %tmp_357 = sext i32 %tmp_649 to i63, !dbg !344  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_358 = zext i26 %in_load26 to i63, !dbg !344 ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_593 = mul i63 %tmp_357, %tmp_358, !dbg !344 ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_402 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_593, i1 false), !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %in_addr_47 = getelementptr [10 x i26]* %in, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i26*] [debug line = 126:3]
  %in_load_40 = load i26* %in_addr_47, align 4    ; [#uses=1 type=i26]
  %tmp_406 = zext i26 %in_load_40 to i64, !dbg !344 ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp_407 = mul nsw i64 %tmp_s, %tmp_406, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2_addr_20 = getelementptr [19 x i64]* %in2, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in2_load_5 = load i64* %in2_addr_20, align 8, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_695 = trunc i64 %in2_load_5 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp_409 = sext i32 %tmp_695 to i64, !dbg !344  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp_412 = mul nsw i64 %tmp_409, %tmp_384, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp1 = add i64 %tmp_412, %tmp_402, !dbg !344   ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_414 = add i64 %tmp_407, %tmp1, !dbg !344   ; [#uses=1 type=i64] [debug line = 126:3]
  %output_addr_113 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  store i64 %tmp_414, i64* %output_addr_113, align 8, !dbg !344 ; [debug line = 126:3]
  %tmp_419 = mul nsw i64 %tmp_392, %tmp_406, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_424 = mul nsw i64 %tmp_409, %tmp_389, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %in_addr_48 = getelementptr [10 x i26]* %in, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i26*] [debug line = 129:3]
  %in_load_41 = load i26* %in_addr_48, align 4    ; [#uses=1 type=i26]
  %tmp_428 = zext i26 %in_load_41 to i64, !dbg !345 ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp_429 = mul nsw i64 %tmp_s, %tmp_428, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2_addr_21 = getelementptr [19 x i64]* %in2, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in2_load_9 = load i64* %in2_addr_21, align 8, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_708 = trunc i64 %in2_load_9 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp_431 = sext i32 %tmp_708 to i64, !dbg !345  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp_434 = mul nsw i64 %tmp_431, %tmp_384, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp2 = add i64 %tmp_419, %tmp_424, !dbg !345   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp3 = add i64 %tmp_434, %tmp_429, !dbg !345   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_437 = add i64 %tmp2, %tmp3, !dbg !345      ; [#uses=1 type=i64] [debug line = 129:3]
  %output_addr_114 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  store i64 %tmp_437, i64* %output_addr_114, align 8, !dbg !345 ; [debug line = 129:3]
  %tmp_442 = mul nsw i64 %tmp_409, %tmp_406, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_447 = mul nsw i64 %tmp_392, %tmp_428, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_452 = mul nsw i64 %tmp_431, %tmp_389, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_453 = add nsw i64 %tmp_447, %tmp_452, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_715 = shl i64 %tmp_453, 1, !dbg !346       ; [#uses=1 type=i64] [debug line = 133:3]
  %in_addr_49 = getelementptr [10 x i26]* %in, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i26*] [debug line = 133:3]
  %in_load_42 = load i26* %in_addr_49, align 4    ; [#uses=1 type=i26]
  %tmp_458 = zext i26 %in_load_42 to i64, !dbg !346 ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp_459 = mul nsw i64 %tmp_s, %tmp_458, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2_addr_22 = getelementptr [19 x i64]* %in2, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in2_load_14 = load i64* %in2_addr_22, align 8, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_716 = trunc i64 %in2_load_14 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp_461 = sext i32 %tmp_716 to i64, !dbg !346  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp_464 = mul nsw i64 %tmp_461, %tmp_384, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp4 = add i64 %tmp_442, %tmp_715, !dbg !346   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp5 = add i64 %tmp_464, %tmp_459, !dbg !346   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_467 = add i64 %tmp4, %tmp5, !dbg !346      ; [#uses=1 type=i64] [debug line = 133:3]
  %output_addr_115 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  store i64 %tmp_467, i64* %output_addr_115, align 8, !dbg !346 ; [debug line = 133:3]
  %tmp_472 = mul nsw i64 %tmp_409, %tmp_428, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_477 = mul nsw i64 %tmp_431, %tmp_406, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_482 = mul nsw i64 %tmp_392, %tmp_458, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_487 = mul nsw i64 %tmp_461, %tmp_389, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %in_addr_50 = getelementptr [10 x i26]* %in, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i26*] [debug line = 138:3]
  %in_load_43 = load i26* %in_addr_50, align 4    ; [#uses=1 type=i26]
  %tmp_491 = zext i26 %in_load_43 to i64, !dbg !347 ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp_492 = mul nsw i64 %tmp_s, %tmp_491, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2_addr_23 = getelementptr [19 x i64]* %in2, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in2_load_16 = load i64* %in2_addr_23, align 8, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_717 = trunc i64 %in2_load_16 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp_494 = sext i32 %tmp_717 to i64, !dbg !347  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp_497 = mul nsw i64 %tmp_494, %tmp_384, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp7 = add i64 %tmp_482, %tmp_472, !dbg !347   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp6 = add i64 %tmp_477, %tmp7, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp9 = add i64 %tmp_497, %tmp_492, !dbg !347   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp8 = add i64 %tmp_487, %tmp9, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_502 = add i64 %tmp6, %tmp8, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %output_addr_116 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  store i64 %tmp_502, i64* %output_addr_116, align 8, !dbg !347 ; [debug line = 138:3]
  %tmp_507 = mul nsw i64 %tmp_431, %tmp_428, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_512 = mul nsw i64 %tmp_392, %tmp_491, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_517 = mul nsw i64 %tmp_494, %tmp_389, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp10 = add i64 %tmp_517, %tmp_507, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_519 = add i64 %tmp_512, %tmp10, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_718 = shl i64 %tmp_519, 1, !dbg !348       ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_525 = mul nsw i64 %tmp_409, %tmp_458, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_530 = mul nsw i64 %tmp_461, %tmp_406, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %in_addr_51 = getelementptr [10 x i26]* %in, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i26*] [debug line = 144:3]
  %in_load_44 = load i26* %in_addr_51, align 4    ; [#uses=1 type=i26]
  %tmp_534 = zext i26 %in_load_44 to i64, !dbg !348 ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp_535 = mul nsw i64 %tmp_s, %tmp_534, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2_addr_24 = getelementptr [19 x i64]* %in2, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in2_load_17 = load i64* %in2_addr_24, align 8, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_719 = trunc i64 %in2_load_17 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp_537 = sext i32 %tmp_719 to i64, !dbg !348  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp_540 = mul nsw i64 %tmp_537, %tmp_384, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp11 = add i64 %tmp_718, %tmp_525, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp13 = add i64 %tmp_540, %tmp_535, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp12 = add i64 %tmp_530, %tmp13, !dbg !348    ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_544 = add i64 %tmp11, %tmp12, !dbg !348    ; [#uses=1 type=i64] [debug line = 144:3]
  %output_addr_117 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  store i64 %tmp_544, i64* %output_addr_117, align 8, !dbg !348 ; [debug line = 144:3]
  %tmp_549 = mul nsw i64 %tmp_431, %tmp_458, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_554 = mul nsw i64 %tmp_461, %tmp_428, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_559 = mul nsw i64 %tmp_409, %tmp_491, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_564 = mul nsw i64 %tmp_494, %tmp_406, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_569 = mul nsw i64 %tmp_392, %tmp_534, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_574 = mul nsw i64 %tmp_537, %tmp_389, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %in_addr_52 = getelementptr [10 x i26]* %in, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i26*] [debug line = 151:3]
  %in_load_45 = load i26* %in_addr_52, align 4    ; [#uses=1 type=i26]
  %tmp_578 = zext i26 %in_load_45 to i64, !dbg !349 ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp_579 = mul nsw i64 %tmp_s, %tmp_578, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2_addr_25 = getelementptr [19 x i64]* %in2, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in2_load_18 = load i64* %in2_addr_25, align 8, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_720 = trunc i64 %in2_load_18 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp_581 = sext i32 %tmp_720 to i64, !dbg !349  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp_584 = mul nsw i64 %tmp_581, %tmp_384, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp15 = add i64 %tmp_549, %tmp_554, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp16 = add i64 %tmp_564, %tmp_559, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp14 = add i64 %tmp15, %tmp16, !dbg !349      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp18 = add i64 %tmp_574, %tmp_569, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp19 = add i64 %tmp_584, %tmp_579, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp17 = add i64 %tmp18, %tmp19, !dbg !349      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_591 = add i64 %tmp14, %tmp17, !dbg !349    ; [#uses=1 type=i64] [debug line = 151:3]
  %output_addr_118 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  store i64 %tmp_591, i64* %output_addr_118, align 8, !dbg !349 ; [debug line = 151:3]
  %tmp_594 = mul nsw i64 %tmp_461, %tmp_458, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_595 = mul nsw i64 %tmp_431, %tmp_491, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_596 = mul nsw i64 %tmp_494, %tmp_428, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_597 = mul nsw i64 %tmp_392, %tmp_578, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_598 = mul nsw i64 %tmp_581, %tmp_389, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp20 = add i64 %tmp_595, %tmp_596, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp21 = add i64 %tmp_598, %tmp_597, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_721 = trunc i64 %tmp21 to i63              ; [#uses=1 type=i63]
  %tmp_722 = trunc i64 %tmp20 to i63              ; [#uses=1 type=i63]
  %tmp_599 = add i63 %tmp_721, %tmp_722, !dbg !350 ; [#uses=1 type=i63] [debug line = 159:3]
  %tmp_600 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_599, i1 false), !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_601 = mul nsw i64 %tmp_409, %tmp_534, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_602 = mul nsw i64 %tmp_537, %tmp_406, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %in_addr_53 = getelementptr [10 x i26]* %in, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i26*] [debug line = 159:3]
  %in_load_46 = load i26* %in_addr_53, align 4    ; [#uses=1 type=i26]
  %tmp_603 = zext i26 %in_load_46 to i64, !dbg !350 ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp_604 = mul nsw i64 %tmp_s, %tmp_603, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2_addr_26 = getelementptr [19 x i64]* %in2, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in2_load_19 = load i64* %in2_addr_26, align 8, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_723 = trunc i64 %in2_load_19 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp_605 = sext i32 %tmp_723 to i64, !dbg !350  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp_606 = mul nsw i64 %tmp_605, %tmp_384, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp23 = add i64 %tmp_601, %tmp_594, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp22 = add i64 %tmp_600, %tmp23, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp25 = add i64 %tmp_606, %tmp_604, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp24 = add i64 %tmp_602, %tmp25, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_607 = add i64 %tmp22, %tmp24, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %output_addr_119 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  store i64 %tmp_607, i64* %output_addr_119, align 8, !dbg !350 ; [debug line = 159:3]
  %tmp_608 = mul nsw i64 %tmp_461, %tmp_491, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_609 = mul nsw i64 %tmp_494, %tmp_458, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_610 = mul nsw i64 %tmp_431, %tmp_534, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_611 = mul nsw i64 %tmp_537, %tmp_428, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_612 = mul nsw i64 %tmp_409, %tmp_578, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_613 = mul nsw i64 %tmp_581, %tmp_406, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_614 = mul nsw i64 %tmp_392, %tmp_603, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_615 = mul nsw i64 %tmp_605, %tmp_389, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %in_addr_54 = getelementptr [10 x i26]* %in, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i26*] [debug line = 168:3]
  %in_load_47 = load i26* %in_addr_54, align 4    ; [#uses=2 type=i26]
  %tmp_616 = zext i26 %in_load_47 to i64, !dbg !351 ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp_617 = mul nsw i64 %tmp_s, %tmp_616, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2_addr_27 = getelementptr [19 x i64]* %in2, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in2_load_20 = load i64* %in2_addr_27, align 8, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_724 = trunc i64 %in2_load_20 to i32, !dbg !351 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp_618 = sext i32 %tmp_724 to i64, !dbg !351  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp_619 = mul nsw i64 %tmp_618, %tmp_384, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp27 = add i64 %tmp_608, %tmp_609, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp29 = add i64 %tmp_612, %tmp_611, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp28 = add i64 %tmp_610, %tmp29, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp26 = add i64 %tmp27, %tmp28, !dbg !351      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp31 = add i64 %tmp_614, %tmp_613, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp33 = add i64 %tmp_619, %tmp_617, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp32 = add i64 %tmp_615, %tmp33, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp30 = add i64 %tmp31, %tmp32, !dbg !351      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_620 = add i64 %tmp26, %tmp30, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %output_addr_120 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  store i64 %tmp_620, i64* %output_addr_120, align 8, !dbg !351 ; [debug line = 168:3]
  %tmp_621 = mul nsw i64 %tmp_494, %tmp_491, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_622 = mul nsw i64 %tmp_431, %tmp_578, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_623 = mul nsw i64 %tmp_581, %tmp_428, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_624 = mul nsw i64 %tmp_392, %tmp_616, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_625 = mul nsw i64 %tmp_618, %tmp_389, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp34 = add i64 %tmp_621, %tmp_622, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp36 = add i64 %tmp_625, %tmp_624, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp35 = add i64 %tmp_623, %tmp36, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_725 = trunc i64 %tmp35 to i63              ; [#uses=1 type=i63]
  %tmp_726 = trunc i64 %tmp34 to i63              ; [#uses=1 type=i63]
  %tmp_626 = add i63 %tmp_725, %tmp_726, !dbg !352 ; [#uses=1 type=i63] [debug line = 178:3]
  %tmp_627 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_626, i1 false), !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_628 = mul nsw i64 %tmp_461, %tmp_534, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_629 = mul nsw i64 %tmp_537, %tmp_458, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_630 = mul nsw i64 %tmp_409, %tmp_603, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_631 = mul nsw i64 %tmp_605, %tmp_406, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp37 = add i64 %tmp_627, %tmp_628, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp39 = add i64 %tmp_631, %tmp_630, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp38 = add i64 %tmp_629, %tmp39, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_632 = add i64 %tmp37, %tmp38, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %output_addr_121 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !352 ; [#uses=1 type=i64*] [debug line = 178:3]
  store i64 %tmp_632, i64* %output_addr_121, align 8, !dbg !352 ; [debug line = 178:3]
  %tmp_633 = mul nsw i64 %tmp_494, %tmp_534, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_634 = mul nsw i64 %tmp_537, %tmp_491, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_635 = mul nsw i64 %tmp_461, %tmp_578, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_636 = mul nsw i64 %tmp_581, %tmp_458, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_637 = mul nsw i64 %tmp_431, %tmp_603, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_638 = mul nsw i64 %tmp_605, %tmp_428, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_639 = mul nsw i64 %tmp_409, %tmp_616, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_640 = mul nsw i64 %tmp_618, %tmp_406, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp41 = add i64 %tmp_633, %tmp_634, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp42 = add i64 %tmp_636, %tmp_635, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp40 = add i64 %tmp41, %tmp42, !dbg !353      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp44 = add i64 %tmp_638, %tmp_637, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp45 = add i64 %tmp_640, %tmp_639, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp43 = add i64 %tmp44, %tmp45, !dbg !353      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_641 = add i64 %tmp40, %tmp43, !dbg !353    ; [#uses=1 type=i64] [debug line = 187:3]
  %output_addr_122 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !353 ; [#uses=1 type=i64*] [debug line = 187:3]
  store i64 %tmp_641, i64* %output_addr_122, align 8, !dbg !353 ; [debug line = 187:3]
  %tmp_642 = mul nsw i64 %tmp_537, %tmp_534, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_643 = mul nsw i64 %tmp_494, %tmp_578, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_644 = mul nsw i64 %tmp_581, %tmp_491, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_645 = mul nsw i64 %tmp_431, %tmp_616, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_646 = mul nsw i64 %tmp_618, %tmp_428, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp46 = add i64 %tmp_643, %tmp_644, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp47 = add i64 %tmp_646, %tmp_645, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_727 = trunc i64 %tmp47 to i63              ; [#uses=1 type=i63]
  %tmp_728 = trunc i64 %tmp46 to i63              ; [#uses=1 type=i63]
  %tmp_647 = add i63 %tmp_727, %tmp_728, !dbg !354 ; [#uses=1 type=i63] [debug line = 195:3]
  %tmp_648 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_647, i1 false), !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_650 = mul nsw i64 %tmp_461, %tmp_603, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_651 = mul nsw i64 %tmp_605, %tmp_458, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp48 = add i64 %tmp_642, %tmp_648, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp49 = add i64 %tmp_651, %tmp_650, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_652 = add i64 %tmp48, %tmp49, !dbg !354    ; [#uses=1 type=i64] [debug line = 195:3]
  %output_addr_123 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !354 ; [#uses=1 type=i64*] [debug line = 195:3]
  store i64 %tmp_652, i64* %output_addr_123, align 8, !dbg !354 ; [debug line = 195:3]
  %tmp_653 = mul nsw i64 %tmp_537, %tmp_578, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_654 = mul nsw i64 %tmp_581, %tmp_534, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_655 = mul nsw i64 %tmp_494, %tmp_603, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_656 = mul nsw i64 %tmp_605, %tmp_491, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_657 = mul nsw i64 %tmp_461, %tmp_616, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_658 = mul nsw i64 %tmp_618, %tmp_458, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp51 = add i64 %tmp_655, %tmp_653, !dbg !355  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp50 = add i64 %tmp_654, %tmp51, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp53 = add i64 %tmp_658, %tmp_657, !dbg !355  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp52 = add i64 %tmp_656, %tmp53, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_659 = add i64 %tmp50, %tmp52, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %output_addr_124 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !355 ; [#uses=1 type=i64*] [debug line = 202:3]
  store i64 %tmp_659, i64* %output_addr_124, align 8, !dbg !355 ; [debug line = 202:3]
  %tmp_660 = mul nsw i64 %tmp_581, %tmp_578, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_661 = mul nsw i64 %tmp_494, %tmp_616, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_662 = mul nsw i64 %tmp_618, %tmp_491, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp54 = add i64 %tmp_662, %tmp_660, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_663 = add i64 %tmp_661, %tmp54, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_729 = shl i64 %tmp_663, 1, !dbg !356       ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_664 = mul nsw i64 %tmp_537, %tmp_603, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_665 = mul nsw i64 %tmp_605, %tmp_534, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp55 = add i64 %tmp_665, %tmp_729, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_666 = add i64 %tmp_664, %tmp55, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %output_addr_125 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !356 ; [#uses=1 type=i64*] [debug line = 208:3]
  store i64 %tmp_666, i64* %output_addr_125, align 8, !dbg !356 ; [debug line = 208:3]
  %tmp_667 = mul nsw i64 %tmp_581, %tmp_603, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_668 = mul nsw i64 %tmp_605, %tmp_578, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_669 = mul nsw i64 %tmp_537, %tmp_616, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_670 = mul nsw i64 %tmp_618, %tmp_534, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp56 = add i64 %tmp_667, %tmp_668, !dbg !357  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp57 = add i64 %tmp_670, %tmp_669, !dbg !357  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_671 = add i64 %tmp56, %tmp57, !dbg !357    ; [#uses=1 type=i64] [debug line = 213:3]
  %output_addr_126 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !357 ; [#uses=1 type=i64*] [debug line = 213:3]
  store i64 %tmp_671, i64* %output_addr_126, align 8, !dbg !357 ; [debug line = 213:3]
  %tmp_672 = mul nsw i64 %tmp_605, %tmp_603, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_673 = mul nsw i64 %tmp_581, %tmp_616, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_674 = mul nsw i64 %tmp_618, %tmp_578, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_675 = add nsw i64 %tmp_673, %tmp_674, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_730 = shl i64 %tmp_675, 1, !dbg !358       ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_676 = add nsw i64 %tmp_672, %tmp_730, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %output_addr_127 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !358 ; [#uses=1 type=i64*] [debug line = 217:3]
  store i64 %tmp_676, i64* %output_addr_127, align 8, !dbg !358 ; [debug line = 217:3]
  %tmp_677 = mul nsw i64 %tmp_605, %tmp_616, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp_678 = mul nsw i64 %tmp_618, %tmp_603, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp_679 = add nsw i64 %tmp_677, %tmp_678, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %output_addr_128 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !359 ; [#uses=1 type=i64*] [debug line = 220:3]
  store i64 %tmp_679, i64* %output_addr_128, align 8, !dbg !359 ; [debug line = 220:3]
  %tmp_359 = sext i32 %tmp_724 to i63, !dbg !360  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_360 = zext i26 %in_load_47 to i63, !dbg !360 ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_680 = mul i63 %tmp_359, %tmp_360, !dbg !360 ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_681 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_680, i1 false), !dbg !360 ; [#uses=1 type=i64] [debug line = 222:3]
  %output_addr_129 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !360 ; [#uses=1 type=i64*] [debug line = 222:3]
  store i64 %tmp_681, i64* %output_addr_129, align 8, !dbg !360 ; [debug line = 222:3]
  ret void, !dbg !361                             ; [debug line = 223:1]
}

; [#uses=4]
define internal fastcc void @fproduct([19 x i64]* nocapture %output, [19 x i64]* nocapture %in2, [19 x i64]* nocapture %in) {
  %in_addr = getelementptr [19 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %in2_addr = getelementptr [19 x i64]* %in2, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !362), !dbg !363 ; [debug line = 120:28] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %in2}, i64 0, metadata !364), !dbg !365 ; [debug line = 120:48] [debug variable = in2]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %in}, i64 0, metadata !366), !dbg !367 ; [debug line = 120:65] [debug variable = in]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !336 ; [debug line = 121:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !341 ; [debug line = 122:1]
  %in2_load = load i64* %in2_addr, align 8, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp = trunc i64 %in2_load to i32, !dbg !342    ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp_s = sext i32 %tmp to i64, !dbg !342        ; [#uses=10 type=i64] [debug line = 123:2]
  %in_load = load i64* %in_addr, align 8, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp_757 = trunc i64 %in_load to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp_384 = sext i32 %tmp_757 to i64, !dbg !342  ; [#uses=10 type=i64] [debug line = 123:2]
  %tmp_385 = mul nsw i64 %tmp_s, %tmp_384, !dbg !342 ; [#uses=1 type=i64] [debug line = 123:2]
  store i64 %tmp_385, i64* %output_addr, align 8, !dbg !342 ; [debug line = 123:2]
  %in_addr_55 = getelementptr [19 x i64]* %in, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in_load_48 = load i64* %in_addr_55, align 8, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_770 = trunc i64 %in_load_48 to i32, !dbg !343 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp_389 = sext i32 %tmp_770 to i64, !dbg !343  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp_390 = mul nsw i64 %tmp_s, %tmp_389, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %in2_addr_28 = getelementptr [19 x i64]* %in2, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in2_load_2 = load i64* %in2_addr_28, align 8, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_777 = trunc i64 %in2_load_2 to i32, !dbg !343 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp_392 = sext i32 %tmp_777 to i64, !dbg !343  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp_395 = mul nsw i64 %tmp_392, %tmp_384, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp_396 = add nsw i64 %tmp_390, %tmp_395, !dbg !343 ; [#uses=1 type=i64] [debug line = 124:3]
  %output_addr_130 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !343 ; [#uses=1 type=i64*] [debug line = 124:3]
  store i64 %tmp_396, i64* %output_addr_130, align 8, !dbg !343 ; [debug line = 124:3]
  %tmp_361 = sext i32 %tmp_777 to i63, !dbg !344  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_362 = sext i32 %tmp_770 to i63, !dbg !344  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_682 = mul i63 %tmp_361, %tmp_362, !dbg !344 ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp_402 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_682, i1 false), !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %in_addr_56 = getelementptr [19 x i64]* %in, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in_load_49 = load i64* %in_addr_56, align 8, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_778 = trunc i64 %in_load_49 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp_406 = sext i32 %tmp_778 to i64, !dbg !344  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp_407 = mul nsw i64 %tmp_s, %tmp_406, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2_addr_29 = getelementptr [19 x i64]* %in2, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in2_load_5 = load i64* %in2_addr_29, align 8, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_779 = trunc i64 %in2_load_5 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp_409 = sext i32 %tmp_779 to i64, !dbg !344  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp_412 = mul nsw i64 %tmp_409, %tmp_384, !dbg !344 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp1 = add i64 %tmp_412, %tmp_402, !dbg !344   ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp_414 = add i64 %tmp_407, %tmp1, !dbg !344   ; [#uses=1 type=i64] [debug line = 126:3]
  %output_addr_131 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !344 ; [#uses=1 type=i64*] [debug line = 126:3]
  store i64 %tmp_414, i64* %output_addr_131, align 8, !dbg !344 ; [debug line = 126:3]
  %tmp_419 = mul nsw i64 %tmp_392, %tmp_406, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_424 = mul nsw i64 %tmp_409, %tmp_389, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %in_addr_57 = getelementptr [19 x i64]* %in, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in_load_50 = load i64* %in_addr_57, align 8, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_780 = trunc i64 %in_load_50 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp_428 = sext i32 %tmp_780 to i64, !dbg !345  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp_429 = mul nsw i64 %tmp_s, %tmp_428, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2_addr_30 = getelementptr [19 x i64]* %in2, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in2_load_9 = load i64* %in2_addr_30, align 8, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_781 = trunc i64 %in2_load_9 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp_431 = sext i32 %tmp_781 to i64, !dbg !345  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp_434 = mul nsw i64 %tmp_431, %tmp_384, !dbg !345 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp2 = add i64 %tmp_419, %tmp_424, !dbg !345   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp3 = add i64 %tmp_434, %tmp_429, !dbg !345   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp_437 = add i64 %tmp2, %tmp3, !dbg !345      ; [#uses=1 type=i64] [debug line = 129:3]
  %output_addr_132 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !345 ; [#uses=1 type=i64*] [debug line = 129:3]
  store i64 %tmp_437, i64* %output_addr_132, align 8, !dbg !345 ; [debug line = 129:3]
  %tmp_442 = mul nsw i64 %tmp_409, %tmp_406, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_447 = mul nsw i64 %tmp_392, %tmp_428, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_452 = mul nsw i64 %tmp_431, %tmp_389, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_453 = add nsw i64 %tmp_447, %tmp_452, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_782 = shl i64 %tmp_453, 1, !dbg !346       ; [#uses=1 type=i64] [debug line = 133:3]
  %in_addr_58 = getelementptr [19 x i64]* %in, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in_load_51 = load i64* %in_addr_58, align 8, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_783 = trunc i64 %in_load_51 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp_458 = sext i32 %tmp_783 to i64, !dbg !346  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp_459 = mul nsw i64 %tmp_s, %tmp_458, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2_addr_31 = getelementptr [19 x i64]* %in2, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in2_load_14 = load i64* %in2_addr_31, align 8, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_784 = trunc i64 %in2_load_14 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp_461 = sext i32 %tmp_784 to i64, !dbg !346  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp_464 = mul nsw i64 %tmp_461, %tmp_384, !dbg !346 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp4 = add i64 %tmp_442, %tmp_782, !dbg !346   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp5 = add i64 %tmp_464, %tmp_459, !dbg !346   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp_467 = add i64 %tmp4, %tmp5, !dbg !346      ; [#uses=1 type=i64] [debug line = 133:3]
  %output_addr_133 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !346 ; [#uses=1 type=i64*] [debug line = 133:3]
  store i64 %tmp_467, i64* %output_addr_133, align 8, !dbg !346 ; [debug line = 133:3]
  %tmp_472 = mul nsw i64 %tmp_409, %tmp_428, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_477 = mul nsw i64 %tmp_431, %tmp_406, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_482 = mul nsw i64 %tmp_392, %tmp_458, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_487 = mul nsw i64 %tmp_461, %tmp_389, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %in_addr_59 = getelementptr [19 x i64]* %in, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in_load_52 = load i64* %in_addr_59, align 8, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_785 = trunc i64 %in_load_52 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp_491 = sext i32 %tmp_785 to i64, !dbg !347  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp_492 = mul nsw i64 %tmp_s, %tmp_491, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2_addr_32 = getelementptr [19 x i64]* %in2, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in2_load_20 = load i64* %in2_addr_32, align 8, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_786 = trunc i64 %in2_load_20 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp_494 = sext i32 %tmp_786 to i64, !dbg !347  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp_497 = mul nsw i64 %tmp_494, %tmp_384, !dbg !347 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp7 = add i64 %tmp_482, %tmp_472, !dbg !347   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp6 = add i64 %tmp_477, %tmp7, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp9 = add i64 %tmp_497, %tmp_492, !dbg !347   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp8 = add i64 %tmp_487, %tmp9, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp_502 = add i64 %tmp6, %tmp8, !dbg !347      ; [#uses=1 type=i64] [debug line = 138:3]
  %output_addr_134 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !347 ; [#uses=1 type=i64*] [debug line = 138:3]
  store i64 %tmp_502, i64* %output_addr_134, align 8, !dbg !347 ; [debug line = 138:3]
  %tmp_507 = mul nsw i64 %tmp_431, %tmp_428, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_512 = mul nsw i64 %tmp_392, %tmp_491, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_517 = mul nsw i64 %tmp_494, %tmp_389, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp10 = add i64 %tmp_517, %tmp_507, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_519 = add i64 %tmp_512, %tmp10, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_787 = shl i64 %tmp_519, 1, !dbg !348       ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_525 = mul nsw i64 %tmp_409, %tmp_458, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_530 = mul nsw i64 %tmp_461, %tmp_406, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %in_addr_60 = getelementptr [19 x i64]* %in, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in_load_53 = load i64* %in_addr_60, align 8, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_788 = trunc i64 %in_load_53 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp_534 = sext i32 %tmp_788 to i64, !dbg !348  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp_535 = mul nsw i64 %tmp_s, %tmp_534, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2_addr_33 = getelementptr [19 x i64]* %in2, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in2_load_21 = load i64* %in2_addr_33, align 8, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_789 = trunc i64 %in2_load_21 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp_537 = sext i32 %tmp_789 to i64, !dbg !348  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp_540 = mul nsw i64 %tmp_537, %tmp_384, !dbg !348 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp11 = add i64 %tmp_787, %tmp_525, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp13 = add i64 %tmp_540, %tmp_535, !dbg !348  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp12 = add i64 %tmp_530, %tmp13, !dbg !348    ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp_544 = add i64 %tmp11, %tmp12, !dbg !348    ; [#uses=1 type=i64] [debug line = 144:3]
  %output_addr_135 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !348 ; [#uses=1 type=i64*] [debug line = 144:3]
  store i64 %tmp_544, i64* %output_addr_135, align 8, !dbg !348 ; [debug line = 144:3]
  %tmp_549 = mul nsw i64 %tmp_431, %tmp_458, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_554 = mul nsw i64 %tmp_461, %tmp_428, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_559 = mul nsw i64 %tmp_409, %tmp_491, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_564 = mul nsw i64 %tmp_494, %tmp_406, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_569 = mul nsw i64 %tmp_392, %tmp_534, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_574 = mul nsw i64 %tmp_537, %tmp_389, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %in_addr_61 = getelementptr [19 x i64]* %in, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in_load_54 = load i64* %in_addr_61, align 8, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_790 = trunc i64 %in_load_54 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp_578 = sext i32 %tmp_790 to i64, !dbg !349  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp_579 = mul nsw i64 %tmp_s, %tmp_578, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2_addr_34 = getelementptr [19 x i64]* %in2, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in2_load_22 = load i64* %in2_addr_34, align 8, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_791 = trunc i64 %in2_load_22 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp_581 = sext i32 %tmp_791 to i64, !dbg !349  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp_584 = mul nsw i64 %tmp_581, %tmp_384, !dbg !349 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp15 = add i64 %tmp_549, %tmp_554, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp16 = add i64 %tmp_564, %tmp_559, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp14 = add i64 %tmp15, %tmp16, !dbg !349      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp18 = add i64 %tmp_574, %tmp_569, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp19 = add i64 %tmp_584, %tmp_579, !dbg !349  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp17 = add i64 %tmp18, %tmp19, !dbg !349      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp_591 = add i64 %tmp14, %tmp17, !dbg !349    ; [#uses=1 type=i64] [debug line = 151:3]
  %output_addr_136 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !349 ; [#uses=1 type=i64*] [debug line = 151:3]
  store i64 %tmp_591, i64* %output_addr_136, align 8, !dbg !349 ; [debug line = 151:3]
  %tmp_596 = mul nsw i64 %tmp_461, %tmp_458, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_601 = mul nsw i64 %tmp_431, %tmp_491, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_606 = mul nsw i64 %tmp_494, %tmp_428, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_611 = mul nsw i64 %tmp_392, %tmp_578, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_616 = mul nsw i64 %tmp_581, %tmp_389, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp20 = add i64 %tmp_601, %tmp_606, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp21 = add i64 %tmp_616, %tmp_611, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_792 = trunc i64 %tmp21 to i63              ; [#uses=1 type=i63]
  %tmp_793 = trunc i64 %tmp20 to i63              ; [#uses=1 type=i63]
  %tmp_683 = add i63 %tmp_792, %tmp_793, !dbg !350 ; [#uses=1 type=i63] [debug line = 159:3]
  %tmp_620 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_683, i1 false), !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_625 = mul nsw i64 %tmp_409, %tmp_534, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_630 = mul nsw i64 %tmp_537, %tmp_406, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %in_addr_62 = getelementptr [19 x i64]* %in, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in_load_55 = load i64* %in_addr_62, align 8, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_794 = trunc i64 %in_load_55 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp_634 = sext i32 %tmp_794 to i64, !dbg !350  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp_635 = mul nsw i64 %tmp_s, %tmp_634, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2_addr_35 = getelementptr [19 x i64]* %in2, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in2_load_23 = load i64* %in2_addr_35, align 8, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_795 = trunc i64 %in2_load_23 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp_637 = sext i32 %tmp_795 to i64, !dbg !350  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp_640 = mul nsw i64 %tmp_637, %tmp_384, !dbg !350 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp23 = add i64 %tmp_625, %tmp_596, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp22 = add i64 %tmp_620, %tmp23, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp25 = add i64 %tmp_640, %tmp_635, !dbg !350  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp24 = add i64 %tmp_630, %tmp25, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp_645 = add i64 %tmp22, %tmp24, !dbg !350    ; [#uses=1 type=i64] [debug line = 159:3]
  %output_addr_137 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !350 ; [#uses=1 type=i64*] [debug line = 159:3]
  store i64 %tmp_645, i64* %output_addr_137, align 8, !dbg !350 ; [debug line = 159:3]
  %tmp_650 = mul nsw i64 %tmp_461, %tmp_491, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_655 = mul nsw i64 %tmp_494, %tmp_458, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_660 = mul nsw i64 %tmp_431, %tmp_534, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_665 = mul nsw i64 %tmp_537, %tmp_428, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_670 = mul nsw i64 %tmp_409, %tmp_578, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_675 = mul nsw i64 %tmp_581, %tmp_406, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_680 = mul nsw i64 %tmp_392, %tmp_634, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_684 = mul nsw i64 %tmp_637, %tmp_389, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %in_addr_63 = getelementptr [19 x i64]* %in, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in_load_56 = load i64* %in_addr_63, align 8, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_796 = trunc i64 %in_load_56 to i32, !dbg !351 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp_685 = sext i32 %tmp_796 to i64, !dbg !351  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp_686 = mul nsw i64 %tmp_s, %tmp_685, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2_addr_36 = getelementptr [19 x i64]* %in2, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in2_load_24 = load i64* %in2_addr_36, align 8, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_797 = trunc i64 %in2_load_24 to i32, !dbg !351 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp_687 = sext i32 %tmp_797 to i64, !dbg !351  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp_688 = mul nsw i64 %tmp_687, %tmp_384, !dbg !351 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp27 = add i64 %tmp_650, %tmp_655, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp29 = add i64 %tmp_670, %tmp_665, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp28 = add i64 %tmp_660, %tmp29, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp26 = add i64 %tmp27, %tmp28, !dbg !351      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp31 = add i64 %tmp_680, %tmp_675, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp33 = add i64 %tmp_688, %tmp_686, !dbg !351  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp32 = add i64 %tmp_684, %tmp33, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp30 = add i64 %tmp31, %tmp32, !dbg !351      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp_689 = add i64 %tmp26, %tmp30, !dbg !351    ; [#uses=1 type=i64] [debug line = 168:3]
  %output_addr_138 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !351 ; [#uses=1 type=i64*] [debug line = 168:3]
  store i64 %tmp_689, i64* %output_addr_138, align 8, !dbg !351 ; [debug line = 168:3]
  %tmp_690 = mul nsw i64 %tmp_494, %tmp_491, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_691 = mul nsw i64 %tmp_431, %tmp_578, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_692 = mul nsw i64 %tmp_581, %tmp_428, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_693 = mul nsw i64 %tmp_392, %tmp_685, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_694 = mul nsw i64 %tmp_687, %tmp_389, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp34 = add i64 %tmp_690, %tmp_691, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp36 = add i64 %tmp_694, %tmp_693, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp35 = add i64 %tmp_692, %tmp36, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_798 = trunc i64 %tmp35 to i63              ; [#uses=1 type=i63]
  %tmp_799 = trunc i64 %tmp34 to i63              ; [#uses=1 type=i63]
  %tmp_695 = add i63 %tmp_798, %tmp_799, !dbg !352 ; [#uses=1 type=i63] [debug line = 178:3]
  %tmp_696 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_695, i1 false), !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_697 = mul nsw i64 %tmp_461, %tmp_534, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_698 = mul nsw i64 %tmp_537, %tmp_458, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_699 = mul nsw i64 %tmp_409, %tmp_634, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_700 = mul nsw i64 %tmp_637, %tmp_406, !dbg !352 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp37 = add i64 %tmp_696, %tmp_697, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp39 = add i64 %tmp_700, %tmp_699, !dbg !352  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp38 = add i64 %tmp_698, %tmp39, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp_701 = add i64 %tmp37, %tmp38, !dbg !352    ; [#uses=1 type=i64] [debug line = 178:3]
  %output_addr_139 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !352 ; [#uses=1 type=i64*] [debug line = 178:3]
  store i64 %tmp_701, i64* %output_addr_139, align 8, !dbg !352 ; [debug line = 178:3]
  %tmp_702 = mul nsw i64 %tmp_494, %tmp_534, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_703 = mul nsw i64 %tmp_537, %tmp_491, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_704 = mul nsw i64 %tmp_461, %tmp_578, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_705 = mul nsw i64 %tmp_581, %tmp_458, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_706 = mul nsw i64 %tmp_431, %tmp_634, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_707 = mul nsw i64 %tmp_637, %tmp_428, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_708 = mul nsw i64 %tmp_409, %tmp_685, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_709 = mul nsw i64 %tmp_687, %tmp_406, !dbg !353 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp41 = add i64 %tmp_702, %tmp_703, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp42 = add i64 %tmp_705, %tmp_704, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp40 = add i64 %tmp41, %tmp42, !dbg !353      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp44 = add i64 %tmp_707, %tmp_706, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp45 = add i64 %tmp_709, %tmp_708, !dbg !353  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp43 = add i64 %tmp44, %tmp45, !dbg !353      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp_710 = add i64 %tmp40, %tmp43, !dbg !353    ; [#uses=1 type=i64] [debug line = 187:3]
  %output_addr_140 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !353 ; [#uses=1 type=i64*] [debug line = 187:3]
  store i64 %tmp_710, i64* %output_addr_140, align 8, !dbg !353 ; [debug line = 187:3]
  %tmp_711 = mul nsw i64 %tmp_537, %tmp_534, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_712 = mul nsw i64 %tmp_494, %tmp_578, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_713 = mul nsw i64 %tmp_581, %tmp_491, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_714 = mul nsw i64 %tmp_431, %tmp_685, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_715 = mul nsw i64 %tmp_687, %tmp_428, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp46 = add i64 %tmp_712, %tmp_713, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp47 = add i64 %tmp_715, %tmp_714, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_800 = trunc i64 %tmp47 to i63              ; [#uses=1 type=i63]
  %tmp_801 = trunc i64 %tmp46 to i63              ; [#uses=1 type=i63]
  %tmp_716 = add i63 %tmp_800, %tmp_801, !dbg !354 ; [#uses=1 type=i63] [debug line = 195:3]
  %tmp_717 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_716, i1 false), !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_718 = mul nsw i64 %tmp_461, %tmp_634, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_719 = mul nsw i64 %tmp_637, %tmp_458, !dbg !354 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp48 = add i64 %tmp_711, %tmp_717, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp49 = add i64 %tmp_719, %tmp_718, !dbg !354  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp_720 = add i64 %tmp48, %tmp49, !dbg !354    ; [#uses=1 type=i64] [debug line = 195:3]
  %output_addr_141 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !354 ; [#uses=1 type=i64*] [debug line = 195:3]
  store i64 %tmp_720, i64* %output_addr_141, align 8, !dbg !354 ; [debug line = 195:3]
  %tmp_721 = mul nsw i64 %tmp_537, %tmp_578, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_722 = mul nsw i64 %tmp_581, %tmp_534, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_723 = mul nsw i64 %tmp_494, %tmp_634, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_724 = mul nsw i64 %tmp_637, %tmp_491, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_725 = mul nsw i64 %tmp_461, %tmp_685, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_726 = mul nsw i64 %tmp_687, %tmp_458, !dbg !355 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp51 = add i64 %tmp_723, %tmp_721, !dbg !355  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp50 = add i64 %tmp_722, %tmp51, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp53 = add i64 %tmp_726, %tmp_725, !dbg !355  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp52 = add i64 %tmp_724, %tmp53, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp_727 = add i64 %tmp50, %tmp52, !dbg !355    ; [#uses=1 type=i64] [debug line = 202:3]
  %output_addr_142 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !355 ; [#uses=1 type=i64*] [debug line = 202:3]
  store i64 %tmp_727, i64* %output_addr_142, align 8, !dbg !355 ; [debug line = 202:3]
  %tmp_728 = mul nsw i64 %tmp_581, %tmp_578, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_729 = mul nsw i64 %tmp_494, %tmp_685, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_730 = mul nsw i64 %tmp_687, %tmp_491, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp54 = add i64 %tmp_730, %tmp_728, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_731 = add i64 %tmp_729, %tmp54, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_802 = shl i64 %tmp_731, 1, !dbg !356       ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_732 = mul nsw i64 %tmp_537, %tmp_634, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_733 = mul nsw i64 %tmp_637, %tmp_534, !dbg !356 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp55 = add i64 %tmp_733, %tmp_802, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp_734 = add i64 %tmp_732, %tmp55, !dbg !356  ; [#uses=1 type=i64] [debug line = 208:3]
  %output_addr_143 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !356 ; [#uses=1 type=i64*] [debug line = 208:3]
  store i64 %tmp_734, i64* %output_addr_143, align 8, !dbg !356 ; [debug line = 208:3]
  %tmp_735 = mul nsw i64 %tmp_581, %tmp_634, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_736 = mul nsw i64 %tmp_637, %tmp_578, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_737 = mul nsw i64 %tmp_537, %tmp_685, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_738 = mul nsw i64 %tmp_687, %tmp_534, !dbg !357 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp56 = add i64 %tmp_735, %tmp_736, !dbg !357  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp57 = add i64 %tmp_738, %tmp_737, !dbg !357  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp_739 = add i64 %tmp56, %tmp57, !dbg !357    ; [#uses=1 type=i64] [debug line = 213:3]
  %output_addr_144 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !357 ; [#uses=1 type=i64*] [debug line = 213:3]
  store i64 %tmp_739, i64* %output_addr_144, align 8, !dbg !357 ; [debug line = 213:3]
  %tmp_740 = mul nsw i64 %tmp_637, %tmp_634, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_741 = mul nsw i64 %tmp_581, %tmp_685, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_742 = mul nsw i64 %tmp_687, %tmp_578, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_743 = add nsw i64 %tmp_741, %tmp_742, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_803 = shl i64 %tmp_743, 1, !dbg !358       ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp_744 = add nsw i64 %tmp_740, %tmp_803, !dbg !358 ; [#uses=1 type=i64] [debug line = 217:3]
  %output_addr_145 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !358 ; [#uses=1 type=i64*] [debug line = 217:3]
  store i64 %tmp_744, i64* %output_addr_145, align 8, !dbg !358 ; [debug line = 217:3]
  %tmp_745 = mul nsw i64 %tmp_637, %tmp_685, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp_746 = mul nsw i64 %tmp_687, %tmp_634, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp_747 = add nsw i64 %tmp_745, %tmp_746, !dbg !359 ; [#uses=1 type=i64] [debug line = 220:3]
  %output_addr_146 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !359 ; [#uses=1 type=i64*] [debug line = 220:3]
  store i64 %tmp_747, i64* %output_addr_146, align 8, !dbg !359 ; [debug line = 220:3]
  %tmp_363 = sext i32 %tmp_797 to i63, !dbg !360  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_364 = sext i32 %tmp_796 to i63, !dbg !360  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_748 = mul i63 %tmp_363, %tmp_364, !dbg !360 ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp_749 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_748, i1 false), !dbg !360 ; [#uses=1 type=i64] [debug line = 222:3]
  %output_addr_147 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !360 ; [#uses=1 type=i64*] [debug line = 222:3]
  store i64 %tmp_749, i64* %output_addr_147, align 8, !dbg !360 ; [debug line = 222:3]
  ret void, !dbg !361                             ; [debug line = 223:1]
}

; [#uses=1]
define internal fastcc void @fmul.2([11 x i64]* nocapture %output, [10 x i64]* nocapture %in, [10 x i64]* nocapture %in2) {
  %t = alloca [19 x i64], align 16                ; [#uses=23 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !368), !dbg !371 ; [debug line = 353:8] [debug variable = t]
  call fastcc void @fproduct.2([19 x i64]* %t, [10 x i64]* %in, [10 x i64]* %in2), !dbg !372 ; [debug line = 354:3]
  %t_addr_4 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=4 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !373), !dbg !375 ; [debug line = 229:34@356:3] [debug variable = output]
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !376 ; [#uses=1 type=i64*] [debug line = 234:3@356:3]
  %t_load = load i64* %t_addr, align 16, !dbg !376 ; [#uses=3 type=i64] [debug line = 234:3@356:3]
  %tmp_804 = shl i64 %t_load, 4, !dbg !376        ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %t_addr_62 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !376 ; [#uses=2 type=i64*] [debug line = 234:3@356:3]
  %t_load_71 = load i64* %t_addr_62, align 16, !dbg !376 ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %tmp_805 = shl i64 %t_load, 1, !dbg !377        ; [#uses=1 type=i64] [debug line = 235:3@356:3]
  %tmp = add i64 %t_load_71, %t_load, !dbg !378   ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp3 = add i64 %tmp_804, %tmp_805, !dbg !378   ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp_325_i = add nsw i64 %tmp3, %tmp, !dbg !378 ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  store i64 %tmp_325_i, i64* %t_addr_62, align 16, !dbg !378 ; [debug line = 236:3@356:3]
  %t_addr_63 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !379 ; [#uses=1 type=i64*] [debug line = 237:3@356:3]
  %t_load_72 = load i64* %t_addr_63, align 8, !dbg !379 ; [#uses=3 type=i64] [debug line = 237:3@356:3]
  %tmp_806 = shl i64 %t_load_72, 4, !dbg !379     ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %t_addr_64 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !379 ; [#uses=2 type=i64*] [debug line = 237:3@356:3]
  %t_load_73 = load i64* %t_addr_64, align 8, !dbg !379 ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %tmp_807 = shl i64 %t_load_72, 1, !dbg !380     ; [#uses=1 type=i64] [debug line = 238:3@356:3]
  %tmp4 = add i64 %t_load_73, %t_load_72, !dbg !381 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp5 = add i64 %tmp_806, %tmp_807, !dbg !381   ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp_330_i = add nsw i64 %tmp5, %tmp4, !dbg !381 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  store i64 %tmp_330_i, i64* %t_addr_64, align 8, !dbg !381 ; [debug line = 239:3@356:3]
  %t_addr_65 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !382 ; [#uses=1 type=i64*] [debug line = 240:3@356:3]
  %t_load_74 = load i64* %t_addr_65, align 16, !dbg !382 ; [#uses=3 type=i64] [debug line = 240:3@356:3]
  %tmp_808 = shl i64 %t_load_74, 4, !dbg !382     ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %t_addr_66 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !382 ; [#uses=2 type=i64*] [debug line = 240:3@356:3]
  %t_load_75 = load i64* %t_addr_66, align 16, !dbg !382 ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %tmp_809 = shl i64 %t_load_74, 1, !dbg !383     ; [#uses=1 type=i64] [debug line = 241:3@356:3]
  %tmp6 = add i64 %t_load_75, %t_load_74, !dbg !384 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp7 = add i64 %tmp_808, %tmp_809, !dbg !384   ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp_335_i = add nsw i64 %tmp7, %tmp6, !dbg !384 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  store i64 %tmp_335_i, i64* %t_addr_66, align 16, !dbg !384 ; [debug line = 242:3@356:3]
  %t_addr_67 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !385 ; [#uses=1 type=i64*] [debug line = 243:3@356:3]
  %t_load_76 = load i64* %t_addr_67, align 8, !dbg !385 ; [#uses=3 type=i64] [debug line = 243:3@356:3]
  %tmp_810 = shl i64 %t_load_76, 4, !dbg !385     ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %t_addr_68 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !385 ; [#uses=2 type=i64*] [debug line = 243:3@356:3]
  %t_load_77 = load i64* %t_addr_68, align 8, !dbg !385 ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %tmp_811 = shl i64 %t_load_76, 1, !dbg !386     ; [#uses=1 type=i64] [debug line = 244:3@356:3]
  %tmp8 = add i64 %t_load_77, %t_load_76, !dbg !387 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp9 = add i64 %tmp_810, %tmp_811, !dbg !387   ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp_340_i = add nsw i64 %tmp9, %tmp8, !dbg !387 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  store i64 %tmp_340_i, i64* %t_addr_68, align 8, !dbg !387 ; [debug line = 245:3@356:3]
  %t_addr_69 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !388 ; [#uses=1 type=i64*] [debug line = 246:3@356:3]
  %t_load_78 = load i64* %t_addr_69, align 16, !dbg !388 ; [#uses=3 type=i64] [debug line = 246:3@356:3]
  %tmp_812 = shl i64 %t_load_78, 4, !dbg !388     ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %t_addr_70 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !388 ; [#uses=2 type=i64*] [debug line = 246:3@356:3]
  %t_load_79 = load i64* %t_addr_70, align 16, !dbg !388 ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %tmp_813 = shl i64 %t_load_78, 1, !dbg !389     ; [#uses=1 type=i64] [debug line = 247:3@356:3]
  %tmp10 = add i64 %t_load_79, %t_load_78, !dbg !390 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp11 = add i64 %tmp_812, %tmp_813, !dbg !390  ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp_345_i = add nsw i64 %tmp11, %tmp10, !dbg !390 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  store i64 %tmp_345_i, i64* %t_addr_70, align 16, !dbg !390 ; [debug line = 248:3@356:3]
  %t_addr_71 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !391 ; [#uses=1 type=i64*] [debug line = 249:3@356:3]
  %t_load_80 = load i64* %t_addr_71, align 8, !dbg !391 ; [#uses=3 type=i64] [debug line = 249:3@356:3]
  %tmp_814 = shl i64 %t_load_80, 4, !dbg !391     ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %t_addr_72 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !391 ; [#uses=2 type=i64*] [debug line = 249:3@356:3]
  %t_load_81 = load i64* %t_addr_72, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %tmp_815 = shl i64 %t_load_80, 1, !dbg !392     ; [#uses=1 type=i64] [debug line = 250:3@356:3]
  %tmp12 = add i64 %t_load_81, %t_load_80, !dbg !393 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp13 = add i64 %tmp_814, %tmp_815, !dbg !393  ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp_350_i = add nsw i64 %tmp13, %tmp12, !dbg !393 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  store i64 %tmp_350_i, i64* %t_addr_72, align 8, !dbg !393 ; [debug line = 251:3@356:3]
  %t_addr_73 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !394 ; [#uses=1 type=i64*] [debug line = 252:3@356:3]
  %t_load_82 = load i64* %t_addr_73, align 16, !dbg !394 ; [#uses=3 type=i64] [debug line = 252:3@356:3]
  %tmp_816 = shl i64 %t_load_82, 4, !dbg !394     ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %t_addr_74 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !394 ; [#uses=2 type=i64*] [debug line = 252:3@356:3]
  %t_load_83 = load i64* %t_addr_74, align 16, !dbg !394 ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %tmp_817 = shl i64 %t_load_82, 1, !dbg !395     ; [#uses=1 type=i64] [debug line = 253:3@356:3]
  %tmp14 = add i64 %t_load_83, %t_load_82, !dbg !396 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp15 = add i64 %tmp_816, %tmp_817, !dbg !396  ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp_355_i = add nsw i64 %tmp15, %tmp14, !dbg !396 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  store i64 %tmp_355_i, i64* %t_addr_74, align 16, !dbg !396 ; [debug line = 254:3@356:3]
  %t_addr_75 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !397 ; [#uses=1 type=i64*] [debug line = 255:3@356:3]
  %t_load_84 = load i64* %t_addr_75, align 8, !dbg !397 ; [#uses=3 type=i64] [debug line = 255:3@356:3]
  %tmp_818 = shl i64 %t_load_84, 4, !dbg !397     ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %t_addr_76 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !397 ; [#uses=4 type=i64*] [debug line = 255:3@356:3]
  %t_load_85 = load i64* %t_addr_76, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %tmp_819 = shl i64 %t_load_84, 1, !dbg !398     ; [#uses=1 type=i64] [debug line = 256:3@356:3]
  %tmp16 = add i64 %t_load_85, %t_load_84, !dbg !399 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp17 = add i64 %tmp_818, %tmp_819, !dbg !399  ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp_360_i = add nsw i64 %tmp17, %tmp16, !dbg !399 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  store i64 %tmp_360_i, i64* %t_addr_76, align 8, !dbg !399 ; [debug line = 257:3@356:3]
  %t_addr_77 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !400 ; [#uses=4 type=i64*] [debug line = 258:3@356:3]
  %t_load_86 = load i64* %t_addr_77, align 16, !dbg !400 ; [#uses=3 type=i64] [debug line = 258:3@356:3]
  %tmp_820 = shl i64 %t_load_86, 4, !dbg !400     ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %t_load_4 = load i64* %t_addr_4, align 16, !dbg !400 ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %tmp_821 = shl i64 %t_load_86, 1, !dbg !401     ; [#uses=1 type=i64] [debug line = 259:3@356:3]
  %tmp18 = add i64 %t_load_4, %t_load_86, !dbg !402 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp19 = add i64 %tmp_820, %tmp_821, !dbg !402  ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp_365_i = add nsw i64 %tmp19, %tmp18, !dbg !402 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  store i64 %tmp_365_i, i64* %t_addr_4, align 16, !dbg !402 ; [debug line = 260:3@356:3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !403), !dbg !405 ; [debug line = 302:40@357:3] [debug variable = output]
  store i64 0, i64* %t_addr_77, align 16, !dbg !406 ; [debug line = 305:3@357:3]
  br label %1, !dbg !407                          ; [debug line = 307:8@357:3]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]             ; [#uses=4 type=i4]
  %tmp_i = icmp ult i4 %i_i, -6, !dbg !407        ; [#uses=1 type=i1] [debug line = 307:8@357:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit, !dbg !407 ; [debug line = 307:8@357:3]

; <label>:2                                       ; preds = %1
  %tmp_i_15 = zext i4 %i_i to i64, !dbg !408      ; [#uses=1 type=i64] [debug line = 308:17@357:3]
  %t_addr_78 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_15, !dbg !408 ; [#uses=2 type=i64*] [debug line = 308:17@357:3]
  %t_load_87 = load i64* %t_addr_78, align 16, !dbg !408 ; [#uses=3 type=i64] [debug line = 308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %t_load_87}, i64 0, metadata !409), !dbg !410 ; [debug line = 271:24@308:17@357:3] [debug variable = v]
  %tmp_822 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_87, i32 63), !dbg !411 ; [#uses=1 type=i1] [debug line = 276:50@308:17@357:3]
  %tmp_i_i_cast_cast = select i1 %tmp_822, i64 67108863, i64 0, !dbg !412 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp_1064_i_i = add nsw i64 %t_load_87, %tmp_i_i_cast_cast, !dbg !412 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63), !dbg !412 ; [#uses=2 type=i38] [debug line = 280:3@308:17@357:3]
  %over = sext i38 %tmp_397_i_i to i64, !dbg !412 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !413), !dbg !408 ; [debug line = 308:17@357:3] [debug variable = over]
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0), !dbg !414 ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  %tmp_367_i = sub nsw i64 %t_load_87, %tmp_366_i, !dbg !414 ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  store i64 %tmp_367_i, i64* %t_addr_78, align 16, !dbg !414 ; [debug line = 313:5@357:3]
  %tmp_368_i = or i4 %i_i, 1, !dbg !415           ; [#uses=1 type=i4] [debug line = 314:5@357:3]
  %tmp_369_i = zext i4 %tmp_368_i to i64, !dbg !415 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %t_addr_79 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i, !dbg !415 ; [#uses=2 type=i64*] [debug line = 314:5@357:3]
  %t_load_88 = load i64* %t_addr_79, align 8, !dbg !415 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %v_assign_9 = add nsw i64 %t_load_88, %over, !dbg !415 ; [#uses=3 type=i64] [debug line = 314:5@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_9}, i64 0, metadata !416), !dbg !418 ; [debug line = 287:24@322:12@357:3] [debug variable = v]
  %tmp_823 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_9, i32 63), !dbg !419 ; [#uses=1 type=i1] [debug line = 292:50@322:12@357:3]
  %tmp_i10_i_cast_cast = select i1 %tmp_823, i64 33554431, i64 0, !dbg !420 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_9, !dbg !420 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63), !dbg !420 ; [#uses=2 type=i39] [debug line = 296:3@322:12@357:3]
  %over_9 = sext i39 %tmp_399_i_i to i64, !dbg !420 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over_9}, i64 0, metadata !413), !dbg !417 ; [debug line = 322:12@357:3] [debug variable = over]
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0), !dbg !421 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  %tmp_372_i = sub nsw i64 %v_assign_9, %tmp_371_i, !dbg !421 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  store i64 %tmp_372_i, i64* %t_addr_79, align 8, !dbg !421 ; [debug line = 323:5@357:3]
  %i = add i4 %i_i, 2, !dbg !422                  ; [#uses=2 type=i4] [debug line = 324:5@357:3]
  %tmp_373_i = zext i4 %i to i64, !dbg !422       ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %t_addr_80 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i, !dbg !422 ; [#uses=2 type=i64*] [debug line = 324:5@357:3]
  %t_load_89 = load i64* %t_addr_80, align 16, !dbg !422 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %tmp_374_i = add nsw i64 %t_load_89, %over_9, !dbg !422 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  store i64 %tmp_374_i, i64* %t_addr_80, align 16, !dbg !422 ; [debug line = 324:5@357:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !423), !dbg !424 ; [debug line = 307:23@357:3] [debug variable = i]
  br label %1, !dbg !424                          ; [debug line = 307:23@357:3]

freduce_coefficients.exit:                        ; preds = %1
  %t_load_90 = load i64* %t_addr_77, align 16, !dbg !425 ; [#uses=3 type=i64] [debug line = 327:3@357:3]
  %tmp_824 = shl i64 %t_load_90, 4, !dbg !425     ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %t_load_91 = load i64* %t_addr_4, align 16, !dbg !425 ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %tmp_825 = shl i64 %t_load_90, 1, !dbg !426     ; [#uses=1 type=i64] [debug line = 328:3@357:3]
  %tmp21 = add i64 %t_load_90, %t_load_91, !dbg !427 ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %tmp22 = add i64 %tmp_825, %tmp_824, !dbg !427  ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %v_assign_s = add nsw i64 %tmp21, %tmp22, !dbg !427 ; [#uses=3 type=i64] [debug line = 329:3@357:3]
  store i64 0, i64* %t_addr_77, align 16, !dbg !428 ; [debug line = 331:3@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_s}, i64 0, metadata !429), !dbg !431 ; [debug line = 271:24@336:17@357:3] [debug variable = v]
  %tmp_826 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_s, i32 63), !dbg !432 ; [#uses=1 type=i1] [debug line = 276:50@336:17@357:3]
  %tmp_i13_i_cast_cast = select i1 %tmp_826, i64 67108863, i64 0, !dbg !433 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp_1064_i14_i = add nsw i64 %v_assign_s, %tmp_i13_i_cast_cast, !dbg !433 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63), !dbg !433 ; [#uses=2 type=i38] [debug line = 280:3@336:17@357:3]
  %over_10 = sext i38 %tmp_397_i16_i to i64, !dbg !433 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over_10}, i64 0, metadata !434), !dbg !430 ; [debug line = 336:17@357:3] [debug variable = over]
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0), !dbg !435 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  %tmp_381_i = sub nsw i64 %v_assign_s, %tmp_380_i, !dbg !435 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  store i64 %tmp_381_i, i64* %t_addr_4, align 16, !dbg !435 ; [debug line = 337:5@357:3]
  %t_load_92 = load i64* %t_addr_76, align 8, !dbg !436 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  %tmp_382_i = add nsw i64 %over_10, %t_load_92, !dbg !436 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  store i64 %tmp_382_i, i64* %t_addr_76, align 8, !dbg !436 ; [debug line = 338:5@357:3]
  br label %3, !dbg !437                          ; [debug line = 61:6@359:3]

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i3 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_6, %4 ] ; [#uses=3 type=i4]
  %exitcond_i = icmp eq i4 %i_i3, -6, !dbg !437   ; [#uses=1 type=i1] [debug line = 61:6@359:3]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_6 = add i4 %i_i3, 1, !dbg !439               ; [#uses=1 type=i4] [debug line = 61:18@359:3]
  br i1 %exitcond_i, label %_memcpy.2.exit, label %4, !dbg !437 ; [debug line = 61:6@359:3]

; <label>:4                                       ; preds = %3
  %tmp_i4 = zext i4 %i_i3 to i64, !dbg !440       ; [#uses=2 type=i64] [debug line = 62:3@359:3]
  %t_addr_81 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i4, !dbg !440 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  %t_load_93 = load i64* %t_addr_81, align 8, !dbg !440 ; [#uses=1 type=i64] [debug line = 62:3@359:3]
  %output_addr = getelementptr [11 x i64]* %output, i64 0, i64 %tmp_i4, !dbg !440 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  store i64 %t_load_93, i64* %output_addr, align 8, !dbg !440 ; [debug line = 62:3@359:3]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !441), !dbg !439 ; [debug line = 61:18@359:3] [debug variable = i]
  br label %3, !dbg !439                          ; [debug line = 61:18@359:3]

_memcpy.2.exit:                                   ; preds = %3
  ret void, !dbg !442                             ; [debug line = 360:1]
}

; [#uses=1]
define internal fastcc void @fmul.1([10 x i64]* nocapture %output, [10 x i64]* nocapture %in, [11 x i64]* nocapture %in2) {
  %t = alloca [19 x i64], align 16                ; [#uses=23 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !368), !dbg !371 ; [debug line = 353:8] [debug variable = t]
  call fastcc void @fproduct.3([19 x i64]* %t, [10 x i64]* %in, [11 x i64]* %in2), !dbg !372 ; [debug line = 354:3]
  %t_addr_5 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=4 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !373), !dbg !375 ; [debug line = 229:34@356:3] [debug variable = output]
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !376 ; [#uses=1 type=i64*] [debug line = 234:3@356:3]
  %t_load = load i64* %t_addr, align 16, !dbg !376 ; [#uses=3 type=i64] [debug line = 234:3@356:3]
  %tmp_827 = shl i64 %t_load, 4, !dbg !376        ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %t_addr_82 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !376 ; [#uses=2 type=i64*] [debug line = 234:3@356:3]
  %t_load_94 = load i64* %t_addr_82, align 16, !dbg !376 ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %tmp_828 = shl i64 %t_load, 1, !dbg !377        ; [#uses=1 type=i64] [debug line = 235:3@356:3]
  %tmp = add i64 %t_load_94, %t_load, !dbg !378   ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp3 = add i64 %tmp_827, %tmp_828, !dbg !378   ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp_325_i = add nsw i64 %tmp3, %tmp, !dbg !378 ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  store i64 %tmp_325_i, i64* %t_addr_82, align 16, !dbg !378 ; [debug line = 236:3@356:3]
  %t_addr_83 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !379 ; [#uses=1 type=i64*] [debug line = 237:3@356:3]
  %t_load_95 = load i64* %t_addr_83, align 8, !dbg !379 ; [#uses=3 type=i64] [debug line = 237:3@356:3]
  %tmp_829 = shl i64 %t_load_95, 4, !dbg !379     ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %t_addr_84 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !379 ; [#uses=2 type=i64*] [debug line = 237:3@356:3]
  %t_load_96 = load i64* %t_addr_84, align 8, !dbg !379 ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %tmp_830 = shl i64 %t_load_95, 1, !dbg !380     ; [#uses=1 type=i64] [debug line = 238:3@356:3]
  %tmp4 = add i64 %t_load_96, %t_load_95, !dbg !381 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp5 = add i64 %tmp_829, %tmp_830, !dbg !381   ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp_330_i = add nsw i64 %tmp5, %tmp4, !dbg !381 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  store i64 %tmp_330_i, i64* %t_addr_84, align 8, !dbg !381 ; [debug line = 239:3@356:3]
  %t_addr_85 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !382 ; [#uses=1 type=i64*] [debug line = 240:3@356:3]
  %t_load_97 = load i64* %t_addr_85, align 16, !dbg !382 ; [#uses=3 type=i64] [debug line = 240:3@356:3]
  %tmp_831 = shl i64 %t_load_97, 4, !dbg !382     ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %t_addr_86 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !382 ; [#uses=2 type=i64*] [debug line = 240:3@356:3]
  %t_load_98 = load i64* %t_addr_86, align 16, !dbg !382 ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %tmp_832 = shl i64 %t_load_97, 1, !dbg !383     ; [#uses=1 type=i64] [debug line = 241:3@356:3]
  %tmp6 = add i64 %t_load_98, %t_load_97, !dbg !384 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp7 = add i64 %tmp_831, %tmp_832, !dbg !384   ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp_335_i = add nsw i64 %tmp7, %tmp6, !dbg !384 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  store i64 %tmp_335_i, i64* %t_addr_86, align 16, !dbg !384 ; [debug line = 242:3@356:3]
  %t_addr_87 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !385 ; [#uses=1 type=i64*] [debug line = 243:3@356:3]
  %t_load_99 = load i64* %t_addr_87, align 8, !dbg !385 ; [#uses=3 type=i64] [debug line = 243:3@356:3]
  %tmp_833 = shl i64 %t_load_99, 4, !dbg !385     ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %t_addr_88 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !385 ; [#uses=2 type=i64*] [debug line = 243:3@356:3]
  %t_load_100 = load i64* %t_addr_88, align 8, !dbg !385 ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %tmp_834 = shl i64 %t_load_99, 1, !dbg !386     ; [#uses=1 type=i64] [debug line = 244:3@356:3]
  %tmp8 = add i64 %t_load_100, %t_load_99, !dbg !387 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp9 = add i64 %tmp_833, %tmp_834, !dbg !387   ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp_340_i = add nsw i64 %tmp9, %tmp8, !dbg !387 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  store i64 %tmp_340_i, i64* %t_addr_88, align 8, !dbg !387 ; [debug line = 245:3@356:3]
  %t_addr_89 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !388 ; [#uses=1 type=i64*] [debug line = 246:3@356:3]
  %t_load_101 = load i64* %t_addr_89, align 16, !dbg !388 ; [#uses=3 type=i64] [debug line = 246:3@356:3]
  %tmp_835 = shl i64 %t_load_101, 4, !dbg !388    ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %t_addr_90 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !388 ; [#uses=2 type=i64*] [debug line = 246:3@356:3]
  %t_load_102 = load i64* %t_addr_90, align 16, !dbg !388 ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %tmp_836 = shl i64 %t_load_101, 1, !dbg !389    ; [#uses=1 type=i64] [debug line = 247:3@356:3]
  %tmp10 = add i64 %t_load_102, %t_load_101, !dbg !390 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp11 = add i64 %tmp_835, %tmp_836, !dbg !390  ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp_345_i = add nsw i64 %tmp11, %tmp10, !dbg !390 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  store i64 %tmp_345_i, i64* %t_addr_90, align 16, !dbg !390 ; [debug line = 248:3@356:3]
  %t_addr_91 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !391 ; [#uses=1 type=i64*] [debug line = 249:3@356:3]
  %t_load_103 = load i64* %t_addr_91, align 8, !dbg !391 ; [#uses=3 type=i64] [debug line = 249:3@356:3]
  %tmp_837 = shl i64 %t_load_103, 4, !dbg !391    ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %t_addr_92 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !391 ; [#uses=2 type=i64*] [debug line = 249:3@356:3]
  %t_load_104 = load i64* %t_addr_92, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %tmp_838 = shl i64 %t_load_103, 1, !dbg !392    ; [#uses=1 type=i64] [debug line = 250:3@356:3]
  %tmp12 = add i64 %t_load_104, %t_load_103, !dbg !393 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp13 = add i64 %tmp_837, %tmp_838, !dbg !393  ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp_350_i = add nsw i64 %tmp13, %tmp12, !dbg !393 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  store i64 %tmp_350_i, i64* %t_addr_92, align 8, !dbg !393 ; [debug line = 251:3@356:3]
  %t_addr_93 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !394 ; [#uses=1 type=i64*] [debug line = 252:3@356:3]
  %t_load_105 = load i64* %t_addr_93, align 16, !dbg !394 ; [#uses=3 type=i64] [debug line = 252:3@356:3]
  %tmp_839 = shl i64 %t_load_105, 4, !dbg !394    ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %t_addr_94 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !394 ; [#uses=2 type=i64*] [debug line = 252:3@356:3]
  %t_load_106 = load i64* %t_addr_94, align 16, !dbg !394 ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %tmp_840 = shl i64 %t_load_105, 1, !dbg !395    ; [#uses=1 type=i64] [debug line = 253:3@356:3]
  %tmp14 = add i64 %t_load_106, %t_load_105, !dbg !396 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp15 = add i64 %tmp_839, %tmp_840, !dbg !396  ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp_355_i = add nsw i64 %tmp15, %tmp14, !dbg !396 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  store i64 %tmp_355_i, i64* %t_addr_94, align 16, !dbg !396 ; [debug line = 254:3@356:3]
  %t_addr_95 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !397 ; [#uses=1 type=i64*] [debug line = 255:3@356:3]
  %t_load_107 = load i64* %t_addr_95, align 8, !dbg !397 ; [#uses=3 type=i64] [debug line = 255:3@356:3]
  %tmp_841 = shl i64 %t_load_107, 4, !dbg !397    ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %t_addr_96 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !397 ; [#uses=4 type=i64*] [debug line = 255:3@356:3]
  %t_load_108 = load i64* %t_addr_96, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %tmp_842 = shl i64 %t_load_107, 1, !dbg !398    ; [#uses=1 type=i64] [debug line = 256:3@356:3]
  %tmp16 = add i64 %t_load_108, %t_load_107, !dbg !399 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp17 = add i64 %tmp_841, %tmp_842, !dbg !399  ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp_360_i = add nsw i64 %tmp17, %tmp16, !dbg !399 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  store i64 %tmp_360_i, i64* %t_addr_96, align 8, !dbg !399 ; [debug line = 257:3@356:3]
  %t_addr_97 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !400 ; [#uses=4 type=i64*] [debug line = 258:3@356:3]
  %t_load_109 = load i64* %t_addr_97, align 16, !dbg !400 ; [#uses=3 type=i64] [debug line = 258:3@356:3]
  %tmp_843 = shl i64 %t_load_109, 4, !dbg !400    ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %t_load_5 = load i64* %t_addr_5, align 16, !dbg !400 ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %tmp_844 = shl i64 %t_load_109, 1, !dbg !401    ; [#uses=1 type=i64] [debug line = 259:3@356:3]
  %tmp18 = add i64 %t_load_5, %t_load_109, !dbg !402 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp19 = add i64 %tmp_843, %tmp_844, !dbg !402  ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp_365_i = add nsw i64 %tmp19, %tmp18, !dbg !402 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  store i64 %tmp_365_i, i64* %t_addr_5, align 16, !dbg !402 ; [debug line = 260:3@356:3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !403), !dbg !405 ; [debug line = 302:40@357:3] [debug variable = output]
  store i64 0, i64* %t_addr_97, align 16, !dbg !406 ; [debug line = 305:3@357:3]
  br label %1, !dbg !407                          ; [debug line = 307:8@357:3]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]             ; [#uses=4 type=i4]
  %tmp_i = icmp ult i4 %i_i, -6, !dbg !407        ; [#uses=1 type=i1] [debug line = 307:8@357:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit, !dbg !407 ; [debug line = 307:8@357:3]

; <label>:2                                       ; preds = %1
  %tmp_i_17 = zext i4 %i_i to i64, !dbg !408      ; [#uses=1 type=i64] [debug line = 308:17@357:3]
  %t_addr_98 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_17, !dbg !408 ; [#uses=2 type=i64*] [debug line = 308:17@357:3]
  %t_load_110 = load i64* %t_addr_98, align 16, !dbg !408 ; [#uses=3 type=i64] [debug line = 308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %t_load_110}, i64 0, metadata !409), !dbg !410 ; [debug line = 271:24@308:17@357:3] [debug variable = v]
  %tmp_845 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_110, i32 63), !dbg !411 ; [#uses=1 type=i1] [debug line = 276:50@308:17@357:3]
  %tmp_i_i_cast_cast = select i1 %tmp_845, i64 67108863, i64 0, !dbg !412 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp_1064_i_i = add nsw i64 %t_load_110, %tmp_i_i_cast_cast, !dbg !412 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63), !dbg !412 ; [#uses=2 type=i38] [debug line = 280:3@308:17@357:3]
  %over = sext i38 %tmp_397_i_i to i64, !dbg !412 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !413), !dbg !408 ; [debug line = 308:17@357:3] [debug variable = over]
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0), !dbg !414 ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  %tmp_367_i = sub nsw i64 %t_load_110, %tmp_366_i, !dbg !414 ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  store i64 %tmp_367_i, i64* %t_addr_98, align 16, !dbg !414 ; [debug line = 313:5@357:3]
  %tmp_368_i = or i4 %i_i, 1, !dbg !415           ; [#uses=1 type=i4] [debug line = 314:5@357:3]
  %tmp_369_i = zext i4 %tmp_368_i to i64, !dbg !415 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %t_addr_99 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i, !dbg !415 ; [#uses=2 type=i64*] [debug line = 314:5@357:3]
  %t_load_111 = load i64* %t_addr_99, align 8, !dbg !415 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %v_assign_s = add nsw i64 %t_load_111, %over, !dbg !415 ; [#uses=3 type=i64] [debug line = 314:5@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_s}, i64 0, metadata !416), !dbg !418 ; [debug line = 287:24@322:12@357:3] [debug variable = v]
  %tmp_846 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_s, i32 63), !dbg !419 ; [#uses=1 type=i1] [debug line = 292:50@322:12@357:3]
  %tmp_i10_i_cast_cast = select i1 %tmp_846, i64 33554431, i64 0, !dbg !420 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_s, !dbg !420 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63), !dbg !420 ; [#uses=2 type=i39] [debug line = 296:3@322:12@357:3]
  %over_11 = sext i39 %tmp_399_i_i to i64, !dbg !420 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over_11}, i64 0, metadata !413), !dbg !417 ; [debug line = 322:12@357:3] [debug variable = over]
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0), !dbg !421 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  %tmp_372_i = sub nsw i64 %v_assign_s, %tmp_371_i, !dbg !421 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  store i64 %tmp_372_i, i64* %t_addr_99, align 8, !dbg !421 ; [debug line = 323:5@357:3]
  %i = add i4 %i_i, 2, !dbg !422                  ; [#uses=2 type=i4] [debug line = 324:5@357:3]
  %tmp_373_i = zext i4 %i to i64, !dbg !422       ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %t_addr_100 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i, !dbg !422 ; [#uses=2 type=i64*] [debug line = 324:5@357:3]
  %t_load_112 = load i64* %t_addr_100, align 16, !dbg !422 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %tmp_374_i = add nsw i64 %t_load_112, %over_11, !dbg !422 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  store i64 %tmp_374_i, i64* %t_addr_100, align 16, !dbg !422 ; [debug line = 324:5@357:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !423), !dbg !424 ; [debug line = 307:23@357:3] [debug variable = i]
  br label %1, !dbg !424                          ; [debug line = 307:23@357:3]

freduce_coefficients.exit:                        ; preds = %1
  %t_load_113 = load i64* %t_addr_97, align 16, !dbg !425 ; [#uses=3 type=i64] [debug line = 327:3@357:3]
  %tmp_847 = shl i64 %t_load_113, 4, !dbg !425    ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %t_load_114 = load i64* %t_addr_5, align 16, !dbg !425 ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %tmp_848 = shl i64 %t_load_113, 1, !dbg !426    ; [#uses=1 type=i64] [debug line = 328:3@357:3]
  %tmp21 = add i64 %t_load_113, %t_load_114, !dbg !427 ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %tmp22 = add i64 %tmp_848, %tmp_847, !dbg !427  ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %v_assign_1 = add nsw i64 %tmp21, %tmp22, !dbg !427 ; [#uses=3 type=i64] [debug line = 329:3@357:3]
  store i64 0, i64* %t_addr_97, align 16, !dbg !428 ; [debug line = 331:3@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_1}, i64 0, metadata !429), !dbg !431 ; [debug line = 271:24@336:17@357:3] [debug variable = v]
  %tmp_849 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_1, i32 63), !dbg !432 ; [#uses=1 type=i1] [debug line = 276:50@336:17@357:3]
  %tmp_i13_i_cast_cast = select i1 %tmp_849, i64 67108863, i64 0, !dbg !433 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp_1064_i14_i = add nsw i64 %v_assign_1, %tmp_i13_i_cast_cast, !dbg !433 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63), !dbg !433 ; [#uses=2 type=i38] [debug line = 280:3@336:17@357:3]
  %over_12 = sext i38 %tmp_397_i16_i to i64, !dbg !433 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over_12}, i64 0, metadata !434), !dbg !430 ; [debug line = 336:17@357:3] [debug variable = over]
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0), !dbg !435 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  %tmp_381_i = sub nsw i64 %v_assign_1, %tmp_380_i, !dbg !435 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  store i64 %tmp_381_i, i64* %t_addr_5, align 16, !dbg !435 ; [debug line = 337:5@357:3]
  %t_load_115 = load i64* %t_addr_96, align 8, !dbg !436 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  %tmp_382_i = add nsw i64 %over_12, %t_load_115, !dbg !436 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  store i64 %tmp_382_i, i64* %t_addr_96, align 8, !dbg !436 ; [debug line = 338:5@357:3]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !443), !dbg !444 ; [debug line = 59:20@359:3] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !445), !dbg !446 ; [debug line = 59:31@359:3] [debug variable = src]
  br label %3, !dbg !437                          ; [debug line = 61:6@359:3]

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i3 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_7, %4 ] ; [#uses=3 type=i4]
  %exitcond_i = icmp eq i4 %i_i3, -6, !dbg !437   ; [#uses=1 type=i1] [debug line = 61:6@359:3]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_7 = add i4 %i_i3, 1, !dbg !439               ; [#uses=1 type=i4] [debug line = 61:18@359:3]
  br i1 %exitcond_i, label %_memcpy.exit, label %4, !dbg !437 ; [debug line = 61:6@359:3]

; <label>:4                                       ; preds = %3
  %tmp_i4 = zext i4 %i_i3 to i64, !dbg !440       ; [#uses=2 type=i64] [debug line = 62:3@359:3]
  %t_addr_101 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i4, !dbg !440 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  %t_load_116 = load i64* %t_addr_101, align 8, !dbg !440 ; [#uses=1 type=i64] [debug line = 62:3@359:3]
  %output_addr = getelementptr [10 x i64]* %output, i64 0, i64 %tmp_i4, !dbg !440 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  store i64 %t_load_116, i64* %output_addr, align 8, !dbg !440 ; [debug line = 62:3@359:3]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !441), !dbg !439 ; [debug line = 61:18@359:3] [debug variable = i]
  br label %3, !dbg !439                          ; [debug line = 61:18@359:3]

_memcpy.exit:                                     ; preds = %3
  ret void, !dbg !442                             ; [debug line = 360:1]
}

; [#uses=10]
define internal fastcc void @fmul([10 x i64]* nocapture %output, [10 x i64]* nocapture %in, [10 x i64]* nocapture %in2) {
  %t = alloca [19 x i64], align 16                ; [#uses=23 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !447), !dbg !448 ; [debug line = 352:12] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %in}, i64 0, metadata !449), !dbg !451 ; [debug line = 352:32] [debug variable = in]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %in2}, i64 0, metadata !452), !dbg !453 ; [debug line = 352:48] [debug variable = in2]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !368), !dbg !371 ; [debug line = 353:8] [debug variable = t]
  call fastcc void @fproduct.2([19 x i64]* %t, [10 x i64]* %in, [10 x i64]* %in2), !dbg !372 ; [debug line = 354:3]
  %t_addr_6 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=4 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !373), !dbg !375 ; [debug line = 229:34@356:3] [debug variable = output]
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !376 ; [#uses=1 type=i64*] [debug line = 234:3@356:3]
  %t_load = load i64* %t_addr, align 16, !dbg !376 ; [#uses=3 type=i64] [debug line = 234:3@356:3]
  %tmp_850 = shl i64 %t_load, 4, !dbg !376        ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %t_addr_102 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !376 ; [#uses=2 type=i64*] [debug line = 234:3@356:3]
  %t_load_117 = load i64* %t_addr_102, align 16, !dbg !376 ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %tmp_851 = shl i64 %t_load, 1, !dbg !377        ; [#uses=1 type=i64] [debug line = 235:3@356:3]
  %tmp = add i64 %t_load_117, %t_load, !dbg !378  ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp3 = add i64 %tmp_850, %tmp_851, !dbg !378   ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp_325_i = add nsw i64 %tmp3, %tmp, !dbg !378 ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  store i64 %tmp_325_i, i64* %t_addr_102, align 16, !dbg !378 ; [debug line = 236:3@356:3]
  %t_addr_103 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !379 ; [#uses=1 type=i64*] [debug line = 237:3@356:3]
  %t_load_118 = load i64* %t_addr_103, align 8, !dbg !379 ; [#uses=3 type=i64] [debug line = 237:3@356:3]
  %tmp_852 = shl i64 %t_load_118, 4, !dbg !379    ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %t_addr_104 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !379 ; [#uses=2 type=i64*] [debug line = 237:3@356:3]
  %t_load_119 = load i64* %t_addr_104, align 8, !dbg !379 ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %tmp_853 = shl i64 %t_load_118, 1, !dbg !380    ; [#uses=1 type=i64] [debug line = 238:3@356:3]
  %tmp4 = add i64 %t_load_119, %t_load_118, !dbg !381 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp5 = add i64 %tmp_852, %tmp_853, !dbg !381   ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp_330_i = add nsw i64 %tmp5, %tmp4, !dbg !381 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  store i64 %tmp_330_i, i64* %t_addr_104, align 8, !dbg !381 ; [debug line = 239:3@356:3]
  %t_addr_105 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !382 ; [#uses=1 type=i64*] [debug line = 240:3@356:3]
  %t_load_120 = load i64* %t_addr_105, align 16, !dbg !382 ; [#uses=3 type=i64] [debug line = 240:3@356:3]
  %tmp_854 = shl i64 %t_load_120, 4, !dbg !382    ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %t_addr_106 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !382 ; [#uses=2 type=i64*] [debug line = 240:3@356:3]
  %t_load_121 = load i64* %t_addr_106, align 16, !dbg !382 ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %tmp_855 = shl i64 %t_load_120, 1, !dbg !383    ; [#uses=1 type=i64] [debug line = 241:3@356:3]
  %tmp6 = add i64 %t_load_121, %t_load_120, !dbg !384 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp7 = add i64 %tmp_854, %tmp_855, !dbg !384   ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp_335_i = add nsw i64 %tmp7, %tmp6, !dbg !384 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  store i64 %tmp_335_i, i64* %t_addr_106, align 16, !dbg !384 ; [debug line = 242:3@356:3]
  %t_addr_107 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !385 ; [#uses=1 type=i64*] [debug line = 243:3@356:3]
  %t_load_122 = load i64* %t_addr_107, align 8, !dbg !385 ; [#uses=3 type=i64] [debug line = 243:3@356:3]
  %tmp_856 = shl i64 %t_load_122, 4, !dbg !385    ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %t_addr_108 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !385 ; [#uses=2 type=i64*] [debug line = 243:3@356:3]
  %t_load_123 = load i64* %t_addr_108, align 8, !dbg !385 ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %tmp_857 = shl i64 %t_load_122, 1, !dbg !386    ; [#uses=1 type=i64] [debug line = 244:3@356:3]
  %tmp8 = add i64 %t_load_123, %t_load_122, !dbg !387 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp9 = add i64 %tmp_856, %tmp_857, !dbg !387   ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp_340_i = add nsw i64 %tmp9, %tmp8, !dbg !387 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  store i64 %tmp_340_i, i64* %t_addr_108, align 8, !dbg !387 ; [debug line = 245:3@356:3]
  %t_addr_109 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !388 ; [#uses=1 type=i64*] [debug line = 246:3@356:3]
  %t_load_124 = load i64* %t_addr_109, align 16, !dbg !388 ; [#uses=3 type=i64] [debug line = 246:3@356:3]
  %tmp_858 = shl i64 %t_load_124, 4, !dbg !388    ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %t_addr_110 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !388 ; [#uses=2 type=i64*] [debug line = 246:3@356:3]
  %t_load_125 = load i64* %t_addr_110, align 16, !dbg !388 ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %tmp_859 = shl i64 %t_load_124, 1, !dbg !389    ; [#uses=1 type=i64] [debug line = 247:3@356:3]
  %tmp10 = add i64 %t_load_125, %t_load_124, !dbg !390 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp11 = add i64 %tmp_858, %tmp_859, !dbg !390  ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp_345_i = add nsw i64 %tmp11, %tmp10, !dbg !390 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  store i64 %tmp_345_i, i64* %t_addr_110, align 16, !dbg !390 ; [debug line = 248:3@356:3]
  %t_addr_111 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !391 ; [#uses=1 type=i64*] [debug line = 249:3@356:3]
  %t_load_126 = load i64* %t_addr_111, align 8, !dbg !391 ; [#uses=3 type=i64] [debug line = 249:3@356:3]
  %tmp_860 = shl i64 %t_load_126, 4, !dbg !391    ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %t_addr_112 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !391 ; [#uses=2 type=i64*] [debug line = 249:3@356:3]
  %t_load_127 = load i64* %t_addr_112, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %tmp_861 = shl i64 %t_load_126, 1, !dbg !392    ; [#uses=1 type=i64] [debug line = 250:3@356:3]
  %tmp12 = add i64 %t_load_127, %t_load_126, !dbg !393 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp13 = add i64 %tmp_860, %tmp_861, !dbg !393  ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp_350_i = add nsw i64 %tmp13, %tmp12, !dbg !393 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  store i64 %tmp_350_i, i64* %t_addr_112, align 8, !dbg !393 ; [debug line = 251:3@356:3]
  %t_addr_113 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !394 ; [#uses=1 type=i64*] [debug line = 252:3@356:3]
  %t_load_128 = load i64* %t_addr_113, align 16, !dbg !394 ; [#uses=3 type=i64] [debug line = 252:3@356:3]
  %tmp_862 = shl i64 %t_load_128, 4, !dbg !394    ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %t_addr_114 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !394 ; [#uses=2 type=i64*] [debug line = 252:3@356:3]
  %t_load_129 = load i64* %t_addr_114, align 16, !dbg !394 ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %tmp_863 = shl i64 %t_load_128, 1, !dbg !395    ; [#uses=1 type=i64] [debug line = 253:3@356:3]
  %tmp14 = add i64 %t_load_129, %t_load_128, !dbg !396 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp15 = add i64 %tmp_862, %tmp_863, !dbg !396  ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp_355_i = add nsw i64 %tmp15, %tmp14, !dbg !396 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  store i64 %tmp_355_i, i64* %t_addr_114, align 16, !dbg !396 ; [debug line = 254:3@356:3]
  %t_addr_115 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !397 ; [#uses=1 type=i64*] [debug line = 255:3@356:3]
  %t_load_130 = load i64* %t_addr_115, align 8, !dbg !397 ; [#uses=3 type=i64] [debug line = 255:3@356:3]
  %tmp_864 = shl i64 %t_load_130, 4, !dbg !397    ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %t_addr_116 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !397 ; [#uses=4 type=i64*] [debug line = 255:3@356:3]
  %t_load_131 = load i64* %t_addr_116, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %tmp_865 = shl i64 %t_load_130, 1, !dbg !398    ; [#uses=1 type=i64] [debug line = 256:3@356:3]
  %tmp16 = add i64 %t_load_131, %t_load_130, !dbg !399 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp17 = add i64 %tmp_864, %tmp_865, !dbg !399  ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp_360_i = add nsw i64 %tmp17, %tmp16, !dbg !399 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  store i64 %tmp_360_i, i64* %t_addr_116, align 8, !dbg !399 ; [debug line = 257:3@356:3]
  %t_addr_117 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !400 ; [#uses=4 type=i64*] [debug line = 258:3@356:3]
  %t_load_132 = load i64* %t_addr_117, align 16, !dbg !400 ; [#uses=3 type=i64] [debug line = 258:3@356:3]
  %tmp_866 = shl i64 %t_load_132, 4, !dbg !400    ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %t_load_6 = load i64* %t_addr_6, align 16, !dbg !400 ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %tmp_867 = shl i64 %t_load_132, 1, !dbg !401    ; [#uses=1 type=i64] [debug line = 259:3@356:3]
  %tmp18 = add i64 %t_load_6, %t_load_132, !dbg !402 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp19 = add i64 %tmp_866, %tmp_867, !dbg !402  ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp_365_i = add nsw i64 %tmp19, %tmp18, !dbg !402 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  store i64 %tmp_365_i, i64* %t_addr_6, align 16, !dbg !402 ; [debug line = 260:3@356:3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !403), !dbg !405 ; [debug line = 302:40@357:3] [debug variable = output]
  store i64 0, i64* %t_addr_117, align 16, !dbg !406 ; [debug line = 305:3@357:3]
  br label %1, !dbg !407                          ; [debug line = 307:8@357:3]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]             ; [#uses=4 type=i4]
  %tmp_i = icmp ult i4 %i_i, -6, !dbg !407        ; [#uses=1 type=i1] [debug line = 307:8@357:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit, !dbg !407 ; [debug line = 307:8@357:3]

; <label>:2                                       ; preds = %1
  %tmp_i_19 = zext i4 %i_i to i64, !dbg !408      ; [#uses=1 type=i64] [debug line = 308:17@357:3]
  %t_addr_118 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_19, !dbg !408 ; [#uses=2 type=i64*] [debug line = 308:17@357:3]
  %t_load_133 = load i64* %t_addr_118, align 16, !dbg !408 ; [#uses=3 type=i64] [debug line = 308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %t_load_133}, i64 0, metadata !409), !dbg !410 ; [debug line = 271:24@308:17@357:3] [debug variable = v]
  %tmp_868 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_133, i32 63), !dbg !411 ; [#uses=1 type=i1] [debug line = 276:50@308:17@357:3]
  %tmp_i_i_cast_cast = select i1 %tmp_868, i64 67108863, i64 0, !dbg !412 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp_1064_i_i = add nsw i64 %t_load_133, %tmp_i_i_cast_cast, !dbg !412 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63), !dbg !412 ; [#uses=2 type=i38] [debug line = 280:3@308:17@357:3]
  %over = sext i38 %tmp_397_i_i to i64, !dbg !412 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !413), !dbg !408 ; [debug line = 308:17@357:3] [debug variable = over]
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0), !dbg !414 ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  %tmp_367_i = sub nsw i64 %t_load_133, %tmp_366_i, !dbg !414 ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  store i64 %tmp_367_i, i64* %t_addr_118, align 16, !dbg !414 ; [debug line = 313:5@357:3]
  %tmp_368_i = or i4 %i_i, 1, !dbg !415           ; [#uses=1 type=i4] [debug line = 314:5@357:3]
  %tmp_369_i = zext i4 %tmp_368_i to i64, !dbg !415 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %t_addr_119 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i, !dbg !415 ; [#uses=2 type=i64*] [debug line = 314:5@357:3]
  %t_load_134 = load i64* %t_addr_119, align 8, !dbg !415 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %v_assign_s = add nsw i64 %t_load_134, %over, !dbg !415 ; [#uses=3 type=i64] [debug line = 314:5@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_s}, i64 0, metadata !416), !dbg !418 ; [debug line = 287:24@322:12@357:3] [debug variable = v]
  %tmp_869 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_s, i32 63), !dbg !419 ; [#uses=1 type=i1] [debug line = 292:50@322:12@357:3]
  %tmp_i10_i_cast_cast = select i1 %tmp_869, i64 33554431, i64 0, !dbg !420 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_s, !dbg !420 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63), !dbg !420 ; [#uses=2 type=i39] [debug line = 296:3@322:12@357:3]
  %over_13 = sext i39 %tmp_399_i_i to i64, !dbg !420 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over_13}, i64 0, metadata !413), !dbg !417 ; [debug line = 322:12@357:3] [debug variable = over]
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0), !dbg !421 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  %tmp_372_i = sub nsw i64 %v_assign_s, %tmp_371_i, !dbg !421 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  store i64 %tmp_372_i, i64* %t_addr_119, align 8, !dbg !421 ; [debug line = 323:5@357:3]
  %i = add i4 %i_i, 2, !dbg !422                  ; [#uses=2 type=i4] [debug line = 324:5@357:3]
  %tmp_373_i = zext i4 %i to i64, !dbg !422       ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %t_addr_120 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i, !dbg !422 ; [#uses=2 type=i64*] [debug line = 324:5@357:3]
  %t_load_135 = load i64* %t_addr_120, align 16, !dbg !422 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %tmp_374_i = add nsw i64 %t_load_135, %over_13, !dbg !422 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  store i64 %tmp_374_i, i64* %t_addr_120, align 16, !dbg !422 ; [debug line = 324:5@357:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !423), !dbg !424 ; [debug line = 307:23@357:3] [debug variable = i]
  br label %1, !dbg !424                          ; [debug line = 307:23@357:3]

freduce_coefficients.exit:                        ; preds = %1
  %t_load_136 = load i64* %t_addr_117, align 16, !dbg !425 ; [#uses=3 type=i64] [debug line = 327:3@357:3]
  %tmp_870 = shl i64 %t_load_136, 4, !dbg !425    ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %t_load_137 = load i64* %t_addr_6, align 16, !dbg !425 ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %tmp_871 = shl i64 %t_load_136, 1, !dbg !426    ; [#uses=1 type=i64] [debug line = 328:3@357:3]
  %tmp21 = add i64 %t_load_136, %t_load_137, !dbg !427 ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %tmp22 = add i64 %tmp_871, %tmp_870, !dbg !427  ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %v_assign_2 = add nsw i64 %tmp21, %tmp22, !dbg !427 ; [#uses=3 type=i64] [debug line = 329:3@357:3]
  store i64 0, i64* %t_addr_117, align 16, !dbg !428 ; [debug line = 331:3@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v_assign_2}, i64 0, metadata !429), !dbg !431 ; [debug line = 271:24@336:17@357:3] [debug variable = v]
  %tmp_872 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_2, i32 63), !dbg !432 ; [#uses=1 type=i1] [debug line = 276:50@336:17@357:3]
  %tmp_i13_i_cast_cast = select i1 %tmp_872, i64 67108863, i64 0, !dbg !433 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp_1064_i14_i = add nsw i64 %v_assign_2, %tmp_i13_i_cast_cast, !dbg !433 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63), !dbg !433 ; [#uses=2 type=i38] [debug line = 280:3@336:17@357:3]
  %over_14 = sext i38 %tmp_397_i16_i to i64, !dbg !433 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over_14}, i64 0, metadata !434), !dbg !430 ; [debug line = 336:17@357:3] [debug variable = over]
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0), !dbg !435 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  %tmp_381_i = sub nsw i64 %v_assign_2, %tmp_380_i, !dbg !435 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  store i64 %tmp_381_i, i64* %t_addr_6, align 16, !dbg !435 ; [debug line = 337:5@357:3]
  %t_load_138 = load i64* %t_addr_116, align 8, !dbg !436 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  %tmp_382_i = add nsw i64 %over_14, %t_load_138, !dbg !436 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  store i64 %tmp_382_i, i64* %t_addr_116, align 8, !dbg !436 ; [debug line = 338:5@357:3]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !443), !dbg !444 ; [debug line = 59:20@359:3] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !445), !dbg !446 ; [debug line = 59:31@359:3] [debug variable = src]
  br label %3, !dbg !437                          ; [debug line = 61:6@359:3]

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i3 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_8, %4 ] ; [#uses=3 type=i4]
  %exitcond_i = icmp eq i4 %i_i3, -6, !dbg !437   ; [#uses=1 type=i1] [debug line = 61:6@359:3]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_8 = add i4 %i_i3, 1, !dbg !439               ; [#uses=1 type=i4] [debug line = 61:18@359:3]
  br i1 %exitcond_i, label %_memcpy.exit, label %4, !dbg !437 ; [debug line = 61:6@359:3]

; <label>:4                                       ; preds = %3
  %tmp_i4 = zext i4 %i_i3 to i64, !dbg !440       ; [#uses=2 type=i64] [debug line = 62:3@359:3]
  %t_addr_121 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i4, !dbg !440 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  %t_load_139 = load i64* %t_addr_121, align 8, !dbg !440 ; [#uses=1 type=i64] [debug line = 62:3@359:3]
  %output_addr = getelementptr [10 x i64]* %output, i64 0, i64 %tmp_i4, !dbg !440 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  store i64 %t_load_139, i64* %output_addr, align 8, !dbg !440 ; [debug line = 62:3@359:3]
  call void @llvm.dbg.value(metadata !{i4 %i_8}, i64 0, metadata !441), !dbg !439 ; [debug line = 61:18@359:3] [debug variable = i]
  br label %3, !dbg !439                          ; [debug line = 61:18@359:3]

_memcpy.exit:                                     ; preds = %3
  ret void, !dbg !442                             ; [debug line = 360:1]
}

; [#uses=1]
define internal fastcc void @fmonty([19 x i64]* nocapture %x2, [19 x i64]* %z2, [19 x i64]* %x3, [19 x i64]* %z3, [19 x i64]* %x, [19 x i64]* %z, [19 x i64]* %xprime, [19 x i64]* %zprime, [10 x i26]* %qmqp) {
  %origx = alloca [10 x i64], align 16            ; [#uses=2 type=[10 x i64]*]
  %origxprime = alloca [10 x i64], align 16       ; [#uses=4 type=[10 x i64]*]
  %zzz = alloca [19 x i64], align 16              ; [#uses=5 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zzz}, i64 0, metadata !454), !dbg !463 ; [debug line = 107:35@750:3] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zzz}, i64 0, metadata !464), !dbg !469 ; [debug line = 73:20@741:3] [debug variable = dst]
  %xx = alloca [19 x i64], align 16               ; [#uses=4 type=[19 x i64]*]
  %zz = alloca [19 x i64], align 16               ; [#uses=5 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zz}, i64 0, metadata !470), !dbg !471 ; [debug line = 107:55@750:3] [debug variable = in]
  %xxprime = alloca [19 x i64], align 16          ; [#uses=6 type=[19 x i64]*]
  %zzprime = alloca [19 x i64], align 16          ; [#uses=10 type=[19 x i64]*]
  %zzzprime = alloca [19 x i64], align 16         ; [#uses=2 type=[19 x i64]*]
  %xxxprime = alloca [19 x i64], align 16         ; [#uses=2 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %x2}, i64 0, metadata !472), !dbg !473 ; [debug line = 678:26] [debug variable = x2]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %z2}, i64 0, metadata !474), !dbg !475 ; [debug line = 678:36] [debug variable = z2]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %x3}, i64 0, metadata !476), !dbg !477 ; [debug line = 679:26] [debug variable = x3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %z3}, i64 0, metadata !478), !dbg !479 ; [debug line = 679:36] [debug variable = z3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %x}, i64 0, metadata !480), !dbg !481 ; [debug line = 680:26] [debug variable = x]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %z}, i64 0, metadata !482), !dbg !483 ; [debug line = 680:35] [debug variable = z]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %xprime}, i64 0, metadata !484), !dbg !485 ; [debug line = 681:26] [debug variable = xprime]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zprime}, i64 0, metadata !486), !dbg !487 ; [debug line = 681:40] [debug variable = zprime]
  call void @llvm.dbg.value(metadata !{[10 x i26]* %qmqp}, i64 0, metadata !488), !dbg !489 ; [debug line = 682:32] [debug variable = qmqp]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !490 ; [debug line = 683:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !491 ; [debug line = 684:1]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %origx}, metadata !492), !dbg !494 ; [debug line = 685:7] [debug variable = origx]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %origxprime}, metadata !495), !dbg !496 ; [debug line = 685:18] [debug variable = origxprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zzz}, metadata !497), !dbg !498 ; [debug line = 685:34] [debug variable = zzz]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %xx}, metadata !499), !dbg !500 ; [debug line = 685:43] [debug variable = xx]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zz}, metadata !501), !dbg !502 ; [debug line = 685:51] [debug variable = zz]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %xxprime}, metadata !503), !dbg !504 ; [debug line = 685:59] [debug variable = xxprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zzprime}, metadata !505), !dbg !506 ; [debug line = 686:9] [debug variable = zzprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zzzprime}, metadata !507), !dbg !508 ; [debug line = 686:22] [debug variable = zzzprime]
  call fastcc void @_memcpy([10 x i64]* %origx, [19 x i64]* %x), !dbg !509 ; [debug line = 690:3]
  call fastcc void @fsum([19 x i64]* %x, [19 x i64]* %z), !dbg !510 ; [debug line = 691:3]
  call fastcc void @fdifference.1([19 x i64]* %z, [10 x i64]* %origx), !dbg !511 ; [debug line = 693:3]
  call fastcc void @_memcpy([10 x i64]* %origxprime, [19 x i64]* %xprime), !dbg !512 ; [debug line = 696:3]
  call fastcc void @fsum([19 x i64]* %xprime, [19 x i64]* %zprime), !dbg !513 ; [debug line = 697:3]
  call fastcc void @fdifference.1([19 x i64]* %zprime, [10 x i64]* %origxprime), !dbg !514 ; [debug line = 699:3]
  call fastcc void @fproduct([19 x i64]* %xxprime, [19 x i64]* %xprime, [19 x i64]* %z), !dbg !515 ; [debug line = 701:3]
  call fastcc void @fproduct([19 x i64]* %zzprime, [19 x i64]* %x, [19 x i64]* %zprime), !dbg !516 ; [debug line = 705:3]
  call fastcc void @freduce_degree([19 x i64]* %xxprime), !dbg !517 ; [debug line = 707:3]
  call fastcc void @freduce_coefficients([19 x i64]* %xxprime), !dbg !518 ; [debug line = 708:3]
  call fastcc void @freduce_degree([19 x i64]* %zzprime), !dbg !519 ; [debug line = 710:3]
  call fastcc void @freduce_coefficients([19 x i64]* %zzprime), !dbg !520 ; [debug line = 711:3]
  call fastcc void @_memcpy([10 x i64]* %origxprime, [19 x i64]* %xxprime), !dbg !521 ; [debug line = 713:3]
  call fastcc void @fsum([19 x i64]* %xxprime, [19 x i64]* %zzprime), !dbg !522 ; [debug line = 714:3]
  call fastcc void @fdifference.1([19 x i64]* %zzprime, [10 x i64]* %origxprime), !dbg !523 ; [debug line = 716:3]
  call fastcc void @fsquare([19 x i64]* %xxxprime, [19 x i64]* %xxprime), !dbg !524 ; [debug line = 718:3]
  call fastcc void @fsquare([19 x i64]* %zzzprime, [19 x i64]* %zzprime), !dbg !525 ; [debug line = 720:3]
  call fastcc void @fproduct.1([19 x i64]* %zzprime, [19 x i64]* %zzzprime, [10 x i26]* %qmqp), !dbg !526 ; [debug line = 722:3]
  call fastcc void @freduce_degree([19 x i64]* %zzprime), !dbg !527 ; [debug line = 724:3]
  call fastcc void @freduce_coefficients([19 x i64]* %zzprime), !dbg !528 ; [debug line = 725:3]
  br label %1, !dbg !529                          ; [debug line = 61:6@727:3]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]             ; [#uses=3 type=i4]
  %exitcond_i = icmp eq i4 %i_i, -6, !dbg !529    ; [#uses=1 type=i1] [debug line = 61:6@727:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i = add i4 %i_i, 1, !dbg !531                  ; [#uses=1 type=i4] [debug line = 61:18@727:3]
  br i1 %exitcond_i, label %_memcpy.1.exit.preheader, label %2, !dbg !529 ; [debug line = 61:6@727:3]

_memcpy.1.exit.preheader:                         ; preds = %1
  br label %_memcpy.1.exit, !dbg !532             ; [debug line = 61:6@728:3]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i4 %i_i to i64, !dbg !534         ; [#uses=2 type=i64] [debug line = 62:3@727:3]
  %xxxprime_addr = getelementptr [19 x i64]* %xxxprime, i64 0, i64 %tmp_i, !dbg !534 ; [#uses=1 type=i64*] [debug line = 62:3@727:3]
  %xxxprime_load = load i64* %xxxprime_addr, align 8, !dbg !534 ; [#uses=1 type=i64] [debug line = 62:3@727:3]
  %x3_addr = getelementptr [19 x i64]* %x3, i64 0, i64 %tmp_i, !dbg !534 ; [#uses=1 type=i64*] [debug line = 62:3@727:3]
  store i64 %xxxprime_load, i64* %x3_addr, align 8, !dbg !534 ; [debug line = 62:3@727:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !535), !dbg !531 ; [debug line = 61:18@727:3] [debug variable = i]
  br label %1, !dbg !531                          ; [debug line = 61:18@727:3]

_memcpy.1.exit:                                   ; preds = %3, %_memcpy.1.exit.preheader
  %i_i9 = phi i4 [ %i_9, %3 ], [ 0, %_memcpy.1.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond_i1 = icmp eq i4 %i_i9, -6, !dbg !532  ; [#uses=1 type=i1] [debug line = 61:6@728:3]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_9 = add i4 %i_i9, 1, !dbg !536               ; [#uses=1 type=i4] [debug line = 61:18@728:3]
  br i1 %exitcond_i1, label %_memcpy.1.exit16, label %3, !dbg !532 ; [debug line = 61:6@728:3]

; <label>:3                                       ; preds = %_memcpy.1.exit
  %tmp_i2 = zext i4 %i_i9 to i64, !dbg !537       ; [#uses=2 type=i64] [debug line = 62:3@728:3]
  %zzprime_addr = getelementptr [19 x i64]* %zzprime, i64 0, i64 %tmp_i2, !dbg !537 ; [#uses=1 type=i64*] [debug line = 62:3@728:3]
  %zzprime_load = load i64* %zzprime_addr, align 8, !dbg !537 ; [#uses=1 type=i64] [debug line = 62:3@728:3]
  %z3_addr = getelementptr [19 x i64]* %z3, i64 0, i64 %tmp_i2, !dbg !537 ; [#uses=1 type=i64*] [debug line = 62:3@728:3]
  store i64 %zzprime_load, i64* %z3_addr, align 8, !dbg !537 ; [debug line = 62:3@728:3]
  call void @llvm.dbg.value(metadata !{i4 %i_9}, i64 0, metadata !538), !dbg !536 ; [debug line = 61:18@728:3] [debug variable = i]
  br label %_memcpy.1.exit, !dbg !536             ; [debug line = 61:18@728:3]

_memcpy.1.exit16:                                 ; preds = %_memcpy.1.exit
  call fastcc void @fsquare([19 x i64]* %xx, [19 x i64]* %x), !dbg !539 ; [debug line = 730:3]
  call fastcc void @fsquare([19 x i64]* %zz, [19 x i64]* %z), !dbg !540 ; [debug line = 732:3]
  call fastcc void @fproduct([19 x i64]* %x2, [19 x i64]* %xx, [19 x i64]* %zz), !dbg !541 ; [debug line = 734:3]
  call fastcc void @freduce_degree([19 x i64]* %x2), !dbg !542 ; [debug line = 736:3]
  call fastcc void @freduce_coefficients([19 x i64]* %x2), !dbg !543 ; [debug line = 737:3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zz}, i64 0, metadata !544), !dbg !547 ; [debug line = 99:31@739:3] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %xx}, i64 0, metadata !548), !dbg !549 ; [debug line = 99:51@739:3] [debug variable = in]
  br label %4, !dbg !550                          ; [debug line = 101:8@739:3]

; <label>:4                                       ; preds = %5, %_memcpy.1.exit16
  %i_i1 = phi i4 [ 0, %_memcpy.1.exit16 ], [ %i_10, %5 ] ; [#uses=3 type=i4]
  %tmp_i3 = icmp eq i4 %i_i1, -6, !dbg !550       ; [#uses=1 type=i1] [debug line = 101:8@739:3]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_10 = add i4 %i_i1, 1, !dbg !553              ; [#uses=1 type=i4] [debug line = 101:23@739:3]
  br i1 %tmp_i3, label %fdifference.exit.preheader, label %5, !dbg !550 ; [debug line = 101:8@739:3]

fdifference.exit.preheader:                       ; preds = %4
  br label %fdifference.exit, !dbg !554           ; [debug line = 75:6@741:3]

; <label>:5                                       ; preds = %4
  %tmp_i_23 = zext i4 %i_i1 to i64, !dbg !557     ; [#uses=2 type=i64] [debug line = 102:5@739:3]
  %xx_addr = getelementptr [19 x i64]* %xx, i64 0, i64 %tmp_i_23, !dbg !557 ; [#uses=1 type=i64*] [debug line = 102:5@739:3]
  %xx_load = load i64* %xx_addr, align 8, !dbg !557 ; [#uses=1 type=i64] [debug line = 102:5@739:3]
  %zz_addr = getelementptr [19 x i64]* %zz, i64 0, i64 %tmp_i_23, !dbg !557 ; [#uses=2 type=i64*] [debug line = 102:5@739:3]
  %zz_load = load i64* %zz_addr, align 8, !dbg !557 ; [#uses=1 type=i64] [debug line = 102:5@739:3]
  %tmp_930_i = sub nsw i64 %xx_load, %zz_load, !dbg !557 ; [#uses=1 type=i64] [debug line = 102:5@739:3]
  store i64 %tmp_930_i, i64* %zz_addr, align 8, !dbg !557 ; [debug line = 102:5@739:3]
  call void @llvm.dbg.value(metadata !{i4 %i_10}, i64 0, metadata !559), !dbg !553 ; [debug line = 101:23@739:3] [debug variable = i]
  br label %4, !dbg !553                          ; [debug line = 101:23@739:3]

fdifference.exit:                                 ; preds = %6, %fdifference.exit.preheader
  %i_i2 = phi i4 [ %i_11, %6 ], [ 0, %fdifference.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond_i2 = icmp eq i4 %i_i2, -7, !dbg !554  ; [#uses=1 type=i1] [debug line = 75:6@741:3]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  %i_11 = add i4 %i_i2, 1, !dbg !560              ; [#uses=1 type=i4] [debug line = 75:18@741:3]
  br i1 %exitcond_i2, label %_memset.exit.preheader, label %6, !dbg !554 ; [debug line = 75:6@741:3]

_memset.exit.preheader:                           ; preds = %fdifference.exit
  br label %_memset.exit, !dbg !561               ; [debug line = 109:8@750:3]

; <label>:6                                       ; preds = %fdifference.exit
  %tmp_i4_cast = zext i4 %i_i2 to i5              ; [#uses=1 type=i5]
  %sum_i = add i5 %tmp_i4_cast, 10                ; [#uses=1 type=i5]
  %sum_i_cast = zext i5 %sum_i to i64             ; [#uses=1 type=i64]
  %zzz_addr = getelementptr [19 x i64]* %zzz, i64 0, i64 %sum_i_cast, !dbg !564 ; [#uses=1 type=i64*] [debug line = 76:3@741:3]
  store i64 0, i64* %zzz_addr, align 8, !dbg !564 ; [debug line = 76:3@741:3]
  call void @llvm.dbg.value(metadata !{i4 %i_11}, i64 0, metadata !566), !dbg !560 ; [debug line = 75:18@741:3] [debug variable = i]
  br label %fdifference.exit, !dbg !560           ; [debug line = 75:18@741:3]

_memset.exit:                                     ; preds = %7, %_memset.exit.preheader
  %i_i3 = phi i4 [ %i_12, %7 ], [ 0, %_memset.exit.preheader ] ; [#uses=3 type=i4]
  %tmp_i5 = icmp eq i4 %i_i3, -6, !dbg !561       ; [#uses=1 type=i1] [debug line = 109:8@750:3]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_12 = add i4 %i_i3, 1, !dbg !567              ; [#uses=1 type=i4] [debug line = 109:23@750:3]
  br i1 %tmp_i5, label %fscalar_product.exit, label %7, !dbg !561 ; [debug line = 109:8@750:3]

; <label>:7                                       ; preds = %_memset.exit
  %tmp_i3_26 = zext i4 %i_i3 to i64, !dbg !568    ; [#uses=2 type=i64] [debug line = 110:5@750:3]
  %zz_addr_1 = getelementptr [19 x i64]* %zz, i64 0, i64 %tmp_i3_26, !dbg !568 ; [#uses=1 type=i64*] [debug line = 110:5@750:3]
  %zz_load_1 = load i64* %zz_addr_1, align 8, !dbg !568 ; [#uses=1 type=i64] [debug line = 110:5@750:3]
  %tmp_322_i = mul nsw i64 %zz_load_1, 121665, !dbg !568 ; [#uses=1 type=i64] [debug line = 110:5@750:3]
  %zzz_addr_1 = getelementptr [19 x i64]* %zzz, i64 0, i64 %tmp_i3_26, !dbg !568 ; [#uses=1 type=i64*] [debug line = 110:5@750:3]
  store i64 %tmp_322_i, i64* %zzz_addr_1, align 8, !dbg !568 ; [debug line = 110:5@750:3]
  call void @llvm.dbg.value(metadata !{i4 %i_12}, i64 0, metadata !570), !dbg !567 ; [debug line = 109:23@750:3] [debug variable = i]
  br label %_memset.exit, !dbg !567               ; [debug line = 109:23@750:3]

fscalar_product.exit:                             ; preds = %_memset.exit
  call fastcc void @freduce_coefficients([19 x i64]* %zzz), !dbg !571 ; [debug line = 754:3]
  call fastcc void @fsum([19 x i64]* %zzz, [19 x i64]* %xx), !dbg !572 ; [debug line = 756:3]
  call fastcc void @fproduct([19 x i64]* %z2, [19 x i64]* %zz, [19 x i64]* %zzz), !dbg !573 ; [debug line = 758:3]
  call fastcc void @freduce_degree([19 x i64]* %z2), !dbg !574 ; [debug line = 760:3]
  call fastcc void @freduce_coefficients([19 x i64]* %z2), !dbg !575 ; [debug line = 761:3]
  ret void, !dbg !576                             ; [debug line = 763:1]
}

; [#uses=1]
define internal fastcc void @fexpand([10 x i26]* nocapture %output, [32 x i8]* %input) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %input, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) ; [#uses=0 type=i32]
  %input_addr = getelementptr [32 x i8]* %input, i64 0, i64 0 ; [#uses=1 type=i8*]
  %output_addr1111 = getelementptr [10 x i26]* %output, i64 0, i64 0 ; [#uses=1 type=i26*]
  call void @llvm.dbg.value(metadata !{[10 x i26]* %output}, i64 0, metadata !577), !dbg !586 ; [debug line = 478:15] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %input}, i64 0, metadata !587), !dbg !591 ; [debug line = 478:33] [debug variable = input]
  %input_load = load i8* %input_addr, align 1, !dbg !592 ; [#uses=1 type=i8] [debug line = 484:3]
  %input_addr_1 = getelementptr [32 x i8]* %input, i64 0, i64 1, !dbg !592 ; [#uses=1 type=i8*] [debug line = 484:3]
  %input_load_1 = load i8* %input_addr_1, align 1, !dbg !592 ; [#uses=1 type=i8] [debug line = 484:3]
  %input_addr_2 = getelementptr [32 x i8]* %input, i64 0, i64 2, !dbg !592 ; [#uses=1 type=i8*] [debug line = 484:3]
  %input_load_2 = load i8* %input_addr_2, align 1, !dbg !592 ; [#uses=1 type=i8] [debug line = 484:3]
  %input_addr_3 = getelementptr [32 x i8]* %input, i64 0, i64 3, !dbg !592 ; [#uses=1 type=i8*] [debug line = 484:3]
  %input_load_3 = load i8* %input_addr_3, align 1, !dbg !592 ; [#uses=2 type=i8] [debug line = 484:3]
  %tmp = trunc i8 %input_load_3 to i2             ; [#uses=1 type=i2]
  %tmp_365 = call i26 @_ssdm_op_BitConcatenate.i26.i2.i8.i8.i8(i2 %tmp, i8 %input_load_2, i8 %input_load_1, i8 %input_load) ; [#uses=1 type=i26]
  store i26 %tmp_365, i26* %output_addr1111, align 4, !dbg !592 ; [debug line = 484:3]
  %input_addr_4 = getelementptr [32 x i8]* %input, i64 0, i64 4, !dbg !594 ; [#uses=1 type=i8*] [debug line = 485:3]
  %input_load_4 = load i8* %input_addr_4, align 1, !dbg !594 ; [#uses=1 type=i8] [debug line = 485:3]
  %input_addr_5 = getelementptr [32 x i8]* %input, i64 0, i64 5, !dbg !594 ; [#uses=1 type=i8*] [debug line = 485:3]
  %input_load_5 = load i8* %input_addr_5, align 1, !dbg !594 ; [#uses=1 type=i8] [debug line = 485:3]
  %input_addr_6 = getelementptr [32 x i8]* %input, i64 0, i64 6, !dbg !594 ; [#uses=1 type=i8*] [debug line = 485:3]
  %input_load_6 = load i8* %input_addr_6, align 1, !dbg !594 ; [#uses=2 type=i8] [debug line = 485:3]
  %tmp_873 = trunc i8 %input_load_6 to i3         ; [#uses=1 type=i3]
  %tmp_585 = call i6 @_ssdm_op_PartSelect.i6.i8.i32.i32(i8 %input_load_3, i32 2, i32 7) ; [#uses=1 type=i6]
  %tmp_906_cast = call i25 @_ssdm_op_BitConcatenate.i25.i3.i8.i8.i6(i3 %tmp_873, i8 %input_load_5, i8 %input_load_4, i6 %tmp_585), !dbg !594 ; [#uses=1 type=i25] [debug line = 485:3]
  %output_addr = getelementptr [10 x i26]* %output, i64 0, i64 1, !dbg !594 ; [#uses=1 type=i26*] [debug line = 485:3]
  %tmp_907_cast_cast_ca = zext i25 %tmp_906_cast to i26, !dbg !594 ; [#uses=1 type=i26] [debug line = 485:3]
  store i26 %tmp_907_cast_cast_ca, i26* %output_addr, align 4, !dbg !594 ; [debug line = 485:3]
  %input_addr_7 = getelementptr [32 x i8]* %input, i64 0, i64 7, !dbg !595 ; [#uses=1 type=i8*] [debug line = 486:3]
  %input_load_7 = load i8* %input_addr_7, align 1, !dbg !595 ; [#uses=1 type=i8] [debug line = 486:3]
  %input_addr_8 = getelementptr [32 x i8]* %input, i64 0, i64 8, !dbg !595 ; [#uses=1 type=i8*] [debug line = 486:3]
  %input_load_8 = load i8* %input_addr_8, align 1, !dbg !595 ; [#uses=1 type=i8] [debug line = 486:3]
  %input_addr_9 = getelementptr [32 x i8]* %input, i64 0, i64 9, !dbg !595 ; [#uses=1 type=i8*] [debug line = 486:3]
  %input_load_9 = load i8* %input_addr_9, align 1, !dbg !595 ; [#uses=2 type=i8] [debug line = 486:3]
  %tmp_874 = trunc i8 %input_load_9 to i5         ; [#uses=1 type=i5]
  %tmp_586 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %input_load_6, i32 3, i32 7) ; [#uses=1 type=i5]
  %tmp_909_cast = call i26 @_ssdm_op_BitConcatenate.i26.i5.i8.i8.i5(i5 %tmp_874, i8 %input_load_8, i8 %input_load_7, i5 %tmp_586), !dbg !595 ; [#uses=1 type=i26] [debug line = 486:3]
  %output_addr_148 = getelementptr [10 x i26]* %output, i64 0, i64 2, !dbg !595 ; [#uses=1 type=i26*] [debug line = 486:3]
  store i26 %tmp_909_cast, i26* %output_addr_148, align 4, !dbg !595 ; [debug line = 486:3]
  %input_addr_10 = getelementptr [32 x i8]* %input, i64 0, i64 10, !dbg !596 ; [#uses=1 type=i8*] [debug line = 487:3]
  %input_load_10 = load i8* %input_addr_10, align 1, !dbg !596 ; [#uses=1 type=i8] [debug line = 487:3]
  %input_addr_11 = getelementptr [32 x i8]* %input, i64 0, i64 11, !dbg !596 ; [#uses=1 type=i8*] [debug line = 487:3]
  %input_load_11 = load i8* %input_addr_11, align 1, !dbg !596 ; [#uses=1 type=i8] [debug line = 487:3]
  %input_addr_12 = getelementptr [32 x i8]* %input, i64 0, i64 12, !dbg !596 ; [#uses=1 type=i8*] [debug line = 487:3]
  %input_load_12 = load i8* %input_addr_12, align 1, !dbg !596 ; [#uses=2 type=i8] [debug line = 487:3]
  %tmp_875 = trunc i8 %input_load_12 to i6        ; [#uses=1 type=i6]
  %tmp_587 = call i3 @_ssdm_op_PartSelect.i3.i8.i32.i32(i8 %input_load_9, i32 5, i32 7) ; [#uses=1 type=i3]
  %tmp_912_cast = call i25 @_ssdm_op_BitConcatenate.i25.i6.i8.i8.i3(i6 %tmp_875, i8 %input_load_11, i8 %input_load_10, i3 %tmp_587), !dbg !596 ; [#uses=1 type=i25] [debug line = 487:3]
  %output_addr_149 = getelementptr [10 x i26]* %output, i64 0, i64 3, !dbg !596 ; [#uses=1 type=i26*] [debug line = 487:3]
  %tmp_913_cast_cast_ca = zext i25 %tmp_912_cast to i26, !dbg !596 ; [#uses=1 type=i26] [debug line = 487:3]
  store i26 %tmp_913_cast_cast_ca, i26* %output_addr_149, align 4, !dbg !596 ; [debug line = 487:3]
  %input_addr_13 = getelementptr [32 x i8]* %input, i64 0, i64 13, !dbg !597 ; [#uses=1 type=i8*] [debug line = 488:3]
  %input_load_13 = load i8* %input_addr_13, align 1, !dbg !597 ; [#uses=1 type=i8] [debug line = 488:3]
  %input_addr_14 = getelementptr [32 x i8]* %input, i64 0, i64 14, !dbg !597 ; [#uses=1 type=i8*] [debug line = 488:3]
  %input_load_14 = load i8* %input_addr_14, align 1, !dbg !597 ; [#uses=1 type=i8] [debug line = 488:3]
  %input_addr_15 = getelementptr [32 x i8]* %input, i64 0, i64 15, !dbg !597 ; [#uses=1 type=i8*] [debug line = 488:3]
  %input_load_15 = load i8* %input_addr_15, align 1, !dbg !597 ; [#uses=1 type=i8] [debug line = 488:3]
  %tmp_588 = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %input_load_12, i32 6, i32 7) ; [#uses=1 type=i2]
  %tmp_s = call i26 @_ssdm_op_BitConcatenate.i26.i8.i8.i8.i2(i8 %input_load_15, i8 %input_load_14, i8 %input_load_13, i2 %tmp_588), !dbg !597 ; [#uses=1 type=i26] [debug line = 488:3]
  %output_addr_150 = getelementptr [10 x i26]* %output, i64 0, i64 4, !dbg !597 ; [#uses=1 type=i26*] [debug line = 488:3]
  store i26 %tmp_s, i26* %output_addr_150, align 4, !dbg !597 ; [debug line = 488:3]
  %input_addr_16 = getelementptr [32 x i8]* %input, i64 0, i64 16, !dbg !598 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input_load_16 = load i8* %input_addr_16, align 1, !dbg !598 ; [#uses=1 type=i8] [debug line = 489:3]
  %input_addr_17 = getelementptr [32 x i8]* %input, i64 0, i64 17, !dbg !598 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input_load_17 = load i8* %input_addr_17, align 1, !dbg !598 ; [#uses=1 type=i8] [debug line = 489:3]
  %input_addr_18 = getelementptr [32 x i8]* %input, i64 0, i64 18, !dbg !598 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input_load_18 = load i8* %input_addr_18, align 1, !dbg !598 ; [#uses=1 type=i8] [debug line = 489:3]
  %input_addr_19 = getelementptr [32 x i8]* %input, i64 0, i64 19, !dbg !598 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input_load_19 = load i8* %input_addr_19, align 1, !dbg !598 ; [#uses=2 type=i8] [debug line = 489:3]
  %tmp_876 = trunc i8 %input_load_19 to i1        ; [#uses=1 type=i1]
  %tmp_371 = call i25 @_ssdm_op_BitConcatenate.i25.i1.i8.i8.i8(i1 %tmp_876, i8 %input_load_18, i8 %input_load_17, i8 %input_load_16) ; [#uses=1 type=i25]
  %output_addr_151 = getelementptr [10 x i26]* %output, i64 0, i64 5, !dbg !598 ; [#uses=1 type=i26*] [debug line = 489:3]
  %tmp_916_cast_cast = zext i25 %tmp_371 to i26, !dbg !598 ; [#uses=1 type=i26] [debug line = 489:3]
  store i26 %tmp_916_cast_cast, i26* %output_addr_151, align 4, !dbg !598 ; [debug line = 489:3]
  %input_addr_20 = getelementptr [32 x i8]* %input, i64 0, i64 20, !dbg !599 ; [#uses=1 type=i8*] [debug line = 490:3]
  %input_load_20 = load i8* %input_addr_20, align 1, !dbg !599 ; [#uses=1 type=i8] [debug line = 490:3]
  %input_addr_21 = getelementptr [32 x i8]* %input, i64 0, i64 21, !dbg !599 ; [#uses=1 type=i8*] [debug line = 490:3]
  %input_load_21 = load i8* %input_addr_21, align 1, !dbg !599 ; [#uses=1 type=i8] [debug line = 490:3]
  %input_addr_22 = getelementptr [32 x i8]* %input, i64 0, i64 22, !dbg !599 ; [#uses=1 type=i8*] [debug line = 490:3]
  %input_load_22 = load i8* %input_addr_22, align 1, !dbg !599 ; [#uses=2 type=i8] [debug line = 490:3]
  %tmp_877 = trunc i8 %input_load_22 to i3        ; [#uses=1 type=i3]
  %tmp_589 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %input_load_19, i32 1, i32 7) ; [#uses=1 type=i7]
  %tmp_918_cast = call i26 @_ssdm_op_BitConcatenate.i26.i3.i8.i8.i7(i3 %tmp_877, i8 %input_load_21, i8 %input_load_20, i7 %tmp_589), !dbg !599 ; [#uses=1 type=i26] [debug line = 490:3]
  %output_addr_152 = getelementptr [10 x i26]* %output, i64 0, i64 6, !dbg !599 ; [#uses=1 type=i26*] [debug line = 490:3]
  store i26 %tmp_918_cast, i26* %output_addr_152, align 4, !dbg !599 ; [debug line = 490:3]
  %input_addr_23 = getelementptr [32 x i8]* %input, i64 0, i64 23, !dbg !600 ; [#uses=1 type=i8*] [debug line = 491:3]
  %input_load_23 = load i8* %input_addr_23, align 1, !dbg !600 ; [#uses=1 type=i8] [debug line = 491:3]
  %input_addr_24 = getelementptr [32 x i8]* %input, i64 0, i64 24, !dbg !600 ; [#uses=1 type=i8*] [debug line = 491:3]
  %input_load_24 = load i8* %input_addr_24, align 1, !dbg !600 ; [#uses=1 type=i8] [debug line = 491:3]
  %input_addr_25 = getelementptr [32 x i8]* %input, i64 0, i64 25, !dbg !600 ; [#uses=1 type=i8*] [debug line = 491:3]
  %input_load_25 = load i8* %input_addr_25, align 1, !dbg !600 ; [#uses=2 type=i8] [debug line = 491:3]
  %tmp_878 = trunc i8 %input_load_25 to i4        ; [#uses=1 type=i4]
  %tmp_590 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %input_load_22, i32 3, i32 7) ; [#uses=1 type=i5]
  %tmp_921_cast = call i25 @_ssdm_op_BitConcatenate.i25.i4.i8.i8.i5(i4 %tmp_878, i8 %input_load_24, i8 %input_load_23, i5 %tmp_590), !dbg !600 ; [#uses=1 type=i25] [debug line = 491:3]
  %output_addr_153 = getelementptr [10 x i26]* %output, i64 0, i64 7, !dbg !600 ; [#uses=1 type=i26*] [debug line = 491:3]
  %tmp_922_cast_cast_ca = zext i25 %tmp_921_cast to i26, !dbg !600 ; [#uses=1 type=i26] [debug line = 491:3]
  store i26 %tmp_922_cast_cast_ca, i26* %output_addr_153, align 4, !dbg !600 ; [debug line = 491:3]
  %input_addr_26 = getelementptr [32 x i8]* %input, i64 0, i64 26, !dbg !601 ; [#uses=1 type=i8*] [debug line = 492:3]
  %input_load_26 = load i8* %input_addr_26, align 1, !dbg !601 ; [#uses=1 type=i8] [debug line = 492:3]
  %input_addr_27 = getelementptr [32 x i8]* %input, i64 0, i64 27, !dbg !601 ; [#uses=1 type=i8*] [debug line = 492:3]
  %input_load_27 = load i8* %input_addr_27, align 1, !dbg !601 ; [#uses=1 type=i8] [debug line = 492:3]
  %input_addr_28 = getelementptr [32 x i8]* %input, i64 0, i64 28, !dbg !601 ; [#uses=1 type=i8*] [debug line = 492:3]
  %input_load_28 = load i8* %input_addr_28, align 1, !dbg !601 ; [#uses=2 type=i8] [debug line = 492:3]
  %tmp_879 = trunc i8 %input_load_28 to i6        ; [#uses=1 type=i6]
  %tmp_591 = call i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8 %input_load_25, i32 4, i32 7) ; [#uses=1 type=i4]
  %tmp_924_cast = call i26 @_ssdm_op_BitConcatenate.i26.i6.i8.i8.i4(i6 %tmp_879, i8 %input_load_27, i8 %input_load_26, i4 %tmp_591), !dbg !601 ; [#uses=1 type=i26] [debug line = 492:3]
  %output_addr_154 = getelementptr [10 x i26]* %output, i64 0, i64 8, !dbg !601 ; [#uses=1 type=i26*] [debug line = 492:3]
  store i26 %tmp_924_cast, i26* %output_addr_154, align 4, !dbg !601 ; [debug line = 492:3]
  %input_addr_29 = getelementptr [32 x i8]* %input, i64 0, i64 29, !dbg !602 ; [#uses=1 type=i8*] [debug line = 493:3]
  %input_load_29 = load i8* %input_addr_29, align 1, !dbg !602 ; [#uses=1 type=i8] [debug line = 493:3]
  %input_addr_30 = getelementptr [32 x i8]* %input, i64 0, i64 30, !dbg !602 ; [#uses=1 type=i8*] [debug line = 493:3]
  %input_load_30 = load i8* %input_addr_30, align 1, !dbg !602 ; [#uses=1 type=i8] [debug line = 493:3]
  %input_addr_31 = getelementptr [32 x i8]* %input, i64 0, i64 31, !dbg !602 ; [#uses=1 type=i8*] [debug line = 493:3]
  %input_load_31 = load i8* %input_addr_31, align 1, !dbg !602 ; [#uses=1 type=i8] [debug line = 493:3]
  %tmp_880 = trunc i8 %input_load_31 to i7        ; [#uses=1 type=i7]
  %tmp_592 = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %input_load_28, i32 6, i32 7) ; [#uses=1 type=i2]
  %tmp_927_cast = call i25 @_ssdm_op_BitConcatenate.i25.i7.i8.i8.i2(i7 %tmp_880, i8 %input_load_30, i8 %input_load_29, i2 %tmp_592), !dbg !602 ; [#uses=1 type=i25] [debug line = 493:3]
  %output_addr_155 = getelementptr [10 x i26]* %output, i64 0, i64 9, !dbg !602 ; [#uses=1 type=i26*] [debug line = 493:3]
  %tmp_928_cast_cast_ca = zext i25 %tmp_927_cast to i26, !dbg !602 ; [#uses=1 type=i26] [debug line = 493:3]
  store i26 %tmp_928_cast_cast_ca, i26* %output_addr_155, align 4, !dbg !602 ; [debug line = 493:3]
  ret void, !dbg !603                             ; [debug line = 495:1]
}

; [#uses=3]
define internal fastcc void @fdifference.1([19 x i64]* nocapture %output, [10 x i64]* nocapture %in) {
  br label %1, !dbg !604                          ; [debug line = 101:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_5, %2 ]             ; [#uses=3 type=i4]
  %tmp = icmp eq i4 %i, -6, !dbg !604             ; [#uses=1 type=i1] [debug line = 101:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_5 = add i4 %i, 1, !dbg !605                  ; [#uses=1 type=i4] [debug line = 101:23]
  br i1 %tmp, label %3, label %2, !dbg !604       ; [debug line = 101:8]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i4 %i to i64, !dbg !606           ; [#uses=2 type=i64] [debug line = 102:5]
  %in_addr = getelementptr [10 x i64]* %in, i64 0, i64 %tmp_s, !dbg !606 ; [#uses=1 type=i64*] [debug line = 102:5]
  %in_load = load i64* %in_addr, align 8, !dbg !606 ; [#uses=1 type=i64] [debug line = 102:5]
  %output_addr = getelementptr [19 x i64]* %output, i64 0, i64 %tmp_s, !dbg !606 ; [#uses=2 type=i64*] [debug line = 102:5]
  %output_load = load i64* %output_addr, align 8, !dbg !606 ; [#uses=1 type=i64] [debug line = 102:5]
  %tmp_750 = sub nsw i64 %in_load, %output_load, !dbg !606 ; [#uses=1 type=i64] [debug line = 102:5]
  store i64 %tmp_750, i64* %output_addr, align 8, !dbg !606 ; [debug line = 102:5]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !607), !dbg !605 ; [debug line = 101:23] [debug variable = i]
  br label %1, !dbg !605                          ; [debug line = 101:23]

; <label>:3                                       ; preds = %1
  ret void, !dbg !608                             ; [debug line = 104:1]
}

; [#uses=1]
define internal fastcc void @fcontract([32 x i8]* %output, [11 x i64]* nocapture %input_limbs) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %output, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) ; [#uses=0 type=i32]
  %output_addr = getelementptr [32 x i8]* %output, i64 0, i64 0 ; [#uses=1 type=i8*]
  %input = alloca [10 x i32], align 16            ; [#uses=19 type=[10 x i32]*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %output}, i64 0, metadata !609), !dbg !615 ; [debug line = 525:15] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[11 x i64]* %input_limbs}, i64 0, metadata !616), !dbg !618 ; [debug line = 525:29] [debug variable = input_limbs]
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %input}, metadata !619), !dbg !622 ; [debug line = 528:7] [debug variable = input]
  br label %1, !dbg !623                          ; [debug line = 532:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_6, %2 ]             ; [#uses=3 type=i4]
  %exitcond6 = icmp eq i4 %i, -6, !dbg !623       ; [#uses=1 type=i1] [debug line = 532:8]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_6 = add i4 %i, 1, !dbg !625                  ; [#uses=1 type=i4] [debug line = 532:23]
  br i1 %exitcond6, label %.preheader8.preheader, label %2, !dbg !623 ; [debug line = 532:8]

.preheader8.preheader:                            ; preds = %1
  %input_addr = getelementptr inbounds [10 x i32]* %input, i64 0, i64 9, !dbg !626 ; [#uses=6 type=i32*] [debug line = 556:38]
  %input_addr_31 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 0, !dbg !630 ; [#uses=8 type=i32*] [debug line = 559:7]
  br label %.preheader8, !dbg !631                ; [debug line = 536:8]

; <label>:2                                       ; preds = %1
  %tmp = zext i4 %i to i64, !dbg !632             ; [#uses=2 type=i64] [debug line = 533:5]
  %input_limbs_addr = getelementptr [11 x i64]* %input_limbs, i64 0, i64 %tmp, !dbg !632 ; [#uses=1 type=i64*] [debug line = 533:5]
  %input_limbs_load = load i64* %input_limbs_addr, align 8, !dbg !632 ; [#uses=1 type=i64] [debug line = 533:5]
  %tmp_881 = trunc i64 %input_limbs_load to i32, !dbg !632 ; [#uses=1 type=i32] [debug line = 533:5]
  %input_addr_32 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp, !dbg !632 ; [#uses=1 type=i32*] [debug line = 533:5]
  store i32 %tmp_881, i32* %input_addr_32, align 4, !dbg !632 ; [debug line = 533:5]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !634), !dbg !625 ; [debug line = 532:23] [debug variable = i]
  br label %1, !dbg !625                          ; [debug line = 532:23]

.preheader8:                                      ; preds = %7, %.preheader8.preheader
  %j = phi i2 [ %j_2, %7 ], [ 0, %.preheader8.preheader ] ; [#uses=2 type=i2]
  %exitcond5 = icmp eq i2 %j, -2, !dbg !631       ; [#uses=1 type=i1] [debug line = 536:8]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %j_2 = add i2 %j, 1, !dbg !635                  ; [#uses=1 type=i2] [debug line = 536:22]
  br i1 %exitcond5, label %8, label %.preheader7.preheader, !dbg !631 ; [debug line = 536:8]

.preheader7.preheader:                            ; preds = %.preheader8
  br label %.preheader7, !dbg !636                ; [debug line = 537:10]

.preheader7:                                      ; preds = %6, %.preheader7.preheader
  %i_1 = phi i4 [ %i_7, %6 ], [ 0, %.preheader7.preheader ] ; [#uses=4 type=i4]
  %tmp_883 = trunc i4 %i_1 to i1, !dbg !636       ; [#uses=1 type=i1] [debug line = 537:10]
  %exitcond4 = icmp eq i4 %i_1, -7, !dbg !636     ; [#uses=1 type=i1] [debug line = 537:10]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  %i_7 = add i4 1, %i_1, !dbg !638                ; [#uses=3 type=i4] [debug line = 537:24]
  br i1 %exitcond4, label %7, label %3, !dbg !636 ; [debug line = 537:10]

; <label>:3                                       ; preds = %.preheader7
  %tmp_758 = zext i4 %i_1 to i64, !dbg !639       ; [#uses=1 type=i64] [debug line = 546:40]
  %input_addr_34 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_758, !dbg !639 ; [#uses=3 type=i32*] [debug line = 546:40]
  %input_load_35 = load i32* %input_addr_34, align 4, !dbg !639 ; [#uses=4 type=i32] [debug line = 546:40]
  %tmp_886 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %input_load_35, i32 31), !dbg !639 ; [#uses=1 type=i1] [debug line = 546:40]
  %mask_4 = select i1 %tmp_886, i32 -1, i32 0, !dbg !639 ; [#uses=1 type=i32] [debug line = 546:40]
  %tmp_759 = and i32 %input_load_35, %mask_4, !dbg !642 ; [#uses=2 type=i32] [debug line = 547:53]
  br i1 %tmp_883, label %4, label %5, !dbg !643   ; [debug line = 538:7]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i32 %mask_4}, i64 0, metadata !644), !dbg !646 ; [debug line = 541:40] [debug variable = mask]
  %tmp_389 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %tmp_759, i32 25, i32 31), !dbg !647 ; [#uses=2 type=i7] [debug line = 542:53]
  %tmp_760 = sext i7 %tmp_389 to i32, !dbg !647   ; [#uses=1 type=i32] [debug line = 542:53]
  %p_shl = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_389, i25 0), !dbg !648 ; [#uses=1 type=i32] [debug line = 543:9]
  %tmp_761 = sub i32 %input_load_35, %p_shl, !dbg !648 ; [#uses=1 type=i32] [debug line = 543:9]
  store i32 %tmp_761, i32* %input_addr_34, align 4, !dbg !648 ; [debug line = 543:9]
  %tmp_762 = zext i4 %i_7 to i64, !dbg !649       ; [#uses=1 type=i64] [debug line = 544:9]
  %input_addr_36 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_762, !dbg !649 ; [#uses=2 type=i32*] [debug line = 544:9]
  %input_load_37 = load i32* %input_addr_36, align 4, !dbg !649 ; [#uses=1 type=i32] [debug line = 544:9]
  %tmp_763 = add nsw i32 %input_load_37, %tmp_760, !dbg !649 ; [#uses=1 type=i32] [debug line = 544:9]
  store i32 %tmp_763, i32* %input_addr_36, align 4, !dbg !649 ; [debug line = 544:9]
  br label %6, !dbg !650                          ; [debug line = 545:7]

; <label>:5                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i32 %mask_4}, i64 0, metadata !651), !dbg !639 ; [debug line = 546:40] [debug variable = mask]
  %tmp_387 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %tmp_759, i32 26, i32 31), !dbg !642 ; [#uses=2 type=i6] [debug line = 547:53]
  %tmp_764 = sext i6 %tmp_387 to i32, !dbg !642   ; [#uses=1 type=i32] [debug line = 547:53]
  %p_shl3 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_387, i26 0), !dbg !652 ; [#uses=1 type=i32] [debug line = 548:9]
  %tmp_765 = sub i32 %input_load_35, %p_shl3, !dbg !652 ; [#uses=1 type=i32] [debug line = 548:9]
  store i32 %tmp_765, i32* %input_addr_34, align 4, !dbg !652 ; [debug line = 548:9]
  %tmp_766 = zext i4 %i_7 to i64, !dbg !653       ; [#uses=1 type=i64] [debug line = 549:9]
  %input_addr_35 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_766, !dbg !653 ; [#uses=2 type=i32*] [debug line = 549:9]
  %input_load_36 = load i32* %input_addr_35, align 4, !dbg !653 ; [#uses=1 type=i32] [debug line = 549:9]
  %tmp_767 = add nsw i32 %input_load_36, %tmp_764, !dbg !653 ; [#uses=1 type=i32] [debug line = 549:9]
  store i32 %tmp_767, i32* %input_addr_35, align 4, !dbg !653 ; [debug line = 549:9]
  br label %6

; <label>:6                                       ; preds = %5, %4
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !634), !dbg !638 ; [debug line = 537:24] [debug variable = i]
  br label %.preheader7, !dbg !638                ; [debug line = 537:24]

; <label>:7                                       ; preds = %.preheader7
  %input_load_33 = load i32* %input_addr, align 4, !dbg !626 ; [#uses=3 type=i32] [debug line = 556:38]
  %tmp_885 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %input_load_33, i32 31), !dbg !626 ; [#uses=1 type=i1] [debug line = 556:38]
  %mask_3 = select i1 %tmp_885, i32 -1, i32 0, !dbg !626 ; [#uses=1 type=i32] [debug line = 556:38]
  call void @llvm.dbg.value(metadata !{i32 %mask_3}, i64 0, metadata !654), !dbg !626 ; [debug line = 556:38] [debug variable = mask]
  %tmp_754 = and i32 %input_load_33, %mask_3, !dbg !655 ; [#uses=1 type=i32] [debug line = 557:51]
  %tmp_383 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %tmp_754, i32 25, i32 31), !dbg !655 ; [#uses=2 type=i7] [debug line = 557:51]
  %tmp_935_cast = sext i7 %tmp_383 to i13, !dbg !656 ; [#uses=1 type=i13] [debug line = 558:7]
  %p_shl2 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_383, i25 0), !dbg !656 ; [#uses=1 type=i32] [debug line = 558:7]
  %tmp_755 = sub i32 %input_load_33, %p_shl2, !dbg !656 ; [#uses=1 type=i32] [debug line = 558:7]
  store i32 %tmp_755, i32* %input_addr, align 4, !dbg !656 ; [debug line = 558:7]
  %input_load_34 = load i32* %input_addr_31, align 16, !dbg !630 ; [#uses=1 type=i32] [debug line = 559:7]
  %tmp_756 = mul i13 19, %tmp_935_cast, !dbg !630 ; [#uses=1 type=i13] [debug line = 559:7]
  %tmp_937_cast = sext i13 %tmp_756 to i32, !dbg !630 ; [#uses=1 type=i32] [debug line = 559:7]
  %tmp_757 = add i32 %input_load_34, %tmp_937_cast, !dbg !630 ; [#uses=1 type=i32] [debug line = 559:7]
  store i32 %tmp_757, i32* %input_addr_31, align 16, !dbg !630 ; [debug line = 559:7]
  call void @llvm.dbg.value(metadata !{i2 %j_2}, i64 0, metadata !657), !dbg !635 ; [debug line = 536:22] [debug variable = j]
  br label %.preheader8, !dbg !635                ; [debug line = 536:22]

; <label>:8                                       ; preds = %.preheader8
  %input_load = load i32* %input_addr_31, align 16, !dbg !658 ; [#uses=3 type=i32] [debug line = 580:36]
  %tmp_882 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %input_load, i32 31), !dbg !658 ; [#uses=1 type=i1] [debug line = 580:36]
  %mask = select i1 %tmp_882, i32 -1, i32 0, !dbg !658 ; [#uses=1 type=i32] [debug line = 580:36]
  call void @llvm.dbg.value(metadata !{i32 %mask}, i64 0, metadata !660), !dbg !658 ; [debug line = 580:36] [debug variable = mask]
  %tmp_s = and i32 %input_load, %mask, !dbg !661  ; [#uses=1 type=i32] [debug line = 581:49]
  %tmp_379 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %tmp_s, i32 26, i32 31), !dbg !661 ; [#uses=2 type=i6] [debug line = 581:49]
  %tmp_751 = sext i6 %tmp_379 to i32, !dbg !661   ; [#uses=1 type=i32] [debug line = 581:49]
  %p_shl1 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_379, i26 0), !dbg !662 ; [#uses=1 type=i32] [debug line = 582:5]
  %tmp_752 = sub i32 %input_load, %p_shl1, !dbg !662 ; [#uses=2 type=i32] [debug line = 582:5]
  store i32 %tmp_752, i32* %input_addr_31, align 16, !dbg !662 ; [debug line = 582:5]
  %input_addr_33 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 1, !dbg !663 ; [#uses=4 type=i32*] [debug line = 583:5]
  %input_load_32 = load i32* %input_addr_33, align 4, !dbg !663 ; [#uses=1 type=i32] [debug line = 583:5]
  %tmp_753 = add nsw i32 %input_load_32, %tmp_751, !dbg !663 ; [#uses=1 type=i32] [debug line = 583:5]
  store i32 %tmp_753, i32* %input_addr_33, align 4, !dbg !663 ; [debug line = 583:5]
  br label %9, !dbg !664                          ; [debug line = 588:8]

; <label>:9                                       ; preds = %14, %8
  %a_assign = phi i32 [ %tmp_752, %8 ], [ %tmp_772, %14 ] ; [#uses=2 type=i32]
  %j_1 = phi i2 [ 0, %8 ], [ %j_3, %14 ]          ; [#uses=2 type=i2]
  %exitcond3 = icmp eq i2 %j_1, -2, !dbg !664     ; [#uses=1 type=i1] [debug line = 588:8]
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %j_3 = add i2 %j_1, 1, !dbg !666                ; [#uses=1 type=i2] [debug line = 588:22]
  br i1 %exitcond3, label %15, label %.preheader.preheader, !dbg !664 ; [debug line = 588:8]

.preheader.preheader:                             ; preds = %9
  br label %.preheader, !dbg !667                 ; [debug line = 589:10]

.preheader:                                       ; preds = %13, %.preheader.preheader
  %i_2 = phi i4 [ %i_9, %13 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i4]
  %tmp_887 = trunc i4 %i_2 to i1, !dbg !667       ; [#uses=1 type=i1] [debug line = 589:10]
  %exitcond2 = icmp eq i4 %i_2, -7, !dbg !667     ; [#uses=1 type=i1] [debug line = 589:10]
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  %i_9 = add i4 1, %i_2, !dbg !670                ; [#uses=3 type=i4] [debug line = 589:24]
  br i1 %exitcond2, label %14, label %10, !dbg !667 ; [debug line = 589:10]

; <label>:10                                      ; preds = %.preheader
  %tmp_773 = zext i4 %i_2 to i64, !dbg !671       ; [#uses=1 type=i64] [debug line = 595:41]
  %input_addr_37 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_773, !dbg !671 ; [#uses=3 type=i32*] [debug line = 595:41]
  %input_load_40 = load i32* %input_addr_37, align 4, !dbg !671 ; [#uses=4 type=i32] [debug line = 595:41]
  %tmp_904 = trunc i32 %input_load_40 to i26, !dbg !674 ; [#uses=1 type=i26] [debug line = 590:7]
  %tmp_905 = trunc i32 %input_load_40 to i25, !dbg !674 ; [#uses=1 type=i25] [debug line = 590:7]
  br i1 %tmp_887, label %11, label %12, !dbg !674 ; [debug line = 590:7]

; <label>:11                                      ; preds = %10
  %tmp_395 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %input_load_40, i32 25, i32 31), !dbg !675 ; [#uses=1 type=i7] [debug line = 591:41]
  %carry = sext i7 %tmp_395 to i32, !dbg !675     ; [#uses=1 type=i32] [debug line = 591:41]
  call void @llvm.dbg.value(metadata !{i32 %carry}, i64 0, metadata !677), !dbg !675 ; [debug line = 591:41] [debug variable = carry]
  %tmp_968_cast = zext i25 %tmp_905 to i32, !dbg !678 ; [#uses=1 type=i32] [debug line = 592:9]
  store i32 %tmp_968_cast, i32* %input_addr_37, align 4, !dbg !678 ; [debug line = 592:9]
  %tmp_774 = zext i4 %i_9 to i64, !dbg !679       ; [#uses=1 type=i64] [debug line = 593:9]
  %input_addr_40 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_774, !dbg !679 ; [#uses=2 type=i32*] [debug line = 593:9]
  %input_load_43 = load i32* %input_addr_40, align 4, !dbg !679 ; [#uses=1 type=i32] [debug line = 593:9]
  %tmp_775 = add nsw i32 %input_load_43, %carry, !dbg !679 ; [#uses=1 type=i32] [debug line = 593:9]
  store i32 %tmp_775, i32* %input_addr_40, align 4, !dbg !679 ; [debug line = 593:9]
  br label %13, !dbg !680                         ; [debug line = 594:7]

; <label>:12                                      ; preds = %10
  %tmp_393 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %input_load_40, i32 26, i32 31), !dbg !671 ; [#uses=1 type=i6] [debug line = 595:41]
  %carry_1 = sext i6 %tmp_393 to i32, !dbg !671   ; [#uses=1 type=i32] [debug line = 595:41]
  call void @llvm.dbg.value(metadata !{i32 %carry_1}, i64 0, metadata !681), !dbg !671 ; [debug line = 595:41] [debug variable = carry]
  %tmp_964_cast = zext i26 %tmp_904 to i32, !dbg !682 ; [#uses=1 type=i32] [debug line = 596:9]
  store i32 %tmp_964_cast, i32* %input_addr_37, align 4, !dbg !682 ; [debug line = 596:9]
  %tmp_776 = zext i4 %i_9 to i64, !dbg !683       ; [#uses=1 type=i64] [debug line = 597:9]
  %input_addr_39 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_776, !dbg !683 ; [#uses=2 type=i32*] [debug line = 597:9]
  %input_load_42 = load i32* %input_addr_39, align 4, !dbg !683 ; [#uses=1 type=i32] [debug line = 597:9]
  %tmp_777 = add nsw i32 %input_load_42, %carry_1, !dbg !683 ; [#uses=1 type=i32] [debug line = 597:9]
  store i32 %tmp_777, i32* %input_addr_39, align 4, !dbg !683 ; [debug line = 597:9]
  br label %13

; <label>:13                                      ; preds = %12, %11
  call void @llvm.dbg.value(metadata !{i4 %i_9}, i64 0, metadata !634), !dbg !670 ; [debug line = 589:24] [debug variable = i]
  br label %.preheader, !dbg !670                 ; [debug line = 589:24]

; <label>:14                                      ; preds = %.preheader
  %input_load_38 = load i32* %input_addr, align 4, !dbg !684 ; [#uses=2 type=i32] [debug line = 602:39]
  %tmp_903 = trunc i32 %input_load_38 to i25, !dbg !684 ; [#uses=1 type=i25] [debug line = 602:39]
  %tmp_391 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %input_load_38, i32 25, i32 31), !dbg !684 ; [#uses=1 type=i7] [debug line = 602:39]
  %carry_cast = sext i7 %tmp_391 to i13, !dbg !684 ; [#uses=1 type=i13] [debug line = 602:39]
  %tmp_954_cast = zext i25 %tmp_903 to i32, !dbg !686 ; [#uses=1 type=i32] [debug line = 603:7]
  store i32 %tmp_954_cast, i32* %input_addr, align 4, !dbg !686 ; [debug line = 603:7]
  %tmp_771 = mul i13 19, %carry_cast, !dbg !687   ; [#uses=1 type=i13] [debug line = 604:7]
  %tmp_955_cast = sext i13 %tmp_771 to i32, !dbg !687 ; [#uses=1 type=i32] [debug line = 604:7]
  %input_load_39 = load i32* %input_addr_31, align 16, !dbg !687 ; [#uses=1 type=i32] [debug line = 604:7]
  %tmp_772 = add nsw i32 %tmp_955_cast, %input_load_39, !dbg !687 ; [#uses=2 type=i32] [debug line = 604:7]
  store i32 %tmp_772, i32* %input_addr_31, align 16, !dbg !687 ; [debug line = 604:7]
  call void @llvm.dbg.value(metadata !{i2 %j_3}, i64 0, metadata !657), !dbg !666 ; [debug line = 588:22] [debug variable = j]
  br label %9, !dbg !666                          ; [debug line = 588:22]

; <label>:15                                      ; preds = %9
  call void @llvm.dbg.value(metadata !{i32 %a_assign}, i64 0, metadata !688), !dbg !693 ; [debug line = 514:24@618:10] [debug variable = a]
  %a_assign_1 = add nsw i32 -67108845, %a_assign, !dbg !694 ; [#uses=1 type=i32] [debug line = 515:3@618:10]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_1}, i64 0, metadata !688), !dbg !694 ; [debug line = 515:3@618:10] [debug variable = a]
  %tmp_884 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_assign_1, i32 31), !dbg !696 ; [#uses=1 type=i1] [debug line = 517:3@618:10]
  %mask_2 = xor i1 %tmp_884, true                 ; [#uses=1 type=i1]
  %mask_2_cast = select i1 %mask_2, i32 -1, i32 0 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i1 %mask_2}, i64 0, metadata !697), !dbg !692 ; [debug line = 618:10] [debug variable = mask]
  br label %16, !dbg !698                         ; [debug line = 619:8]

; <label>:16                                      ; preds = %_ifconv, %15
  %i_3 = phi i4 [ 1, %15 ], [ %i_8, %_ifconv ]    ; [#uses=4 type=i4]
  %mask4 = phi i32 [ %mask_2_cast, %15 ], [ %mask_1, %_ifconv ] ; [#uses=5 type=i32]
  %exitcond1 = icmp eq i4 %i_3, -6, !dbg !698     ; [#uses=1 type=i1] [debug line = 619:8]
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %17, label %_ifconv, !dbg !698 ; [debug line = 619:8]

_ifconv:                                          ; preds = %16
  %tmp_770 = zext i4 %i_3 to i64, !dbg !700       ; [#uses=1 type=i64] [debug line = 623:15]
  %input_addr_38 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_770, !dbg !700 ; [#uses=1 type=i32*] [debug line = 623:15]
  %input_load_41 = load i32* %input_addr_38, align 4, !dbg !700 ; [#uses=2 type=i32] [debug line = 623:15]
  call void @llvm.dbg.value(metadata !{i32 %input_load_41}, i64 0, metadata !703), !dbg !705 ; [debug line = 502:23@623:15] [debug variable = a]
  %a_assign_3 = xor i32 %input_load_41, -67108864, !dbg !706 ; [#uses=2 type=i32] [debug line = 503:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_3}, i64 0, metadata !703), !dbg !706 ; [debug line = 503:3@623:15] [debug variable = a]
  %tmp_890 = shl i32 %a_assign_3, 16, !dbg !708   ; [#uses=1 type=i32] [debug line = 504:3@623:15]
  %a_assign_4 = and i32 %tmp_890, %a_assign_3, !dbg !708 ; [#uses=2 type=i32] [debug line = 504:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_4}, i64 0, metadata !703), !dbg !708 ; [debug line = 504:3@623:15] [debug variable = a]
  %tmp_891 = shl i32 %a_assign_4, 8, !dbg !709    ; [#uses=1 type=i32] [debug line = 505:3@623:15]
  %a_assign_5 = and i32 %tmp_891, %a_assign_4, !dbg !709 ; [#uses=2 type=i32] [debug line = 505:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_5}, i64 0, metadata !703), !dbg !709 ; [debug line = 505:3@623:15] [debug variable = a]
  %tmp_892 = shl i32 %a_assign_5, 4, !dbg !710    ; [#uses=1 type=i32] [debug line = 506:3@623:15]
  %a_assign_6 = and i32 %tmp_892, %a_assign_5, !dbg !710 ; [#uses=2 type=i32] [debug line = 506:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_6}, i64 0, metadata !703), !dbg !710 ; [debug line = 506:3@623:15] [debug variable = a]
  %tmp_893 = shl i32 %a_assign_6, 2, !dbg !711    ; [#uses=1 type=i32] [debug line = 507:3@623:15]
  %a_assign_7 = and i32 %tmp_893, %a_assign_6, !dbg !711 ; [#uses=2 type=i32] [debug line = 507:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_7}, i64 0, metadata !703), !dbg !711 ; [debug line = 507:3@623:15] [debug variable = a]
  %tmp_894 = shl i32 %a_assign_7, 1, !dbg !712    ; [#uses=1 type=i32] [debug line = 508:3@623:15]
  %a_assign_8 = and i32 %tmp_894, %a_assign_7, !dbg !712 ; [#uses=1 type=i32] [debug line = 508:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_8}, i64 0, metadata !703), !dbg !712 ; [debug line = 508:3@623:15] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %input_load_41}, i64 0, metadata !713), !dbg !716 ; [debug line = 502:23@621:15] [debug variable = a]
  %a_assign_9 = xor i32 %input_load_41, -33554432, !dbg !717 ; [#uses=2 type=i32] [debug line = 503:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_9}, i64 0, metadata !713), !dbg !717 ; [debug line = 503:3@621:15] [debug variable = a]
  %tmp_895 = shl i32 %a_assign_9, 16, !dbg !718   ; [#uses=1 type=i32] [debug line = 504:3@621:15]
  %a_assign_s = and i32 %tmp_895, %a_assign_9, !dbg !718 ; [#uses=2 type=i32] [debug line = 504:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_s}, i64 0, metadata !713), !dbg !718 ; [debug line = 504:3@621:15] [debug variable = a]
  %tmp_896 = shl i32 %a_assign_s, 8, !dbg !719    ; [#uses=1 type=i32] [debug line = 505:3@621:15]
  %a_assign_2 = and i32 %tmp_896, %a_assign_s, !dbg !719 ; [#uses=2 type=i32] [debug line = 505:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_2}, i64 0, metadata !713), !dbg !719 ; [debug line = 505:3@621:15] [debug variable = a]
  %tmp_897 = shl i32 %a_assign_2, 4, !dbg !720    ; [#uses=1 type=i32] [debug line = 506:3@621:15]
  %a_assign_10 = and i32 %tmp_897, %a_assign_2, !dbg !720 ; [#uses=2 type=i32] [debug line = 506:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_10}, i64 0, metadata !713), !dbg !720 ; [debug line = 506:3@621:15] [debug variable = a]
  %tmp_898 = shl i32 %a_assign_10, 2, !dbg !721   ; [#uses=1 type=i32] [debug line = 507:3@621:15]
  %a_assign_11 = and i32 %tmp_898, %a_assign_10, !dbg !721 ; [#uses=2 type=i32] [debug line = 507:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_11}, i64 0, metadata !713), !dbg !721 ; [debug line = 507:3@621:15] [debug variable = a]
  %tmp_899 = shl i32 %a_assign_11, 1, !dbg !722   ; [#uses=1 type=i32] [debug line = 508:3@621:15]
  %a_assign_12 = and i32 %tmp_899, %a_assign_11, !dbg !722 ; [#uses=1 type=i32] [debug line = 508:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a_assign_12}, i64 0, metadata !713), !dbg !722 ; [debug line = 508:3@621:15] [debug variable = a]
  %tmp_900 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_assign_12, i32 31), !dbg !723 ; [#uses=1 type=i1] [debug line = 509:3@623:15]
  %tmp_901 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_assign_8, i32 31), !dbg !723 ; [#uses=1 type=i1] [debug line = 509:3@623:15]
  %tmp_902 = trunc i4 %i_3 to i1, !dbg !698       ; [#uses=1 type=i1] [debug line = 619:8]
  %tmp_612 = select i1 %tmp_902, i1 %tmp_900, i1 %tmp_901 ; [#uses=1 type=i1]
  %p_pn = select i1 %tmp_612, i32 -1, i32 0, !dbg !723 ; [#uses=1 type=i32] [debug line = 509:3@623:15]
  %mask_1 = and i32 %p_pn, %mask4, !dbg !714      ; [#uses=1 type=i32] [debug line = 621:15]
  call void @llvm.dbg.value(metadata !{i32 %mask_1}, i64 0, metadata !697), !dbg !714 ; [debug line = 621:15] [debug variable = mask]
  %i_8 = add i4 1, %i_3, !dbg !724                ; [#uses=1 type=i4] [debug line = 619:23]
  call void @llvm.dbg.value(metadata !{i4 %i_8}, i64 0, metadata !634), !dbg !724 ; [debug line = 619:23] [debug variable = i]
  br label %16, !dbg !724                         ; [debug line = 619:23]

; <label>:17                                      ; preds = %16
  %tmp_888 = trunc i32 %mask4 to i26, !dbg !698   ; [#uses=1 type=i26] [debug line = 619:8]
  %tmp_597 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %mask4, i32 5, i32 25) ; [#uses=1 type=i21]
  %tmp_598 = call i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32 %mask4, i32 2, i32 3) ; [#uses=1 type=i2]
  %tmp_889 = trunc i32 %mask4 to i1               ; [#uses=1 type=i1]
  %tmp_768 = call i26 @_ssdm_op_BitConcatenate.i26.i21.i1.i2.i1.i1(i21 %tmp_597, i1 false, i2 %tmp_598, i1 false, i1 %tmp_889), !dbg !725 ; [#uses=1 type=i26] [debug line = 629:3]
  %tmp_953_cast = zext i26 %tmp_768 to i32, !dbg !725 ; [#uses=1 type=i32] [debug line = 629:3]
  %tmp_769 = sub nsw i32 %a_assign, %tmp_953_cast, !dbg !725 ; [#uses=1 type=i32] [debug line = 629:3]
  store i32 %tmp_769, i32* %input_addr_31, align 16, !dbg !725 ; [debug line = 629:3]
  br label %18, !dbg !726                         ; [debug line = 631:8]

; <label>:18                                      ; preds = %19, %17
  %i_4 = phi i4 [ 1, %17 ], [ %i_13, %19 ]        ; [#uses=4 type=i4]
  %exitcond = icmp eq i4 %i_4, -6, !dbg !726      ; [#uses=1 type=i1] [debug line = 631:8]
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %exitcond, label %20, label %19, !dbg !726 ; [debug line = 631:8]

; <label>:19                                      ; preds = %18
  %tmp_824 = zext i4 %i_4 to i64, !dbg !728       ; [#uses=1 type=i64] [debug line = 635:7]
  %input_addr_48 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_824, !dbg !728 ; [#uses=2 type=i32*] [debug line = 635:7]
  %input_load_54 = load i32* %input_addr_48, align 4, !dbg !728 ; [#uses=1 type=i32] [debug line = 635:7]
  %tmp_924 = trunc i4 %i_4 to i1, !dbg !726       ; [#uses=1 type=i1] [debug line = 631:8]
  %tmp_1121_pn_v = select i1 %tmp_924, i26 33554431, i26 -1, !dbg !731 ; [#uses=1 type=i26] [debug line = 632:5]
  %tmp_1121_pn = and i26 %tmp_888, %tmp_1121_pn_v, !dbg !731 ; [#uses=1 type=i26] [debug line = 632:5]
  %tmp_1121_pn_cast = zext i26 %tmp_1121_pn to i32, !dbg !731 ; [#uses=1 type=i32] [debug line = 632:5]
  %storemerge = sub nsw i32 %input_load_54, %tmp_1121_pn_cast, !dbg !728 ; [#uses=1 type=i32] [debug line = 635:7]
  store i32 %storemerge, i32* %input_addr_48, align 4, !dbg !728 ; [debug line = 635:7]
  %i_13 = add i4 1, %i_4, !dbg !732               ; [#uses=1 type=i4] [debug line = 631:23]
  call void @llvm.dbg.value(metadata !{i4 %i_13}, i64 0, metadata !634), !dbg !732 ; [debug line = 631:23] [debug variable = i]
  br label %18, !dbg !732                         ; [debug line = 631:23]

; <label>:20                                      ; preds = %18
  %input_load_44 = load i32* %input_addr_33, align 4, !dbg !733 ; [#uses=5 type=i32] [debug line = 639:3]
  %tmp_906 = shl i32 %input_load_44, 2, !dbg !733 ; [#uses=1 type=i32] [debug line = 639:3]
  store i32 %tmp_906, i32* %input_addr_33, align 4, !dbg !733 ; [debug line = 639:3]
  %input_addr_41 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 2, !dbg !734 ; [#uses=2 type=i32*] [debug line = 640:3]
  %input_load_45 = load i32* %input_addr_41, align 8, !dbg !734 ; [#uses=5 type=i32] [debug line = 640:3]
  %tmp_907 = shl i32 %input_load_45, 3, !dbg !734 ; [#uses=1 type=i32] [debug line = 640:3]
  store i32 %tmp_907, i32* %input_addr_41, align 8, !dbg !734 ; [debug line = 640:3]
  %input_addr_42 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 3, !dbg !735 ; [#uses=2 type=i32*] [debug line = 641:3]
  %input_load_46 = load i32* %input_addr_42, align 4, !dbg !735 ; [#uses=5 type=i32] [debug line = 641:3]
  %tmp_908 = shl i32 %input_load_46, 5, !dbg !735 ; [#uses=1 type=i32] [debug line = 641:3]
  store i32 %tmp_908, i32* %input_addr_42, align 4, !dbg !735 ; [debug line = 641:3]
  %input_addr_43 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 4, !dbg !736 ; [#uses=2 type=i32*] [debug line = 642:3]
  %input_load_47 = load i32* %input_addr_43, align 16, !dbg !736 ; [#uses=5 type=i32] [debug line = 642:3]
  %tmp_909 = shl i32 %input_load_47, 6, !dbg !736 ; [#uses=1 type=i32] [debug line = 642:3]
  store i32 %tmp_909, i32* %input_addr_43, align 16, !dbg !736 ; [debug line = 642:3]
  %input_addr_44 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 6, !dbg !737 ; [#uses=2 type=i32*] [debug line = 643:3]
  %input_load_48 = load i32* %input_addr_44, align 8, !dbg !737 ; [#uses=5 type=i32] [debug line = 643:3]
  %tmp_910 = shl i32 %input_load_48, 1, !dbg !737 ; [#uses=1 type=i32] [debug line = 643:3]
  store i32 %tmp_910, i32* %input_addr_44, align 8, !dbg !737 ; [debug line = 643:3]
  %input_addr_45 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 7, !dbg !738 ; [#uses=2 type=i32*] [debug line = 644:3]
  %input_load_49 = load i32* %input_addr_45, align 4, !dbg !738 ; [#uses=5 type=i32] [debug line = 644:3]
  %tmp_911 = shl i32 %input_load_49, 3, !dbg !738 ; [#uses=1 type=i32] [debug line = 644:3]
  store i32 %tmp_911, i32* %input_addr_45, align 4, !dbg !738 ; [debug line = 644:3]
  %input_addr_46 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 8, !dbg !739 ; [#uses=2 type=i32*] [debug line = 645:3]
  %input_load_50 = load i32* %input_addr_46, align 16, !dbg !739 ; [#uses=5 type=i32] [debug line = 645:3]
  %tmp_912 = shl i32 %input_load_50, 4, !dbg !739 ; [#uses=1 type=i32] [debug line = 645:3]
  store i32 %tmp_912, i32* %input_addr_46, align 16, !dbg !739 ; [debug line = 645:3]
  %input_load_51 = load i32* %input_addr, align 4, !dbg !740 ; [#uses=5 type=i32] [debug line = 646:3]
  %tmp_913 = shl i32 %input_load_51, 6, !dbg !740 ; [#uses=1 type=i32] [debug line = 646:3]
  store i32 %tmp_913, i32* %input_addr, align 4, !dbg !740 ; [debug line = 646:3]
  %output_addr_156 = getelementptr [32 x i8]* %output, i64 0, i64 16, !dbg !741 ; [#uses=1 type=i8*] [debug line = 653:3]
  %input_load_52 = load i32* %input_addr_31, align 16, !dbg !742 ; [#uses=4 type=i32] [debug line = 654:3]
  %tmp_914 = trunc i32 %input_load_52 to i8, !dbg !742 ; [#uses=1 type=i8] [debug line = 654:3]
  store i8 %tmp_914, i8* %output_addr, align 1, !dbg !742 ; [debug line = 654:3]
  %tmp_778 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_52, i32 8, i32 15), !dbg !743 ; [#uses=1 type=i8] [debug line = 654:36]
  %output_addr_157 = getelementptr [32 x i8]* %output, i64 0, i64 1, !dbg !743 ; [#uses=1 type=i8*] [debug line = 654:36]
  store i8 %tmp_778, i8* %output_addr_157, align 1, !dbg !743 ; [debug line = 654:36]
  %tmp_779 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_52, i32 16, i32 23), !dbg !744 ; [#uses=1 type=i8] [debug line = 654:75]
  %output_addr_158 = getelementptr [32 x i8]* %output, i64 0, i64 2, !dbg !744 ; [#uses=1 type=i8*] [debug line = 654:75]
  store i8 %tmp_779, i8* %output_addr_158, align 1, !dbg !744 ; [debug line = 654:75]
  %tmp_780 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_52, i32 24, i32 31), !dbg !745 ; [#uses=1 type=i8] [debug line = 654:115]
  %output_addr_159 = getelementptr [32 x i8]* %output, i64 0, i64 3, !dbg !745 ; [#uses=1 type=i8*] [debug line = 654:115]
  %tmp_915 = trunc i32 %input_load_44 to i6       ; [#uses=1 type=i6]
  %tmp_781 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_915, i2 0), !dbg !746 ; [#uses=1 type=i8] [debug line = 655:3]
  %tmp_782 = or i8 %tmp_780, %tmp_781, !dbg !746  ; [#uses=1 type=i8] [debug line = 655:3]
  store i8 %tmp_782, i8* %output_addr_159, align 1, !dbg !746 ; [debug line = 655:3]
  %tmp_783 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_44, i32 6, i32 13), !dbg !747 ; [#uses=1 type=i8] [debug line = 655:36]
  %output_addr_160 = getelementptr [32 x i8]* %output, i64 0, i64 4, !dbg !747 ; [#uses=1 type=i8*] [debug line = 655:36]
  store i8 %tmp_783, i8* %output_addr_160, align 1, !dbg !747 ; [debug line = 655:36]
  %tmp_784 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_44, i32 14, i32 21), !dbg !748 ; [#uses=1 type=i8] [debug line = 655:75]
  %output_addr_161 = getelementptr [32 x i8]* %output, i64 0, i64 5, !dbg !748 ; [#uses=1 type=i8*] [debug line = 655:75]
  store i8 %tmp_784, i8* %output_addr_161, align 1, !dbg !748 ; [debug line = 655:75]
  %tmp_785 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_44, i32 22, i32 29), !dbg !749 ; [#uses=1 type=i8] [debug line = 655:115]
  %output_addr_162 = getelementptr [32 x i8]* %output, i64 0, i64 6, !dbg !749 ; [#uses=1 type=i8*] [debug line = 655:115]
  %tmp_916 = trunc i32 %input_load_45 to i5       ; [#uses=1 type=i5]
  %tmp_786 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_916, i3 0), !dbg !750 ; [#uses=1 type=i8] [debug line = 656:3]
  %tmp_787 = or i8 %tmp_786, %tmp_785, !dbg !750  ; [#uses=1 type=i8] [debug line = 656:3]
  store i8 %tmp_787, i8* %output_addr_162, align 1, !dbg !750 ; [debug line = 656:3]
  %tmp_788 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_45, i32 5, i32 12), !dbg !751 ; [#uses=1 type=i8] [debug line = 656:36]
  %output_addr_163 = getelementptr [32 x i8]* %output, i64 0, i64 7, !dbg !751 ; [#uses=1 type=i8*] [debug line = 656:36]
  store i8 %tmp_788, i8* %output_addr_163, align 1, !dbg !751 ; [debug line = 656:36]
  %tmp_789 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_45, i32 13, i32 20), !dbg !752 ; [#uses=1 type=i8] [debug line = 656:75]
  %output_addr_164 = getelementptr [32 x i8]* %output, i64 0, i64 8, !dbg !752 ; [#uses=1 type=i8*] [debug line = 656:75]
  store i8 %tmp_789, i8* %output_addr_164, align 1, !dbg !752 ; [debug line = 656:75]
  %tmp_790 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_45, i32 21, i32 28), !dbg !753 ; [#uses=1 type=i8] [debug line = 656:115]
  %output_addr_165 = getelementptr [32 x i8]* %output, i64 0, i64 9, !dbg !753 ; [#uses=1 type=i8*] [debug line = 656:115]
  %tmp_917 = trunc i32 %input_load_46 to i3       ; [#uses=1 type=i3]
  %tmp_791 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_917, i5 0), !dbg !754 ; [#uses=1 type=i8] [debug line = 657:3]
  %tmp_792 = or i8 %tmp_791, %tmp_790, !dbg !754  ; [#uses=1 type=i8] [debug line = 657:3]
  store i8 %tmp_792, i8* %output_addr_165, align 1, !dbg !754 ; [debug line = 657:3]
  %tmp_793 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_46, i32 3, i32 10), !dbg !755 ; [#uses=1 type=i8] [debug line = 657:36]
  %output_addr_166 = getelementptr [32 x i8]* %output, i64 0, i64 10, !dbg !755 ; [#uses=1 type=i8*] [debug line = 657:36]
  store i8 %tmp_793, i8* %output_addr_166, align 1, !dbg !755 ; [debug line = 657:36]
  %tmp_794 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_46, i32 11, i32 18), !dbg !756 ; [#uses=1 type=i8] [debug line = 657:75]
  %output_addr_167 = getelementptr [32 x i8]* %output, i64 0, i64 11, !dbg !756 ; [#uses=1 type=i8*] [debug line = 657:75]
  store i8 %tmp_794, i8* %output_addr_167, align 1, !dbg !756 ; [debug line = 657:75]
  %tmp_795 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_46, i32 19, i32 26), !dbg !757 ; [#uses=1 type=i8] [debug line = 657:115]
  %output_addr_168 = getelementptr [32 x i8]* %output, i64 0, i64 12, !dbg !757 ; [#uses=1 type=i8*] [debug line = 657:115]
  %tmp_918 = trunc i32 %input_load_47 to i2       ; [#uses=1 type=i2]
  %tmp_796 = call i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2 %tmp_918, i6 0), !dbg !758 ; [#uses=1 type=i8] [debug line = 658:3]
  %tmp_797 = or i8 %tmp_796, %tmp_795, !dbg !758  ; [#uses=1 type=i8] [debug line = 658:3]
  store i8 %tmp_797, i8* %output_addr_168, align 1, !dbg !758 ; [debug line = 658:3]
  %tmp_798 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_47, i32 2, i32 9), !dbg !759 ; [#uses=1 type=i8] [debug line = 658:37]
  %output_addr_169 = getelementptr [32 x i8]* %output, i64 0, i64 13, !dbg !759 ; [#uses=1 type=i8*] [debug line = 658:37]
  store i8 %tmp_798, i8* %output_addr_169, align 1, !dbg !759 ; [debug line = 658:37]
  %tmp_799 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_47, i32 10, i32 17), !dbg !760 ; [#uses=1 type=i8] [debug line = 658:77]
  %output_addr_170 = getelementptr [32 x i8]* %output, i64 0, i64 14, !dbg !760 ; [#uses=1 type=i8*] [debug line = 658:77]
  store i8 %tmp_799, i8* %output_addr_170, align 1, !dbg !760 ; [debug line = 658:77]
  %tmp_800 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_47, i32 18, i32 25), !dbg !761 ; [#uses=1 type=i8] [debug line = 658:118]
  %output_addr_171 = getelementptr [32 x i8]* %output, i64 0, i64 15, !dbg !761 ; [#uses=1 type=i8*] [debug line = 658:118]
  store i8 %tmp_800, i8* %output_addr_171, align 1, !dbg !761 ; [debug line = 658:118]
  %input_addr_47 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 5, !dbg !762 ; [#uses=1 type=i32*] [debug line = 659:3]
  %input_load_53 = load i32* %input_addr_47, align 4, !dbg !762 ; [#uses=4 type=i32] [debug line = 659:3]
  %tmp_919 = trunc i32 %input_load_53 to i8, !dbg !762 ; [#uses=1 type=i8] [debug line = 659:3]
  store i8 %tmp_919, i8* %output_addr_156, align 1, !dbg !762 ; [debug line = 659:3]
  %tmp_801 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_53, i32 8, i32 15), !dbg !763 ; [#uses=1 type=i8] [debug line = 659:37]
  %output_addr_172 = getelementptr [32 x i8]* %output, i64 0, i64 17, !dbg !763 ; [#uses=1 type=i8*] [debug line = 659:37]
  store i8 %tmp_801, i8* %output_addr_172, align 1, !dbg !763 ; [debug line = 659:37]
  %tmp_802 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_53, i32 16, i32 23), !dbg !764 ; [#uses=1 type=i8] [debug line = 659:77]
  %output_addr_173 = getelementptr [32 x i8]* %output, i64 0, i64 18, !dbg !764 ; [#uses=1 type=i8*] [debug line = 659:77]
  store i8 %tmp_802, i8* %output_addr_173, align 1, !dbg !764 ; [debug line = 659:77]
  %tmp_803 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_53, i32 24, i32 31), !dbg !765 ; [#uses=1 type=i8] [debug line = 659:118]
  %output_addr_174 = getelementptr [32 x i8]* %output, i64 0, i64 19, !dbg !765 ; [#uses=1 type=i8*] [debug line = 659:118]
  %tmp_920 = trunc i32 %input_load_48 to i7       ; [#uses=1 type=i7]
  %tmp_804 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_920, i1 false), !dbg !766 ; [#uses=1 type=i8] [debug line = 660:3]
  %tmp_805 = or i8 %tmp_803, %tmp_804, !dbg !766  ; [#uses=1 type=i8] [debug line = 660:3]
  store i8 %tmp_805, i8* %output_addr_174, align 1, !dbg !766 ; [debug line = 660:3]
  %tmp_806 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_48, i32 7, i32 14), !dbg !767 ; [#uses=1 type=i8] [debug line = 660:37]
  %output_addr_175 = getelementptr [32 x i8]* %output, i64 0, i64 20, !dbg !767 ; [#uses=1 type=i8*] [debug line = 660:37]
  store i8 %tmp_806, i8* %output_addr_175, align 1, !dbg !767 ; [debug line = 660:37]
  %tmp_807 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_48, i32 15, i32 22), !dbg !768 ; [#uses=1 type=i8] [debug line = 660:77]
  %output_addr_176 = getelementptr [32 x i8]* %output, i64 0, i64 21, !dbg !768 ; [#uses=1 type=i8*] [debug line = 660:77]
  store i8 %tmp_807, i8* %output_addr_176, align 1, !dbg !768 ; [debug line = 660:77]
  %tmp_808 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_48, i32 23, i32 30), !dbg !769 ; [#uses=1 type=i8] [debug line = 660:118]
  %output_addr_177 = getelementptr [32 x i8]* %output, i64 0, i64 22, !dbg !769 ; [#uses=1 type=i8*] [debug line = 660:118]
  %tmp_921 = trunc i32 %input_load_49 to i5       ; [#uses=1 type=i5]
  %tmp_809 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_921, i3 0), !dbg !770 ; [#uses=1 type=i8] [debug line = 661:3]
  %tmp_810 = or i8 %tmp_809, %tmp_808, !dbg !770  ; [#uses=1 type=i8] [debug line = 661:3]
  store i8 %tmp_810, i8* %output_addr_177, align 1, !dbg !770 ; [debug line = 661:3]
  %tmp_811 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_49, i32 5, i32 12), !dbg !771 ; [#uses=1 type=i8] [debug line = 661:37]
  %output_addr_178 = getelementptr [32 x i8]* %output, i64 0, i64 23, !dbg !771 ; [#uses=1 type=i8*] [debug line = 661:37]
  store i8 %tmp_811, i8* %output_addr_178, align 1, !dbg !771 ; [debug line = 661:37]
  %tmp_812 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_49, i32 13, i32 20), !dbg !772 ; [#uses=1 type=i8] [debug line = 661:77]
  %output_addr_179 = getelementptr [32 x i8]* %output, i64 0, i64 24, !dbg !772 ; [#uses=1 type=i8*] [debug line = 661:77]
  store i8 %tmp_812, i8* %output_addr_179, align 1, !dbg !772 ; [debug line = 661:77]
  %tmp_813 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_49, i32 21, i32 28), !dbg !773 ; [#uses=1 type=i8] [debug line = 661:118]
  %output_addr_180 = getelementptr [32 x i8]* %output, i64 0, i64 25, !dbg !773 ; [#uses=1 type=i8*] [debug line = 661:118]
  %tmp_922 = trunc i32 %input_load_50 to i4       ; [#uses=1 type=i4]
  %tmp_814 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp_922, i4 0), !dbg !774 ; [#uses=1 type=i8] [debug line = 662:3]
  %tmp_815 = or i8 %tmp_814, %tmp_813, !dbg !774  ; [#uses=1 type=i8] [debug line = 662:3]
  store i8 %tmp_815, i8* %output_addr_180, align 1, !dbg !774 ; [debug line = 662:3]
  %tmp_816 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_50, i32 4, i32 11), !dbg !775 ; [#uses=1 type=i8] [debug line = 662:37]
  %output_addr_181 = getelementptr [32 x i8]* %output, i64 0, i64 26, !dbg !775 ; [#uses=1 type=i8*] [debug line = 662:37]
  store i8 %tmp_816, i8* %output_addr_181, align 1, !dbg !775 ; [debug line = 662:37]
  %tmp_817 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_50, i32 12, i32 19), !dbg !776 ; [#uses=1 type=i8] [debug line = 662:77]
  %output_addr_182 = getelementptr [32 x i8]* %output, i64 0, i64 27, !dbg !776 ; [#uses=1 type=i8*] [debug line = 662:77]
  store i8 %tmp_817, i8* %output_addr_182, align 1, !dbg !776 ; [debug line = 662:77]
  %tmp_818 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_50, i32 20, i32 27), !dbg !777 ; [#uses=1 type=i8] [debug line = 662:118]
  %output_addr_183 = getelementptr [32 x i8]* %output, i64 0, i64 28, !dbg !777 ; [#uses=1 type=i8*] [debug line = 662:118]
  %tmp_923 = trunc i32 %input_load_51 to i2       ; [#uses=1 type=i2]
  %tmp_819 = call i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2 %tmp_923, i6 0), !dbg !778 ; [#uses=1 type=i8] [debug line = 663:3]
  %tmp_820 = or i8 %tmp_819, %tmp_818, !dbg !778  ; [#uses=1 type=i8] [debug line = 663:3]
  store i8 %tmp_820, i8* %output_addr_183, align 1, !dbg !778 ; [debug line = 663:3]
  %tmp_821 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_51, i32 2, i32 9), !dbg !779 ; [#uses=1 type=i8] [debug line = 663:37]
  %output_addr_184 = getelementptr [32 x i8]* %output, i64 0, i64 29, !dbg !779 ; [#uses=1 type=i8*] [debug line = 663:37]
  store i8 %tmp_821, i8* %output_addr_184, align 1, !dbg !779 ; [debug line = 663:37]
  %tmp_822 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_51, i32 10, i32 17), !dbg !780 ; [#uses=1 type=i8] [debug line = 663:77]
  %output_addr_185 = getelementptr [32 x i8]* %output, i64 0, i64 30, !dbg !780 ; [#uses=1 type=i8*] [debug line = 663:77]
  store i8 %tmp_822, i8* %output_addr_185, align 1, !dbg !780 ; [debug line = 663:77]
  %tmp_823 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_51, i32 18, i32 25), !dbg !781 ; [#uses=1 type=i8] [debug line = 663:118]
  %output_addr_186 = getelementptr [32 x i8]* %output, i64 0, i64 31, !dbg !781 ; [#uses=1 type=i8*] [debug line = 663:118]
  store i8 %tmp_823, i8* %output_addr_186, align 1, !dbg !781 ; [debug line = 663:118]
  ret void, !dbg !782                             ; [debug line = 665:1]
}

; [#uses=0]
define i32 @curve25519_donna([32 x i8]* %mypublic_in, [32 x i8]* %secret_in, [32 x i8]* %basepoint_in, [32 x i8]* %mypublic_out, [32 x i8]* %secret_out, [32 x i8]* %basepoint_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %mypublic_in) nounwind, !map !783
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %secret_in) nounwind, !map !789
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %basepoint_in) nounwind, !map !793
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %mypublic_out) nounwind, !map !797
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %secret_out) nounwind, !map !801
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %basepoint_out) nounwind, !map !805
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !809
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @curve25519_donna_str) nounwind
  %bp = alloca [10 x i26], align 4                ; [#uses=2 type=[10 x i26]*]
  %x = alloca [10 x i64], align 16                ; [#uses=2 type=[10 x i64]*]
  %z = alloca [11 x i64], align 16                ; [#uses=4 type=[11 x i64]*]
  %zmone = alloca [10 x i64], align 16            ; [#uses=2 type=[10 x i64]*]
  %e = alloca [32 x i8], align 16                 ; [#uses=5 type=[32 x i8]*]
  %mypublic = alloca [32 x i8], align 16          ; [#uses=4 type=[32 x i8]*]
  %secret = alloca [32 x i8], align 16            ; [#uses=4 type=[32 x i8]*]
  %basepoint = alloca [32 x i8], align 16         ; [#uses=4 type=[32 x i8]*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %mypublic_in}, i64 0, metadata !815), !dbg !819 ; [debug line = 954:21] [debug variable = mypublic_in]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %secret_in}, i64 0, metadata !820), !dbg !821 ; [debug line = 954:47] [debug variable = secret_in]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %basepoint_in}, i64 0, metadata !822), !dbg !823 ; [debug line = 954:71] [debug variable = basepoint_in]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %mypublic_out}, i64 0, metadata !824), !dbg !825 ; [debug line = 955:9] [debug variable = mypublic_out]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %secret_out}, i64 0, metadata !826), !dbg !827 ; [debug line = 955:36] [debug variable = secret_out]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %basepoint_out}, i64 0, metadata !828), !dbg !829 ; [debug line = 955:61] [debug variable = basepoint_out]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !830 ; [debug line = 956:1]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %basepoint_in, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %basepoint_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_34 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %secret_in, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %secret_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_35 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %mypublic_in, [1 x i8]* @p_str9, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str9, i32 -1, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %mypublic_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_36 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %basepoint_out, [1 x i8]* @p_str14, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str14, i32 -1, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %basepoint_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_37 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %secret_out, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %secret_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_38 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %mypublic_out, [1 x i8]* @p_str12, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str12, i32 -1, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %mypublic_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1) nounwind, !dbg !832 ; [debug line = 963:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [8 x i8]* @p_str3, [1 x i8]* @p_str1) nounwind, !dbg !833 ; [debug line = 964:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [14 x i8]* @p_str4, [1 x i8]* @p_str1) nounwind, !dbg !834 ; [debug line = 965:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [7 x i8]* @p_str5, [1 x i8]* @p_str1) nounwind, !dbg !835 ; [debug line = 966:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [9 x i8]* @p_str6, [1 x i8]* @p_str1) nounwind, !dbg !836 ; [debug line = 967:1]
  call void @llvm.dbg.declare(metadata !{[10 x i26]* %bp}, metadata !837), !dbg !838 ; [debug line = 968:7] [debug variable = bp]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !839), !dbg !840 ; [debug line = 968:15] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{[11 x i64]* %z}, metadata !841), !dbg !843 ; [debug line = 968:22] [debug variable = z]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %zmone}, metadata !844), !dbg !845 ; [debug line = 968:29] [debug variable = zmone]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %e}, metadata !846), !dbg !848 ; [debug line = 969:11] [debug variable = e]
  %e_addr = getelementptr inbounds [32 x i8]* %e, i64 0, i64 0, !dbg !849 ; [#uses=2 type=i8*] [debug line = 969:22]
  %empty_39 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %basepoint, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind ; [#uses=0 type=i32]
  %empty_40 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %secret, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind ; [#uses=0 type=i32]
  %empty_41 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %mypublic, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind ; [#uses=0 type=i32]
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i5 [ 0, %0 ], [ %indvarinc, %meminst ] ; [#uses=3 type=i5]
  %indvarinc = add i5 %invdar, 1, !dbg !849       ; [#uses=1 type=i5] [debug line = 969:22]
  %tmp = zext i5 %invdar to i64, !dbg !849        ; [#uses=1 type=i64] [debug line = 969:22]
  %e_addr_1 = getelementptr [32 x i8]* %e, i64 0, i64 %tmp, !dbg !849 ; [#uses=1 type=i8*] [debug line = 969:22]
  store i8 0, i8* %e_addr_1, align 1, !dbg !849   ; [debug line = 969:22]
  %tmp_s = icmp eq i5 %invdar, -1, !dbg !849      ; [#uses=1 type=i1] [debug line = 969:22]
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_e_str) nounwind ; [#uses=0 type=i32]
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_s, label %1, label %meminst, !dbg !849 ; [debug line = 969:22]

; <label>:1                                       ; preds = %meminst
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %mypublic}, metadata !850), !dbg !852 ; [debug line = 971:17] [debug variable = mypublic]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %secret}, metadata !853), !dbg !854 ; [debug line = 971:31] [debug variable = secret]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %basepoint}, metadata !855), !dbg !856 ; [debug line = 971:43] [debug variable = basepoint]
  call fastcc void @_memcpy_char([32 x i8]* %mypublic, [32 x i8]* %mypublic_in) nounwind, !dbg !857 ; [debug line = 973:3]
  call fastcc void @_memcpy_char([32 x i8]* %secret, [32 x i8]* %secret_in) nounwind, !dbg !858 ; [debug line = 974:3]
  call fastcc void @_memcpy_char([32 x i8]* %basepoint, [32 x i8]* %basepoint_in) nounwind, !dbg !859 ; [debug line = 975:3]
  br label %2, !dbg !860                          ; [debug line = 977:8]

; <label>:2                                       ; preds = %3, %1
  %i = phi i6 [ 0, %1 ], [ %i_14, %3 ]            ; [#uses=3 type=i6]
  %exitcond = icmp eq i6 %i, -32, !dbg !860       ; [#uses=1 type=i1] [debug line = 977:8]
  %empty_44 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %i_14 = add i6 %i, 1, !dbg !862                 ; [#uses=1 type=i6] [debug line = 977:23]
  br i1 %exitcond, label %4, label %3, !dbg !860  ; [debug line = 977:8]

; <label>:3                                       ; preds = %2
  %tmp_827 = zext i6 %i to i64, !dbg !863         ; [#uses=2 type=i64] [debug line = 978:4]
  %secret_addr = getelementptr inbounds [32 x i8]* %secret, i64 0, i64 %tmp_827, !dbg !863 ; [#uses=1 type=i8*] [debug line = 978:4]
  %secret_load = load i8* %secret_addr, align 1, !dbg !863 ; [#uses=1 type=i8] [debug line = 978:4]
  %e_addr_3 = getelementptr inbounds [32 x i8]* %e, i64 0, i64 %tmp_827, !dbg !863 ; [#uses=1 type=i8*] [debug line = 978:4]
  store i8 %secret_load, i8* %e_addr_3, align 1, !dbg !863 ; [debug line = 978:4]
  call void @llvm.dbg.value(metadata !{i6 %i_14}, i64 0, metadata !865), !dbg !862 ; [debug line = 977:23] [debug variable = i]
  br label %2, !dbg !862                          ; [debug line = 977:23]

; <label>:4                                       ; preds = %2
  %e_load = load i8* %e_addr, align 16, !dbg !866 ; [#uses=1 type=i8] [debug line = 980:3]
  %tmp_629 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %e_load, i32 3, i32 7) ; [#uses=1 type=i5]
  %tmp_825 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_629, i3 0), !dbg !866 ; [#uses=1 type=i8] [debug line = 980:3]
  store i8 %tmp_825, i8* %e_addr, align 16, !dbg !866 ; [debug line = 980:3]
  %e_addr_2 = getelementptr inbounds [32 x i8]* %e, i64 0, i64 31, !dbg !867 ; [#uses=2 type=i8*] [debug line = 981:3]
  %e_load_1 = load i8* %e_addr_2, align 1, !dbg !867 ; [#uses=1 type=i8] [debug line = 981:3]
  %tmp_925 = trunc i8 %e_load_1 to i6, !dbg !867  ; [#uses=1 type=i6] [debug line = 981:3]
  %tmp_826 = call i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1 true, i6 %tmp_925), !dbg !868 ; [#uses=1 type=i7] [debug line = 982:3]
  %tmp_1063_cast = zext i7 %tmp_826 to i8, !dbg !868 ; [#uses=1 type=i8] [debug line = 982:3]
  store i8 %tmp_1063_cast, i8* %e_addr_2, align 1, !dbg !868 ; [debug line = 982:3]
  call fastcc void @fexpand([10 x i26]* %bp, [32 x i8]* %basepoint) nounwind, !dbg !869 ; [debug line = 984:3]
  call fastcc void @cmult([10 x i64]* %x, [11 x i64]* %z, [32 x i8]* %e, [10 x i26]* %bp) nounwind, !dbg !870 ; [debug line = 985:3]
  call fastcc void @crecip([10 x i64]* %zmone, [11 x i64]* %z) nounwind, !dbg !871 ; [debug line = 986:3]
  call fastcc void @fmul.2([11 x i64]* %z, [10 x i64]* %x, [10 x i64]* %zmone) nounwind, !dbg !872 ; [debug line = 987:3]
  call fastcc void @fcontract([32 x i8]* %mypublic, [11 x i64]* %z) nounwind, !dbg !873 ; [debug line = 988:3]
  call fastcc void @_memcpy_char([32 x i8]* %mypublic_out, [32 x i8]* %mypublic) nounwind, !dbg !874 ; [debug line = 990:3]
  call fastcc void @_memcpy_char([32 x i8]* %secret_out, [32 x i8]* %secret) nounwind, !dbg !875 ; [debug line = 991:3]
  call fastcc void @_memcpy_char([32 x i8]* %basepoint_out, [32 x i8]* %basepoint) nounwind, !dbg !876 ; [debug line = 992:3]
  ret i32 0, !dbg !877                            ; [debug line = 995:3]
}

; [#uses=1]
define internal fastcc void @crecip([10 x i64]* nocapture %out, [11 x i64]* nocapture %z) {
  %z2 = alloca [10 x i64], align 16               ; [#uses=3 type=[10 x i64]*]
  %z9 = alloca [10 x i64], align 16               ; [#uses=3 type=[10 x i64]*]
  %z11 = alloca [10 x i64], align 16              ; [#uses=3 type=[10 x i64]*]
  %z2_5_0 = alloca [10 x i64], align 16           ; [#uses=3 type=[10 x i64]*]
  %z2_10_0 = alloca [10 x i64], align 16          ; [#uses=4 type=[10 x i64]*]
  %z2_20_0 = alloca [10 x i64], align 16          ; [#uses=3 type=[10 x i64]*]
  %z2_50_0 = alloca [10 x i64], align 16          ; [#uses=4 type=[10 x i64]*]
  %z2_100_0 = alloca [10 x i64], align 16         ; [#uses=3 type=[10 x i64]*]
  %t0 = alloca [10 x i64], align 16               ; [#uses=42 type=[10 x i64]*]
  %t1 = alloca [10 x i64], align 16               ; [#uses=38 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %out}, i64 0, metadata !878), !dbg !880 ; [debug line = 885:14] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[11 x i64]* %z}, i64 0, metadata !881), !dbg !882 ; [debug line = 885:31] [debug variable = z]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !883 ; [debug line = 886:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !885 ; [debug line = 887:1]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2}, metadata !886), !dbg !887 ; [debug line = 888:7] [debug variable = z2]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z9}, metadata !888), !dbg !889 ; [debug line = 889:8] [debug variable = z9]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z11}, metadata !890), !dbg !891 ; [debug line = 890:8] [debug variable = z11]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_5_0}, metadata !892), !dbg !893 ; [debug line = 891:8] [debug variable = z2_5_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_10_0}, metadata !894), !dbg !895 ; [debug line = 892:8] [debug variable = z2_10_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_20_0}, metadata !896), !dbg !897 ; [debug line = 893:8] [debug variable = z2_20_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_50_0}, metadata !898), !dbg !899 ; [debug line = 894:8] [debug variable = z2_50_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_100_0}, metadata !900), !dbg !901 ; [debug line = 895:8] [debug variable = z2_100_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %t0}, metadata !902), !dbg !903 ; [debug line = 896:8] [debug variable = t0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %t1}, metadata !904), !dbg !905 ; [debug line = 897:8] [debug variable = t1]
  call fastcc void @fsquare.2([10 x i64]* %z2, [11 x i64]* %z), !dbg !906 ; [debug line = 900:11]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %z2), !dbg !907 ; [debug line = 901:11]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !908 ; [debug line = 902:11]
  call fastcc void @fmul.1([10 x i64]* %z9, [10 x i64]* %t0, [11 x i64]* %z), !dbg !909 ; [debug line = 903:11]
  call fastcc void @fmul([10 x i64]* %z11, [10 x i64]* %z9, [10 x i64]* %z2), !dbg !910 ; [debug line = 904:12]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z11), !dbg !911 ; [debug line = 905:12]
  call fastcc void @fmul([10 x i64]* %z2_5_0, [10 x i64]* %t0, [10 x i64]* %z9), !dbg !912 ; [debug line = 906:24]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_5_0), !dbg !913 ; [debug line = 908:19]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !914 ; [debug line = 909:19]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !915 ; [debug line = 910:19]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !916 ; [debug line = 911:19]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !917 ; [debug line = 912:20]
  call fastcc void @fmul([10 x i64]* %z2_10_0, [10 x i64]* %t0, [10 x i64]* %z2_5_0), !dbg !918 ; [debug line = 913:20]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_10_0), !dbg !919 ; [debug line = 915:20]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !920 ; [debug line = 916:20]
  br label %1, !dbg !921                          ; [debug line = 917:26]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 2, %0 ], [ %i_15, %2 ]            ; [#uses=2 type=i4]
  %tmp = icmp ult i4 %i, -6, !dbg !921            ; [#uses=1 type=i1] [debug line = 917:26]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %2, label %3, !dbg !921       ; [debug line = 917:26]

; <label>:2                                       ; preds = %1
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !923 ; [debug line = 917:49]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !925 ; [debug line = 917:65]
  %i_15 = add i4 %i, 2, !dbg !926                 ; [#uses=1 type=i4] [debug line = 917:39]
  call void @llvm.dbg.value(metadata !{i4 %i_15}, i64 0, metadata !927), !dbg !926 ; [debug line = 917:39] [debug variable = i]
  br label %1, !dbg !926                          ; [debug line = 917:39]

; <label>:3                                       ; preds = %1
  call fastcc void @fmul([10 x i64]* %z2_20_0, [10 x i64]* %t1, [10 x i64]* %z2_10_0), !dbg !928 ; [debug line = 918:20]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_20_0), !dbg !929 ; [debug line = 920:20]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !930 ; [debug line = 921:20]
  br label %4, !dbg !931                          ; [debug line = 922:26]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i5 [ 2, %3 ], [ %i_16, %5 ]          ; [#uses=2 type=i5]
  %tmp_s = icmp ult i5 %i_1, -12, !dbg !931       ; [#uses=1 type=i1] [debug line = 922:26]
  %empty_45 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %tmp_s, label %5, label %6, !dbg !931     ; [debug line = 922:26]

; <label>:5                                       ; preds = %4
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !933 ; [debug line = 922:49]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !935 ; [debug line = 922:65]
  %i_16 = add i5 %i_1, 2, !dbg !936               ; [#uses=1 type=i5] [debug line = 922:39]
  call void @llvm.dbg.value(metadata !{i5 %i_16}, i64 0, metadata !927), !dbg !936 ; [debug line = 922:39] [debug variable = i]
  br label %4, !dbg !936                          ; [debug line = 922:39]

; <label>:6                                       ; preds = %4
  call fastcc void @fmul([10 x i64]* %t0, [10 x i64]* %t1, [10 x i64]* %z2_20_0), !dbg !937 ; [debug line = 923:20]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !938 ; [debug line = 925:20]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !939 ; [debug line = 926:20]
  br label %7, !dbg !940                          ; [debug line = 927:26]

; <label>:7                                       ; preds = %8, %6
  %i_2 = phi i4 [ 2, %6 ], [ %i_17, %8 ]          ; [#uses=2 type=i4]
  %tmp_828 = icmp ult i4 %i_2, -6, !dbg !940      ; [#uses=1 type=i1] [debug line = 927:26]
  %empty_46 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp_828, label %8, label %9, !dbg !940   ; [debug line = 927:26]

; <label>:8                                       ; preds = %7
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !942 ; [debug line = 927:49]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !944 ; [debug line = 927:65]
  %i_17 = add i4 %i_2, 2, !dbg !945               ; [#uses=1 type=i4] [debug line = 927:39]
  call void @llvm.dbg.value(metadata !{i4 %i_17}, i64 0, metadata !927), !dbg !945 ; [debug line = 927:39] [debug variable = i]
  br label %7, !dbg !945                          ; [debug line = 927:39]

; <label>:9                                       ; preds = %7
  call fastcc void @fmul([10 x i64]* %z2_50_0, [10 x i64]* %t0, [10 x i64]* %z2_10_0), !dbg !946 ; [debug line = 928:20]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_50_0), !dbg !947 ; [debug line = 930:20]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !948 ; [debug line = 931:20]
  br label %10, !dbg !949                         ; [debug line = 932:27]

; <label>:10                                      ; preds = %11, %9
  %i_3 = phi i6 [ 2, %9 ], [ %i_18, %11 ]         ; [#uses=2 type=i6]
  %tmp_829 = icmp ult i6 %i_3, -14, !dbg !949     ; [#uses=1 type=i1] [debug line = 932:27]
  %empty_47 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24) ; [#uses=0 type=i32]
  br i1 %tmp_829, label %11, label %12, !dbg !949 ; [debug line = 932:27]

; <label>:11                                      ; preds = %10
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !951 ; [debug line = 932:50]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !953 ; [debug line = 932:66]
  %i_18 = add i6 %i_3, 2, !dbg !954               ; [#uses=1 type=i6] [debug line = 932:40]
  call void @llvm.dbg.value(metadata !{i6 %i_18}, i64 0, metadata !927), !dbg !954 ; [debug line = 932:40] [debug variable = i]
  br label %10, !dbg !954                         ; [debug line = 932:40]

; <label>:12                                      ; preds = %10
  call fastcc void @fmul([10 x i64]* %z2_100_0, [10 x i64]* %t1, [10 x i64]* %z2_50_0), !dbg !955 ; [debug line = 933:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %z2_100_0), !dbg !956 ; [debug line = 935:21]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !957 ; [debug line = 936:21]
  br label %13, !dbg !958                         ; [debug line = 937:28]

; <label>:13                                      ; preds = %14, %12
  %i_4 = phi i7 [ 2, %12 ], [ %i_19, %14 ]        ; [#uses=2 type=i7]
  %tmp_830 = icmp ult i7 %i_4, -28, !dbg !958     ; [#uses=1 type=i1] [debug line = 937:28]
  %empty_48 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 49, i64 49, i64 49) ; [#uses=0 type=i32]
  br i1 %tmp_830, label %14, label %15, !dbg !958 ; [debug line = 937:28]

; <label>:14                                      ; preds = %13
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !960 ; [debug line = 937:52]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !962 ; [debug line = 937:68]
  %i_19 = add i7 %i_4, 2, !dbg !963               ; [#uses=1 type=i7] [debug line = 937:42]
  call void @llvm.dbg.value(metadata !{i7 %i_19}, i64 0, metadata !927), !dbg !963 ; [debug line = 937:42] [debug variable = i]
  br label %13, !dbg !963                         ; [debug line = 937:42]

; <label>:15                                      ; preds = %13
  call fastcc void @fmul([10 x i64]* %t1, [10 x i64]* %t0, [10 x i64]* %z2_100_0), !dbg !964 ; [debug line = 938:21]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !965 ; [debug line = 940:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !966 ; [debug line = 941:21]
  br label %16, !dbg !967                         ; [debug line = 942:27]

; <label>:16                                      ; preds = %17, %15
  %i_5 = phi i6 [ 2, %15 ], [ %i_20, %17 ]        ; [#uses=2 type=i6]
  %tmp_831 = icmp ult i6 %i_5, -14, !dbg !967     ; [#uses=1 type=i1] [debug line = 942:27]
  %empty_49 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24) ; [#uses=0 type=i32]
  br i1 %tmp_831, label %17, label %18, !dbg !967 ; [debug line = 942:27]

; <label>:17                                      ; preds = %16
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !969 ; [debug line = 942:50]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !971 ; [debug line = 942:66]
  %i_20 = add i6 %i_5, 2, !dbg !972               ; [#uses=1 type=i6] [debug line = 942:40]
  call void @llvm.dbg.value(metadata !{i6 %i_20}, i64 0, metadata !927), !dbg !972 ; [debug line = 942:40] [debug variable = i]
  br label %16, !dbg !972                         ; [debug line = 942:40]

; <label>:18                                      ; preds = %16
  call fastcc void @fmul([10 x i64]* %t0, [10 x i64]* %t1, [10 x i64]* %z2_50_0), !dbg !973 ; [debug line = 943:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !974 ; [debug line = 945:21]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !975 ; [debug line = 946:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !976 ; [debug line = 947:21]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !977 ; [debug line = 948:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !978 ; [debug line = 949:21]
  call fastcc void @fmul([10 x i64]* %out, [10 x i64]* %t1, [10 x i64]* %z11), !dbg !979 ; [debug line = 950:20]
  ret void, !dbg !980                             ; [debug line = 951:1]
}

; [#uses=1]
define internal fastcc void @cmult([10 x i64]* nocapture %resultx, [11 x i64]* %resultz, [32 x i8]* %n, [10 x i26]* %q) {
  %nqpqx = alloca [19 x i64], align 16            ; [#uses=6 type=[19 x i64]*]
  %nqpqz = alloca [19 x i64], align 16            ; [#uses=6 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqz}, metadata !981), !dbg !986 ; [debug line = 797:25] [debug variable = nqpqz]
  %nqx = alloca [19 x i64], align 16              ; [#uses=7 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %nqx}, i64 0, metadata !987), !dbg !989 ; [debug line = 59:31@877:3] [debug variable = src]
  %nqz = alloca [19 x i64], align 16              ; [#uses=6 type=[19 x i64]*]
  %t = alloca [19 x i64], align 16                ; [#uses=9 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !990), !dbg !991 ; [debug line = 797:72] [debug variable = t]
  %nqpqx2 = alloca [19 x i64], align 16           ; [#uses=5 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqx2}, metadata !992), !dbg !993 ; [debug line = 800:8] [debug variable = nqpqx2]
  %nqpqz2 = alloca [19 x i64], align 16           ; [#uses=6 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqz2}, metadata !994), !dbg !995 ; [debug line = 800:26] [debug variable = nqpqz2]
  %nqx2 = alloca [19 x i64], align 16             ; [#uses=5 type=[19 x i64]*]
  %nqz2 = alloca [19 x i64], align 16             ; [#uses=6 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqz2}, metadata !996), !dbg !997 ; [debug line = 800:60] [debug variable = nqz2]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %resultx}, i64 0, metadata !998), !dbg !999 ; [debug line = 792:13] [debug variable = resultx]
  call void @llvm.dbg.value(metadata !{[11 x i64]* %resultz}, i64 0, metadata !1000), !dbg !1001 ; [debug line = 792:28] [debug variable = resultz]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %n}, i64 0, metadata !1002), !dbg !1003 ; [debug line = 792:47] [debug variable = n]
  call void @llvm.dbg.value(metadata !{[10 x i26]* %q}, i64 0, metadata !1004), !dbg !1005 ; [debug line = 792:62] [debug variable = q]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !1006 ; [debug line = 793:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !1007 ; [debug line = 794:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqx}, metadata !1008), !dbg !1009 ; [debug line = 797:8] [debug variable = nqpqx]
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i5 [ 0, %0 ], [ %indvarinc, %meminst ] ; [#uses=3 type=i5]
  %indvarinc = add i5 %invdar, 1, !dbg !1010      ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp = zext i5 %invdar to i64, !dbg !1010       ; [#uses=1 type=i64] [debug line = 797:83]
  %nqpqx_addr = getelementptr [19 x i64]* %nqpqx, i64 0, i64 %tmp, !dbg !1010 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqpqx_addr, align 8, !dbg !1010 ; [debug line = 797:83]
  %tmp_s = icmp eq i5 %invdar, -14, !dbg !1010    ; [#uses=1 type=i1] [debug line = 797:83]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @memset_nqpqx_str) nounwind ; [#uses=0 type=i32]
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp_s, label %meminst2.preheader, label %meminst, !dbg !1010 ; [debug line = 797:83]

meminst2.preheader:                               ; preds = %meminst
  br label %meminst2, !dbg !1010                  ; [debug line = 797:83]

meminst2:                                         ; preds = %meminst2, %meminst2.preheader
  %invdar3 = phi i5 [ %indvarinc4, %meminst2 ], [ 0, %meminst2.preheader ] ; [#uses=3 type=i5]
  %indvarinc4 = add i5 %invdar3, 1, !dbg !1010    ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp_832 = zext i5 %invdar3 to i64, !dbg !1010  ; [#uses=1 type=i64] [debug line = 797:83]
  %nqpqz_addr = getelementptr [19 x i64]* %nqpqz, i64 0, i64 %tmp_832, !dbg !1010 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqpqz_addr, align 8, !dbg !1010 ; [debug line = 797:83]
  %tmp_833 = icmp eq i5 %invdar3, -14, !dbg !1010 ; [#uses=1 type=i1] [debug line = 797:83]
  %empty_51 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @memset_nqpqz_str) nounwind ; [#uses=0 type=i32]
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp_833, label %1, label %meminst2, !dbg !1010 ; [debug line = 797:83]

; <label>:1                                       ; preds = %meminst2
  %nqpqz_addr_1 = getelementptr [19 x i64]* %nqpqz, i64 0, i64 0, !dbg !1010 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 1, i64* %nqpqz_addr_1, align 16, !dbg !1010 ; [debug line = 797:83]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqx}, metadata !1011), !dbg !1012 ; [debug line = 797:42] [debug variable = nqx]
  br label %meminst5

meminst5:                                         ; preds = %meminst5, %1
  %invdar6 = phi i5 [ 0, %1 ], [ %indvarinc7, %meminst5 ] ; [#uses=3 type=i5]
  %indvarinc7 = add i5 %invdar6, 1, !dbg !1010    ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp_834 = zext i5 %invdar6 to i64, !dbg !1010  ; [#uses=1 type=i64] [debug line = 797:83]
  %nqx_addr = getelementptr [19 x i64]* %nqx, i64 0, i64 %tmp_834, !dbg !1010 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqx_addr, align 8, !dbg !1010 ; [debug line = 797:83]
  %tmp_835 = icmp eq i5 %invdar6, -14, !dbg !1010 ; [#uses=1 type=i1] [debug line = 797:83]
  %empty_53 = call i32 (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memset_nqx_str) nounwind ; [#uses=0 type=i32]
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp_835, label %2, label %meminst5, !dbg !1010 ; [debug line = 797:83]

; <label>:2                                       ; preds = %meminst5
  %nqx_addr_1 = getelementptr [19 x i64]* %nqx, i64 0, i64 0, !dbg !1010 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 1, i64* %nqx_addr_1, align 16, !dbg !1010 ; [debug line = 797:83]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqz}, metadata !1013), !dbg !1014 ; [debug line = 797:57] [debug variable = nqz]
  br label %meminst8

meminst8:                                         ; preds = %meminst8, %2
  %invdar9 = phi i5 [ 0, %2 ], [ %indvarinc1, %meminst8 ] ; [#uses=3 type=i5]
  %indvarinc1 = add i5 %invdar9, 1, !dbg !1010    ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp_836 = zext i5 %invdar9 to i64, !dbg !1010  ; [#uses=1 type=i64] [debug line = 797:83]
  %nqz_addr = getelementptr [19 x i64]* %nqz, i64 0, i64 %tmp_836, !dbg !1010 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqz_addr, align 8, !dbg !1010 ; [debug line = 797:83]
  %tmp_837 = icmp eq i5 %invdar9, -14, !dbg !1010 ; [#uses=1 type=i1] [debug line = 797:83]
  %empty_55 = call i32 (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memset_nqz_str) nounwind ; [#uses=0 type=i32]
  %empty_56 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp_837, label %meminst11.preheader, label %meminst8, !dbg !1010 ; [debug line = 797:83]

meminst11.preheader:                              ; preds = %meminst8
  br label %meminst11, !dbg !1010                 ; [debug line = 797:83]

meminst11:                                        ; preds = %meminst11, %meminst11.preheader
  %invdar1 = phi i5 [ %indvarinc2, %meminst11 ], [ 0, %meminst11.preheader ] ; [#uses=3 type=i5]
  %indvarinc2 = add i5 %invdar1, 1, !dbg !1010    ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp_838 = zext i5 %invdar1 to i64, !dbg !1010  ; [#uses=1 type=i64] [debug line = 797:83]
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_838, !dbg !1010 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %t_addr, align 8, !dbg !1010  ; [debug line = 797:83]
  %tmp_839 = icmp eq i5 %invdar1, -14, !dbg !1010 ; [#uses=1 type=i1] [debug line = 797:83]
  %empty_57 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_t_str) nounwind ; [#uses=0 type=i32]
  %empty_58 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp_839, label %meminst14.preheader, label %meminst11, !dbg !1010 ; [debug line = 797:83]

meminst14.preheader:                              ; preds = %meminst11
  br label %meminst14, !dbg !1015                 ; [debug line = 800:74]

meminst14:                                        ; preds = %meminst14, %meminst14.preheader
  %invdar2 = phi i5 [ %indvarinc3, %meminst14 ], [ 0, %meminst14.preheader ] ; [#uses=3 type=i5]
  %indvarinc3 = add i5 %invdar2, 1, !dbg !1015    ; [#uses=1 type=i5] [debug line = 800:74]
  %tmp_840 = zext i5 %invdar2 to i64, !dbg !1015  ; [#uses=1 type=i64] [debug line = 800:74]
  %nqpqx2_addr = getelementptr [19 x i64]* %nqpqx2, i64 0, i64 %tmp_840, !dbg !1015 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqpqx2_addr, align 8, !dbg !1015 ; [debug line = 800:74]
  %tmp_841 = icmp eq i5 %invdar2, -14, !dbg !1015 ; [#uses=1 type=i1] [debug line = 800:74]
  %empty_59 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_nqpqx2_str) nounwind ; [#uses=0 type=i32]
  %empty_60 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp_841, label %meminst17.preheader, label %meminst14, !dbg !1015 ; [debug line = 800:74]

meminst17.preheader:                              ; preds = %meminst14
  br label %meminst17, !dbg !1015                 ; [debug line = 800:74]

meminst17:                                        ; preds = %meminst17, %meminst17.preheader
  %invdar4 = phi i5 [ %indvarinc5, %meminst17 ], [ 0, %meminst17.preheader ] ; [#uses=3 type=i5]
  %indvarinc5 = add i5 %invdar4, 1, !dbg !1015    ; [#uses=1 type=i5] [debug line = 800:74]
  %tmp_842 = zext i5 %invdar4 to i64, !dbg !1015  ; [#uses=1 type=i64] [debug line = 800:74]
  %nqpqz2_addr = getelementptr [19 x i64]* %nqpqz2, i64 0, i64 %tmp_842, !dbg !1015 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqpqz2_addr, align 8, !dbg !1015 ; [debug line = 800:74]
  %tmp_843 = icmp eq i5 %invdar4, -14, !dbg !1015 ; [#uses=1 type=i1] [debug line = 800:74]
  %empty_61 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_nqpqz2_str) nounwind ; [#uses=0 type=i32]
  %empty_62 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp_843, label %3, label %meminst17, !dbg !1015 ; [debug line = 800:74]

; <label>:3                                       ; preds = %meminst17
  %nqpqz2_addr_1 = getelementptr [19 x i64]* %nqpqz2, i64 0, i64 0, !dbg !1015 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 1, i64* %nqpqz2_addr_1, align 16, !dbg !1015 ; [debug line = 800:74]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqx2}, metadata !1016), !dbg !1017 ; [debug line = 800:44] [debug variable = nqx2]
  br label %meminst20

meminst20:                                        ; preds = %meminst20, %3
  %invdar5 = phi i5 [ 0, %3 ], [ %indvarinc6, %meminst20 ] ; [#uses=3 type=i5]
  %indvarinc6 = add i5 %invdar5, 1, !dbg !1015    ; [#uses=1 type=i5] [debug line = 800:74]
  %tmp_844 = zext i5 %invdar5 to i64, !dbg !1015  ; [#uses=1 type=i64] [debug line = 800:74]
  %nqx2_addr = getelementptr [19 x i64]* %nqx2, i64 0, i64 %tmp_844, !dbg !1015 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqx2_addr, align 8, !dbg !1015 ; [debug line = 800:74]
  %tmp_845 = icmp eq i5 %invdar5, -14, !dbg !1015 ; [#uses=1 type=i1] [debug line = 800:74]
  %empty_63 = call i32 (...)* @_ssdm_op_SpecLoopName([12 x i8]* @memset_nqx2_str) nounwind ; [#uses=0 type=i32]
  %empty_64 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp_845, label %meminst23.preheader, label %meminst20, !dbg !1015 ; [debug line = 800:74]

meminst23.preheader:                              ; preds = %meminst20
  br label %meminst23, !dbg !1015                 ; [debug line = 800:74]

meminst23:                                        ; preds = %meminst23, %meminst23.preheader
  %invdar7 = phi i5 [ %indvarinc8, %meminst23 ], [ 0, %meminst23.preheader ] ; [#uses=3 type=i5]
  %indvarinc8 = add i5 %invdar7, 1, !dbg !1015    ; [#uses=1 type=i5] [debug line = 800:74]
  %tmp_846 = zext i5 %invdar7 to i64, !dbg !1015  ; [#uses=1 type=i64] [debug line = 800:74]
  %nqz2_addr = getelementptr [19 x i64]* %nqz2, i64 0, i64 %tmp_846, !dbg !1015 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqz2_addr, align 8, !dbg !1015 ; [debug line = 800:74]
  %tmp_847 = icmp eq i5 %invdar7, -14, !dbg !1015 ; [#uses=1 type=i1] [debug line = 800:74]
  %empty_65 = call i32 (...)* @_ssdm_op_SpecLoopName([12 x i8]* @memset_nqz2_str) nounwind ; [#uses=0 type=i32]
  %empty_66 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp_847, label %4, label %meminst23, !dbg !1015 ; [debug line = 800:74]

; <label>:4                                       ; preds = %meminst23
  %nqz2_addr_1 = getelementptr [19 x i64]* %nqz2, i64 0, i64 0, !dbg !1015 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 1, i64* %nqz2_addr_1, align 16, !dbg !1015 ; [debug line = 800:74]
  br label %5, !dbg !1018                         ; [debug line = 61:6@804:3]

; <label>:5                                       ; preds = %6, %4
  %i_i = phi i4 [ 0, %4 ], [ %i_21, %6 ]          ; [#uses=3 type=i4]
  %exitcond_i = icmp eq i4 %i_i, -6, !dbg !1018   ; [#uses=1 type=i1] [debug line = 61:6@804:3]
  %empty_67 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_21 = add i4 %i_i, 1, !dbg !1020              ; [#uses=1 type=i4] [debug line = 61:18@804:3]
  br i1 %exitcond_i, label %_memcpy.3.exit.preheader, label %6, !dbg !1018 ; [debug line = 61:6@804:3]

_memcpy.3.exit.preheader:                         ; preds = %5
  br label %_memcpy.3.exit, !dbg !1021            ; [debug line = 806:8]

; <label>:6                                       ; preds = %5
  %tmp_i = zext i4 %i_i to i64, !dbg !1023        ; [#uses=2 type=i64] [debug line = 62:3@804:3]
  %q_addr = getelementptr [10 x i26]* %q, i64 0, i64 %tmp_i, !dbg !1023 ; [#uses=1 type=i26*] [debug line = 62:3@804:3]
  %q_load = load i26* %q_addr, align 4            ; [#uses=1 type=i26]
  %extLd = zext i26 %q_load to i64                ; [#uses=1 type=i64]
  %nqpqx_addr_1 = getelementptr [19 x i64]* %nqpqx, i64 0, i64 %tmp_i, !dbg !1023 ; [#uses=1 type=i64*] [debug line = 62:3@804:3]
  store i64 %extLd, i64* %nqpqx_addr_1, align 8, !dbg !1023 ; [debug line = 62:3@804:3]
  call void @llvm.dbg.value(metadata !{i4 %i_21}, i64 0, metadata !1024), !dbg !1020 ; [debug line = 61:18@804:3] [debug variable = i]
  br label %5, !dbg !1020                         ; [debug line = 61:18@804:3]

_memcpy.3.exit.loopexit:                          ; preds = %8
  br label %_memcpy.3.exit

_memcpy.3.exit:                                   ; preds = %_memcpy.3.exit.loopexit, %_memcpy.3.exit.preheader
  %i = phi i6 [ %i_23, %_memcpy.3.exit.loopexit ], [ 0, %_memcpy.3.exit.preheader ] ; [#uses=3 type=i6]
  %tmp_848 = icmp eq i6 %i, -32, !dbg !1021       ; [#uses=1 type=i1] [debug line = 806:8]
  %empty_68 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) ; [#uses=0 type=i32]
  %i_23 = add i6 %i, 1, !dbg !1025                ; [#uses=1 type=i6] [debug line = 806:23]
  call void @llvm.dbg.value(metadata !{i6 %i_23}, i64 0, metadata !1026), !dbg !1025 ; [debug line = 806:23] [debug variable = i]
  br i1 %tmp_848, label %.preheader.preheader, label %7, !dbg !1021 ; [debug line = 806:8]

.preheader.preheader:                             ; preds = %_memcpy.3.exit
  br label %.preheader, !dbg !1027                ; [debug line = 61:6@877:3]

; <label>:7                                       ; preds = %_memcpy.3.exit
  %tmp_849 = sub i6 31, %i, !dbg !1028            ; [#uses=1 type=i6] [debug line = 807:24]
  %tmp_850 = zext i6 %tmp_849 to i64, !dbg !1028  ; [#uses=1 type=i64] [debug line = 807:24]
  %n_addr = getelementptr [32 x i8]* %n, i64 0, i64 %tmp_850, !dbg !1028 ; [#uses=1 type=i8*] [debug line = 807:24]
  %byte = load i8* %n_addr, align 1, !dbg !1028   ; [#uses=1 type=i8] [debug line = 807:24]
  call void @llvm.dbg.value(metadata !{i8 %byte}, i64 0, metadata !1030), !dbg !1028 ; [debug line = 807:24] [debug variable = byte]
  br label %8, !dbg !1031                         ; [debug line = 808:10]

; <label>:8                                       ; preds = %9, %7
  %j = phi i4 [ 0, %7 ], [ %j_4, %9 ]             ; [#uses=2 type=i4]
  %byte1 = phi i8 [ %byte, %7 ], [ %byte_1, %9 ]  ; [#uses=2 type=i8]
  %tmp_851 = icmp eq i4 %j, -8, !dbg !1031        ; [#uses=1 type=i1] [debug line = 808:10]
  %empty_69 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_4 = add i4 %j, 1, !dbg !1033                 ; [#uses=1 type=i4] [debug line = 808:24]
  br i1 %tmp_851, label %_memcpy.3.exit.loopexit, label %9, !dbg !1031 ; [debug line = 808:10]

; <label>:9                                       ; preds = %8
  %tmp_926 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %byte1, i32 7), !dbg !1034 ; [#uses=4 type=i1] [debug line = 811:7]
  call fastcc void @swap_conditional([19 x i64]* %nqx, [19 x i64]* %nqpqx, i1 %tmp_926), !dbg !1034 ; [debug line = 811:7]
  call fastcc void @swap_conditional([19 x i64]* %nqz, [19 x i64]* %nqpqz, i1 %tmp_926), !dbg !1036 ; [debug line = 812:7]
  call fastcc void @fmonty([19 x i64]* %nqx2, [19 x i64]* %nqz2, [19 x i64]* %nqpqx2, [19 x i64]* %nqpqz2, [19 x i64]* %nqx, [19 x i64]* %nqz, [19 x i64]* %nqpqx, [19 x i64]* %nqpqz, [10 x i26]* %q), !dbg !1037 ; [debug line = 813:7]
  call fastcc void @swap_conditional([19 x i64]* %nqx2, [19 x i64]* %nqpqx2, i1 %tmp_926), !dbg !1038 ; [debug line = 818:7]
  call fastcc void @swap_conditional([19 x i64]* %nqz2, [19 x i64]* %nqpqz2, i1 %tmp_926), !dbg !1039 ; [debug line = 819:7]
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqx), !dbg !1040 ; [debug line = 822:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqx, [19 x i64]* %nqx2), !dbg !1041 ; [debug line = 833:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqx2, [19 x i64]* %t), !dbg !1042 ; [debug line = 836:7]
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqz), !dbg !1043 ; [debug line = 839:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqz, [19 x i64]* %nqz2), !dbg !1044 ; [debug line = 842:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqz2, [19 x i64]* %t), !dbg !1045 ; [debug line = 845:7]
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqpqx), !dbg !1046 ; [debug line = 848:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqpqx, [19 x i64]* %nqpqx2), !dbg !1047 ; [debug line = 851:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqpqx2, [19 x i64]* %t), !dbg !1048 ; [debug line = 854:7]
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqpqz), !dbg !1049 ; [debug line = 857:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqpqz, [19 x i64]* %nqpqz2), !dbg !1050 ; [debug line = 860:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqpqz2, [19 x i64]* %t), !dbg !1051 ; [debug line = 863:7]
  %byte_1 = shl i8 %byte1, 1, !dbg !1052          ; [#uses=1 type=i8] [debug line = 873:7]
  call void @llvm.dbg.value(metadata !{i8 %byte_1}, i64 0, metadata !1030), !dbg !1052 ; [debug line = 873:7] [debug variable = byte]
  call void @llvm.dbg.value(metadata !{i4 %j_4}, i64 0, metadata !1053), !dbg !1033 ; [debug line = 808:24] [debug variable = j]
  br label %8, !dbg !1033                         ; [debug line = 808:24]

.preheader:                                       ; preds = %10, %.preheader.preheader
  %i_i5 = phi i4 [ %i_25, %10 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %exitcond_i6 = icmp eq i4 %i_i5, -6, !dbg !1027 ; [#uses=1 type=i1] [debug line = 61:6@877:3]
  %empty_70 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_25 = add i4 %i_i5, 1, !dbg !1054             ; [#uses=1 type=i4] [debug line = 61:18@877:3]
  br i1 %exitcond_i6, label %_memcpy.exit.preheader, label %10, !dbg !1027 ; [debug line = 61:6@877:3]

_memcpy.exit.preheader:                           ; preds = %.preheader
  br label %_memcpy.exit, !dbg !1055              ; [debug line = 61:6@878:3]

; <label>:10                                      ; preds = %.preheader
  %tmp_i7 = zext i4 %i_i5 to i64, !dbg !1057      ; [#uses=2 type=i64] [debug line = 62:3@877:3]
  %nqx_addr_2 = getelementptr [19 x i64]* %nqx, i64 0, i64 %tmp_i7, !dbg !1057 ; [#uses=1 type=i64*] [debug line = 62:3@877:3]
  %nqx_load = load i64* %nqx_addr_2, align 8, !dbg !1057 ; [#uses=1 type=i64] [debug line = 62:3@877:3]
  %resultx_addr = getelementptr [10 x i64]* %resultx, i64 0, i64 %tmp_i7, !dbg !1057 ; [#uses=1 type=i64*] [debug line = 62:3@877:3]
  store i64 %nqx_load, i64* %resultx_addr, align 8, !dbg !1057 ; [debug line = 62:3@877:3]
  call void @llvm.dbg.value(metadata !{i4 %i_25}, i64 0, metadata !1058), !dbg !1054 ; [debug line = 61:18@877:3] [debug variable = i]
  br label %.preheader, !dbg !1054                ; [debug line = 61:18@877:3]

_memcpy.exit:                                     ; preds = %11, %_memcpy.exit.preheader
  %i_i4 = phi i4 [ %i_26, %11 ], [ 0, %_memcpy.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond_i3 = icmp eq i4 %i_i4, -6, !dbg !1055 ; [#uses=1 type=i1] [debug line = 61:6@878:3]
  %empty_71 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_26 = add i4 %i_i4, 1, !dbg !1059             ; [#uses=1 type=i4] [debug line = 61:18@878:3]
  br i1 %exitcond_i3, label %_memcpy.2.exit, label %11, !dbg !1055 ; [debug line = 61:6@878:3]

; <label>:11                                      ; preds = %_memcpy.exit
  %tmp_i6 = zext i4 %i_i4 to i64, !dbg !1060      ; [#uses=2 type=i64] [debug line = 62:3@878:3]
  %nqz_addr_1 = getelementptr [19 x i64]* %nqz, i64 0, i64 %tmp_i6, !dbg !1060 ; [#uses=1 type=i64*] [debug line = 62:3@878:3]
  %nqz_load = load i64* %nqz_addr_1, align 8, !dbg !1060 ; [#uses=1 type=i64] [debug line = 62:3@878:3]
  %resultz_addr = getelementptr [11 x i64]* %resultz, i64 0, i64 %tmp_i6, !dbg !1060 ; [#uses=1 type=i64*] [debug line = 62:3@878:3]
  store i64 %nqz_load, i64* %resultz_addr, align 8, !dbg !1060 ; [debug line = 62:3@878:3]
  call void @llvm.dbg.value(metadata !{i4 %i_26}, i64 0, metadata !1061), !dbg !1059 ; [debug line = 61:18@878:3] [debug variable = i]
  br label %_memcpy.exit, !dbg !1059              ; [debug line = 61:18@878:3]

_memcpy.2.exit:                                   ; preds = %_memcpy.exit
  ret void, !dbg !1062                            ; [debug line = 879:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=31]
define weak void @_ssdm_op_SpecResourceLimit(...) nounwind {
entry:
  ret void
}

; [#uses=13]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=53]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=10]
define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

; [#uses=7]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=30]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_72 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_72
}

; [#uses=1]
define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2) ; [#uses=1 type=i8]
  %empty_73 = trunc i8 %empty to i7               ; [#uses=1 type=i7]
  ret i7 %empty_73
}

; [#uses=4]
define weak i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_74 = trunc i32 %empty to i7              ; [#uses=1 type=i7]
  ret i7 %empty_74
}

; [#uses=0]
declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i62 @_ssdm_op_PartSelect.i62.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i60 @_ssdm_op_PartSelect.i60.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=1]
define weak i6 @_ssdm_op_PartSelect.i6.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2) ; [#uses=1 type=i8]
  %empty_75 = trunc i8 %empty to i6               ; [#uses=1 type=i6]
  ret i6 %empty_75
}

; [#uses=3]
define weak i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_76 = trunc i32 %empty to i6              ; [#uses=1 type=i6]
  ret i6 %empty_76
}

; [#uses=3]
define weak i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2) ; [#uses=1 type=i8]
  %empty_77 = trunc i8 %empty to i5               ; [#uses=1 type=i5]
  ret i5 %empty_77
}

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2) ; [#uses=1 type=i8]
  %empty_78 = trunc i8 %empty to i4               ; [#uses=1 type=i4]
  ret i4 %empty_78
}

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=7]
define weak i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_79 = trunc i64 %empty to i39             ; [#uses=1 type=i39]
  ret i39 %empty_79
}

; [#uses=14]
define weak i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_80 = trunc i64 %empty to i38             ; [#uses=1 type=i38]
  ret i38 %empty_80
}

; [#uses=0]
declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2) ; [#uses=1 type=i8]
  %empty_81 = trunc i8 %empty to i3               ; [#uses=1 type=i3]
  ret i3 %empty_81
}

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_82 = trunc i32 %empty to i21             ; [#uses=1 type=i21]
  ret i21 %empty_82
}

; [#uses=2]
define weak i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2) ; [#uses=1 type=i8]
  %empty_83 = trunc i8 %empty to i2               ; [#uses=1 type=i2]
  ret i2 %empty_83
}

; [#uses=1]
define weak i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_84 = trunc i32 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_84
}

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_85 = shl i8 1, %empty                    ; [#uses=1 type=i8]
  %empty_86 = and i8 %0, %empty_85                ; [#uses=1 type=i8]
  %empty_87 = icmp ne i8 %empty_86, 0             ; [#uses=1 type=i1]
  ret i1 %empty_87
}

; [#uses=21]
define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64                     ; [#uses=1 type=i64]
  %empty_88 = shl i64 1, %empty                   ; [#uses=1 type=i64]
  %empty_89 = and i64 %0, %empty_88               ; [#uses=1 type=i64]
  %empty_90 = icmp ne i64 %empty_89, 0            ; [#uses=1 type=i1]
  ret i1 %empty_90
}

; [#uses=6]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_91 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_92 = icmp ne i32 %empty_91, 0            ; [#uses=1 type=i1]
  ret i1 %empty_92
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8                       ; [#uses=1 type=i8]
  %empty_93 = zext i1 %1 to i8                    ; [#uses=1 type=i8]
  %empty_94 = shl i8 %empty, 1                    ; [#uses=1 type=i8]
  %empty_95 = or i8 %empty_94, %empty_93          ; [#uses=1 type=i8]
  ret i8 %empty_95
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8                       ; [#uses=1 type=i8]
  %empty_96 = zext i2 %1 to i8                    ; [#uses=1 type=i8]
  %empty_97 = shl i8 %empty, 2                    ; [#uses=1 type=i8]
  %empty_98 = or i8 %empty_97, %empty_96          ; [#uses=1 type=i8]
  ret i8 %empty_98
}

; [#uses=3]
define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8                       ; [#uses=1 type=i8]
  %empty_99 = zext i3 %1 to i8                    ; [#uses=1 type=i8]
  %empty_100 = shl i8 %empty, 3                   ; [#uses=1 type=i8]
  %empty_101 = or i8 %empty_100, %empty_99        ; [#uses=1 type=i8]
  ret i8 %empty_101
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8                       ; [#uses=1 type=i8]
  %empty_102 = zext i4 %1 to i8                   ; [#uses=1 type=i8]
  %empty_103 = shl i8 %empty, 4                   ; [#uses=1 type=i8]
  %empty_104 = or i8 %empty_103, %empty_102       ; [#uses=1 type=i8]
  ret i8 %empty_104
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %0 to i8                       ; [#uses=1 type=i8]
  %empty_105 = zext i5 %1 to i8                   ; [#uses=1 type=i8]
  %empty_106 = shl i8 %empty, 5                   ; [#uses=1 type=i8]
  %empty_107 = or i8 %empty_106, %empty_105       ; [#uses=1 type=i8]
  ret i8 %empty_107
}

; [#uses=2]
define weak i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2, i6) nounwind readnone {
entry:
  %empty = zext i2 %0 to i8                       ; [#uses=1 type=i8]
  %empty_108 = zext i6 %1 to i8                   ; [#uses=1 type=i8]
  %empty_109 = shl i8 %empty, 6                   ; [#uses=1 type=i8]
  %empty_110 = or i8 %empty_109, %empty_108       ; [#uses=1 type=i8]
  ret i8 %empty_110
}

; [#uses=1]
define weak i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1, i6) nounwind readnone {
entry:
  %empty = zext i1 %0 to i7                       ; [#uses=1 type=i7]
  %empty_111 = zext i6 %1 to i7                   ; [#uses=1 type=i7]
  %empty_112 = shl i7 %empty, 6                   ; [#uses=1 type=i7]
  %empty_113 = or i7 %empty_112, %empty_111       ; [#uses=1 type=i7]
  ret i7 %empty_113
}

; [#uses=53]
define weak i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63, i1) nounwind readnone {
entry:
  %empty = zext i63 %0 to i64                     ; [#uses=1 type=i64]
  %empty_114 = zext i1 %1 to i64                  ; [#uses=1 type=i64]
  %empty_115 = shl i64 %empty, 1                  ; [#uses=1 type=i64]
  %empty_116 = or i64 %empty_115, %empty_114      ; [#uses=1 type=i64]
  ret i64 %empty_116
}

; [#uses=6]
define weak i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62, i2) nounwind readnone {
entry:
  %empty = zext i62 %0 to i64                     ; [#uses=1 type=i64]
  %empty_117 = zext i2 %1 to i64                  ; [#uses=1 type=i64]
  %empty_118 = shl i64 %empty, 2                  ; [#uses=1 type=i64]
  %empty_119 = or i64 %empty_118, %empty_117      ; [#uses=1 type=i64]
  ret i64 %empty_119
}

; [#uses=0]
declare i64 @_ssdm_op_BitConcatenate.i64.i60.i4(i60, i4) nounwind readnone

; [#uses=7]
define weak i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39, i25) nounwind readnone {
entry:
  %empty = zext i39 %0 to i64                     ; [#uses=1 type=i64]
  %empty_120 = zext i25 %1 to i64                 ; [#uses=1 type=i64]
  %empty_121 = shl i64 %empty, 25                 ; [#uses=1 type=i64]
  %empty_122 = or i64 %empty_121, %empty_120      ; [#uses=1 type=i64]
  ret i64 %empty_122
}

; [#uses=14]
define weak i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38, i26) nounwind readnone {
entry:
  %empty = zext i38 %0 to i64                     ; [#uses=1 type=i64]
  %empty_123 = zext i26 %1 to i64                 ; [#uses=1 type=i64]
  %empty_124 = shl i64 %empty, 26                 ; [#uses=1 type=i64]
  %empty_125 = or i64 %empty_124, %empty_123      ; [#uses=1 type=i64]
  ret i64 %empty_125
}

; [#uses=12]
define weak i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62, i1) nounwind readnone {
entry:
  %empty = zext i62 %0 to i63                     ; [#uses=1 type=i63]
  %empty_126 = zext i1 %1 to i63                  ; [#uses=1 type=i63]
  %empty_127 = shl i63 %empty, 1                  ; [#uses=1 type=i63]
  %empty_128 = or i63 %empty_127, %empty_126      ; [#uses=1 type=i63]
  ret i63 %empty_128
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7, i25) nounwind readnone {
entry:
  %empty = zext i7 %0 to i32                      ; [#uses=1 type=i32]
  %empty_129 = zext i25 %1 to i32                 ; [#uses=1 type=i32]
  %empty_130 = shl i32 %empty, 25                 ; [#uses=1 type=i32]
  %empty_131 = or i32 %empty_130, %empty_129      ; [#uses=1 type=i32]
  ret i32 %empty_131
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6, i26) nounwind readnone {
entry:
  %empty = zext i6 %0 to i32                      ; [#uses=1 type=i32]
  %empty_132 = zext i26 %1 to i32                 ; [#uses=1 type=i32]
  %empty_133 = shl i32 %empty, 26                 ; [#uses=1 type=i32]
  %empty_134 = or i32 %empty_133, %empty_132      ; [#uses=1 type=i32]
  ret i32 %empty_134
}

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i27.i5(i27, i5) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i26.i6(i26, i6) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone

; [#uses=1]
define weak i26 @_ssdm_op_BitConcatenate.i26.i8.i8.i8.i2(i8, i8, i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %2 to i10                      ; [#uses=1 type=i10]
  %empty_135 = zext i2 %3 to i10                  ; [#uses=1 type=i10]
  %empty_136 = shl i10 %empty, 2                  ; [#uses=1 type=i10]
  %empty_137 = or i10 %empty_136, %empty_135      ; [#uses=1 type=i10]
  %empty_138 = zext i8 %1 to i18                  ; [#uses=1 type=i18]
  %empty_139 = zext i10 %empty_137 to i18         ; [#uses=1 type=i18]
  %empty_140 = shl i18 %empty_138, 10             ; [#uses=1 type=i18]
  %empty_141 = or i18 %empty_140, %empty_139      ; [#uses=1 type=i18]
  %empty_142 = zext i8 %0 to i26                  ; [#uses=1 type=i26]
  %empty_143 = zext i18 %empty_141 to i26         ; [#uses=1 type=i26]
  %empty_144 = shl i26 %empty_142, 18             ; [#uses=1 type=i26]
  %empty_145 = or i26 %empty_144, %empty_143      ; [#uses=1 type=i26]
  ret i26 %empty_145
}

; [#uses=1]
define weak i26 @_ssdm_op_BitConcatenate.i26.i6.i8.i8.i4(i6, i8, i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %2 to i12                      ; [#uses=1 type=i12]
  %empty_146 = zext i4 %3 to i12                  ; [#uses=1 type=i12]
  %empty_147 = shl i12 %empty, 4                  ; [#uses=1 type=i12]
  %empty_148 = or i12 %empty_147, %empty_146      ; [#uses=1 type=i12]
  %empty_149 = zext i8 %1 to i20                  ; [#uses=1 type=i20]
  %empty_150 = zext i12 %empty_148 to i20         ; [#uses=1 type=i20]
  %empty_151 = shl i20 %empty_149, 12             ; [#uses=1 type=i20]
  %empty_152 = or i20 %empty_151, %empty_150      ; [#uses=1 type=i20]
  %empty_153 = zext i6 %0 to i26                  ; [#uses=1 type=i26]
  %empty_154 = zext i20 %empty_152 to i26         ; [#uses=1 type=i26]
  %empty_155 = shl i26 %empty_153, 20             ; [#uses=1 type=i26]
  %empty_156 = or i26 %empty_155, %empty_154      ; [#uses=1 type=i26]
  ret i26 %empty_156
}

; [#uses=1]
define weak i26 @_ssdm_op_BitConcatenate.i26.i5.i8.i8.i5(i5, i8, i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %2 to i13                      ; [#uses=1 type=i13]
  %empty_157 = zext i5 %3 to i13                  ; [#uses=1 type=i13]
  %empty_158 = shl i13 %empty, 5                  ; [#uses=1 type=i13]
  %empty_159 = or i13 %empty_158, %empty_157      ; [#uses=1 type=i13]
  %empty_160 = zext i8 %1 to i21                  ; [#uses=1 type=i21]
  %empty_161 = zext i13 %empty_159 to i21         ; [#uses=1 type=i21]
  %empty_162 = shl i21 %empty_160, 13             ; [#uses=1 type=i21]
  %empty_163 = or i21 %empty_162, %empty_161      ; [#uses=1 type=i21]
  %empty_164 = zext i5 %0 to i26                  ; [#uses=1 type=i26]
  %empty_165 = zext i21 %empty_163 to i26         ; [#uses=1 type=i26]
  %empty_166 = shl i26 %empty_164, 21             ; [#uses=1 type=i26]
  %empty_167 = or i26 %empty_166, %empty_165      ; [#uses=1 type=i26]
  ret i26 %empty_167
}

; [#uses=1]
define weak i26 @_ssdm_op_BitConcatenate.i26.i3.i8.i8.i7(i3, i8, i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %2 to i15                      ; [#uses=1 type=i15]
  %empty_168 = zext i7 %3 to i15                  ; [#uses=1 type=i15]
  %empty_169 = shl i15 %empty, 7                  ; [#uses=1 type=i15]
  %empty_170 = or i15 %empty_169, %empty_168      ; [#uses=1 type=i15]
  %empty_171 = zext i8 %1 to i23                  ; [#uses=1 type=i23]
  %empty_172 = zext i15 %empty_170 to i23         ; [#uses=1 type=i23]
  %empty_173 = shl i23 %empty_171, 15             ; [#uses=1 type=i23]
  %empty_174 = or i23 %empty_173, %empty_172      ; [#uses=1 type=i23]
  %empty_175 = zext i3 %0 to i26                  ; [#uses=1 type=i26]
  %empty_176 = zext i23 %empty_174 to i26         ; [#uses=1 type=i26]
  %empty_177 = shl i26 %empty_175, 23             ; [#uses=1 type=i26]
  %empty_178 = or i26 %empty_177, %empty_176      ; [#uses=1 type=i26]
  ret i26 %empty_178
}

; [#uses=1]
define weak i26 @_ssdm_op_BitConcatenate.i26.i21.i1.i2.i1.i1(i21, i1, i2, i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %3 to i2                       ; [#uses=1 type=i2]
  %empty_179 = zext i1 %4 to i2                   ; [#uses=1 type=i2]
  %empty_180 = shl i2 %empty, 1                   ; [#uses=1 type=i2]
  %empty_181 = or i2 %empty_180, %empty_179       ; [#uses=1 type=i2]
  %empty_182 = zext i2 %2 to i4                   ; [#uses=1 type=i4]
  %empty_183 = zext i2 %empty_181 to i4           ; [#uses=1 type=i4]
  %empty_184 = shl i4 %empty_182, 2               ; [#uses=1 type=i4]
  %empty_185 = or i4 %empty_184, %empty_183       ; [#uses=1 type=i4]
  %empty_186 = zext i1 %1 to i5                   ; [#uses=1 type=i5]
  %empty_187 = zext i4 %empty_185 to i5           ; [#uses=1 type=i5]
  %empty_188 = shl i5 %empty_186, 4               ; [#uses=1 type=i5]
  %empty_189 = or i5 %empty_188, %empty_187       ; [#uses=1 type=i5]
  %empty_190 = zext i21 %0 to i26                 ; [#uses=1 type=i26]
  %empty_191 = zext i5 %empty_189 to i26          ; [#uses=1 type=i26]
  %empty_192 = shl i26 %empty_190, 5              ; [#uses=1 type=i26]
  %empty_193 = or i26 %empty_192, %empty_191      ; [#uses=1 type=i26]
  ret i26 %empty_193
}

; [#uses=1]
define weak i26 @_ssdm_op_BitConcatenate.i26.i2.i8.i8.i8(i2, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; [#uses=1 type=i16]
  %empty_194 = zext i8 %3 to i16                  ; [#uses=1 type=i16]
  %empty_195 = shl i16 %empty, 8                  ; [#uses=1 type=i16]
  %empty_196 = or i16 %empty_195, %empty_194      ; [#uses=1 type=i16]
  %empty_197 = zext i8 %1 to i24                  ; [#uses=1 type=i24]
  %empty_198 = zext i16 %empty_196 to i24         ; [#uses=1 type=i24]
  %empty_199 = shl i24 %empty_197, 16             ; [#uses=1 type=i24]
  %empty_200 = or i24 %empty_199, %empty_198      ; [#uses=1 type=i24]
  %empty_201 = zext i2 %0 to i26                  ; [#uses=1 type=i26]
  %empty_202 = zext i24 %empty_200 to i26         ; [#uses=1 type=i26]
  %empty_203 = shl i26 %empty_201, 24             ; [#uses=1 type=i26]
  %empty_204 = or i26 %empty_203, %empty_202      ; [#uses=1 type=i26]
  ret i26 %empty_204
}

; [#uses=1]
define weak i25 @_ssdm_op_BitConcatenate.i25.i7.i8.i8.i2(i7, i8, i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %2 to i10                      ; [#uses=1 type=i10]
  %empty_205 = zext i2 %3 to i10                  ; [#uses=1 type=i10]
  %empty_206 = shl i10 %empty, 2                  ; [#uses=1 type=i10]
  %empty_207 = or i10 %empty_206, %empty_205      ; [#uses=1 type=i10]
  %empty_208 = zext i8 %1 to i18                  ; [#uses=1 type=i18]
  %empty_209 = zext i10 %empty_207 to i18         ; [#uses=1 type=i18]
  %empty_210 = shl i18 %empty_208, 10             ; [#uses=1 type=i18]
  %empty_211 = or i18 %empty_210, %empty_209      ; [#uses=1 type=i18]
  %empty_212 = zext i7 %0 to i25                  ; [#uses=1 type=i25]
  %empty_213 = zext i18 %empty_211 to i25         ; [#uses=1 type=i25]
  %empty_214 = shl i25 %empty_212, 18             ; [#uses=1 type=i25]
  %empty_215 = or i25 %empty_214, %empty_213      ; [#uses=1 type=i25]
  ret i25 %empty_215
}

; [#uses=1]
define weak i25 @_ssdm_op_BitConcatenate.i25.i6.i8.i8.i3(i6, i8, i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %2 to i11                      ; [#uses=1 type=i11]
  %empty_216 = zext i3 %3 to i11                  ; [#uses=1 type=i11]
  %empty_217 = shl i11 %empty, 3                  ; [#uses=1 type=i11]
  %empty_218 = or i11 %empty_217, %empty_216      ; [#uses=1 type=i11]
  %empty_219 = zext i8 %1 to i19                  ; [#uses=1 type=i19]
  %empty_220 = zext i11 %empty_218 to i19         ; [#uses=1 type=i19]
  %empty_221 = shl i19 %empty_219, 11             ; [#uses=1 type=i19]
  %empty_222 = or i19 %empty_221, %empty_220      ; [#uses=1 type=i19]
  %empty_223 = zext i6 %0 to i25                  ; [#uses=1 type=i25]
  %empty_224 = zext i19 %empty_222 to i25         ; [#uses=1 type=i25]
  %empty_225 = shl i25 %empty_223, 19             ; [#uses=1 type=i25]
  %empty_226 = or i25 %empty_225, %empty_224      ; [#uses=1 type=i25]
  ret i25 %empty_226
}

; [#uses=1]
define weak i25 @_ssdm_op_BitConcatenate.i25.i4.i8.i8.i5(i4, i8, i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %2 to i13                      ; [#uses=1 type=i13]
  %empty_227 = zext i5 %3 to i13                  ; [#uses=1 type=i13]
  %empty_228 = shl i13 %empty, 5                  ; [#uses=1 type=i13]
  %empty_229 = or i13 %empty_228, %empty_227      ; [#uses=1 type=i13]
  %empty_230 = zext i8 %1 to i21                  ; [#uses=1 type=i21]
  %empty_231 = zext i13 %empty_229 to i21         ; [#uses=1 type=i21]
  %empty_232 = shl i21 %empty_230, 13             ; [#uses=1 type=i21]
  %empty_233 = or i21 %empty_232, %empty_231      ; [#uses=1 type=i21]
  %empty_234 = zext i4 %0 to i25                  ; [#uses=1 type=i25]
  %empty_235 = zext i21 %empty_233 to i25         ; [#uses=1 type=i25]
  %empty_236 = shl i25 %empty_234, 21             ; [#uses=1 type=i25]
  %empty_237 = or i25 %empty_236, %empty_235      ; [#uses=1 type=i25]
  ret i25 %empty_237
}

; [#uses=1]
define weak i25 @_ssdm_op_BitConcatenate.i25.i3.i8.i8.i6(i3, i8, i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %2 to i14                      ; [#uses=1 type=i14]
  %empty_238 = zext i6 %3 to i14                  ; [#uses=1 type=i14]
  %empty_239 = shl i14 %empty, 6                  ; [#uses=1 type=i14]
  %empty_240 = or i14 %empty_239, %empty_238      ; [#uses=1 type=i14]
  %empty_241 = zext i8 %1 to i22                  ; [#uses=1 type=i22]
  %empty_242 = zext i14 %empty_240 to i22         ; [#uses=1 type=i22]
  %empty_243 = shl i22 %empty_241, 14             ; [#uses=1 type=i22]
  %empty_244 = or i22 %empty_243, %empty_242      ; [#uses=1 type=i22]
  %empty_245 = zext i3 %0 to i25                  ; [#uses=1 type=i25]
  %empty_246 = zext i22 %empty_244 to i25         ; [#uses=1 type=i25]
  %empty_247 = shl i25 %empty_245, 22             ; [#uses=1 type=i25]
  %empty_248 = or i25 %empty_247, %empty_246      ; [#uses=1 type=i25]
  ret i25 %empty_248
}

; [#uses=1]
define weak i25 @_ssdm_op_BitConcatenate.i25.i1.i8.i8.i8(i1, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; [#uses=1 type=i16]
  %empty_249 = zext i8 %3 to i16                  ; [#uses=1 type=i16]
  %empty_250 = shl i16 %empty, 8                  ; [#uses=1 type=i16]
  %empty_251 = or i16 %empty_250, %empty_249      ; [#uses=1 type=i16]
  %empty_252 = zext i8 %1 to i24                  ; [#uses=1 type=i24]
  %empty_253 = zext i16 %empty_251 to i24         ; [#uses=1 type=i24]
  %empty_254 = shl i24 %empty_252, 16             ; [#uses=1 type=i24]
  %empty_255 = or i24 %empty_254, %empty_253      ; [#uses=1 type=i24]
  %empty_256 = zext i1 %0 to i25                  ; [#uses=1 type=i25]
  %empty_257 = zext i24 %empty_255 to i25         ; [#uses=1 type=i25]
  %empty_258 = shl i25 %empty_256, 24             ; [#uses=1 type=i25]
  %empty_259 = or i25 %empty_258, %empty_257      ; [#uses=1 type=i25]
  ret i25 %empty_259
}

; [#uses=6]
define internal fastcc void @_memcpy_char([32 x i8]* nocapture %dst, [32 x i8]* nocapture %src) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %dst, [1 x i8]* @p_str14, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str14, i32 -1, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14) ; [#uses=0 type=i32]
  %empty_260 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %src, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %dst}, i64 0, metadata !1063), !dbg !1068 ; [debug line = 66:34] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %src}, i64 0, metadata !1069), !dbg !1070 ; [debug line = 66:54] [debug variable = src]
  br label %1, !dbg !1071                         ; [debug line = 68:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i6 [ 0, %0 ], [ %i_27, %2 ]            ; [#uses=3 type=i6]
  %exitcond = icmp eq i6 %i, -32, !dbg !1071      ; [#uses=1 type=i1] [debug line = 68:6]
  %empty_261 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) ; [#uses=0 type=i32]
  %i_27 = add i6 %i, 1, !dbg !1074                ; [#uses=1 type=i6] [debug line = 68:18]
  br i1 %exitcond, label %3, label %2, !dbg !1071 ; [debug line = 68:6]

; <label>:2                                       ; preds = %1
  %tmp = zext i6 %i to i64, !dbg !1075            ; [#uses=2 type=i64] [debug line = 69:3]
  %src_addr = getelementptr [32 x i8]* %src, i64 0, i64 %tmp, !dbg !1075 ; [#uses=1 type=i8*] [debug line = 69:3]
  %src_load = load i8* %src_addr, align 1, !dbg !1075 ; [#uses=1 type=i8] [debug line = 69:3]
  %dst_addr = getelementptr [32 x i8]* %dst, i64 0, i64 %tmp, !dbg !1075 ; [#uses=1 type=i8*] [debug line = 69:3]
  store i8 %src_load, i8* %dst_addr, align 1, !dbg !1075 ; [debug line = 69:3]
  call void @llvm.dbg.value(metadata !{i6 %i_27}, i64 0, metadata !1077), !dbg !1074 ; [debug line = 68:18] [debug variable = i]
  br label %1, !dbg !1074                         ; [debug line = 68:18]

; <label>:3                                       ; preds = %1
  ret void, !dbg !1078                            ; [debug line = 71:1]
}

; [#uses=12]
define internal fastcc void @_memcpy.1([19 x i64]* nocapture %dst, [19 x i64]* nocapture %src) {
  br label %1, !dbg !1079                         ; [debug line = 61:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_28, %2 ]            ; [#uses=3 type=i5]
  %exitcond = icmp eq i5 %i, -13, !dbg !1079      ; [#uses=1 type=i1] [debug line = 61:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 0) ; [#uses=0 type=i32]
  %i_28 = add i5 %i, 1, !dbg !1080                ; [#uses=1 type=i5] [debug line = 61:18]
  br i1 %exitcond, label %3, label %2, !dbg !1079 ; [debug line = 61:6]

; <label>:2                                       ; preds = %1
  %tmp = zext i5 %i to i64, !dbg !1081            ; [#uses=2 type=i64] [debug line = 62:3]
  %src_addr = getelementptr [19 x i64]* %src, i64 0, i64 %tmp, !dbg !1081 ; [#uses=1 type=i64*] [debug line = 62:3]
  %src_load = load i64* %src_addr, align 8, !dbg !1081 ; [#uses=1 type=i64] [debug line = 62:3]
  %dst_addr = getelementptr [19 x i64]* %dst, i64 0, i64 %tmp, !dbg !1081 ; [#uses=1 type=i64*] [debug line = 62:3]
  store i64 %src_load, i64* %dst_addr, align 8, !dbg !1081 ; [debug line = 62:3]
  call void @llvm.dbg.value(metadata !{i5 %i_28}, i64 0, metadata !1082), !dbg !1080 ; [debug line = 61:18] [debug variable = i]
  br label %1, !dbg !1080                         ; [debug line = 61:18]

; <label>:3                                       ; preds = %1
  ret void, !dbg !1083                            ; [debug line = 64:1]
}

; [#uses=3]
define internal fastcc void @_memcpy([10 x i64]* nocapture %dst, [19 x i64]* nocapture %src) {
  call void @llvm.dbg.value(metadata !{[10 x i64]* %dst}, i64 0, metadata !1084), !dbg !1085 ; [debug line = 59:20] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %src}, i64 0, metadata !1086), !dbg !1087 ; [debug line = 59:31] [debug variable = src]
  br label %1, !dbg !1079                         ; [debug line = 61:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_29, %2 ]            ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i, -6, !dbg !1079       ; [#uses=1 type=i1] [debug line = 61:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  %i_29 = add i4 %i, 1, !dbg !1080                ; [#uses=1 type=i4] [debug line = 61:18]
  br i1 %exitcond, label %3, label %2, !dbg !1079 ; [debug line = 61:6]

; <label>:2                                       ; preds = %1
  %tmp = zext i4 %i to i64, !dbg !1081            ; [#uses=2 type=i64] [debug line = 62:3]
  %src_addr = getelementptr [19 x i64]* %src, i64 0, i64 %tmp, !dbg !1081 ; [#uses=1 type=i64*] [debug line = 62:3]
  %src_load = load i64* %src_addr, align 8, !dbg !1081 ; [#uses=1 type=i64] [debug line = 62:3]
  %dst_addr = getelementptr [10 x i64]* %dst, i64 0, i64 %tmp, !dbg !1081 ; [#uses=1 type=i64*] [debug line = 62:3]
  store i64 %src_load, i64* %dst_addr, align 8, !dbg !1081 ; [debug line = 62:3]
  call void @llvm.dbg.value(metadata !{i4 %i_29}, i64 0, metadata !1082), !dbg !1080 ; [debug line = 61:18] [debug variable = i]
  br label %1, !dbg !1080                         ; [debug line = 61:18]

; <label>:3                                       ; preds = %1
  ret void, !dbg !1083                            ; [debug line = 64:1]
}

!opencl.kernels = !{!0, !7, !9, !13, !19, !25, !25, !29, !34, !40, !40, !34, !45, !47, !51, !51, !53, !59, !65, !51, !51, !68, !70}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"uint"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"src", metadata !"len"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !5, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uint"}
!9 = metadata !{null, metadata !10, metadata !2, metadata !11, metadata !4, metadata !12, metadata !6}
!10 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!11 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb", metadata !"uint"}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"val", metadata !"len"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"u8*", metadata !"u8*", metadata !"u8*", metadata !"u8*", metadata !"u8*", metadata !"u8*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const", metadata !"const", metadata !"", metadata !"const", metadata !"const"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"mypublic_in", metadata !"secret_in", metadata !"basepoint_in", metadata !"mypublic_out", metadata !"secret_out", metadata !"basepoint_out"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"u8*", metadata !"limb*"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"input_limbs"}
!25 = metadata !{null, metadata !26, metadata !21, metadata !27, metadata !23, metadata !28, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"s32", metadata !"s32"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!29 = metadata !{null, metadata !30, metadata !2, metadata !31, metadata !32, metadata !33, metadata !6}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"limb*"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const", metadata !"const"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in", metadata !"in2"}
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"limb*"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"output"}
!40 = metadata !{null, metadata !41, metadata !36, metadata !42, metadata !43, metadata !44, metadata !6}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"limb"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!45 = metadata !{null, metadata !30, metadata !2, metadata !31, metadata !32, metadata !46, metadata !6}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in2", metadata !"in"}
!47 = metadata !{null, metadata !20, metadata !21, metadata !48, metadata !49, metadata !50, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*"}
!49 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"z"}
!51 = metadata !{null, metadata !20, metadata !21, metadata !48, metadata !49, metadata !52, metadata !6}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in"}
!53 = metadata !{null, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !6}
!54 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!55 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"u8*", metadata !"limb*"}
!57 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"const", metadata !"const"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"resultx", metadata !"resultz", metadata !"n", metadata !"q"}
!59 = metadata !{null, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !6}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"const"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"x2", metadata !"z2", metadata !"x3", metadata !"z3", metadata !"x", metadata !"z", metadata !"xprime", metadata !"zprime", metadata !"qmqp"}
!65 = metadata !{null, metadata !1, metadata !2, metadata !66, metadata !32, metadata !67, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"limb"}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in", metadata !"scalar"}
!68 = metadata !{null, metadata !1, metadata !2, metadata !66, metadata !4, metadata !69, metadata !6}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"iswap"}
!70 = metadata !{null, metadata !20, metadata !21, metadata !71, metadata !49, metadata !72, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"u8*"}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"input"}
!73 = metadata !{i32 786689, metadata !74, metadata !"iswap", metadata !75, i32 50332423, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 786478, i32 0, metadata !75, metadata !"swap_conditional", metadata !"swap_conditional", metadata !"", metadata !75, i32 775, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 775} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786473, metadata !"curve25519/src/curve25519-donna.c", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !78, metadata !78, metadata !79}
!78 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ]
!79 = metadata !{i32 786454, null, metadata !"limb", metadata !75, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ]
!80 = metadata !{i32 786454, null, metadata !"int64_t", metadata !75, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ]
!81 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!84 = metadata !{i32 775, i32 47, metadata !74, null}
!85 = metadata !{i32 786689, metadata !74, metadata !"a", null, i32 775, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !79, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786465, i64 0, i64 18}       ; [ DW_TAG_subrange_type ]
!89 = metadata !{i32 775, i32 23, metadata !74, null}
!90 = metadata !{i32 786689, metadata !74, metadata !"b", null, i32 775, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 775, i32 35, metadata !74, null}
!92 = metadata !{i32 777, i32 32, metadata !93, null}
!93 = metadata !{i32 786443, metadata !74, i32 775, i32 54, metadata !75, i32 79} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786688, metadata !93, metadata !"swap", metadata !75, i32 777, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_const_type ]
!96 = metadata !{i32 786454, null, metadata !"s32", metadata !75, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ]
!97 = metadata !{i32 786454, null, metadata !"int32_t", metadata !75, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ]
!98 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!99 = metadata !{i32 779, i32 8, metadata !100, null}
!100 = metadata !{i32 786443, metadata !93, i32 779, i32 3, metadata !75, i32 80} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 779, i32 23, metadata !100, null}
!102 = metadata !{i32 780, i32 55, metadata !103, null}
!103 = metadata !{i32 786443, metadata !100, i32 779, i32 28, metadata !75, i32 81} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 786688, metadata !103, metadata !"x", metadata !75, i32 780, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 781, i32 5, metadata !103, null}
!106 = metadata !{i32 782, i32 5, metadata !103, null}
!107 = metadata !{i32 786688, metadata !93, metadata !"i", metadata !75, i32 776, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!109 = metadata !{i32 784, i32 1, metadata !93, null}
!110 = metadata !{i32 786689, metadata !111, metadata !"output", null, i32 89, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fsum", metadata !"fsum", metadata !"", metadata !75, i32 89, metadata !112, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 89} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{null, metadata !78, metadata !114}
!114 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ]
!115 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_const_type ]
!116 = metadata !{i32 89, i32 24, metadata !111, null}
!117 = metadata !{i32 786689, metadata !111, metadata !"in", null, i32 89, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !115, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ]
!119 = metadata !{i32 89, i32 44, metadata !111, null}
!120 = metadata !{i32 91, i32 8, metadata !121, null}
!121 = metadata !{i32 786443, metadata !122, i32 91, i32 3, metadata !75, i32 77} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !111, i32 89, i32 48, metadata !75, i32 76} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 92, i32 5, metadata !124, null}
!124 = metadata !{i32 786443, metadata !121, i32 91, i32 31, metadata !75, i32 78} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 93, i32 5, metadata !124, null}
!126 = metadata !{i32 91, i32 23, metadata !121, null}
!127 = metadata !{i32 786688, metadata !122, metadata !"i", metadata !75, i32 90, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 95, i32 1, metadata !122, null}
!129 = metadata !{i32 369, i32 1, metadata !130, null}
!130 = metadata !{i32 786443, metadata !131, i32 368, i32 57, metadata !75, i32 63} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fsquare_inner", metadata !"fsquare_inner", metadata !"", metadata !75, i32 368, metadata !112, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 368} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 370, i32 1, metadata !130, null}
!133 = metadata !{i32 371, i32 53, metadata !130, null}
!134 = metadata !{i32 786688, metadata !130, metadata !"out_1", metadata !75, i32 371, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 374, i32 3, metadata !130, null}
!136 = metadata !{i32 378, i32 3, metadata !130, null}
!137 = metadata !{i32 383, i32 3, metadata !130, null}
!138 = metadata !{i32 386, i32 3, metadata !130, null}
!139 = metadata !{i32 389, i32 3, metadata !130, null}
!140 = metadata !{i32 393, i32 3, metadata !130, null}
!141 = metadata !{i32 397, i32 3, metadata !130, null}
!142 = metadata !{i32 402, i32 3, metadata !130, null}
!143 = metadata !{i32 407, i32 3, metadata !130, null}
!144 = metadata !{i32 413, i32 3, metadata !130, null}
!145 = metadata !{i32 419, i32 3, metadata !130, null}
!146 = metadata !{i32 425, i32 3, metadata !130, null}
!147 = metadata !{i32 430, i32 3, metadata !130, null}
!148 = metadata !{i32 435, i32 3, metadata !130, null}
!149 = metadata !{i32 439, i32 3, metadata !130, null}
!150 = metadata !{i32 443, i32 3, metadata !130, null}
!151 = metadata !{i32 446, i32 3, metadata !130, null}
!152 = metadata !{i32 449, i32 3, metadata !130, null}
!153 = metadata !{i32 451, i32 3, metadata !130, null}
!154 = metadata !{i32 452, i32 1, metadata !130, null}
!155 = metadata !{i32 786689, metadata !131, metadata !"output", null, i32 368, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 368, i32 33, metadata !131, null}
!157 = metadata !{i32 786689, metadata !131, metadata !"in", null, i32 368, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !115, metadata !159, i32 0, i32 0} ; [ DW_TAG_array_type ]
!159 = metadata !{metadata !160}
!160 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ]
!161 = metadata !{i32 368, i32 53, metadata !131, null}
!162 = metadata !{i32 463, i32 1, metadata !163, null}
!163 = metadata !{i32 786443, metadata !164, i32 462, i32 39, metadata !75, i32 62} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fsquare", metadata !"fsquare", metadata !"", metadata !75, i32 462, metadata !112, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 462} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 464, i32 1, metadata !163, null}
!166 = metadata !{i32 786688, metadata !163, metadata !"t", metadata !75, i32 465, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1216, i64 64, i32 0, i32 0, metadata !79, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ]
!168 = metadata !{i32 465, i32 7, metadata !163, null}
!169 = metadata !{i32 466, i32 3, metadata !163, null}
!170 = metadata !{i32 786689, metadata !171, metadata !"output", null, i32 229, metadata !86, i32 0, metadata !174} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 786478, i32 0, metadata !75, metadata !"freduce_degree", metadata !"freduce_degree", metadata !"", metadata !75, i32 229, metadata !172, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 229} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{null, metadata !78}
!174 = metadata !{i32 470, i32 3, metadata !163, null}
!175 = metadata !{i32 229, i32 34, metadata !171, metadata !174}
!176 = metadata !{i32 234, i32 3, metadata !177, metadata !174}
!177 = metadata !{i32 786443, metadata !171, i32 229, i32 42, metadata !75, i32 47} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 235, i32 3, metadata !177, metadata !174}
!179 = metadata !{i32 236, i32 3, metadata !177, metadata !174}
!180 = metadata !{i32 237, i32 3, metadata !177, metadata !174}
!181 = metadata !{i32 238, i32 3, metadata !177, metadata !174}
!182 = metadata !{i32 239, i32 3, metadata !177, metadata !174}
!183 = metadata !{i32 240, i32 3, metadata !177, metadata !174}
!184 = metadata !{i32 241, i32 3, metadata !177, metadata !174}
!185 = metadata !{i32 242, i32 3, metadata !177, metadata !174}
!186 = metadata !{i32 243, i32 3, metadata !177, metadata !174}
!187 = metadata !{i32 244, i32 3, metadata !177, metadata !174}
!188 = metadata !{i32 245, i32 3, metadata !177, metadata !174}
!189 = metadata !{i32 246, i32 3, metadata !177, metadata !174}
!190 = metadata !{i32 247, i32 3, metadata !177, metadata !174}
!191 = metadata !{i32 248, i32 3, metadata !177, metadata !174}
!192 = metadata !{i32 249, i32 3, metadata !177, metadata !174}
!193 = metadata !{i32 250, i32 3, metadata !177, metadata !174}
!194 = metadata !{i32 251, i32 3, metadata !177, metadata !174}
!195 = metadata !{i32 252, i32 3, metadata !177, metadata !174}
!196 = metadata !{i32 253, i32 3, metadata !177, metadata !174}
!197 = metadata !{i32 254, i32 3, metadata !177, metadata !174}
!198 = metadata !{i32 255, i32 3, metadata !177, metadata !174}
!199 = metadata !{i32 256, i32 3, metadata !177, metadata !174}
!200 = metadata !{i32 257, i32 3, metadata !177, metadata !174}
!201 = metadata !{i32 258, i32 3, metadata !177, metadata !174}
!202 = metadata !{i32 259, i32 3, metadata !177, metadata !174}
!203 = metadata !{i32 260, i32 3, metadata !177, metadata !174}
!204 = metadata !{i32 786689, metadata !205, metadata !"output", null, i32 302, metadata !86, i32 0, metadata !206} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 786478, i32 0, metadata !75, metadata !"freduce_coefficients", metadata !"freduce_coefficients", metadata !"", metadata !75, i32 302, metadata !172, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 302} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 471, i32 3, metadata !163, null}
!207 = metadata !{i32 302, i32 40, metadata !205, metadata !206}
!208 = metadata !{i32 305, i32 3, metadata !209, metadata !206}
!209 = metadata !{i32 786443, metadata !205, i32 302, i32 48, metadata !75, i32 41} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 307, i32 8, metadata !211, metadata !206}
!211 = metadata !{i32 786443, metadata !209, i32 307, i32 3, metadata !75, i32 42} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 308, i32 17, metadata !213, metadata !206}
!213 = metadata !{i32 786443, metadata !211, i32 307, i32 31, metadata !75, i32 43} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 786689, metadata !215, metadata !"v", metadata !75, i32 16777487, metadata !115, i32 0, metadata !212} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 786478, i32 0, metadata !75, metadata !"div_by_2_26", metadata !"div_by_2_26", metadata !"", metadata !75, i32 271, metadata !216, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 272} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !79, metadata !115}
!218 = metadata !{i32 271, i32 24, metadata !215, metadata !212}
!219 = metadata !{i32 276, i32 50, metadata !220, metadata !212}
!220 = metadata !{i32 786443, metadata !215, i32 272, i32 1, metadata !75, i32 46} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 280, i32 3, metadata !220, metadata !212}
!222 = metadata !{i32 786688, metadata !213, metadata !"over", metadata !75, i32 308, metadata !79, i32 0, metadata !206} ; [ DW_TAG_auto_variable ]
!223 = metadata !{i32 313, i32 5, metadata !213, metadata !206}
!224 = metadata !{i32 314, i32 5, metadata !213, metadata !206}
!225 = metadata !{i32 786689, metadata !226, metadata !"v", metadata !75, i32 16777503, metadata !115, i32 0, metadata !227} ; [ DW_TAG_arg_variable ]
!226 = metadata !{i32 786478, i32 0, metadata !75, metadata !"div_by_2_25", metadata !"div_by_2_25", metadata !"", metadata !75, i32 287, metadata !216, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 288} ; [ DW_TAG_subprogram ]
!227 = metadata !{i32 322, i32 12, metadata !213, metadata !206}
!228 = metadata !{i32 287, i32 24, metadata !226, metadata !227}
!229 = metadata !{i32 292, i32 50, metadata !230, metadata !227}
!230 = metadata !{i32 786443, metadata !226, i32 288, i32 1, metadata !75, i32 45} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 296, i32 3, metadata !230, metadata !227}
!232 = metadata !{i32 323, i32 5, metadata !213, metadata !206}
!233 = metadata !{i32 324, i32 5, metadata !213, metadata !206}
!234 = metadata !{i32 786688, metadata !209, metadata !"i", metadata !75, i32 303, metadata !108, i32 0, metadata !206} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 307, i32 23, metadata !211, metadata !206}
!236 = metadata !{i32 327, i32 3, metadata !209, metadata !206}
!237 = metadata !{i32 328, i32 3, metadata !209, metadata !206}
!238 = metadata !{i32 329, i32 3, metadata !209, metadata !206}
!239 = metadata !{i32 331, i32 3, metadata !209, metadata !206}
!240 = metadata !{i32 786689, metadata !215, metadata !"v", metadata !75, i32 16777487, metadata !115, i32 0, metadata !241} ; [ DW_TAG_arg_variable ]
!241 = metadata !{i32 336, i32 17, metadata !242, metadata !206}
!242 = metadata !{i32 786443, metadata !209, i32 335, i32 3, metadata !75, i32 44} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 271, i32 24, metadata !215, metadata !241}
!244 = metadata !{i32 276, i32 50, metadata !220, metadata !241}
!245 = metadata !{i32 280, i32 3, metadata !220, metadata !241}
!246 = metadata !{i32 786688, metadata !242, metadata !"over", metadata !75, i32 336, metadata !79, i32 0, metadata !206} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 337, i32 5, metadata !242, metadata !206}
!248 = metadata !{i32 338, i32 5, metadata !242, metadata !206}
!249 = metadata !{i32 786689, metadata !250, metadata !"dst", null, i32 59, metadata !253, i32 0, metadata !256} ; [ DW_TAG_arg_variable ]
!250 = metadata !{i32 786478, i32 0, metadata !75, metadata !"_memcpy", metadata !"_memcpy", metadata !"", metadata !75, i32 59, metadata !251, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 59} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{null, metadata !78, metadata !78, metadata !108}
!253 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !79, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ]
!254 = metadata !{metadata !255}
!255 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ]
!256 = metadata !{i32 473, i32 3, metadata !163, null}
!257 = metadata !{i32 59, i32 20, metadata !250, metadata !256}
!258 = metadata !{i32 786689, metadata !250, metadata !"src", null, i32 59, metadata !86, i32 0, metadata !256} ; [ DW_TAG_arg_variable ]
!259 = metadata !{i32 59, i32 31, metadata !250, metadata !256}
!260 = metadata !{i32 61, i32 6, metadata !261, metadata !256}
!261 = metadata !{i32 786443, metadata !262, i32 61, i32 2, metadata !75, i32 1} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 786443, metadata !250, i32 59, i32 53, metadata !75, i32 0} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 61, i32 18, metadata !261, metadata !256}
!264 = metadata !{i32 62, i32 3, metadata !265, metadata !256}
!265 = metadata !{i32 786443, metadata !261, i32 61, i32 22, metadata !75, i32 2} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !75, i32 60, metadata !98, i32 0, metadata !256} ; [ DW_TAG_auto_variable ]
!267 = metadata !{i32 474, i32 1, metadata !163, null}
!268 = metadata !{i32 786689, metadata !164, metadata !"output", null, i32 462, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!269 = metadata !{i32 462, i32 15, metadata !164, null}
!270 = metadata !{i32 786689, metadata !164, metadata !"in", null, i32 462, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!271 = metadata !{i32 462, i32 35, metadata !164, null}
!272 = metadata !{i32 786689, metadata !171, metadata !"output", null, i32 229, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 229, i32 34, metadata !171, null}
!274 = metadata !{i32 234, i32 3, metadata !177, null}
!275 = metadata !{i32 235, i32 3, metadata !177, null}
!276 = metadata !{i32 236, i32 3, metadata !177, null}
!277 = metadata !{i32 237, i32 3, metadata !177, null}
!278 = metadata !{i32 238, i32 3, metadata !177, null}
!279 = metadata !{i32 239, i32 3, metadata !177, null}
!280 = metadata !{i32 240, i32 3, metadata !177, null}
!281 = metadata !{i32 241, i32 3, metadata !177, null}
!282 = metadata !{i32 242, i32 3, metadata !177, null}
!283 = metadata !{i32 243, i32 3, metadata !177, null}
!284 = metadata !{i32 244, i32 3, metadata !177, null}
!285 = metadata !{i32 245, i32 3, metadata !177, null}
!286 = metadata !{i32 246, i32 3, metadata !177, null}
!287 = metadata !{i32 247, i32 3, metadata !177, null}
!288 = metadata !{i32 248, i32 3, metadata !177, null}
!289 = metadata !{i32 249, i32 3, metadata !177, null}
!290 = metadata !{i32 250, i32 3, metadata !177, null}
!291 = metadata !{i32 251, i32 3, metadata !177, null}
!292 = metadata !{i32 252, i32 3, metadata !177, null}
!293 = metadata !{i32 253, i32 3, metadata !177, null}
!294 = metadata !{i32 254, i32 3, metadata !177, null}
!295 = metadata !{i32 255, i32 3, metadata !177, null}
!296 = metadata !{i32 256, i32 3, metadata !177, null}
!297 = metadata !{i32 257, i32 3, metadata !177, null}
!298 = metadata !{i32 258, i32 3, metadata !177, null}
!299 = metadata !{i32 259, i32 3, metadata !177, null}
!300 = metadata !{i32 260, i32 3, metadata !177, null}
!301 = metadata !{i32 261, i32 1, metadata !177, null}
!302 = metadata !{i32 786689, metadata !205, metadata !"output", null, i32 302, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!303 = metadata !{i32 302, i32 40, metadata !205, null}
!304 = metadata !{i32 305, i32 3, metadata !209, null}
!305 = metadata !{i32 307, i32 8, metadata !211, null}
!306 = metadata !{i32 308, i32 17, metadata !213, null}
!307 = metadata !{i32 786689, metadata !215, metadata !"v", metadata !75, i32 16777487, metadata !115, i32 0, metadata !306} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 271, i32 24, metadata !215, metadata !306}
!309 = metadata !{i32 276, i32 50, metadata !220, metadata !306}
!310 = metadata !{i32 280, i32 3, metadata !220, metadata !306}
!311 = metadata !{i32 786688, metadata !213, metadata !"over", metadata !75, i32 308, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!312 = metadata !{i32 313, i32 5, metadata !213, null}
!313 = metadata !{i32 314, i32 5, metadata !213, null}
!314 = metadata !{i32 786689, metadata !226, metadata !"v", metadata !75, i32 16777503, metadata !115, i32 0, metadata !315} ; [ DW_TAG_arg_variable ]
!315 = metadata !{i32 322, i32 12, metadata !213, null}
!316 = metadata !{i32 287, i32 24, metadata !226, metadata !315}
!317 = metadata !{i32 292, i32 50, metadata !230, metadata !315}
!318 = metadata !{i32 296, i32 3, metadata !230, metadata !315}
!319 = metadata !{i32 323, i32 5, metadata !213, null}
!320 = metadata !{i32 324, i32 5, metadata !213, null}
!321 = metadata !{i32 786688, metadata !209, metadata !"i", metadata !75, i32 303, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!322 = metadata !{i32 307, i32 23, metadata !211, null}
!323 = metadata !{i32 327, i32 3, metadata !209, null}
!324 = metadata !{i32 328, i32 3, metadata !209, null}
!325 = metadata !{i32 329, i32 3, metadata !209, null}
!326 = metadata !{i32 331, i32 3, metadata !209, null}
!327 = metadata !{i32 786689, metadata !215, metadata !"v", metadata !75, i32 16777487, metadata !115, i32 0, metadata !328} ; [ DW_TAG_arg_variable ]
!328 = metadata !{i32 336, i32 17, metadata !242, null}
!329 = metadata !{i32 271, i32 24, metadata !215, metadata !328}
!330 = metadata !{i32 276, i32 50, metadata !220, metadata !328}
!331 = metadata !{i32 280, i32 3, metadata !220, metadata !328}
!332 = metadata !{i32 786688, metadata !242, metadata !"over", metadata !75, i32 336, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!333 = metadata !{i32 337, i32 5, metadata !242, null}
!334 = metadata !{i32 338, i32 5, metadata !242, null}
!335 = metadata !{i32 343, i32 1, metadata !209, null}
!336 = metadata !{i32 121, i32 1, metadata !337, null}
!337 = metadata !{i32 786443, metadata !338, i32 120, i32 69, metadata !75, i32 48} ; [ DW_TAG_lexical_block ]
!338 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fproduct", metadata !"fproduct", metadata !"", metadata !75, i32 120, metadata !339, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 120} ; [ DW_TAG_subprogram ]
!339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!340 = metadata !{null, metadata !78, metadata !114, metadata !114}
!341 = metadata !{i32 122, i32 1, metadata !337, null}
!342 = metadata !{i32 123, i32 2, metadata !337, null}
!343 = metadata !{i32 124, i32 3, metadata !337, null}
!344 = metadata !{i32 126, i32 3, metadata !337, null}
!345 = metadata !{i32 129, i32 3, metadata !337, null}
!346 = metadata !{i32 133, i32 3, metadata !337, null}
!347 = metadata !{i32 138, i32 3, metadata !337, null}
!348 = metadata !{i32 144, i32 3, metadata !337, null}
!349 = metadata !{i32 151, i32 3, metadata !337, null}
!350 = metadata !{i32 159, i32 3, metadata !337, null}
!351 = metadata !{i32 168, i32 3, metadata !337, null}
!352 = metadata !{i32 178, i32 3, metadata !337, null}
!353 = metadata !{i32 187, i32 3, metadata !337, null}
!354 = metadata !{i32 195, i32 3, metadata !337, null}
!355 = metadata !{i32 202, i32 3, metadata !337, null}
!356 = metadata !{i32 208, i32 3, metadata !337, null}
!357 = metadata !{i32 213, i32 3, metadata !337, null}
!358 = metadata !{i32 217, i32 3, metadata !337, null}
!359 = metadata !{i32 220, i32 3, metadata !337, null}
!360 = metadata !{i32 222, i32 3, metadata !337, null}
!361 = metadata !{i32 223, i32 1, metadata !337, null}
!362 = metadata !{i32 786689, metadata !338, metadata !"output", null, i32 120, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!363 = metadata !{i32 120, i32 28, metadata !338, null}
!364 = metadata !{i32 786689, metadata !338, metadata !"in2", null, i32 120, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!365 = metadata !{i32 120, i32 48, metadata !338, null}
!366 = metadata !{i32 786689, metadata !338, metadata !"in", null, i32 120, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!367 = metadata !{i32 120, i32 65, metadata !338, null}
!368 = metadata !{i32 786688, metadata !369, metadata !"t", metadata !75, i32 353, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!369 = metadata !{i32 786443, metadata !370, i32 352, i32 53, metadata !75, i32 40} ; [ DW_TAG_lexical_block ]
!370 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fmul", metadata !"fmul", metadata !"", metadata !75, i32 352, metadata !339, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 352} ; [ DW_TAG_subprogram ]
!371 = metadata !{i32 353, i32 8, metadata !369, null}
!372 = metadata !{i32 354, i32 3, metadata !369, null}
!373 = metadata !{i32 786689, metadata !171, metadata !"output", null, i32 229, metadata !86, i32 0, metadata !374} ; [ DW_TAG_arg_variable ]
!374 = metadata !{i32 356, i32 3, metadata !369, null}
!375 = metadata !{i32 229, i32 34, metadata !171, metadata !374}
!376 = metadata !{i32 234, i32 3, metadata !177, metadata !374}
!377 = metadata !{i32 235, i32 3, metadata !177, metadata !374}
!378 = metadata !{i32 236, i32 3, metadata !177, metadata !374}
!379 = metadata !{i32 237, i32 3, metadata !177, metadata !374}
!380 = metadata !{i32 238, i32 3, metadata !177, metadata !374}
!381 = metadata !{i32 239, i32 3, metadata !177, metadata !374}
!382 = metadata !{i32 240, i32 3, metadata !177, metadata !374}
!383 = metadata !{i32 241, i32 3, metadata !177, metadata !374}
!384 = metadata !{i32 242, i32 3, metadata !177, metadata !374}
!385 = metadata !{i32 243, i32 3, metadata !177, metadata !374}
!386 = metadata !{i32 244, i32 3, metadata !177, metadata !374}
!387 = metadata !{i32 245, i32 3, metadata !177, metadata !374}
!388 = metadata !{i32 246, i32 3, metadata !177, metadata !374}
!389 = metadata !{i32 247, i32 3, metadata !177, metadata !374}
!390 = metadata !{i32 248, i32 3, metadata !177, metadata !374}
!391 = metadata !{i32 249, i32 3, metadata !177, metadata !374}
!392 = metadata !{i32 250, i32 3, metadata !177, metadata !374}
!393 = metadata !{i32 251, i32 3, metadata !177, metadata !374}
!394 = metadata !{i32 252, i32 3, metadata !177, metadata !374}
!395 = metadata !{i32 253, i32 3, metadata !177, metadata !374}
!396 = metadata !{i32 254, i32 3, metadata !177, metadata !374}
!397 = metadata !{i32 255, i32 3, metadata !177, metadata !374}
!398 = metadata !{i32 256, i32 3, metadata !177, metadata !374}
!399 = metadata !{i32 257, i32 3, metadata !177, metadata !374}
!400 = metadata !{i32 258, i32 3, metadata !177, metadata !374}
!401 = metadata !{i32 259, i32 3, metadata !177, metadata !374}
!402 = metadata !{i32 260, i32 3, metadata !177, metadata !374}
!403 = metadata !{i32 786689, metadata !205, metadata !"output", null, i32 302, metadata !86, i32 0, metadata !404} ; [ DW_TAG_arg_variable ]
!404 = metadata !{i32 357, i32 3, metadata !369, null}
!405 = metadata !{i32 302, i32 40, metadata !205, metadata !404}
!406 = metadata !{i32 305, i32 3, metadata !209, metadata !404}
!407 = metadata !{i32 307, i32 8, metadata !211, metadata !404}
!408 = metadata !{i32 308, i32 17, metadata !213, metadata !404}
!409 = metadata !{i32 786689, metadata !215, metadata !"v", metadata !75, i32 16777487, metadata !115, i32 0, metadata !408} ; [ DW_TAG_arg_variable ]
!410 = metadata !{i32 271, i32 24, metadata !215, metadata !408}
!411 = metadata !{i32 276, i32 50, metadata !220, metadata !408}
!412 = metadata !{i32 280, i32 3, metadata !220, metadata !408}
!413 = metadata !{i32 786688, metadata !213, metadata !"over", metadata !75, i32 308, metadata !79, i32 0, metadata !404} ; [ DW_TAG_auto_variable ]
!414 = metadata !{i32 313, i32 5, metadata !213, metadata !404}
!415 = metadata !{i32 314, i32 5, metadata !213, metadata !404}
!416 = metadata !{i32 786689, metadata !226, metadata !"v", metadata !75, i32 16777503, metadata !115, i32 0, metadata !417} ; [ DW_TAG_arg_variable ]
!417 = metadata !{i32 322, i32 12, metadata !213, metadata !404}
!418 = metadata !{i32 287, i32 24, metadata !226, metadata !417}
!419 = metadata !{i32 292, i32 50, metadata !230, metadata !417}
!420 = metadata !{i32 296, i32 3, metadata !230, metadata !417}
!421 = metadata !{i32 323, i32 5, metadata !213, metadata !404}
!422 = metadata !{i32 324, i32 5, metadata !213, metadata !404}
!423 = metadata !{i32 786688, metadata !209, metadata !"i", metadata !75, i32 303, metadata !108, i32 0, metadata !404} ; [ DW_TAG_auto_variable ]
!424 = metadata !{i32 307, i32 23, metadata !211, metadata !404}
!425 = metadata !{i32 327, i32 3, metadata !209, metadata !404}
!426 = metadata !{i32 328, i32 3, metadata !209, metadata !404}
!427 = metadata !{i32 329, i32 3, metadata !209, metadata !404}
!428 = metadata !{i32 331, i32 3, metadata !209, metadata !404}
!429 = metadata !{i32 786689, metadata !215, metadata !"v", metadata !75, i32 16777487, metadata !115, i32 0, metadata !430} ; [ DW_TAG_arg_variable ]
!430 = metadata !{i32 336, i32 17, metadata !242, metadata !404}
!431 = metadata !{i32 271, i32 24, metadata !215, metadata !430}
!432 = metadata !{i32 276, i32 50, metadata !220, metadata !430}
!433 = metadata !{i32 280, i32 3, metadata !220, metadata !430}
!434 = metadata !{i32 786688, metadata !242, metadata !"over", metadata !75, i32 336, metadata !79, i32 0, metadata !404} ; [ DW_TAG_auto_variable ]
!435 = metadata !{i32 337, i32 5, metadata !242, metadata !404}
!436 = metadata !{i32 338, i32 5, metadata !242, metadata !404}
!437 = metadata !{i32 61, i32 6, metadata !261, metadata !438}
!438 = metadata !{i32 359, i32 3, metadata !369, null}
!439 = metadata !{i32 61, i32 18, metadata !261, metadata !438}
!440 = metadata !{i32 62, i32 3, metadata !265, metadata !438}
!441 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !75, i32 60, metadata !98, i32 0, metadata !438} ; [ DW_TAG_auto_variable ]
!442 = metadata !{i32 360, i32 1, metadata !369, null}
!443 = metadata !{i32 786689, metadata !250, metadata !"dst", null, i32 59, metadata !253, i32 0, metadata !438} ; [ DW_TAG_arg_variable ]
!444 = metadata !{i32 59, i32 20, metadata !250, metadata !438}
!445 = metadata !{i32 786689, metadata !250, metadata !"src", null, i32 59, metadata !86, i32 0, metadata !438} ; [ DW_TAG_arg_variable ]
!446 = metadata !{i32 59, i32 31, metadata !250, metadata !438}
!447 = metadata !{i32 786689, metadata !370, metadata !"output", null, i32 352, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!448 = metadata !{i32 352, i32 12, metadata !370, null}
!449 = metadata !{i32 786689, metadata !370, metadata !"in", null, i32 352, metadata !450, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!450 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !115, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ]
!451 = metadata !{i32 352, i32 32, metadata !370, null}
!452 = metadata !{i32 786689, metadata !370, metadata !"in2", null, i32 352, metadata !450, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!453 = metadata !{i32 352, i32 48, metadata !370, null}
!454 = metadata !{i32 786689, metadata !455, metadata !"output", null, i32 107, metadata !86, i32 0, metadata !458} ; [ DW_TAG_arg_variable ]
!455 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fscalar_product", metadata !"fscalar_product", metadata !"", metadata !75, i32 107, metadata !456, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 107} ; [ DW_TAG_subprogram ]
!456 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!457 = metadata !{null, metadata !78, metadata !114, metadata !115}
!458 = metadata !{i32 750, i32 3, metadata !459, null}
!459 = metadata !{i32 786443, metadata !460, i32 682, i32 57, metadata !75, i32 69} ; [ DW_TAG_lexical_block ]
!460 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fmonty", metadata !"fmonty", metadata !"", metadata !75, i32 678, metadata !461, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 682} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !462, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!462 = metadata !{null, metadata !78, metadata !78, metadata !78, metadata !78, metadata !78, metadata !78, metadata !78, metadata !78, metadata !114}
!463 = metadata !{i32 107, i32 35, metadata !455, metadata !458}
!464 = metadata !{i32 786689, metadata !465, metadata !"dst", null, i32 73, metadata !86, i32 0, metadata !468} ; [ DW_TAG_arg_variable ]
!465 = metadata !{i32 786478, i32 0, metadata !75, metadata !"_memset", metadata !"_memset", metadata !"", metadata !75, i32 73, metadata !466, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 73} ; [ DW_TAG_subprogram ]
!466 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!467 = metadata !{null, metadata !78, metadata !79, metadata !108}
!468 = metadata !{i32 741, i32 3, metadata !459, null}
!469 = metadata !{i32 73, i32 20, metadata !465, metadata !468}
!470 = metadata !{i32 786689, metadata !455, metadata !"in", null, i32 107, metadata !118, i32 0, metadata !458} ; [ DW_TAG_arg_variable ]
!471 = metadata !{i32 107, i32 55, metadata !455, metadata !458}
!472 = metadata !{i32 786689, metadata !460, metadata !"x2", null, i32 678, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!473 = metadata !{i32 678, i32 26, metadata !460, null}
!474 = metadata !{i32 786689, metadata !460, metadata !"z2", null, i32 678, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!475 = metadata !{i32 678, i32 36, metadata !460, null}
!476 = metadata !{i32 786689, metadata !460, metadata !"x3", null, i32 679, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!477 = metadata !{i32 679, i32 26, metadata !460, null}
!478 = metadata !{i32 786689, metadata !460, metadata !"z3", null, i32 679, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!479 = metadata !{i32 679, i32 36, metadata !460, null}
!480 = metadata !{i32 786689, metadata !460, metadata !"x", null, i32 680, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!481 = metadata !{i32 680, i32 26, metadata !460, null}
!482 = metadata !{i32 786689, metadata !460, metadata !"z", null, i32 680, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!483 = metadata !{i32 680, i32 35, metadata !460, null}
!484 = metadata !{i32 786689, metadata !460, metadata !"xprime", null, i32 681, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!485 = metadata !{i32 681, i32 26, metadata !460, null}
!486 = metadata !{i32 786689, metadata !460, metadata !"zprime", null, i32 681, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!487 = metadata !{i32 681, i32 40, metadata !460, null}
!488 = metadata !{i32 786689, metadata !460, metadata !"qmqp", null, i32 682, metadata !450, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!489 = metadata !{i32 682, i32 32, metadata !460, null}
!490 = metadata !{i32 683, i32 1, metadata !459, null}
!491 = metadata !{i32 684, i32 1, metadata !459, null}
!492 = metadata !{i32 786688, metadata !459, metadata !"origx", metadata !75, i32 685, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!493 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !79, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ]
!494 = metadata !{i32 685, i32 7, metadata !459, null}
!495 = metadata !{i32 786688, metadata !459, metadata !"origxprime", metadata !75, i32 685, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!496 = metadata !{i32 685, i32 18, metadata !459, null}
!497 = metadata !{i32 786688, metadata !459, metadata !"zzz", metadata !75, i32 685, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!498 = metadata !{i32 685, i32 34, metadata !459, null}
!499 = metadata !{i32 786688, metadata !459, metadata !"xx", metadata !75, i32 685, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!500 = metadata !{i32 685, i32 43, metadata !459, null}
!501 = metadata !{i32 786688, metadata !459, metadata !"zz", metadata !75, i32 685, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!502 = metadata !{i32 685, i32 51, metadata !459, null}
!503 = metadata !{i32 786688, metadata !459, metadata !"xxprime", metadata !75, i32 685, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!504 = metadata !{i32 685, i32 59, metadata !459, null}
!505 = metadata !{i32 786688, metadata !459, metadata !"zzprime", metadata !75, i32 686, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!506 = metadata !{i32 686, i32 9, metadata !459, null}
!507 = metadata !{i32 786688, metadata !459, metadata !"zzzprime", metadata !75, i32 686, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!508 = metadata !{i32 686, i32 22, metadata !459, null}
!509 = metadata !{i32 690, i32 3, metadata !459, null}
!510 = metadata !{i32 691, i32 3, metadata !459, null}
!511 = metadata !{i32 693, i32 3, metadata !459, null}
!512 = metadata !{i32 696, i32 3, metadata !459, null}
!513 = metadata !{i32 697, i32 3, metadata !459, null}
!514 = metadata !{i32 699, i32 3, metadata !459, null}
!515 = metadata !{i32 701, i32 3, metadata !459, null}
!516 = metadata !{i32 705, i32 3, metadata !459, null}
!517 = metadata !{i32 707, i32 3, metadata !459, null}
!518 = metadata !{i32 708, i32 3, metadata !459, null}
!519 = metadata !{i32 710, i32 3, metadata !459, null}
!520 = metadata !{i32 711, i32 3, metadata !459, null}
!521 = metadata !{i32 713, i32 3, metadata !459, null}
!522 = metadata !{i32 714, i32 3, metadata !459, null}
!523 = metadata !{i32 716, i32 3, metadata !459, null}
!524 = metadata !{i32 718, i32 3, metadata !459, null}
!525 = metadata !{i32 720, i32 3, metadata !459, null}
!526 = metadata !{i32 722, i32 3, metadata !459, null}
!527 = metadata !{i32 724, i32 3, metadata !459, null}
!528 = metadata !{i32 725, i32 3, metadata !459, null}
!529 = metadata !{i32 61, i32 6, metadata !261, metadata !530}
!530 = metadata !{i32 727, i32 3, metadata !459, null}
!531 = metadata !{i32 61, i32 18, metadata !261, metadata !530}
!532 = metadata !{i32 61, i32 6, metadata !261, metadata !533}
!533 = metadata !{i32 728, i32 3, metadata !459, null}
!534 = metadata !{i32 62, i32 3, metadata !265, metadata !530}
!535 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !75, i32 60, metadata !98, i32 0, metadata !530} ; [ DW_TAG_auto_variable ]
!536 = metadata !{i32 61, i32 18, metadata !261, metadata !533}
!537 = metadata !{i32 62, i32 3, metadata !265, metadata !533}
!538 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !75, i32 60, metadata !98, i32 0, metadata !533} ; [ DW_TAG_auto_variable ]
!539 = metadata !{i32 730, i32 3, metadata !459, null}
!540 = metadata !{i32 732, i32 3, metadata !459, null}
!541 = metadata !{i32 734, i32 3, metadata !459, null}
!542 = metadata !{i32 736, i32 3, metadata !459, null}
!543 = metadata !{i32 737, i32 3, metadata !459, null}
!544 = metadata !{i32 786689, metadata !545, metadata !"output", null, i32 99, metadata !86, i32 0, metadata !546} ; [ DW_TAG_arg_variable ]
!545 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fdifference", metadata !"fdifference", metadata !"", metadata !75, i32 99, metadata !112, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 99} ; [ DW_TAG_subprogram ]
!546 = metadata !{i32 739, i32 3, metadata !459, null}
!547 = metadata !{i32 99, i32 31, metadata !545, metadata !546}
!548 = metadata !{i32 786689, metadata !545, metadata !"in", null, i32 99, metadata !118, i32 0, metadata !546} ; [ DW_TAG_arg_variable ]
!549 = metadata !{i32 99, i32 51, metadata !545, metadata !546}
!550 = metadata !{i32 101, i32 8, metadata !551, metadata !546}
!551 = metadata !{i32 786443, metadata !552, i32 101, i32 3, metadata !75, i32 74} ; [ DW_TAG_lexical_block ]
!552 = metadata !{i32 786443, metadata !545, i32 99, i32 55, metadata !75, i32 73} ; [ DW_TAG_lexical_block ]
!553 = metadata !{i32 101, i32 23, metadata !551, metadata !546}
!554 = metadata !{i32 75, i32 6, metadata !555, metadata !468}
!555 = metadata !{i32 786443, metadata !556, i32 75, i32 2, metadata !75, i32 7} ; [ DW_TAG_lexical_block ]
!556 = metadata !{i32 786443, metadata !465, i32 73, i32 52, metadata !75, i32 6} ; [ DW_TAG_lexical_block ]
!557 = metadata !{i32 102, i32 5, metadata !558, metadata !546}
!558 = metadata !{i32 786443, metadata !551, i32 101, i32 28, metadata !75, i32 75} ; [ DW_TAG_lexical_block ]
!559 = metadata !{i32 786688, metadata !552, metadata !"i", metadata !75, i32 100, metadata !108, i32 0, metadata !546} ; [ DW_TAG_auto_variable ]
!560 = metadata !{i32 75, i32 18, metadata !555, metadata !468}
!561 = metadata !{i32 109, i32 8, metadata !562, metadata !458}
!562 = metadata !{i32 786443, metadata !563, i32 109, i32 3, metadata !75, i32 71} ; [ DW_TAG_lexical_block ]
!563 = metadata !{i32 786443, metadata !455, i32 107, i32 78, metadata !75, i32 70} ; [ DW_TAG_lexical_block ]
!564 = metadata !{i32 76, i32 3, metadata !565, metadata !468}
!565 = metadata !{i32 786443, metadata !555, i32 75, i32 22, metadata !75, i32 8} ; [ DW_TAG_lexical_block ]
!566 = metadata !{i32 786688, metadata !556, metadata !"i", metadata !75, i32 74, metadata !98, i32 0, metadata !468} ; [ DW_TAG_auto_variable ]
!567 = metadata !{i32 109, i32 23, metadata !562, metadata !458}
!568 = metadata !{i32 110, i32 5, metadata !569, metadata !458}
!569 = metadata !{i32 786443, metadata !562, i32 109, i32 28, metadata !75, i32 72} ; [ DW_TAG_lexical_block ]
!570 = metadata !{i32 786688, metadata !563, metadata !"i", metadata !75, i32 108, metadata !108, i32 0, metadata !458} ; [ DW_TAG_auto_variable ]
!571 = metadata !{i32 754, i32 3, metadata !459, null}
!572 = metadata !{i32 756, i32 3, metadata !459, null}
!573 = metadata !{i32 758, i32 3, metadata !459, null}
!574 = metadata !{i32 760, i32 3, metadata !459, null}
!575 = metadata !{i32 761, i32 3, metadata !459, null}
!576 = metadata !{i32 763, i32 1, metadata !459, null}
!577 = metadata !{i32 786689, metadata !578, metadata !"output", null, i32 478, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!578 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fexpand", metadata !"fexpand", metadata !"", metadata !75, i32 478, metadata !579, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 478} ; [ DW_TAG_subprogram ]
!579 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !580, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!580 = metadata !{null, metadata !78, metadata !581}
!581 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !582} ; [ DW_TAG_pointer_type ]
!582 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !583} ; [ DW_TAG_const_type ]
!583 = metadata !{i32 786454, null, metadata !"u8", metadata !75, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !584} ; [ DW_TAG_typedef ]
!584 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !75, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !585} ; [ DW_TAG_typedef ]
!585 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!586 = metadata !{i32 478, i32 15, metadata !578, null}
!587 = metadata !{i32 786689, metadata !578, metadata !"input", null, i32 478, metadata !588, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!588 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !582, metadata !589, i32 0, i32 0} ; [ DW_TAG_array_type ]
!589 = metadata !{metadata !590}
!590 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!591 = metadata !{i32 478, i32 33, metadata !578, null}
!592 = metadata !{i32 484, i32 3, metadata !593, null}
!593 = metadata !{i32 786443, metadata !578, i32 478, i32 40, metadata !75, i32 82} ; [ DW_TAG_lexical_block ]
!594 = metadata !{i32 485, i32 3, metadata !593, null}
!595 = metadata !{i32 486, i32 3, metadata !593, null}
!596 = metadata !{i32 487, i32 3, metadata !593, null}
!597 = metadata !{i32 488, i32 3, metadata !593, null}
!598 = metadata !{i32 489, i32 3, metadata !593, null}
!599 = metadata !{i32 490, i32 3, metadata !593, null}
!600 = metadata !{i32 491, i32 3, metadata !593, null}
!601 = metadata !{i32 492, i32 3, metadata !593, null}
!602 = metadata !{i32 493, i32 3, metadata !593, null}
!603 = metadata !{i32 495, i32 1, metadata !593, null}
!604 = metadata !{i32 101, i32 8, metadata !551, null}
!605 = metadata !{i32 101, i32 23, metadata !551, null}
!606 = metadata !{i32 102, i32 5, metadata !558, null}
!607 = metadata !{i32 786688, metadata !552, metadata !"i", metadata !75, i32 100, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!608 = metadata !{i32 104, i32 1, metadata !552, null}
!609 = metadata !{i32 786689, metadata !610, metadata !"output", null, i32 525, metadata !614, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!610 = metadata !{i32 786478, i32 0, metadata !75, metadata !"fcontract", metadata !"fcontract", metadata !"", metadata !75, i32 525, metadata !611, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 525} ; [ DW_TAG_subprogram ]
!611 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !612, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!612 = metadata !{null, metadata !613, metadata !78}
!613 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !583} ; [ DW_TAG_pointer_type ]
!614 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !583, metadata !589, i32 0, i32 0} ; [ DW_TAG_array_type ]
!615 = metadata !{i32 525, i32 15, metadata !610, null}
!616 = metadata !{i32 786689, metadata !610, metadata !"input_limbs", null, i32 525, metadata !617, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!617 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !79, metadata !159, i32 0, i32 0} ; [ DW_TAG_array_type ]
!618 = metadata !{i32 525, i32 29, metadata !610, null}
!619 = metadata !{i32 786688, metadata !620, metadata !"input", metadata !75, i32 528, metadata !621, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!620 = metadata !{i32 786443, metadata !610, i32 525, i32 42, metadata !75, i32 12} ; [ DW_TAG_lexical_block ]
!621 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !96, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ]
!622 = metadata !{i32 528, i32 7, metadata !620, null}
!623 = metadata !{i32 532, i32 8, metadata !624, null}
!624 = metadata !{i32 786443, metadata !620, i32 532, i32 3, metadata !75, i32 13} ; [ DW_TAG_lexical_block ]
!625 = metadata !{i32 532, i32 23, metadata !624, null}
!626 = metadata !{i32 556, i32 38, metadata !627, null}
!627 = metadata !{i32 786443, metadata !628, i32 555, i32 5, metadata !75, i32 21} ; [ DW_TAG_lexical_block ]
!628 = metadata !{i32 786443, metadata !629, i32 536, i32 27, metadata !75, i32 16} ; [ DW_TAG_lexical_block ]
!629 = metadata !{i32 786443, metadata !620, i32 536, i32 3, metadata !75, i32 15} ; [ DW_TAG_lexical_block ]
!630 = metadata !{i32 559, i32 7, metadata !627, null}
!631 = metadata !{i32 536, i32 8, metadata !629, null}
!632 = metadata !{i32 533, i32 5, metadata !633, null}
!633 = metadata !{i32 786443, metadata !624, i32 532, i32 28, metadata !75, i32 14} ; [ DW_TAG_lexical_block ]
!634 = metadata !{i32 786688, metadata !620, metadata !"i", metadata !75, i32 526, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!635 = metadata !{i32 536, i32 22, metadata !629, null}
!636 = metadata !{i32 537, i32 10, metadata !637, null}
!637 = metadata !{i32 786443, metadata !628, i32 537, i32 5, metadata !75, i32 17} ; [ DW_TAG_lexical_block ]
!638 = metadata !{i32 537, i32 24, metadata !637, null}
!639 = metadata !{i32 546, i32 40, metadata !640, null}
!640 = metadata !{i32 786443, metadata !641, i32 545, i32 14, metadata !75, i32 20} ; [ DW_TAG_lexical_block ]
!641 = metadata !{i32 786443, metadata !637, i32 537, i32 29, metadata !75, i32 18} ; [ DW_TAG_lexical_block ]
!642 = metadata !{i32 547, i32 53, metadata !640, null}
!643 = metadata !{i32 538, i32 7, metadata !641, null}
!644 = metadata !{i32 786688, metadata !645, metadata !"mask", metadata !75, i32 541, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!645 = metadata !{i32 786443, metadata !641, i32 538, i32 25, metadata !75, i32 19} ; [ DW_TAG_lexical_block ]
!646 = metadata !{i32 541, i32 40, metadata !645, null}
!647 = metadata !{i32 542, i32 53, metadata !645, null}
!648 = metadata !{i32 543, i32 9, metadata !645, null}
!649 = metadata !{i32 544, i32 9, metadata !645, null}
!650 = metadata !{i32 545, i32 7, metadata !645, null}
!651 = metadata !{i32 786688, metadata !640, metadata !"mask", metadata !75, i32 546, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!652 = metadata !{i32 548, i32 9, metadata !640, null}
!653 = metadata !{i32 549, i32 9, metadata !640, null}
!654 = metadata !{i32 786688, metadata !627, metadata !"mask", metadata !75, i32 556, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!655 = metadata !{i32 557, i32 51, metadata !627, null}
!656 = metadata !{i32 558, i32 7, metadata !627, null}
!657 = metadata !{i32 786688, metadata !620, metadata !"j", metadata !75, i32 527, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!658 = metadata !{i32 580, i32 36, metadata !659, null}
!659 = metadata !{i32 786443, metadata !620, i32 579, i32 3, metadata !75, i32 22} ; [ DW_TAG_lexical_block ]
!660 = metadata !{i32 786688, metadata !659, metadata !"mask", metadata !75, i32 580, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!661 = metadata !{i32 581, i32 49, metadata !659, null}
!662 = metadata !{i32 582, i32 5, metadata !659, null}
!663 = metadata !{i32 583, i32 5, metadata !659, null}
!664 = metadata !{i32 588, i32 8, metadata !665, null}
!665 = metadata !{i32 786443, metadata !620, i32 588, i32 3, metadata !75, i32 23} ; [ DW_TAG_lexical_block ]
!666 = metadata !{i32 588, i32 22, metadata !665, null}
!667 = metadata !{i32 589, i32 10, metadata !668, null}
!668 = metadata !{i32 786443, metadata !669, i32 589, i32 5, metadata !75, i32 25} ; [ DW_TAG_lexical_block ]
!669 = metadata !{i32 786443, metadata !665, i32 588, i32 27, metadata !75, i32 24} ; [ DW_TAG_lexical_block ]
!670 = metadata !{i32 589, i32 24, metadata !668, null}
!671 = metadata !{i32 595, i32 41, metadata !672, null}
!672 = metadata !{i32 786443, metadata !673, i32 594, i32 14, metadata !75, i32 28} ; [ DW_TAG_lexical_block ]
!673 = metadata !{i32 786443, metadata !668, i32 589, i32 29, metadata !75, i32 26} ; [ DW_TAG_lexical_block ]
!674 = metadata !{i32 590, i32 7, metadata !673, null}
!675 = metadata !{i32 591, i32 41, metadata !676, null}
!676 = metadata !{i32 786443, metadata !673, i32 590, i32 25, metadata !75, i32 27} ; [ DW_TAG_lexical_block ]
!677 = metadata !{i32 786688, metadata !676, metadata !"carry", metadata !75, i32 591, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!678 = metadata !{i32 592, i32 9, metadata !676, null}
!679 = metadata !{i32 593, i32 9, metadata !676, null}
!680 = metadata !{i32 594, i32 7, metadata !676, null}
!681 = metadata !{i32 786688, metadata !672, metadata !"carry", metadata !75, i32 595, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!682 = metadata !{i32 596, i32 9, metadata !672, null}
!683 = metadata !{i32 597, i32 9, metadata !672, null}
!684 = metadata !{i32 602, i32 39, metadata !685, null}
!685 = metadata !{i32 786443, metadata !669, i32 601, i32 5, metadata !75, i32 29} ; [ DW_TAG_lexical_block ]
!686 = metadata !{i32 603, i32 7, metadata !685, null}
!687 = metadata !{i32 604, i32 7, metadata !685, null}
!688 = metadata !{i32 786689, metadata !689, metadata !"a", metadata !75, i32 16777730, metadata !96, i32 0, metadata !692} ; [ DW_TAG_arg_variable ]
!689 = metadata !{i32 786478, i32 0, metadata !75, metadata !"s32_gte", metadata !"s32_gte", metadata !"", metadata !75, i32 514, metadata !690, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 514} ; [ DW_TAG_subprogram ]
!690 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !691, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!691 = metadata !{metadata !96, metadata !96, metadata !96}
!692 = metadata !{i32 618, i32 10, metadata !620, null}
!693 = metadata !{i32 514, i32 24, metadata !689, metadata !692}
!694 = metadata !{i32 515, i32 3, metadata !695, metadata !692}
!695 = metadata !{i32 786443, metadata !689, i32 514, i32 34, metadata !75, i32 39} ; [ DW_TAG_lexical_block ]
!696 = metadata !{i32 517, i32 3, metadata !695, metadata !692}
!697 = metadata !{i32 786688, metadata !620, metadata !"mask", metadata !75, i32 529, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!698 = metadata !{i32 619, i32 8, metadata !699, null}
!699 = metadata !{i32 786443, metadata !620, i32 619, i32 3, metadata !75, i32 30} ; [ DW_TAG_lexical_block ]
!700 = metadata !{i32 623, i32 15, metadata !701, null}
!701 = metadata !{i32 786443, metadata !702, i32 622, i32 12, metadata !75, i32 33} ; [ DW_TAG_lexical_block ]
!702 = metadata !{i32 786443, metadata !699, i32 619, i32 28, metadata !75, i32 31} ; [ DW_TAG_lexical_block ]
!703 = metadata !{i32 786689, metadata !704, metadata !"a", metadata !75, i32 16777718, metadata !96, i32 0, metadata !700} ; [ DW_TAG_arg_variable ]
!704 = metadata !{i32 786478, i32 0, metadata !75, metadata !"s32_eq", metadata !"s32_eq", metadata !"", metadata !75, i32 502, metadata !690, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 502} ; [ DW_TAG_subprogram ]
!705 = metadata !{i32 502, i32 23, metadata !704, metadata !700}
!706 = metadata !{i32 503, i32 3, metadata !707, metadata !700}
!707 = metadata !{i32 786443, metadata !704, i32 502, i32 33, metadata !75, i32 38} ; [ DW_TAG_lexical_block ]
!708 = metadata !{i32 504, i32 3, metadata !707, metadata !700}
!709 = metadata !{i32 505, i32 3, metadata !707, metadata !700}
!710 = metadata !{i32 506, i32 3, metadata !707, metadata !700}
!711 = metadata !{i32 507, i32 3, metadata !707, metadata !700}
!712 = metadata !{i32 508, i32 3, metadata !707, metadata !700}
!713 = metadata !{i32 786689, metadata !704, metadata !"a", metadata !75, i32 16777718, metadata !96, i32 0, metadata !714} ; [ DW_TAG_arg_variable ]
!714 = metadata !{i32 621, i32 15, metadata !715, null}
!715 = metadata !{i32 786443, metadata !702, i32 620, i32 23, metadata !75, i32 32} ; [ DW_TAG_lexical_block ]
!716 = metadata !{i32 502, i32 23, metadata !704, metadata !714}
!717 = metadata !{i32 503, i32 3, metadata !707, metadata !714}
!718 = metadata !{i32 504, i32 3, metadata !707, metadata !714}
!719 = metadata !{i32 505, i32 3, metadata !707, metadata !714}
!720 = metadata !{i32 506, i32 3, metadata !707, metadata !714}
!721 = metadata !{i32 507, i32 3, metadata !707, metadata !714}
!722 = metadata !{i32 508, i32 3, metadata !707, metadata !714}
!723 = metadata !{i32 509, i32 3, metadata !707, metadata !700}
!724 = metadata !{i32 619, i32 23, metadata !699, null}
!725 = metadata !{i32 629, i32 3, metadata !620, null}
!726 = metadata !{i32 631, i32 8, metadata !727, null}
!727 = metadata !{i32 786443, metadata !620, i32 631, i32 3, metadata !75, i32 34} ; [ DW_TAG_lexical_block ]
!728 = metadata !{i32 635, i32 7, metadata !729, null}
!729 = metadata !{i32 786443, metadata !730, i32 634, i32 12, metadata !75, i32 37} ; [ DW_TAG_lexical_block ]
!730 = metadata !{i32 786443, metadata !727, i32 631, i32 28, metadata !75, i32 35} ; [ DW_TAG_lexical_block ]
!731 = metadata !{i32 632, i32 5, metadata !730, null}
!732 = metadata !{i32 631, i32 23, metadata !727, null}
!733 = metadata !{i32 639, i32 3, metadata !620, null}
!734 = metadata !{i32 640, i32 3, metadata !620, null}
!735 = metadata !{i32 641, i32 3, metadata !620, null}
!736 = metadata !{i32 642, i32 3, metadata !620, null}
!737 = metadata !{i32 643, i32 3, metadata !620, null}
!738 = metadata !{i32 644, i32 3, metadata !620, null}
!739 = metadata !{i32 645, i32 3, metadata !620, null}
!740 = metadata !{i32 646, i32 3, metadata !620, null}
!741 = metadata !{i32 653, i32 3, metadata !620, null}
!742 = metadata !{i32 654, i32 3, metadata !620, null}
!743 = metadata !{i32 654, i32 36, metadata !620, null}
!744 = metadata !{i32 654, i32 75, metadata !620, null}
!745 = metadata !{i32 654, i32 115, metadata !620, null}
!746 = metadata !{i32 655, i32 3, metadata !620, null}
!747 = metadata !{i32 655, i32 36, metadata !620, null}
!748 = metadata !{i32 655, i32 75, metadata !620, null}
!749 = metadata !{i32 655, i32 115, metadata !620, null}
!750 = metadata !{i32 656, i32 3, metadata !620, null}
!751 = metadata !{i32 656, i32 36, metadata !620, null}
!752 = metadata !{i32 656, i32 75, metadata !620, null}
!753 = metadata !{i32 656, i32 115, metadata !620, null}
!754 = metadata !{i32 657, i32 3, metadata !620, null}
!755 = metadata !{i32 657, i32 36, metadata !620, null}
!756 = metadata !{i32 657, i32 75, metadata !620, null}
!757 = metadata !{i32 657, i32 115, metadata !620, null}
!758 = metadata !{i32 658, i32 3, metadata !620, null}
!759 = metadata !{i32 658, i32 37, metadata !620, null}
!760 = metadata !{i32 658, i32 77, metadata !620, null}
!761 = metadata !{i32 658, i32 118, metadata !620, null}
!762 = metadata !{i32 659, i32 3, metadata !620, null}
!763 = metadata !{i32 659, i32 37, metadata !620, null}
!764 = metadata !{i32 659, i32 77, metadata !620, null}
!765 = metadata !{i32 659, i32 118, metadata !620, null}
!766 = metadata !{i32 660, i32 3, metadata !620, null}
!767 = metadata !{i32 660, i32 37, metadata !620, null}
!768 = metadata !{i32 660, i32 77, metadata !620, null}
!769 = metadata !{i32 660, i32 118, metadata !620, null}
!770 = metadata !{i32 661, i32 3, metadata !620, null}
!771 = metadata !{i32 661, i32 37, metadata !620, null}
!772 = metadata !{i32 661, i32 77, metadata !620, null}
!773 = metadata !{i32 661, i32 118, metadata !620, null}
!774 = metadata !{i32 662, i32 3, metadata !620, null}
!775 = metadata !{i32 662, i32 37, metadata !620, null}
!776 = metadata !{i32 662, i32 77, metadata !620, null}
!777 = metadata !{i32 662, i32 118, metadata !620, null}
!778 = metadata !{i32 663, i32 3, metadata !620, null}
!779 = metadata !{i32 663, i32 37, metadata !620, null}
!780 = metadata !{i32 663, i32 77, metadata !620, null}
!781 = metadata !{i32 663, i32 118, metadata !620, null}
!782 = metadata !{i32 665, i32 1, metadata !620, null}
!783 = metadata !{metadata !784}
!784 = metadata !{i32 0, i32 7, metadata !785}
!785 = metadata !{metadata !786}
!786 = metadata !{metadata !"mypublic_in", metadata !787, metadata !"unsigned char", i32 0, i32 7}
!787 = metadata !{metadata !788}
!788 = metadata !{i32 0, i32 31, i32 1}
!789 = metadata !{metadata !790}
!790 = metadata !{i32 0, i32 7, metadata !791}
!791 = metadata !{metadata !792}
!792 = metadata !{metadata !"secret_in", metadata !787, metadata !"unsigned char", i32 0, i32 7}
!793 = metadata !{metadata !794}
!794 = metadata !{i32 0, i32 7, metadata !795}
!795 = metadata !{metadata !796}
!796 = metadata !{metadata !"basepoint_in", metadata !787, metadata !"unsigned char", i32 0, i32 7}
!797 = metadata !{metadata !798}
!798 = metadata !{i32 0, i32 7, metadata !799}
!799 = metadata !{metadata !800}
!800 = metadata !{metadata !"mypublic_out", metadata !787, metadata !"unsigned char", i32 0, i32 7}
!801 = metadata !{metadata !802}
!802 = metadata !{i32 0, i32 7, metadata !803}
!803 = metadata !{metadata !804}
!804 = metadata !{metadata !"secret_out", metadata !787, metadata !"unsigned char", i32 0, i32 7}
!805 = metadata !{metadata !806}
!806 = metadata !{i32 0, i32 7, metadata !807}
!807 = metadata !{metadata !808}
!808 = metadata !{metadata !"basepoint_out", metadata !787, metadata !"unsigned char", i32 0, i32 7}
!809 = metadata !{metadata !810}
!810 = metadata !{i32 0, i32 31, metadata !811}
!811 = metadata !{metadata !812}
!812 = metadata !{metadata !"return", metadata !813, metadata !"int", i32 0, i32 31}
!813 = metadata !{metadata !814}
!814 = metadata !{i32 0, i32 1, i32 0}
!815 = metadata !{i32 786689, metadata !816, metadata !"mypublic_in", null, i32 954, metadata !614, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!816 = metadata !{i32 786478, i32 0, metadata !75, metadata !"curve25519_donna", metadata !"curve25519_donna", metadata !"", metadata !75, i32 954, metadata !817, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 955} ; [ DW_TAG_subprogram ]
!817 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !818, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!818 = metadata !{metadata !98, metadata !613, metadata !581, metadata !581, metadata !613, metadata !581, metadata !581}
!819 = metadata !{i32 954, i32 21, metadata !816, null}
!820 = metadata !{i32 786689, metadata !816, metadata !"secret_in", null, i32 954, metadata !588, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!821 = metadata !{i32 954, i32 47, metadata !816, null}
!822 = metadata !{i32 786689, metadata !816, metadata !"basepoint_in", null, i32 954, metadata !588, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!823 = metadata !{i32 954, i32 71, metadata !816, null}
!824 = metadata !{i32 786689, metadata !816, metadata !"mypublic_out", null, i32 955, metadata !614, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!825 = metadata !{i32 955, i32 9, metadata !816, null}
!826 = metadata !{i32 786689, metadata !816, metadata !"secret_out", null, i32 955, metadata !588, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!827 = metadata !{i32 955, i32 36, metadata !816, null}
!828 = metadata !{i32 786689, metadata !816, metadata !"basepoint_out", null, i32 955, metadata !588, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!829 = metadata !{i32 955, i32 61, metadata !816, null}
!830 = metadata !{i32 956, i32 1, metadata !831, null}
!831 = metadata !{i32 786443, metadata !816, i32 955, i32 80, metadata !75, i32 9} ; [ DW_TAG_lexical_block ]
!832 = metadata !{i32 963, i32 1, metadata !831, null}
!833 = metadata !{i32 964, i32 1, metadata !831, null}
!834 = metadata !{i32 965, i32 1, metadata !831, null}
!835 = metadata !{i32 966, i32 1, metadata !831, null}
!836 = metadata !{i32 967, i32 1, metadata !831, null}
!837 = metadata !{i32 786688, metadata !831, metadata !"bp", metadata !75, i32 968, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!838 = metadata !{i32 968, i32 7, metadata !831, null}
!839 = metadata !{i32 786688, metadata !831, metadata !"x", metadata !75, i32 968, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!840 = metadata !{i32 968, i32 15, metadata !831, null}
!841 = metadata !{i32 786688, metadata !831, metadata !"z", metadata !75, i32 968, metadata !842, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!842 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 704, i64 64, i32 0, i32 0, metadata !79, metadata !159, i32 0, i32 0} ; [ DW_TAG_array_type ]
!843 = metadata !{i32 968, i32 22, metadata !831, null}
!844 = metadata !{i32 786688, metadata !831, metadata !"zmone", metadata !75, i32 968, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!845 = metadata !{i32 968, i32 29, metadata !831, null}
!846 = metadata !{i32 786688, metadata !831, metadata !"e", metadata !75, i32 969, metadata !847, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!847 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !584, metadata !589, i32 0, i32 0} ; [ DW_TAG_array_type ]
!848 = metadata !{i32 969, i32 11, metadata !831, null}
!849 = metadata !{i32 969, i32 22, metadata !831, null}
!850 = metadata !{i32 786688, metadata !831, metadata !"mypublic", metadata !75, i32 971, metadata !851, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!851 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !585, metadata !589, i32 0, i32 0} ; [ DW_TAG_array_type ]
!852 = metadata !{i32 971, i32 17, metadata !831, null}
!853 = metadata !{i32 786688, metadata !831, metadata !"secret", metadata !75, i32 971, metadata !851, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!854 = metadata !{i32 971, i32 31, metadata !831, null}
!855 = metadata !{i32 786688, metadata !831, metadata !"basepoint", metadata !75, i32 971, metadata !851, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!856 = metadata !{i32 971, i32 43, metadata !831, null}
!857 = metadata !{i32 973, i32 3, metadata !831, null}
!858 = metadata !{i32 974, i32 3, metadata !831, null}
!859 = metadata !{i32 975, i32 3, metadata !831, null}
!860 = metadata !{i32 977, i32 8, metadata !861, null}
!861 = metadata !{i32 786443, metadata !831, i32 977, i32 3, metadata !75, i32 10} ; [ DW_TAG_lexical_block ]
!862 = metadata !{i32 977, i32 23, metadata !861, null}
!863 = metadata !{i32 978, i32 4, metadata !864, null}
!864 = metadata !{i32 786443, metadata !861, i32 977, i32 27, metadata !75, i32 11} ; [ DW_TAG_lexical_block ]
!865 = metadata !{i32 786688, metadata !831, metadata !"i", metadata !75, i32 970, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!866 = metadata !{i32 980, i32 3, metadata !831, null}
!867 = metadata !{i32 981, i32 3, metadata !831, null}
!868 = metadata !{i32 982, i32 3, metadata !831, null}
!869 = metadata !{i32 984, i32 3, metadata !831, null}
!870 = metadata !{i32 985, i32 3, metadata !831, null}
!871 = metadata !{i32 986, i32 3, metadata !831, null}
!872 = metadata !{i32 987, i32 3, metadata !831, null}
!873 = metadata !{i32 988, i32 3, metadata !831, null}
!874 = metadata !{i32 990, i32 3, metadata !831, null}
!875 = metadata !{i32 991, i32 3, metadata !831, null}
!876 = metadata !{i32 992, i32 3, metadata !831, null}
!877 = metadata !{i32 995, i32 3, metadata !831, null}
!878 = metadata !{i32 786689, metadata !879, metadata !"out", null, i32 885, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!879 = metadata !{i32 786478, i32 0, metadata !75, metadata !"crecip", metadata !"crecip", metadata !"", metadata !75, i32 885, metadata !112, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 885} ; [ DW_TAG_subprogram ]
!880 = metadata !{i32 885, i32 14, metadata !879, null}
!881 = metadata !{i32 786689, metadata !879, metadata !"z", null, i32 885, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!882 = metadata !{i32 885, i32 31, metadata !879, null}
!883 = metadata !{i32 886, i32 1, metadata !884, null}
!884 = metadata !{i32 786443, metadata !879, i32 885, i32 34, metadata !75, i32 49} ; [ DW_TAG_lexical_block ]
!885 = metadata !{i32 887, i32 1, metadata !884, null}
!886 = metadata !{i32 786688, metadata !884, metadata !"z2", metadata !75, i32 888, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!887 = metadata !{i32 888, i32 7, metadata !884, null}
!888 = metadata !{i32 786688, metadata !884, metadata !"z9", metadata !75, i32 889, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!889 = metadata !{i32 889, i32 8, metadata !884, null}
!890 = metadata !{i32 786688, metadata !884, metadata !"z11", metadata !75, i32 890, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!891 = metadata !{i32 890, i32 8, metadata !884, null}
!892 = metadata !{i32 786688, metadata !884, metadata !"z2_5_0", metadata !75, i32 891, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!893 = metadata !{i32 891, i32 8, metadata !884, null}
!894 = metadata !{i32 786688, metadata !884, metadata !"z2_10_0", metadata !75, i32 892, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!895 = metadata !{i32 892, i32 8, metadata !884, null}
!896 = metadata !{i32 786688, metadata !884, metadata !"z2_20_0", metadata !75, i32 893, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!897 = metadata !{i32 893, i32 8, metadata !884, null}
!898 = metadata !{i32 786688, metadata !884, metadata !"z2_50_0", metadata !75, i32 894, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!899 = metadata !{i32 894, i32 8, metadata !884, null}
!900 = metadata !{i32 786688, metadata !884, metadata !"z2_100_0", metadata !75, i32 895, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!901 = metadata !{i32 895, i32 8, metadata !884, null}
!902 = metadata !{i32 786688, metadata !884, metadata !"t0", metadata !75, i32 896, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!903 = metadata !{i32 896, i32 8, metadata !884, null}
!904 = metadata !{i32 786688, metadata !884, metadata !"t1", metadata !75, i32 897, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!905 = metadata !{i32 897, i32 8, metadata !884, null}
!906 = metadata !{i32 900, i32 11, metadata !884, null}
!907 = metadata !{i32 901, i32 11, metadata !884, null}
!908 = metadata !{i32 902, i32 11, metadata !884, null}
!909 = metadata !{i32 903, i32 11, metadata !884, null}
!910 = metadata !{i32 904, i32 12, metadata !884, null}
!911 = metadata !{i32 905, i32 12, metadata !884, null}
!912 = metadata !{i32 906, i32 24, metadata !884, null}
!913 = metadata !{i32 908, i32 19, metadata !884, null}
!914 = metadata !{i32 909, i32 19, metadata !884, null}
!915 = metadata !{i32 910, i32 19, metadata !884, null}
!916 = metadata !{i32 911, i32 19, metadata !884, null}
!917 = metadata !{i32 912, i32 20, metadata !884, null}
!918 = metadata !{i32 913, i32 20, metadata !884, null}
!919 = metadata !{i32 915, i32 20, metadata !884, null}
!920 = metadata !{i32 916, i32 20, metadata !884, null}
!921 = metadata !{i32 917, i32 26, metadata !922, null}
!922 = metadata !{i32 786443, metadata !884, i32 917, i32 21, metadata !75, i32 50} ; [ DW_TAG_lexical_block ]
!923 = metadata !{i32 917, i32 49, metadata !924, null}
!924 = metadata !{i32 786443, metadata !922, i32 917, i32 47, metadata !75, i32 51} ; [ DW_TAG_lexical_block ]
!925 = metadata !{i32 917, i32 65, metadata !924, null}
!926 = metadata !{i32 917, i32 39, metadata !922, null}
!927 = metadata !{i32 786688, metadata !884, metadata !"i", metadata !75, i32 898, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!928 = metadata !{i32 918, i32 20, metadata !884, null}
!929 = metadata !{i32 920, i32 20, metadata !884, null}
!930 = metadata !{i32 921, i32 20, metadata !884, null}
!931 = metadata !{i32 922, i32 26, metadata !932, null}
!932 = metadata !{i32 786443, metadata !884, i32 922, i32 21, metadata !75, i32 52} ; [ DW_TAG_lexical_block ]
!933 = metadata !{i32 922, i32 49, metadata !934, null}
!934 = metadata !{i32 786443, metadata !932, i32 922, i32 47, metadata !75, i32 53} ; [ DW_TAG_lexical_block ]
!935 = metadata !{i32 922, i32 65, metadata !934, null}
!936 = metadata !{i32 922, i32 39, metadata !932, null}
!937 = metadata !{i32 923, i32 20, metadata !884, null}
!938 = metadata !{i32 925, i32 20, metadata !884, null}
!939 = metadata !{i32 926, i32 20, metadata !884, null}
!940 = metadata !{i32 927, i32 26, metadata !941, null}
!941 = metadata !{i32 786443, metadata !884, i32 927, i32 21, metadata !75, i32 54} ; [ DW_TAG_lexical_block ]
!942 = metadata !{i32 927, i32 49, metadata !943, null}
!943 = metadata !{i32 786443, metadata !941, i32 927, i32 47, metadata !75, i32 55} ; [ DW_TAG_lexical_block ]
!944 = metadata !{i32 927, i32 65, metadata !943, null}
!945 = metadata !{i32 927, i32 39, metadata !941, null}
!946 = metadata !{i32 928, i32 20, metadata !884, null}
!947 = metadata !{i32 930, i32 20, metadata !884, null}
!948 = metadata !{i32 931, i32 20, metadata !884, null}
!949 = metadata !{i32 932, i32 27, metadata !950, null}
!950 = metadata !{i32 786443, metadata !884, i32 932, i32 22, metadata !75, i32 56} ; [ DW_TAG_lexical_block ]
!951 = metadata !{i32 932, i32 50, metadata !952, null}
!952 = metadata !{i32 786443, metadata !950, i32 932, i32 48, metadata !75, i32 57} ; [ DW_TAG_lexical_block ]
!953 = metadata !{i32 932, i32 66, metadata !952, null}
!954 = metadata !{i32 932, i32 40, metadata !950, null}
!955 = metadata !{i32 933, i32 21, metadata !884, null}
!956 = metadata !{i32 935, i32 21, metadata !884, null}
!957 = metadata !{i32 936, i32 21, metadata !884, null}
!958 = metadata !{i32 937, i32 28, metadata !959, null}
!959 = metadata !{i32 786443, metadata !884, i32 937, i32 23, metadata !75, i32 58} ; [ DW_TAG_lexical_block ]
!960 = metadata !{i32 937, i32 52, metadata !961, null}
!961 = metadata !{i32 786443, metadata !959, i32 937, i32 50, metadata !75, i32 59} ; [ DW_TAG_lexical_block ]
!962 = metadata !{i32 937, i32 68, metadata !961, null}
!963 = metadata !{i32 937, i32 42, metadata !959, null}
!964 = metadata !{i32 938, i32 21, metadata !884, null}
!965 = metadata !{i32 940, i32 21, metadata !884, null}
!966 = metadata !{i32 941, i32 21, metadata !884, null}
!967 = metadata !{i32 942, i32 27, metadata !968, null}
!968 = metadata !{i32 786443, metadata !884, i32 942, i32 22, metadata !75, i32 60} ; [ DW_TAG_lexical_block ]
!969 = metadata !{i32 942, i32 50, metadata !970, null}
!970 = metadata !{i32 786443, metadata !968, i32 942, i32 48, metadata !75, i32 61} ; [ DW_TAG_lexical_block ]
!971 = metadata !{i32 942, i32 66, metadata !970, null}
!972 = metadata !{i32 942, i32 40, metadata !968, null}
!973 = metadata !{i32 943, i32 21, metadata !884, null}
!974 = metadata !{i32 945, i32 21, metadata !884, null}
!975 = metadata !{i32 946, i32 21, metadata !884, null}
!976 = metadata !{i32 947, i32 21, metadata !884, null}
!977 = metadata !{i32 948, i32 21, metadata !884, null}
!978 = metadata !{i32 949, i32 21, metadata !884, null}
!979 = metadata !{i32 950, i32 20, metadata !884, null}
!980 = metadata !{i32 951, i32 1, metadata !884, null}
!981 = metadata !{i32 786688, metadata !982, metadata !"nqpqz", metadata !75, i32 797, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!982 = metadata !{i32 786443, metadata !983, i32 792, i32 65, metadata !75, i32 64} ; [ DW_TAG_lexical_block ]
!983 = metadata !{i32 786478, i32 0, metadata !75, metadata !"cmult", metadata !"cmult", metadata !"", metadata !75, i32 792, metadata !984, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 792} ; [ DW_TAG_subprogram ]
!984 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !985, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!985 = metadata !{null, metadata !78, metadata !78, metadata !581, metadata !114}
!986 = metadata !{i32 797, i32 25, metadata !982, null}
!987 = metadata !{i32 786689, metadata !250, metadata !"src", null, i32 59, metadata !86, i32 0, metadata !988} ; [ DW_TAG_arg_variable ]
!988 = metadata !{i32 877, i32 3, metadata !982, null}
!989 = metadata !{i32 59, i32 31, metadata !250, metadata !988}
!990 = metadata !{i32 786688, metadata !982, metadata !"t", metadata !75, i32 797, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!991 = metadata !{i32 797, i32 72, metadata !982, null}
!992 = metadata !{i32 786688, metadata !982, metadata !"nqpqx2", metadata !75, i32 800, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!993 = metadata !{i32 800, i32 8, metadata !982, null}
!994 = metadata !{i32 786688, metadata !982, metadata !"nqpqz2", metadata !75, i32 800, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!995 = metadata !{i32 800, i32 26, metadata !982, null}
!996 = metadata !{i32 786688, metadata !982, metadata !"nqz2", metadata !75, i32 800, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!997 = metadata !{i32 800, i32 60, metadata !982, null}
!998 = metadata !{i32 786689, metadata !983, metadata !"resultx", null, i32 792, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!999 = metadata !{i32 792, i32 13, metadata !983, null}
!1000 = metadata !{i32 786689, metadata !983, metadata !"resultz", null, i32 792, metadata !617, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1001 = metadata !{i32 792, i32 28, metadata !983, null}
!1002 = metadata !{i32 786689, metadata !983, metadata !"n", null, i32 792, metadata !588, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1003 = metadata !{i32 792, i32 47, metadata !983, null}
!1004 = metadata !{i32 786689, metadata !983, metadata !"q", null, i32 792, metadata !450, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1005 = metadata !{i32 792, i32 62, metadata !983, null}
!1006 = metadata !{i32 793, i32 1, metadata !982, null}
!1007 = metadata !{i32 794, i32 1, metadata !982, null}
!1008 = metadata !{i32 786688, metadata !982, metadata !"nqpqx", metadata !75, i32 797, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1009 = metadata !{i32 797, i32 8, metadata !982, null}
!1010 = metadata !{i32 797, i32 83, metadata !982, null}
!1011 = metadata !{i32 786688, metadata !982, metadata !"nqx", metadata !75, i32 797, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1012 = metadata !{i32 797, i32 42, metadata !982, null}
!1013 = metadata !{i32 786688, metadata !982, metadata !"nqz", metadata !75, i32 797, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1014 = metadata !{i32 797, i32 57, metadata !982, null}
!1015 = metadata !{i32 800, i32 74, metadata !982, null}
!1016 = metadata !{i32 786688, metadata !982, metadata !"nqx2", metadata !75, i32 800, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1017 = metadata !{i32 800, i32 44, metadata !982, null}
!1018 = metadata !{i32 61, i32 6, metadata !261, metadata !1019}
!1019 = metadata !{i32 804, i32 3, metadata !982, null}
!1020 = metadata !{i32 61, i32 18, metadata !261, metadata !1019}
!1021 = metadata !{i32 806, i32 8, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !982, i32 806, i32 3, metadata !75, i32 65} ; [ DW_TAG_lexical_block ]
!1023 = metadata !{i32 62, i32 3, metadata !265, metadata !1019}
!1024 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !75, i32 60, metadata !98, i32 0, metadata !1019} ; [ DW_TAG_auto_variable ]
!1025 = metadata !{i32 806, i32 23, metadata !1022, null}
!1026 = metadata !{i32 786688, metadata !982, metadata !"i", metadata !75, i32 802, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1027 = metadata !{i32 61, i32 6, metadata !261, metadata !988}
!1028 = metadata !{i32 807, i32 24, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !1022, i32 806, i32 28, metadata !75, i32 66} ; [ DW_TAG_lexical_block ]
!1030 = metadata !{i32 786688, metadata !1029, metadata !"byte", metadata !75, i32 807, metadata !583, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1031 = metadata !{i32 808, i32 10, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1029, i32 808, i32 5, metadata !75, i32 67} ; [ DW_TAG_lexical_block ]
!1033 = metadata !{i32 808, i32 24, metadata !1032, null}
!1034 = metadata !{i32 811, i32 7, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1032, i32 808, i32 29, metadata !75, i32 68} ; [ DW_TAG_lexical_block ]
!1036 = metadata !{i32 812, i32 7, metadata !1035, null}
!1037 = metadata !{i32 813, i32 7, metadata !1035, null}
!1038 = metadata !{i32 818, i32 7, metadata !1035, null}
!1039 = metadata !{i32 819, i32 7, metadata !1035, null}
!1040 = metadata !{i32 822, i32 7, metadata !1035, null}
!1041 = metadata !{i32 833, i32 7, metadata !1035, null}
!1042 = metadata !{i32 836, i32 7, metadata !1035, null}
!1043 = metadata !{i32 839, i32 7, metadata !1035, null}
!1044 = metadata !{i32 842, i32 7, metadata !1035, null}
!1045 = metadata !{i32 845, i32 7, metadata !1035, null}
!1046 = metadata !{i32 848, i32 7, metadata !1035, null}
!1047 = metadata !{i32 851, i32 7, metadata !1035, null}
!1048 = metadata !{i32 854, i32 7, metadata !1035, null}
!1049 = metadata !{i32 857, i32 7, metadata !1035, null}
!1050 = metadata !{i32 860, i32 7, metadata !1035, null}
!1051 = metadata !{i32 863, i32 7, metadata !1035, null}
!1052 = metadata !{i32 873, i32 7, metadata !1035, null}
!1053 = metadata !{i32 786688, metadata !982, metadata !"j", metadata !75, i32 802, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1054 = metadata !{i32 61, i32 18, metadata !261, metadata !988}
!1055 = metadata !{i32 61, i32 6, metadata !261, metadata !1056}
!1056 = metadata !{i32 878, i32 3, metadata !982, null}
!1057 = metadata !{i32 62, i32 3, metadata !265, metadata !988}
!1058 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !75, i32 60, metadata !98, i32 0, metadata !988} ; [ DW_TAG_auto_variable ]
!1059 = metadata !{i32 61, i32 18, metadata !261, metadata !1056}
!1060 = metadata !{i32 62, i32 3, metadata !265, metadata !1056}
!1061 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !75, i32 60, metadata !98, i32 0, metadata !1056} ; [ DW_TAG_auto_variable ]
!1062 = metadata !{i32 879, i32 1, metadata !982, null}
!1063 = metadata !{i32 786689, metadata !1064, metadata !"dst", null, i32 66, metadata !851, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1064 = metadata !{i32 786478, i32 0, metadata !75, metadata !"_memcpy_char", metadata !"_memcpy_char", metadata !"", metadata !75, i32 66, metadata !1065, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 66} ; [ DW_TAG_subprogram ]
!1065 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1066, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1066 = metadata !{null, metadata !1067, metadata !1067, metadata !108}
!1067 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !585} ; [ DW_TAG_pointer_type ]
!1068 = metadata !{i32 66, i32 34, metadata !1064, null}
!1069 = metadata !{i32 786689, metadata !1064, metadata !"src", null, i32 66, metadata !851, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1070 = metadata !{i32 66, i32 54, metadata !1064, null}
!1071 = metadata !{i32 68, i32 6, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1073, i32 68, i32 2, metadata !75, i32 4} ; [ DW_TAG_lexical_block ]
!1073 = metadata !{i32 786443, metadata !1064, i32 66, i32 76, metadata !75, i32 3} ; [ DW_TAG_lexical_block ]
!1074 = metadata !{i32 68, i32 18, metadata !1072, null}
!1075 = metadata !{i32 69, i32 3, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1072, i32 68, i32 22, metadata !75, i32 5} ; [ DW_TAG_lexical_block ]
!1077 = metadata !{i32 786688, metadata !1073, metadata !"i", metadata !75, i32 67, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1078 = metadata !{i32 71, i32 1, metadata !1073, null}
!1079 = metadata !{i32 61, i32 6, metadata !261, null}
!1080 = metadata !{i32 61, i32 18, metadata !261, null}
!1081 = metadata !{i32 62, i32 3, metadata !265, null}
!1082 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !75, i32 60, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1083 = metadata !{i32 64, i32 1, metadata !262, null}
!1084 = metadata !{i32 786689, metadata !250, metadata !"dst", null, i32 59, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1085 = metadata !{i32 59, i32 20, metadata !250, null}
!1086 = metadata !{i32 786689, metadata !250, metadata !"src", null, i32 59, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1087 = metadata !{i32 59, i32 31, metadata !250, null}
