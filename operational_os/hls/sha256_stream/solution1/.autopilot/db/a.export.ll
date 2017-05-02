; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_stream/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sha256_str = internal unnamed_addr constant [7 x i8] c"sha256\00"
@SHA256_sha256_k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1

define internal fastcc { i32, i32 } @update(i32 %SHA256_m_tot_len_read, i32 %SHA256_m_len_read, [128 x i8]* nocapture %SHA256_m_block, [8 x i32]* nocapture %SHA256_m_h, [64 x i8]* nocapture %message) {
  %SHA256_m_len_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %SHA256_m_len_read)
  %SHA256_m_tot_len_rea = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %SHA256_m_tot_len_read)
  %tmp_len = sub i32 64, %SHA256_m_len_read_1
  %tmp_1 = trunc i32 %tmp_len to i7
  %tmp = icmp ugt i32 %tmp_len, 64
  %rem_len = select i1 %tmp, i7 -64, i7 %tmp_1
  %tmp_3 = trunc i32 %SHA256_m_len_read_1 to i9
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i7 [ 0, %0 ], [ %i, %2 ]
  %exitcond_i = icmp eq i7 %i_i, %rem_len
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 64, i64 0)
  %i = add i7 %i_i, 1
  br i1 %exitcond_i, label %_memcpy.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i7 %i_i to i64
  %tmp_i_cast = zext i7 %i_i to i9
  %message_addr = getelementptr [64 x i8]* %message, i64 0, i64 %tmp_i
  %message_load = load i8* %message_addr, align 1
  %sum_i = add i9 %tmp_3, %tmp_i_cast
  %sum_i_cast = zext i9 %sum_i to i64
  %SHA256_m_block_addr = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %sum_i_cast
  store i8 %message_load, i8* %SHA256_m_block_addr, align 1
  br label %1

_memcpy.exit:                                     ; preds = %1
  %tmp_9 = icmp ugt i32 %SHA256_m_len_read_1, -65
  br i1 %tmp_9, label %3, label %4

; <label>:3                                       ; preds = %_memcpy.exit
  %tmp_8 = trunc i32 %SHA256_m_len_read_1 to i6
  br label %7

; <label>:4                                       ; preds = %_memcpy.exit
  %new_len = sub i7 -64, %rem_len
  %new_len_cast3 = zext i7 %new_len to i8
  %rem_len_1 = trunc i7 %new_len to i6
  call fastcc void @transform([8 x i32]* %SHA256_m_h, [128 x i8]* %SHA256_m_block, i2 1)
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i7.i32(i7 %new_len, i32 6)
  call fastcc void @transform.1([8 x i32]* %SHA256_m_h, [64 x i8]* %message, i7 %rem_len, i1 %tmp_11)
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1 %tmp_11, i6 0)
  %tmp_3_cast = zext i7 %tmp_2 to i8
  br label %5

; <label>:5                                       ; preds = %6, %4
  %i_i1 = phi i6 [ 0, %4 ], [ %i_1, %6 ]
  %exitcond_i2 = icmp eq i6 %i_i1, %rem_len_1
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 63, i64 0)
  %i_1 = add i6 %i_i1, 1
  br i1 %exitcond_i2, label %_memcpy.exit8, label %6

; <label>:6                                       ; preds = %5
  %tmp_i3 = zext i6 %i_i1 to i64
  %tmp_i3_cast = zext i6 %i_i1 to i7
  %tmp1 = add i7 %rem_len, %tmp_i3_cast
  %tmp1_cast = zext i7 %tmp1 to i8
  %sum3_i = add i8 %tmp1_cast, %tmp_3_cast
  %sum3_i_cast = zext i8 %sum3_i to i64
  %message_addr_1 = getelementptr [64 x i8]* %message, i64 0, i64 %sum3_i_cast
  %message_load_1 = load i8* %message_addr_1, align 1
  %SHA256_m_block_addr_1 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %tmp_i3
  store i8 %message_load_1, i8* %SHA256_m_block_addr_1, align 1
  br label %5

_memcpy.exit8:                                    ; preds = %5
  %tmp_4 = add i8 %new_len_cast3, 64
  %tmp_7 = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %tmp_4, i32 6, i32 7)
  %tmp_5 = call i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2 %tmp_7, i6 0)
  %tmp_5_cast = zext i8 %tmp_5 to i32
  %tmp_6 = add i32 %tmp_5_cast, %SHA256_m_tot_len_rea
  br label %7

; <label>:7                                       ; preds = %_memcpy.exit8, %3
  %SHA256_m_tot_len = phi i32 [ %SHA256_m_tot_len_rea, %3 ], [ %tmp_6, %_memcpy.exit8 ]
  %SHA256_m_len_write_a = phi i6 [ %tmp_8, %3 ], [ %rem_len_1, %_memcpy.exit8 ]
  %SHA256_m_len_write_a_1 = zext i6 %SHA256_m_len_write_a to i32
  %mrv = insertvalue { i32, i32 } undef, i32 %SHA256_m_tot_len, 0
  %mrv_1 = insertvalue { i32, i32 } %mrv, i32 %SHA256_m_len_write_a_1, 1
  ret { i32, i32 } %mrv_1
}

define internal fastcc void @transform.1([8 x i32]* nocapture %SHA256_m_h, [64 x i8]* nocapture %message, i7 %tmp_1, i1 %block_nb) {
  %block_nb_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %block_nb)
  %tmp_1_read = call i7 @_ssdm_op_Read.ap_auto.i7(i7 %tmp_1)
  %w = alloca [64 x i32], align 16
  %wv = alloca [8 x i32], align 16
  %wv_addr = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 7
  %wv_addr_1 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 4
  %wv_addr_2 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 5
  %wv_addr_3 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 6
  %wv_addr_4 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 0
  %wv_addr_5 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 1
  %wv_addr_6 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 2
  %wv_addr_7 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 3
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i1 [ false, %0 ], [ true, %.loopexit.loopexit ]
  %tmptmp = xor i1 %i, true
  %tmp = and i1 %block_nb_read, %tmptmp
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1, i64 0)
  br i1 %tmp, label %.preheader3.preheader, label %6

