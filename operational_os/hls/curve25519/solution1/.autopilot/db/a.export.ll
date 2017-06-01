; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/curve25519/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memset_t_str = internal unnamed_addr constant [9 x i8] c"memset_t\00"
@memset_nqz2_str = internal unnamed_addr constant [12 x i8] c"memset_nqz2\00"
@memset_nqz_str = internal unnamed_addr constant [11 x i8] c"memset_nqz\00"
@memset_nqx2_str = internal unnamed_addr constant [12 x i8] c"memset_nqx2\00"
@memset_nqx_str = internal unnamed_addr constant [11 x i8] c"memset_nqx\00"
@memset_nqpqz2_str = internal unnamed_addr constant [14 x i8] c"memset_nqpqz2\00"
@memset_nqpqz_str = internal unnamed_addr constant [13 x i8] c"memset_nqpqz\00"
@memset_nqpqx2_str = internal unnamed_addr constant [14 x i8] c"memset_nqpqx2\00"
@memset_nqpqx_str = internal unnamed_addr constant [13 x i8] c"memset_nqpqx\00"
@memset_e_str = internal unnamed_addr constant [9 x i8] c"memset_e\00"
@curve25519_donna_str = internal unnamed_addr constant [17 x i8] c"curve25519_donna\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str8 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@p_str7 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@p_str6 = private unnamed_addr constant [9 x i8] c"fproduct\00", align 1
@p_str5 = private unnamed_addr constant [7 x i8] c"crecip\00", align 1
@p_str4 = private unnamed_addr constant [14 x i8] c"fsquare_inner\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"fsquare\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"cmult\00", align 1
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define internal fastcc void @swap_conditional([19 x i64]* nocapture %a, [19 x i64]* nocapture %b, i1 %iswap) {
  %iswap_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %iswap)
  %swap_cast = select i1 %iswap_read, i32 -1, i32 0
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]
  %tmp_1 = icmp eq i4 %i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_1 = add i4 %i, 1
  br i1 %tmp_1, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_2 = zext i4 %i to i64
  %a_addr = getelementptr [19 x i64]* %a, i64 0, i64 %tmp_2
  %a_load = load i64* %a_addr, align 8
  %tmp = trunc i64 %a_load to i32
  %b_addr = getelementptr [19 x i64]* %b, i64 0, i64 %tmp_2
  %b_load = load i64* %b_addr, align 8
  %tmp_3 = trunc i64 %b_load to i32
  %tmp_5 = xor i32 %tmp_3, %tmp
  %x = and i32 %tmp_5, %swap_cast
  %tmp_6 = xor i32 %x, %tmp
  %tmp_7 = sext i32 %tmp_6 to i64
  store i64 %tmp_7, i64* %a_addr, align 8
  %tmp_9 = xor i32 %tmp_3, %x
  %tmp_s = sext i32 %tmp_9 to i64
  store i64 %tmp_s, i64* %b_addr, align 8
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @fsum([19 x i64]* nocapture %output_r, [19 x i64]* nocapture %in_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_2, %2 ]
  %tmp = icmp ult i4 %i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_s = zext i4 %i to i64
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 %tmp_s
  %output_load = load i64* %output_addr, align 8
  %in_addr = getelementptr [19 x i64]* %in_r, i64 0, i64 %tmp_s
  %in_load = load i64* %in_addr, align 8
  %tmp_6 = add nsw i64 %in_load, %output_load
  store i64 %tmp_6, i64* %output_addr, align 8
  %tmp_7 = or i4 %i, 1
  %tmp_8 = zext i4 %tmp_7 to i64
  %output_addr_1 = getelementptr [19 x i64]* %output_r, i64 0, i64 %tmp_8
  %output_load_1 = load i64* %output_addr_1, align 8
  %in_addr_1 = getelementptr [19 x i64]* %in_r, i64 0, i64 %tmp_8
  %in_load_1 = load i64* %in_addr_1, align 8
  %tmp_9 = add nsw i64 %in_load_1, %output_load_1
  store i64 %tmp_9, i64* %output_addr_1, align 8
  %i_2 = add i4 %i, 2
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @fsquare_inner.2([19 x i64]* nocapture %output_r, [19 x i64]* nocapture %in_r) {
  %in_addr = getelementptr [19 x i64]* %in_r, i64 0, i64 0
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %in_load = load i64* %in_addr, align 8
  %tmp = trunc i64 %in_load to i32
  %tmp_s = sext i32 %tmp to i64
  %out_1 = mul nsw i64 %tmp_s, %tmp_s
  store i64 %out_1, i64* %output_addr, align 8
  %in_addr_2 = getelementptr [19 x i64]* %in_r, i64 0, i64 1
  %in_load_2 = load i64* %in_addr_2, align 8
  %tmp_7 = trunc i64 %in_load_2 to i32
  %tmp_2 = sext i32 %tmp_7 to i64
  %tmp_8 = sext i32 %tmp to i63
  %tmp_9 = sext i32 %tmp_7 to i63
  %tmp_3 = mul i63 %tmp_9, %tmp_8
  %tmp_5 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_3, i1 false)
  %output_addr_2 = getelementptr [19 x i64]* %output_r, i64 0, i64 1
  store i64 %tmp_5, i64* %output_addr_2, align 8
  %tmp_6 = mul nsw i64 %tmp_2, %tmp_2
  %in_addr_3 = getelementptr [19 x i64]* %in_r, i64 0, i64 2
  %in_load_3 = load i64* %in_addr_3, align 8
  %tmp_12 = trunc i64 %in_load_3 to i32
  %tmp_4 = sext i32 %tmp_12 to i64
  %tmp_1 = mul nsw i64 %tmp_4, %tmp_s
  %tmp_10 = add nsw i64 %tmp_1, %tmp_6
  %tmp_13 = shl i64 %tmp_10, 1
  %output_addr_3 = getelementptr [19 x i64]* %output_r, i64 0, i64 2
  store i64 %tmp_13, i64* %output_addr_3, align 8
  %tmp_11 = mul nsw i64 %tmp_4, %tmp_2
  %in_addr_4 = getelementptr [19 x i64]* %in_r, i64 0, i64 3
  %in_load_4 = load i64* %in_addr_4, align 8
  %tmp_14 = trunc i64 %in_load_4 to i32
  %tmp_15 = sext i32 %tmp_14 to i64
  %tmp_16 = mul nsw i64 %tmp_15, %tmp_s
  %tmp_17 = add nsw i64 %tmp_16, %tmp_11
  %tmp_18 = shl i64 %tmp_17, 1
  %output_addr_4 = getelementptr [19 x i64]* %output_r, i64 0, i64 3
  store i64 %tmp_18, i64* %output_addr_4, align 8
  %tmp_19 = mul nsw i64 %tmp_4, %tmp_4
  %tmp_20 = sext i32 %tmp_7 to i62
  %tmp_21 = sext i32 %tmp_14 to i62
  %tmp_22 = mul i62 %tmp_21, %tmp_20
  %tmp_23 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_22, i2 0)
  %in_addr_5 = getelementptr [19 x i64]* %in_r, i64 0, i64 4
  %in_load_5 = load i64* %in_addr_5, align 8
  %tmp_24 = trunc i64 %in_load_5 to i32
  %tmp_25 = sext i32 %tmp_24 to i64
  %tmp_26 = sext i32 %tmp_24 to i63
  %tmp_27 = mul i63 %tmp_26, %tmp_8
  %tmp_28 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_27, i1 false)
  %tmp1 = add i64 %tmp_28, %tmp_23
  %tmp_29 = add i64 %tmp_19, %tmp1
  %output_addr_5 = getelementptr [19 x i64]* %output_r, i64 0, i64 4
  store i64 %tmp_29, i64* %output_addr_5, align 8
  %tmp_30 = mul nsw i64 %tmp_15, %tmp_4
  %tmp_31 = mul nsw i64 %tmp_25, %tmp_2
  %in_addr_6 = getelementptr [19 x i64]* %in_r, i64 0, i64 5
  %in_load_6 = load i64* %in_addr_6, align 8
  %tmp_32 = trunc i64 %in_load_6 to i32
  %tmp_33 = sext i32 %tmp_32 to i64
  %tmp_34 = mul nsw i64 %tmp_33, %tmp_s
  %tmp2 = add i64 %tmp_34, %tmp_31
  %tmp_35 = add i64 %tmp_30, %tmp2
  %tmp_36 = shl i64 %tmp_35, 1
  %output_addr_6 = getelementptr [19 x i64]* %output_r, i64 0, i64 5
  store i64 %tmp_36, i64* %output_addr_6, align 8
  %tmp_37 = mul nsw i64 %tmp_15, %tmp_15
  %tmp_38 = mul nsw i64 %tmp_25, %tmp_4
  %in_addr_7 = getelementptr [19 x i64]* %in_r, i64 0, i64 6
  %in_load_7 = load i64* %in_addr_7, align 8
  %tmp_39 = trunc i64 %in_load_7 to i32
  %tmp_40 = sext i32 %tmp_39 to i64
  %tmp_41 = mul nsw i64 %tmp_40, %tmp_s
  %tmp_42 = sext i32 %tmp_32 to i62
  %tmp_43 = mul i62 %tmp_42, %tmp_20
  %tmp_44 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_43, i1 false)
  %tmp3 = add i64 %tmp_41, %tmp_38
  %tmp_45 = add i64 %tmp_37, %tmp3
  %tmp_46 = trunc i64 %tmp_45 to i63
  %tmp_47 = add i63 %tmp_44, %tmp_46
  %tmp_48 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_47, i1 false)
  %output_addr_7 = getelementptr [19 x i64]* %output_r, i64 0, i64 6
  store i64 %tmp_48, i64* %output_addr_7, align 8
  %tmp_49 = mul nsw i64 %tmp_25, %tmp_15
  %tmp_50 = mul nsw i64 %tmp_33, %tmp_4
  %tmp_51 = mul nsw i64 %tmp_40, %tmp_2
  %in_addr_8 = getelementptr [19 x i64]* %in_r, i64 0, i64 7
  %in_load_8 = load i64* %in_addr_8, align 8
  %tmp_52 = trunc i64 %in_load_8 to i32
  %tmp_53 = sext i32 %tmp_52 to i64
  %tmp_54 = mul nsw i64 %tmp_53, %tmp_s
  %tmp4 = add i64 %tmp_50, %tmp_49
  %tmp5 = add i64 %tmp_54, %tmp_51
  %tmp_55 = trunc i64 %tmp5 to i63
  %tmp_56 = trunc i64 %tmp4 to i63
  %tmp_57 = add i63 %tmp_55, %tmp_56
  %tmp_58 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_57, i1 false)
  %output_addr_8 = getelementptr [19 x i64]* %output_r, i64 0, i64 7
  store i64 %tmp_58, i64* %output_addr_8, align 8
  %tmp_59 = mul nsw i64 %tmp_25, %tmp_25
  %tmp_60 = mul nsw i64 %tmp_40, %tmp_4
  %in_addr_9 = getelementptr [19 x i64]* %in_r, i64 0, i64 8
  %in_load_9 = load i64* %in_addr_9, align 8
  %tmp_61 = trunc i64 %in_load_9 to i32
  %tmp_62 = sext i32 %tmp_61 to i64
  %tmp_63 = mul nsw i64 %tmp_62, %tmp_s
  %tmp_64 = mul nsw i64 %tmp_53, %tmp_2
  %tmp_65 = mul nsw i64 %tmp_33, %tmp_15
  %tmp_66 = add nsw i64 %tmp_65, %tmp_64
  %tmp_67 = trunc i64 %tmp_66 to i62
  %tmp_68 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_67, i1 false)
  %tmp_69 = add i64 %tmp_63, %tmp_60
  %tmp_70 = trunc i64 %tmp_69 to i63
  %tmp_71 = add i63 %tmp_68, %tmp_70
  %tmp_72 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_71, i1 false)
  %tmp_73 = add nsw i64 %tmp_72, %tmp_59
  %output_addr_9 = getelementptr [19 x i64]* %output_r, i64 0, i64 8
  store i64 %tmp_73, i64* %output_addr_9, align 8
  %tmp_74 = mul nsw i64 %tmp_33, %tmp_25
  %tmp_75 = mul nsw i64 %tmp_40, %tmp_15
  %tmp_76 = mul nsw i64 %tmp_53, %tmp_4
  %tmp_77 = mul nsw i64 %tmp_62, %tmp_2
  %in_addr_10 = getelementptr [19 x i64]* %in_r, i64 0, i64 9
  %in_load_10 = load i64* %in_addr_10, align 8
  %tmp_78 = trunc i64 %in_load_10 to i32
  %tmp_79 = sext i32 %tmp_78 to i64
  %tmp_80 = mul nsw i64 %tmp_79, %tmp_s
  %tmp6 = add i64 %tmp_75, %tmp_74
  %tmp8 = add i64 %tmp_80, %tmp_77
  %tmp7 = add i64 %tmp_76, %tmp8
  %tmp_81 = trunc i64 %tmp7 to i63
  %tmp_82 = trunc i64 %tmp6 to i63
  %tmp_83 = add i63 %tmp_81, %tmp_82
  %tmp_84 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_83, i1 false)
  %output_addr_10 = getelementptr [19 x i64]* %output_r, i64 0, i64 9
  store i64 %tmp_84, i64* %output_addr_10, align 8
  %tmp_85 = mul nsw i64 %tmp_33, %tmp_33
  %tmp_86 = mul nsw i64 %tmp_40, %tmp_25
  %tmp_87 = mul nsw i64 %tmp_62, %tmp_4
  %tmp_88 = mul nsw i64 %tmp_53, %tmp_15
  %tmp_89 = mul nsw i64 %tmp_79, %tmp_2
  %tmp_90 = add nsw i64 %tmp_89, %tmp_88
  %tmp_91 = trunc i64 %tmp_90 to i62
  %tmp_92 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_91, i1 false)
  %tmp9 = add i64 %tmp_87, %tmp_86
  %tmp_93 = add i64 %tmp_85, %tmp9
  %tmp_94 = trunc i64 %tmp_93 to i63
  %tmp_95 = add i63 %tmp_92, %tmp_94
  %tmp_96 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_95, i1 false)
  %output_addr_11 = getelementptr [19 x i64]* %output_r, i64 0, i64 10
  store i64 %tmp_96, i64* %output_addr_11, align 8
  %tmp_97 = mul nsw i64 %tmp_40, %tmp_33
  %tmp_98 = mul nsw i64 %tmp_53, %tmp_25
  %tmp_99 = mul nsw i64 %tmp_62, %tmp_15
  %tmp_100 = mul nsw i64 %tmp_79, %tmp_4
  %tmp10 = add i64 %tmp_98, %tmp_97
  %tmp11 = add i64 %tmp_100, %tmp_99
  %tmp_101 = trunc i64 %tmp11 to i63
  %tmp_102 = trunc i64 %tmp10 to i63
  %tmp_103 = add i63 %tmp_101, %tmp_102
  %tmp_104 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_103, i1 false)
  %output_addr_12 = getelementptr [19 x i64]* %output_r, i64 0, i64 11
  store i64 %tmp_104, i64* %output_addr_12, align 8
  %tmp_105 = mul nsw i64 %tmp_40, %tmp_40
  %tmp_106 = mul nsw i64 %tmp_62, %tmp_25
  %tmp_107 = mul nsw i64 %tmp_53, %tmp_33
  %tmp_108 = mul nsw i64 %tmp_79, %tmp_15
  %tmp_109 = add nsw i64 %tmp_108, %tmp_107
  %tmp_110 = shl i64 %tmp_109, 1
  %tmp_111 = add nsw i64 %tmp_110, %tmp_106
  %tmp_112 = shl i64 %tmp_111, 1
  %tmp_113 = add nsw i64 %tmp_112, %tmp_105
  %output_addr_13 = getelementptr [19 x i64]* %output_r, i64 0, i64 12
  store i64 %tmp_113, i64* %output_addr_13, align 8
  %tmp_114 = mul nsw i64 %tmp_53, %tmp_40
  %tmp_115 = mul nsw i64 %tmp_62, %tmp_33
  %tmp_116 = mul nsw i64 %tmp_79, %tmp_25
  %tmp12 = add i64 %tmp_116, %tmp_115
  %tmp_117 = add i64 %tmp_114, %tmp12
  %tmp_118 = shl i64 %tmp_117, 1
  %output_addr_14 = getelementptr [19 x i64]* %output_r, i64 0, i64 13
  store i64 %tmp_118, i64* %output_addr_14, align 8
  %tmp_119 = mul nsw i64 %tmp_53, %tmp_53
  %tmp_120 = mul nsw i64 %tmp_62, %tmp_40
  %tmp_121 = sext i32 %tmp_78 to i63
  %tmp_122 = sext i32 %tmp_78 to i62
  %tmp_123 = mul i62 %tmp_122, %tmp_42
  %tmp_124 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_123, i1 false)
  %tmp_125 = add i64 %tmp_120, %tmp_119
  %tmp_126 = trunc i64 %tmp_125 to i63
  %tmp_127 = add i63 %tmp_124, %tmp_126
  %tmp_128 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_127, i1 false)
  %output_addr_15 = getelementptr [19 x i64]* %output_r, i64 0, i64 14
  store i64 %tmp_128, i64* %output_addr_15, align 8
  %tmp_129 = mul nsw i64 %tmp_62, %tmp_53
  %tmp_130 = mul nsw i64 %tmp_79, %tmp_40
  %tmp_131 = add nsw i64 %tmp_130, %tmp_129
  %tmp_132 = shl i64 %tmp_131, 1
  %output_addr_16 = getelementptr [19 x i64]* %output_r, i64 0, i64 15
  store i64 %tmp_132, i64* %output_addr_16, align 8
  %tmp_133 = mul nsw i64 %tmp_62, %tmp_62
  %tmp_134 = sext i32 %tmp_52 to i62
  %tmp_135 = mul i62 %tmp_122, %tmp_134
  %tmp_136 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_135, i2 0)
  %tmp_137 = add nsw i64 %tmp_136, %tmp_133
  %output_addr_17 = getelementptr [19 x i64]* %output_r, i64 0, i64 16
  store i64 %tmp_137, i64* %output_addr_17, align 8
  %tmp_138 = sext i32 %tmp_61 to i63
  %tmp_139 = mul i63 %tmp_121, %tmp_138
  %tmp_140 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_139, i1 false)
  %output_addr_18 = getelementptr [19 x i64]* %output_r, i64 0, i64 17
  store i64 %tmp_140, i64* %output_addr_18, align 8
  %tmp_141 = mul i63 %tmp_121, %tmp_121
  %tmp_142 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_141, i1 false)
  %output_addr_19 = getelementptr [19 x i64]* %output_r, i64 0, i64 18
  store i64 %tmp_142, i64* %output_addr_19, align 8
  ret void
}

define internal fastcc void @fsquare_inner.1([19 x i64]* nocapture %output_r, [10 x i64]* nocapture %in_r) {
  %in_addr = getelementptr [10 x i64]* %in_r, i64 0, i64 0
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %in_load = load i64* %in_addr, align 8
  %tmp = trunc i64 %in_load to i32
  %tmp_s = sext i32 %tmp to i64
  %out_1 = mul nsw i64 %tmp_s, %tmp_s
  store i64 %out_1, i64* %output_addr, align 8
  %in_addr_11 = getelementptr [10 x i64]* %in_r, i64 0, i64 1
  %in_load_3 = load i64* %in_addr_11, align 8
  %tmp_133 = trunc i64 %in_load_3 to i32
  %tmp_13 = sext i32 %tmp_133 to i64
  %tmp_146 = sext i32 %tmp to i63
  %tmp_149 = sext i32 %tmp_133 to i63
  %tmp_150 = mul i63 %tmp_149, %tmp_146
  %tmp_15 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_150, i1 false)
  %output_addr_20 = getelementptr [19 x i64]* %output_r, i64 0, i64 1
  store i64 %tmp_15, i64* %output_addr_20, align 8
  %tmp_18 = mul nsw i64 %tmp_13, %tmp_13
  %in_addr_12 = getelementptr [10 x i64]* %in_r, i64 0, i64 2
  %in_load_6 = load i64* %in_addr_12, align 8
  %tmp_134 = trunc i64 %in_load_6 to i32
  %tmp_22 = sext i32 %tmp_134 to i64
  %tmp_23 = mul nsw i64 %tmp_22, %tmp_s
  %tmp_24 = add nsw i64 %tmp_23, %tmp_18
  %tmp_135 = shl i64 %tmp_24, 1
  %output_addr_21 = getelementptr [19 x i64]* %output_r, i64 0, i64 2
  store i64 %tmp_135, i64* %output_addr_21, align 8
  %tmp_30 = mul nsw i64 %tmp_22, %tmp_13
  %in_addr_13 = getelementptr [10 x i64]* %in_r, i64 0, i64 3
  %in_load_10 = load i64* %in_addr_13, align 8
  %tmp_136 = trunc i64 %in_load_10 to i32
  %tmp_34 = sext i32 %tmp_136 to i64
  %tmp_35 = mul nsw i64 %tmp_34, %tmp_s
  %tmp_36 = add nsw i64 %tmp_35, %tmp_30
  %tmp_138 = shl i64 %tmp_36, 1
  %output_addr_22 = getelementptr [19 x i64]* %output_r, i64 0, i64 3
  store i64 %tmp_138, i64* %output_addr_22, align 8
  %tmp_40 = mul nsw i64 %tmp_22, %tmp_22
  %tmp_151 = sext i32 %tmp_133 to i62
  %tmp_152 = sext i32 %tmp_136 to i62
  %tmp_154 = mul i62 %tmp_152, %tmp_151
  %tmp_46 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_154, i2 0)
  %in_addr_14 = getelementptr [10 x i64]* %in_r, i64 0, i64 4
  %in_load_11 = load i64* %in_addr_14, align 8
  %tmp_139 = trunc i64 %in_load_11 to i32
  %tmp_50 = sext i32 %tmp_139 to i64
  %tmp_155 = sext i32 %tmp_139 to i63
  %tmp_156 = mul i63 %tmp_155, %tmp_146
  %tmp_52 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_156, i1 false)
  %tmp1 = add i64 %tmp_52, %tmp_46
  %tmp_54 = add i64 %tmp_40, %tmp1
  %output_addr_23 = getelementptr [19 x i64]* %output_r, i64 0, i64 4
  store i64 %tmp_54, i64* %output_addr_23, align 8
  %tmp_59 = mul nsw i64 %tmp_34, %tmp_22
  %tmp_64 = mul nsw i64 %tmp_50, %tmp_13
  %in_addr_15 = getelementptr [10 x i64]* %in_r, i64 0, i64 5
  %in_load_12 = load i64* %in_addr_15, align 8
  %tmp_140 = trunc i64 %in_load_12 to i32
  %tmp_68 = sext i32 %tmp_140 to i64
  %tmp_69 = mul nsw i64 %tmp_68, %tmp_s
  %tmp2 = add i64 %tmp_69, %tmp_64
  %tmp_71 = add i64 %tmp_59, %tmp2
  %tmp_141 = shl i64 %tmp_71, 1
  %output_addr_24 = getelementptr [19 x i64]* %output_r, i64 0, i64 5
  store i64 %tmp_141, i64* %output_addr_24, align 8
  %tmp_75 = mul nsw i64 %tmp_34, %tmp_34
  %tmp_80 = mul nsw i64 %tmp_50, %tmp_22
  %in_addr_16 = getelementptr [10 x i64]* %in_r, i64 0, i64 6
  %in_load_13 = load i64* %in_addr_16, align 8
  %tmp_157 = trunc i64 %in_load_13 to i32
  %tmp_84 = sext i32 %tmp_157 to i64
  %tmp_85 = mul nsw i64 %tmp_84, %tmp_s
  %tmp_159 = sext i32 %tmp_140 to i62
  %tmp_160 = mul i62 %tmp_159, %tmp_151
  %tmp_91 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_160, i1 false)
  %tmp3 = add i64 %tmp_85, %tmp_80
  %tmp_93 = add i64 %tmp_75, %tmp3
  %tmp_161 = trunc i64 %tmp_93 to i63
  %tmp_162 = add i63 %tmp_91, %tmp_161
  %tmp_95 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_162, i1 false)
  %output_addr_25 = getelementptr [19 x i64]* %output_r, i64 0, i64 6
  store i64 %tmp_95, i64* %output_addr_25, align 8
  %tmp_100 = mul nsw i64 %tmp_50, %tmp_34
  %tmp_105 = mul nsw i64 %tmp_68, %tmp_22
  %tmp_110 = mul nsw i64 %tmp_84, %tmp_13
  %in_addr_17 = getelementptr [10 x i64]* %in_r, i64 0, i64 7
  %in_load_14 = load i64* %in_addr_17, align 8
  %tmp_164 = trunc i64 %in_load_14 to i32
  %tmp_114 = sext i32 %tmp_164 to i64
  %tmp_115 = mul nsw i64 %tmp_114, %tmp_s
  %tmp4 = add i64 %tmp_105, %tmp_100
  %tmp5 = add i64 %tmp_115, %tmp_110
  %tmp_166 = trunc i64 %tmp5 to i63
  %tmp_169 = trunc i64 %tmp4 to i63
  %tmp_165 = add i63 %tmp_166, %tmp_169
  %tmp_119 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_165, i1 false)
  %output_addr_26 = getelementptr [19 x i64]* %output_r, i64 0, i64 7
  store i64 %tmp_119, i64* %output_addr_26, align 8
  %tmp_122 = mul nsw i64 %tmp_50, %tmp_50
  %tmp_127 = mul nsw i64 %tmp_84, %tmp_22
  %in_addr_18 = getelementptr [10 x i64]* %in_r, i64 0, i64 8
  %in_load_15 = load i64* %in_addr_18, align 8
  %tmp_182 = trunc i64 %in_load_15 to i32
  %tmp_131 = sext i32 %tmp_182 to i64
  %tmp_132 = mul nsw i64 %tmp_131, %tmp_s
  %tmp_137 = mul nsw i64 %tmp_114, %tmp_13
  %tmp_142 = mul nsw i64 %tmp_68, %tmp_34
  %tmp_143 = add nsw i64 %tmp_142, %tmp_137
  %tmp_196 = trunc i64 %tmp_143 to i62
  %tmp_144 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_196, i1 false)
  %tmp_145 = add i64 %tmp_132, %tmp_127
  %tmp_197 = trunc i64 %tmp_145 to i63
  %tmp_167 = add i63 %tmp_144, %tmp_197
  %tmp_147 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_167, i1 false)
  %tmp_148 = add nsw i64 %tmp_147, %tmp_122
  %output_addr_27 = getelementptr [19 x i64]* %output_r, i64 0, i64 8
  store i64 %tmp_148, i64* %output_addr_27, align 8
  %tmp_153 = mul nsw i64 %tmp_68, %tmp_50
  %tmp_158 = mul nsw i64 %tmp_84, %tmp_34
  %tmp_163 = mul nsw i64 %tmp_114, %tmp_22
  %tmp_168 = mul nsw i64 %tmp_131, %tmp_13
  %in_addr_19 = getelementptr [10 x i64]* %in_r, i64 0, i64 9
  %in_load_16 = load i64* %in_addr_19, align 8
  %tmp_199 = trunc i64 %in_load_16 to i32
  %tmp_170 = sext i32 %tmp_199 to i64
  %tmp_171 = mul nsw i64 %tmp_170, %tmp_s
  %tmp6 = add i64 %tmp_158, %tmp_153
  %tmp8 = add i64 %tmp_171, %tmp_168
  %tmp7 = add i64 %tmp_163, %tmp8
  %tmp_200 = trunc i64 %tmp7 to i63
  %tmp_206 = trunc i64 %tmp6 to i63
  %tmp_172 = add i63 %tmp_200, %tmp_206
  %tmp_173 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_172, i1 false)
  %output_addr_28 = getelementptr [19 x i64]* %output_r, i64 0, i64 9
  store i64 %tmp_173, i64* %output_addr_28, align 8
  %tmp_174 = mul nsw i64 %tmp_68, %tmp_68
  %tmp_175 = mul nsw i64 %tmp_84, %tmp_50
  %tmp_176 = mul nsw i64 %tmp_131, %tmp_22
  %tmp_177 = mul nsw i64 %tmp_114, %tmp_34
  %tmp_178 = mul nsw i64 %tmp_170, %tmp_13
  %tmp_179 = add nsw i64 %tmp_178, %tmp_177
  %tmp_207 = trunc i64 %tmp_179 to i62
  %tmp_180 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_207, i1 false)
  %tmp9 = add i64 %tmp_176, %tmp_175
  %tmp_181 = add i64 %tmp_174, %tmp9
  %tmp_215 = trunc i64 %tmp_181 to i63
  %tmp_183 = add i63 %tmp_180, %tmp_215
  %tmp_184 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_183, i1 false)
  %output_addr_29 = getelementptr [19 x i64]* %output_r, i64 0, i64 10
  store i64 %tmp_184, i64* %output_addr_29, align 8
  %tmp_185 = mul nsw i64 %tmp_84, %tmp_68
  %tmp_186 = mul nsw i64 %tmp_114, %tmp_50
  %tmp_187 = mul nsw i64 %tmp_131, %tmp_34
  %tmp_188 = mul nsw i64 %tmp_170, %tmp_22
  %tmp10 = add i64 %tmp_186, %tmp_185
  %tmp11 = add i64 %tmp_188, %tmp_187
  %tmp_221 = trunc i64 %tmp11 to i63
  %tmp_222 = trunc i64 %tmp10 to i63
  %tmp_189 = add i63 %tmp_221, %tmp_222
  %tmp_190 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_189, i1 false)
  %output_addr_30 = getelementptr [19 x i64]* %output_r, i64 0, i64 11
  store i64 %tmp_190, i64* %output_addr_30, align 8
  %tmp_191 = mul nsw i64 %tmp_84, %tmp_84
  %tmp_192 = mul nsw i64 %tmp_131, %tmp_50
  %tmp_193 = mul nsw i64 %tmp_114, %tmp_68
  %tmp_194 = mul nsw i64 %tmp_170, %tmp_34
  %tmp_195 = add nsw i64 %tmp_194, %tmp_193
  %tmp_233 = shl i64 %tmp_195, 1
  %tmp_198 = add nsw i64 %tmp_233, %tmp_192
  %tmp_234 = shl i64 %tmp_198, 1
  %tmp_201 = add nsw i64 %tmp_234, %tmp_191
  %output_addr_31 = getelementptr [19 x i64]* %output_r, i64 0, i64 12
  store i64 %tmp_201, i64* %output_addr_31, align 8
  %tmp_202 = mul nsw i64 %tmp_114, %tmp_84
  %tmp_203 = mul nsw i64 %tmp_131, %tmp_68
  %tmp_204 = mul nsw i64 %tmp_170, %tmp_50
  %tmp12 = add i64 %tmp_204, %tmp_203
  %tmp_205 = add i64 %tmp_202, %tmp12
  %tmp_235 = shl i64 %tmp_205, 1
  %output_addr_32 = getelementptr [19 x i64]* %output_r, i64 0, i64 13
  store i64 %tmp_235, i64* %output_addr_32, align 8
  %tmp_208 = mul nsw i64 %tmp_114, %tmp_114
  %tmp_209 = mul nsw i64 %tmp_131, %tmp_84
  %tmp_210 = sext i32 %tmp_199 to i63
  %tmp_211 = sext i32 %tmp_199 to i62
  %tmp_212 = mul i62 %tmp_211, %tmp_159
  %tmp_213 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_212, i1 false)
  %tmp_214 = add i64 %tmp_209, %tmp_208
  %tmp_236 = trunc i64 %tmp_214 to i63
  %tmp_216 = add i63 %tmp_213, %tmp_236
  %tmp_217 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_216, i1 false)
  %output_addr_33 = getelementptr [19 x i64]* %output_r, i64 0, i64 14
  store i64 %tmp_217, i64* %output_addr_33, align 8
  %tmp_218 = mul nsw i64 %tmp_131, %tmp_114
  %tmp_219 = mul nsw i64 %tmp_170, %tmp_84
  %tmp_220 = add nsw i64 %tmp_219, %tmp_218
  %tmp_237 = shl i64 %tmp_220, 1
  %output_addr_34 = getelementptr [19 x i64]* %output_r, i64 0, i64 15
  store i64 %tmp_237, i64* %output_addr_34, align 8
  %tmp_223 = mul nsw i64 %tmp_131, %tmp_131
  %tmp_224 = sext i32 %tmp_164 to i62
  %tmp_225 = mul i62 %tmp_211, %tmp_224
  %tmp_226 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_225, i2 0)
  %tmp_227 = add nsw i64 %tmp_226, %tmp_223
  %output_addr_35 = getelementptr [19 x i64]* %output_r, i64 0, i64 16
  store i64 %tmp_227, i64* %output_addr_35, align 8
  %tmp_228 = sext i32 %tmp_182 to i63
  %tmp_229 = mul i63 %tmp_210, %tmp_228
  %tmp_230 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_229, i1 false)
  %output_addr_36 = getelementptr [19 x i64]* %output_r, i64 0, i64 17
  store i64 %tmp_230, i64* %output_addr_36, align 8
  %tmp_231 = mul i63 %tmp_210, %tmp_210
  %tmp_232 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_231, i1 false)
  %output_addr_37 = getelementptr [19 x i64]* %output_r, i64 0, i64 18
  store i64 %tmp_232, i64* %output_addr_37, align 8
  ret void
}