.preheader3.preheader:                            ; preds = %.loopexit
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader, %1
  %j = phi i5 [ %j_5, %1 ], [ 0, %.preheader3.preheader ]
  %exitcond1 = icmp eq i5 %j, -16
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %j_5 = add i5 %j, 1
  br i1 %exitcond1, label %.preheader13.preheader, label %1

.preheader13.preheader:                           ; preds = %.preheader3
  br label %.preheader13

; <label>:1                                       ; preds = %.preheader3
  %tmp_20 = trunc i5 %j to i4
  %tmp_8 = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %tmp_20, i2 0)
  %sub_block_0_sum = call i6 @_ssdm_op_BitConcatenate.i6.i4.i1.i1(i4 %tmp_20, i1 false, i1 %i)
  %sub_block_0_sum_cast = zext i6 %sub_block_0_sum to i7
  %p_sum1 = or i6 %tmp_8, 3
  %p_sum1_cast = zext i6 %p_sum1 to i7
  %sum = add i7 %tmp_1_read, %p_sum1_cast
  %sum_cast = zext i7 %sum to i64
  %message_addr = getelementptr [64 x i8]* %message, i64 0, i64 %sum_cast
  %message_load = load i8* %message_addr, align 1
  %p_sum3 = or i6 %sub_block_0_sum, 2
  %p_sum3_cast = zext i6 %p_sum3 to i7
  %sum2 = add i7 %tmp_1_read, %p_sum3_cast
  %sum2_cast = zext i7 %sum2 to i64
  %message_addr_1 = getelementptr [64 x i8]* %message, i64 0, i64 %sum2_cast
  %message_load_1 = load i8* %message_addr_1, align 1
  %p_sum5 = or i6 %tmp_8, 1
  %p_sum5_cast = zext i6 %p_sum5 to i7
  %sum4 = add i7 %tmp_1_read, %p_sum5_cast
  %sum4_cast = zext i7 %sum4 to i64
  %message_addr_2 = getelementptr [64 x i8]* %message, i64 0, i64 %sum4_cast
  %message_load_2 = load i8* %message_addr_2, align 1
  %sum6 = add i7 %tmp_1_read, %sub_block_0_sum_cast
  %sum6_cast = zext i7 %sum6 to i64
  %message_addr_3 = getelementptr [64 x i8]* %message, i64 0, i64 %sum6_cast
  %message_load_3 = load i8* %message_addr_3, align 1
  %tmp_2 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %message_load_3, i8 %message_load_2, i8 %message_load_1, i8 %message_load)
  %tmp_3 = zext i5 %j to i64
  %w_addr = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_3
  store i32 %tmp_2, i32* %w_addr, align 4
  br label %.preheader3

.preheader13:                                     ; preds = %.preheader13.preheader, %2
  %j_1 = phi i7 [ %j_6, %2 ], [ 16, %.preheader13.preheader ]
  %exitcond9 = icmp eq i7 %j_1, -64
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48)
  br i1 %exitcond9, label %.preheader12.preheader, label %2

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

; <label>:2                                       ; preds = %.preheader13
  %tmp_4 = add i7 -2, %j_1
  %tmp_5 = zext i7 %tmp_4 to i64
  %w_addr_1 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_5
  %w_load = load i32* %w_addr_1, align 4
  %tmp_6 = call i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32 %w_load, i32 17, i32 31)
  %tmp_23 = trunc i32 %w_load to i17
  %tmp_9 = call i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17 %tmp_23, i15 %tmp_6)
  %tmp_s = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %w_load, i32 19, i32 31)
  %tmp_36 = trunc i32 %w_load to i19
  %tmp_7 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19 %tmp_36, i13 %tmp_s)
  %tmp_10 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %w_load, i32 10, i32 31)
  %tmp_11 = zext i22 %tmp_10 to i32
  %tmp1 = xor i32 %tmp_11, %tmp_7
  %tmp_12 = xor i32 %tmp1, %tmp_9
  %tmp_13 = add i7 -7, %j_1
  %tmp_14 = zext i7 %tmp_13 to i64
  %w_addr_2 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_14
  %w_load_1 = load i32* %w_addr_2, align 4
  %tmp_15 = add i7 -15, %j_1
  %tmp_16 = zext i7 %tmp_15 to i64
  %w_addr_3 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_16
  %w_load_2 = load i32* %w_addr_3, align 4
  %tmp_17 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %w_load_2, i32 7, i32 31)
  %tmp_39 = trunc i32 %w_load_2 to i7
  %tmp_18 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_39, i25 %tmp_17)
  %tmp_19 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %w_load_2, i32 18, i32 31)
  %tmp_51 = trunc i32 %w_load_2 to i18
  %tmp_21 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_51, i14 %tmp_19)
  %tmp_22 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %w_load_2, i32 3, i32 31)
  %tmp_24 = zext i29 %tmp_22 to i32
  %tmp2 = xor i32 %tmp_24, %tmp_21
  %tmp_25 = xor i32 %tmp2, %tmp_18
  %tmp_26 = add i7 -16, %j_1
  %tmp_27 = zext i7 %tmp_26 to i64
  %w_addr_4 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_27
  %w_load_3 = load i32* %w_addr_4, align 4
  %tmp3 = add i32 %w_load_1, %w_load_3
  %tmp4 = add i32 %tmp_12, %tmp_25
  %tmp_28 = add i32 %tmp4, %tmp3
  %tmp_29 = zext i7 %j_1 to i64
  %w_addr_5 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_29
  store i32 %tmp_28, i32* %w_addr_5, align 4
  %j_6 = add i7 1, %j_1
  br label %.preheader13

.preheader12:                                     ; preds = %.preheader12.preheader, %3
  %j_2 = phi i4 [ %j_7, %3 ], [ 0, %.preheader12.preheader ]
  %exitcond8 = icmp eq i4 %j_2, -8
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_7 = add i4 %j_2, 1
  br i1 %exitcond8, label %.preheader11.preheader, label %3

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11

; <label>:3                                       ; preds = %.preheader12
  %tmp_30 = zext i4 %j_2 to i64
  %SHA256_m_h_addr = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_30
  %SHA256_m_h_load = load i32* %SHA256_m_h_addr, align 4
  %wv_addr_8 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp_30
  store i32 %SHA256_m_h_load, i32* %wv_addr_8, align 4
  br label %.preheader12

.preheader11:                                     ; preds = %.preheader11.preheader, %4
  %j_3 = phi i7 [ %j_8, %4 ], [ 0, %.preheader11.preheader ]
  %exitcond7 = icmp eq i7 %j_3, -64
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %j_8 = add i7 %j_3, 1
  br i1 %exitcond7, label %.preheader.preheader, label %4

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader

; <label>:4                                       ; preds = %.preheader11
  %wv_load = load i32* %wv_addr, align 4
  %wv_load_1 = load i32* %wv_addr_1, align 16
  %tmp_31 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %wv_load_1, i32 6, i32 31)
  %tmp_54 = trunc i32 %wv_load_1 to i6
  %tmp_32 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_54, i26 %tmp_31)
  %tmp_33 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %wv_load_1, i32 11, i32 31)
  %tmp_64 = trunc i32 %wv_load_1 to i11
  %tmp_34 = call i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11 %tmp_64, i21 %tmp_33)
  %tmp_35 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %wv_load_1, i32 25, i32 31)
  %tmp_65 = trunc i32 %wv_load_1 to i25
  %tmp_37 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 %tmp_65, i7 %tmp_35)
  %tmp5 = xor i32 %tmp_37, %tmp_34
  %tmp_38 = xor i32 %tmp5, %tmp_32
  %wv_load_2 = load i32* %wv_addr_2, align 4
  %tmp_40 = and i32 %wv_load_2, %wv_load_1
  %tmp_41 = xor i32 %wv_load_1, -1
  %wv_load_3 = load i32* %wv_addr_3, align 8
  %tmp_42 = and i32 %wv_load_3, %tmp_41
  %tmp_43 = xor i32 %tmp_42, %tmp_40
  %tmp_44 = zext i7 %j_3 to i64
  %SHA256_sha256_k_add = getelementptr inbounds [64 x i32]* @SHA256_sha256_k, i64 0, i64 %tmp_44
  %SHA256_sha256_k_loa = load i32* %SHA256_sha256_k_add, align 4
  %w_addr_6 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_44
  %w_load_4 = load i32* %w_addr_6, align 4
  %tmp8 = add i32 %SHA256_sha256_k_loa, %wv_load
  %tmp10 = add i32 %tmp_38, %tmp_43
  %tmp9 = add i32 %tmp10, %w_load_4
  %t1 = add i32 %tmp9, %tmp8
  %wv_load_4 = load i32* %wv_addr_4, align 16
  %tmp_45 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %wv_load_4, i32 2, i32 31)
  %tmp_66 = trunc i32 %wv_load_4 to i2
  %tmp_46 = call i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2 %tmp_66, i30 %tmp_45)
  %tmp_47 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %wv_load_4, i32 13, i32 31)
  %tmp_67 = trunc i32 %wv_load_4 to i13
  %tmp_48 = call i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13 %tmp_67, i19 %tmp_47)
  %tmp_49 = call i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32 %wv_load_4, i32 22, i32 31)
  %tmp_68 = trunc i32 %wv_load_4 to i22
  %tmp_50 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 %tmp_68, i10 %tmp_49)
  %tmp11 = xor i32 %tmp_50, %tmp_48
  %tmp_52 = xor i32 %tmp11, %tmp_46
  %wv_load_5 = load i32* %wv_addr_5, align 4
  %wv_load_6 = load i32* %wv_addr_6, align 8
  %tmp_53 = and i32 %wv_load_6, %wv_load_5
  %tmp_55 = xor i32 %wv_load_6, %wv_load_5
  %tmp_56 = and i32 %wv_load_4, %tmp_55
  %tmp_57 = xor i32 %tmp_56, %tmp_53
  store i32 %wv_load_3, i32* %wv_addr, align 4
  store i32 %wv_load_2, i32* %wv_addr_3, align 8
  store i32 %wv_load_1, i32* %wv_addr_2, align 4
  %wv_load_7 = load i32* %wv_addr_7, align 4
  %tmp_58 = add i32 %wv_load_7, %t1
  store i32 %tmp_58, i32* %wv_addr_1, align 16
  store i32 %wv_load_6, i32* %wv_addr_7, align 4
  store i32 %wv_load_5, i32* %wv_addr_6, align 8
  store i32 %wv_load_4, i32* %wv_addr_5, align 4
  %tmp12 = add i32 %tmp_52, %tmp_57
  %tmp_59 = add i32 %tmp12, %t1
  store i32 %tmp_59, i32* %wv_addr_4, align 16
  br label %.preheader11

.preheader:                                       ; preds = %.preheader.preheader, %5
  %j_4 = phi i4 [ %j_9, %5 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i4 %j_4, -8
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_9 = add i4 %j_4, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %5

; <label>:5                                       ; preds = %.preheader
  %tmp_60 = zext i4 %j_4 to i64
  %wv_addr_9 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp_60
  %wv_load_8 = load i32* %wv_addr_9, align 4
  %SHA256_m_h_addr_1 = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_60
  %SHA256_m_h_load_1 = load i32* %SHA256_m_h_addr_1, align 4
  %tmp_61 = add i32 %wv_load_8, %SHA256_m_h_load_1
  store i32 %tmp_61, i32* %SHA256_m_h_addr_1, align 4
  br label %.preheader

; <label>:6                                       ; preds = %.loopexit
  ret void
}