define internal fastcc void @fsquare_inner([19 x i64]* nocapture %output_r, [11 x i64]* nocapture %in_r) {
  %in_addr = getelementptr [11 x i64]* %in_r, i64 0, i64 0
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %in_load = load i64* %in_addr, align 8
  %tmp = trunc i64 %in_load to i32
  %tmp_s = sext i32 %tmp to i64
  %out_1 = mul nsw i64 %tmp_s, %tmp_s
  store i64 %out_1, i64* %output_addr, align 8
  %in_addr_20 = getelementptr [11 x i64]* %in_r, i64 0, i64 1
  %in_load_3 = load i64* %in_addr_20, align 8
  %tmp_246 = trunc i64 %in_load_3 to i32
  %tmp_13 = sext i32 %tmp_246 to i64
  %tmp_233 = sext i32 %tmp to i63
  %tmp_235 = sext i32 %tmp_246 to i63
  %tmp_236 = mul i63 %tmp_235, %tmp_233
  %tmp_15 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_236, i1 false)
  %output_addr_38 = getelementptr [19 x i64]* %output_r, i64 0, i64 1
  store i64 %tmp_15, i64* %output_addr_38, align 8
  %tmp_18 = mul nsw i64 %tmp_13, %tmp_13
  %in_addr_21 = getelementptr [11 x i64]* %in_r, i64 0, i64 2
  %in_load_6 = load i64* %in_addr_21, align 8
  %tmp_251 = trunc i64 %in_load_6 to i32
  %tmp_22 = sext i32 %tmp_251 to i64
  %tmp_23 = mul nsw i64 %tmp_22, %tmp_s
  %tmp_24 = add nsw i64 %tmp_23, %tmp_18
  %tmp_253 = shl i64 %tmp_24, 1
  %output_addr_22 = getelementptr [19 x i64]* %output_r, i64 0, i64 2
  store i64 %tmp_253, i64* %output_addr_22, align 8
  %tmp_30 = mul nsw i64 %tmp_22, %tmp_13
  %in_addr_22 = getelementptr [11 x i64]* %in_r, i64 0, i64 3
  %in_load_10 = load i64* %in_addr_22, align 8
  %tmp_255 = trunc i64 %in_load_10 to i32
  %tmp_34 = sext i32 %tmp_255 to i64
  %tmp_35 = mul nsw i64 %tmp_34, %tmp_s
  %tmp_36 = add nsw i64 %tmp_35, %tmp_30
  %tmp_258 = shl i64 %tmp_36, 1
  %output_addr_33 = getelementptr [19 x i64]* %output_r, i64 0, i64 3
  store i64 %tmp_258, i64* %output_addr_33, align 8
  %tmp_40 = mul nsw i64 %tmp_22, %tmp_22
  %tmp_237 = sext i32 %tmp_246 to i62
  %tmp_238 = sext i32 %tmp_255 to i62
  %tmp_240 = mul i62 %tmp_238, %tmp_237
  %tmp_46 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_240, i2 0)
  %in_addr_23 = getelementptr [11 x i64]* %in_r, i64 0, i64 4
  %in_load_15 = load i64* %in_addr_23, align 8
  %tmp_265 = trunc i64 %in_load_15 to i32
  %tmp_50 = sext i32 %tmp_265 to i64
  %tmp_241 = sext i32 %tmp_265 to i63
  %tmp_242 = mul i63 %tmp_241, %tmp_233
  %tmp_52 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_242, i1 false)
  %tmp1 = add i64 %tmp_52, %tmp_46
  %tmp_54 = add i64 %tmp_40, %tmp1
  %output_addr_39 = getelementptr [19 x i64]* %output_r, i64 0, i64 4
  store i64 %tmp_54, i64* %output_addr_39, align 8
  %tmp_59 = mul nsw i64 %tmp_34, %tmp_22
  %tmp_64 = mul nsw i64 %tmp_50, %tmp_13
  %in_addr_24 = getelementptr [11 x i64]* %in_r, i64 0, i64 5
  %in_load_17 = load i64* %in_addr_24, align 8
  %tmp_273 = trunc i64 %in_load_17 to i32
  %tmp_68 = sext i32 %tmp_273 to i64
  %tmp_69 = mul nsw i64 %tmp_68, %tmp_s
  %tmp2 = add i64 %tmp_69, %tmp_64
  %tmp_71 = add i64 %tmp_59, %tmp2
  %tmp_279 = shl i64 %tmp_71, 1
  %output_addr_40 = getelementptr [19 x i64]* %output_r, i64 0, i64 5
  store i64 %tmp_279, i64* %output_addr_40, align 8
  %tmp_75 = mul nsw i64 %tmp_34, %tmp_34
  %tmp_80 = mul nsw i64 %tmp_50, %tmp_22
  %in_addr_25 = getelementptr [11 x i64]* %in_r, i64 0, i64 6
  %in_load_18 = load i64* %in_addr_25, align 8
  %tmp_280 = trunc i64 %in_load_18 to i32
  %tmp_84 = sext i32 %tmp_280 to i64
  %tmp_85 = mul nsw i64 %tmp_84, %tmp_s
  %tmp_243 = sext i32 %tmp_273 to i62
  %tmp_245 = mul i62 %tmp_243, %tmp_237
  %tmp_91 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_245, i1 false)
  %tmp3 = add i64 %tmp_85, %tmp_80
  %tmp_93 = add i64 %tmp_75, %tmp3
  %tmp_291 = trunc i64 %tmp_93 to i63
  %tmp_247 = add i63 %tmp_91, %tmp_291
  %tmp_95 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_247, i1 false)
  %output_addr_41 = getelementptr [19 x i64]* %output_r, i64 0, i64 6
  store i64 %tmp_95, i64* %output_addr_41, align 8
  %tmp_100 = mul nsw i64 %tmp_50, %tmp_34
  %tmp_105 = mul nsw i64 %tmp_68, %tmp_22
  %tmp_110 = mul nsw i64 %tmp_84, %tmp_13
  %in_addr_26 = getelementptr [11 x i64]* %in_r, i64 0, i64 7
  %in_load_19 = load i64* %in_addr_26, align 8
  %tmp_292 = trunc i64 %in_load_19 to i32
  %tmp_114 = sext i32 %tmp_292 to i64
  %tmp_115 = mul nsw i64 %tmp_114, %tmp_s
  %tmp4 = add i64 %tmp_105, %tmp_100
  %tmp5 = add i64 %tmp_115, %tmp_110
  %tmp_293 = trunc i64 %tmp5 to i63
  %tmp_294 = trunc i64 %tmp4 to i63
  %tmp_248 = add i63 %tmp_293, %tmp_294
  %tmp_119 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_248, i1 false)
  %output_addr_42 = getelementptr [19 x i64]* %output_r, i64 0, i64 7
  store i64 %tmp_119, i64* %output_addr_42, align 8
  %tmp_122 = mul nsw i64 %tmp_50, %tmp_50
  %tmp_127 = mul nsw i64 %tmp_84, %tmp_22
  %in_addr_27 = getelementptr [11 x i64]* %in_r, i64 0, i64 8
  %in_load_20 = load i64* %in_addr_27, align 8
  %tmp_295 = trunc i64 %in_load_20 to i32
  %tmp_131 = sext i32 %tmp_295 to i64
  %tmp_132 = mul nsw i64 %tmp_131, %tmp_s
  %tmp_137 = mul nsw i64 %tmp_114, %tmp_13
  %tmp_142 = mul nsw i64 %tmp_68, %tmp_34
  %tmp_143 = add nsw i64 %tmp_142, %tmp_137
  %tmp_296 = trunc i64 %tmp_143 to i62
  %tmp_144 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_296, i1 false)
  %tmp_145 = add i64 %tmp_132, %tmp_127
  %tmp_297 = trunc i64 %tmp_145 to i63
  %tmp_256 = add i63 %tmp_144, %tmp_297
  %tmp_147 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_256, i1 false)
  %tmp_148 = add nsw i64 %tmp_147, %tmp_122
  %output_addr_43 = getelementptr [19 x i64]* %output_r, i64 0, i64 8
  store i64 %tmp_148, i64* %output_addr_43, align 8
  %tmp_153 = mul nsw i64 %tmp_68, %tmp_50
  %tmp_158 = mul nsw i64 %tmp_84, %tmp_34
  %tmp_163 = mul nsw i64 %tmp_114, %tmp_22
  %tmp_168 = mul nsw i64 %tmp_131, %tmp_13
  %in_addr_28 = getelementptr [11 x i64]* %in_r, i64 0, i64 9
  %in_load_21 = load i64* %in_addr_28, align 8
  %tmp_298 = trunc i64 %in_load_21 to i32
  %tmp_172 = sext i32 %tmp_298 to i64
  %tmp_173 = mul nsw i64 %tmp_172, %tmp_s
  %tmp6 = add i64 %tmp_158, %tmp_153
  %tmp8 = add i64 %tmp_173, %tmp_168
  %tmp7 = add i64 %tmp_163, %tmp8
  %tmp_299 = trunc i64 %tmp7 to i63
  %tmp_300 = trunc i64 %tmp6 to i63
  %tmp_257 = add i63 %tmp_299, %tmp_300
  %tmp_178 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_257, i1 false)
  %output_addr_44 = getelementptr [19 x i64]* %output_r, i64 0, i64 9
  store i64 %tmp_178, i64* %output_addr_44, align 8
  %tmp_181 = mul nsw i64 %tmp_68, %tmp_68
  %tmp_186 = mul nsw i64 %tmp_84, %tmp_50
  %tmp_191 = mul nsw i64 %tmp_131, %tmp_22
  %tmp_196 = mul nsw i64 %tmp_114, %tmp_34
  %tmp_201 = mul nsw i64 %tmp_172, %tmp_13
  %tmp_202 = add nsw i64 %tmp_201, %tmp_196
  %tmp_301 = trunc i64 %tmp_202 to i62
  %tmp_203 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_301, i1 false)
  %tmp9 = add i64 %tmp_191, %tmp_186
  %tmp_205 = add i64 %tmp_181, %tmp9
  %tmp_302 = trunc i64 %tmp_205 to i63
  %tmp_260 = add i63 %tmp_203, %tmp_302
  %tmp_207 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_260, i1 false)
  %output_addr_45 = getelementptr [19 x i64]* %output_r, i64 0, i64 10
  store i64 %tmp_207, i64* %output_addr_45, align 8
  %tmp_212 = mul nsw i64 %tmp_84, %tmp_68
  %tmp_217 = mul nsw i64 %tmp_114, %tmp_50
  %tmp_222 = mul nsw i64 %tmp_131, %tmp_34
  %tmp_227 = mul nsw i64 %tmp_172, %tmp_22
  %tmp10 = add i64 %tmp_217, %tmp_212
  %tmp11 = add i64 %tmp_227, %tmp_222
  %tmp_303 = trunc i64 %tmp11 to i63
  %tmp_304 = trunc i64 %tmp10 to i63
  %tmp_261 = add i63 %tmp_303, %tmp_304
  %tmp_231 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_261, i1 false)
  %output_addr_46 = getelementptr [19 x i64]* %output_r, i64 0, i64 11
  store i64 %tmp_231, i64* %output_addr_46, align 8
  %tmp_234 = mul nsw i64 %tmp_84, %tmp_84
  %tmp_239 = mul nsw i64 %tmp_131, %tmp_50
  %tmp_244 = mul nsw i64 %tmp_114, %tmp_68
  %tmp_249 = mul nsw i64 %tmp_172, %tmp_34
  %tmp_250 = add nsw i64 %tmp_249, %tmp_244
  %tmp_305 = shl i64 %tmp_250, 1
  %tmp_252 = add nsw i64 %tmp_305, %tmp_239
  %tmp_306 = shl i64 %tmp_252, 1
  %tmp_254 = add nsw i64 %tmp_306, %tmp_234
  %output_addr_47 = getelementptr [19 x i64]* %output_r, i64 0, i64 12
  store i64 %tmp_254, i64* %output_addr_47, align 8
  %tmp_259 = mul nsw i64 %tmp_114, %tmp_84
  %tmp_262 = mul nsw i64 %tmp_131, %tmp_68
  %tmp_263 = mul nsw i64 %tmp_172, %tmp_50
  %tmp12 = add i64 %tmp_263, %tmp_262
  %tmp_264 = add i64 %tmp_259, %tmp12
  %tmp_307 = shl i64 %tmp_264, 1
  %output_addr_48 = getelementptr [19 x i64]* %output_r, i64 0, i64 13
  store i64 %tmp_307, i64* %output_addr_48, align 8
  %tmp_266 = mul nsw i64 %tmp_114, %tmp_114
  %tmp_267 = mul nsw i64 %tmp_131, %tmp_84
  %tmp_268 = sext i32 %tmp_298 to i63
  %tmp_269 = sext i32 %tmp_298 to i62
  %tmp_270 = mul i62 %tmp_269, %tmp_243
  %tmp_271 = call i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62 %tmp_270, i1 false)
  %tmp_272 = add i64 %tmp_267, %tmp_266
  %tmp_308 = trunc i64 %tmp_272 to i63
  %tmp_274 = add i63 %tmp_271, %tmp_308
  %tmp_275 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_274, i1 false)
  %output_addr_49 = getelementptr [19 x i64]* %output_r, i64 0, i64 14
  store i64 %tmp_275, i64* %output_addr_49, align 8
  %tmp_276 = mul nsw i64 %tmp_131, %tmp_114
  %tmp_277 = mul nsw i64 %tmp_172, %tmp_84
  %tmp_278 = add nsw i64 %tmp_277, %tmp_276
  %tmp_309 = shl i64 %tmp_278, 1
  %output_addr_50 = getelementptr [19 x i64]* %output_r, i64 0, i64 15
  store i64 %tmp_309, i64* %output_addr_50, align 8
  %tmp_281 = mul nsw i64 %tmp_131, %tmp_131
  %tmp_282 = sext i32 %tmp_292 to i62
  %tmp_283 = mul i62 %tmp_269, %tmp_282
  %tmp_284 = call i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62 %tmp_283, i2 0)
  %tmp_285 = add nsw i64 %tmp_284, %tmp_281
  %output_addr_51 = getelementptr [19 x i64]* %output_r, i64 0, i64 16
  store i64 %tmp_285, i64* %output_addr_51, align 8
  %tmp_286 = sext i32 %tmp_295 to i63
  %tmp_287 = mul i63 %tmp_268, %tmp_286
  %tmp_288 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_287, i1 false)
  %output_addr_52 = getelementptr [19 x i64]* %output_r, i64 0, i64 17
  store i64 %tmp_288, i64* %output_addr_52, align 8
  %tmp_289 = mul i63 %tmp_268, %tmp_268
  %tmp_290 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_289, i1 false)
  %output_addr_53 = getelementptr [19 x i64]* %output_r, i64 0, i64 18
  store i64 %tmp_290, i64* %output_addr_53, align 8
  ret void
}

define internal fastcc void @fsquare.2([10 x i64]* nocapture %output_r, [11 x i64]* nocapture %in_r) {
  %t = alloca [19 x i64], align 16
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call fastcc void @fsquare_inner([19 x i64]* %t, [11 x i64]* %in_r)
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 0
  %t_addr_1 = getelementptr [19 x i64]* %t, i64 0, i64 18
  %t_load = load i64* %t_addr_1, align 16
  %tmp_310 = shl i64 %t_load, 4
  %t_addr_2 = getelementptr [19 x i64]* %t, i64 0, i64 8
  %t_load_2 = load i64* %t_addr_2, align 16
  %tmp_311 = shl i64 %t_load, 1
  %tmp = add i64 %t_load_2, %t_load
  %tmp3 = add i64 %tmp_310, %tmp_311
  %tmp_325_i = add nsw i64 %tmp3, %tmp
  store i64 %tmp_325_i, i64* %t_addr_2, align 16
  %t_addr_3 = getelementptr [19 x i64]* %t, i64 0, i64 17
  %t_load_3 = load i64* %t_addr_3, align 8
  %tmp_312 = shl i64 %t_load_3, 4
  %t_addr_4 = getelementptr [19 x i64]* %t, i64 0, i64 7
  %t_load_4 = load i64* %t_addr_4, align 8
  %tmp_313 = shl i64 %t_load_3, 1
  %tmp4 = add i64 %t_load_4, %t_load_3
  %tmp5 = add i64 %tmp_312, %tmp_313
  %tmp_330_i = add nsw i64 %tmp5, %tmp4
  store i64 %tmp_330_i, i64* %t_addr_4, align 8
  %t_addr_5 = getelementptr [19 x i64]* %t, i64 0, i64 16
  %t_load_5 = load i64* %t_addr_5, align 16
  %tmp_314 = shl i64 %t_load_5, 4
  %t_addr_6 = getelementptr [19 x i64]* %t, i64 0, i64 6
  %t_load_6 = load i64* %t_addr_6, align 16
  %tmp_315 = shl i64 %t_load_5, 1
  %tmp6 = add i64 %t_load_6, %t_load_5
  %tmp7 = add i64 %tmp_314, %tmp_315
  %tmp_335_i = add nsw i64 %tmp7, %tmp6
  store i64 %tmp_335_i, i64* %t_addr_6, align 16
  %t_addr_7 = getelementptr [19 x i64]* %t, i64 0, i64 15
  %t_load_7 = load i64* %t_addr_7, align 8
  %tmp_316 = shl i64 %t_load_7, 4
  %t_addr_8 = getelementptr [19 x i64]* %t, i64 0, i64 5
  %t_load_8 = load i64* %t_addr_8, align 8
  %tmp_317 = shl i64 %t_load_7, 1
  %tmp8 = add i64 %t_load_8, %t_load_7
  %tmp9 = add i64 %tmp_316, %tmp_317
  %tmp_340_i = add nsw i64 %tmp9, %tmp8
  store i64 %tmp_340_i, i64* %t_addr_8, align 8
  %t_addr_9 = getelementptr [19 x i64]* %t, i64 0, i64 14
  %t_load_9 = load i64* %t_addr_9, align 16
  %tmp_318 = shl i64 %t_load_9, 4
  %t_addr_10 = getelementptr [19 x i64]* %t, i64 0, i64 4
  %t_load_10 = load i64* %t_addr_10, align 16
  %tmp_319 = shl i64 %t_load_9, 1
  %tmp10 = add i64 %t_load_10, %t_load_9
  %tmp11 = add i64 %tmp_318, %tmp_319
  %tmp_345_i = add nsw i64 %tmp11, %tmp10
  store i64 %tmp_345_i, i64* %t_addr_10, align 16
  %t_addr_11 = getelementptr [19 x i64]* %t, i64 0, i64 13
  %t_load_11 = load i64* %t_addr_11, align 8
  %tmp_320 = shl i64 %t_load_11, 4
  %t_addr_12 = getelementptr [19 x i64]* %t, i64 0, i64 3
  %t_load_12 = load i64* %t_addr_12, align 8
  %tmp_321 = shl i64 %t_load_11, 1
  %tmp12 = add i64 %t_load_12, %t_load_11
  %tmp13 = add i64 %tmp_320, %tmp_321
  %tmp_350_i = add nsw i64 %tmp13, %tmp12
  store i64 %tmp_350_i, i64* %t_addr_12, align 8
  %t_addr_13 = getelementptr [19 x i64]* %t, i64 0, i64 12
  %t_load_13 = load i64* %t_addr_13, align 16
  %tmp_322 = shl i64 %t_load_13, 4
  %t_addr_14 = getelementptr [19 x i64]* %t, i64 0, i64 2
  %t_load_14 = load i64* %t_addr_14, align 16
  %tmp_323 = shl i64 %t_load_13, 1
  %tmp14 = add i64 %t_load_14, %t_load_13
  %tmp15 = add i64 %tmp_322, %tmp_323
  %tmp_355_i = add nsw i64 %tmp15, %tmp14
  store i64 %tmp_355_i, i64* %t_addr_14, align 16
  %t_addr_15 = getelementptr [19 x i64]* %t, i64 0, i64 11
  %t_load_15 = load i64* %t_addr_15, align 8
  %tmp_324 = shl i64 %t_load_15, 4
  %t_addr_16 = getelementptr [19 x i64]* %t, i64 0, i64 1
  %t_load_16 = load i64* %t_addr_16, align 8
  %tmp_325 = shl i64 %t_load_15, 1
  %tmp16 = add i64 %t_load_16, %t_load_15
  %tmp17 = add i64 %tmp_324, %tmp_325
  %tmp_360_i = add nsw i64 %tmp17, %tmp16
  store i64 %tmp_360_i, i64* %t_addr_16, align 8
  %t_addr_17 = getelementptr [19 x i64]* %t, i64 0, i64 10
  %t_load_17 = load i64* %t_addr_17, align 16
  %tmp_326 = shl i64 %t_load_17, 4
  %t_load_1 = load i64* %t_addr, align 16
  %tmp_327 = shl i64 %t_load_17, 1
  %tmp18 = add i64 %t_load_1, %t_load_17
  %tmp19 = add i64 %tmp_326, %tmp_327
  %tmp_365_i = add nsw i64 %tmp19, %tmp18
  store i64 %tmp_365_i, i64* %t_addr, align 16
  store i64 0, i64* %t_addr_17, align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]
  %tmp_i = icmp ult i4 %i_i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit

; <label>:2                                       ; preds = %1
  %tmp_i_9 = zext i4 %i_i to i64
  %t_addr_18 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_9
  %t_load_18 = load i64* %t_addr_18, align 16
  %tmp_328 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_18, i32 63)
  %tmp_i_i_cast_cast = select i1 %tmp_328, i64 67108863, i64 0
  %tmp_1064_i_i = add nsw i64 %t_load_18, %tmp_i_i_cast_cast
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63)
  %over = sext i38 %tmp_397_i_i to i64
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0)
  %tmp_367_i = sub nsw i64 %t_load_18, %tmp_366_i
  store i64 %tmp_367_i, i64* %t_addr_18, align 16
  %tmp_368_i = or i4 %i_i, 1
  %tmp_369_i = zext i4 %tmp_368_i to i64
  %t_addr_19 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i
  %t_load_19 = load i64* %t_addr_19, align 8
  %v_assign_1 = add nsw i64 %t_load_19, %over
  %tmp_329 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_1, i32 63)
  %tmp_i10_i_cast_cast = select i1 %tmp_329, i64 33554431, i64 0
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_1
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63)
  %over_1 = sext i39 %tmp_399_i_i to i64
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0)
  %tmp_372_i = sub nsw i64 %v_assign_1, %tmp_371_i
  store i64 %tmp_372_i, i64* %t_addr_19, align 8
  %i = add i4 %i_i, 2
  %tmp_373_i = zext i4 %i to i64
  %t_addr_20 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i
  %t_load_20 = load i64* %t_addr_20, align 16
  %tmp_374_i = add nsw i64 %t_load_20, %over_1
  store i64 %tmp_374_i, i64* %t_addr_20, align 16
  br label %1

freduce_coefficients.exit:                        ; preds = %1
  %t_load_21 = load i64* %t_addr_17, align 16
  %tmp_330 = shl i64 %t_load_21, 4
  %t_load_22 = load i64* %t_addr, align 16
  %tmp_331 = shl i64 %t_load_21, 1
  %tmp21 = add i64 %t_load_21, %t_load_22
  %tmp22 = add i64 %tmp_331, %tmp_330
  %v_assign_2 = add nsw i64 %tmp21, %tmp22
  store i64 0, i64* %t_addr_17, align 16
  %tmp_332 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_2, i32 63)
  %tmp_i13_i_cast_cast = select i1 %tmp_332, i64 67108863, i64 0
  %tmp_1064_i14_i = add nsw i64 %v_assign_2, %tmp_i13_i_cast_cast
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63)
  %over_2 = sext i38 %tmp_397_i16_i to i64
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0)
  %tmp_381_i = sub nsw i64 %v_assign_2, %tmp_380_i
  store i64 %tmp_381_i, i64* %t_addr, align 16
  %t_load_23 = load i64* %t_addr_16, align 8
  %tmp_382_i = add nsw i64 %over_2, %t_load_23
  store i64 %tmp_382_i, i64* %t_addr_16, align 8
  br label %3

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i2 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_3, %4 ]
  %exitcond_i = icmp eq i4 %i_i2, -6
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_3 = add i4 %i_i2, 1
  br i1 %exitcond_i, label %_memcpy.exit, label %4

; <label>:4                                       ; preds = %3
  %tmp_i3 = zext i4 %i_i2 to i64
  %t_addr_21 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i3
  %t_load_24 = load i64* %t_addr_21, align 8
  %output_addr = getelementptr [10 x i64]* %output_r, i64 0, i64 %tmp_i3
  store i64 %t_load_24, i64* %output_addr, align 8
  br label %3

_memcpy.exit:                                     ; preds = %3
  ret void
}

define internal fastcc void @fsquare.1([10 x i64]* nocapture %output_r, [10 x i64]* nocapture %in_r) {
  %t = alloca [19 x i64], align 16
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call fastcc void @fsquare_inner.1([19 x i64]* %t, [10 x i64]* %in_r)
  %t_addr_2 = getelementptr [19 x i64]* %t, i64 0, i64 0
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18
  %t_load = load i64* %t_addr, align 16
  %tmp_333 = shl i64 %t_load, 4
  %t_addr_22 = getelementptr [19 x i64]* %t, i64 0, i64 8
  %t_load_25 = load i64* %t_addr_22, align 16
  %tmp_334 = shl i64 %t_load, 1
  %tmp = add i64 %t_load_25, %t_load
  %tmp3 = add i64 %tmp_333, %tmp_334
  %tmp_325_i = add nsw i64 %tmp3, %tmp
  store i64 %tmp_325_i, i64* %t_addr_22, align 16
  %t_addr_23 = getelementptr [19 x i64]* %t, i64 0, i64 17
  %t_load_26 = load i64* %t_addr_23, align 8
  %tmp_335 = shl i64 %t_load_26, 4
  %t_addr_24 = getelementptr [19 x i64]* %t, i64 0, i64 7
  %t_load_27 = load i64* %t_addr_24, align 8
  %tmp_336 = shl i64 %t_load_26, 1
  %tmp4 = add i64 %t_load_27, %t_load_26
  %tmp5 = add i64 %tmp_335, %tmp_336
  %tmp_330_i = add nsw i64 %tmp5, %tmp4
  store i64 %tmp_330_i, i64* %t_addr_24, align 8
  %t_addr_25 = getelementptr [19 x i64]* %t, i64 0, i64 16
  %t_load_28 = load i64* %t_addr_25, align 16
  %tmp_337 = shl i64 %t_load_28, 4
  %t_addr_26 = getelementptr [19 x i64]* %t, i64 0, i64 6
  %t_load_29 = load i64* %t_addr_26, align 16
  %tmp_338 = shl i64 %t_load_28, 1
  %tmp6 = add i64 %t_load_29, %t_load_28
  %tmp7 = add i64 %tmp_337, %tmp_338
  %tmp_335_i = add nsw i64 %tmp7, %tmp6
  store i64 %tmp_335_i, i64* %t_addr_26, align 16
  %t_addr_27 = getelementptr [19 x i64]* %t, i64 0, i64 15
  %t_load_30 = load i64* %t_addr_27, align 8
  %tmp_339 = shl i64 %t_load_30, 4
  %t_addr_28 = getelementptr [19 x i64]* %t, i64 0, i64 5
  %t_load_31 = load i64* %t_addr_28, align 8
  %tmp_340 = shl i64 %t_load_30, 1
  %tmp8 = add i64 %t_load_31, %t_load_30
  %tmp9 = add i64 %tmp_339, %tmp_340
  %tmp_340_i = add nsw i64 %tmp9, %tmp8
  store i64 %tmp_340_i, i64* %t_addr_28, align 8
  %t_addr_29 = getelementptr [19 x i64]* %t, i64 0, i64 14
  %t_load_32 = load i64* %t_addr_29, align 16
  %tmp_341 = shl i64 %t_load_32, 4
  %t_addr_30 = getelementptr [19 x i64]* %t, i64 0, i64 4
  %t_load_33 = load i64* %t_addr_30, align 16
  %tmp_342 = shl i64 %t_load_32, 1
  %tmp10 = add i64 %t_load_33, %t_load_32
  %tmp11 = add i64 %tmp_341, %tmp_342
  %tmp_345_i = add nsw i64 %tmp11, %tmp10
  store i64 %tmp_345_i, i64* %t_addr_30, align 16
  %t_addr_31 = getelementptr [19 x i64]* %t, i64 0, i64 13
  %t_load_34 = load i64* %t_addr_31, align 8
  %tmp_343 = shl i64 %t_load_34, 4
  %t_addr_32 = getelementptr [19 x i64]* %t, i64 0, i64 3
  %t_load_35 = load i64* %t_addr_32, align 8
  %tmp_344 = shl i64 %t_load_34, 1
  %tmp12 = add i64 %t_load_35, %t_load_34
  %tmp13 = add i64 %tmp_343, %tmp_344
  %tmp_350_i = add nsw i64 %tmp13, %tmp12
  store i64 %tmp_350_i, i64* %t_addr_32, align 8
  %t_addr_33 = getelementptr [19 x i64]* %t, i64 0, i64 12
  %t_load_36 = load i64* %t_addr_33, align 16
  %tmp_345 = shl i64 %t_load_36, 4
  %t_addr_34 = getelementptr [19 x i64]* %t, i64 0, i64 2
  %t_load_37 = load i64* %t_addr_34, align 16
  %tmp_346 = shl i64 %t_load_36, 1
  %tmp14 = add i64 %t_load_37, %t_load_36
  %tmp15 = add i64 %tmp_345, %tmp_346
  %tmp_355_i = add nsw i64 %tmp15, %tmp14
  store i64 %tmp_355_i, i64* %t_addr_34, align 16
  %t_addr_35 = getelementptr [19 x i64]* %t, i64 0, i64 11
  %t_load_38 = load i64* %t_addr_35, align 8
  %tmp_347 = shl i64 %t_load_38, 4
  %t_addr_36 = getelementptr [19 x i64]* %t, i64 0, i64 1
  %t_load_39 = load i64* %t_addr_36, align 8
  %tmp_348 = shl i64 %t_load_38, 1
  %tmp16 = add i64 %t_load_39, %t_load_38
  %tmp17 = add i64 %tmp_347, %tmp_348
  %tmp_360_i = add nsw i64 %tmp17, %tmp16
  store i64 %tmp_360_i, i64* %t_addr_36, align 8
  %t_addr_37 = getelementptr [19 x i64]* %t, i64 0, i64 10
  %t_load_40 = load i64* %t_addr_37, align 16
  %tmp_349 = shl i64 %t_load_40, 4
  %t_load_2 = load i64* %t_addr_2, align 16
  %tmp_350 = shl i64 %t_load_40, 1
  %tmp18 = add i64 %t_load_2, %t_load_40
  %tmp19 = add i64 %tmp_349, %tmp_350
  %tmp_365_i = add nsw i64 %tmp19, %tmp18
  store i64 %tmp_365_i, i64* %t_addr_2, align 16
  store i64 0, i64* %t_addr_37, align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]
  %tmp_i = icmp ult i4 %i_i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit

; <label>:2                                       ; preds = %1
  %tmp_i_11 = zext i4 %i_i to i64
  %t_addr_38 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_11
  %t_load_41 = load i64* %t_addr_38, align 16
  %tmp_351 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_41, i32 63)
  %tmp_i_i_cast_cast = select i1 %tmp_351, i64 67108863, i64 0
  %tmp_1064_i_i = add nsw i64 %t_load_41, %tmp_i_i_cast_cast
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63)
  %over = sext i38 %tmp_397_i_i to i64
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0)
  %tmp_367_i = sub nsw i64 %t_load_41, %tmp_366_i
  store i64 %tmp_367_i, i64* %t_addr_38, align 16
  %tmp_368_i = or i4 %i_i, 1
  %tmp_369_i = zext i4 %tmp_368_i to i64
  %t_addr_39 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i
  %t_load_42 = load i64* %t_addr_39, align 8
  %v_assign_3 = add nsw i64 %t_load_42, %over
  %tmp_352 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_3, i32 63)
  %tmp_i10_i_cast_cast = select i1 %tmp_352, i64 33554431, i64 0
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_3
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63)
  %over_3 = sext i39 %tmp_399_i_i to i64
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0)
  %tmp_372_i = sub nsw i64 %v_assign_3, %tmp_371_i
  store i64 %tmp_372_i, i64* %t_addr_39, align 8
  %i = add i4 %i_i, 2
  %tmp_373_i = zext i4 %i to i64
  %t_addr_40 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i
  %t_load_43 = load i64* %t_addr_40, align 16
  %tmp_374_i = add nsw i64 %t_load_43, %over_3
  store i64 %tmp_374_i, i64* %t_addr_40, align 16
  br label %1

freduce_coefficients.exit:                        ; preds = %1
  %t_load_44 = load i64* %t_addr_37, align 16
  %tmp_353 = shl i64 %t_load_44, 4
  %t_load_45 = load i64* %t_addr_2, align 16
  %tmp_354 = shl i64 %t_load_44, 1
  %tmp21 = add i64 %t_load_44, %t_load_45
  %tmp22 = add i64 %tmp_354, %tmp_353
  %v_assign_4 = add nsw i64 %tmp21, %tmp22
  store i64 0, i64* %t_addr_37, align 16
  %tmp_355 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_4, i32 63)
  %tmp_i13_i_cast_cast = select i1 %tmp_355, i64 67108863, i64 0
  %tmp_1064_i14_i = add nsw i64 %v_assign_4, %tmp_i13_i_cast_cast
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63)
  %over_4 = sext i38 %tmp_397_i16_i to i64
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0)
  %tmp_381_i = sub nsw i64 %v_assign_4, %tmp_380_i
  store i64 %tmp_381_i, i64* %t_addr_2, align 16
  %t_load_46 = load i64* %t_addr_36, align 8
  %tmp_382_i = add nsw i64 %over_4, %t_load_46
  store i64 %tmp_382_i, i64* %t_addr_36, align 8
  br label %3

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i2 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_4, %4 ]
  %exitcond_i = icmp eq i4 %i_i2, -6
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_4 = add i4 %i_i2, 1
  br i1 %exitcond_i, label %_memcpy.exit, label %4

; <label>:4                                       ; preds = %3
  %tmp_i3 = zext i4 %i_i2 to i64
  %t_addr_41 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i3
  %t_load_47 = load i64* %t_addr_41, align 8
  %output_addr = getelementptr [10 x i64]* %output_r, i64 0, i64 %tmp_i3
  store i64 %t_load_47, i64* %output_addr, align 8
  br label %3

_memcpy.exit:                                     ; preds = %3
  ret void
}

define internal fastcc void @fsquare([19 x i64]* nocapture %output_r, [19 x i64]* nocapture %in_r) {
  %t = alloca [19 x i64], align 16
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call fastcc void @fsquare_inner.2([19 x i64]* %t, [19 x i64]* %in_r)
  %t_addr_3 = getelementptr [19 x i64]* %t, i64 0, i64 0
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18
  %t_load = load i64* %t_addr, align 16
  %tmp_356 = shl i64 %t_load, 4
  %t_addr_42 = getelementptr [19 x i64]* %t, i64 0, i64 8
  %t_load_48 = load i64* %t_addr_42, align 16
  %tmp_357 = shl i64 %t_load, 1
  %tmp = add i64 %t_load_48, %t_load
  %tmp3 = add i64 %tmp_356, %tmp_357
  %tmp_325_i = add nsw i64 %tmp3, %tmp
  store i64 %tmp_325_i, i64* %t_addr_42, align 16
  %t_addr_43 = getelementptr [19 x i64]* %t, i64 0, i64 17
  %t_load_49 = load i64* %t_addr_43, align 8
  %tmp_358 = shl i64 %t_load_49, 4
  %t_addr_44 = getelementptr [19 x i64]* %t, i64 0, i64 7
  %t_load_50 = load i64* %t_addr_44, align 8
  %tmp_359 = shl i64 %t_load_49, 1
  %tmp4 = add i64 %t_load_50, %t_load_49
  %tmp5 = add i64 %tmp_358, %tmp_359
  %tmp_330_i = add nsw i64 %tmp5, %tmp4
  store i64 %tmp_330_i, i64* %t_addr_44, align 8
  %t_addr_45 = getelementptr [19 x i64]* %t, i64 0, i64 16
  %t_load_51 = load i64* %t_addr_45, align 16
  %tmp_360 = shl i64 %t_load_51, 4
  %t_addr_46 = getelementptr [19 x i64]* %t, i64 0, i64 6
  %t_load_52 = load i64* %t_addr_46, align 16
  %tmp_361 = shl i64 %t_load_51, 1
  %tmp6 = add i64 %t_load_52, %t_load_51
  %tmp7 = add i64 %tmp_360, %tmp_361
  %tmp_335_i = add nsw i64 %tmp7, %tmp6
  store i64 %tmp_335_i, i64* %t_addr_46, align 16
  %t_addr_47 = getelementptr [19 x i64]* %t, i64 0, i64 15
  %t_load_53 = load i64* %t_addr_47, align 8
  %tmp_362 = shl i64 %t_load_53, 4
  %t_addr_48 = getelementptr [19 x i64]* %t, i64 0, i64 5
  %t_load_54 = load i64* %t_addr_48, align 8
  %tmp_363 = shl i64 %t_load_53, 1
  %tmp8 = add i64 %t_load_54, %t_load_53
  %tmp9 = add i64 %tmp_362, %tmp_363
  %tmp_340_i = add nsw i64 %tmp9, %tmp8
  store i64 %tmp_340_i, i64* %t_addr_48, align 8
  %t_addr_49 = getelementptr [19 x i64]* %t, i64 0, i64 14
  %t_load_55 = load i64* %t_addr_49, align 16
  %tmp_364 = shl i64 %t_load_55, 4
  %t_addr_50 = getelementptr [19 x i64]* %t, i64 0, i64 4
  %t_load_56 = load i64* %t_addr_50, align 16
  %tmp_365 = shl i64 %t_load_55, 1
  %tmp10 = add i64 %t_load_56, %t_load_55
  %tmp11 = add i64 %tmp_364, %tmp_365
  %tmp_345_i = add nsw i64 %tmp11, %tmp10
  store i64 %tmp_345_i, i64* %t_addr_50, align 16
  %t_addr_51 = getelementptr [19 x i64]* %t, i64 0, i64 13
  %t_load_57 = load i64* %t_addr_51, align 8
  %tmp_366 = shl i64 %t_load_57, 4
  %t_addr_52 = getelementptr [19 x i64]* %t, i64 0, i64 3
  %t_load_58 = load i64* %t_addr_52, align 8
  %tmp_367 = shl i64 %t_load_57, 1
  %tmp12 = add i64 %t_load_58, %t_load_57
  %tmp13 = add i64 %tmp_366, %tmp_367
  %tmp_350_i = add nsw i64 %tmp13, %tmp12
  store i64 %tmp_350_i, i64* %t_addr_52, align 8
  %t_addr_53 = getelementptr [19 x i64]* %t, i64 0, i64 12
  %t_load_59 = load i64* %t_addr_53, align 16
  %tmp_368 = shl i64 %t_load_59, 4
  %t_addr_54 = getelementptr [19 x i64]* %t, i64 0, i64 2
  %t_load_60 = load i64* %t_addr_54, align 16
  %tmp_369 = shl i64 %t_load_59, 1
  %tmp14 = add i64 %t_load_60, %t_load_59
  %tmp15 = add i64 %tmp_368, %tmp_369
  %tmp_355_i = add nsw i64 %tmp15, %tmp14
  store i64 %tmp_355_i, i64* %t_addr_54, align 16
  %t_addr_55 = getelementptr [19 x i64]* %t, i64 0, i64 11
  %t_load_61 = load i64* %t_addr_55, align 8
  %tmp_370 = shl i64 %t_load_61, 4
  %t_addr_56 = getelementptr [19 x i64]* %t, i64 0, i64 1
  %t_load_62 = load i64* %t_addr_56, align 8
  %tmp_371 = shl i64 %t_load_61, 1
  %tmp16 = add i64 %t_load_62, %t_load_61
  %tmp17 = add i64 %tmp_370, %tmp_371
  %tmp_360_i = add nsw i64 %tmp17, %tmp16
  store i64 %tmp_360_i, i64* %t_addr_56, align 8
  %t_addr_57 = getelementptr [19 x i64]* %t, i64 0, i64 10
  %t_load_63 = load i64* %t_addr_57, align 16
  %tmp_372 = shl i64 %t_load_63, 4
  %t_load_3 = load i64* %t_addr_3, align 16
  %tmp_373 = shl i64 %t_load_63, 1
  %tmp18 = add i64 %t_load_3, %t_load_63
  %tmp19 = add i64 %tmp_372, %tmp_373
  %tmp_365_i = add nsw i64 %tmp19, %tmp18
  store i64 %tmp_365_i, i64* %t_addr_3, align 16
  store i64 0, i64* %t_addr_57, align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]
  %tmp_i = icmp ult i4 %i_i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit

; <label>:2                                       ; preds = %1
  %tmp_i_13 = zext i4 %i_i to i64
  %t_addr_58 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_13
  %t_load_64 = load i64* %t_addr_58, align 16
  %tmp_374 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_64, i32 63)
  %tmp_i_i_cast_cast = select i1 %tmp_374, i64 67108863, i64 0
  %tmp_1064_i_i = add nsw i64 %t_load_64, %tmp_i_i_cast_cast
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63)
  %over = sext i38 %tmp_397_i_i to i64
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0)
  %tmp_367_i = sub nsw i64 %t_load_64, %tmp_366_i
  store i64 %tmp_367_i, i64* %t_addr_58, align 16
  %tmp_368_i = or i4 %i_i, 1
  %tmp_369_i = zext i4 %tmp_368_i to i64
  %t_addr_59 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i
  %t_load_65 = load i64* %t_addr_59, align 8
  %v_assign_5 = add nsw i64 %t_load_65, %over
  %tmp_375 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_5, i32 63)
  %tmp_i10_i_cast_cast = select i1 %tmp_375, i64 33554431, i64 0
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_5
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63)
  %over_5 = sext i39 %tmp_399_i_i to i64
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0)
  %tmp_372_i = sub nsw i64 %v_assign_5, %tmp_371_i
  store i64 %tmp_372_i, i64* %t_addr_59, align 8
  %i = add i4 %i_i, 2
  %tmp_373_i = zext i4 %i to i64
  %t_addr_60 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i
  %t_load_66 = load i64* %t_addr_60, align 16
  %tmp_374_i = add nsw i64 %t_load_66, %over_5
  store i64 %tmp_374_i, i64* %t_addr_60, align 16
  br label %1

freduce_coefficients.exit:                        ; preds = %1
  %t_load_67 = load i64* %t_addr_57, align 16
  %tmp_376 = shl i64 %t_load_67, 4
  %t_load_68 = load i64* %t_addr_3, align 16
  %tmp_377 = shl i64 %t_load_67, 1
  %tmp21 = add i64 %t_load_67, %t_load_68
  %tmp22 = add i64 %tmp_377, %tmp_376
  %v_assign_6 = add nsw i64 %tmp21, %tmp22
  store i64 0, i64* %t_addr_57, align 16
  %tmp_378 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_6, i32 63)
  %tmp_i13_i_cast_cast = select i1 %tmp_378, i64 67108863, i64 0
  %tmp_1064_i14_i = add nsw i64 %v_assign_6, %tmp_i13_i_cast_cast
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63)
  %over_6 = sext i38 %tmp_397_i16_i to i64
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0)
  %tmp_381_i = sub nsw i64 %v_assign_6, %tmp_380_i
  store i64 %tmp_381_i, i64* %t_addr_3, align 16
  %t_load_69 = load i64* %t_addr_56, align 8
  %tmp_382_i = add nsw i64 %over_6, %t_load_69
  store i64 %tmp_382_i, i64* %t_addr_56, align 8
  br label %3

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i2 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_5, %4 ]
  %exitcond_i = icmp eq i4 %i_i2, -6
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_5 = add i4 %i_i2, 1
  br i1 %exitcond_i, label %_memcpy.1.exit, label %4

; <label>:4                                       ; preds = %3
  %tmp_i3 = zext i4 %i_i2 to i64
  %t_addr_61 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i3
  %t_load_70 = load i64* %t_addr_61, align 8
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 %tmp_i3
  store i64 %t_load_70, i64* %output_addr, align 8
  br label %3

_memcpy.1.exit:                                   ; preds = %3
  ret void
}

define internal fastcc void @freduce_degree([19 x i64]* nocapture %output_r) {
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 0
  %output_addr_54 = getelementptr [19 x i64]* %output_r, i64 0, i64 18
  %output_load = load i64* %output_addr_54, align 8
  %tmp = shl i64 %output_load, 4
  %output_addr_55 = getelementptr [19 x i64]* %output_r, i64 0, i64 8
  %output_load_2 = load i64* %output_addr_55, align 8
  %tmp_379 = shl i64 %output_load, 1
  %tmp1 = add i64 %output_load_2, %output_load
  %tmp2 = add i64 %tmp, %tmp_379
  %tmp_291 = add nsw i64 %tmp2, %tmp1
  store i64 %tmp_291, i64* %output_addr_55, align 8
  %output_addr_56 = getelementptr [19 x i64]* %output_r, i64 0, i64 17
  %output_load_3 = load i64* %output_addr_56, align 8
  %tmp_380 = shl i64 %output_load_3, 4
  %output_addr_57 = getelementptr [19 x i64]* %output_r, i64 0, i64 7
  %output_load_4 = load i64* %output_addr_57, align 8
  %tmp_381 = shl i64 %output_load_3, 1
  %tmp3 = add i64 %output_load_4, %output_load_3
  %tmp4 = add i64 %tmp_380, %tmp_381
  %tmp_292 = add nsw i64 %tmp4, %tmp3
  store i64 %tmp_292, i64* %output_addr_57, align 8
  %output_addr_58 = getelementptr [19 x i64]* %output_r, i64 0, i64 16
  %output_load_5 = load i64* %output_addr_58, align 8
  %tmp_382 = shl i64 %output_load_5, 4
  %output_addr_59 = getelementptr [19 x i64]* %output_r, i64 0, i64 6
  %output_load_6 = load i64* %output_addr_59, align 8
  %tmp_383 = shl i64 %output_load_5, 1
  %tmp5 = add i64 %output_load_6, %output_load_5
  %tmp6 = add i64 %tmp_382, %tmp_383
  %tmp_293 = add nsw i64 %tmp6, %tmp5
  store i64 %tmp_293, i64* %output_addr_59, align 8
  %output_addr_60 = getelementptr [19 x i64]* %output_r, i64 0, i64 15
  %output_load_7 = load i64* %output_addr_60, align 8
  %tmp_384 = shl i64 %output_load_7, 4
  %output_addr_61 = getelementptr [19 x i64]* %output_r, i64 0, i64 5
  %output_load_8 = load i64* %output_addr_61, align 8
  %tmp_385 = shl i64 %output_load_7, 1
  %tmp7 = add i64 %output_load_8, %output_load_7
  %tmp8 = add i64 %tmp_384, %tmp_385
  %tmp_294 = add nsw i64 %tmp8, %tmp7
  store i64 %tmp_294, i64* %output_addr_61, align 8
  %output_addr_62 = getelementptr [19 x i64]* %output_r, i64 0, i64 14
  %output_load_9 = load i64* %output_addr_62, align 8
  %tmp_386 = shl i64 %output_load_9, 4
  %output_addr_63 = getelementptr [19 x i64]* %output_r, i64 0, i64 4
  %output_load_10 = load i64* %output_addr_63, align 8
  %tmp_387 = shl i64 %output_load_9, 1
  %tmp9 = add i64 %output_load_10, %output_load_9
  %tmp10 = add i64 %tmp_386, %tmp_387
  %tmp_295 = add nsw i64 %tmp10, %tmp9
  store i64 %tmp_295, i64* %output_addr_63, align 8
  %output_addr_64 = getelementptr [19 x i64]* %output_r, i64 0, i64 13
  %output_load_11 = load i64* %output_addr_64, align 8
  %tmp_388 = shl i64 %output_load_11, 4
  %output_addr_65 = getelementptr [19 x i64]* %output_r, i64 0, i64 3
  %output_load_12 = load i64* %output_addr_65, align 8
  %tmp_389 = shl i64 %output_load_11, 1
  %tmp11 = add i64 %output_load_12, %output_load_11
  %tmp12 = add i64 %tmp_388, %tmp_389
  %tmp_s = add nsw i64 %tmp12, %tmp11
  store i64 %tmp_s, i64* %output_addr_65, align 8
  %output_addr_66 = getelementptr [19 x i64]* %output_r, i64 0, i64 12
  %output_load_13 = load i64* %output_addr_66, align 8
  %tmp_390 = shl i64 %output_load_13, 4
  %output_addr_67 = getelementptr [19 x i64]* %output_r, i64 0, i64 2
  %output_load_14 = load i64* %output_addr_67, align 8
  %tmp_391 = shl i64 %output_load_13, 1
  %tmp13 = add i64 %output_load_14, %output_load_13
  %tmp14 = add i64 %tmp_390, %tmp_391
  %tmp_296 = add nsw i64 %tmp14, %tmp13
  store i64 %tmp_296, i64* %output_addr_67, align 8
  %output_addr_68 = getelementptr [19 x i64]* %output_r, i64 0, i64 11
  %output_load_15 = load i64* %output_addr_68, align 8
  %tmp_392 = shl i64 %output_load_15, 4
  %output_addr_69 = getelementptr [19 x i64]* %output_r, i64 0, i64 1
  %output_load_16 = load i64* %output_addr_69, align 8
  %tmp_393 = shl i64 %output_load_15, 1
  %tmp15 = add i64 %output_load_16, %output_load_15
  %tmp16 = add i64 %tmp_392, %tmp_393
  %tmp_297 = add nsw i64 %tmp16, %tmp15
  store i64 %tmp_297, i64* %output_addr_69, align 8
  %output_addr_70 = getelementptr [19 x i64]* %output_r, i64 0, i64 10
  %output_load_17 = load i64* %output_addr_70, align 8
  %tmp_394 = shl i64 %output_load_17, 4
  %output_load_18 = load i64* %output_addr, align 8
  %tmp_395 = shl i64 %output_load_17, 1
  %tmp17 = add i64 %output_load_18, %output_load_17
  %tmp18 = add i64 %tmp_394, %tmp_395
  %tmp_298 = add nsw i64 %tmp18, %tmp17
  store i64 %tmp_298, i64* %output_addr, align 8
  ret void
}

define internal fastcc void @freduce_coefficients([19 x i64]* nocapture %output_r) {
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 0
  %output_addr_71 = getelementptr [19 x i64]* %output_r, i64 0, i64 10
  store i64 0, i64* %output_addr_71, align 8
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]
  %tmp = icmp ult i4 %i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_s = zext i4 %i to i64
  %output_addr_72 = getelementptr [19 x i64]* %output_r, i64 0, i64 %tmp_s
  %output_load_23 = load i64* %output_addr_72, align 8
  %tmp_396 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %output_load_23, i32 63)
  %tmp_i_cast_cast = select i1 %tmp_396, i64 67108863, i64 0
  %tmp_1064_i = add nsw i64 %output_load_23, %tmp_i_cast_cast
  %tmp_397_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i, i32 26, i32 63)
  %over = sext i38 %tmp_397_i to i64
  %tmp_299 = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i, i26 0)
  %tmp_300 = sub nsw i64 %output_load_23, %tmp_299
  store i64 %tmp_300, i64* %output_addr_72, align 8
  %tmp_301 = or i4 %i, 1
  %tmp_302 = zext i4 %tmp_301 to i64
  %output_addr_73 = getelementptr [19 x i64]* %output_r, i64 0, i64 %tmp_302
  %output_load = load i64* %output_addr_73, align 8
  %v_assign_7 = add nsw i64 %output_load, %over
  %tmp_397 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_7, i32 63)
  %tmp_i1_cast_cast = select i1 %tmp_397, i64 33554431, i64 0
  %tmp_1066_i = add nsw i64 %tmp_i1_cast_cast, %v_assign_7
  %tmp_399_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i, i32 25, i32 63)
  %over_7 = sext i39 %tmp_399_i to i64
  %tmp_303 = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i, i25 0)
  %tmp_304 = sub nsw i64 %v_assign_7, %tmp_303
  store i64 %tmp_304, i64* %output_addr_73, align 8
  %i_4 = add i4 %i, 2
  %tmp_305 = zext i4 %i_4 to i64
  %output_addr_74 = getelementptr [19 x i64]* %output_r, i64 0, i64 %tmp_305
  %output_load_19 = load i64* %output_addr_74, align 8
  %tmp_306 = add nsw i64 %output_load_19, %over_7
  store i64 %tmp_306, i64* %output_addr_74, align 8
  br label %1

; <label>:3                                       ; preds = %1
  %output_load_20 = load i64* %output_addr_71, align 8
  %tmp_398 = shl i64 %output_load_20, 4
  %output_load_21 = load i64* %output_addr, align 8
  %tmp_399 = shl i64 %output_load_20, 1
  %tmp2 = add i64 %output_load_20, %output_load_21
  %tmp3 = add i64 %tmp_399, %tmp_398
  %v_assign_8 = add nsw i64 %tmp2, %tmp3
  store i64 0, i64* %output_addr_71, align 8
  %tmp_400 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_8, i32 63)
  %tmp_i2_cast_cast = select i1 %tmp_400, i64 67108863, i64 0
  %tmp_1064_i1 = add nsw i64 %v_assign_8, %tmp_i2_cast_cast
  %tmp_397_i1 = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i1, i32 26, i32 63)
  %over_8 = sext i38 %tmp_397_i1 to i64
  %tmp_307 = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i1, i26 0)
  %tmp_308 = sub nsw i64 %v_assign_8, %tmp_307
  store i64 %tmp_308, i64* %output_addr, align 8
  %output_addr_75 = getelementptr [19 x i64]* %output_r, i64 0, i64 1
  %output_load_22 = load i64* %output_addr_75, align 8
  %tmp_309 = add nsw i64 %over_8, %output_load_22
  store i64 %tmp_309, i64* %output_addr_75, align 8
  ret void
}

define internal fastcc void @fproduct.3([19 x i64]* nocapture %output_r, [10 x i64]* nocapture %in2, [11 x i64]* nocapture %in_r) {
  %in_addr = getelementptr [11 x i64]* %in_r, i64 0, i64 0
  %in2_addr = getelementptr [10 x i64]* %in2, i64 0, i64 0
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %in2_load = load i64* %in2_addr, align 8
  %tmp = trunc i64 %in2_load to i32
  %tmp_s = sext i32 %tmp to i64
  %in_load = load i64* %in_addr, align 8
  %tmp_406 = trunc i64 %in_load to i32
  %tmp_310 = sext i32 %tmp_406 to i64
  %tmp_311 = mul nsw i64 %tmp_s, %tmp_310
  store i64 %tmp_311, i64* %output_addr, align 8
  %in_addr_29 = getelementptr [11 x i64]* %in_r, i64 0, i64 1
  %in_load_22 = load i64* %in_addr_29, align 8
  %tmp_409 = trunc i64 %in_load_22 to i32
  %tmp_312 = sext i32 %tmp_409 to i64
  %tmp_313 = mul nsw i64 %tmp_s, %tmp_312
  %in2_addr_1 = getelementptr [10 x i64]* %in2, i64 0, i64 1
  %in2_load_1 = load i64* %in2_addr_1, align 8
  %tmp_422 = trunc i64 %in2_load_1 to i32
  %tmp_314 = sext i32 %tmp_422 to i64
  %tmp_315 = mul nsw i64 %tmp_314, %tmp_310
  %tmp_316 = add nsw i64 %tmp_313, %tmp_315
  %output_addr_76 = getelementptr [19 x i64]* %output_r, i64 0, i64 1
  store i64 %tmp_316, i64* %output_addr_76, align 8
  %tmp_317 = sext i32 %tmp_422 to i63
  %tmp_318 = sext i32 %tmp_409 to i63
  %tmp_319 = mul i63 %tmp_317, %tmp_318
  %tmp_320 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_319, i1 false)
  %in_addr_30 = getelementptr [11 x i64]* %in_r, i64 0, i64 2
  %in_load_23 = load i64* %in_addr_30, align 8
  %tmp_425 = trunc i64 %in_load_23 to i32
  %tmp_321 = sext i32 %tmp_425 to i64
  %tmp_322 = mul nsw i64 %tmp_s, %tmp_321
  %in2_addr_2 = getelementptr [10 x i64]* %in2, i64 0, i64 2
  %in2_load_2 = load i64* %in2_addr_2, align 8
  %tmp_437 = trunc i64 %in2_load_2 to i32
  %tmp_323 = sext i32 %tmp_437 to i64
  %tmp_324 = mul nsw i64 %tmp_323, %tmp_310
  %tmp1 = add i64 %tmp_324, %tmp_320
  %tmp_325 = add i64 %tmp_322, %tmp1
  %output_addr_77 = getelementptr [19 x i64]* %output_r, i64 0, i64 2
  store i64 %tmp_325, i64* %output_addr_77, align 8
  %tmp_326 = mul nsw i64 %tmp_314, %tmp_321
  %tmp_327 = mul nsw i64 %tmp_323, %tmp_312
  %in_addr_31 = getelementptr [11 x i64]* %in_r, i64 0, i64 3
  %in_load_24 = load i64* %in_addr_31, align 8
  %tmp_440 = trunc i64 %in_load_24 to i32
  %tmp_328 = sext i32 %tmp_440 to i64
  %tmp_329 = mul nsw i64 %tmp_s, %tmp_328
  %in2_addr_3 = getelementptr [10 x i64]* %in2, i64 0, i64 3
  %in2_load_3 = load i64* %in2_addr_3, align 8
  %tmp_486 = trunc i64 %in2_load_3 to i32
  %tmp_330 = sext i32 %tmp_486 to i64
  %tmp_331 = mul nsw i64 %tmp_330, %tmp_310
  %tmp2 = add i64 %tmp_326, %tmp_327
  %tmp3 = add i64 %tmp_331, %tmp_329
  %tmp_332 = add i64 %tmp2, %tmp3
  %output_addr_78 = getelementptr [19 x i64]* %output_r, i64 0, i64 3
  store i64 %tmp_332, i64* %output_addr_78, align 8
  %tmp_333 = mul nsw i64 %tmp_323, %tmp_321
  %tmp_334 = mul nsw i64 %tmp_314, %tmp_328
  %tmp_335 = mul nsw i64 %tmp_330, %tmp_312
  %tmp_336 = add nsw i64 %tmp_334, %tmp_335
  %tmp_487 = shl i64 %tmp_336, 1
  %in_addr_32 = getelementptr [11 x i64]* %in_r, i64 0, i64 4
  %in_load_25 = load i64* %in_addr_32, align 8
  %tmp_500 = trunc i64 %in_load_25 to i32
  %tmp_337 = sext i32 %tmp_500 to i64
  %tmp_338 = mul nsw i64 %tmp_s, %tmp_337
  %in2_addr_4 = getelementptr [10 x i64]* %in2, i64 0, i64 4
  %in2_load_4 = load i64* %in2_addr_4, align 8
  %tmp_501 = trunc i64 %in2_load_4 to i32
  %tmp_339 = sext i32 %tmp_501 to i64
  %tmp_340 = mul nsw i64 %tmp_339, %tmp_310
  %tmp4 = add i64 %tmp_333, %tmp_487
  %tmp5 = add i64 %tmp_340, %tmp_338
  %tmp_341 = add i64 %tmp4, %tmp5
  %output_addr_79 = getelementptr [19 x i64]* %output_r, i64 0, i64 4
  store i64 %tmp_341, i64* %output_addr_79, align 8
  %tmp_342 = mul nsw i64 %tmp_323, %tmp_328
  %tmp_343 = mul nsw i64 %tmp_330, %tmp_321
  %tmp_344 = mul nsw i64 %tmp_314, %tmp_337
  %tmp_345 = mul nsw i64 %tmp_339, %tmp_312
  %in_addr_33 = getelementptr [11 x i64]* %in_r, i64 0, i64 5
  %in_load_26 = load i64* %in_addr_33, align 8
  %tmp_508 = trunc i64 %in_load_26 to i32
  %tmp_346 = sext i32 %tmp_508 to i64
  %tmp_347 = mul nsw i64 %tmp_s, %tmp_346
  %in2_addr_5 = getelementptr [10 x i64]* %in2, i64 0, i64 5
  %in2_load_5 = load i64* %in2_addr_5, align 8
  %tmp_509 = trunc i64 %in2_load_5 to i32
  %tmp_348 = sext i32 %tmp_509 to i64
  %tmp_349 = mul nsw i64 %tmp_348, %tmp_310
  %tmp7 = add i64 %tmp_344, %tmp_342
  %tmp6 = add i64 %tmp_343, %tmp7
  %tmp9 = add i64 %tmp_349, %tmp_347
  %tmp8 = add i64 %tmp_345, %tmp9
  %tmp_350 = add i64 %tmp6, %tmp8
  %output_addr_80 = getelementptr [19 x i64]* %output_r, i64 0, i64 5
  store i64 %tmp_350, i64* %output_addr_80, align 8
  %tmp_353 = mul nsw i64 %tmp_330, %tmp_328
  %tmp_354 = mul nsw i64 %tmp_314, %tmp_346
  %tmp_355 = mul nsw i64 %tmp_348, %tmp_312
  %tmp10 = add i64 %tmp_355, %tmp_353
  %tmp_356 = add i64 %tmp_354, %tmp10
  %tmp_510 = shl i64 %tmp_356, 1
  %tmp_357 = mul nsw i64 %tmp_323, %tmp_337
  %tmp_358 = mul nsw i64 %tmp_339, %tmp_321
  %in_addr_34 = getelementptr [11 x i64]* %in_r, i64 0, i64 6
  %in_load_27 = load i64* %in_addr_34, align 8
  %tmp_511 = trunc i64 %in_load_27 to i32
  %tmp_359 = sext i32 %tmp_511 to i64
  %tmp_360 = mul nsw i64 %tmp_s, %tmp_359
  %in2_addr_6 = getelementptr [10 x i64]* %in2, i64 0, i64 6
  %in2_load_6 = load i64* %in2_addr_6, align 8
  %tmp_512 = trunc i64 %in2_load_6 to i32
  %tmp_361 = sext i32 %tmp_512 to i64
  %tmp_362 = mul nsw i64 %tmp_361, %tmp_310
  %tmp11 = add i64 %tmp_510, %tmp_357
  %tmp13 = add i64 %tmp_362, %tmp_360
  %tmp12 = add i64 %tmp_358, %tmp13
  %tmp_363 = add i64 %tmp11, %tmp12
  %output_addr_81 = getelementptr [19 x i64]* %output_r, i64 0, i64 6
  store i64 %tmp_363, i64* %output_addr_81, align 8
  %tmp_364 = mul nsw i64 %tmp_330, %tmp_337
  %tmp_365 = mul nsw i64 %tmp_339, %tmp_328
  %tmp_366 = mul nsw i64 %tmp_323, %tmp_346
  %tmp_367 = mul nsw i64 %tmp_348, %tmp_321
  %tmp_368 = mul nsw i64 %tmp_314, %tmp_359
  %tmp_369 = mul nsw i64 %tmp_361, %tmp_312
  %in_addr_35 = getelementptr [11 x i64]* %in_r, i64 0, i64 7
  %in_load_28 = load i64* %in_addr_35, align 8
  %tmp_513 = trunc i64 %in_load_28 to i32
  %tmp_370 = sext i32 %tmp_513 to i64
  %tmp_371 = mul nsw i64 %tmp_s, %tmp_370
  %in2_addr_7 = getelementptr [10 x i64]* %in2, i64 0, i64 7
  %in2_load_7 = load i64* %in2_addr_7, align 8
  %tmp_514 = trunc i64 %in2_load_7 to i32
  %tmp_372 = sext i32 %tmp_514 to i64
  %tmp_373 = mul nsw i64 %tmp_372, %tmp_310
  %tmp15 = add i64 %tmp_364, %tmp_365
  %tmp16 = add i64 %tmp_367, %tmp_366
  %tmp14 = add i64 %tmp15, %tmp16
  %tmp18 = add i64 %tmp_369, %tmp_368
  %tmp19 = add i64 %tmp_373, %tmp_371
  %tmp17 = add i64 %tmp18, %tmp19
  %tmp_374 = add i64 %tmp14, %tmp17
  %output_addr_82 = getelementptr [19 x i64]* %output_r, i64 0, i64 7
  store i64 %tmp_374, i64* %output_addr_82, align 8
  %tmp_375 = mul nsw i64 %tmp_339, %tmp_337
  %tmp_376 = mul nsw i64 %tmp_330, %tmp_346
  %tmp_377 = mul nsw i64 %tmp_348, %tmp_328
  %tmp_378 = mul nsw i64 %tmp_314, %tmp_370
  %tmp_379 = mul nsw i64 %tmp_372, %tmp_312
  %tmp20 = add i64 %tmp_376, %tmp_377
  %tmp21 = add i64 %tmp_379, %tmp_378
  %tmp_515 = trunc i64 %tmp21 to i63
  %tmp_516 = trunc i64 %tmp20 to i63
  %tmp_380 = add i63 %tmp_515, %tmp_516
  %tmp_381 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_380, i1 false)
  %tmp_382 = mul nsw i64 %tmp_323, %tmp_359
  %tmp_383 = mul nsw i64 %tmp_361, %tmp_321
  %in_addr_36 = getelementptr [11 x i64]* %in_r, i64 0, i64 8
  %in_load_29 = load i64* %in_addr_36, align 8
  %tmp_517 = trunc i64 %in_load_29 to i32
  %tmp_384 = sext i32 %tmp_517 to i64
  %tmp_385 = mul nsw i64 %tmp_s, %tmp_384
  %in2_addr_8 = getelementptr [10 x i64]* %in2, i64 0, i64 8
  %in2_load_8 = load i64* %in2_addr_8, align 8
  %tmp_518 = trunc i64 %in2_load_8 to i32
  %tmp_386 = sext i32 %tmp_518 to i64
  %tmp_387 = mul nsw i64 %tmp_386, %tmp_310
  %tmp23 = add i64 %tmp_382, %tmp_375
  %tmp22 = add i64 %tmp_381, %tmp23
  %tmp25 = add i64 %tmp_387, %tmp_385
  %tmp24 = add i64 %tmp_383, %tmp25
  %tmp_388 = add i64 %tmp22, %tmp24
  %output_addr_83 = getelementptr [19 x i64]* %output_r, i64 0, i64 8
  store i64 %tmp_388, i64* %output_addr_83, align 8
  %tmp_389 = mul nsw i64 %tmp_339, %tmp_346
  %tmp_390 = mul nsw i64 %tmp_348, %tmp_337
  %tmp_391 = mul nsw i64 %tmp_330, %tmp_359
  %tmp_392 = mul nsw i64 %tmp_361, %tmp_328
  %tmp_393 = mul nsw i64 %tmp_323, %tmp_370
  %tmp_394 = mul nsw i64 %tmp_372, %tmp_321
  %tmp_395 = mul nsw i64 %tmp_314, %tmp_384
  %tmp_396 = mul nsw i64 %tmp_386, %tmp_312
  %in_addr_37 = getelementptr [11 x i64]* %in_r, i64 0, i64 9
  %in_load_30 = load i64* %in_addr_37, align 8
  %tmp_519 = trunc i64 %in_load_30 to i32
  %tmp_397 = sext i32 %tmp_519 to i64
  %tmp_398 = mul nsw i64 %tmp_s, %tmp_397
  %in2_addr_9 = getelementptr [10 x i64]* %in2, i64 0, i64 9
  %in2_load_9 = load i64* %in2_addr_9, align 8
  %tmp_520 = trunc i64 %in2_load_9 to i32
  %tmp_399 = sext i32 %tmp_520 to i64
  %tmp_400 = mul nsw i64 %tmp_399, %tmp_310
  %tmp27 = add i64 %tmp_389, %tmp_390
  %tmp29 = add i64 %tmp_393, %tmp_392
  %tmp28 = add i64 %tmp_391, %tmp29
  %tmp26 = add i64 %tmp27, %tmp28
  %tmp31 = add i64 %tmp_395, %tmp_394
  %tmp33 = add i64 %tmp_400, %tmp_398
  %tmp32 = add i64 %tmp_396, %tmp33
  %tmp30 = add i64 %tmp31, %tmp32
  %tmp_401 = add i64 %tmp26, %tmp30
  %output_addr_84 = getelementptr [19 x i64]* %output_r, i64 0, i64 9
  store i64 %tmp_401, i64* %output_addr_84, align 8
  %tmp_402 = mul nsw i64 %tmp_348, %tmp_346
  %tmp_403 = mul nsw i64 %tmp_330, %tmp_370
  %tmp_404 = mul nsw i64 %tmp_372, %tmp_328
  %tmp_405 = mul nsw i64 %tmp_314, %tmp_397
  %tmp_407 = mul nsw i64 %tmp_399, %tmp_312
  %tmp34 = add i64 %tmp_402, %tmp_403
  %tmp36 = add i64 %tmp_407, %tmp_405
  %tmp35 = add i64 %tmp_404, %tmp36
  %tmp_521 = trunc i64 %tmp35 to i63
  %tmp_522 = trunc i64 %tmp34 to i63
  %tmp_408 = add i63 %tmp_521, %tmp_522
  %tmp_410 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_408, i1 false)
  %tmp_411 = mul nsw i64 %tmp_339, %tmp_359
  %tmp_412 = mul nsw i64 %tmp_361, %tmp_337
  %tmp_413 = mul nsw i64 %tmp_323, %tmp_384
  %tmp_414 = mul nsw i64 %tmp_386, %tmp_321
  %tmp37 = add i64 %tmp_410, %tmp_411
  %tmp39 = add i64 %tmp_414, %tmp_413
  %tmp38 = add i64 %tmp_412, %tmp39
  %tmp_415 = add i64 %tmp37, %tmp38
  %output_addr_85 = getelementptr [19 x i64]* %output_r, i64 0, i64 10
  store i64 %tmp_415, i64* %output_addr_85, align 8
  %tmp_416 = mul nsw i64 %tmp_348, %tmp_359
  %tmp_417 = mul nsw i64 %tmp_361, %tmp_346
  %tmp_418 = mul nsw i64 %tmp_339, %tmp_370
  %tmp_419 = mul nsw i64 %tmp_372, %tmp_337
  %tmp_420 = mul nsw i64 %tmp_330, %tmp_384
  %tmp_421 = mul nsw i64 %tmp_386, %tmp_328
  %tmp_423 = mul nsw i64 %tmp_323, %tmp_397
  %tmp_424 = mul nsw i64 %tmp_399, %tmp_321
  %tmp41 = add i64 %tmp_416, %tmp_417
  %tmp42 = add i64 %tmp_419, %tmp_418
  %tmp40 = add i64 %tmp41, %tmp42
  %tmp44 = add i64 %tmp_421, %tmp_420
  %tmp45 = add i64 %tmp_424, %tmp_423
  %tmp43 = add i64 %tmp44, %tmp45
  %tmp_426 = add i64 %tmp40, %tmp43
  %output_addr_86 = getelementptr [19 x i64]* %output_r, i64 0, i64 11
  store i64 %tmp_426, i64* %output_addr_86, align 8
  %tmp_427 = mul nsw i64 %tmp_361, %tmp_359
  %tmp_428 = mul nsw i64 %tmp_348, %tmp_370
  %tmp_429 = mul nsw i64 %tmp_372, %tmp_346
  %tmp_430 = mul nsw i64 %tmp_330, %tmp_397
  %tmp_431 = mul nsw i64 %tmp_399, %tmp_328
  %tmp46 = add i64 %tmp_428, %tmp_429
  %tmp47 = add i64 %tmp_431, %tmp_430
  %tmp_523 = trunc i64 %tmp47 to i63
  %tmp_524 = trunc i64 %tmp46 to i63
  %tmp_432 = add i63 %tmp_523, %tmp_524
  %tmp_433 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_432, i1 false)
  %tmp_434 = mul nsw i64 %tmp_339, %tmp_384
  %tmp_435 = mul nsw i64 %tmp_386, %tmp_337
  %tmp48 = add i64 %tmp_427, %tmp_433
  %tmp49 = add i64 %tmp_435, %tmp_434
  %tmp_436 = add i64 %tmp48, %tmp49
  %output_addr_87 = getelementptr [19 x i64]* %output_r, i64 0, i64 12
  store i64 %tmp_436, i64* %output_addr_87, align 8
  %tmp_438 = mul nsw i64 %tmp_361, %tmp_370
  %tmp_439 = mul nsw i64 %tmp_372, %tmp_359
  %tmp_441 = mul nsw i64 %tmp_348, %tmp_384
  %tmp_442 = mul nsw i64 %tmp_386, %tmp_346
  %tmp_443 = mul nsw i64 %tmp_339, %tmp_397
  %tmp_444 = mul nsw i64 %tmp_399, %tmp_337
  %tmp51 = add i64 %tmp_441, %tmp_438
  %tmp50 = add i64 %tmp_439, %tmp51
  %tmp53 = add i64 %tmp_444, %tmp_443
  %tmp52 = add i64 %tmp_442, %tmp53
  %tmp_445 = add i64 %tmp50, %tmp52
  %output_addr_88 = getelementptr [19 x i64]* %output_r, i64 0, i64 13
  store i64 %tmp_445, i64* %output_addr_88, align 8
  %tmp_446 = mul nsw i64 %tmp_372, %tmp_370
  %tmp_447 = mul nsw i64 %tmp_348, %tmp_397
  %tmp_448 = mul nsw i64 %tmp_399, %tmp_346
  %tmp54 = add i64 %tmp_448, %tmp_446
  %tmp_449 = add i64 %tmp_447, %tmp54
  %tmp_525 = shl i64 %tmp_449, 1
  %tmp_450 = mul nsw i64 %tmp_361, %tmp_384
  %tmp_451 = mul nsw i64 %tmp_386, %tmp_359
  %tmp55 = add i64 %tmp_451, %tmp_525
  %tmp_452 = add i64 %tmp_450, %tmp55
  %output_addr_89 = getelementptr [19 x i64]* %output_r, i64 0, i64 14
  store i64 %tmp_452, i64* %output_addr_89, align 8
  %tmp_453 = mul nsw i64 %tmp_372, %tmp_384
  %tmp_454 = mul nsw i64 %tmp_386, %tmp_370
  %tmp_455 = mul nsw i64 %tmp_361, %tmp_397
  %tmp_456 = mul nsw i64 %tmp_399, %tmp_359
  %tmp56 = add i64 %tmp_453, %tmp_454
  %tmp57 = add i64 %tmp_456, %tmp_455
  %tmp_457 = add i64 %tmp56, %tmp57
  %output_addr_90 = getelementptr [19 x i64]* %output_r, i64 0, i64 15
  store i64 %tmp_457, i64* %output_addr_90, align 8
  %tmp_458 = mul nsw i64 %tmp_386, %tmp_384
  %tmp_459 = mul nsw i64 %tmp_372, %tmp_397
  %tmp_460 = mul nsw i64 %tmp_399, %tmp_370
  %tmp_461 = add nsw i64 %tmp_459, %tmp_460
  %tmp_526 = shl i64 %tmp_461, 1
  %tmp_462 = add nsw i64 %tmp_458, %tmp_526
  %output_addr_91 = getelementptr [19 x i64]* %output_r, i64 0, i64 16
  store i64 %tmp_462, i64* %output_addr_91, align 8
  %tmp_463 = mul nsw i64 %tmp_386, %tmp_397
  %tmp_464 = mul nsw i64 %tmp_399, %tmp_384
  %tmp_465 = add nsw i64 %tmp_463, %tmp_464
  %output_addr_92 = getelementptr [19 x i64]* %output_r, i64 0, i64 17
  store i64 %tmp_465, i64* %output_addr_92, align 8
  %tmp_351 = sext i32 %tmp_520 to i63
  %tmp_352 = sext i32 %tmp_519 to i63
  %tmp_466 = mul i63 %tmp_351, %tmp_352
  %tmp_467 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_466, i1 false)
  %output_addr_93 = getelementptr [19 x i64]* %output_r, i64 0, i64 18
  store i64 %tmp_467, i64* %output_addr_93, align 8
  ret void
}

define internal fastcc void @fproduct.2([19 x i64]* nocapture %output_r, [10 x i64]* nocapture %in2, [10 x i64]* nocapture %in_r) {
  %in_addr = getelementptr [10 x i64]* %in_r, i64 0, i64 0
  %in2_addr = getelementptr [10 x i64]* %in2, i64 0, i64 0
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %in2_load = load i64* %in2_addr, align 8
  %tmp = trunc i64 %in2_load to i32
  %tmp_s = sext i32 %tmp to i64
  %in_load = load i64* %in_addr, align 8
  %tmp_528 = trunc i64 %in_load to i32
  %tmp_384 = sext i32 %tmp_528 to i64
  %tmp_385 = mul nsw i64 %tmp_s, %tmp_384
  store i64 %tmp_385, i64* %output_addr, align 8
  %in_addr_38 = getelementptr [10 x i64]* %in_r, i64 0, i64 1
  %in_load_31 = load i64* %in_addr_38, align 8
  %tmp_531 = trunc i64 %in_load_31 to i32
  %tmp_389 = sext i32 %tmp_531 to i64
  %tmp_390 = mul nsw i64 %tmp_s, %tmp_389
  %in2_addr_10 = getelementptr [10 x i64]* %in2, i64 0, i64 1
  %in2_load_2 = load i64* %in2_addr_10, align 8
  %tmp_544 = trunc i64 %in2_load_2 to i32
  %tmp_392 = sext i32 %tmp_544 to i64
  %tmp_395 = mul nsw i64 %tmp_392, %tmp_384
  %tmp_396 = add nsw i64 %tmp_390, %tmp_395
  %output_addr_94 = getelementptr [19 x i64]* %output_r, i64 0, i64 1
  store i64 %tmp_396, i64* %output_addr_94, align 8
  %tmp_353 = sext i32 %tmp_544 to i63
  %tmp_354 = sext i32 %tmp_531 to i63
  %tmp_468 = mul i63 %tmp_353, %tmp_354
  %tmp_402 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_468, i1 false)
  %in_addr_39 = getelementptr [10 x i64]* %in_r, i64 0, i64 2
  %in_load_32 = load i64* %in_addr_39, align 8
  %tmp_547 = trunc i64 %in_load_32 to i32
  %tmp_406 = sext i32 %tmp_547 to i64
  %tmp_407 = mul nsw i64 %tmp_s, %tmp_406
  %in2_addr_11 = getelementptr [10 x i64]* %in2, i64 0, i64 2
  %in2_load_5 = load i64* %in2_addr_11, align 8
  %tmp_559 = trunc i64 %in2_load_5 to i32
  %tmp_409 = sext i32 %tmp_559 to i64
  %tmp_412 = mul nsw i64 %tmp_409, %tmp_384
  %tmp1 = add i64 %tmp_412, %tmp_402
  %tmp_414 = add i64 %tmp_407, %tmp1
  %output_addr_95 = getelementptr [19 x i64]* %output_r, i64 0, i64 2
  store i64 %tmp_414, i64* %output_addr_95, align 8
  %tmp_419 = mul nsw i64 %tmp_392, %tmp_406
  %tmp_424 = mul nsw i64 %tmp_409, %tmp_389
  %in_addr_40 = getelementptr [10 x i64]* %in_r, i64 0, i64 3
  %in_load_33 = load i64* %in_addr_40, align 8
  %tmp_562 = trunc i64 %in_load_33 to i32
  %tmp_428 = sext i32 %tmp_562 to i64
  %tmp_429 = mul nsw i64 %tmp_s, %tmp_428
  %in2_addr_12 = getelementptr [10 x i64]* %in2, i64 0, i64 3
  %in2_load_9 = load i64* %in2_addr_12, align 8
  %tmp_608 = trunc i64 %in2_load_9 to i32
  %tmp_431 = sext i32 %tmp_608 to i64
  %tmp_434 = mul nsw i64 %tmp_431, %tmp_384
  %tmp2 = add i64 %tmp_419, %tmp_424
  %tmp3 = add i64 %tmp_434, %tmp_429
  %tmp_437 = add i64 %tmp2, %tmp3
  %output_addr_96 = getelementptr [19 x i64]* %output_r, i64 0, i64 3
  store i64 %tmp_437, i64* %output_addr_96, align 8
  %tmp_442 = mul nsw i64 %tmp_409, %tmp_406
  %tmp_447 = mul nsw i64 %tmp_392, %tmp_428
  %tmp_452 = mul nsw i64 %tmp_431, %tmp_389
  %tmp_453 = add nsw i64 %tmp_447, %tmp_452
  %tmp_621 = shl i64 %tmp_453, 1
  %in_addr_41 = getelementptr [10 x i64]* %in_r, i64 0, i64 4
  %in_load_34 = load i64* %in_addr_41, align 8
  %tmp_628 = trunc i64 %in_load_34 to i32
  %tmp_458 = sext i32 %tmp_628 to i64
  %tmp_459 = mul nsw i64 %tmp_s, %tmp_458
  %in2_addr_13 = getelementptr [10 x i64]* %in2, i64 0, i64 4
  %in2_load_10 = load i64* %in2_addr_13, align 8
  %tmp_629 = trunc i64 %in2_load_10 to i32
  %tmp_461 = sext i32 %tmp_629 to i64
  %tmp_464 = mul nsw i64 %tmp_461, %tmp_384
  %tmp4 = add i64 %tmp_442, %tmp_621
  %tmp5 = add i64 %tmp_464, %tmp_459
  %tmp_467 = add i64 %tmp4, %tmp5
  %output_addr_97 = getelementptr [19 x i64]* %output_r, i64 0, i64 4
  store i64 %tmp_467, i64* %output_addr_97, align 8
  %tmp_469 = mul nsw i64 %tmp_409, %tmp_428
  %tmp_470 = mul nsw i64 %tmp_431, %tmp_406
  %tmp_471 = mul nsw i64 %tmp_392, %tmp_458
  %tmp_472 = mul nsw i64 %tmp_461, %tmp_389
  %in_addr_42 = getelementptr [10 x i64]* %in_r, i64 0, i64 5
  %in_load_35 = load i64* %in_addr_42, align 8
  %tmp_630 = trunc i64 %in_load_35 to i32
  %tmp_473 = sext i32 %tmp_630 to i64
  %tmp_474 = mul nsw i64 %tmp_s, %tmp_473
  %in2_addr_14 = getelementptr [10 x i64]* %in2, i64 0, i64 5
  %in2_load_11 = load i64* %in2_addr_14, align 8
  %tmp_631 = trunc i64 %in2_load_11 to i32
  %tmp_475 = sext i32 %tmp_631 to i64
  %tmp_476 = mul nsw i64 %tmp_475, %tmp_384
  %tmp7 = add i64 %tmp_471, %tmp_469
  %tmp6 = add i64 %tmp_470, %tmp7
  %tmp9 = add i64 %tmp_476, %tmp_474
  %tmp8 = add i64 %tmp_472, %tmp9
  %tmp_477 = add i64 %tmp6, %tmp8
  %output_addr_98 = getelementptr [19 x i64]* %output_r, i64 0, i64 5
  store i64 %tmp_477, i64* %output_addr_98, align 8
  %tmp_478 = mul nsw i64 %tmp_431, %tmp_428
  %tmp_479 = mul nsw i64 %tmp_392, %tmp_473
  %tmp_480 = mul nsw i64 %tmp_475, %tmp_389
  %tmp10 = add i64 %tmp_480, %tmp_478
  %tmp_481 = add i64 %tmp_479, %tmp10
  %tmp_632 = shl i64 %tmp_481, 1
  %tmp_482 = mul nsw i64 %tmp_409, %tmp_458
  %tmp_483 = mul nsw i64 %tmp_461, %tmp_406
  %in_addr_43 = getelementptr [10 x i64]* %in_r, i64 0, i64 6
  %in_load_36 = load i64* %in_addr_43, align 8
  %tmp_633 = trunc i64 %in_load_36 to i32
  %tmp_484 = sext i32 %tmp_633 to i64
  %tmp_485 = mul nsw i64 %tmp_s, %tmp_484
  %in2_addr_15 = getelementptr [10 x i64]* %in2, i64 0, i64 6
  %in2_load_12 = load i64* %in2_addr_15, align 8
  %tmp_634 = trunc i64 %in2_load_12 to i32
  %tmp_486 = sext i32 %tmp_634 to i64
  %tmp_487 = mul nsw i64 %tmp_486, %tmp_384
  %tmp11 = add i64 %tmp_632, %tmp_482
  %tmp13 = add i64 %tmp_487, %tmp_485
  %tmp12 = add i64 %tmp_483, %tmp13
  %tmp_488 = add i64 %tmp11, %tmp12
  %output_addr_99 = getelementptr [19 x i64]* %output_r, i64 0, i64 6
  store i64 %tmp_488, i64* %output_addr_99, align 8
  %tmp_489 = mul nsw i64 %tmp_431, %tmp_458
  %tmp_490 = mul nsw i64 %tmp_461, %tmp_428
  %tmp_491 = mul nsw i64 %tmp_409, %tmp_473
  %tmp_492 = mul nsw i64 %tmp_475, %tmp_406
  %tmp_493 = mul nsw i64 %tmp_392, %tmp_484
  %tmp_494 = mul nsw i64 %tmp_486, %tmp_389
  %in_addr_44 = getelementptr [10 x i64]* %in_r, i64 0, i64 7
  %in_load_37 = load i64* %in_addr_44, align 8
  %tmp_635 = trunc i64 %in_load_37 to i32
  %tmp_495 = sext i32 %tmp_635 to i64
  %tmp_496 = mul nsw i64 %tmp_s, %tmp_495
  %in2_addr_16 = getelementptr [10 x i64]* %in2, i64 0, i64 7
  %in2_load_13 = load i64* %in2_addr_16, align 8
  %tmp_636 = trunc i64 %in2_load_13 to i32
  %tmp_497 = sext i32 %tmp_636 to i64
  %tmp_498 = mul nsw i64 %tmp_497, %tmp_384
  %tmp15 = add i64 %tmp_489, %tmp_490
  %tmp16 = add i64 %tmp_492, %tmp_491
  %tmp14 = add i64 %tmp15, %tmp16
  %tmp18 = add i64 %tmp_494, %tmp_493
  %tmp19 = add i64 %tmp_498, %tmp_496
  %tmp17 = add i64 %tmp18, %tmp19
  %tmp_499 = add i64 %tmp14, %tmp17
  %output_addr_100 = getelementptr [19 x i64]* %output_r, i64 0, i64 7
  store i64 %tmp_499, i64* %output_addr_100, align 8
  %tmp_500 = mul nsw i64 %tmp_461, %tmp_458
  %tmp_501 = mul nsw i64 %tmp_431, %tmp_473
  %tmp_502 = mul nsw i64 %tmp_475, %tmp_428
  %tmp_503 = mul nsw i64 %tmp_392, %tmp_495
  %tmp_504 = mul nsw i64 %tmp_497, %tmp_389
  %tmp20 = add i64 %tmp_501, %tmp_502
  %tmp21 = add i64 %tmp_504, %tmp_503
  %tmp_637 = trunc i64 %tmp21 to i63
  %tmp_638 = trunc i64 %tmp20 to i63
  %tmp_505 = add i63 %tmp_637, %tmp_638
  %tmp_506 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_505, i1 false)
  %tmp_507 = mul nsw i64 %tmp_409, %tmp_484
  %tmp_508 = mul nsw i64 %tmp_486, %tmp_406
  %in_addr_45 = getelementptr [10 x i64]* %in_r, i64 0, i64 8
  %in_load_38 = load i64* %in_addr_45, align 8
  %tmp_639 = trunc i64 %in_load_38 to i32
  %tmp_509 = sext i32 %tmp_639 to i64
  %tmp_510 = mul nsw i64 %tmp_s, %tmp_509
  %in2_addr_17 = getelementptr [10 x i64]* %in2, i64 0, i64 8
  %in2_load_14 = load i64* %in2_addr_17, align 8
  %tmp_640 = trunc i64 %in2_load_14 to i32
  %tmp_511 = sext i32 %tmp_640 to i64
  %tmp_512 = mul nsw i64 %tmp_511, %tmp_384
  %tmp23 = add i64 %tmp_507, %tmp_500
  %tmp22 = add i64 %tmp_506, %tmp23
  %tmp25 = add i64 %tmp_512, %tmp_510
  %tmp24 = add i64 %tmp_508, %tmp25
  %tmp_513 = add i64 %tmp22, %tmp24
  %output_addr_101 = getelementptr [19 x i64]* %output_r, i64 0, i64 8
  store i64 %tmp_513, i64* %output_addr_101, align 8
  %tmp_514 = mul nsw i64 %tmp_461, %tmp_473
  %tmp_515 = mul nsw i64 %tmp_475, %tmp_458
  %tmp_516 = mul nsw i64 %tmp_431, %tmp_484
  %tmp_517 = mul nsw i64 %tmp_486, %tmp_428
  %tmp_518 = mul nsw i64 %tmp_409, %tmp_495
  %tmp_519 = mul nsw i64 %tmp_497, %tmp_406
  %tmp_520 = mul nsw i64 %tmp_392, %tmp_509
  %tmp_521 = mul nsw i64 %tmp_511, %tmp_389
  %in_addr_46 = getelementptr [10 x i64]* %in_r, i64 0, i64 9
  %in_load_39 = load i64* %in_addr_46, align 8
  %tmp_641 = trunc i64 %in_load_39 to i32
  %tmp_522 = sext i32 %tmp_641 to i64
  %tmp_523 = mul nsw i64 %tmp_s, %tmp_522
  %in2_addr_18 = getelementptr [10 x i64]* %in2, i64 0, i64 9
  %in2_load_15 = load i64* %in2_addr_18, align 8
  %tmp_642 = trunc i64 %in2_load_15 to i32
  %tmp_524 = sext i32 %tmp_642 to i64
  %tmp_525 = mul nsw i64 %tmp_524, %tmp_384
  %tmp27 = add i64 %tmp_514, %tmp_515
  %tmp29 = add i64 %tmp_518, %tmp_517
  %tmp28 = add i64 %tmp_516, %tmp29
  %tmp26 = add i64 %tmp27, %tmp28
  %tmp31 = add i64 %tmp_520, %tmp_519
  %tmp33 = add i64 %tmp_525, %tmp_523
  %tmp32 = add i64 %tmp_521, %tmp33
  %tmp30 = add i64 %tmp31, %tmp32
  %tmp_526 = add i64 %tmp26, %tmp30
  %output_addr_102 = getelementptr [19 x i64]* %output_r, i64 0, i64 9
  store i64 %tmp_526, i64* %output_addr_102, align 8
  %tmp_527 = mul nsw i64 %tmp_475, %tmp_473
  %tmp_529 = mul nsw i64 %tmp_431, %tmp_495
  %tmp_530 = mul nsw i64 %tmp_497, %tmp_428
  %tmp_532 = mul nsw i64 %tmp_392, %tmp_522
  %tmp_533 = mul nsw i64 %tmp_524, %tmp_389
  %tmp34 = add i64 %tmp_527, %tmp_529
  %tmp36 = add i64 %tmp_533, %tmp_532
  %tmp35 = add i64 %tmp_530, %tmp36
  %tmp_643 = trunc i64 %tmp35 to i63
  %tmp_644 = trunc i64 %tmp34 to i63
  %tmp_534 = add i63 %tmp_643, %tmp_644
  %tmp_535 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_534, i1 false)
  %tmp_536 = mul nsw i64 %tmp_461, %tmp_484
  %tmp_537 = mul nsw i64 %tmp_486, %tmp_458
  %tmp_538 = mul nsw i64 %tmp_409, %tmp_509
  %tmp_539 = mul nsw i64 %tmp_511, %tmp_406
  %tmp37 = add i64 %tmp_535, %tmp_536
  %tmp39 = add i64 %tmp_539, %tmp_538
  %tmp38 = add i64 %tmp_537, %tmp39
  %tmp_540 = add i64 %tmp37, %tmp38
  %output_addr_103 = getelementptr [19 x i64]* %output_r, i64 0, i64 10
  store i64 %tmp_540, i64* %output_addr_103, align 8
  %tmp_541 = mul nsw i64 %tmp_475, %tmp_484
  %tmp_542 = mul nsw i64 %tmp_486, %tmp_473
  %tmp_543 = mul nsw i64 %tmp_461, %tmp_495
  %tmp_545 = mul nsw i64 %tmp_497, %tmp_458
  %tmp_546 = mul nsw i64 %tmp_431, %tmp_509
  %tmp_548 = mul nsw i64 %tmp_511, %tmp_428
  %tmp_549 = mul nsw i64 %tmp_409, %tmp_522
  %tmp_550 = mul nsw i64 %tmp_524, %tmp_406
  %tmp41 = add i64 %tmp_541, %tmp_542
  %tmp42 = add i64 %tmp_545, %tmp_543
  %tmp40 = add i64 %tmp41, %tmp42
  %tmp44 = add i64 %tmp_548, %tmp_546
  %tmp45 = add i64 %tmp_550, %tmp_549
  %tmp43 = add i64 %tmp44, %tmp45
  %tmp_551 = add i64 %tmp40, %tmp43
  %output_addr_104 = getelementptr [19 x i64]* %output_r, i64 0, i64 11
  store i64 %tmp_551, i64* %output_addr_104, align 8
  %tmp_552 = mul nsw i64 %tmp_486, %tmp_484
  %tmp_553 = mul nsw i64 %tmp_475, %tmp_495
  %tmp_554 = mul nsw i64 %tmp_497, %tmp_473
  %tmp_555 = mul nsw i64 %tmp_431, %tmp_522
  %tmp_556 = mul nsw i64 %tmp_524, %tmp_428
  %tmp46 = add i64 %tmp_553, %tmp_554
  %tmp47 = add i64 %tmp_556, %tmp_555
  %tmp_645 = trunc i64 %tmp47 to i63
  %tmp_646 = trunc i64 %tmp46 to i63
  %tmp_557 = add i63 %tmp_645, %tmp_646
  %tmp_558 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_557, i1 false)
  %tmp_560 = mul nsw i64 %tmp_461, %tmp_509
  %tmp_561 = mul nsw i64 %tmp_511, %tmp_458
  %tmp48 = add i64 %tmp_552, %tmp_558
  %tmp49 = add i64 %tmp_561, %tmp_560
  %tmp_563 = add i64 %tmp48, %tmp49
  %output_addr_105 = getelementptr [19 x i64]* %output_r, i64 0, i64 12
  store i64 %tmp_563, i64* %output_addr_105, align 8
  %tmp_564 = mul nsw i64 %tmp_486, %tmp_495
  %tmp_565 = mul nsw i64 %tmp_497, %tmp_484
  %tmp_566 = mul nsw i64 %tmp_475, %tmp_509
  %tmp_567 = mul nsw i64 %tmp_511, %tmp_473
  %tmp_568 = mul nsw i64 %tmp_461, %tmp_522
  %tmp_569 = mul nsw i64 %tmp_524, %tmp_458
  %tmp51 = add i64 %tmp_566, %tmp_564
  %tmp50 = add i64 %tmp_565, %tmp51
  %tmp53 = add i64 %tmp_569, %tmp_568
  %tmp52 = add i64 %tmp_567, %tmp53
  %tmp_570 = add i64 %tmp50, %tmp52
  %output_addr_106 = getelementptr [19 x i64]* %output_r, i64 0, i64 13
  store i64 %tmp_570, i64* %output_addr_106, align 8
  %tmp_571 = mul nsw i64 %tmp_497, %tmp_495
  %tmp_572 = mul nsw i64 %tmp_475, %tmp_522
  %tmp_573 = mul nsw i64 %tmp_524, %tmp_473
  %tmp54 = add i64 %tmp_573, %tmp_571
  %tmp_574 = add i64 %tmp_572, %tmp54
  %tmp_647 = shl i64 %tmp_574, 1
  %tmp_575 = mul nsw i64 %tmp_486, %tmp_509
  %tmp_576 = mul nsw i64 %tmp_511, %tmp_484
  %tmp55 = add i64 %tmp_576, %tmp_647
  %tmp_577 = add i64 %tmp_575, %tmp55
  %output_addr_107 = getelementptr [19 x i64]* %output_r, i64 0, i64 14
  store i64 %tmp_577, i64* %output_addr_107, align 8
  %tmp_578 = mul nsw i64 %tmp_497, %tmp_509
  %tmp_579 = mul nsw i64 %tmp_511, %tmp_495
  %tmp_580 = mul nsw i64 %tmp_486, %tmp_522
  %tmp_581 = mul nsw i64 %tmp_524, %tmp_484
  %tmp56 = add i64 %tmp_578, %tmp_579
  %tmp57 = add i64 %tmp_581, %tmp_580
  %tmp_582 = add i64 %tmp56, %tmp57
  %output_addr_108 = getelementptr [19 x i64]* %output_r, i64 0, i64 15
  store i64 %tmp_582, i64* %output_addr_108, align 8
  %tmp_583 = mul nsw i64 %tmp_511, %tmp_509
  %tmp_584 = mul nsw i64 %tmp_497, %tmp_522
  %tmp_585 = mul nsw i64 %tmp_524, %tmp_495
  %tmp_586 = add nsw i64 %tmp_584, %tmp_585
  %tmp_648 = shl i64 %tmp_586, 1
  %tmp_587 = add nsw i64 %tmp_583, %tmp_648
  %output_addr_109 = getelementptr [19 x i64]* %output_r, i64 0, i64 16
  store i64 %tmp_587, i64* %output_addr_109, align 8
  %tmp_588 = mul nsw i64 %tmp_511, %tmp_522
  %tmp_589 = mul nsw i64 %tmp_524, %tmp_509
  %tmp_590 = add nsw i64 %tmp_588, %tmp_589
  %output_addr_110 = getelementptr [19 x i64]* %output_r, i64 0, i64 17
  store i64 %tmp_590, i64* %output_addr_110, align 8
  %tmp_355 = sext i32 %tmp_642 to i63
  %tmp_356 = sext i32 %tmp_641 to i63
  %tmp_591 = mul i63 %tmp_355, %tmp_356
  %tmp_592 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_591, i1 false)
  %output_addr_111 = getelementptr [19 x i64]* %output_r, i64 0, i64 18
  store i64 %tmp_592, i64* %output_addr_111, align 8
  ret void
}

define internal fastcc void @fproduct.1([19 x i64]* nocapture %output_r, [19 x i64]* %in2, [10 x i26]* %in_r) {
  %in_addr = getelementptr [10 x i26]* %in_r, i64 0, i64 0
  %in2_addr = getelementptr [19 x i64]* %in2, i64 0, i64 0
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %in2_load = load i64* %in2_addr, align 8
  %tmp = trunc i64 %in2_load to i32
  %tmp_s = sext i32 %tmp to i64
  %in_load = load i26* %in_addr, align 4
  %tmp_384 = zext i26 %in_load to i64
  %tmp_385 = mul nsw i64 %tmp_s, %tmp_384
  store i64 %tmp_385, i64* %output_addr, align 8
  %in_addr25 = getelementptr [10 x i26]* %in_r, i64 0, i64 1
  %in_load26 = load i26* %in_addr25, align 4
  %tmp_389 = zext i26 %in_load26 to i64
  %tmp_390 = mul nsw i64 %tmp_s, %tmp_389
  %in2_addr_19 = getelementptr [19 x i64]* %in2, i64 0, i64 1
  %in2_load_2 = load i64* %in2_addr_19, align 8
  %tmp_649 = trunc i64 %in2_load_2 to i32
  %tmp_392 = sext i32 %tmp_649 to i64
  %tmp_395 = mul nsw i64 %tmp_392, %tmp_384
  %tmp_396 = add nsw i64 %tmp_390, %tmp_395
  %output_addr_112 = getelementptr [19 x i64]* %output_r, i64 0, i64 1
  store i64 %tmp_396, i64* %output_addr_112, align 8
  %tmp_357 = sext i32 %tmp_649 to i63
  %tmp_358 = zext i26 %in_load26 to i63
  %tmp_593 = mul i63 %tmp_357, %tmp_358
  %tmp_402 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_593, i1 false)
  %in_addr_47 = getelementptr [10 x i26]* %in_r, i64 0, i64 2
  %in_load_40 = load i26* %in_addr_47, align 4
  %tmp_406 = zext i26 %in_load_40 to i64
  %tmp_407 = mul nsw i64 %tmp_s, %tmp_406
  %in2_addr_20 = getelementptr [19 x i64]* %in2, i64 0, i64 2
  %in2_load_5 = load i64* %in2_addr_20, align 8
  %tmp_695 = trunc i64 %in2_load_5 to i32
  %tmp_409 = sext i32 %tmp_695 to i64
  %tmp_412 = mul nsw i64 %tmp_409, %tmp_384
  %tmp1 = add i64 %tmp_412, %tmp_402
  %tmp_414 = add i64 %tmp_407, %tmp1
  %output_addr_113 = getelementptr [19 x i64]* %output_r, i64 0, i64 2
  store i64 %tmp_414, i64* %output_addr_113, align 8
  %tmp_419 = mul nsw i64 %tmp_392, %tmp_406
  %tmp_424 = mul nsw i64 %tmp_409, %tmp_389
  %in_addr_48 = getelementptr [10 x i26]* %in_r, i64 0, i64 3
  %in_load_41 = load i26* %in_addr_48, align 4
  %tmp_428 = zext i26 %in_load_41 to i64
  %tmp_429 = mul nsw i64 %tmp_s, %tmp_428
  %in2_addr_21 = getelementptr [19 x i64]* %in2, i64 0, i64 3
  %in2_load_9 = load i64* %in2_addr_21, align 8
  %tmp_708 = trunc i64 %in2_load_9 to i32
  %tmp_431 = sext i32 %tmp_708 to i64
  %tmp_434 = mul nsw i64 %tmp_431, %tmp_384
  %tmp2 = add i64 %tmp_419, %tmp_424
  %tmp3 = add i64 %tmp_434, %tmp_429
  %tmp_437 = add i64 %tmp2, %tmp3
  %output_addr_114 = getelementptr [19 x i64]* %output_r, i64 0, i64 3
  store i64 %tmp_437, i64* %output_addr_114, align 8
  %tmp_442 = mul nsw i64 %tmp_409, %tmp_406
  %tmp_447 = mul nsw i64 %tmp_392, %tmp_428
  %tmp_452 = mul nsw i64 %tmp_431, %tmp_389
  %tmp_453 = add nsw i64 %tmp_447, %tmp_452
  %tmp_715 = shl i64 %tmp_453, 1
  %in_addr_49 = getelementptr [10 x i26]* %in_r, i64 0, i64 4
  %in_load_42 = load i26* %in_addr_49, align 4
  %tmp_458 = zext i26 %in_load_42 to i64
  %tmp_459 = mul nsw i64 %tmp_s, %tmp_458
  %in2_addr_22 = getelementptr [19 x i64]* %in2, i64 0, i64 4
  %in2_load_14 = load i64* %in2_addr_22, align 8
  %tmp_716 = trunc i64 %in2_load_14 to i32
  %tmp_461 = sext i32 %tmp_716 to i64
  %tmp_464 = mul nsw i64 %tmp_461, %tmp_384
  %tmp4 = add i64 %tmp_442, %tmp_715
  %tmp5 = add i64 %tmp_464, %tmp_459
  %tmp_467 = add i64 %tmp4, %tmp5
  %output_addr_115 = getelementptr [19 x i64]* %output_r, i64 0, i64 4
  store i64 %tmp_467, i64* %output_addr_115, align 8
  %tmp_472 = mul nsw i64 %tmp_409, %tmp_428
  %tmp_477 = mul nsw i64 %tmp_431, %tmp_406
  %tmp_482 = mul nsw i64 %tmp_392, %tmp_458
  %tmp_487 = mul nsw i64 %tmp_461, %tmp_389
  %in_addr_50 = getelementptr [10 x i26]* %in_r, i64 0, i64 5
  %in_load_43 = load i26* %in_addr_50, align 4
  %tmp_491 = zext i26 %in_load_43 to i64
  %tmp_492 = mul nsw i64 %tmp_s, %tmp_491
  %in2_addr_23 = getelementptr [19 x i64]* %in2, i64 0, i64 5
  %in2_load_16 = load i64* %in2_addr_23, align 8
  %tmp_717 = trunc i64 %in2_load_16 to i32
  %tmp_494 = sext i32 %tmp_717 to i64
  %tmp_497 = mul nsw i64 %tmp_494, %tmp_384
  %tmp7 = add i64 %tmp_482, %tmp_472
  %tmp6 = add i64 %tmp_477, %tmp7
  %tmp9 = add i64 %tmp_497, %tmp_492
  %tmp8 = add i64 %tmp_487, %tmp9
  %tmp_502 = add i64 %tmp6, %tmp8
  %output_addr_116 = getelementptr [19 x i64]* %output_r, i64 0, i64 5
  store i64 %tmp_502, i64* %output_addr_116, align 8
  %tmp_507 = mul nsw i64 %tmp_431, %tmp_428
  %tmp_512 = mul nsw i64 %tmp_392, %tmp_491
  %tmp_517 = mul nsw i64 %tmp_494, %tmp_389
  %tmp10 = add i64 %tmp_517, %tmp_507
  %tmp_519 = add i64 %tmp_512, %tmp10
  %tmp_718 = shl i64 %tmp_519, 1
  %tmp_525 = mul nsw i64 %tmp_409, %tmp_458
  %tmp_530 = mul nsw i64 %tmp_461, %tmp_406
  %in_addr_51 = getelementptr [10 x i26]* %in_r, i64 0, i64 6
  %in_load_44 = load i26* %in_addr_51, align 4
  %tmp_534 = zext i26 %in_load_44 to i64
  %tmp_535 = mul nsw i64 %tmp_s, %tmp_534
  %in2_addr_24 = getelementptr [19 x i64]* %in2, i64 0, i64 6
  %in2_load_17 = load i64* %in2_addr_24, align 8
  %tmp_719 = trunc i64 %in2_load_17 to i32
  %tmp_537 = sext i32 %tmp_719 to i64
  %tmp_540 = mul nsw i64 %tmp_537, %tmp_384
  %tmp11 = add i64 %tmp_718, %tmp_525
  %tmp13 = add i64 %tmp_540, %tmp_535
  %tmp12 = add i64 %tmp_530, %tmp13
  %tmp_544 = add i64 %tmp11, %tmp12
  %output_addr_117 = getelementptr [19 x i64]* %output_r, i64 0, i64 6
  store i64 %tmp_544, i64* %output_addr_117, align 8
  %tmp_549 = mul nsw i64 %tmp_431, %tmp_458
  %tmp_554 = mul nsw i64 %tmp_461, %tmp_428
  %tmp_559 = mul nsw i64 %tmp_409, %tmp_491
  %tmp_564 = mul nsw i64 %tmp_494, %tmp_406
  %tmp_569 = mul nsw i64 %tmp_392, %tmp_534
  %tmp_574 = mul nsw i64 %tmp_537, %tmp_389
  %in_addr_52 = getelementptr [10 x i26]* %in_r, i64 0, i64 7
  %in_load_45 = load i26* %in_addr_52, align 4
  %tmp_578 = zext i26 %in_load_45 to i64
  %tmp_579 = mul nsw i64 %tmp_s, %tmp_578
  %in2_addr_25 = getelementptr [19 x i64]* %in2, i64 0, i64 7
  %in2_load_18 = load i64* %in2_addr_25, align 8
  %tmp_720 = trunc i64 %in2_load_18 to i32
  %tmp_581 = sext i32 %tmp_720 to i64
  %tmp_584 = mul nsw i64 %tmp_581, %tmp_384
  %tmp15 = add i64 %tmp_549, %tmp_554
  %tmp16 = add i64 %tmp_564, %tmp_559
  %tmp14 = add i64 %tmp15, %tmp16
  %tmp18 = add i64 %tmp_574, %tmp_569
  %tmp19 = add i64 %tmp_584, %tmp_579
  %tmp17 = add i64 %tmp18, %tmp19
  %tmp_591 = add i64 %tmp14, %tmp17
  %output_addr_118 = getelementptr [19 x i64]* %output_r, i64 0, i64 7
  store i64 %tmp_591, i64* %output_addr_118, align 8
  %tmp_594 = mul nsw i64 %tmp_461, %tmp_458
  %tmp_595 = mul nsw i64 %tmp_431, %tmp_491
  %tmp_596 = mul nsw i64 %tmp_494, %tmp_428
  %tmp_597 = mul nsw i64 %tmp_392, %tmp_578
  %tmp_598 = mul nsw i64 %tmp_581, %tmp_389
  %tmp20 = add i64 %tmp_595, %tmp_596
  %tmp21 = add i64 %tmp_598, %tmp_597
  %tmp_721 = trunc i64 %tmp21 to i63
  %tmp_722 = trunc i64 %tmp20 to i63
  %tmp_599 = add i63 %tmp_721, %tmp_722
  %tmp_600 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_599, i1 false)
  %tmp_601 = mul nsw i64 %tmp_409, %tmp_534
  %tmp_602 = mul nsw i64 %tmp_537, %tmp_406
  %in_addr_53 = getelementptr [10 x i26]* %in_r, i64 0, i64 8
  %in_load_46 = load i26* %in_addr_53, align 4
  %tmp_603 = zext i26 %in_load_46 to i64
  %tmp_604 = mul nsw i64 %tmp_s, %tmp_603
  %in2_addr_26 = getelementptr [19 x i64]* %in2, i64 0, i64 8
  %in2_load_19 = load i64* %in2_addr_26, align 8
  %tmp_723 = trunc i64 %in2_load_19 to i32
  %tmp_605 = sext i32 %tmp_723 to i64
  %tmp_606 = mul nsw i64 %tmp_605, %tmp_384
  %tmp23 = add i64 %tmp_601, %tmp_594
  %tmp22 = add i64 %tmp_600, %tmp23
  %tmp25 = add i64 %tmp_606, %tmp_604
  %tmp24 = add i64 %tmp_602, %tmp25
  %tmp_607 = add i64 %tmp22, %tmp24
  %output_addr_119 = getelementptr [19 x i64]* %output_r, i64 0, i64 8
  store i64 %tmp_607, i64* %output_addr_119, align 8
  %tmp_608 = mul nsw i64 %tmp_461, %tmp_491
  %tmp_609 = mul nsw i64 %tmp_494, %tmp_458
  %tmp_610 = mul nsw i64 %tmp_431, %tmp_534
  %tmp_611 = mul nsw i64 %tmp_537, %tmp_428
  %tmp_612 = mul nsw i64 %tmp_409, %tmp_578
  %tmp_613 = mul nsw i64 %tmp_581, %tmp_406
  %tmp_614 = mul nsw i64 %tmp_392, %tmp_603
  %tmp_615 = mul nsw i64 %tmp_605, %tmp_389
  %in_addr_54 = getelementptr [10 x i26]* %in_r, i64 0, i64 9
  %in_load_47 = load i26* %in_addr_54, align 4
  %tmp_616 = zext i26 %in_load_47 to i64
  %tmp_617 = mul nsw i64 %tmp_s, %tmp_616
  %in2_addr_27 = getelementptr [19 x i64]* %in2, i64 0, i64 9
  %in2_load_20 = load i64* %in2_addr_27, align 8
  %tmp_724 = trunc i64 %in2_load_20 to i32
  %tmp_618 = sext i32 %tmp_724 to i64
  %tmp_619 = mul nsw i64 %tmp_618, %tmp_384
  %tmp27 = add i64 %tmp_608, %tmp_609
  %tmp29 = add i64 %tmp_612, %tmp_611
  %tmp28 = add i64 %tmp_610, %tmp29
  %tmp26 = add i64 %tmp27, %tmp28
  %tmp31 = add i64 %tmp_614, %tmp_613
  %tmp33 = add i64 %tmp_619, %tmp_617
  %tmp32 = add i64 %tmp_615, %tmp33
  %tmp30 = add i64 %tmp31, %tmp32
  %tmp_620 = add i64 %tmp26, %tmp30
  %output_addr_120 = getelementptr [19 x i64]* %output_r, i64 0, i64 9
  store i64 %tmp_620, i64* %output_addr_120, align 8
  %tmp_621 = mul nsw i64 %tmp_494, %tmp_491
  %tmp_622 = mul nsw i64 %tmp_431, %tmp_578
  %tmp_623 = mul nsw i64 %tmp_581, %tmp_428
  %tmp_624 = mul nsw i64 %tmp_392, %tmp_616
  %tmp_625 = mul nsw i64 %tmp_618, %tmp_389
  %tmp34 = add i64 %tmp_621, %tmp_622
  %tmp36 = add i64 %tmp_625, %tmp_624
  %tmp35 = add i64 %tmp_623, %tmp36
  %tmp_725 = trunc i64 %tmp35 to i63
  %tmp_726 = trunc i64 %tmp34 to i63
  %tmp_626 = add i63 %tmp_725, %tmp_726
  %tmp_627 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_626, i1 false)
  %tmp_628 = mul nsw i64 %tmp_461, %tmp_534
  %tmp_629 = mul nsw i64 %tmp_537, %tmp_458
  %tmp_630 = mul nsw i64 %tmp_409, %tmp_603
  %tmp_631 = mul nsw i64 %tmp_605, %tmp_406
  %tmp37 = add i64 %tmp_627, %tmp_628
  %tmp39 = add i64 %tmp_631, %tmp_630
  %tmp38 = add i64 %tmp_629, %tmp39
  %tmp_632 = add i64 %tmp37, %tmp38
  %output_addr_121 = getelementptr [19 x i64]* %output_r, i64 0, i64 10
  store i64 %tmp_632, i64* %output_addr_121, align 8
  %tmp_633 = mul nsw i64 %tmp_494, %tmp_534
  %tmp_634 = mul nsw i64 %tmp_537, %tmp_491
  %tmp_635 = mul nsw i64 %tmp_461, %tmp_578
  %tmp_636 = mul nsw i64 %tmp_581, %tmp_458
  %tmp_637 = mul nsw i64 %tmp_431, %tmp_603
  %tmp_638 = mul nsw i64 %tmp_605, %tmp_428
  %tmp_639 = mul nsw i64 %tmp_409, %tmp_616
  %tmp_640 = mul nsw i64 %tmp_618, %tmp_406
  %tmp41 = add i64 %tmp_633, %tmp_634
  %tmp42 = add i64 %tmp_636, %tmp_635
  %tmp40 = add i64 %tmp41, %tmp42
  %tmp44 = add i64 %tmp_638, %tmp_637
  %tmp45 = add i64 %tmp_640, %tmp_639
  %tmp43 = add i64 %tmp44, %tmp45
  %tmp_641 = add i64 %tmp40, %tmp43
  %output_addr_122 = getelementptr [19 x i64]* %output_r, i64 0, i64 11
  store i64 %tmp_641, i64* %output_addr_122, align 8
  %tmp_642 = mul nsw i64 %tmp_537, %tmp_534
  %tmp_643 = mul nsw i64 %tmp_494, %tmp_578
  %tmp_644 = mul nsw i64 %tmp_581, %tmp_491
  %tmp_645 = mul nsw i64 %tmp_431, %tmp_616
  %tmp_646 = mul nsw i64 %tmp_618, %tmp_428
  %tmp46 = add i64 %tmp_643, %tmp_644
  %tmp47 = add i64 %tmp_646, %tmp_645
  %tmp_727 = trunc i64 %tmp47 to i63
  %tmp_728 = trunc i64 %tmp46 to i63
  %tmp_647 = add i63 %tmp_727, %tmp_728
  %tmp_648 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_647, i1 false)
  %tmp_650 = mul nsw i64 %tmp_461, %tmp_603
  %tmp_651 = mul nsw i64 %tmp_605, %tmp_458
  %tmp48 = add i64 %tmp_642, %tmp_648
  %tmp49 = add i64 %tmp_651, %tmp_650
  %tmp_652 = add i64 %tmp48, %tmp49
  %output_addr_123 = getelementptr [19 x i64]* %output_r, i64 0, i64 12
  store i64 %tmp_652, i64* %output_addr_123, align 8
  %tmp_653 = mul nsw i64 %tmp_537, %tmp_578
  %tmp_654 = mul nsw i64 %tmp_581, %tmp_534
  %tmp_655 = mul nsw i64 %tmp_494, %tmp_603
  %tmp_656 = mul nsw i64 %tmp_605, %tmp_491
  %tmp_657 = mul nsw i64 %tmp_461, %tmp_616
  %tmp_658 = mul nsw i64 %tmp_618, %tmp_458
  %tmp51 = add i64 %tmp_655, %tmp_653
  %tmp50 = add i64 %tmp_654, %tmp51
  %tmp53 = add i64 %tmp_658, %tmp_657
  %tmp52 = add i64 %tmp_656, %tmp53
  %tmp_659 = add i64 %tmp50, %tmp52
  %output_addr_124 = getelementptr [19 x i64]* %output_r, i64 0, i64 13
  store i64 %tmp_659, i64* %output_addr_124, align 8
  %tmp_660 = mul nsw i64 %tmp_581, %tmp_578
  %tmp_661 = mul nsw i64 %tmp_494, %tmp_616
  %tmp_662 = mul nsw i64 %tmp_618, %tmp_491
  %tmp54 = add i64 %tmp_662, %tmp_660
  %tmp_663 = add i64 %tmp_661, %tmp54
  %tmp_729 = shl i64 %tmp_663, 1
  %tmp_664 = mul nsw i64 %tmp_537, %tmp_603
  %tmp_665 = mul nsw i64 %tmp_605, %tmp_534
  %tmp55 = add i64 %tmp_665, %tmp_729
  %tmp_666 = add i64 %tmp_664, %tmp55
  %output_addr_125 = getelementptr [19 x i64]* %output_r, i64 0, i64 14
  store i64 %tmp_666, i64* %output_addr_125, align 8
  %tmp_667 = mul nsw i64 %tmp_581, %tmp_603
  %tmp_668 = mul nsw i64 %tmp_605, %tmp_578
  %tmp_669 = mul nsw i64 %tmp_537, %tmp_616
  %tmp_670 = mul nsw i64 %tmp_618, %tmp_534
  %tmp56 = add i64 %tmp_667, %tmp_668
  %tmp57 = add i64 %tmp_670, %tmp_669
  %tmp_671 = add i64 %tmp56, %tmp57
  %output_addr_126 = getelementptr [19 x i64]* %output_r, i64 0, i64 15
  store i64 %tmp_671, i64* %output_addr_126, align 8
  %tmp_672 = mul nsw i64 %tmp_605, %tmp_603
  %tmp_673 = mul nsw i64 %tmp_581, %tmp_616
  %tmp_674 = mul nsw i64 %tmp_618, %tmp_578
  %tmp_675 = add nsw i64 %tmp_673, %tmp_674
  %tmp_730 = shl i64 %tmp_675, 1
  %tmp_676 = add nsw i64 %tmp_672, %tmp_730
  %output_addr_127 = getelementptr [19 x i64]* %output_r, i64 0, i64 16
  store i64 %tmp_676, i64* %output_addr_127, align 8
  %tmp_677 = mul nsw i64 %tmp_605, %tmp_616
  %tmp_678 = mul nsw i64 %tmp_618, %tmp_603
  %tmp_679 = add nsw i64 %tmp_677, %tmp_678
  %output_addr_128 = getelementptr [19 x i64]* %output_r, i64 0, i64 17
  store i64 %tmp_679, i64* %output_addr_128, align 8
  %tmp_359 = sext i32 %tmp_724 to i63
  %tmp_360 = zext i26 %in_load_47 to i63
  %tmp_680 = mul i63 %tmp_359, %tmp_360
  %tmp_681 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_680, i1 false)
  %output_addr_129 = getelementptr [19 x i64]* %output_r, i64 0, i64 18
  store i64 %tmp_681, i64* %output_addr_129, align 8
  ret void
}