define internal fastcc void @transform([8 x i32]* nocapture %SHA256_m_h, [128 x i8]* nocapture %message, i2 %block_nb) {
  %block_nb_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %block_nb)
  %w = alloca [64 x i32], align 16
  %wv = alloca [8 x i32], align 16
  %wv_addr = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 7
  %wv_addr_1 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 4
  %wv_addr_2 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 5
  %wv_addr_3 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 6
  %wv_addr_4 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 0
  %wv_addr_5 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 1
  %wv_addr_6 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 2
  %wv_addr_7 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 3
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i2 [ 0, %0 ], [ %i_2, %.loopexit.loopexit ]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 0)
  %exitcond2 = icmp eq i2 %i, %block_nb_read
  %i_2 = add i2 %i, 1
  br i1 %exitcond2, label %6, label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.loopexit
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %1
  %j = phi i5 [ %j_5, %1 ], [ 0, %.preheader2.preheader ]
  %exitcond1 = icmp eq i5 %j, -16
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %j_5 = add i5 %j, 1
  br i1 %exitcond1, label %.preheader13.preheader, label %1

.preheader13.preheader:                           ; preds = %.preheader2
  br label %.preheader13

; <label>:1                                       ; preds = %.preheader2
  %tmp = trunc i5 %j to i4
  %tmp_71 = trunc i2 %i to i1
  %sub_block_0_sum = call i7 @_ssdm_op_BitConcatenate.i7.i1.i4.i2(i1 %tmp_71, i4 %tmp, i2 0)
  %sub_block_0_sum_cast = zext i7 %sub_block_0_sum to i64
  %p_sum1 = or i7 %sub_block_0_sum, 3
  %p_sum1_cast = zext i7 %p_sum1 to i64
  %message_addr = getelementptr [128 x i8]* %message, i64 0, i64 %p_sum1_cast
  %message_load = load i8* %message_addr, align 1
  %p_sum3 = or i7 %sub_block_0_sum, 2
  %p_sum3_cast = zext i7 %p_sum3 to i64
  %message_addr_4 = getelementptr [128 x i8]* %message, i64 0, i64 %p_sum3_cast
  %message_load_1 = load i8* %message_addr_4, align 1
  %p_sum5 = or i7 %sub_block_0_sum, 1
  %p_sum5_cast = zext i7 %p_sum5 to i64
  %message_addr_5 = getelementptr [128 x i8]* %message, i64 0, i64 %p_sum5_cast
  %message_load_2 = load i8* %message_addr_5, align 1
  %message_addr_6 = getelementptr [128 x i8]* %message, i64 0, i64 %sub_block_0_sum_cast
  %message_load_3 = load i8* %message_addr_6, align 1
  %tmp_19 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %message_load_3, i8 %message_load_2, i8 %message_load_1, i8 %message_load)
  %tmp_20 = zext i5 %j to i64
  %w_addr = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_20
  store i32 %tmp_19, i32* %w_addr, align 4
  br label %.preheader2

.preheader13:                                     ; preds = %.preheader13.preheader, %2
  %j_1 = phi i7 [ %j_6, %2 ], [ 16, %.preheader13.preheader ]
  %exitcond9 = icmp eq i7 %j_1, -64
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48)
  br i1 %exitcond9, label %.preheader12.preheader, label %2

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

; <label>:2                                       ; preds = %.preheader13
  %tmp_21 = add i7 -2, %j_1
  %tmp_22 = zext i7 %tmp_21 to i64
  %w_addr_1 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_22
  %w_load = load i32* %w_addr_1, align 4
  %tmp_23 = call i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32 %w_load, i32 17, i32 31)
  %tmp_74 = trunc i32 %w_load to i17
  %tmp_25 = call i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17 %tmp_74, i15 %tmp_23)
  %tmp_26 = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %w_load, i32 19, i32 31)
  %tmp_84 = trunc i32 %w_load to i19
  %tmp_28 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19 %tmp_84, i13 %tmp_26)
  %tmp_29 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %w_load, i32 10, i32 31)
  %tmp_85 = zext i22 %tmp_29 to i32
  %tmp1 = xor i32 %tmp_85, %tmp_28
  %tmp_31 = xor i32 %tmp1, %tmp_25
  %tmp_32 = add i7 -7, %j_1
  %tmp_33 = zext i7 %tmp_32 to i64
  %w_addr_2 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_33
  %w_load_1 = load i32* %w_addr_2, align 4
  %tmp_34 = add i7 -15, %j_1
  %tmp_35 = zext i7 %tmp_34 to i64
  %w_addr_3 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_35
  %w_load_2 = load i32* %w_addr_3, align 4
  %tmp_36 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %w_load_2, i32 7, i32 31)
  %tmp_86 = trunc i32 %w_load_2 to i7
  %tmp_38 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_86, i25 %tmp_36)
  %tmp_39 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %w_load_2, i32 18, i32 31)
  %tmp_87 = trunc i32 %w_load_2 to i18
  %tmp_41 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_87, i14 %tmp_39)
  %tmp_42 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %w_load_2, i32 3, i32 31)
  %tmp_88 = zext i29 %tmp_42 to i32
  %tmp2 = xor i32 %tmp_88, %tmp_41
  %tmp_44 = xor i32 %tmp2, %tmp_38
  %tmp_45 = add i7 -16, %j_1
  %tmp_46 = zext i7 %tmp_45 to i64
  %w_addr_4 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_46
  %w_load_3 = load i32* %w_addr_4, align 4
  %tmp3 = add i32 %w_load_1, %w_load_3
  %tmp4 = add i32 %tmp_31, %tmp_44
  %tmp_49 = add i32 %tmp4, %tmp3
  %tmp_50 = zext i7 %j_1 to i64
  %w_addr_5 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_50
  store i32 %tmp_49, i32* %w_addr_5, align 4
  %j_6 = add i7 1, %j_1
  br label %.preheader13

.preheader12:                                     ; preds = %.preheader12.preheader, %3
  %j_2 = phi i4 [ %j_7, %3 ], [ 0, %.preheader12.preheader ]
  %exitcond8 = icmp eq i4 %j_2, -8
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_7 = add i4 %j_2, 1
  br i1 %exitcond8, label %.preheader11.preheader, label %3

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11

; <label>:3                                       ; preds = %.preheader12
  %tmp_51 = zext i4 %j_2 to i64
  %SHA256_m_h_addr = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_51
  %SHA256_m_h_load = load i32* %SHA256_m_h_addr, align 4
  %wv_addr_8 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp_51
  store i32 %SHA256_m_h_load, i32* %wv_addr_8, align 4
  br label %.preheader12

.preheader11:                                     ; preds = %.preheader11.preheader, %4
  %j_3 = phi i7 [ %j_8, %4 ], [ 0, %.preheader11.preheader ]
  %exitcond7 = icmp eq i7 %j_3, -64
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %j_8 = add i7 %j_3, 1
  br i1 %exitcond7, label %.preheader.preheader, label %4

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader

; <label>:4                                       ; preds = %.preheader11
  %wv_load = load i32* %wv_addr, align 4
  %wv_load_1 = load i32* %wv_addr_1, align 16
  %tmp_52 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %wv_load_1, i32 6, i32 31)
  %tmp_89 = trunc i32 %wv_load_1 to i6
  %tmp_54 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_89, i26 %tmp_52)
  %tmp_55 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %wv_load_1, i32 11, i32 31)
  %tmp_90 = trunc i32 %wv_load_1 to i11
  %tmp_57 = call i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11 %tmp_90, i21 %tmp_55)
  %tmp_58 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %wv_load_1, i32 25, i32 31)
  %tmp_91 = trunc i32 %wv_load_1 to i25
  %tmp_60 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 %tmp_91, i7 %tmp_58)
  %tmp5 = xor i32 %tmp_60, %tmp_57
  %tmp_62 = xor i32 %tmp5, %tmp_54
  %wv_load_2 = load i32* %wv_addr_2, align 4
  %tmp_63 = and i32 %wv_load_2, %wv_load_1
  %tmp_64 = xor i32 %wv_load_1, -1
  %wv_load_3 = load i32* %wv_addr_3, align 8
  %tmp_s = and i32 %wv_load_3, %tmp_64
  %tmp_65 = xor i32 %tmp_s, %tmp_63
  %tmp_66 = zext i7 %j_3 to i64
  %SHA256_sha256_k_add = getelementptr inbounds [64 x i32]* @SHA256_sha256_k, i64 0, i64 %tmp_66
  %SHA256_sha256_k_loa = load i32* %SHA256_sha256_k_add, align 4
  %w_addr_6 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_66
  %w_load_4 = load i32* %w_addr_6, align 4
  %tmp8 = add i32 %SHA256_sha256_k_loa, %wv_load
  %tmp10 = add i32 %tmp_62, %tmp_65
  %tmp9 = add i32 %tmp10, %w_load_4
  %t1 = add i32 %tmp9, %tmp8
  %wv_load_4 = load i32* %wv_addr_4, align 16
  %tmp_67 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %wv_load_4, i32 2, i32 31)
  %tmp_92 = trunc i32 %wv_load_4 to i2
  %tmp_68 = call i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2 %tmp_92, i30 %tmp_67)
  %tmp_69 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %wv_load_4, i32 13, i32 31)
  %tmp_93 = trunc i32 %wv_load_4 to i13
  %tmp_70 = call i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13 %tmp_93, i19 %tmp_69)
  %tmp_72 = call i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32 %wv_load_4, i32 22, i32 31)
  %tmp_94 = trunc i32 %wv_load_4 to i22
  %tmp_73 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 %tmp_94, i10 %tmp_72)
  %tmp11 = xor i32 %tmp_73, %tmp_70
  %tmp_75 = xor i32 %tmp11, %tmp_68
  %wv_load_5 = load i32* %wv_addr_5, align 4
  %wv_load_6 = load i32* %wv_addr_6, align 8
  %tmp_76 = and i32 %wv_load_6, %wv_load_5
  %tmp_77 = xor i32 %wv_load_6, %wv_load_5
  %tmp_78 = and i32 %wv_load_4, %tmp_77
  %tmp_79 = xor i32 %tmp_78, %tmp_76
  store i32 %wv_load_3, i32* %wv_addr, align 4
  store i32 %wv_load_2, i32* %wv_addr_3, align 8
  store i32 %wv_load_1, i32* %wv_addr_2, align 4
  %wv_load_7 = load i32* %wv_addr_7, align 4
  %tmp_80 = add i32 %wv_load_7, %t1
  store i32 %tmp_80, i32* %wv_addr_1, align 16
  store i32 %wv_load_6, i32* %wv_addr_7, align 4
  store i32 %wv_load_5, i32* %wv_addr_6, align 8
  store i32 %wv_load_4, i32* %wv_addr_5, align 4
  %tmp12 = add i32 %tmp_75, %tmp_79
  %tmp_81 = add i32 %tmp12, %t1
  store i32 %tmp_81, i32* %wv_addr_4, align 16
  br label %.preheader11

.preheader:                                       ; preds = %.preheader.preheader, %5
  %j_4 = phi i4 [ %j_9, %5 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i4 %j_4, -8
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_9 = add i4 %j_4, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %5

; <label>:5                                       ; preds = %.preheader
  %tmp_82 = zext i4 %j_4 to i64
  %wv_addr_9 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp_82
  %wv_load_8 = load i32* %wv_addr_9, align 4
  %SHA256_m_h_addr_1 = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_82
  %SHA256_m_h_load_1 = load i32* %SHA256_m_h_addr_1, align 4
  %tmp_83 = add i32 %wv_load_8, %SHA256_m_h_load_1
  store i32 %tmp_83, i32* %SHA256_m_h_addr_1, align 4
  br label %.preheader

; <label>:6                                       ; preds = %.loopexit
  ret void
}