define internal fastcc void @fproduct([19 x i64]* nocapture %output_r, [19 x i64]* nocapture %in2, [19 x i64]* nocapture %in_r) {
  %in_addr = getelementptr [19 x i64]* %in_r, i64 0, i64 0
  %in2_addr = getelementptr [19 x i64]* %in2, i64 0, i64 0
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %in2_load = load i64* %in2_addr, align 8
  %tmp = trunc i64 %in2_load to i32
  %tmp_s = sext i32 %tmp to i64
  %in_load = load i64* %in_addr, align 8
  %tmp_757 = trunc i64 %in_load to i32
  %tmp_384 = sext i32 %tmp_757 to i64
  %tmp_385 = mul nsw i64 %tmp_s, %tmp_384
  store i64 %tmp_385, i64* %output_addr, align 8
  %in_addr_55 = getelementptr [19 x i64]* %in_r, i64 0, i64 1
  %in_load_48 = load i64* %in_addr_55, align 8
  %tmp_770 = trunc i64 %in_load_48 to i32
  %tmp_389 = sext i32 %tmp_770 to i64
  %tmp_390 = mul nsw i64 %tmp_s, %tmp_389
  %in2_addr_28 = getelementptr [19 x i64]* %in2, i64 0, i64 1
  %in2_load_2 = load i64* %in2_addr_28, align 8
  %tmp_777 = trunc i64 %in2_load_2 to i32
  %tmp_392 = sext i32 %tmp_777 to i64
  %tmp_395 = mul nsw i64 %tmp_392, %tmp_384
  %tmp_396 = add nsw i64 %tmp_390, %tmp_395
  %output_addr_130 = getelementptr [19 x i64]* %output_r, i64 0, i64 1
  store i64 %tmp_396, i64* %output_addr_130, align 8
  %tmp_361 = sext i32 %tmp_777 to i63
  %tmp_362 = sext i32 %tmp_770 to i63
  %tmp_682 = mul i63 %tmp_361, %tmp_362
  %tmp_402 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_682, i1 false)
  %in_addr_56 = getelementptr [19 x i64]* %in_r, i64 0, i64 2
  %in_load_49 = load i64* %in_addr_56, align 8
  %tmp_778 = trunc i64 %in_load_49 to i32
  %tmp_406 = sext i32 %tmp_778 to i64
  %tmp_407 = mul nsw i64 %tmp_s, %tmp_406
  %in2_addr_29 = getelementptr [19 x i64]* %in2, i64 0, i64 2
  %in2_load_5 = load i64* %in2_addr_29, align 8
  %tmp_779 = trunc i64 %in2_load_5 to i32
  %tmp_409 = sext i32 %tmp_779 to i64
  %tmp_412 = mul nsw i64 %tmp_409, %tmp_384
  %tmp1 = add i64 %tmp_412, %tmp_402
  %tmp_414 = add i64 %tmp_407, %tmp1
  %output_addr_131 = getelementptr [19 x i64]* %output_r, i64 0, i64 2
  store i64 %tmp_414, i64* %output_addr_131, align 8
  %tmp_419 = mul nsw i64 %tmp_392, %tmp_406
  %tmp_424 = mul nsw i64 %tmp_409, %tmp_389
  %in_addr_57 = getelementptr [19 x i64]* %in_r, i64 0, i64 3
  %in_load_50 = load i64* %in_addr_57, align 8
  %tmp_780 = trunc i64 %in_load_50 to i32
  %tmp_428 = sext i32 %tmp_780 to i64
  %tmp_429 = mul nsw i64 %tmp_s, %tmp_428
  %in2_addr_30 = getelementptr [19 x i64]* %in2, i64 0, i64 3
  %in2_load_9 = load i64* %in2_addr_30, align 8
  %tmp_781 = trunc i64 %in2_load_9 to i32
  %tmp_431 = sext i32 %tmp_781 to i64
  %tmp_434 = mul nsw i64 %tmp_431, %tmp_384
  %tmp2 = add i64 %tmp_419, %tmp_424
  %tmp3 = add i64 %tmp_434, %tmp_429
  %tmp_437 = add i64 %tmp2, %tmp3
  %output_addr_132 = getelementptr [19 x i64]* %output_r, i64 0, i64 3
  store i64 %tmp_437, i64* %output_addr_132, align 8
  %tmp_442 = mul nsw i64 %tmp_409, %tmp_406
  %tmp_447 = mul nsw i64 %tmp_392, %tmp_428
  %tmp_452 = mul nsw i64 %tmp_431, %tmp_389
  %tmp_453 = add nsw i64 %tmp_447, %tmp_452
  %tmp_782 = shl i64 %tmp_453, 1
  %in_addr_58 = getelementptr [19 x i64]* %in_r, i64 0, i64 4
  %in_load_51 = load i64* %in_addr_58, align 8
  %tmp_783 = trunc i64 %in_load_51 to i32
  %tmp_458 = sext i32 %tmp_783 to i64
  %tmp_459 = mul nsw i64 %tmp_s, %tmp_458
  %in2_addr_31 = getelementptr [19 x i64]* %in2, i64 0, i64 4
  %in2_load_14 = load i64* %in2_addr_31, align 8
  %tmp_784 = trunc i64 %in2_load_14 to i32
  %tmp_461 = sext i32 %tmp_784 to i64
  %tmp_464 = mul nsw i64 %tmp_461, %tmp_384
  %tmp4 = add i64 %tmp_442, %tmp_782
  %tmp5 = add i64 %tmp_464, %tmp_459
  %tmp_467 = add i64 %tmp4, %tmp5
  %output_addr_133 = getelementptr [19 x i64]* %output_r, i64 0, i64 4
  store i64 %tmp_467, i64* %output_addr_133, align 8
  %tmp_472 = mul nsw i64 %tmp_409, %tmp_428
  %tmp_477 = mul nsw i64 %tmp_431, %tmp_406
  %tmp_482 = mul nsw i64 %tmp_392, %tmp_458
  %tmp_487 = mul nsw i64 %tmp_461, %tmp_389
  %in_addr_59 = getelementptr [19 x i64]* %in_r, i64 0, i64 5
  %in_load_52 = load i64* %in_addr_59, align 8
  %tmp_785 = trunc i64 %in_load_52 to i32
  %tmp_491 = sext i32 %tmp_785 to i64
  %tmp_492 = mul nsw i64 %tmp_s, %tmp_491
  %in2_addr_32 = getelementptr [19 x i64]* %in2, i64 0, i64 5
  %in2_load_20 = load i64* %in2_addr_32, align 8
  %tmp_786 = trunc i64 %in2_load_20 to i32
  %tmp_494 = sext i32 %tmp_786 to i64
  %tmp_497 = mul nsw i64 %tmp_494, %tmp_384
  %tmp7 = add i64 %tmp_482, %tmp_472
  %tmp6 = add i64 %tmp_477, %tmp7
  %tmp9 = add i64 %tmp_497, %tmp_492
  %tmp8 = add i64 %tmp_487, %tmp9
  %tmp_502 = add i64 %tmp6, %tmp8
  %output_addr_134 = getelementptr [19 x i64]* %output_r, i64 0, i64 5
  store i64 %tmp_502, i64* %output_addr_134, align 8
  %tmp_507 = mul nsw i64 %tmp_431, %tmp_428
  %tmp_512 = mul nsw i64 %tmp_392, %tmp_491
  %tmp_517 = mul nsw i64 %tmp_494, %tmp_389
  %tmp10 = add i64 %tmp_517, %tmp_507
  %tmp_519 = add i64 %tmp_512, %tmp10
  %tmp_787 = shl i64 %tmp_519, 1
  %tmp_525 = mul nsw i64 %tmp_409, %tmp_458
  %tmp_530 = mul nsw i64 %tmp_461, %tmp_406
  %in_addr_60 = getelementptr [19 x i64]* %in_r, i64 0, i64 6
  %in_load_53 = load i64* %in_addr_60, align 8
  %tmp_788 = trunc i64 %in_load_53 to i32
  %tmp_534 = sext i32 %tmp_788 to i64
  %tmp_535 = mul nsw i64 %tmp_s, %tmp_534
  %in2_addr_33 = getelementptr [19 x i64]* %in2, i64 0, i64 6
  %in2_load_21 = load i64* %in2_addr_33, align 8
  %tmp_789 = trunc i64 %in2_load_21 to i32
  %tmp_537 = sext i32 %tmp_789 to i64
  %tmp_540 = mul nsw i64 %tmp_537, %tmp_384
  %tmp11 = add i64 %tmp_787, %tmp_525
  %tmp13 = add i64 %tmp_540, %tmp_535
  %tmp12 = add i64 %tmp_530, %tmp13
  %tmp_544 = add i64 %tmp11, %tmp12
  %output_addr_135 = getelementptr [19 x i64]* %output_r, i64 0, i64 6
  store i64 %tmp_544, i64* %output_addr_135, align 8
  %tmp_549 = mul nsw i64 %tmp_431, %tmp_458
  %tmp_554 = mul nsw i64 %tmp_461, %tmp_428
  %tmp_559 = mul nsw i64 %tmp_409, %tmp_491
  %tmp_564 = mul nsw i64 %tmp_494, %tmp_406
  %tmp_569 = mul nsw i64 %tmp_392, %tmp_534
  %tmp_574 = mul nsw i64 %tmp_537, %tmp_389
  %in_addr_61 = getelementptr [19 x i64]* %in_r, i64 0, i64 7
  %in_load_54 = load i64* %in_addr_61, align 8
  %tmp_790 = trunc i64 %in_load_54 to i32
  %tmp_578 = sext i32 %tmp_790 to i64
  %tmp_579 = mul nsw i64 %tmp_s, %tmp_578
  %in2_addr_34 = getelementptr [19 x i64]* %in2, i64 0, i64 7
  %in2_load_22 = load i64* %in2_addr_34, align 8
  %tmp_791 = trunc i64 %in2_load_22 to i32
  %tmp_581 = sext i32 %tmp_791 to i64
  %tmp_584 = mul nsw i64 %tmp_581, %tmp_384
  %tmp15 = add i64 %tmp_549, %tmp_554
  %tmp16 = add i64 %tmp_564, %tmp_559
  %tmp14 = add i64 %tmp15, %tmp16
  %tmp18 = add i64 %tmp_574, %tmp_569
  %tmp19 = add i64 %tmp_584, %tmp_579
  %tmp17 = add i64 %tmp18, %tmp19
  %tmp_591 = add i64 %tmp14, %tmp17
  %output_addr_136 = getelementptr [19 x i64]* %output_r, i64 0, i64 7
  store i64 %tmp_591, i64* %output_addr_136, align 8
  %tmp_596 = mul nsw i64 %tmp_461, %tmp_458
  %tmp_601 = mul nsw i64 %tmp_431, %tmp_491
  %tmp_606 = mul nsw i64 %tmp_494, %tmp_428
  %tmp_611 = mul nsw i64 %tmp_392, %tmp_578
  %tmp_616 = mul nsw i64 %tmp_581, %tmp_389
  %tmp20 = add i64 %tmp_601, %tmp_606
  %tmp21 = add i64 %tmp_616, %tmp_611
  %tmp_792 = trunc i64 %tmp21 to i63
  %tmp_793 = trunc i64 %tmp20 to i63
  %tmp_683 = add i63 %tmp_792, %tmp_793
  %tmp_620 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_683, i1 false)
  %tmp_625 = mul nsw i64 %tmp_409, %tmp_534
  %tmp_630 = mul nsw i64 %tmp_537, %tmp_406
  %in_addr_62 = getelementptr [19 x i64]* %in_r, i64 0, i64 8
  %in_load_55 = load i64* %in_addr_62, align 8
  %tmp_794 = trunc i64 %in_load_55 to i32
  %tmp_634 = sext i32 %tmp_794 to i64
  %tmp_635 = mul nsw i64 %tmp_s, %tmp_634
  %in2_addr_35 = getelementptr [19 x i64]* %in2, i64 0, i64 8
  %in2_load_23 = load i64* %in2_addr_35, align 8
  %tmp_795 = trunc i64 %in2_load_23 to i32
  %tmp_637 = sext i32 %tmp_795 to i64
  %tmp_640 = mul nsw i64 %tmp_637, %tmp_384
  %tmp23 = add i64 %tmp_625, %tmp_596
  %tmp22 = add i64 %tmp_620, %tmp23
  %tmp25 = add i64 %tmp_640, %tmp_635
  %tmp24 = add i64 %tmp_630, %tmp25
  %tmp_645 = add i64 %tmp22, %tmp24
  %output_addr_137 = getelementptr [19 x i64]* %output_r, i64 0, i64 8
  store i64 %tmp_645, i64* %output_addr_137, align 8
  %tmp_650 = mul nsw i64 %tmp_461, %tmp_491
  %tmp_655 = mul nsw i64 %tmp_494, %tmp_458
  %tmp_660 = mul nsw i64 %tmp_431, %tmp_534
  %tmp_665 = mul nsw i64 %tmp_537, %tmp_428
  %tmp_670 = mul nsw i64 %tmp_409, %tmp_578
  %tmp_675 = mul nsw i64 %tmp_581, %tmp_406
  %tmp_680 = mul nsw i64 %tmp_392, %tmp_634
  %tmp_684 = mul nsw i64 %tmp_637, %tmp_389
  %in_addr_63 = getelementptr [19 x i64]* %in_r, i64 0, i64 9
  %in_load_56 = load i64* %in_addr_63, align 8
  %tmp_796 = trunc i64 %in_load_56 to i32
  %tmp_685 = sext i32 %tmp_796 to i64
  %tmp_686 = mul nsw i64 %tmp_s, %tmp_685
  %in2_addr_36 = getelementptr [19 x i64]* %in2, i64 0, i64 9
  %in2_load_24 = load i64* %in2_addr_36, align 8
  %tmp_797 = trunc i64 %in2_load_24 to i32
  %tmp_687 = sext i32 %tmp_797 to i64
  %tmp_688 = mul nsw i64 %tmp_687, %tmp_384
  %tmp27 = add i64 %tmp_650, %tmp_655
  %tmp29 = add i64 %tmp_670, %tmp_665
  %tmp28 = add i64 %tmp_660, %tmp29
  %tmp26 = add i64 %tmp27, %tmp28
  %tmp31 = add i64 %tmp_680, %tmp_675
  %tmp33 = add i64 %tmp_688, %tmp_686
  %tmp32 = add i64 %tmp_684, %tmp33
  %tmp30 = add i64 %tmp31, %tmp32
  %tmp_689 = add i64 %tmp26, %tmp30
  %output_addr_138 = getelementptr [19 x i64]* %output_r, i64 0, i64 9
  store i64 %tmp_689, i64* %output_addr_138, align 8
  %tmp_690 = mul nsw i64 %tmp_494, %tmp_491
  %tmp_691 = mul nsw i64 %tmp_431, %tmp_578
  %tmp_692 = mul nsw i64 %tmp_581, %tmp_428
  %tmp_693 = mul nsw i64 %tmp_392, %tmp_685
  %tmp_694 = mul nsw i64 %tmp_687, %tmp_389
  %tmp34 = add i64 %tmp_690, %tmp_691
  %tmp36 = add i64 %tmp_694, %tmp_693
  %tmp35 = add i64 %tmp_692, %tmp36
  %tmp_798 = trunc i64 %tmp35 to i63
  %tmp_799 = trunc i64 %tmp34 to i63
  %tmp_695 = add i63 %tmp_798, %tmp_799
  %tmp_696 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_695, i1 false)
  %tmp_697 = mul nsw i64 %tmp_461, %tmp_534
  %tmp_698 = mul nsw i64 %tmp_537, %tmp_458
  %tmp_699 = mul nsw i64 %tmp_409, %tmp_634
  %tmp_700 = mul nsw i64 %tmp_637, %tmp_406
  %tmp37 = add i64 %tmp_696, %tmp_697
  %tmp39 = add i64 %tmp_700, %tmp_699
  %tmp38 = add i64 %tmp_698, %tmp39
  %tmp_701 = add i64 %tmp37, %tmp38
  %output_addr_139 = getelementptr [19 x i64]* %output_r, i64 0, i64 10
  store i64 %tmp_701, i64* %output_addr_139, align 8
  %tmp_702 = mul nsw i64 %tmp_494, %tmp_534
  %tmp_703 = mul nsw i64 %tmp_537, %tmp_491
  %tmp_704 = mul nsw i64 %tmp_461, %tmp_578
  %tmp_705 = mul nsw i64 %tmp_581, %tmp_458
  %tmp_706 = mul nsw i64 %tmp_431, %tmp_634
  %tmp_707 = mul nsw i64 %tmp_637, %tmp_428
  %tmp_708 = mul nsw i64 %tmp_409, %tmp_685
  %tmp_709 = mul nsw i64 %tmp_687, %tmp_406
  %tmp41 = add i64 %tmp_702, %tmp_703
  %tmp42 = add i64 %tmp_705, %tmp_704
  %tmp40 = add i64 %tmp41, %tmp42
  %tmp44 = add i64 %tmp_707, %tmp_706
  %tmp45 = add i64 %tmp_709, %tmp_708
  %tmp43 = add i64 %tmp44, %tmp45
  %tmp_710 = add i64 %tmp40, %tmp43
  %output_addr_140 = getelementptr [19 x i64]* %output_r, i64 0, i64 11
  store i64 %tmp_710, i64* %output_addr_140, align 8
  %tmp_711 = mul nsw i64 %tmp_537, %tmp_534
  %tmp_712 = mul nsw i64 %tmp_494, %tmp_578
  %tmp_713 = mul nsw i64 %tmp_581, %tmp_491
  %tmp_714 = mul nsw i64 %tmp_431, %tmp_685
  %tmp_715 = mul nsw i64 %tmp_687, %tmp_428
  %tmp46 = add i64 %tmp_712, %tmp_713
  %tmp47 = add i64 %tmp_715, %tmp_714
  %tmp_800 = trunc i64 %tmp47 to i63
  %tmp_801 = trunc i64 %tmp46 to i63
  %tmp_716 = add i63 %tmp_800, %tmp_801
  %tmp_717 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_716, i1 false)
  %tmp_718 = mul nsw i64 %tmp_461, %tmp_634
  %tmp_719 = mul nsw i64 %tmp_637, %tmp_458
  %tmp48 = add i64 %tmp_711, %tmp_717
  %tmp49 = add i64 %tmp_719, %tmp_718
  %tmp_720 = add i64 %tmp48, %tmp49
  %output_addr_141 = getelementptr [19 x i64]* %output_r, i64 0, i64 12
  store i64 %tmp_720, i64* %output_addr_141, align 8
  %tmp_721 = mul nsw i64 %tmp_537, %tmp_578
  %tmp_722 = mul nsw i64 %tmp_581, %tmp_534
  %tmp_723 = mul nsw i64 %tmp_494, %tmp_634
  %tmp_724 = mul nsw i64 %tmp_637, %tmp_491
  %tmp_725 = mul nsw i64 %tmp_461, %tmp_685
  %tmp_726 = mul nsw i64 %tmp_687, %tmp_458
  %tmp51 = add i64 %tmp_723, %tmp_721
  %tmp50 = add i64 %tmp_722, %tmp51
  %tmp53 = add i64 %tmp_726, %tmp_725
  %tmp52 = add i64 %tmp_724, %tmp53
  %tmp_727 = add i64 %tmp50, %tmp52
  %output_addr_142 = getelementptr [19 x i64]* %output_r, i64 0, i64 13
  store i64 %tmp_727, i64* %output_addr_142, align 8
  %tmp_728 = mul nsw i64 %tmp_581, %tmp_578
  %tmp_729 = mul nsw i64 %tmp_494, %tmp_685
  %tmp_730 = mul nsw i64 %tmp_687, %tmp_491
  %tmp54 = add i64 %tmp_730, %tmp_728
  %tmp_731 = add i64 %tmp_729, %tmp54
  %tmp_802 = shl i64 %tmp_731, 1
  %tmp_732 = mul nsw i64 %tmp_537, %tmp_634
  %tmp_733 = mul nsw i64 %tmp_637, %tmp_534
  %tmp55 = add i64 %tmp_733, %tmp_802
  %tmp_734 = add i64 %tmp_732, %tmp55
  %output_addr_143 = getelementptr [19 x i64]* %output_r, i64 0, i64 14
  store i64 %tmp_734, i64* %output_addr_143, align 8
  %tmp_735 = mul nsw i64 %tmp_581, %tmp_634
  %tmp_736 = mul nsw i64 %tmp_637, %tmp_578
  %tmp_737 = mul nsw i64 %tmp_537, %tmp_685
  %tmp_738 = mul nsw i64 %tmp_687, %tmp_534
  %tmp56 = add i64 %tmp_735, %tmp_736
  %tmp57 = add i64 %tmp_738, %tmp_737
  %tmp_739 = add i64 %tmp56, %tmp57
  %output_addr_144 = getelementptr [19 x i64]* %output_r, i64 0, i64 15
  store i64 %tmp_739, i64* %output_addr_144, align 8
  %tmp_740 = mul nsw i64 %tmp_637, %tmp_634
  %tmp_741 = mul nsw i64 %tmp_581, %tmp_685
  %tmp_742 = mul nsw i64 %tmp_687, %tmp_578
  %tmp_743 = add nsw i64 %tmp_741, %tmp_742
  %tmp_803 = shl i64 %tmp_743, 1
  %tmp_744 = add nsw i64 %tmp_740, %tmp_803
  %output_addr_145 = getelementptr [19 x i64]* %output_r, i64 0, i64 16
  store i64 %tmp_744, i64* %output_addr_145, align 8
  %tmp_745 = mul nsw i64 %tmp_637, %tmp_685
  %tmp_746 = mul nsw i64 %tmp_687, %tmp_634
  %tmp_747 = add nsw i64 %tmp_745, %tmp_746
  %output_addr_146 = getelementptr [19 x i64]* %output_r, i64 0, i64 17
  store i64 %tmp_747, i64* %output_addr_146, align 8
  %tmp_363 = sext i32 %tmp_797 to i63
  %tmp_364 = sext i32 %tmp_796 to i63
  %tmp_748 = mul i63 %tmp_363, %tmp_364
  %tmp_749 = call i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63 %tmp_748, i1 false)
  %output_addr_147 = getelementptr [19 x i64]* %output_r, i64 0, i64 18
  store i64 %tmp_749, i64* %output_addr_147, align 8
  ret void
}

define internal fastcc void @fmul.2([11 x i64]* nocapture %output_r, [10 x i64]* nocapture %in_r, [10 x i64]* nocapture %in2) {
  %t = alloca [19 x i64], align 16
  call fastcc void @fproduct.2([19 x i64]* %t, [10 x i64]* %in_r, [10 x i64]* %in2)
  %t_addr_4 = getelementptr [19 x i64]* %t, i64 0, i64 0
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18
  %t_load = load i64* %t_addr, align 16
  %tmp_804 = shl i64 %t_load, 4
  %t_addr_62 = getelementptr [19 x i64]* %t, i64 0, i64 8
  %t_load_71 = load i64* %t_addr_62, align 16
  %tmp_805 = shl i64 %t_load, 1
  %tmp = add i64 %t_load_71, %t_load
  %tmp3 = add i64 %tmp_804, %tmp_805
  %tmp_325_i = add nsw i64 %tmp3, %tmp
  store i64 %tmp_325_i, i64* %t_addr_62, align 16
  %t_addr_63 = getelementptr [19 x i64]* %t, i64 0, i64 17
  %t_load_72 = load i64* %t_addr_63, align 8
  %tmp_806 = shl i64 %t_load_72, 4
  %t_addr_64 = getelementptr [19 x i64]* %t, i64 0, i64 7
  %t_load_73 = load i64* %t_addr_64, align 8
  %tmp_807 = shl i64 %t_load_72, 1
  %tmp4 = add i64 %t_load_73, %t_load_72
  %tmp5 = add i64 %tmp_806, %tmp_807
  %tmp_330_i = add nsw i64 %tmp5, %tmp4
  store i64 %tmp_330_i, i64* %t_addr_64, align 8
  %t_addr_65 = getelementptr [19 x i64]* %t, i64 0, i64 16
  %t_load_74 = load i64* %t_addr_65, align 16
  %tmp_808 = shl i64 %t_load_74, 4
  %t_addr_66 = getelementptr [19 x i64]* %t, i64 0, i64 6
  %t_load_75 = load i64* %t_addr_66, align 16
  %tmp_809 = shl i64 %t_load_74, 1
  %tmp6 = add i64 %t_load_75, %t_load_74
  %tmp7 = add i64 %tmp_808, %tmp_809
  %tmp_335_i = add nsw i64 %tmp7, %tmp6
  store i64 %tmp_335_i, i64* %t_addr_66, align 16
  %t_addr_67 = getelementptr [19 x i64]* %t, i64 0, i64 15
  %t_load_76 = load i64* %t_addr_67, align 8
  %tmp_810 = shl i64 %t_load_76, 4
  %t_addr_68 = getelementptr [19 x i64]* %t, i64 0, i64 5
  %t_load_77 = load i64* %t_addr_68, align 8
  %tmp_811 = shl i64 %t_load_76, 1
  %tmp8 = add i64 %t_load_77, %t_load_76
  %tmp9 = add i64 %tmp_810, %tmp_811
  %tmp_340_i = add nsw i64 %tmp9, %tmp8
  store i64 %tmp_340_i, i64* %t_addr_68, align 8
  %t_addr_69 = getelementptr [19 x i64]* %t, i64 0, i64 14
  %t_load_78 = load i64* %t_addr_69, align 16
  %tmp_812 = shl i64 %t_load_78, 4
  %t_addr_70 = getelementptr [19 x i64]* %t, i64 0, i64 4
  %t_load_79 = load i64* %t_addr_70, align 16
  %tmp_813 = shl i64 %t_load_78, 1
  %tmp10 = add i64 %t_load_79, %t_load_78
  %tmp11 = add i64 %tmp_812, %tmp_813
  %tmp_345_i = add nsw i64 %tmp11, %tmp10
  store i64 %tmp_345_i, i64* %t_addr_70, align 16
  %t_addr_71 = getelementptr [19 x i64]* %t, i64 0, i64 13
  %t_load_80 = load i64* %t_addr_71, align 8
  %tmp_814 = shl i64 %t_load_80, 4
  %t_addr_72 = getelementptr [19 x i64]* %t, i64 0, i64 3
  %t_load_81 = load i64* %t_addr_72, align 8
  %tmp_815 = shl i64 %t_load_80, 1
  %tmp12 = add i64 %t_load_81, %t_load_80
  %tmp13 = add i64 %tmp_814, %tmp_815
  %tmp_350_i = add nsw i64 %tmp13, %tmp12
  store i64 %tmp_350_i, i64* %t_addr_72, align 8
  %t_addr_73 = getelementptr [19 x i64]* %t, i64 0, i64 12
  %t_load_82 = load i64* %t_addr_73, align 16
  %tmp_816 = shl i64 %t_load_82, 4
  %t_addr_74 = getelementptr [19 x i64]* %t, i64 0, i64 2
  %t_load_83 = load i64* %t_addr_74, align 16
  %tmp_817 = shl i64 %t_load_82, 1
  %tmp14 = add i64 %t_load_83, %t_load_82
  %tmp15 = add i64 %tmp_816, %tmp_817
  %tmp_355_i = add nsw i64 %tmp15, %tmp14
  store i64 %tmp_355_i, i64* %t_addr_74, align 16
  %t_addr_75 = getelementptr [19 x i64]* %t, i64 0, i64 11
  %t_load_84 = load i64* %t_addr_75, align 8
  %tmp_818 = shl i64 %t_load_84, 4
  %t_addr_76 = getelementptr [19 x i64]* %t, i64 0, i64 1
  %t_load_85 = load i64* %t_addr_76, align 8
  %tmp_819 = shl i64 %t_load_84, 1
  %tmp16 = add i64 %t_load_85, %t_load_84
  %tmp17 = add i64 %tmp_818, %tmp_819
  %tmp_360_i = add nsw i64 %tmp17, %tmp16
  store i64 %tmp_360_i, i64* %t_addr_76, align 8
  %t_addr_77 = getelementptr [19 x i64]* %t, i64 0, i64 10
  %t_load_86 = load i64* %t_addr_77, align 16
  %tmp_820 = shl i64 %t_load_86, 4
  %t_load_4 = load i64* %t_addr_4, align 16
  %tmp_821 = shl i64 %t_load_86, 1
  %tmp18 = add i64 %t_load_4, %t_load_86
  %tmp19 = add i64 %tmp_820, %tmp_821
  %tmp_365_i = add nsw i64 %tmp19, %tmp18
  store i64 %tmp_365_i, i64* %t_addr_4, align 16
  store i64 0, i64* %t_addr_77, align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]
  %tmp_i = icmp ult i4 %i_i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit

; <label>:2                                       ; preds = %1
  %tmp_i_15 = zext i4 %i_i to i64
  %t_addr_78 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_15
  %t_load_87 = load i64* %t_addr_78, align 16
  %tmp_822 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_87, i32 63)
  %tmp_i_i_cast_cast = select i1 %tmp_822, i64 67108863, i64 0
  %tmp_1064_i_i = add nsw i64 %t_load_87, %tmp_i_i_cast_cast
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63)
  %over = sext i38 %tmp_397_i_i to i64
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0)
  %tmp_367_i = sub nsw i64 %t_load_87, %tmp_366_i
  store i64 %tmp_367_i, i64* %t_addr_78, align 16
  %tmp_368_i = or i4 %i_i, 1
  %tmp_369_i = zext i4 %tmp_368_i to i64
  %t_addr_79 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i
  %t_load_88 = load i64* %t_addr_79, align 8
  %v_assign_9 = add nsw i64 %t_load_88, %over
  %tmp_823 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_9, i32 63)
  %tmp_i10_i_cast_cast = select i1 %tmp_823, i64 33554431, i64 0
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_9
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63)
  %over_9 = sext i39 %tmp_399_i_i to i64
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0)
  %tmp_372_i = sub nsw i64 %v_assign_9, %tmp_371_i
  store i64 %tmp_372_i, i64* %t_addr_79, align 8
  %i = add i4 %i_i, 2
  %tmp_373_i = zext i4 %i to i64
  %t_addr_80 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i
  %t_load_89 = load i64* %t_addr_80, align 16
  %tmp_374_i = add nsw i64 %t_load_89, %over_9
  store i64 %tmp_374_i, i64* %t_addr_80, align 16
  br label %1

freduce_coefficients.exit:                        ; preds = %1
  %t_load_90 = load i64* %t_addr_77, align 16
  %tmp_824 = shl i64 %t_load_90, 4
  %t_load_91 = load i64* %t_addr_4, align 16
  %tmp_825 = shl i64 %t_load_90, 1
  %tmp21 = add i64 %t_load_90, %t_load_91
  %tmp22 = add i64 %tmp_825, %tmp_824
  %v_assign_s = add nsw i64 %tmp21, %tmp22
  store i64 0, i64* %t_addr_77, align 16
  %tmp_826 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_s, i32 63)
  %tmp_i13_i_cast_cast = select i1 %tmp_826, i64 67108863, i64 0
  %tmp_1064_i14_i = add nsw i64 %v_assign_s, %tmp_i13_i_cast_cast
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63)
  %over_10 = sext i38 %tmp_397_i16_i to i64
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0)
  %tmp_381_i = sub nsw i64 %v_assign_s, %tmp_380_i
  store i64 %tmp_381_i, i64* %t_addr_4, align 16
  %t_load_92 = load i64* %t_addr_76, align 8
  %tmp_382_i = add nsw i64 %over_10, %t_load_92
  store i64 %tmp_382_i, i64* %t_addr_76, align 8
  br label %3

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i3 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_6, %4 ]
  %exitcond_i = icmp eq i4 %i_i3, -6
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_6 = add i4 %i_i3, 1
  br i1 %exitcond_i, label %_memcpy.2.exit, label %4

; <label>:4                                       ; preds = %3
  %tmp_i4 = zext i4 %i_i3 to i64
  %t_addr_81 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i4
  %t_load_93 = load i64* %t_addr_81, align 8
  %output_addr = getelementptr [11 x i64]* %output_r, i64 0, i64 %tmp_i4
  store i64 %t_load_93, i64* %output_addr, align 8
  br label %3

_memcpy.2.exit:                                   ; preds = %3
  ret void
}

define internal fastcc void @fmul.1([10 x i64]* nocapture %output_r, [10 x i64]* nocapture %in_r, [11 x i64]* nocapture %in2) {
  %t = alloca [19 x i64], align 16
  call fastcc void @fproduct.3([19 x i64]* %t, [10 x i64]* %in_r, [11 x i64]* %in2)
  %t_addr_5 = getelementptr [19 x i64]* %t, i64 0, i64 0
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18
  %t_load = load i64* %t_addr, align 16
  %tmp_827 = shl i64 %t_load, 4
  %t_addr_82 = getelementptr [19 x i64]* %t, i64 0, i64 8
  %t_load_94 = load i64* %t_addr_82, align 16
  %tmp_828 = shl i64 %t_load, 1
  %tmp = add i64 %t_load_94, %t_load
  %tmp3 = add i64 %tmp_827, %tmp_828
  %tmp_325_i = add nsw i64 %tmp3, %tmp
  store i64 %tmp_325_i, i64* %t_addr_82, align 16
  %t_addr_83 = getelementptr [19 x i64]* %t, i64 0, i64 17
  %t_load_95 = load i64* %t_addr_83, align 8
  %tmp_829 = shl i64 %t_load_95, 4
  %t_addr_84 = getelementptr [19 x i64]* %t, i64 0, i64 7
  %t_load_96 = load i64* %t_addr_84, align 8
  %tmp_830 = shl i64 %t_load_95, 1
  %tmp4 = add i64 %t_load_96, %t_load_95
  %tmp5 = add i64 %tmp_829, %tmp_830
  %tmp_330_i = add nsw i64 %tmp5, %tmp4
  store i64 %tmp_330_i, i64* %t_addr_84, align 8
  %t_addr_85 = getelementptr [19 x i64]* %t, i64 0, i64 16
  %t_load_97 = load i64* %t_addr_85, align 16
  %tmp_831 = shl i64 %t_load_97, 4
  %t_addr_86 = getelementptr [19 x i64]* %t, i64 0, i64 6
  %t_load_98 = load i64* %t_addr_86, align 16
  %tmp_832 = shl i64 %t_load_97, 1
  %tmp6 = add i64 %t_load_98, %t_load_97
  %tmp7 = add i64 %tmp_831, %tmp_832
  %tmp_335_i = add nsw i64 %tmp7, %tmp6
  store i64 %tmp_335_i, i64* %t_addr_86, align 16
  %t_addr_87 = getelementptr [19 x i64]* %t, i64 0, i64 15
  %t_load_99 = load i64* %t_addr_87, align 8
  %tmp_833 = shl i64 %t_load_99, 4
  %t_addr_88 = getelementptr [19 x i64]* %t, i64 0, i64 5
  %t_load_100 = load i64* %t_addr_88, align 8
  %tmp_834 = shl i64 %t_load_99, 1
  %tmp8 = add i64 %t_load_100, %t_load_99
  %tmp9 = add i64 %tmp_833, %tmp_834
  %tmp_340_i = add nsw i64 %tmp9, %tmp8
  store i64 %tmp_340_i, i64* %t_addr_88, align 8
  %t_addr_89 = getelementptr [19 x i64]* %t, i64 0, i64 14
  %t_load_101 = load i64* %t_addr_89, align 16
  %tmp_835 = shl i64 %t_load_101, 4
  %t_addr_90 = getelementptr [19 x i64]* %t, i64 0, i64 4
  %t_load_102 = load i64* %t_addr_90, align 16
  %tmp_836 = shl i64 %t_load_101, 1
  %tmp10 = add i64 %t_load_102, %t_load_101
  %tmp11 = add i64 %tmp_835, %tmp_836
  %tmp_345_i = add nsw i64 %tmp11, %tmp10
  store i64 %tmp_345_i, i64* %t_addr_90, align 16
  %t_addr_91 = getelementptr [19 x i64]* %t, i64 0, i64 13
  %t_load_103 = load i64* %t_addr_91, align 8
  %tmp_837 = shl i64 %t_load_103, 4
  %t_addr_92 = getelementptr [19 x i64]* %t, i64 0, i64 3
  %t_load_104 = load i64* %t_addr_92, align 8
  %tmp_838 = shl i64 %t_load_103, 1
  %tmp12 = add i64 %t_load_104, %t_load_103
  %tmp13 = add i64 %tmp_837, %tmp_838
  %tmp_350_i = add nsw i64 %tmp13, %tmp12
  store i64 %tmp_350_i, i64* %t_addr_92, align 8
  %t_addr_93 = getelementptr [19 x i64]* %t, i64 0, i64 12
  %t_load_105 = load i64* %t_addr_93, align 16
  %tmp_839 = shl i64 %t_load_105, 4
  %t_addr_94 = getelementptr [19 x i64]* %t, i64 0, i64 2
  %t_load_106 = load i64* %t_addr_94, align 16
  %tmp_840 = shl i64 %t_load_105, 1
  %tmp14 = add i64 %t_load_106, %t_load_105
  %tmp15 = add i64 %tmp_839, %tmp_840
  %tmp_355_i = add nsw i64 %tmp15, %tmp14
  store i64 %tmp_355_i, i64* %t_addr_94, align 16
  %t_addr_95 = getelementptr [19 x i64]* %t, i64 0, i64 11
  %t_load_107 = load i64* %t_addr_95, align 8
  %tmp_841 = shl i64 %t_load_107, 4
  %t_addr_96 = getelementptr [19 x i64]* %t, i64 0, i64 1
  %t_load_108 = load i64* %t_addr_96, align 8
  %tmp_842 = shl i64 %t_load_107, 1
  %tmp16 = add i64 %t_load_108, %t_load_107
  %tmp17 = add i64 %tmp_841, %tmp_842
  %tmp_360_i = add nsw i64 %tmp17, %tmp16
  store i64 %tmp_360_i, i64* %t_addr_96, align 8
  %t_addr_97 = getelementptr [19 x i64]* %t, i64 0, i64 10
  %t_load_109 = load i64* %t_addr_97, align 16
  %tmp_843 = shl i64 %t_load_109, 4
  %t_load_5 = load i64* %t_addr_5, align 16
  %tmp_844 = shl i64 %t_load_109, 1
  %tmp18 = add i64 %t_load_5, %t_load_109
  %tmp19 = add i64 %tmp_843, %tmp_844
  %tmp_365_i = add nsw i64 %tmp19, %tmp18
  store i64 %tmp_365_i, i64* %t_addr_5, align 16
  store i64 0, i64* %t_addr_97, align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]
  %tmp_i = icmp ult i4 %i_i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit

; <label>:2                                       ; preds = %1
  %tmp_i_17 = zext i4 %i_i to i64
  %t_addr_98 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_17
  %t_load_110 = load i64* %t_addr_98, align 16
  %tmp_845 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_110, i32 63)
  %tmp_i_i_cast_cast = select i1 %tmp_845, i64 67108863, i64 0
  %tmp_1064_i_i = add nsw i64 %t_load_110, %tmp_i_i_cast_cast
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63)
  %over = sext i38 %tmp_397_i_i to i64
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0)
  %tmp_367_i = sub nsw i64 %t_load_110, %tmp_366_i
  store i64 %tmp_367_i, i64* %t_addr_98, align 16
  %tmp_368_i = or i4 %i_i, 1
  %tmp_369_i = zext i4 %tmp_368_i to i64
  %t_addr_99 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i
  %t_load_111 = load i64* %t_addr_99, align 8
  %v_assign_s = add nsw i64 %t_load_111, %over
  %tmp_846 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_s, i32 63)
  %tmp_i10_i_cast_cast = select i1 %tmp_846, i64 33554431, i64 0
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_s
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63)
  %over_11 = sext i39 %tmp_399_i_i to i64
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0)
  %tmp_372_i = sub nsw i64 %v_assign_s, %tmp_371_i
  store i64 %tmp_372_i, i64* %t_addr_99, align 8
  %i = add i4 %i_i, 2
  %tmp_373_i = zext i4 %i to i64
  %t_addr_100 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i
  %t_load_112 = load i64* %t_addr_100, align 16
  %tmp_374_i = add nsw i64 %t_load_112, %over_11
  store i64 %tmp_374_i, i64* %t_addr_100, align 16
  br label %1

freduce_coefficients.exit:                        ; preds = %1
  %t_load_113 = load i64* %t_addr_97, align 16
  %tmp_847 = shl i64 %t_load_113, 4
  %t_load_114 = load i64* %t_addr_5, align 16
  %tmp_848 = shl i64 %t_load_113, 1
  %tmp21 = add i64 %t_load_113, %t_load_114
  %tmp22 = add i64 %tmp_848, %tmp_847
  %v_assign_1 = add nsw i64 %tmp21, %tmp22
  store i64 0, i64* %t_addr_97, align 16
  %tmp_849 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_1, i32 63)
  %tmp_i13_i_cast_cast = select i1 %tmp_849, i64 67108863, i64 0
  %tmp_1064_i14_i = add nsw i64 %v_assign_1, %tmp_i13_i_cast_cast
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63)
  %over_12 = sext i38 %tmp_397_i16_i to i64
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0)
  %tmp_381_i = sub nsw i64 %v_assign_1, %tmp_380_i
  store i64 %tmp_381_i, i64* %t_addr_5, align 16
  %t_load_115 = load i64* %t_addr_96, align 8
  %tmp_382_i = add nsw i64 %over_12, %t_load_115
  store i64 %tmp_382_i, i64* %t_addr_96, align 8
  br label %3

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i3 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_7, %4 ]
  %exitcond_i = icmp eq i4 %i_i3, -6
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_7 = add i4 %i_i3, 1
  br i1 %exitcond_i, label %_memcpy.exit, label %4

; <label>:4                                       ; preds = %3
  %tmp_i4 = zext i4 %i_i3 to i64
  %t_addr_101 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i4
  %t_load_116 = load i64* %t_addr_101, align 8
  %output_addr = getelementptr [10 x i64]* %output_r, i64 0, i64 %tmp_i4
  store i64 %t_load_116, i64* %output_addr, align 8
  br label %3

_memcpy.exit:                                     ; preds = %3
  ret void
}

define internal fastcc void @fmul([10 x i64]* nocapture %output_r, [10 x i64]* nocapture %in_r, [10 x i64]* nocapture %in2) {
  %t = alloca [19 x i64], align 16
  call fastcc void @fproduct.2([19 x i64]* %t, [10 x i64]* %in_r, [10 x i64]* %in2)
  %t_addr_6 = getelementptr [19 x i64]* %t, i64 0, i64 0
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 18
  %t_load = load i64* %t_addr, align 16
  %tmp_850 = shl i64 %t_load, 4
  %t_addr_102 = getelementptr [19 x i64]* %t, i64 0, i64 8
  %t_load_117 = load i64* %t_addr_102, align 16
  %tmp_851 = shl i64 %t_load, 1
  %tmp = add i64 %t_load_117, %t_load
  %tmp3 = add i64 %tmp_850, %tmp_851
  %tmp_325_i = add nsw i64 %tmp3, %tmp
  store i64 %tmp_325_i, i64* %t_addr_102, align 16
  %t_addr_103 = getelementptr [19 x i64]* %t, i64 0, i64 17
  %t_load_118 = load i64* %t_addr_103, align 8
  %tmp_852 = shl i64 %t_load_118, 4
  %t_addr_104 = getelementptr [19 x i64]* %t, i64 0, i64 7
  %t_load_119 = load i64* %t_addr_104, align 8
  %tmp_853 = shl i64 %t_load_118, 1
  %tmp4 = add i64 %t_load_119, %t_load_118
  %tmp5 = add i64 %tmp_852, %tmp_853
  %tmp_330_i = add nsw i64 %tmp5, %tmp4
  store i64 %tmp_330_i, i64* %t_addr_104, align 8
  %t_addr_105 = getelementptr [19 x i64]* %t, i64 0, i64 16
  %t_load_120 = load i64* %t_addr_105, align 16
  %tmp_854 = shl i64 %t_load_120, 4
  %t_addr_106 = getelementptr [19 x i64]* %t, i64 0, i64 6
  %t_load_121 = load i64* %t_addr_106, align 16
  %tmp_855 = shl i64 %t_load_120, 1
  %tmp6 = add i64 %t_load_121, %t_load_120
  %tmp7 = add i64 %tmp_854, %tmp_855
  %tmp_335_i = add nsw i64 %tmp7, %tmp6
  store i64 %tmp_335_i, i64* %t_addr_106, align 16
  %t_addr_107 = getelementptr [19 x i64]* %t, i64 0, i64 15
  %t_load_122 = load i64* %t_addr_107, align 8
  %tmp_856 = shl i64 %t_load_122, 4
  %t_addr_108 = getelementptr [19 x i64]* %t, i64 0, i64 5
  %t_load_123 = load i64* %t_addr_108, align 8
  %tmp_857 = shl i64 %t_load_122, 1
  %tmp8 = add i64 %t_load_123, %t_load_122
  %tmp9 = add i64 %tmp_856, %tmp_857
  %tmp_340_i = add nsw i64 %tmp9, %tmp8
  store i64 %tmp_340_i, i64* %t_addr_108, align 8
  %t_addr_109 = getelementptr [19 x i64]* %t, i64 0, i64 14
  %t_load_124 = load i64* %t_addr_109, align 16
  %tmp_858 = shl i64 %t_load_124, 4
  %t_addr_110 = getelementptr [19 x i64]* %t, i64 0, i64 4
  %t_load_125 = load i64* %t_addr_110, align 16
  %tmp_859 = shl i64 %t_load_124, 1
  %tmp10 = add i64 %t_load_125, %t_load_124
  %tmp11 = add i64 %tmp_858, %tmp_859
  %tmp_345_i = add nsw i64 %tmp11, %tmp10
  store i64 %tmp_345_i, i64* %t_addr_110, align 16
  %t_addr_111 = getelementptr [19 x i64]* %t, i64 0, i64 13
  %t_load_126 = load i64* %t_addr_111, align 8
  %tmp_860 = shl i64 %t_load_126, 4
  %t_addr_112 = getelementptr [19 x i64]* %t, i64 0, i64 3
  %t_load_127 = load i64* %t_addr_112, align 8
  %tmp_861 = shl i64 %t_load_126, 1
  %tmp12 = add i64 %t_load_127, %t_load_126
  %tmp13 = add i64 %tmp_860, %tmp_861
  %tmp_350_i = add nsw i64 %tmp13, %tmp12
  store i64 %tmp_350_i, i64* %t_addr_112, align 8
  %t_addr_113 = getelementptr [19 x i64]* %t, i64 0, i64 12
  %t_load_128 = load i64* %t_addr_113, align 16
  %tmp_862 = shl i64 %t_load_128, 4
  %t_addr_114 = getelementptr [19 x i64]* %t, i64 0, i64 2
  %t_load_129 = load i64* %t_addr_114, align 16
  %tmp_863 = shl i64 %t_load_128, 1
  %tmp14 = add i64 %t_load_129, %t_load_128
  %tmp15 = add i64 %tmp_862, %tmp_863
  %tmp_355_i = add nsw i64 %tmp15, %tmp14
  store i64 %tmp_355_i, i64* %t_addr_114, align 16
  %t_addr_115 = getelementptr [19 x i64]* %t, i64 0, i64 11
  %t_load_130 = load i64* %t_addr_115, align 8
  %tmp_864 = shl i64 %t_load_130, 4
  %t_addr_116 = getelementptr [19 x i64]* %t, i64 0, i64 1
  %t_load_131 = load i64* %t_addr_116, align 8
  %tmp_865 = shl i64 %t_load_130, 1
  %tmp16 = add i64 %t_load_131, %t_load_130
  %tmp17 = add i64 %tmp_864, %tmp_865
  %tmp_360_i = add nsw i64 %tmp17, %tmp16
  store i64 %tmp_360_i, i64* %t_addr_116, align 8
  %t_addr_117 = getelementptr [19 x i64]* %t, i64 0, i64 10
  %t_load_132 = load i64* %t_addr_117, align 16
  %tmp_866 = shl i64 %t_load_132, 4
  %t_load_6 = load i64* %t_addr_6, align 16
  %tmp_867 = shl i64 %t_load_132, 1
  %tmp18 = add i64 %t_load_6, %t_load_132
  %tmp19 = add i64 %tmp_866, %tmp_867
  %tmp_365_i = add nsw i64 %tmp19, %tmp18
  store i64 %tmp_365_i, i64* %t_addr_6, align 16
  store i64 0, i64* %t_addr_117, align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]
  %tmp_i = icmp ult i4 %i_i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  br i1 %tmp_i, label %2, label %freduce_coefficients.exit

; <label>:2                                       ; preds = %1
  %tmp_i_19 = zext i4 %i_i to i64
  %t_addr_118 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i_19
  %t_load_133 = load i64* %t_addr_118, align 16
  %tmp_868 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_load_133, i32 63)
  %tmp_i_i_cast_cast = select i1 %tmp_868, i64 67108863, i64 0
  %tmp_1064_i_i = add nsw i64 %t_load_133, %tmp_i_i_cast_cast
  %tmp_397_i_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i_i, i32 26, i32 63)
  %over = sext i38 %tmp_397_i_i to i64
  %tmp_366_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i_i, i26 0)
  %tmp_367_i = sub nsw i64 %t_load_133, %tmp_366_i
  store i64 %tmp_367_i, i64* %t_addr_118, align 16
  %tmp_368_i = or i4 %i_i, 1
  %tmp_369_i = zext i4 %tmp_368_i to i64
  %t_addr_119 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_369_i
  %t_load_134 = load i64* %t_addr_119, align 8
  %v_assign_s = add nsw i64 %t_load_134, %over
  %tmp_869 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_s, i32 63)
  %tmp_i10_i_cast_cast = select i1 %tmp_869, i64 33554431, i64 0
  %tmp_1066_i_i = add nsw i64 %tmp_i10_i_cast_cast, %v_assign_s
  %tmp_399_i_i = call i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64 %tmp_1066_i_i, i32 25, i32 63)
  %over_13 = sext i39 %tmp_399_i_i to i64
  %tmp_371_i = call i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39 %tmp_399_i_i, i25 0)
  %tmp_372_i = sub nsw i64 %v_assign_s, %tmp_371_i
  store i64 %tmp_372_i, i64* %t_addr_119, align 8
  %i = add i4 %i_i, 2
  %tmp_373_i = zext i4 %i to i64
  %t_addr_120 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_373_i
  %t_load_135 = load i64* %t_addr_120, align 16
  %tmp_374_i = add nsw i64 %t_load_135, %over_13
  store i64 %tmp_374_i, i64* %t_addr_120, align 16
  br label %1

freduce_coefficients.exit:                        ; preds = %1
  %t_load_136 = load i64* %t_addr_117, align 16
  %tmp_870 = shl i64 %t_load_136, 4
  %t_load_137 = load i64* %t_addr_6, align 16
  %tmp_871 = shl i64 %t_load_136, 1
  %tmp21 = add i64 %t_load_136, %t_load_137
  %tmp22 = add i64 %tmp_871, %tmp_870
  %v_assign_2 = add nsw i64 %tmp21, %tmp22
  store i64 0, i64* %t_addr_117, align 16
  %tmp_872 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %v_assign_2, i32 63)
  %tmp_i13_i_cast_cast = select i1 %tmp_872, i64 67108863, i64 0
  %tmp_1064_i14_i = add nsw i64 %v_assign_2, %tmp_i13_i_cast_cast
  %tmp_397_i16_i = call i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64 %tmp_1064_i14_i, i32 26, i32 63)
  %over_14 = sext i38 %tmp_397_i16_i to i64
  %tmp_380_i = call i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38 %tmp_397_i16_i, i26 0)
  %tmp_381_i = sub nsw i64 %v_assign_2, %tmp_380_i
  store i64 %tmp_381_i, i64* %t_addr_6, align 16
  %t_load_138 = load i64* %t_addr_116, align 8
  %tmp_382_i = add nsw i64 %over_14, %t_load_138
  store i64 %tmp_382_i, i64* %t_addr_116, align 8
  br label %3

; <label>:3                                       ; preds = %4, %freduce_coefficients.exit
  %i_i3 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i_8, %4 ]
  %exitcond_i = icmp eq i4 %i_i3, -6
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_8 = add i4 %i_i3, 1
  br i1 %exitcond_i, label %_memcpy.exit, label %4

; <label>:4                                       ; preds = %3
  %tmp_i4 = zext i4 %i_i3 to i64
  %t_addr_121 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_i4
  %t_load_139 = load i64* %t_addr_121, align 8
  %output_addr = getelementptr [10 x i64]* %output_r, i64 0, i64 %tmp_i4
  store i64 %t_load_139, i64* %output_addr, align 8
  br label %3

_memcpy.exit:                                     ; preds = %3
  ret void
}

define internal fastcc void @fmonty([19 x i64]* nocapture %x2, [19 x i64]* %z2, [19 x i64]* %x3, [19 x i64]* %z3, [19 x i64]* %x, [19 x i64]* %z, [19 x i64]* %xprime, [19 x i64]* %zprime, [10 x i26]* %qmqp) {
  %origx = alloca [10 x i64], align 16
  %origxprime = alloca [10 x i64], align 16
  %zzz = alloca [19 x i64], align 16
  %xx = alloca [19 x i64], align 16
  %zz = alloca [19 x i64], align 16
  %xxprime = alloca [19 x i64], align 16
  %zzprime = alloca [19 x i64], align 16
  %zzzprime = alloca [19 x i64], align 16
  %xxxprime = alloca [19 x i64], align 16
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call fastcc void @_memcpy([10 x i64]* %origx, [19 x i64]* %x)
  call fastcc void @fsum([19 x i64]* %x, [19 x i64]* %z)
  call fastcc void @fdifference.1([19 x i64]* %z, [10 x i64]* %origx)
  call fastcc void @_memcpy([10 x i64]* %origxprime, [19 x i64]* %xprime)
  call fastcc void @fsum([19 x i64]* %xprime, [19 x i64]* %zprime)
  call fastcc void @fdifference.1([19 x i64]* %zprime, [10 x i64]* %origxprime)
  call fastcc void @fproduct([19 x i64]* %xxprime, [19 x i64]* %xprime, [19 x i64]* %z)
  call fastcc void @fproduct([19 x i64]* %zzprime, [19 x i64]* %x, [19 x i64]* %zprime)
  call fastcc void @freduce_degree([19 x i64]* %xxprime)
  call fastcc void @freduce_coefficients([19 x i64]* %xxprime)
  call fastcc void @freduce_degree([19 x i64]* %zzprime)
  call fastcc void @freduce_coefficients([19 x i64]* %zzprime)
  call fastcc void @_memcpy([10 x i64]* %origxprime, [19 x i64]* %xxprime)
  call fastcc void @fsum([19 x i64]* %xxprime, [19 x i64]* %zzprime)
  call fastcc void @fdifference.1([19 x i64]* %zzprime, [10 x i64]* %origxprime)
  call fastcc void @fsquare([19 x i64]* %xxxprime, [19 x i64]* %xxprime)
  call fastcc void @fsquare([19 x i64]* %zzzprime, [19 x i64]* %zzprime)
  call fastcc void @fproduct.1([19 x i64]* %zzprime, [19 x i64]* %zzzprime, [10 x i26]* %qmqp)
  call fastcc void @freduce_degree([19 x i64]* %zzprime)
  call fastcc void @freduce_coefficients([19 x i64]* %zzprime)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i4 [ 0, %0 ], [ %i, %2 ]
  %exitcond_i = icmp eq i4 %i_i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i = add i4 %i_i, 1
  br i1 %exitcond_i, label %_memcpy.1.exit.preheader, label %2

_memcpy.1.exit.preheader:                         ; preds = %1
  br label %_memcpy.1.exit

; <label>:2                                       ; preds = %1
  %tmp_i = zext i4 %i_i to i64
  %xxxprime_addr = getelementptr [19 x i64]* %xxxprime, i64 0, i64 %tmp_i
  %xxxprime_load = load i64* %xxxprime_addr, align 8
  %x3_addr = getelementptr [19 x i64]* %x3, i64 0, i64 %tmp_i
  store i64 %xxxprime_load, i64* %x3_addr, align 8
  br label %1

_memcpy.1.exit:                                   ; preds = %_memcpy.1.exit.preheader, %3
  %i_i9 = phi i4 [ %i_9, %3 ], [ 0, %_memcpy.1.exit.preheader ]
  %exitcond_i1 = icmp eq i4 %i_i9, -6
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_9 = add i4 %i_i9, 1
  br i1 %exitcond_i1, label %_memcpy.1.exit16, label %3

; <label>:3                                       ; preds = %_memcpy.1.exit
  %tmp_i2 = zext i4 %i_i9 to i64
  %zzprime_addr = getelementptr [19 x i64]* %zzprime, i64 0, i64 %tmp_i2
  %zzprime_load = load i64* %zzprime_addr, align 8
  %z3_addr = getelementptr [19 x i64]* %z3, i64 0, i64 %tmp_i2
  store i64 %zzprime_load, i64* %z3_addr, align 8
  br label %_memcpy.1.exit

_memcpy.1.exit16:                                 ; preds = %_memcpy.1.exit
  call fastcc void @fsquare([19 x i64]* %xx, [19 x i64]* %x)
  call fastcc void @fsquare([19 x i64]* %zz, [19 x i64]* %z)
  call fastcc void @fproduct([19 x i64]* %x2, [19 x i64]* %xx, [19 x i64]* %zz)
  call fastcc void @freduce_degree([19 x i64]* %x2)
  call fastcc void @freduce_coefficients([19 x i64]* %x2)
  br label %4

; <label>:4                                       ; preds = %5, %_memcpy.1.exit16
  %i_i1 = phi i4 [ 0, %_memcpy.1.exit16 ], [ %i_10, %5 ]
  %tmp_i3 = icmp eq i4 %i_i1, -6
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_10 = add i4 %i_i1, 1
  br i1 %tmp_i3, label %fdifference.exit.preheader, label %5

fdifference.exit.preheader:                       ; preds = %4
  br label %fdifference.exit

; <label>:5                                       ; preds = %4
  %tmp_i_23 = zext i4 %i_i1 to i64
  %xx_addr = getelementptr [19 x i64]* %xx, i64 0, i64 %tmp_i_23
  %xx_load = load i64* %xx_addr, align 8
  %zz_addr = getelementptr [19 x i64]* %zz, i64 0, i64 %tmp_i_23
  %zz_load = load i64* %zz_addr, align 8
  %tmp_930_i = sub nsw i64 %xx_load, %zz_load
  store i64 %tmp_930_i, i64* %zz_addr, align 8
  br label %4

fdifference.exit:                                 ; preds = %fdifference.exit.preheader, %6
  %i_i2 = phi i4 [ %i_11, %6 ], [ 0, %fdifference.exit.preheader ]
  %exitcond_i2 = icmp eq i4 %i_i2, -7
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %i_11 = add i4 %i_i2, 1
  br i1 %exitcond_i2, label %_memset.exit.preheader, label %6

_memset.exit.preheader:                           ; preds = %fdifference.exit
  br label %_memset.exit

; <label>:6                                       ; preds = %fdifference.exit
  %tmp_i4_cast = zext i4 %i_i2 to i5
  %sum_i = add i5 %tmp_i4_cast, 10
  %sum_i_cast = zext i5 %sum_i to i64
  %zzz_addr = getelementptr [19 x i64]* %zzz, i64 0, i64 %sum_i_cast
  store i64 0, i64* %zzz_addr, align 8
  br label %fdifference.exit

_memset.exit:                                     ; preds = %_memset.exit.preheader, %7
  %i_i3 = phi i4 [ %i_12, %7 ], [ 0, %_memset.exit.preheader ]
  %tmp_i5 = icmp eq i4 %i_i3, -6
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_12 = add i4 %i_i3, 1
  br i1 %tmp_i5, label %fscalar_product.exit, label %7

; <label>:7                                       ; preds = %_memset.exit
  %tmp_i3_26 = zext i4 %i_i3 to i64
  %zz_addr_1 = getelementptr [19 x i64]* %zz, i64 0, i64 %tmp_i3_26
  %zz_load_1 = load i64* %zz_addr_1, align 8
  %tmp_322_i = mul nsw i64 %zz_load_1, 121665
  %zzz_addr_1 = getelementptr [19 x i64]* %zzz, i64 0, i64 %tmp_i3_26
  store i64 %tmp_322_i, i64* %zzz_addr_1, align 8
  br label %_memset.exit

fscalar_product.exit:                             ; preds = %_memset.exit
  call fastcc void @freduce_coefficients([19 x i64]* %zzz)
  call fastcc void @fsum([19 x i64]* %zzz, [19 x i64]* %xx)
  call fastcc void @fproduct([19 x i64]* %z2, [19 x i64]* %zz, [19 x i64]* %zzz)
  call fastcc void @freduce_degree([19 x i64]* %z2)
  call fastcc void @freduce_coefficients([19 x i64]* %z2)
  ret void
}

define internal fastcc void @fexpand([10 x i26]* nocapture %output_r, [32 x i8]* %input_r) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %input_r, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11)
  %input_addr = getelementptr [32 x i8]* %input_r, i64 0, i64 0
  %output_addr1111 = getelementptr [10 x i26]* %output_r, i64 0, i64 0
  %input_load = load i8* %input_addr, align 1
  %input_addr_1 = getelementptr [32 x i8]* %input_r, i64 0, i64 1
  %input_load_1 = load i8* %input_addr_1, align 1
  %input_addr_2 = getelementptr [32 x i8]* %input_r, i64 0, i64 2
  %input_load_2 = load i8* %input_addr_2, align 1
  %input_addr_3 = getelementptr [32 x i8]* %input_r, i64 0, i64 3
  %input_load_3 = load i8* %input_addr_3, align 1
  %tmp = trunc i8 %input_load_3 to i2
  %tmp_365 = call i26 @_ssdm_op_BitConcatenate.i26.i2.i8.i8.i8(i2 %tmp, i8 %input_load_2, i8 %input_load_1, i8 %input_load)
  store i26 %tmp_365, i26* %output_addr1111, align 4
  %input_addr_4 = getelementptr [32 x i8]* %input_r, i64 0, i64 4
  %input_load_4 = load i8* %input_addr_4, align 1
  %input_addr_5 = getelementptr [32 x i8]* %input_r, i64 0, i64 5
  %input_load_5 = load i8* %input_addr_5, align 1
  %input_addr_6 = getelementptr [32 x i8]* %input_r, i64 0, i64 6
  %input_load_6 = load i8* %input_addr_6, align 1
  %tmp_873 = trunc i8 %input_load_6 to i3
  %tmp_585 = call i6 @_ssdm_op_PartSelect.i6.i8.i32.i32(i8 %input_load_3, i32 2, i32 7)
  %tmp_906_cast = call i25 @_ssdm_op_BitConcatenate.i25.i3.i8.i8.i6(i3 %tmp_873, i8 %input_load_5, i8 %input_load_4, i6 %tmp_585)
  %output_addr = getelementptr [10 x i26]* %output_r, i64 0, i64 1
  %tmp_907_cast_cast_ca = zext i25 %tmp_906_cast to i26
  store i26 %tmp_907_cast_cast_ca, i26* %output_addr, align 4
  %input_addr_7 = getelementptr [32 x i8]* %input_r, i64 0, i64 7
  %input_load_7 = load i8* %input_addr_7, align 1
  %input_addr_8 = getelementptr [32 x i8]* %input_r, i64 0, i64 8
  %input_load_8 = load i8* %input_addr_8, align 1
  %input_addr_9 = getelementptr [32 x i8]* %input_r, i64 0, i64 9
  %input_load_9 = load i8* %input_addr_9, align 1
  %tmp_874 = trunc i8 %input_load_9 to i5
  %tmp_586 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %input_load_6, i32 3, i32 7)
  %tmp_909_cast = call i26 @_ssdm_op_BitConcatenate.i26.i5.i8.i8.i5(i5 %tmp_874, i8 %input_load_8, i8 %input_load_7, i5 %tmp_586)
  %output_addr_148 = getelementptr [10 x i26]* %output_r, i64 0, i64 2
  store i26 %tmp_909_cast, i26* %output_addr_148, align 4
  %input_addr_10 = getelementptr [32 x i8]* %input_r, i64 0, i64 10
  %input_load_10 = load i8* %input_addr_10, align 1
  %input_addr_11 = getelementptr [32 x i8]* %input_r, i64 0, i64 11
  %input_load_11 = load i8* %input_addr_11, align 1
  %input_addr_12 = getelementptr [32 x i8]* %input_r, i64 0, i64 12
  %input_load_12 = load i8* %input_addr_12, align 1
  %tmp_875 = trunc i8 %input_load_12 to i6
  %tmp_587 = call i3 @_ssdm_op_PartSelect.i3.i8.i32.i32(i8 %input_load_9, i32 5, i32 7)
  %tmp_912_cast = call i25 @_ssdm_op_BitConcatenate.i25.i6.i8.i8.i3(i6 %tmp_875, i8 %input_load_11, i8 %input_load_10, i3 %tmp_587)
  %output_addr_149 = getelementptr [10 x i26]* %output_r, i64 0, i64 3
  %tmp_913_cast_cast_ca = zext i25 %tmp_912_cast to i26
  store i26 %tmp_913_cast_cast_ca, i26* %output_addr_149, align 4
  %input_addr_13 = getelementptr [32 x i8]* %input_r, i64 0, i64 13
  %input_load_13 = load i8* %input_addr_13, align 1
  %input_addr_14 = getelementptr [32 x i8]* %input_r, i64 0, i64 14
  %input_load_14 = load i8* %input_addr_14, align 1
  %input_addr_15 = getelementptr [32 x i8]* %input_r, i64 0, i64 15
  %input_load_15 = load i8* %input_addr_15, align 1
  %tmp_588 = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %input_load_12, i32 6, i32 7)
  %tmp_s = call i26 @_ssdm_op_BitConcatenate.i26.i8.i8.i8.i2(i8 %input_load_15, i8 %input_load_14, i8 %input_load_13, i2 %tmp_588)
  %output_addr_150 = getelementptr [10 x i26]* %output_r, i64 0, i64 4
  store i26 %tmp_s, i26* %output_addr_150, align 4
  %input_addr_16 = getelementptr [32 x i8]* %input_r, i64 0, i64 16
  %input_load_16 = load i8* %input_addr_16, align 1
  %input_addr_17 = getelementptr [32 x i8]* %input_r, i64 0, i64 17
  %input_load_17 = load i8* %input_addr_17, align 1
  %input_addr_18 = getelementptr [32 x i8]* %input_r, i64 0, i64 18
  %input_load_18 = load i8* %input_addr_18, align 1
  %input_addr_19 = getelementptr [32 x i8]* %input_r, i64 0, i64 19
  %input_load_19 = load i8* %input_addr_19, align 1
  %tmp_876 = trunc i8 %input_load_19 to i1
  %tmp_371 = call i25 @_ssdm_op_BitConcatenate.i25.i1.i8.i8.i8(i1 %tmp_876, i8 %input_load_18, i8 %input_load_17, i8 %input_load_16)
  %output_addr_151 = getelementptr [10 x i26]* %output_r, i64 0, i64 5
  %tmp_916_cast_cast = zext i25 %tmp_371 to i26
  store i26 %tmp_916_cast_cast, i26* %output_addr_151, align 4
  %input_addr_20 = getelementptr [32 x i8]* %input_r, i64 0, i64 20
  %input_load_20 = load i8* %input_addr_20, align 1
  %input_addr_21 = getelementptr [32 x i8]* %input_r, i64 0, i64 21
  %input_load_21 = load i8* %input_addr_21, align 1
  %input_addr_22 = getelementptr [32 x i8]* %input_r, i64 0, i64 22
  %input_load_22 = load i8* %input_addr_22, align 1
  %tmp_877 = trunc i8 %input_load_22 to i3
  %tmp_589 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %input_load_19, i32 1, i32 7)
  %tmp_918_cast = call i26 @_ssdm_op_BitConcatenate.i26.i3.i8.i8.i7(i3 %tmp_877, i8 %input_load_21, i8 %input_load_20, i7 %tmp_589)
  %output_addr_152 = getelementptr [10 x i26]* %output_r, i64 0, i64 6
  store i26 %tmp_918_cast, i26* %output_addr_152, align 4
  %input_addr_23 = getelementptr [32 x i8]* %input_r, i64 0, i64 23
  %input_load_23 = load i8* %input_addr_23, align 1
  %input_addr_24 = getelementptr [32 x i8]* %input_r, i64 0, i64 24
  %input_load_24 = load i8* %input_addr_24, align 1
  %input_addr_25 = getelementptr [32 x i8]* %input_r, i64 0, i64 25
  %input_load_25 = load i8* %input_addr_25, align 1
  %tmp_878 = trunc i8 %input_load_25 to i4
  %tmp_590 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %input_load_22, i32 3, i32 7)
  %tmp_921_cast = call i25 @_ssdm_op_BitConcatenate.i25.i4.i8.i8.i5(i4 %tmp_878, i8 %input_load_24, i8 %input_load_23, i5 %tmp_590)
  %output_addr_153 = getelementptr [10 x i26]* %output_r, i64 0, i64 7
  %tmp_922_cast_cast_ca = zext i25 %tmp_921_cast to i26
  store i26 %tmp_922_cast_cast_ca, i26* %output_addr_153, align 4
  %input_addr_26 = getelementptr [32 x i8]* %input_r, i64 0, i64 26
  %input_load_26 = load i8* %input_addr_26, align 1
  %input_addr_27 = getelementptr [32 x i8]* %input_r, i64 0, i64 27
  %input_load_27 = load i8* %input_addr_27, align 1
  %input_addr_28 = getelementptr [32 x i8]* %input_r, i64 0, i64 28
  %input_load_28 = load i8* %input_addr_28, align 1
  %tmp_879 = trunc i8 %input_load_28 to i6
  %tmp_591 = call i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8 %input_load_25, i32 4, i32 7)
  %tmp_924_cast = call i26 @_ssdm_op_BitConcatenate.i26.i6.i8.i8.i4(i6 %tmp_879, i8 %input_load_27, i8 %input_load_26, i4 %tmp_591)
  %output_addr_154 = getelementptr [10 x i26]* %output_r, i64 0, i64 8
  store i26 %tmp_924_cast, i26* %output_addr_154, align 4
  %input_addr_29 = getelementptr [32 x i8]* %input_r, i64 0, i64 29
  %input_load_29 = load i8* %input_addr_29, align 1
  %input_addr_30 = getelementptr [32 x i8]* %input_r, i64 0, i64 30
  %input_load_30 = load i8* %input_addr_30, align 1
  %input_addr_31 = getelementptr [32 x i8]* %input_r, i64 0, i64 31
  %input_load_31 = load i8* %input_addr_31, align 1
  %tmp_880 = trunc i8 %input_load_31 to i7
  %tmp_592 = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %input_load_28, i32 6, i32 7)
  %tmp_927_cast = call i25 @_ssdm_op_BitConcatenate.i25.i7.i8.i8.i2(i7 %tmp_880, i8 %input_load_30, i8 %input_load_29, i2 %tmp_592)
  %output_addr_155 = getelementptr [10 x i26]* %output_r, i64 0, i64 9
  %tmp_928_cast_cast_ca = zext i25 %tmp_927_cast to i26
  store i26 %tmp_928_cast_cast_ca, i26* %output_addr_155, align 4
  ret void
}

define internal fastcc void @fdifference.1([19 x i64]* nocapture %output_r, [10 x i64]* nocapture %in_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_5, %2 ]
  %tmp = icmp eq i4 %i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_5 = add i4 %i, 1
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_s = zext i4 %i to i64
  %in_addr = getelementptr [10 x i64]* %in_r, i64 0, i64 %tmp_s
  %in_load = load i64* %in_addr, align 8
  %output_addr = getelementptr [19 x i64]* %output_r, i64 0, i64 %tmp_s
  %output_load = load i64* %output_addr, align 8
  %tmp_750 = sub nsw i64 %in_load, %output_load
  store i64 %tmp_750, i64* %output_addr, align 8
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @fcontract([32 x i8]* %output_r, [11 x i64]* nocapture %input_limbs) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %output_r, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11)
  %output_addr = getelementptr [32 x i8]* %output_r, i64 0, i64 0
  %input = alloca [10 x i32], align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_6, %2 ]
  %exitcond6 = icmp eq i4 %i, -6
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_6 = add i4 %i, 1
  br i1 %exitcond6, label %.preheader8.preheader, label %2

.preheader8.preheader:                            ; preds = %1
  %input_addr = getelementptr inbounds [10 x i32]* %input, i64 0, i64 9
  %input_addr_31 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 0
  br label %.preheader8

; <label>:2                                       ; preds = %1
  %tmp = zext i4 %i to i64
  %input_limbs_addr = getelementptr [11 x i64]* %input_limbs, i64 0, i64 %tmp
  %input_limbs_load = load i64* %input_limbs_addr, align 8
  %tmp_881 = trunc i64 %input_limbs_load to i32
  %input_addr_32 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp
  store i32 %tmp_881, i32* %input_addr_32, align 4
  br label %1

.preheader8:                                      ; preds = %7, %.preheader8.preheader
  %j = phi i2 [ %j_2, %7 ], [ 0, %.preheader8.preheader ]
  %exitcond5 = icmp eq i2 %j, -2
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_2 = add i2 %j, 1
  br i1 %exitcond5, label %8, label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %.preheader8
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader, %6
  %i_1 = phi i4 [ %i_7, %6 ], [ 0, %.preheader7.preheader ]
  %tmp_883 = trunc i4 %i_1 to i1
  %exitcond4 = icmp eq i4 %i_1, -7
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %i_7 = add i4 1, %i_1
  br i1 %exitcond4, label %7, label %3

; <label>:3                                       ; preds = %.preheader7
  %tmp_758 = zext i4 %i_1 to i64
  %input_addr_34 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_758
  %input_load_35 = load i32* %input_addr_34, align 4
  %tmp_886 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %input_load_35, i32 31)
  %mask_4 = select i1 %tmp_886, i32 -1, i32 0
  %tmp_759 = and i32 %input_load_35, %mask_4
  br i1 %tmp_883, label %4, label %5

; <label>:4                                       ; preds = %3
  %tmp_389 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %tmp_759, i32 25, i32 31)
  %tmp_760 = sext i7 %tmp_389 to i32
  %p_shl = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_389, i25 0)
  %tmp_761 = sub i32 %input_load_35, %p_shl
  store i32 %tmp_761, i32* %input_addr_34, align 4
  %tmp_762 = zext i4 %i_7 to i64
  %input_addr_36 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_762
  %input_load_37 = load i32* %input_addr_36, align 4
  %tmp_763 = add nsw i32 %input_load_37, %tmp_760
  store i32 %tmp_763, i32* %input_addr_36, align 4
  br label %6

; <label>:5                                       ; preds = %3
  %tmp_387 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %tmp_759, i32 26, i32 31)
  %tmp_764 = sext i6 %tmp_387 to i32
  %p_shl3 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_387, i26 0)
  %tmp_765 = sub i32 %input_load_35, %p_shl3
  store i32 %tmp_765, i32* %input_addr_34, align 4
  %tmp_766 = zext i4 %i_7 to i64
  %input_addr_35 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_766
  %input_load_36 = load i32* %input_addr_35, align 4
  %tmp_767 = add nsw i32 %input_load_36, %tmp_764
  store i32 %tmp_767, i32* %input_addr_35, align 4
  br label %6

; <label>:6                                       ; preds = %5, %4
  br label %.preheader7

; <label>:7                                       ; preds = %.preheader7
  %input_load_33 = load i32* %input_addr, align 4
  %tmp_885 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %input_load_33, i32 31)
  %mask_3 = select i1 %tmp_885, i32 -1, i32 0
  %tmp_754 = and i32 %input_load_33, %mask_3
  %tmp_383 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %tmp_754, i32 25, i32 31)
  %tmp_935_cast = sext i7 %tmp_383 to i13
  %p_shl2 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_383, i25 0)
  %tmp_755 = sub i32 %input_load_33, %p_shl2
  store i32 %tmp_755, i32* %input_addr, align 4
  %input_load_34 = load i32* %input_addr_31, align 16
  %tmp_756 = mul i13 19, %tmp_935_cast
  %tmp_937_cast = sext i13 %tmp_756 to i32
  %tmp_757 = add i32 %input_load_34, %tmp_937_cast
  store i32 %tmp_757, i32* %input_addr_31, align 16
  br label %.preheader8

; <label>:8                                       ; preds = %.preheader8
  %input_load = load i32* %input_addr_31, align 16
  %tmp_882 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %input_load, i32 31)
  %mask = select i1 %tmp_882, i32 -1, i32 0
  %tmp_s = and i32 %input_load, %mask
  %tmp_379 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %tmp_s, i32 26, i32 31)
  %tmp_751 = sext i6 %tmp_379 to i32
  %p_shl1 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_379, i26 0)
  %tmp_752 = sub i32 %input_load, %p_shl1
  store i32 %tmp_752, i32* %input_addr_31, align 16
  %input_addr_33 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 1
  %input_load_32 = load i32* %input_addr_33, align 4
  %tmp_753 = add nsw i32 %input_load_32, %tmp_751
  store i32 %tmp_753, i32* %input_addr_33, align 4
  br label %9

; <label>:9                                       ; preds = %14, %8
  %a_assign = phi i32 [ %tmp_752, %8 ], [ %tmp_772, %14 ]
  %j_1 = phi i2 [ 0, %8 ], [ %j_3, %14 ]
  %exitcond3 = icmp eq i2 %j_1, -2
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_3 = add i2 %j_1, 1
  br i1 %exitcond3, label %15, label %.preheader.preheader

.preheader.preheader:                             ; preds = %9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %13
  %i_2 = phi i4 [ %i_9, %13 ], [ 0, %.preheader.preheader ]
  %tmp_887 = trunc i4 %i_2 to i1
  %exitcond2 = icmp eq i4 %i_2, -7
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %i_9 = add i4 1, %i_2
  br i1 %exitcond2, label %14, label %10

; <label>:10                                      ; preds = %.preheader
  %tmp_773 = zext i4 %i_2 to i64
  %input_addr_37 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_773
  %input_load_40 = load i32* %input_addr_37, align 4
  %tmp_904 = trunc i32 %input_load_40 to i26
  %tmp_905 = trunc i32 %input_load_40 to i25
  br i1 %tmp_887, label %11, label %12

; <label>:11                                      ; preds = %10
  %tmp_395 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %input_load_40, i32 25, i32 31)
  %carry = sext i7 %tmp_395 to i32
  %tmp_968_cast = zext i25 %tmp_905 to i32
  store i32 %tmp_968_cast, i32* %input_addr_37, align 4
  %tmp_774 = zext i4 %i_9 to i64
  %input_addr_40 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_774
  %input_load_43 = load i32* %input_addr_40, align 4
  %tmp_775 = add nsw i32 %input_load_43, %carry
  store i32 %tmp_775, i32* %input_addr_40, align 4
  br label %13

; <label>:12                                      ; preds = %10
  %tmp_393 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %input_load_40, i32 26, i32 31)
  %carry_1 = sext i6 %tmp_393 to i32
  %tmp_964_cast = zext i26 %tmp_904 to i32
  store i32 %tmp_964_cast, i32* %input_addr_37, align 4
  %tmp_776 = zext i4 %i_9 to i64
  %input_addr_39 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_776
  %input_load_42 = load i32* %input_addr_39, align 4
  %tmp_777 = add nsw i32 %input_load_42, %carry_1
  store i32 %tmp_777, i32* %input_addr_39, align 4
  br label %13

; <label>:13                                      ; preds = %12, %11
  br label %.preheader

; <label>:14                                      ; preds = %.preheader
  %input_load_38 = load i32* %input_addr, align 4
  %tmp_903 = trunc i32 %input_load_38 to i25
  %tmp_391 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %input_load_38, i32 25, i32 31)
  %carry_cast = sext i7 %tmp_391 to i13
  %tmp_954_cast = zext i25 %tmp_903 to i32
  store i32 %tmp_954_cast, i32* %input_addr, align 4
  %tmp_771 = mul i13 19, %carry_cast
  %tmp_955_cast = sext i13 %tmp_771 to i32
  %input_load_39 = load i32* %input_addr_31, align 16
  %tmp_772 = add nsw i32 %tmp_955_cast, %input_load_39
  store i32 %tmp_772, i32* %input_addr_31, align 16
  br label %9

; <label>:15                                      ; preds = %9
  %a_assign_1 = add nsw i32 -67108845, %a_assign
  %tmp_884 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_assign_1, i32 31)
  %mask_2 = xor i1 %tmp_884, true
  %mask_2_cast = select i1 %mask_2, i32 -1, i32 0
  br label %16

; <label>:16                                      ; preds = %_ifconv, %15
  %i_3 = phi i4 [ 1, %15 ], [ %i_8, %_ifconv ]
  %mask4 = phi i32 [ %mask_2_cast, %15 ], [ %mask_1, %_ifconv ]
  %exitcond1 = icmp eq i4 %i_3, -6
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  br i1 %exitcond1, label %17, label %_ifconv

_ifconv:                                          ; preds = %16
  %tmp_770 = zext i4 %i_3 to i64
  %input_addr_38 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_770
  %input_load_41 = load i32* %input_addr_38, align 4
  %a_assign_3 = xor i32 %input_load_41, -67108864
  %tmp_890 = shl i32 %a_assign_3, 16
  %a_assign_4 = and i32 %tmp_890, %a_assign_3
  %tmp_891 = shl i32 %a_assign_4, 8
  %a_assign_5 = and i32 %tmp_891, %a_assign_4
  %tmp_892 = shl i32 %a_assign_5, 4
  %a_assign_6 = and i32 %tmp_892, %a_assign_5
  %tmp_893 = shl i32 %a_assign_6, 2
  %a_assign_7 = and i32 %tmp_893, %a_assign_6
  %tmp_894 = shl i32 %a_assign_7, 1
  %a_assign_8 = and i32 %tmp_894, %a_assign_7
  %a_assign_9 = xor i32 %input_load_41, -33554432
  %tmp_895 = shl i32 %a_assign_9, 16
  %a_assign_s = and i32 %tmp_895, %a_assign_9
  %tmp_896 = shl i32 %a_assign_s, 8
  %a_assign_2 = and i32 %tmp_896, %a_assign_s
  %tmp_897 = shl i32 %a_assign_2, 4
  %a_assign_10 = and i32 %tmp_897, %a_assign_2
  %tmp_898 = shl i32 %a_assign_10, 2
  %a_assign_11 = and i32 %tmp_898, %a_assign_10
  %tmp_899 = shl i32 %a_assign_11, 1
  %a_assign_12 = and i32 %tmp_899, %a_assign_11
  %tmp_900 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_assign_12, i32 31)
  %tmp_901 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_assign_8, i32 31)
  %tmp_902 = trunc i4 %i_3 to i1
  %tmp_612 = select i1 %tmp_902, i1 %tmp_900, i1 %tmp_901
  %p_pn = select i1 %tmp_612, i32 -1, i32 0
  %mask_1 = and i32 %p_pn, %mask4
  %i_8 = add i4 1, %i_3
  br label %16

; <label>:17                                      ; preds = %16
  %tmp_888 = trunc i32 %mask4 to i26
  %tmp_597 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %mask4, i32 5, i32 25)
  %tmp_598 = call i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32 %mask4, i32 2, i32 3)
  %tmp_889 = trunc i32 %mask4 to i1
  %tmp_768 = call i26 @_ssdm_op_BitConcatenate.i26.i21.i1.i2.i1.i1(i21 %tmp_597, i1 false, i2 %tmp_598, i1 false, i1 %tmp_889)
  %tmp_953_cast = zext i26 %tmp_768 to i32
  %tmp_769 = sub nsw i32 %a_assign, %tmp_953_cast
  store i32 %tmp_769, i32* %input_addr_31, align 16
  br label %18

; <label>:18                                      ; preds = %19, %17
  %i_4 = phi i4 [ 1, %17 ], [ %i_13, %19 ]
  %exitcond = icmp eq i4 %i_4, -6
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  br i1 %exitcond, label %20, label %19

; <label>:19                                      ; preds = %18
  %tmp_824 = zext i4 %i_4 to i64
  %input_addr_48 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp_824
  %input_load_54 = load i32* %input_addr_48, align 4
  %tmp_924 = trunc i4 %i_4 to i1
  %tmp_1121_pn_v = select i1 %tmp_924, i26 33554431, i26 -1
  %tmp_1121_pn = and i26 %tmp_888, %tmp_1121_pn_v
  %tmp_1121_pn_cast = zext i26 %tmp_1121_pn to i32
  %storemerge = sub nsw i32 %input_load_54, %tmp_1121_pn_cast
  store i32 %storemerge, i32* %input_addr_48, align 4
  %i_13 = add i4 1, %i_4
  br label %18

; <label>:20                                      ; preds = %18
  %input_load_44 = load i32* %input_addr_33, align 4
  %tmp_906 = shl i32 %input_load_44, 2
  store i32 %tmp_906, i32* %input_addr_33, align 4
  %input_addr_41 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 2
  %input_load_45 = load i32* %input_addr_41, align 8
  %tmp_907 = shl i32 %input_load_45, 3
  store i32 %tmp_907, i32* %input_addr_41, align 8
  %input_addr_42 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 3
  %input_load_46 = load i32* %input_addr_42, align 4
  %tmp_908 = shl i32 %input_load_46, 5
  store i32 %tmp_908, i32* %input_addr_42, align 4
  %input_addr_43 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 4
  %input_load_47 = load i32* %input_addr_43, align 16
  %tmp_909 = shl i32 %input_load_47, 6
  store i32 %tmp_909, i32* %input_addr_43, align 16
  %input_addr_44 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 6
  %input_load_48 = load i32* %input_addr_44, align 8
  %tmp_910 = shl i32 %input_load_48, 1
  store i32 %tmp_910, i32* %input_addr_44, align 8
  %input_addr_45 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 7
  %input_load_49 = load i32* %input_addr_45, align 4
  %tmp_911 = shl i32 %input_load_49, 3
  store i32 %tmp_911, i32* %input_addr_45, align 4
  %input_addr_46 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 8
  %input_load_50 = load i32* %input_addr_46, align 16
  %tmp_912 = shl i32 %input_load_50, 4
  store i32 %tmp_912, i32* %input_addr_46, align 16
  %input_load_51 = load i32* %input_addr, align 4
  %tmp_913 = shl i32 %input_load_51, 6
  store i32 %tmp_913, i32* %input_addr, align 4
  %output_addr_156 = getelementptr [32 x i8]* %output_r, i64 0, i64 16
  %input_load_52 = load i32* %input_addr_31, align 16
  %tmp_914 = trunc i32 %input_load_52 to i8
  store i8 %tmp_914, i8* %output_addr, align 1
  %tmp_778 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_52, i32 8, i32 15)
  %output_addr_157 = getelementptr [32 x i8]* %output_r, i64 0, i64 1
  store i8 %tmp_778, i8* %output_addr_157, align 1
  %tmp_779 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_52, i32 16, i32 23)
  %output_addr_158 = getelementptr [32 x i8]* %output_r, i64 0, i64 2
  store i8 %tmp_779, i8* %output_addr_158, align 1
  %tmp_780 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_52, i32 24, i32 31)
  %output_addr_159 = getelementptr [32 x i8]* %output_r, i64 0, i64 3
  %tmp_915 = trunc i32 %input_load_44 to i6
  %tmp_781 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_915, i2 0)
  %tmp_782 = or i8 %tmp_780, %tmp_781
  store i8 %tmp_782, i8* %output_addr_159, align 1
  %tmp_783 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_44, i32 6, i32 13)
  %output_addr_160 = getelementptr [32 x i8]* %output_r, i64 0, i64 4
  store i8 %tmp_783, i8* %output_addr_160, align 1
  %tmp_784 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_44, i32 14, i32 21)
  %output_addr_161 = getelementptr [32 x i8]* %output_r, i64 0, i64 5
  store i8 %tmp_784, i8* %output_addr_161, align 1
  %tmp_785 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_44, i32 22, i32 29)
  %output_addr_162 = getelementptr [32 x i8]* %output_r, i64 0, i64 6
  %tmp_916 = trunc i32 %input_load_45 to i5
  %tmp_786 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_916, i3 0)
  %tmp_787 = or i8 %tmp_786, %tmp_785
  store i8 %tmp_787, i8* %output_addr_162, align 1
  %tmp_788 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_45, i32 5, i32 12)
  %output_addr_163 = getelementptr [32 x i8]* %output_r, i64 0, i64 7
  store i8 %tmp_788, i8* %output_addr_163, align 1
  %tmp_789 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_45, i32 13, i32 20)
  %output_addr_164 = getelementptr [32 x i8]* %output_r, i64 0, i64 8
  store i8 %tmp_789, i8* %output_addr_164, align 1
  %tmp_790 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_45, i32 21, i32 28)
  %output_addr_165 = getelementptr [32 x i8]* %output_r, i64 0, i64 9
  %tmp_917 = trunc i32 %input_load_46 to i3
  %tmp_791 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_917, i5 0)
  %tmp_792 = or i8 %tmp_791, %tmp_790
  store i8 %tmp_792, i8* %output_addr_165, align 1
  %tmp_793 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_46, i32 3, i32 10)
  %output_addr_166 = getelementptr [32 x i8]* %output_r, i64 0, i64 10
  store i8 %tmp_793, i8* %output_addr_166, align 1
  %tmp_794 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_46, i32 11, i32 18)
  %output_addr_167 = getelementptr [32 x i8]* %output_r, i64 0, i64 11
  store i8 %tmp_794, i8* %output_addr_167, align 1
  %tmp_795 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_46, i32 19, i32 26)
  %output_addr_168 = getelementptr [32 x i8]* %output_r, i64 0, i64 12
  %tmp_918 = trunc i32 %input_load_47 to i2
  %tmp_796 = call i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2 %tmp_918, i6 0)
  %tmp_797 = or i8 %tmp_796, %tmp_795
  store i8 %tmp_797, i8* %output_addr_168, align 1
  %tmp_798 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_47, i32 2, i32 9)
  %output_addr_169 = getelementptr [32 x i8]* %output_r, i64 0, i64 13
  store i8 %tmp_798, i8* %output_addr_169, align 1
  %tmp_799 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_47, i32 10, i32 17)
  %output_addr_170 = getelementptr [32 x i8]* %output_r, i64 0, i64 14
  store i8 %tmp_799, i8* %output_addr_170, align 1
  %tmp_800 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_47, i32 18, i32 25)
  %output_addr_171 = getelementptr [32 x i8]* %output_r, i64 0, i64 15
  store i8 %tmp_800, i8* %output_addr_171, align 1
  %input_addr_47 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 5
  %input_load_53 = load i32* %input_addr_47, align 4
  %tmp_919 = trunc i32 %input_load_53 to i8
  store i8 %tmp_919, i8* %output_addr_156, align 1
  %tmp_801 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_53, i32 8, i32 15)
  %output_addr_172 = getelementptr [32 x i8]* %output_r, i64 0, i64 17
  store i8 %tmp_801, i8* %output_addr_172, align 1
  %tmp_802 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_53, i32 16, i32 23)
  %output_addr_173 = getelementptr [32 x i8]* %output_r, i64 0, i64 18
  store i8 %tmp_802, i8* %output_addr_173, align 1
  %tmp_803 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_53, i32 24, i32 31)
  %output_addr_174 = getelementptr [32 x i8]* %output_r, i64 0, i64 19
  %tmp_920 = trunc i32 %input_load_48 to i7
  %tmp_804 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_920, i1 false)
  %tmp_805 = or i8 %tmp_803, %tmp_804
  store i8 %tmp_805, i8* %output_addr_174, align 1
  %tmp_806 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_48, i32 7, i32 14)
  %output_addr_175 = getelementptr [32 x i8]* %output_r, i64 0, i64 20
  store i8 %tmp_806, i8* %output_addr_175, align 1
  %tmp_807 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_48, i32 15, i32 22)
  %output_addr_176 = getelementptr [32 x i8]* %output_r, i64 0, i64 21
  store i8 %tmp_807, i8* %output_addr_176, align 1
  %tmp_808 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_48, i32 23, i32 30)
  %output_addr_177 = getelementptr [32 x i8]* %output_r, i64 0, i64 22
  %tmp_921 = trunc i32 %input_load_49 to i5
  %tmp_809 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_921, i3 0)
  %tmp_810 = or i8 %tmp_809, %tmp_808
  store i8 %tmp_810, i8* %output_addr_177, align 1
  %tmp_811 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_49, i32 5, i32 12)
  %output_addr_178 = getelementptr [32 x i8]* %output_r, i64 0, i64 23
  store i8 %tmp_811, i8* %output_addr_178, align 1
  %tmp_812 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_49, i32 13, i32 20)
  %output_addr_179 = getelementptr [32 x i8]* %output_r, i64 0, i64 24
  store i8 %tmp_812, i8* %output_addr_179, align 1
  %tmp_813 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_49, i32 21, i32 28)
  %output_addr_180 = getelementptr [32 x i8]* %output_r, i64 0, i64 25
  %tmp_922 = trunc i32 %input_load_50 to i4
  %tmp_814 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp_922, i4 0)
  %tmp_815 = or i8 %tmp_814, %tmp_813
  store i8 %tmp_815, i8* %output_addr_180, align 1
  %tmp_816 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_50, i32 4, i32 11)
  %output_addr_181 = getelementptr [32 x i8]* %output_r, i64 0, i64 26
  store i8 %tmp_816, i8* %output_addr_181, align 1
  %tmp_817 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_50, i32 12, i32 19)
  %output_addr_182 = getelementptr [32 x i8]* %output_r, i64 0, i64 27
  store i8 %tmp_817, i8* %output_addr_182, align 1
  %tmp_818 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_50, i32 20, i32 27)
  %output_addr_183 = getelementptr [32 x i8]* %output_r, i64 0, i64 28
  %tmp_923 = trunc i32 %input_load_51 to i2
  %tmp_819 = call i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2 %tmp_923, i6 0)
  %tmp_820 = or i8 %tmp_819, %tmp_818
  store i8 %tmp_820, i8* %output_addr_183, align 1
  %tmp_821 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_51, i32 2, i32 9)
  %output_addr_184 = getelementptr [32 x i8]* %output_r, i64 0, i64 29
  store i8 %tmp_821, i8* %output_addr_184, align 1
  %tmp_822 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_51, i32 10, i32 17)
  %output_addr_185 = getelementptr [32 x i8]* %output_r, i64 0, i64 30
  store i8 %tmp_822, i8* %output_addr_185, align 1
  %tmp_823 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_load_51, i32 18, i32 25)
  %output_addr_186 = getelementptr [32 x i8]* %output_r, i64 0, i64 31
  store i8 %tmp_823, i8* %output_addr_186, align 1
  ret void
}

define i32 @curve25519_donna([32 x i8]* %mypublic_in, [32 x i8]* %secret_in, [32 x i8]* %basepoint_in, [32 x i8]* %mypublic_out, [32 x i8]* %secret_out, [32 x i8]* %basepoint_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %mypublic_in) nounwind, !map !73
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %secret_in) nounwind, !map !79
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %basepoint_in) nounwind, !map !83
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %mypublic_out) nounwind, !map !87
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %secret_out) nounwind, !map !91
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %basepoint_out) nounwind, !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !99
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @curve25519_donna_str) nounwind
  %bp = alloca [10 x i26], align 4
  %x = alloca [10 x i64], align 16
  %z = alloca [11 x i64], align 16
  %zmone = alloca [10 x i64], align 16
  %e = alloca [32 x i8], align 16
  %mypublic = alloca [32 x i8], align 16
  %secret = alloca [32 x i8], align 16
  %basepoint = alloca [32 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %basepoint_in, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %basepoint_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_34 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %secret_in, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %secret_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_35 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %mypublic_in, [1 x i8]* @p_str9, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str9, i32 -1, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %mypublic_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_36 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %basepoint_out, [1 x i8]* @p_str14, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str14, i32 -1, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %basepoint_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_37 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %secret_out, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %secret_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_38 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %mypublic_out, [1 x i8]* @p_str12, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str12, i32 -1, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %mypublic_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [8 x i8]* @p_str3, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [14 x i8]* @p_str4, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [7 x i8]* @p_str5, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [9 x i8]* @p_str6, [1 x i8]* @p_str1) nounwind
  %e_addr = getelementptr inbounds [32 x i8]* %e, i64 0, i64 0
  %empty_39 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %basepoint, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind
  %empty_40 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %secret, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind
  %empty_41 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %mypublic, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i5 [ 0, %0 ], [ %indvarinc, %meminst ]
  %indvarinc = add i5 %invdar, 1
  %tmp = zext i5 %invdar to i64
  %e_addr_1 = getelementptr [32 x i8]* %e, i64 0, i64 %tmp
  store i8 0, i8* %e_addr_1, align 1
  %tmp_s = icmp eq i5 %invdar, -1
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_e_str) nounwind
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  br i1 %tmp_s, label %1, label %meminst

; <label>:1                                       ; preds = %meminst
  call fastcc void @_memcpy_char([32 x i8]* %mypublic, [32 x i8]* %mypublic_in) nounwind
  call fastcc void @_memcpy_char([32 x i8]* %secret, [32 x i8]* %secret_in) nounwind
  call fastcc void @_memcpy_char([32 x i8]* %basepoint, [32 x i8]* %basepoint_in) nounwind
  br label %2

; <label>:2                                       ; preds = %3, %1
  %i = phi i6 [ 0, %1 ], [ %i_14, %3 ]
  %exitcond = icmp eq i6 %i, -32
  %empty_44 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %i_14 = add i6 %i, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %2
  %tmp_827 = zext i6 %i to i64
  %secret_addr = getelementptr inbounds [32 x i8]* %secret, i64 0, i64 %tmp_827
  %secret_load = load i8* %secret_addr, align 1
  %e_addr_3 = getelementptr inbounds [32 x i8]* %e, i64 0, i64 %tmp_827
  store i8 %secret_load, i8* %e_addr_3, align 1
  br label %2