define void @sha256(i8* %stream_in_V, i32 %num_blocks, [32 x i8]* %digest_out) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_in_V), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_blocks), !map !42
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %digest_out), !map !48
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @sha256_str) nounwind
  %num_blocks_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %num_blocks)
  %data_buffer = alloca [64 x i8], align 16
  %cipher_m_block = alloca [128 x i8], align 1
  %cipher_m_h = alloca [8 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, [7 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %digest_out, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %digest_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %stream_in_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %cipher_m_h_addr = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 0
  store i32 1779033703, i32* %cipher_m_h_addr, align 4
  %cipher_m_h_addr_1 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 1
  store i32 -1150833019, i32* %cipher_m_h_addr_1, align 4
  %cipher_m_h_addr_2 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 2
  store i32 1013904242, i32* %cipher_m_h_addr_2, align 4
  %cipher_m_h_addr_3 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 3
  store i32 -1521486534, i32* %cipher_m_h_addr_3, align 4
  %cipher_m_h_addr_4 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 4
  store i32 1359893119, i32* %cipher_m_h_addr_4, align 4
  %cipher_m_h_addr_5 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 5
  store i32 -1694144372, i32* %cipher_m_h_addr_5, align 4
  %cipher_m_h_addr_6 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 6
  store i32 528734635, i32* %cipher_m_h_addr_6, align 4
  %cipher_m_h_addr_7 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 7
  store i32 1541459225, i32* %cipher_m_h_addr_7, align 4
  br label %1

; <label>:1                                       ; preds = %3, %0
  %cipher_m_len = phi i32 [ 0, %0 ], [ %cipher_m_len_1, %3 ]
  %cipher_m_tot_len = phi i32 [ 0, %0 ], [ %cipher_m_tot_len_1, %3 ]
  %block_counter = phi i31 [ 0, %0 ], [ %block_counter_1, %3 ]
  %block_counter_cast = zext i31 %block_counter to i32
  %tmp = icmp slt i32 %block_counter_cast, %num_blocks_read
  %block_counter_1 = add i31 %block_counter, 1
  br i1 %tmp, label %.preheader.preheader, label %4

.preheader.preheader:                             ; preds = %1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %2
  %data_index = phi i7 [ %data_index_1, %2 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i7 %data_index, -64
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %data_index_1 = add i7 %data_index, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_95 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %stream_in_V)
  %tmp_3 = zext i7 %data_index to i64
  %data_buffer_addr = getelementptr inbounds [64 x i8]* %data_buffer, i64 0, i64 %tmp_3
  store i8 %tmp_95, i8* %data_buffer_addr, align 1
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %call_ret = call fastcc { i32, i32 } @update(i32 %cipher_m_tot_len, i32 %cipher_m_len, [128 x i8]* %cipher_m_block, [8 x i32]* %cipher_m_h, [64 x i8]* %data_buffer)
  %cipher_m_tot_len_1 = extractvalue { i32, i32 } %call_ret, 0
  %cipher_m_len_1 = extractvalue { i32, i32 } %call_ret, 1
  br label %1

; <label>:4                                       ; preds = %1
  call fastcc void @final(i32 %cipher_m_tot_len, i32 %cipher_m_len, [128 x i8]* %cipher_m_block, [8 x i32]* %cipher_m_h, [32 x i8]* %digest_out)
  ret void
}

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @final(i32 %SHA256_m_tot_len_read, i32 %SHA256_m_len_read, [128 x i8]* nocapture %SHA256_m_block, [8 x i32]* nocapture %SHA256_m_h, [32 x i8]* nocapture %digest) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %digest, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5)
  %SHA256_m_len_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %SHA256_m_len_read)
  %SHA256_m_tot_len_rea = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %SHA256_m_tot_len_read)
  %tmp = trunc i32 %SHA256_m_len_read_2 to i6
  %tmp_s = icmp ugt i6 %tmp, -9
  %block_nb = select i1 %tmp_s, i2 -2, i2 1
  %tmp_99 = trunc i32 %SHA256_m_len_read_2 to i29
  %tmp_100 = trunc i32 %SHA256_m_tot_len_rea to i29
  %tmp_101 = trunc i32 %SHA256_m_tot_len_rea to i13
  %tmp_102 = trunc i32 %SHA256_m_len_read_2 to i13
  %tmp_103 = trunc i32 %SHA256_m_tot_len_rea to i21
  %tmp_104 = trunc i32 %SHA256_m_len_read_2 to i21
  %tmp_84 = add i29 %tmp_99, %tmp_100
  %tmp_90_cast3 = add i21 %tmp_103, %tmp_104
  %tmp_90_cast = add i13 %tmp_101, %tmp_102
  %tmp_105 = trunc i32 %SHA256_m_len_read_2 to i5
  %tmp_106 = trunc i32 %SHA256_m_tot_len_rea to i5
  %pm_len_cast_cast = select i1 %tmp_s, i32 128, i32 64
  %tmp_85 = zext i32 %SHA256_m_len_read_2 to i64
  %tmp_107 = trunc i32 %SHA256_m_len_read_2 to i9
  %length_assign = sub i32 %pm_len_cast_cast, %SHA256_m_len_read_2
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i32 [ 0, %0 ], [ %i_3, %2 ]
  %exitcond_i = icmp eq i32 %i_i, %length_assign
  %i_3 = add nsw i32 %i_i, 1
  br i1 %exitcond_i, label %_memset.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_108 = trunc i32 %i_i to i9
  %sum_i = add i9 %tmp_108, %tmp_107
  %sum_i_cast = sext i9 %sum_i to i64
  %SHA256_m_block_addr_5 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %sum_i_cast
  store i8 0, i8* %SHA256_m_block_addr_5, align 1
  br label %1