; <label>:4                                       ; preds = %2
  %e_load = load i8* %e_addr, align 16
  %tmp_629 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %e_load, i32 3, i32 7)
  %tmp_825 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_629, i3 0)
  store i8 %tmp_825, i8* %e_addr, align 16
  %e_addr_2 = getelementptr inbounds [32 x i8]* %e, i64 0, i64 31
  %e_load_1 = load i8* %e_addr_2, align 1
  %tmp_925 = trunc i8 %e_load_1 to i6
  %tmp_826 = call i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1 true, i6 %tmp_925)
  %tmp_1063_cast = zext i7 %tmp_826 to i8
  store i8 %tmp_1063_cast, i8* %e_addr_2, align 1
  call fastcc void @fexpand([10 x i26]* %bp, [32 x i8]* %basepoint) nounwind
  call fastcc void @cmult([10 x i64]* %x, [11 x i64]* %z, [32 x i8]* %e, [10 x i26]* %bp) nounwind
  call fastcc void @crecip([10 x i64]* %zmone, [11 x i64]* %z) nounwind
  call fastcc void @fmul.2([11 x i64]* %z, [10 x i64]* %x, [10 x i64]* %zmone) nounwind
  call fastcc void @fcontract([32 x i8]* %mypublic, [11 x i64]* %z) nounwind
  call fastcc void @_memcpy_char([32 x i8]* %mypublic_out, [32 x i8]* %mypublic) nounwind
  call fastcc void @_memcpy_char([32 x i8]* %secret_out, [32 x i8]* %secret) nounwind
  call fastcc void @_memcpy_char([32 x i8]* %basepoint_out, [32 x i8]* %basepoint) nounwind
  ret i32 0
}

define internal fastcc void @crecip([10 x i64]* nocapture %out_r, [11 x i64]* nocapture %z) {
  %z2 = alloca [10 x i64], align 16
  %z9 = alloca [10 x i64], align 16
  %z11 = alloca [10 x i64], align 16
  %z2_5_0 = alloca [10 x i64], align 16
  %z2_10_0 = alloca [10 x i64], align 16
  %z2_20_0 = alloca [10 x i64], align 16
  %z2_50_0 = alloca [10 x i64], align 16
  %z2_100_0 = alloca [10 x i64], align 16
  %t0 = alloca [10 x i64], align 16
  %t1 = alloca [10 x i64], align 16
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call fastcc void @fsquare.2([10 x i64]* %z2, [11 x i64]* %z)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %z2)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fmul.1([10 x i64]* %z9, [10 x i64]* %t0, [11 x i64]* %z)
  call fastcc void @fmul([10 x i64]* %z11, [10 x i64]* %z9, [10 x i64]* %z2)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z11)
  call fastcc void @fmul([10 x i64]* %z2_5_0, [10 x i64]* %t0, [10 x i64]* %z9)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_5_0)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fmul([10 x i64]* %z2_10_0, [10 x i64]* %t0, [10 x i64]* %z2_5_0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_10_0)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 2, %0 ], [ %i_15, %2 ]
  %tmp = icmp ult i4 %i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  %i_15 = add i4 %i, 2
  br label %1

; <label>:3                                       ; preds = %1
  call fastcc void @fmul([10 x i64]* %z2_20_0, [10 x i64]* %t1, [10 x i64]* %z2_10_0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_20_0)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i5 [ 2, %3 ], [ %i_16, %5 ]
  %tmp_s = icmp ult i5 %i_1, -12
  %empty_45 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  br i1 %tmp_s, label %5, label %6

; <label>:5                                       ; preds = %4
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  %i_16 = add i5 %i_1, 2
  br label %4

; <label>:6                                       ; preds = %4
  call fastcc void @fmul([10 x i64]* %t0, [10 x i64]* %t1, [10 x i64]* %z2_20_0)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  br label %7

; <label>:7                                       ; preds = %8, %6
  %i_2 = phi i4 [ 2, %6 ], [ %i_17, %8 ]
  %tmp_828 = icmp ult i4 %i_2, -6
  %empty_46 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp_828, label %8, label %9

; <label>:8                                       ; preds = %7
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  %i_17 = add i4 %i_2, 2
  br label %7

; <label>:9                                       ; preds = %7
  call fastcc void @fmul([10 x i64]* %z2_50_0, [10 x i64]* %t0, [10 x i64]* %z2_10_0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_50_0)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  br label %10

; <label>:10                                      ; preds = %11, %9
  %i_3 = phi i6 [ 2, %9 ], [ %i_18, %11 ]
  %tmp_829 = icmp ult i6 %i_3, -14
  %empty_47 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  br i1 %tmp_829, label %11, label %12

; <label>:11                                      ; preds = %10
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  %i_18 = add i6 %i_3, 2
  br label %10

; <label>:12                                      ; preds = %10
  call fastcc void @fmul([10 x i64]* %z2_100_0, [10 x i64]* %t1, [10 x i64]* %z2_50_0)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %z2_100_0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  br label %13

; <label>:13                                      ; preds = %14, %12
  %i_4 = phi i7 [ 2, %12 ], [ %i_19, %14 ]
  %tmp_830 = icmp ult i7 %i_4, -28
  %empty_48 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 49, i64 49, i64 49)
  br i1 %tmp_830, label %14, label %15

; <label>:14                                      ; preds = %13
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  %i_19 = add i7 %i_4, 2
  br label %13

; <label>:15                                      ; preds = %13
  call fastcc void @fmul([10 x i64]* %t1, [10 x i64]* %t0, [10 x i64]* %z2_100_0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  br label %16

; <label>:16                                      ; preds = %17, %15
  %i_5 = phi i6 [ 2, %15 ], [ %i_20, %17 ]
  %tmp_831 = icmp ult i6 %i_5, -14
  %empty_49 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  br i1 %tmp_831, label %17, label %18

; <label>:17                                      ; preds = %16
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  %i_20 = add i6 %i_5, 2
  br label %16

; <label>:18                                      ; preds = %16
  call fastcc void @fmul([10 x i64]* %t0, [10 x i64]* %t1, [10 x i64]* %z2_50_0)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1)
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0)
  call fastcc void @fmul([10 x i64]* %out_r, [10 x i64]* %t1, [10 x i64]* %z11)
  ret void
}

define internal fastcc void @cmult([10 x i64]* nocapture %resultx, [11 x i64]* %resultz, [32 x i8]* %n, [10 x i26]* %q) {
  %nqpqx = alloca [19 x i64], align 16
  %nqpqz = alloca [19 x i64], align 16
  %nqx = alloca [19 x i64], align 16
  %nqz = alloca [19 x i64], align 16
  %t = alloca [19 x i64], align 16
  %nqpqx2 = alloca [19 x i64], align 16
  %nqpqz2 = alloca [19 x i64], align 16
  %nqx2 = alloca [19 x i64], align 16
  %nqz2 = alloca [19 x i64], align 16
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str8, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i5 [ 0, %0 ], [ %indvarinc, %meminst ]
  %indvarinc = add i5 %invdar, 1
  %tmp = zext i5 %invdar to i64
  %nqpqx_addr = getelementptr [19 x i64]* %nqpqx, i64 0, i64 %tmp
  store i64 0, i64* %nqpqx_addr, align 8
  %tmp_s = icmp eq i5 %invdar, -14
  %empty = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @memset_nqpqx_str) nounwind
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  br i1 %tmp_s, label %meminst2.preheader, label %meminst

meminst2.preheader:                               ; preds = %meminst
  br label %meminst2

meminst2:                                         ; preds = %meminst2.preheader, %meminst2
  %invdar3 = phi i5 [ %indvarinc4, %meminst2 ], [ 0, %meminst2.preheader ]
  %indvarinc4 = add i5 %invdar3, 1
  %tmp_832 = zext i5 %invdar3 to i64
  %nqpqz_addr = getelementptr [19 x i64]* %nqpqz, i64 0, i64 %tmp_832
  store i64 0, i64* %nqpqz_addr, align 8
  %tmp_833 = icmp eq i5 %invdar3, -14
  %empty_51 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @memset_nqpqz_str) nounwind
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  br i1 %tmp_833, label %1, label %meminst2

; <label>:1                                       ; preds = %meminst2
  %nqpqz_addr_1 = getelementptr [19 x i64]* %nqpqz, i64 0, i64 0
  store i64 1, i64* %nqpqz_addr_1, align 16
  br label %meminst5

meminst5:                                         ; preds = %meminst5, %1
  %invdar6 = phi i5 [ 0, %1 ], [ %indvarinc7, %meminst5 ]
  %indvarinc7 = add i5 %invdar6, 1
  %tmp_834 = zext i5 %invdar6 to i64
  %nqx_addr = getelementptr [19 x i64]* %nqx, i64 0, i64 %tmp_834
  store i64 0, i64* %nqx_addr, align 8
  %tmp_835 = icmp eq i5 %invdar6, -14
  %empty_53 = call i32 (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memset_nqx_str) nounwind
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  br i1 %tmp_835, label %2, label %meminst5

; <label>:2                                       ; preds = %meminst5
  %nqx_addr_1 = getelementptr [19 x i64]* %nqx, i64 0, i64 0
  store i64 1, i64* %nqx_addr_1, align 16
  br label %meminst8

meminst8:                                         ; preds = %meminst8, %2
  %invdar9 = phi i5 [ 0, %2 ], [ %indvarinc1, %meminst8 ]
  %indvarinc1 = add i5 %invdar9, 1
  %tmp_836 = zext i5 %invdar9 to i64
  %nqz_addr = getelementptr [19 x i64]* %nqz, i64 0, i64 %tmp_836
  store i64 0, i64* %nqz_addr, align 8
  %tmp_837 = icmp eq i5 %invdar9, -14
  %empty_55 = call i32 (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memset_nqz_str) nounwind
  %empty_56 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  br i1 %tmp_837, label %meminst11.preheader, label %meminst8

meminst11.preheader:                              ; preds = %meminst8
  br label %meminst11

meminst11:                                        ; preds = %meminst11.preheader, %meminst11
  %invdar1 = phi i5 [ %indvarinc2, %meminst11 ], [ 0, %meminst11.preheader ]
  %indvarinc2 = add i5 %invdar1, 1
  %tmp_838 = zext i5 %invdar1 to i64
  %t_addr = getelementptr [19 x i64]* %t, i64 0, i64 %tmp_838
  store i64 0, i64* %t_addr, align 8
  %tmp_839 = icmp eq i5 %invdar1, -14
  %empty_57 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_t_str) nounwind
  %empty_58 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  br i1 %tmp_839, label %meminst14.preheader, label %meminst11

meminst14.preheader:                              ; preds = %meminst11
  br label %meminst14

meminst14:                                        ; preds = %meminst14.preheader, %meminst14
  %invdar2 = phi i5 [ %indvarinc3, %meminst14 ], [ 0, %meminst14.preheader ]
  %indvarinc3 = add i5 %invdar2, 1
  %tmp_840 = zext i5 %invdar2 to i64
  %nqpqx2_addr = getelementptr [19 x i64]* %nqpqx2, i64 0, i64 %tmp_840
  store i64 0, i64* %nqpqx2_addr, align 8
  %tmp_841 = icmp eq i5 %invdar2, -14
  %empty_59 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_nqpqx2_str) nounwind
  %empty_60 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  br i1 %tmp_841, label %meminst17.preheader, label %meminst14

meminst17.preheader:                              ; preds = %meminst14
  br label %meminst17

meminst17:                                        ; preds = %meminst17.preheader, %meminst17
  %invdar4 = phi i5 [ %indvarinc5, %meminst17 ], [ 0, %meminst17.preheader ]
  %indvarinc5 = add i5 %invdar4, 1
  %tmp_842 = zext i5 %invdar4 to i64
  %nqpqz2_addr = getelementptr [19 x i64]* %nqpqz2, i64 0, i64 %tmp_842
  store i64 0, i64* %nqpqz2_addr, align 8
  %tmp_843 = icmp eq i5 %invdar4, -14
  %empty_61 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_nqpqz2_str) nounwind
  %empty_62 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  br i1 %tmp_843, label %3, label %meminst17

; <label>:3                                       ; preds = %meminst17
  %nqpqz2_addr_1 = getelementptr [19 x i64]* %nqpqz2, i64 0, i64 0
  store i64 1, i64* %nqpqz2_addr_1, align 16
  br label %meminst20

meminst20:                                        ; preds = %meminst20, %3
  %invdar5 = phi i5 [ 0, %3 ], [ %indvarinc6, %meminst20 ]
  %indvarinc6 = add i5 %invdar5, 1
  %tmp_844 = zext i5 %invdar5 to i64
  %nqx2_addr = getelementptr [19 x i64]* %nqx2, i64 0, i64 %tmp_844
  store i64 0, i64* %nqx2_addr, align 8
  %tmp_845 = icmp eq i5 %invdar5, -14
  %empty_63 = call i32 (...)* @_ssdm_op_SpecLoopName([12 x i8]* @memset_nqx2_str) nounwind
  %empty_64 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  br i1 %tmp_845, label %meminst23.preheader, label %meminst20

meminst23.preheader:                              ; preds = %meminst20
  br label %meminst23

meminst23:                                        ; preds = %meminst23.preheader, %meminst23
  %invdar7 = phi i5 [ %indvarinc8, %meminst23 ], [ 0, %meminst23.preheader ]
  %indvarinc8 = add i5 %invdar7, 1
  %tmp_846 = zext i5 %invdar7 to i64
  %nqz2_addr = getelementptr [19 x i64]* %nqz2, i64 0, i64 %tmp_846
  store i64 0, i64* %nqz2_addr, align 8
  %tmp_847 = icmp eq i5 %invdar7, -14
  %empty_65 = call i32 (...)* @_ssdm_op_SpecLoopName([12 x i8]* @memset_nqz2_str) nounwind
  %empty_66 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  br i1 %tmp_847, label %4, label %meminst23

; <label>:4                                       ; preds = %meminst23
  %nqz2_addr_1 = getelementptr [19 x i64]* %nqz2, i64 0, i64 0
  store i64 1, i64* %nqz2_addr_1, align 16
  br label %5

; <label>:5                                       ; preds = %6, %4
  %i_i = phi i4 [ 0, %4 ], [ %i_21, %6 ]
  %exitcond_i = icmp eq i4 %i_i, -6
  %empty_67 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_21 = add i4 %i_i, 1
  br i1 %exitcond_i, label %_memcpy.3.exit.preheader, label %6

_memcpy.3.exit.preheader:                         ; preds = %5
  br label %_memcpy.3.exit

; <label>:6                                       ; preds = %5
  %tmp_i = zext i4 %i_i to i64
  %q_addr = getelementptr [10 x i26]* %q, i64 0, i64 %tmp_i
  %q_load = load i26* %q_addr, align 4
  %extLd = zext i26 %q_load to i64
  %nqpqx_addr_1 = getelementptr [19 x i64]* %nqpqx, i64 0, i64 %tmp_i
  store i64 %extLd, i64* %nqpqx_addr_1, align 8
  br label %5

_memcpy.3.exit.loopexit:                          ; preds = %8
  br label %_memcpy.3.exit

_memcpy.3.exit:                                   ; preds = %_memcpy.3.exit.preheader, %_memcpy.3.exit.loopexit
  %i = phi i6 [ %i_23, %_memcpy.3.exit.loopexit ], [ 0, %_memcpy.3.exit.preheader ]
  %tmp_848 = icmp eq i6 %i, -32
  %empty_68 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32)
  %i_23 = add i6 %i, 1
  br i1 %tmp_848, label %.preheader.preheader, label %7

.preheader.preheader:                             ; preds = %_memcpy.3.exit
  br label %.preheader

; <label>:7                                       ; preds = %_memcpy.3.exit
  %tmp_849 = sub i6 31, %i
  %tmp_850 = zext i6 %tmp_849 to i64
  %n_addr = getelementptr [32 x i8]* %n, i64 0, i64 %tmp_850
  %byte = load i8* %n_addr, align 1
  br label %8

; <label>:8                                       ; preds = %9, %7
  %j = phi i4 [ 0, %7 ], [ %j_4, %9 ]
  %byte1 = phi i8 [ %byte, %7 ], [ %byte_1, %9 ]
  %tmp_851 = icmp eq i4 %j, -8
  %empty_69 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_4 = add i4 %j, 1
  br i1 %tmp_851, label %_memcpy.3.exit.loopexit, label %9

; <label>:9                                       ; preds = %8
  %tmp_926 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %byte1, i32 7)
  call fastcc void @swap_conditional([19 x i64]* %nqx, [19 x i64]* %nqpqx, i1 %tmp_926)
  call fastcc void @swap_conditional([19 x i64]* %nqz, [19 x i64]* %nqpqz, i1 %tmp_926)
  call fastcc void @fmonty([19 x i64]* %nqx2, [19 x i64]* %nqz2, [19 x i64]* %nqpqx2, [19 x i64]* %nqpqz2, [19 x i64]* %nqx, [19 x i64]* %nqz, [19 x i64]* %nqpqx, [19 x i64]* %nqpqz, [10 x i26]* %q)
  call fastcc void @swap_conditional([19 x i64]* %nqx2, [19 x i64]* %nqpqx2, i1 %tmp_926)
  call fastcc void @swap_conditional([19 x i64]* %nqz2, [19 x i64]* %nqpqz2, i1 %tmp_926)
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqx)
  call fastcc void @_memcpy.1([19 x i64]* %nqx, [19 x i64]* %nqx2)
  call fastcc void @_memcpy.1([19 x i64]* %nqx2, [19 x i64]* %t)
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqz)
  call fastcc void @_memcpy.1([19 x i64]* %nqz, [19 x i64]* %nqz2)
  call fastcc void @_memcpy.1([19 x i64]* %nqz2, [19 x i64]* %t)
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqpqx)
  call fastcc void @_memcpy.1([19 x i64]* %nqpqx, [19 x i64]* %nqpqx2)
  call fastcc void @_memcpy.1([19 x i64]* %nqpqx2, [19 x i64]* %t)
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqpqz)
  call fastcc void @_memcpy.1([19 x i64]* %nqpqz, [19 x i64]* %nqpqz2)
  call fastcc void @_memcpy.1([19 x i64]* %nqpqz2, [19 x i64]* %t)
  %byte_1 = shl i8 %byte1, 1
  br label %8

.preheader:                                       ; preds = %.preheader.preheader, %10
  %i_i5 = phi i4 [ %i_25, %10 ], [ 0, %.preheader.preheader ]
  %exitcond_i6 = icmp eq i4 %i_i5, -6
  %empty_70 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_25 = add i4 %i_i5, 1
  br i1 %exitcond_i6, label %_memcpy.exit.preheader, label %10

_memcpy.exit.preheader:                           ; preds = %.preheader
  br label %_memcpy.exit

; <label>:10                                      ; preds = %.preheader
  %tmp_i7 = zext i4 %i_i5 to i64
  %nqx_addr_2 = getelementptr [19 x i64]* %nqx, i64 0, i64 %tmp_i7
  %nqx_load = load i64* %nqx_addr_2, align 8
  %resultx_addr = getelementptr [10 x i64]* %resultx, i64 0, i64 %tmp_i7
  store i64 %nqx_load, i64* %resultx_addr, align 8
  br label %.preheader

_memcpy.exit:                                     ; preds = %_memcpy.exit.preheader, %11
  %i_i4 = phi i4 [ %i_26, %11 ], [ 0, %_memcpy.exit.preheader ]
  %exitcond_i3 = icmp eq i4 %i_i4, -6
  %empty_71 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_26 = add i4 %i_i4, 1
  br i1 %exitcond_i3, label %_memcpy.2.exit, label %11

; <label>:11                                      ; preds = %_memcpy.exit
  %tmp_i6 = zext i4 %i_i4 to i64
  %nqz_addr_1 = getelementptr [19 x i64]* %nqz, i64 0, i64 %tmp_i6
  %nqz_load = load i64* %nqz_addr_1, align 8
  %resultz_addr = getelementptr [11 x i64]* %resultz, i64 0, i64 %tmp_i6
  store i64 %nqz_load, i64* %resultz_addr, align 8
  br label %_memcpy.exit

_memcpy.2.exit:                                   ; preds = %_memcpy.exit
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecResourceLimit(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
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

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_72 = trunc i32 %empty to i8
  ret i8 %empty_72
}

define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_73 = trunc i8 %empty to i7
  ret i7 %empty_73
}

define weak i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_74 = trunc i32 %empty to i7
  ret i7 %empty_74
}

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i62 @_ssdm_op_PartSelect.i62.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i60 @_ssdm_op_PartSelect.i60.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i6 @_ssdm_op_PartSelect.i6.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_75 = trunc i8 %empty to i6
  ret i6 %empty_75
}

define weak i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_76 = trunc i32 %empty to i6
  ret i6 %empty_76
}

define weak i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_77 = trunc i8 %empty to i5
  ret i5 %empty_77
}

declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_78 = trunc i8 %empty to i4
  ret i4 %empty_78
}

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i39 @_ssdm_op_PartSelect.i39.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_79 = trunc i64 %empty to i39
  ret i39 %empty_79
}

define weak i38 @_ssdm_op_PartSelect.i38.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_80 = trunc i64 %empty to i38
  ret i38 %empty_80
}

declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSelect.i3.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_81 = trunc i8 %empty to i3
  ret i3 %empty_81
}

declare i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_82 = trunc i32 %empty to i21
  ret i21 %empty_82
}

define weak i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_83 = trunc i8 %empty to i2
  ret i2 %empty_83
}

define weak i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_84 = trunc i32 %empty to i2
  ret i2 %empty_84
}

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_85 = shl i8 1, %empty
  %empty_86 = and i8 %0, %empty_85
  %empty_87 = icmp ne i8 %empty_86, 0
  ret i1 %empty_87
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_88 = shl i64 1, %empty
  %empty_89 = and i64 %0, %empty_88
  %empty_90 = icmp ne i64 %empty_89, 0
  ret i1 %empty_90
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_91 = and i32 %0, %empty
  %empty_92 = icmp ne i32 %empty_91, 0
  ret i1 %empty_92
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_93 = zext i1 %1 to i8
  %empty_94 = shl i8 %empty, 1
  %empty_95 = or i8 %empty_94, %empty_93
  ret i8 %empty_95
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_96 = zext i2 %1 to i8
  %empty_97 = shl i8 %empty, 2
  %empty_98 = or i8 %empty_97, %empty_96
  ret i8 %empty_98
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8
  %empty_99 = zext i3 %1 to i8
  %empty_100 = shl i8 %empty, 3
  %empty_101 = or i8 %empty_100, %empty_99
  ret i8 %empty_101
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_102 = zext i4 %1 to i8
  %empty_103 = shl i8 %empty, 4
  %empty_104 = or i8 %empty_103, %empty_102
  ret i8 %empty_104
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %0 to i8
  %empty_105 = zext i5 %1 to i8
  %empty_106 = shl i8 %empty, 5
  %empty_107 = or i8 %empty_106, %empty_105
  ret i8 %empty_107
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2, i6) nounwind readnone {
entry:
  %empty = zext i2 %0 to i8
  %empty_108 = zext i6 %1 to i8
  %empty_109 = shl i8 %empty, 6
  %empty_110 = or i8 %empty_109, %empty_108
  ret i8 %empty_110
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1, i6) nounwind readnone {
entry:
  %empty = zext i1 %0 to i7
  %empty_111 = zext i6 %1 to i7
  %empty_112 = shl i7 %empty, 6
  %empty_113 = or i7 %empty_112, %empty_111
  ret i7 %empty_113
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63, i1) nounwind readnone {
entry:
  %empty = zext i63 %0 to i64
  %empty_114 = zext i1 %1 to i64
  %empty_115 = shl i64 %empty, 1
  %empty_116 = or i64 %empty_115, %empty_114
  ret i64 %empty_116
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62, i2) nounwind readnone {
entry:
  %empty = zext i62 %0 to i64
  %empty_117 = zext i2 %1 to i64
  %empty_118 = shl i64 %empty, 2
  %empty_119 = or i64 %empty_118, %empty_117
  ret i64 %empty_119
}

declare i64 @_ssdm_op_BitConcatenate.i64.i60.i4(i60, i4) nounwind readnone

define weak i64 @_ssdm_op_BitConcatenate.i64.i39.i25(i39, i25) nounwind readnone {
entry:
  %empty = zext i39 %0 to i64
  %empty_120 = zext i25 %1 to i64
  %empty_121 = shl i64 %empty, 25
  %empty_122 = or i64 %empty_121, %empty_120
  ret i64 %empty_122
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i38.i26(i38, i26) nounwind readnone {
entry:
  %empty = zext i38 %0 to i64
  %empty_123 = zext i26 %1 to i64
  %empty_124 = shl i64 %empty, 26
  %empty_125 = or i64 %empty_124, %empty_123
  ret i64 %empty_125
}

define weak i63 @_ssdm_op_BitConcatenate.i63.i62.i1(i62, i1) nounwind readnone {
entry:
  %empty = zext i62 %0 to i63
  %empty_126 = zext i1 %1 to i63
  %empty_127 = shl i63 %empty, 1
  %empty_128 = or i63 %empty_127, %empty_126
  ret i63 %empty_128
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7, i25) nounwind readnone {
entry:
  %empty = zext i7 %0 to i32
  %empty_129 = zext i25 %1 to i32
  %empty_130 = shl i32 %empty, 25
  %empty_131 = or i32 %empty_130, %empty_129
  ret i32 %empty_131
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6, i26) nounwind readnone {
entry:
  %empty = zext i6 %0 to i32
  %empty_132 = zext i26 %1 to i32
  %empty_133 = shl i32 %empty, 26
  %empty_134 = or i32 %empty_133, %empty_132
  ret i32 %empty_134
}

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i27.i5(i27, i5) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i26.i6(i26, i6) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone

define weak i26 @_ssdm_op_BitConcatenate.i26.i8.i8.i8.i2(i8, i8, i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %2 to i10
  %empty_135 = zext i2 %3 to i10
  %empty_136 = shl i10 %empty, 2
  %empty_137 = or i10 %empty_136, %empty_135
  %empty_138 = zext i8 %1 to i18
  %empty_139 = zext i10 %empty_137 to i18
  %empty_140 = shl i18 %empty_138, 10
  %empty_141 = or i18 %empty_140, %empty_139
  %empty_142 = zext i8 %0 to i26
  %empty_143 = zext i18 %empty_141 to i26
  %empty_144 = shl i26 %empty_142, 18
  %empty_145 = or i26 %empty_144, %empty_143
  ret i26 %empty_145
}

define weak i26 @_ssdm_op_BitConcatenate.i26.i6.i8.i8.i4(i6, i8, i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %2 to i12
  %empty_146 = zext i4 %3 to i12
  %empty_147 = shl i12 %empty, 4
  %empty_148 = or i12 %empty_147, %empty_146
  %empty_149 = zext i8 %1 to i20
  %empty_150 = zext i12 %empty_148 to i20
  %empty_151 = shl i20 %empty_149, 12
  %empty_152 = or i20 %empty_151, %empty_150
  %empty_153 = zext i6 %0 to i26
  %empty_154 = zext i20 %empty_152 to i26
  %empty_155 = shl i26 %empty_153, 20
  %empty_156 = or i26 %empty_155, %empty_154
  ret i26 %empty_156
}

define weak i26 @_ssdm_op_BitConcatenate.i26.i5.i8.i8.i5(i5, i8, i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %2 to i13
  %empty_157 = zext i5 %3 to i13
  %empty_158 = shl i13 %empty, 5
  %empty_159 = or i13 %empty_158, %empty_157
  %empty_160 = zext i8 %1 to i21
  %empty_161 = zext i13 %empty_159 to i21
  %empty_162 = shl i21 %empty_160, 13
  %empty_163 = or i21 %empty_162, %empty_161
  %empty_164 = zext i5 %0 to i26
  %empty_165 = zext i21 %empty_163 to i26
  %empty_166 = shl i26 %empty_164, 21
  %empty_167 = or i26 %empty_166, %empty_165
  ret i26 %empty_167
}

define weak i26 @_ssdm_op_BitConcatenate.i26.i3.i8.i8.i7(i3, i8, i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %2 to i15
  %empty_168 = zext i7 %3 to i15
  %empty_169 = shl i15 %empty, 7
  %empty_170 = or i15 %empty_169, %empty_168
  %empty_171 = zext i8 %1 to i23
  %empty_172 = zext i15 %empty_170 to i23
  %empty_173 = shl i23 %empty_171, 15
  %empty_174 = or i23 %empty_173, %empty_172
  %empty_175 = zext i3 %0 to i26
  %empty_176 = zext i23 %empty_174 to i26
  %empty_177 = shl i26 %empty_175, 23
  %empty_178 = or i26 %empty_177, %empty_176
  ret i26 %empty_178
}

define weak i26 @_ssdm_op_BitConcatenate.i26.i21.i1.i2.i1.i1(i21, i1, i2, i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %3 to i2
  %empty_179 = zext i1 %4 to i2
  %empty_180 = shl i2 %empty, 1
  %empty_181 = or i2 %empty_180, %empty_179
  %empty_182 = zext i2 %2 to i4
  %empty_183 = zext i2 %empty_181 to i4
  %empty_184 = shl i4 %empty_182, 2
  %empty_185 = or i4 %empty_184, %empty_183
  %empty_186 = zext i1 %1 to i5
  %empty_187 = zext i4 %empty_185 to i5
  %empty_188 = shl i5 %empty_186, 4
  %empty_189 = or i5 %empty_188, %empty_187
  %empty_190 = zext i21 %0 to i26
  %empty_191 = zext i5 %empty_189 to i26
  %empty_192 = shl i26 %empty_190, 5
  %empty_193 = or i26 %empty_192, %empty_191
  ret i26 %empty_193
}

define weak i26 @_ssdm_op_BitConcatenate.i26.i2.i8.i8.i8(i2, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_194 = zext i8 %3 to i16
  %empty_195 = shl i16 %empty, 8
  %empty_196 = or i16 %empty_195, %empty_194
  %empty_197 = zext i8 %1 to i24
  %empty_198 = zext i16 %empty_196 to i24
  %empty_199 = shl i24 %empty_197, 16
  %empty_200 = or i24 %empty_199, %empty_198
  %empty_201 = zext i2 %0 to i26
  %empty_202 = zext i24 %empty_200 to i26
  %empty_203 = shl i26 %empty_201, 24
  %empty_204 = or i26 %empty_203, %empty_202
  ret i26 %empty_204
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i7.i8.i8.i2(i7, i8, i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %2 to i10
  %empty_205 = zext i2 %3 to i10
  %empty_206 = shl i10 %empty, 2
  %empty_207 = or i10 %empty_206, %empty_205
  %empty_208 = zext i8 %1 to i18
  %empty_209 = zext i10 %empty_207 to i18
  %empty_210 = shl i18 %empty_208, 10
  %empty_211 = or i18 %empty_210, %empty_209
  %empty_212 = zext i7 %0 to i25
  %empty_213 = zext i18 %empty_211 to i25
  %empty_214 = shl i25 %empty_212, 18
  %empty_215 = or i25 %empty_214, %empty_213
  ret i25 %empty_215
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i6.i8.i8.i3(i6, i8, i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %2 to i11
  %empty_216 = zext i3 %3 to i11
  %empty_217 = shl i11 %empty, 3
  %empty_218 = or i11 %empty_217, %empty_216
  %empty_219 = zext i8 %1 to i19
  %empty_220 = zext i11 %empty_218 to i19
  %empty_221 = shl i19 %empty_219, 11
  %empty_222 = or i19 %empty_221, %empty_220
  %empty_223 = zext i6 %0 to i25
  %empty_224 = zext i19 %empty_222 to i25
  %empty_225 = shl i25 %empty_223, 19
  %empty_226 = or i25 %empty_225, %empty_224
  ret i25 %empty_226
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i4.i8.i8.i5(i4, i8, i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %2 to i13
  %empty_227 = zext i5 %3 to i13
  %empty_228 = shl i13 %empty, 5
  %empty_229 = or i13 %empty_228, %empty_227
  %empty_230 = zext i8 %1 to i21
  %empty_231 = zext i13 %empty_229 to i21
  %empty_232 = shl i21 %empty_230, 13
  %empty_233 = or i21 %empty_232, %empty_231
  %empty_234 = zext i4 %0 to i25
  %empty_235 = zext i21 %empty_233 to i25
  %empty_236 = shl i25 %empty_234, 21
  %empty_237 = or i25 %empty_236, %empty_235
  ret i25 %empty_237
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i3.i8.i8.i6(i3, i8, i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %2 to i14
  %empty_238 = zext i6 %3 to i14
  %empty_239 = shl i14 %empty, 6
  %empty_240 = or i14 %empty_239, %empty_238
  %empty_241 = zext i8 %1 to i22
  %empty_242 = zext i14 %empty_240 to i22
  %empty_243 = shl i22 %empty_241, 14
  %empty_244 = or i22 %empty_243, %empty_242
  %empty_245 = zext i3 %0 to i25
  %empty_246 = zext i22 %empty_244 to i25
  %empty_247 = shl i25 %empty_245, 22
  %empty_248 = or i25 %empty_247, %empty_246
  ret i25 %empty_248
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i1.i8.i8.i8(i1, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_249 = zext i8 %3 to i16
  %empty_250 = shl i16 %empty, 8
  %empty_251 = or i16 %empty_250, %empty_249
  %empty_252 = zext i8 %1 to i24
  %empty_253 = zext i16 %empty_251 to i24
  %empty_254 = shl i24 %empty_252, 16
  %empty_255 = or i24 %empty_254, %empty_253
  %empty_256 = zext i1 %0 to i25
  %empty_257 = zext i24 %empty_255 to i25
  %empty_258 = shl i25 %empty_256, 24
  %empty_259 = or i25 %empty_258, %empty_257
  ret i25 %empty_259
}

define internal fastcc void @_memcpy_char([32 x i8]* nocapture %dst, [32 x i8]* nocapture %src) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %dst, [1 x i8]* @p_str14, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str14, i32 -1, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14)
  %empty_260 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %src, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i6 [ 0, %0 ], [ %i_27, %2 ]
  %exitcond = icmp eq i6 %i, -32
  %empty_261 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32)
  %i_27 = add i6 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i6 %i to i64
  %src_addr = getelementptr [32 x i8]* %src, i64 0, i64 %tmp
  %src_load = load i8* %src_addr, align 1
  %dst_addr = getelementptr [32 x i8]* %dst, i64 0, i64 %tmp
  store i8 %src_load, i8* %dst_addr, align 1
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @_memcpy.1([19 x i64]* nocapture %dst, [19 x i64]* nocapture %src) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_28, %2 ]
  %exitcond = icmp eq i5 %i, -13
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 0)
  %i_28 = add i5 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i5 %i to i64
  %src_addr = getelementptr [19 x i64]* %src, i64 0, i64 %tmp
  %src_load = load i64* %src_addr, align 8
  %dst_addr = getelementptr [19 x i64]* %dst, i64 0, i64 %tmp
  store i64 %src_load, i64* %dst_addr, align 8
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @_memcpy([10 x i64]* nocapture %dst, [19 x i64]* nocapture %src) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_29, %2 ]
  %exitcond = icmp eq i4 %i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_29 = add i4 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i4 %i to i64
  %src_addr = getelementptr [19 x i64]* %src, i64 0, i64 %tmp
  %src_load = load i64* %src_addr, align 8
  %dst_addr = getelementptr [10 x i64]* %dst, i64 0, i64 %tmp
  store i64 %src_load, i64* %dst_addr, align 8
  br label %1

; <label>:3                                       ; preds = %1
  ret void
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
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 7, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"mypublic_in", metadata !77, metadata !"unsigned char", i32 0, i32 7}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 31, i32 1}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 7, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"secret_in", metadata !77, metadata !"unsigned char", i32 0, i32 7}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 7, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"basepoint_in", metadata !77, metadata !"unsigned char", i32 0, i32 7}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 7, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"mypublic_out", metadata !77, metadata !"unsigned char", i32 0, i32 7}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 7, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"secret_out", metadata !77, metadata !"unsigned char", i32 0, i32 7}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 7, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"basepoint_out", metadata !77, metadata !"unsigned char", i32 0, i32 7}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 31, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"return", metadata !103, metadata !"int", i32 0, i32 31}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 1, i32 0}