_memset.exit:                                     ; preds = %1
  %SHA256_m_block_addr = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %tmp_85
  store i8 -128, i8* %SHA256_m_block_addr, align 1
  %tmp_86 = add i5 %tmp_106, %tmp_105
  %tmp_87 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_86, i3 0)
  %p_sum1_cast_cast = select i1 %tmp_s, i64 127, i64 63
  %SHA256_m_block_addr_1 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %p_sum1_cast_cast
  store i8 %tmp_87, i8* %SHA256_m_block_addr_1, align 1
  %tmp_88 = call i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13 %tmp_90_cast, i32 5, i32 12)
  %p_sum3_cast_cast = select i1 %tmp_s, i64 126, i64 62
  %SHA256_m_block_addr_2 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %p_sum3_cast_cast
  store i8 %tmp_88, i8* %SHA256_m_block_addr_2, align 1
  %tmp_89 = call i8 @_ssdm_op_PartSelect.i8.i21.i32.i32(i21 %tmp_90_cast3, i32 13, i32 20)
  %p_sum5_cast_cast = select i1 %tmp_s, i64 125, i64 61
  %SHA256_m_block_addr_3 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %p_sum5_cast_cast
  store i8 %tmp_89, i8* %SHA256_m_block_addr_3, align 1
  %tmp_90 = call i8 @_ssdm_op_PartSelect.i8.i29.i32.i32(i29 %tmp_84, i32 21, i32 28)
  %p_sum6_cast_cast = select i1 %tmp_s, i64 124, i64 60
  %SHA256_m_block_addr_4 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %p_sum6_cast_cast
  store i8 %tmp_90, i8* %SHA256_m_block_addr_4, align 1
  call fastcc void @transform([8 x i32]* %SHA256_m_h, [128 x i8]* %SHA256_m_block, i2 %block_nb)
  br label %3

; <label>:3                                       ; preds = %4, %_memset.exit
  %i = phi i4 [ 0, %_memset.exit ], [ %i_4, %4 ]
  %exitcond = icmp eq i4 %i, -8
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_4 = add i4 %i, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %tmp_91 = zext i4 %i to i64
  %SHA256_m_h_addr = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_91
  %SHA256_m_h_load = load i32* %SHA256_m_h_addr, align 4
  %tmp_109 = trunc i32 %SHA256_m_h_load to i8
  %tmp_110 = trunc i4 %i to i3
  %tmp_92 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_110, i2 0)
  %tmp_93 = zext i5 %tmp_92 to i64
  %p_sum = or i5 %tmp_92, 3
  %p_sum_cast = zext i5 %p_sum to i64
  %digest_addr = getelementptr [32 x i8]* %digest, i64 0, i64 %p_sum_cast
  store i8 %tmp_109, i8* %digest_addr, align 1
  %tmp_94 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %SHA256_m_h_load, i32 8, i32 15)
  %p_sum2 = or i5 %tmp_92, 2
  %p_sum2_cast = zext i5 %p_sum2 to i64
  %digest_addr_1 = getelementptr [32 x i8]* %digest, i64 0, i64 %p_sum2_cast
  store i8 %tmp_94, i8* %digest_addr_1, align 1
  %tmp_95 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %SHA256_m_h_load, i32 16, i32 23)
  %p_sum4 = or i5 %tmp_92, 1
  %p_sum4_cast = zext i5 %p_sum4 to i64
  %digest_addr_2 = getelementptr [32 x i8]* %digest, i64 0, i64 %p_sum4_cast
  store i8 %tmp_95, i8* %digest_addr_2, align 1
  %tmp_96 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %SHA256_m_h_load, i32 24, i32 31)
  %digest_addr_3 = getelementptr [32 x i8]* %digest, i64 0, i64 %tmp_93
  store i8 %tmp_96, i8* %digest_addr_3, align 1
  br label %3

; <label>:5                                       ; preds = %3
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

define weak i7 @_ssdm_op_Read.ap_auto.i7(i7) {
entry:
  ret i7 %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i2 @_ssdm_op_Read.ap_auto.i2(i2) {
entry:
  ret i2 %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_26 = trunc i32 %empty to i8
  ret i8 %empty_26
}

define weak i8 @_ssdm_op_PartSelect.i8.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_27 = trunc i29 %empty to i8
  ret i8 %empty_27
}

define weak i8 @_ssdm_op_PartSelect.i8.i21.i32.i32(i21, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.select.i21(i21 %0, i32 %1, i32 %2)
  %empty_28 = trunc i21 %empty to i8
  ret i8 %empty_28
}

define weak i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_29 = trunc i13 %empty to i8
  ret i8 %empty_29
}

define weak i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_30 = trunc i32 %empty to i7
  ret i7 %empty_30
}

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_31 = trunc i32 %empty to i30
  ret i30 %empty_31
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_32 = trunc i32 %empty to i29
  ret i29 %empty_32
}

define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_33 = trunc i32 %empty to i26
  ret i26 %empty_33
}

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_34 = trunc i32 %empty to i25
  ret i25 %empty_34
}

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_35 = trunc i32 %empty to i22
  ret i22 %empty_35
}

define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_36 = trunc i32 %empty to i21
  ret i21 %empty_36
}

define weak i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_37 = trunc i8 %empty to i2
  ret i2 %empty_37
}

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_38 = trunc i32 %empty to i19
  ret i19 %empty_38
}

declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_39 = trunc i32 %empty to i15
  ret i15 %empty_39
}

define weak i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_40 = trunc i32 %empty to i14
  ret i14 %empty_40
}

define weak i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_41 = trunc i32 %empty to i13
  ret i13 %empty_41
}

declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_42 = trunc i32 %empty to i10
  ret i10 %empty_42
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7
  %empty_43 = shl i7 1, %empty
  %empty_44 = and i7 %0, %empty_43
  %empty_45 = icmp ne i7 %empty_44, 0
  ret i1 %empty_45
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8
  %empty_46 = zext i3 %1 to i8
  %empty_47 = shl i8 %empty, 3
  %empty_48 = or i8 %empty_47, %empty_46
  ret i8 %empty_48
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2, i6) nounwind readnone {
entry:
  %empty = zext i2 %0 to i8
  %empty_49 = zext i6 %1 to i8
  %empty_50 = shl i8 %empty, 6
  %empty_51 = or i8 %empty_50, %empty_49
  ret i8 %empty_51
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1, i6) nounwind readnone {
entry:
  %empty = zext i1 %0 to i7
  %empty_52 = zext i6 %1 to i7
  %empty_53 = shl i7 %empty, 6
  %empty_54 = or i7 %empty_53, %empty_52
  ret i7 %empty_54
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i1.i4.i2(i1, i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %1 to i6
  %empty_55 = zext i2 %2 to i6
  %empty_56 = shl i6 %empty, 2
  %empty_57 = or i6 %empty_56, %empty_55
  %empty_58 = zext i1 %0 to i7
  %empty_59 = zext i6 %empty_57 to i7
  %empty_60 = shl i7 %empty_58, 6
  %empty_61 = or i7 %empty_60, %empty_59
  ret i7 %empty_61
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6
  %empty_62 = zext i2 %1 to i6
  %empty_63 = shl i6 %empty, 2
  %empty_64 = or i6 %empty_63, %empty_62
  ret i6 %empty_64
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i1.i1(i4, i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %1 to i2
  %empty_65 = zext i1 %2 to i2
  %empty_66 = shl i2 %empty, 1
  %empty_67 = or i2 %empty_66, %empty_65
  %empty_68 = zext i4 %0 to i6
  %empty_69 = zext i2 %empty_67 to i6
  %empty_70 = shl i6 %empty_68, 2
  %empty_71 = or i6 %empty_70, %empty_69
  ret i6 %empty_71
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_72 = zext i2 %1 to i5
  %empty_73 = shl i5 %empty, 2
  %empty_74 = or i5 %empty_73, %empty_72
  ret i5 %empty_74
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_75 = zext i8 %3 to i16
  %empty_76 = shl i16 %empty, 8
  %empty_77 = or i16 %empty_76, %empty_75
  %empty_78 = zext i8 %1 to i24
  %empty_79 = zext i16 %empty_77 to i24
  %empty_80 = shl i24 %empty_78, 16
  %empty_81 = or i24 %empty_80, %empty_79
  %empty_82 = zext i8 %0 to i32
  %empty_83 = zext i24 %empty_81 to i32
  %empty_84 = shl i32 %empty_82, 24
  %empty_85 = or i32 %empty_84, %empty_83
  ret i32 %empty_85
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7, i25) nounwind readnone {
entry:
  %empty = zext i7 %0 to i32
  %empty_86 = zext i25 %1 to i32
  %empty_87 = shl i32 %empty, 25
  %empty_88 = or i32 %empty_87, %empty_86
  ret i32 %empty_88
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6, i26) nounwind readnone {
entry:
  %empty = zext i6 %0 to i32
  %empty_89 = zext i26 %1 to i32
  %empty_90 = shl i32 %empty, 26
  %empty_91 = or i32 %empty_90, %empty_89
  ret i32 %empty_91
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32
  %empty_92 = zext i7 %1 to i32
  %empty_93 = shl i32 %empty, 7
  %empty_94 = or i32 %empty_93, %empty_92
  ret i32 %empty_94
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone {
entry:
  %empty = zext i22 %0 to i32
  %empty_95 = zext i10 %1 to i32
  %empty_96 = shl i32 %empty, 10
  %empty_97 = or i32 %empty_96, %empty_95
  ret i32 %empty_97
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2, i30) nounwind readnone {
entry:
  %empty = zext i2 %0 to i32
  %empty_98 = zext i30 %1 to i32
  %empty_99 = shl i32 %empty, 30
  %empty_100 = or i32 %empty_99, %empty_98
  ret i32 %empty_100
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19, i13) nounwind readnone {
entry:
  %empty = zext i19 %0 to i32
  %empty_101 = zext i13 %1 to i32
  %empty_102 = shl i32 %empty, 13
  %empty_103 = or i32 %empty_102, %empty_101
  ret i32 %empty_103
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18, i14) nounwind readnone {
entry:
  %empty = zext i18 %0 to i32
  %empty_104 = zext i14 %1 to i32
  %empty_105 = shl i32 %empty, 14
  %empty_106 = or i32 %empty_105, %empty_104
  ret i32 %empty_106
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17, i15) nounwind readnone {
entry:
  %empty = zext i17 %0 to i32
  %empty_107 = zext i15 %1 to i32
  %empty_108 = shl i32 %empty, 15
  %empty_109 = or i32 %empty_108, %empty_107
  ret i32 %empty_109
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13, i19) nounwind readnone {
entry:
  %empty = zext i13 %0 to i32
  %empty_110 = zext i19 %1 to i32
  %empty_111 = shl i32 %empty, 19
  %empty_112 = or i32 %empty_111, %empty_110
  ret i32 %empty_112
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11, i21) nounwind readnone {
entry:
  %empty = zext i11 %0 to i32
  %empty_113 = zext i21 %1 to i32
  %empty_114 = shl i32 %empty, 21
  %empty_115 = or i32 %empty_114, %empty_113
  ret i32 %empty_115
}

!opencl.kernels = !{!0, !7, !11, !17, !23, !29, !32, !17, !17, !17}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uint"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"src", metadata !"length"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !2, metadata !9, metadata !4, metadata !10, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar", metadata !"uint"}
!10 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"val", metadata !"length"}
!11 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !6}
!12 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!13 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint"}
!15 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"message", metadata !"block_nb"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space"}
!19 = metadata !{metadata !"kernel_arg_access_qual"}
!20 = metadata !{metadata !"kernel_arg_type"}
!21 = metadata !{metadata !"kernel_arg_type_qual"}
!22 = metadata !{metadata !"kernel_arg_name"}
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"message"}
!29 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !30, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"digest"}
!32 = metadata !{null, metadata !33, metadata !2, metadata !34, metadata !4, metadata !35, metadata !6}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"mem_stream", metadata !"int", metadata !"uchar*"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"stream_in", metadata !"num_blocks", metadata !"digest_out"}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 7, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"stream_in.V", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, i32 1}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"num_blocks", metadata !46, metadata !"int", i32 0, i32 31}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 0, i32 0}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 7, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"digest_out", metadata !52, metadata !"unsigned char", i32 0, i32 7}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, i32 1}
