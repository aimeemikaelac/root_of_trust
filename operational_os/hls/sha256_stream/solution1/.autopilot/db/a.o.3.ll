; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_stream/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sha256_str = internal unnamed_addr constant [7 x i8] c"sha256\00" ; [#uses=1 type=[7 x i8]*]
@SHA256_sha256_k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=2 type=[64 x i32]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=2 type=[7 x i8]*]
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=14 type=[1 x i8]*]
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=2 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=23 type=[1 x i8]*]
@p_str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=1]
define internal fastcc { i32, i32 } @update(i32 %SHA256_m_tot_len_read, i32 %SHA256_m_len_read, [128 x i8]* nocapture %SHA256_m_block, [8 x i32]* nocapture %SHA256_m_h, [64 x i8]* nocapture %message) {
  %SHA256_m_len_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %SHA256_m_len_read) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %SHA256_m_len_read_1}, i64 0, metadata !36), !dbg !79 ; [debug line = 87:14] [debug variable = SHA256.m_len]
  %SHA256_m_tot_len_rea = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %SHA256_m_tot_len_read) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %SHA256_m_tot_len_rea}, i64 0, metadata !80), !dbg !79 ; [debug line = 87:14] [debug variable = SHA256.m_tot_len]
  call void @llvm.dbg.value(metadata !{i32 %SHA256_m_tot_len_read}, i64 0, metadata !80), !dbg !79 ; [debug line = 87:14] [debug variable = SHA256.m_tot_len]
  call void @llvm.dbg.value(metadata !{i32 %SHA256_m_len_read}, i64 0, metadata !36), !dbg !79 ; [debug line = 87:14] [debug variable = SHA256.m_len]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256_m_block}, i64 0, metadata !84), !dbg !79 ; [debug line = 87:14] [debug variable = SHA256.m_block]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %SHA256_m_h}, i64 0, metadata !88), !dbg !79 ; [debug line = 87:14] [debug variable = SHA256.m_h]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %message}, i64 0, metadata !92), !dbg !96 ; [debug line = 87:41] [debug variable = message]
  %tmp_len = sub i32 64, %SHA256_m_len_read_1, !dbg !97 ; [#uses=2 type=i32] [debug line = 92:5]
  %tmp_1 = trunc i32 %tmp_len to i7, !dbg !97     ; [#uses=1 type=i7] [debug line = 92:5]
  call void @llvm.dbg.value(metadata !{i32 %tmp_len}, i64 0, metadata !99), !dbg !97 ; [debug line = 92:5] [debug variable = tmp_len]
  %tmp = icmp ugt i32 %tmp_len, 64, !dbg !100     ; [#uses=1 type=i1] [debug line = 93:5]
  %rem_len = select i1 %tmp, i7 -64, i7 %tmp_1, !dbg !100 ; [#uses=4 type=i7] [debug line = 93:5]
  call void @llvm.dbg.value(metadata !{i7 %rem_len}, i64 0, metadata !101), !dbg !100 ; [debug line = 93:5] [debug variable = rem_len]
  %tmp_3 = trunc i32 %SHA256_m_len_read_1 to i9, !dbg !102 ; [#uses=1 type=i9] [debug line = 3:29@94:5]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256_m_block}, i64 0, metadata !107), !dbg !102 ; [debug line = 3:29@94:5] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %message}, i64 0, metadata !108), !dbg !110 ; [debug line = 3:49@94:5] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i7 %rem_len}, i64 0, metadata !111), !dbg !112 ; [debug line = 3:67@94:5] [debug variable = length]
  br label %1, !dbg !113                          ; [debug line = 5:6@94:5]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i7 [ 0, %0 ], [ %i, %2 ]             ; [#uses=4 type=i7]
  %exitcond_i = icmp eq i7 %i_i, %rem_len, !dbg !113 ; [#uses=1 type=i1] [debug line = 5:6@94:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 64, i64 0) ; [#uses=0 type=i32]
  %i = add i7 %i_i, 1, !dbg !116                  ; [#uses=1 type=i7] [debug line = 5:21@94:5]
  br i1 %exitcond_i, label %_memcpy.exit, label %2, !dbg !113 ; [debug line = 5:6@94:5]

; <label>:2                                       ; preds = %1
  %tmp_i = zext i7 %i_i to i64, !dbg !117         ; [#uses=1 type=i64] [debug line = 6:3@94:5]
  %tmp_i_cast = zext i7 %i_i to i9, !dbg !117     ; [#uses=1 type=i9] [debug line = 6:3@94:5]
  %message_addr = getelementptr [64 x i8]* %message, i64 0, i64 %tmp_i, !dbg !117 ; [#uses=1 type=i8*] [debug line = 6:3@94:5]
  %message_load = load i8* %message_addr, align 1, !dbg !117 ; [#uses=1 type=i8] [debug line = 6:3@94:5]
  %sum_i = add i9 %tmp_3, %tmp_i_cast             ; [#uses=1 type=i9]
  %sum_i_cast = zext i9 %sum_i to i64             ; [#uses=1 type=i64]
  %SHA256_m_block_addr = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %sum_i_cast, !dbg !117 ; [#uses=1 type=i8*] [debug line = 6:3@94:5]
  store i8 %message_load, i8* %SHA256_m_block_addr, align 1, !dbg !117 ; [debug line = 6:3@94:5]
  call void @llvm.dbg.value(metadata !{i7 %i}, i64 0, metadata !119), !dbg !116 ; [debug line = 5:21@94:5] [debug variable = i]
  br label %1, !dbg !116                          ; [debug line = 5:21@94:5]

_memcpy.exit:                                     ; preds = %1
  %tmp_9 = icmp ugt i32 %SHA256_m_len_read_1, -65, !dbg !121 ; [#uses=1 type=i1] [debug line = 95:5]
  br i1 %tmp_9, label %3, label %4, !dbg !121     ; [debug line = 95:5]

; <label>:3                                       ; preds = %_memcpy.exit
  %tmp_8 = trunc i32 %SHA256_m_len_read_1 to i6, !dbg !122 ; [#uses=1 type=i6] [debug line = 96:9]
  br label %7, !dbg !124                          ; [debug line = 97:9]

; <label>:4                                       ; preds = %_memcpy.exit
  %new_len = sub i7 -64, %rem_len, !dbg !125      ; [#uses=3 type=i7] [debug line = 99:5]
  %new_len_cast3 = zext i7 %new_len to i8, !dbg !125 ; [#uses=1 type=i8] [debug line = 99:5]
  %rem_len_1 = trunc i7 %new_len to i6, !dbg !125 ; [#uses=2 type=i6] [debug line = 99:5]
  call void @llvm.dbg.value(metadata !{i7 %new_len}, i64 0, metadata !126), !dbg !125 ; [debug line = 99:5] [debug variable = new_len]
  call fastcc void @transform([8 x i32]* %SHA256_m_h, [128 x i8]* %SHA256_m_block, i2 1), !dbg !127 ; [debug line = 102:5]
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i7.i32(i7 %new_len, i32 6), !dbg !128 ; [#uses=2 type=i1] [debug line = 103:5]
  call fastcc void @transform.1([8 x i32]* %SHA256_m_h, [64 x i8]* %message, i7 %rem_len, i1 %tmp_11), !dbg !128 ; [debug line = 103:5]
  call void @llvm.dbg.value(metadata !{i6 %rem_len_1}, i64 0, metadata !101), !dbg !129 ; [debug line = 104:5] [debug variable = rem_len]
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1 %tmp_11, i6 0), !dbg !130 ; [#uses=1 type=i7] [debug line = 105:5]
  %tmp_3_cast = zext i7 %tmp_2 to i8, !dbg !131   ; [#uses=1 type=i8] [debug line = 3:29@105:5]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256_m_block}, i64 0, metadata !132), !dbg !131 ; [debug line = 3:29@105:5] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %message}, i64 0, metadata !133), !dbg !134 ; [debug line = 3:49@105:5] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i6 %rem_len_1}, i64 0, metadata !135), !dbg !136 ; [debug line = 3:67@105:5] [debug variable = length]
  br label %5, !dbg !137                          ; [debug line = 5:6@105:5]

; <label>:5                                       ; preds = %6, %4
  %i_i1 = phi i6 [ 0, %4 ], [ %i_1, %6 ]          ; [#uses=4 type=i6]
  %exitcond_i2 = icmp eq i6 %i_i1, %rem_len_1, !dbg !137 ; [#uses=1 type=i1] [debug line = 5:6@105:5]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 63, i64 0) ; [#uses=0 type=i32]
  %i_1 = add i6 %i_i1, 1, !dbg !138               ; [#uses=1 type=i6] [debug line = 5:21@105:5]
  br i1 %exitcond_i2, label %_memcpy.exit8, label %6, !dbg !137 ; [debug line = 5:6@105:5]

; <label>:6                                       ; preds = %5
  %tmp_i3 = zext i6 %i_i1 to i64, !dbg !139       ; [#uses=1 type=i64] [debug line = 6:3@105:5]
  %tmp_i3_cast = zext i6 %i_i1 to i7              ; [#uses=1 type=i7]
  %tmp1 = add i7 %rem_len, %tmp_i3_cast           ; [#uses=1 type=i7]
  %tmp1_cast = zext i7 %tmp1 to i8                ; [#uses=1 type=i8]
  %sum3_i = add i8 %tmp1_cast, %tmp_3_cast        ; [#uses=1 type=i8]
  %sum3_i_cast = zext i8 %sum3_i to i64           ; [#uses=1 type=i64]
  %message_addr_1 = getelementptr [64 x i8]* %message, i64 0, i64 %sum3_i_cast, !dbg !139 ; [#uses=1 type=i8*] [debug line = 6:3@105:5]
  %message_load_1 = load i8* %message_addr_1, align 1, !dbg !139 ; [#uses=1 type=i8] [debug line = 6:3@105:5]
  %SHA256_m_block_addr_1 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %tmp_i3, !dbg !139 ; [#uses=1 type=i8*] [debug line = 6:3@105:5]
  store i8 %message_load_1, i8* %SHA256_m_block_addr_1, align 1, !dbg !139 ; [debug line = 6:3@105:5]
  call void @llvm.dbg.value(metadata !{i6 %i_1}, i64 0, metadata !140), !dbg !138 ; [debug line = 5:21@105:5] [debug variable = i]
  br label %5, !dbg !138                          ; [debug line = 5:21@105:5]

_memcpy.exit8:                                    ; preds = %5
  %tmp_4 = add i8 %new_len_cast3, 64, !dbg !141   ; [#uses=1 type=i8] [debug line = 107:5]
  %tmp_7 = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %tmp_4, i32 6, i32 7) ; [#uses=1 type=i2]
  %tmp_5 = call i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2 %tmp_7, i6 0), !dbg !141 ; [#uses=1 type=i8] [debug line = 107:5]
  %tmp_5_cast = zext i8 %tmp_5 to i32, !dbg !141  ; [#uses=1 type=i32] [debug line = 107:5]
  %tmp_6 = add i32 %tmp_5_cast, %SHA256_m_tot_len_rea, !dbg !141 ; [#uses=1 type=i32] [debug line = 107:5]
  br label %7, !dbg !142                          ; [debug line = 108:1]

; <label>:7                                       ; preds = %_memcpy.exit8, %3
  %SHA256_m_tot_len = phi i32 [ %SHA256_m_tot_len_rea, %3 ], [ %tmp_6, %_memcpy.exit8 ] ; [#uses=1 type=i32]
  %SHA256_m_len_write_a = phi i6 [ %tmp_8, %3 ], [ %rem_len_1, %_memcpy.exit8 ] ; [#uses=1 type=i6]
  %SHA256_m_len_write_a_1 = zext i6 %SHA256_m_len_write_a to i32, !dbg !79 ; [#uses=1 type=i32] [debug line = 87:14]
  call void @llvm.dbg.value(metadata !{i6 %SHA256_m_len_write_a}, i64 0, metadata !143), !dbg !79 ; [debug line = 87:14] [debug variable = SHA256.m_len]
  %mrv = insertvalue { i32, i32 } undef, i32 %SHA256_m_tot_len, 0, !dbg !142 ; [#uses=1 type={ i32, i32 }] [debug line = 108:1]
  %mrv_1 = insertvalue { i32, i32 } %mrv, i32 %SHA256_m_len_write_a_1, 1, !dbg !142 ; [#uses=1 type={ i32, i32 }] [debug line = 108:1]
  ret { i32, i32 } %mrv_1, !dbg !142              ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc void @transform.1([8 x i32]* nocapture %SHA256_m_h, [64 x i8]* nocapture %message, i7 %tmp_1, i1 %block_nb) {
  %block_nb_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %block_nb) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %block_nb_read}, i64 0, metadata !144), !dbg !146 ; [debug line = 35:67] [debug variable = block_nb]
  %tmp_1_read = call i7 @_ssdm_op_Read.ap_auto.i7(i7 %tmp_1) ; [#uses=4 type=i7]
  %w = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  %wv = alloca [8 x i32], align 16                ; [#uses=10 type=[8 x i32]*]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %SHA256_m_h}, i64 0, metadata !147), !dbg !149 ; [debug line = 35:14] [debug variable = SHA256.m_h]
  call void @llvm.dbg.value(metadata !{i1 %block_nb}, i64 0, metadata !144), !dbg !146 ; [debug line = 35:67] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %w}, metadata !150), !dbg !153 ; [debug line = 37:12] [debug variable = w]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %wv}, metadata !154), !dbg !155 ; [debug line = 38:12] [debug variable = wv]
  %wv_addr = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 7, !dbg !156 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv_addr_1 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 4, !dbg !156 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv_addr_2 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 5, !dbg !156 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv_addr_3 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 6, !dbg !156 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv_addr_4 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 0, !dbg !161 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv_addr_5 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 1, !dbg !161 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv_addr_6 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 2, !dbg !161 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv_addr_7 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 3, !dbg !162 ; [#uses=2 type=i32*] [debug line = 61:13]
  br label %.loopexit, !dbg !163                  ; [debug line = 43:10]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i1 [ false, %0 ], [ true, %.loopexit.loopexit ] ; [#uses=2 type=i1]
  %tmptmp = xor i1 %i, true, !dbg !163            ; [#uses=1 type=i1] [debug line = 43:10]
  %tmp = and i1 %block_nb_read, %tmptmp, !dbg !163 ; [#uses=1 type=i1] [debug line = 43:10]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1, i64 0) ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader3.preheader, label %6, !dbg !163 ; [debug line = 43:10]

.preheader3.preheader:                            ; preds = %.loopexit
  br label %.preheader3, !dbg !164                ; [debug line = 45:14]

.preheader3:                                      ; preds = %1, %.preheader3.preheader
  %j = phi i5 [ %j_5, %1 ], [ 0, %.preheader3.preheader ] ; [#uses=4 type=i5]
  %exitcond1 = icmp eq i5 %j, -16, !dbg !164      ; [#uses=1 type=i1] [debug line = 45:14]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %j_5 = add i5 %j, 1, !dbg !166                  ; [#uses=1 type=i5] [debug line = 45:29]
  br i1 %exitcond1, label %.preheader13.preheader, label %1, !dbg !164 ; [debug line = 45:14]

.preheader13.preheader:                           ; preds = %.preheader3
  br label %.preheader13, !dbg !167               ; [debug line = 48:14]

; <label>:1                                       ; preds = %.preheader3
  %tmp_20 = trunc i5 %j to i4                     ; [#uses=2 type=i4]
  %tmp_8 = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %tmp_20, i2 0), !dbg !169 ; [#uses=2 type=i6] [debug line = 46:15]
  %sub_block_0_sum = call i6 @_ssdm_op_BitConcatenate.i6.i4.i1.i1(i4 %tmp_20, i1 false, i1 %i), !dbg !169 ; [#uses=2 type=i6] [debug line = 46:15]
  %sub_block_0_sum_cast = zext i6 %sub_block_0_sum to i7, !dbg !169 ; [#uses=1 type=i7] [debug line = 46:15]
  %p_sum1 = or i6 %tmp_8, 3, !dbg !169            ; [#uses=1 type=i6] [debug line = 46:15]
  %p_sum1_cast = zext i6 %p_sum1 to i7, !dbg !169 ; [#uses=1 type=i7] [debug line = 46:15]
  %sum = add i7 %tmp_1_read, %p_sum1_cast         ; [#uses=1 type=i7]
  %sum_cast = zext i7 %sum to i64                 ; [#uses=1 type=i64]
  %message_addr = getelementptr [64 x i8]* %message, i64 0, i64 %sum_cast, !dbg !169 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message_load = load i8* %message_addr, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 46:15]
  %p_sum3 = or i6 %sub_block_0_sum, 2, !dbg !169  ; [#uses=1 type=i6] [debug line = 46:15]
  %p_sum3_cast = zext i6 %p_sum3 to i7, !dbg !169 ; [#uses=1 type=i7] [debug line = 46:15]
  %sum2 = add i7 %tmp_1_read, %p_sum3_cast        ; [#uses=1 type=i7]
  %sum2_cast = zext i7 %sum2 to i64               ; [#uses=1 type=i64]
  %message_addr_1 = getelementptr [64 x i8]* %message, i64 0, i64 %sum2_cast, !dbg !169 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message_load_1 = load i8* %message_addr_1, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 46:15]
  %p_sum5 = or i6 %tmp_8, 1, !dbg !169            ; [#uses=1 type=i6] [debug line = 46:15]
  %p_sum5_cast = zext i6 %p_sum5 to i7, !dbg !169 ; [#uses=1 type=i7] [debug line = 46:15]
  %sum4 = add i7 %tmp_1_read, %p_sum5_cast        ; [#uses=1 type=i7]
  %sum4_cast = zext i7 %sum4 to i64               ; [#uses=1 type=i64]
  %message_addr_2 = getelementptr [64 x i8]* %message, i64 0, i64 %sum4_cast, !dbg !169 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message_load_2 = load i8* %message_addr_2, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 46:15]
  %sum6 = add i7 %tmp_1_read, %sub_block_0_sum_cast ; [#uses=1 type=i7]
  %sum6_cast = zext i7 %sum6 to i64               ; [#uses=1 type=i64]
  %message_addr_3 = getelementptr [64 x i8]* %message, i64 0, i64 %sum6_cast, !dbg !169 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message_load_3 = load i8* %message_addr_3, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 46:15]
  %tmp_2 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %message_load_3, i8 %message_load_2, i8 %message_load_1, i8 %message_load), !dbg !169 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp_3 = zext i5 %j to i64, !dbg !169           ; [#uses=1 type=i64] [debug line = 46:15]
  %w_addr = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_3, !dbg !169 ; [#uses=1 type=i32*] [debug line = 46:15]
  store i32 %tmp_2, i32* %w_addr, align 4, !dbg !169 ; [debug line = 46:15]
  call void @llvm.dbg.value(metadata !{i5 %j_5}, i64 0, metadata !172), !dbg !166 ; [debug line = 45:29] [debug variable = j]
  br label %.preheader3, !dbg !166                ; [debug line = 45:29]

.preheader13:                                     ; preds = %2, %.preheader13.preheader
  %j_1 = phi i7 [ %j_6, %2 ], [ 16, %.preheader13.preheader ] ; [#uses=7 type=i7]
  %exitcond9 = icmp eq i7 %j_1, -64, !dbg !167    ; [#uses=1 type=i1] [debug line = 48:14]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) ; [#uses=0 type=i32]
  br i1 %exitcond9, label %.preheader12.preheader, label %2, !dbg !167 ; [debug line = 48:14]

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12, !dbg !173               ; [debug line = 51:14]

; <label>:2                                       ; preds = %.preheader13
  %tmp_4 = add i7 -2, %j_1, !dbg !175             ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp_5 = zext i7 %tmp_4 to i64, !dbg !175       ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_1 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_5, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w_load = load i32* %w_addr_1, align 4, !dbg !175 ; [#uses=5 type=i32] [debug line = 49:13]
  %tmp_6 = call i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32 %w_load, i32 17, i32 31), !dbg !175 ; [#uses=1 type=i15] [debug line = 49:13]
  %tmp_23 = trunc i32 %w_load to i17              ; [#uses=1 type=i17]
  %tmp_9 = call i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17 %tmp_23, i15 %tmp_6), !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_s = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %w_load, i32 19, i32 31), !dbg !175 ; [#uses=1 type=i13] [debug line = 49:13]
  %tmp_36 = trunc i32 %w_load to i19              ; [#uses=1 type=i19]
  %tmp_7 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19 %tmp_36, i13 %tmp_s), !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_10 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %w_load, i32 10, i32 31), !dbg !175 ; [#uses=1 type=i22] [debug line = 49:13]
  %tmp_11 = zext i22 %tmp_10 to i32, !dbg !175    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp1 = xor i32 %tmp_11, %tmp_7, !dbg !175      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_12 = xor i32 %tmp1, %tmp_9, !dbg !175      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_13 = add i7 -7, %j_1, !dbg !175            ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp_14 = zext i7 %tmp_13 to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_2 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_14, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w_load_1 = load i32* %w_addr_2, align 4, !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_15 = add i7 -15, %j_1, !dbg !175           ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp_16 = zext i7 %tmp_15 to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_3 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_16, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w_load_2 = load i32* %w_addr_3, align 4, !dbg !175 ; [#uses=5 type=i32] [debug line = 49:13]
  %tmp_17 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %w_load_2, i32 7, i32 31), !dbg !175 ; [#uses=1 type=i25] [debug line = 49:13]
  %tmp_39 = trunc i32 %w_load_2 to i7             ; [#uses=1 type=i7]
  %tmp_18 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_39, i25 %tmp_17), !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_19 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %w_load_2, i32 18, i32 31), !dbg !175 ; [#uses=1 type=i14] [debug line = 49:13]
  %tmp_51 = trunc i32 %w_load_2 to i18            ; [#uses=1 type=i18]
  %tmp_21 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_51, i14 %tmp_19), !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_22 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %w_load_2, i32 3, i32 31), !dbg !175 ; [#uses=1 type=i29] [debug line = 49:13]
  %tmp_24 = zext i29 %tmp_22 to i32, !dbg !175    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp2 = xor i32 %tmp_24, %tmp_21, !dbg !175     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_25 = xor i32 %tmp2, %tmp_18, !dbg !175     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_26 = add i7 -16, %j_1, !dbg !175           ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp_27 = zext i7 %tmp_26 to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_4 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_27, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w_load_3 = load i32* %w_addr_4, align 4, !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp3 = add i32 %w_load_1, %w_load_3, !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp4 = add i32 %tmp_12, %tmp_25, !dbg !175     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_28 = add i32 %tmp4, %tmp3, !dbg !175       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_29 = zext i7 %j_1 to i64, !dbg !175        ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_5 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_29, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  store i32 %tmp_28, i32* %w_addr_5, align 4, !dbg !175 ; [debug line = 49:13]
  %j_6 = add i7 1, %j_1, !dbg !177                ; [#uses=1 type=i7] [debug line = 48:30]
  call void @llvm.dbg.value(metadata !{i7 %j_6}, i64 0, metadata !172), !dbg !177 ; [debug line = 48:30] [debug variable = j]
  br label %.preheader13, !dbg !177               ; [debug line = 48:30]

.preheader12:                                     ; preds = %3, %.preheader12.preheader
  %j_2 = phi i4 [ %j_7, %3 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i4]
  %exitcond8 = icmp eq i4 %j_2, -8, !dbg !173     ; [#uses=1 type=i1] [debug line = 51:14]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_7 = add i4 %j_2, 1, !dbg !178                ; [#uses=1 type=i4] [debug line = 51:28]
  br i1 %exitcond8, label %.preheader11.preheader, label %3, !dbg !173 ; [debug line = 51:14]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !179               ; [debug line = 54:14]

; <label>:3                                       ; preds = %.preheader12
  %tmp_30 = zext i4 %j_2 to i64, !dbg !180        ; [#uses=2 type=i64] [debug line = 52:13]
  %SHA256_m_h_addr = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_30, !dbg !180 ; [#uses=1 type=i32*] [debug line = 52:13]
  %SHA256_m_h_load = load i32* %SHA256_m_h_addr, align 4, !dbg !180 ; [#uses=1 type=i32] [debug line = 52:13]
  %wv_addr_8 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp_30, !dbg !180 ; [#uses=1 type=i32*] [debug line = 52:13]
  store i32 %SHA256_m_h_load, i32* %wv_addr_8, align 4, !dbg !180 ; [debug line = 52:13]
  call void @llvm.dbg.value(metadata !{i4 %j_7}, i64 0, metadata !172), !dbg !178 ; [debug line = 51:28] [debug variable = j]
  br label %.preheader12, !dbg !178               ; [debug line = 51:28]

.preheader11:                                     ; preds = %4, %.preheader11.preheader
  %j_3 = phi i7 [ %j_8, %4 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i7]
  %exitcond7 = icmp eq i7 %j_3, -64, !dbg !179    ; [#uses=1 type=i1] [debug line = 54:14]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %j_8 = add i7 %j_3, 1, !dbg !182                ; [#uses=1 type=i7] [debug line = 54:29]
  br i1 %exitcond7, label %.preheader.preheader, label %4, !dbg !179 ; [debug line = 54:14]

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader, !dbg !183                 ; [debug line = 67:14]

; <label>:4                                       ; preds = %.preheader11
  %wv_load = load i32* %wv_addr, align 4, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %wv_load_1 = load i32* %wv_addr_1, align 16, !dbg !156 ; [#uses=9 type=i32] [debug line = 55:13]
  %tmp_31 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %wv_load_1, i32 6, i32 31), !dbg !156 ; [#uses=1 type=i26] [debug line = 55:13]
  %tmp_54 = trunc i32 %wv_load_1 to i6            ; [#uses=1 type=i6]
  %tmp_32 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_54, i26 %tmp_31), !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_33 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %wv_load_1, i32 11, i32 31), !dbg !156 ; [#uses=1 type=i21] [debug line = 55:13]
  %tmp_64 = trunc i32 %wv_load_1 to i11           ; [#uses=1 type=i11]
  %tmp_34 = call i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11 %tmp_64, i21 %tmp_33), !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_35 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %wv_load_1, i32 25, i32 31), !dbg !156 ; [#uses=1 type=i7] [debug line = 55:13]
  %tmp_65 = trunc i32 %wv_load_1 to i25           ; [#uses=1 type=i25]
  %tmp_37 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 %tmp_65, i7 %tmp_35), !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp5 = xor i32 %tmp_37, %tmp_34, !dbg !156     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_38 = xor i32 %tmp5, %tmp_32, !dbg !156     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv_load_2 = load i32* %wv_addr_2, align 4, !dbg !156 ; [#uses=2 type=i32] [debug line = 55:13]
  %tmp_40 = and i32 %wv_load_2, %wv_load_1, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_41 = xor i32 %wv_load_1, -1, !dbg !156     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv_load_3 = load i32* %wv_addr_3, align 8, !dbg !156 ; [#uses=2 type=i32] [debug line = 55:13]
  %tmp_42 = and i32 %wv_load_3, %tmp_41, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_43 = xor i32 %tmp_42, %tmp_40, !dbg !156   ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_44 = zext i7 %j_3 to i64, !dbg !156        ; [#uses=2 type=i64] [debug line = 55:13]
  %SHA256_sha256_k_add = getelementptr inbounds [64 x i32]* @SHA256_sha256_k, i64 0, i64 %tmp_44, !dbg !156 ; [#uses=1 type=i32*] [debug line = 55:13]
  %SHA256_sha256_k_loa = load i32* %SHA256_sha256_k_add, align 4, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %w_addr_6 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_44, !dbg !156 ; [#uses=1 type=i32*] [debug line = 55:13]
  %w_load_4 = load i32* %w_addr_6, align 4, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp8 = add i32 %SHA256_sha256_k_loa, %wv_load, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp10 = add i32 %tmp_38, %tmp_43, !dbg !156    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp9 = add i32 %tmp10, %w_load_4, !dbg !156    ; [#uses=1 type=i32] [debug line = 55:13]
  %t1 = add i32 %tmp9, %tmp8, !dbg !156           ; [#uses=2 type=i32] [debug line = 55:13]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !185), !dbg !156 ; [debug line = 55:13] [debug variable = t1]
  %wv_load_4 = load i32* %wv_addr_4, align 16, !dbg !161 ; [#uses=8 type=i32] [debug line = 57:13]
  %tmp_45 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %wv_load_4, i32 2, i32 31), !dbg !161 ; [#uses=1 type=i30] [debug line = 57:13]
  %tmp_66 = trunc i32 %wv_load_4 to i2            ; [#uses=1 type=i2]
  %tmp_46 = call i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2 %tmp_66, i30 %tmp_45), !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_47 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %wv_load_4, i32 13, i32 31), !dbg !161 ; [#uses=1 type=i19] [debug line = 57:13]
  %tmp_67 = trunc i32 %wv_load_4 to i13           ; [#uses=1 type=i13]
  %tmp_48 = call i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13 %tmp_67, i19 %tmp_47), !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_49 = call i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32 %wv_load_4, i32 22, i32 31), !dbg !161 ; [#uses=1 type=i10] [debug line = 57:13]
  %tmp_68 = trunc i32 %wv_load_4 to i22           ; [#uses=1 type=i22]
  %tmp_50 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 %tmp_68, i10 %tmp_49), !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp11 = xor i32 %tmp_50, %tmp_48, !dbg !161    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_52 = xor i32 %tmp11, %tmp_46, !dbg !161    ; [#uses=1 type=i32] [debug line = 57:13]
  %wv_load_5 = load i32* %wv_addr_5, align 4, !dbg !161 ; [#uses=3 type=i32] [debug line = 57:13]
  %wv_load_6 = load i32* %wv_addr_6, align 8, !dbg !161 ; [#uses=3 type=i32] [debug line = 57:13]
  %tmp_53 = and i32 %wv_load_6, %wv_load_5, !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_55 = xor i32 %wv_load_6, %wv_load_5, !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_56 = and i32 %wv_load_4, %tmp_55, !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_57 = xor i32 %tmp_56, %tmp_53, !dbg !161   ; [#uses=1 type=i32] [debug line = 57:13]
  store i32 %wv_load_3, i32* %wv_addr, align 4, !dbg !186 ; [debug line = 58:13]
  store i32 %wv_load_2, i32* %wv_addr_3, align 8, !dbg !187 ; [debug line = 59:13]
  store i32 %wv_load_1, i32* %wv_addr_2, align 4, !dbg !188 ; [debug line = 60:13]
  %wv_load_7 = load i32* %wv_addr_7, align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 61:13]
  %tmp_58 = add i32 %wv_load_7, %t1, !dbg !162    ; [#uses=1 type=i32] [debug line = 61:13]
  store i32 %tmp_58, i32* %wv_addr_1, align 16, !dbg !162 ; [debug line = 61:13]
  store i32 %wv_load_6, i32* %wv_addr_7, align 4, !dbg !189 ; [debug line = 62:13]
  store i32 %wv_load_5, i32* %wv_addr_6, align 8, !dbg !190 ; [debug line = 63:13]
  store i32 %wv_load_4, i32* %wv_addr_5, align 4, !dbg !191 ; [debug line = 64:13]
  %tmp12 = add i32 %tmp_52, %tmp_57, !dbg !192    ; [#uses=1 type=i32] [debug line = 65:13]
  %tmp_59 = add i32 %tmp12, %t1, !dbg !192        ; [#uses=1 type=i32] [debug line = 65:13]
  store i32 %tmp_59, i32* %wv_addr_4, align 16, !dbg !192 ; [debug line = 65:13]
  call void @llvm.dbg.value(metadata !{i7 %j_8}, i64 0, metadata !172), !dbg !182 ; [debug line = 54:29] [debug variable = j]
  br label %.preheader11, !dbg !182               ; [debug line = 54:29]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %j_4 = phi i4 [ %j_9, %5 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %j_4, -8, !dbg !183      ; [#uses=1 type=i1] [debug line = 67:14]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_9 = add i4 %j_4, 1, !dbg !193                ; [#uses=1 type=i4] [debug line = 67:28]
  br i1 %exitcond, label %.loopexit.loopexit, label %5, !dbg !183 ; [debug line = 67:14]

; <label>:5                                       ; preds = %.preheader
  %tmp_60 = zext i4 %j_4 to i64, !dbg !194        ; [#uses=2 type=i64] [debug line = 68:13]
  %wv_addr_9 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp_60, !dbg !194 ; [#uses=1 type=i32*] [debug line = 68:13]
  %wv_load_8 = load i32* %wv_addr_9, align 4, !dbg !194 ; [#uses=1 type=i32] [debug line = 68:13]
  %SHA256_m_h_addr_1 = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_60, !dbg !194 ; [#uses=2 type=i32*] [debug line = 68:13]
  %SHA256_m_h_load_1 = load i32* %SHA256_m_h_addr_1, align 4, !dbg !194 ; [#uses=1 type=i32] [debug line = 68:13]
  %tmp_61 = add i32 %wv_load_8, %SHA256_m_h_load_1, !dbg !194 ; [#uses=1 type=i32] [debug line = 68:13]
  store i32 %tmp_61, i32* %SHA256_m_h_addr_1, align 4, !dbg !194 ; [debug line = 68:13]
  call void @llvm.dbg.value(metadata !{i4 %j_9}, i64 0, metadata !172), !dbg !193 ; [debug line = 67:28] [debug variable = j]
  br label %.preheader, !dbg !193                 ; [debug line = 67:28]

; <label>:6                                       ; preds = %.loopexit
  ret void, !dbg !196                             ; [debug line = 71:1]
}

; [#uses=2]
define internal fastcc void @transform([8 x i32]* nocapture %SHA256_m_h, [128 x i8]* nocapture %message, i2 %block_nb) {
  %block_nb_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %block_nb) ; [#uses=1 type=i2]
  call void @llvm.dbg.value(metadata !{i2 %block_nb_read}, i64 0, metadata !144), !dbg !146 ; [debug line = 35:67] [debug variable = block_nb]
  %w = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  %wv = alloca [8 x i32], align 16                ; [#uses=10 type=[8 x i32]*]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %SHA256_m_h}, i64 0, metadata !147), !dbg !149 ; [debug line = 35:14] [debug variable = SHA256.m_h]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %message}, i64 0, metadata !197), !dbg !199 ; [debug line = 35:45] [debug variable = message]
  call void @llvm.dbg.value(metadata !{i2 %block_nb}, i64 0, metadata !144), !dbg !146 ; [debug line = 35:67] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %w}, metadata !150), !dbg !153 ; [debug line = 37:12] [debug variable = w]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %wv}, metadata !154), !dbg !155 ; [debug line = 38:12] [debug variable = wv]
  %wv_addr = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 7, !dbg !156 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv_addr_1 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 4, !dbg !156 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv_addr_2 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 5, !dbg !156 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv_addr_3 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 6, !dbg !156 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv_addr_4 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 0, !dbg !161 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv_addr_5 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 1, !dbg !161 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv_addr_6 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 2, !dbg !161 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv_addr_7 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 3, !dbg !162 ; [#uses=2 type=i32*] [debug line = 61:13]
  br label %.loopexit, !dbg !163                  ; [debug line = 43:10]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i2 [ 0, %0 ], [ %i_2, %.loopexit.loopexit ] ; [#uses=3 type=i2]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 0) ; [#uses=0 type=i32]
  %exitcond2 = icmp eq i2 %i, %block_nb_read, !dbg !163 ; [#uses=1 type=i1] [debug line = 43:10]
  %i_2 = add i2 %i, 1, !dbg !200                  ; [#uses=1 type=i2] [debug line = 43:37]
  call void @llvm.dbg.value(metadata !{i2 %i_2}, i64 0, metadata !201), !dbg !200 ; [debug line = 43:37] [debug variable = i]
  br i1 %exitcond2, label %6, label %.preheader2.preheader, !dbg !163 ; [debug line = 43:10]

.preheader2.preheader:                            ; preds = %.loopexit
  br label %.preheader2, !dbg !164                ; [debug line = 45:14]

.preheader2:                                      ; preds = %1, %.preheader2.preheader
  %j = phi i5 [ %j_5, %1 ], [ 0, %.preheader2.preheader ] ; [#uses=4 type=i5]
  %exitcond1 = icmp eq i5 %j, -16, !dbg !164      ; [#uses=1 type=i1] [debug line = 45:14]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %j_5 = add i5 %j, 1, !dbg !166                  ; [#uses=1 type=i5] [debug line = 45:29]
  br i1 %exitcond1, label %.preheader13.preheader, label %1, !dbg !164 ; [debug line = 45:14]

.preheader13.preheader:                           ; preds = %.preheader2
  br label %.preheader13, !dbg !167               ; [debug line = 48:14]

; <label>:1                                       ; preds = %.preheader2
  %tmp = trunc i5 %j to i4                        ; [#uses=1 type=i4]
  %tmp_71 = trunc i2 %i to i1                     ; [#uses=1 type=i1]
  %sub_block_0_sum = call i7 @_ssdm_op_BitConcatenate.i7.i1.i4.i2(i1 %tmp_71, i4 %tmp, i2 0), !dbg !169 ; [#uses=4 type=i7] [debug line = 46:15]
  %sub_block_0_sum_cast = zext i7 %sub_block_0_sum to i64, !dbg !169 ; [#uses=1 type=i64] [debug line = 46:15]
  %p_sum1 = or i7 %sub_block_0_sum, 3, !dbg !169  ; [#uses=1 type=i7] [debug line = 46:15]
  %p_sum1_cast = zext i7 %p_sum1 to i64, !dbg !169 ; [#uses=1 type=i64] [debug line = 46:15]
  %message_addr = getelementptr [128 x i8]* %message, i64 0, i64 %p_sum1_cast, !dbg !169 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message_load = load i8* %message_addr, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 46:15]
  %p_sum3 = or i7 %sub_block_0_sum, 2, !dbg !169  ; [#uses=1 type=i7] [debug line = 46:15]
  %p_sum3_cast = zext i7 %p_sum3 to i64, !dbg !169 ; [#uses=1 type=i64] [debug line = 46:15]
  %message_addr_4 = getelementptr [128 x i8]* %message, i64 0, i64 %p_sum3_cast, !dbg !169 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message_load_1 = load i8* %message_addr_4, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 46:15]
  %p_sum5 = or i7 %sub_block_0_sum, 1, !dbg !169  ; [#uses=1 type=i7] [debug line = 46:15]
  %p_sum5_cast = zext i7 %p_sum5 to i64, !dbg !169 ; [#uses=1 type=i64] [debug line = 46:15]
  %message_addr_5 = getelementptr [128 x i8]* %message, i64 0, i64 %p_sum5_cast, !dbg !169 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message_load_2 = load i8* %message_addr_5, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 46:15]
  %message_addr_6 = getelementptr [128 x i8]* %message, i64 0, i64 %sub_block_0_sum_cast, !dbg !169 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message_load_3 = load i8* %message_addr_6, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 46:15]
  %tmp_19 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %message_load_3, i8 %message_load_2, i8 %message_load_1, i8 %message_load), !dbg !169 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp_20 = zext i5 %j to i64, !dbg !169          ; [#uses=1 type=i64] [debug line = 46:15]
  %w_addr = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_20, !dbg !169 ; [#uses=1 type=i32*] [debug line = 46:15]
  store i32 %tmp_19, i32* %w_addr, align 4, !dbg !169 ; [debug line = 46:15]
  call void @llvm.dbg.value(metadata !{i5 %j_5}, i64 0, metadata !172), !dbg !166 ; [debug line = 45:29] [debug variable = j]
  br label %.preheader2, !dbg !166                ; [debug line = 45:29]

.preheader13:                                     ; preds = %2, %.preheader13.preheader
  %j_1 = phi i7 [ %j_6, %2 ], [ 16, %.preheader13.preheader ] ; [#uses=7 type=i7]
  %exitcond9 = icmp eq i7 %j_1, -64, !dbg !167    ; [#uses=1 type=i1] [debug line = 48:14]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) ; [#uses=0 type=i32]
  br i1 %exitcond9, label %.preheader12.preheader, label %2, !dbg !167 ; [debug line = 48:14]

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12, !dbg !173               ; [debug line = 51:14]

; <label>:2                                       ; preds = %.preheader13
  %tmp_21 = add i7 -2, %j_1, !dbg !175            ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp_22 = zext i7 %tmp_21 to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_1 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_22, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w_load = load i32* %w_addr_1, align 4, !dbg !175 ; [#uses=5 type=i32] [debug line = 49:13]
  %tmp_23 = call i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32 %w_load, i32 17, i32 31), !dbg !175 ; [#uses=1 type=i15] [debug line = 49:13]
  %tmp_74 = trunc i32 %w_load to i17              ; [#uses=1 type=i17]
  %tmp_25 = call i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17 %tmp_74, i15 %tmp_23), !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_26 = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %w_load, i32 19, i32 31), !dbg !175 ; [#uses=1 type=i13] [debug line = 49:13]
  %tmp_84 = trunc i32 %w_load to i19              ; [#uses=1 type=i19]
  %tmp_28 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19 %tmp_84, i13 %tmp_26), !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_29 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %w_load, i32 10, i32 31), !dbg !175 ; [#uses=1 type=i22] [debug line = 49:13]
  %tmp_85 = zext i22 %tmp_29 to i32, !dbg !175    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp1 = xor i32 %tmp_85, %tmp_28, !dbg !175     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_31 = xor i32 %tmp1, %tmp_25, !dbg !175     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_32 = add i7 -7, %j_1, !dbg !175            ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp_33 = zext i7 %tmp_32 to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_2 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_33, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w_load_1 = load i32* %w_addr_2, align 4, !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_34 = add i7 -15, %j_1, !dbg !175           ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp_35 = zext i7 %tmp_34 to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_3 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_35, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w_load_2 = load i32* %w_addr_3, align 4, !dbg !175 ; [#uses=5 type=i32] [debug line = 49:13]
  %tmp_36 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %w_load_2, i32 7, i32 31), !dbg !175 ; [#uses=1 type=i25] [debug line = 49:13]
  %tmp_86 = trunc i32 %w_load_2 to i7             ; [#uses=1 type=i7]
  %tmp_38 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_86, i25 %tmp_36), !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_39 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %w_load_2, i32 18, i32 31), !dbg !175 ; [#uses=1 type=i14] [debug line = 49:13]
  %tmp_87 = trunc i32 %w_load_2 to i18            ; [#uses=1 type=i18]
  %tmp_41 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_87, i14 %tmp_39), !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_42 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %w_load_2, i32 3, i32 31), !dbg !175 ; [#uses=1 type=i29] [debug line = 49:13]
  %tmp_88 = zext i29 %tmp_42 to i32, !dbg !175    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp2 = xor i32 %tmp_88, %tmp_41, !dbg !175     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_44 = xor i32 %tmp2, %tmp_38, !dbg !175     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_45 = add i7 -16, %j_1, !dbg !175           ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp_46 = zext i7 %tmp_45 to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_4 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_46, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w_load_3 = load i32* %w_addr_4, align 4, !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp3 = add i32 %w_load_1, %w_load_3, !dbg !175 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp4 = add i32 %tmp_31, %tmp_44, !dbg !175     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_49 = add i32 %tmp4, %tmp3, !dbg !175       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp_50 = zext i7 %j_1 to i64, !dbg !175        ; [#uses=1 type=i64] [debug line = 49:13]
  %w_addr_5 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_50, !dbg !175 ; [#uses=1 type=i32*] [debug line = 49:13]
  store i32 %tmp_49, i32* %w_addr_5, align 4, !dbg !175 ; [debug line = 49:13]
  %j_6 = add i7 1, %j_1, !dbg !177                ; [#uses=1 type=i7] [debug line = 48:30]
  call void @llvm.dbg.value(metadata !{i7 %j_6}, i64 0, metadata !172), !dbg !177 ; [debug line = 48:30] [debug variable = j]
  br label %.preheader13, !dbg !177               ; [debug line = 48:30]

.preheader12:                                     ; preds = %3, %.preheader12.preheader
  %j_2 = phi i4 [ %j_7, %3 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i4]
  %exitcond8 = icmp eq i4 %j_2, -8, !dbg !173     ; [#uses=1 type=i1] [debug line = 51:14]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_7 = add i4 %j_2, 1, !dbg !178                ; [#uses=1 type=i4] [debug line = 51:28]
  br i1 %exitcond8, label %.preheader11.preheader, label %3, !dbg !173 ; [debug line = 51:14]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !179               ; [debug line = 54:14]

; <label>:3                                       ; preds = %.preheader12
  %tmp_51 = zext i4 %j_2 to i64, !dbg !180        ; [#uses=2 type=i64] [debug line = 52:13]
  %SHA256_m_h_addr = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_51, !dbg !180 ; [#uses=1 type=i32*] [debug line = 52:13]
  %SHA256_m_h_load = load i32* %SHA256_m_h_addr, align 4, !dbg !180 ; [#uses=1 type=i32] [debug line = 52:13]
  %wv_addr_8 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp_51, !dbg !180 ; [#uses=1 type=i32*] [debug line = 52:13]
  store i32 %SHA256_m_h_load, i32* %wv_addr_8, align 4, !dbg !180 ; [debug line = 52:13]
  call void @llvm.dbg.value(metadata !{i4 %j_7}, i64 0, metadata !172), !dbg !178 ; [debug line = 51:28] [debug variable = j]
  br label %.preheader12, !dbg !178               ; [debug line = 51:28]

.preheader11:                                     ; preds = %4, %.preheader11.preheader
  %j_3 = phi i7 [ %j_8, %4 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i7]
  %exitcond7 = icmp eq i7 %j_3, -64, !dbg !179    ; [#uses=1 type=i1] [debug line = 54:14]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %j_8 = add i7 %j_3, 1, !dbg !182                ; [#uses=1 type=i7] [debug line = 54:29]
  br i1 %exitcond7, label %.preheader.preheader, label %4, !dbg !179 ; [debug line = 54:14]

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader, !dbg !183                 ; [debug line = 67:14]

; <label>:4                                       ; preds = %.preheader11
  %wv_load = load i32* %wv_addr, align 4, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %wv_load_1 = load i32* %wv_addr_1, align 16, !dbg !156 ; [#uses=9 type=i32] [debug line = 55:13]
  %tmp_52 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %wv_load_1, i32 6, i32 31), !dbg !156 ; [#uses=1 type=i26] [debug line = 55:13]
  %tmp_89 = trunc i32 %wv_load_1 to i6            ; [#uses=1 type=i6]
  %tmp_54 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_89, i26 %tmp_52), !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_55 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %wv_load_1, i32 11, i32 31), !dbg !156 ; [#uses=1 type=i21] [debug line = 55:13]
  %tmp_90 = trunc i32 %wv_load_1 to i11           ; [#uses=1 type=i11]
  %tmp_57 = call i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11 %tmp_90, i21 %tmp_55), !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_58 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %wv_load_1, i32 25, i32 31), !dbg !156 ; [#uses=1 type=i7] [debug line = 55:13]
  %tmp_91 = trunc i32 %wv_load_1 to i25           ; [#uses=1 type=i25]
  %tmp_60 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 %tmp_91, i7 %tmp_58), !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp5 = xor i32 %tmp_60, %tmp_57, !dbg !156     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_62 = xor i32 %tmp5, %tmp_54, !dbg !156     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv_load_2 = load i32* %wv_addr_2, align 4, !dbg !156 ; [#uses=2 type=i32] [debug line = 55:13]
  %tmp_63 = and i32 %wv_load_2, %wv_load_1, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_64 = xor i32 %wv_load_1, -1, !dbg !156     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv_load_3 = load i32* %wv_addr_3, align 8, !dbg !156 ; [#uses=2 type=i32] [debug line = 55:13]
  %tmp_s = and i32 %wv_load_3, %tmp_64, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_65 = xor i32 %tmp_s, %tmp_63, !dbg !156    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp_66 = zext i7 %j_3 to i64, !dbg !156        ; [#uses=2 type=i64] [debug line = 55:13]
  %SHA256_sha256_k_add = getelementptr inbounds [64 x i32]* @SHA256_sha256_k, i64 0, i64 %tmp_66, !dbg !156 ; [#uses=1 type=i32*] [debug line = 55:13]
  %SHA256_sha256_k_loa = load i32* %SHA256_sha256_k_add, align 4, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %w_addr_6 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp_66, !dbg !156 ; [#uses=1 type=i32*] [debug line = 55:13]
  %w_load_4 = load i32* %w_addr_6, align 4, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp8 = add i32 %SHA256_sha256_k_loa, %wv_load, !dbg !156 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp10 = add i32 %tmp_62, %tmp_65, !dbg !156    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp9 = add i32 %tmp10, %w_load_4, !dbg !156    ; [#uses=1 type=i32] [debug line = 55:13]
  %t1 = add i32 %tmp9, %tmp8, !dbg !156           ; [#uses=2 type=i32] [debug line = 55:13]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !185), !dbg !156 ; [debug line = 55:13] [debug variable = t1]
  %wv_load_4 = load i32* %wv_addr_4, align 16, !dbg !161 ; [#uses=8 type=i32] [debug line = 57:13]
  %tmp_67 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %wv_load_4, i32 2, i32 31), !dbg !161 ; [#uses=1 type=i30] [debug line = 57:13]
  %tmp_92 = trunc i32 %wv_load_4 to i2            ; [#uses=1 type=i2]
  %tmp_68 = call i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2 %tmp_92, i30 %tmp_67), !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_69 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %wv_load_4, i32 13, i32 31), !dbg !161 ; [#uses=1 type=i19] [debug line = 57:13]
  %tmp_93 = trunc i32 %wv_load_4 to i13           ; [#uses=1 type=i13]
  %tmp_70 = call i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13 %tmp_93, i19 %tmp_69), !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_72 = call i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32 %wv_load_4, i32 22, i32 31), !dbg !161 ; [#uses=1 type=i10] [debug line = 57:13]
  %tmp_94 = trunc i32 %wv_load_4 to i22           ; [#uses=1 type=i22]
  %tmp_73 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 %tmp_94, i10 %tmp_72), !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp11 = xor i32 %tmp_73, %tmp_70, !dbg !161    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_75 = xor i32 %tmp11, %tmp_68, !dbg !161    ; [#uses=1 type=i32] [debug line = 57:13]
  %wv_load_5 = load i32* %wv_addr_5, align 4, !dbg !161 ; [#uses=3 type=i32] [debug line = 57:13]
  %wv_load_6 = load i32* %wv_addr_6, align 8, !dbg !161 ; [#uses=3 type=i32] [debug line = 57:13]
  %tmp_76 = and i32 %wv_load_6, %wv_load_5, !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_77 = xor i32 %wv_load_6, %wv_load_5, !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_78 = and i32 %wv_load_4, %tmp_77, !dbg !161 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp_79 = xor i32 %tmp_78, %tmp_76, !dbg !161   ; [#uses=1 type=i32] [debug line = 57:13]
  store i32 %wv_load_3, i32* %wv_addr, align 4, !dbg !186 ; [debug line = 58:13]
  store i32 %wv_load_2, i32* %wv_addr_3, align 8, !dbg !187 ; [debug line = 59:13]
  store i32 %wv_load_1, i32* %wv_addr_2, align 4, !dbg !188 ; [debug line = 60:13]
  %wv_load_7 = load i32* %wv_addr_7, align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 61:13]
  %tmp_80 = add i32 %wv_load_7, %t1, !dbg !162    ; [#uses=1 type=i32] [debug line = 61:13]
  store i32 %tmp_80, i32* %wv_addr_1, align 16, !dbg !162 ; [debug line = 61:13]
  store i32 %wv_load_6, i32* %wv_addr_7, align 4, !dbg !189 ; [debug line = 62:13]
  store i32 %wv_load_5, i32* %wv_addr_6, align 8, !dbg !190 ; [debug line = 63:13]
  store i32 %wv_load_4, i32* %wv_addr_5, align 4, !dbg !191 ; [debug line = 64:13]
  %tmp12 = add i32 %tmp_75, %tmp_79, !dbg !192    ; [#uses=1 type=i32] [debug line = 65:13]
  %tmp_81 = add i32 %tmp12, %t1, !dbg !192        ; [#uses=1 type=i32] [debug line = 65:13]
  store i32 %tmp_81, i32* %wv_addr_4, align 16, !dbg !192 ; [debug line = 65:13]
  call void @llvm.dbg.value(metadata !{i7 %j_8}, i64 0, metadata !172), !dbg !182 ; [debug line = 54:29] [debug variable = j]
  br label %.preheader11, !dbg !182               ; [debug line = 54:29]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %j_4 = phi i4 [ %j_9, %5 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %j_4, -8, !dbg !183      ; [#uses=1 type=i1] [debug line = 67:14]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_9 = add i4 %j_4, 1, !dbg !193                ; [#uses=1 type=i4] [debug line = 67:28]
  br i1 %exitcond, label %.loopexit.loopexit, label %5, !dbg !183 ; [debug line = 67:14]

; <label>:5                                       ; preds = %.preheader
  %tmp_82 = zext i4 %j_4 to i64, !dbg !194        ; [#uses=2 type=i64] [debug line = 68:13]
  %wv_addr_9 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp_82, !dbg !194 ; [#uses=1 type=i32*] [debug line = 68:13]
  %wv_load_8 = load i32* %wv_addr_9, align 4, !dbg !194 ; [#uses=1 type=i32] [debug line = 68:13]
  %SHA256_m_h_addr_1 = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_82, !dbg !194 ; [#uses=2 type=i32*] [debug line = 68:13]
  %SHA256_m_h_load_1 = load i32* %SHA256_m_h_addr_1, align 4, !dbg !194 ; [#uses=1 type=i32] [debug line = 68:13]
  %tmp_83 = add i32 %wv_load_8, %SHA256_m_h_load_1, !dbg !194 ; [#uses=1 type=i32] [debug line = 68:13]
  store i32 %tmp_83, i32* %SHA256_m_h_addr_1, align 4, !dbg !194 ; [debug line = 68:13]
  call void @llvm.dbg.value(metadata !{i4 %j_9}, i64 0, metadata !172), !dbg !193 ; [debug line = 67:28] [debug variable = j]
  br label %.preheader, !dbg !193                 ; [debug line = 67:28]

; <label>:6                                       ; preds = %.loopexit
  ret void, !dbg !196                             ; [debug line = 71:1]
}

; [#uses=0]
define void @sha256(i8* %stream_in_V, i32 %num_blocks, [32 x i8]* %digest_out) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_in_V), !map !202
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_blocks), !map !208
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %digest_out), !map !214
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @sha256_str) nounwind
  %num_blocks_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %num_blocks) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %num_blocks_read}, i64 0, metadata !220), !dbg !279 ; [debug line = 129:39] [debug variable = num_blocks]
  %data_buffer = alloca [64 x i8], align 16       ; [#uses=2 type=[64 x i8]*]
  %cipher_m_block = alloca [128 x i8], align 1    ; [#uses=2 type=[128 x i8]*]
  %cipher_m_h = alloca [8 x i32], align 4         ; [#uses=10 type=[8 x i32]*]
  call void @llvm.dbg.declare(metadata !{i8* %stream_in_V}, metadata !280), !dbg !285 ; [debug line = 129:24] [debug variable = stream_in.V]
  call void @llvm.dbg.value(metadata !{i32 %num_blocks}, i64 0, metadata !220), !dbg !279 ; [debug line = 129:39] [debug variable = num_blocks]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %digest_out}, i64 0, metadata !286), !dbg !290 ; [debug line = 129:65] [debug variable = digest_out]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, [7 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !291 ; [debug line = 130:1]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %digest_out, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %digest_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !293 ; [debug line = 132:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %stream_in_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !294 ; [debug line = 133:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %data_buffer}, metadata !295), !dbg !296 ; [debug line = 134:16] [debug variable = data_buffer]
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %cipher_m_block}, metadata !297), !dbg !299 ; [debug line = 136:9] [debug variable = cipher.m_block]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %cipher_m_h}, metadata !300), !dbg !299 ; [debug line = 136:9] [debug variable = cipher.m_h]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %cipher_m_h}, i64 0, metadata !301), !dbg !305 ; [debug line = 73:14@138:2] [debug variable = SHA256.m_h]
  %cipher_m_h_addr = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 0, !dbg !306 ; [#uses=1 type=i32*] [debug line = 75:5@138:2]
  store i32 1779033703, i32* %cipher_m_h_addr, align 4, !dbg !306 ; [debug line = 75:5@138:2]
  %cipher_m_h_addr_1 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 1, !dbg !308 ; [#uses=1 type=i32*] [debug line = 76:5@138:2]
  store i32 -1150833019, i32* %cipher_m_h_addr_1, align 4, !dbg !308 ; [debug line = 76:5@138:2]
  %cipher_m_h_addr_2 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 2, !dbg !309 ; [#uses=1 type=i32*] [debug line = 77:5@138:2]
  store i32 1013904242, i32* %cipher_m_h_addr_2, align 4, !dbg !309 ; [debug line = 77:5@138:2]
  %cipher_m_h_addr_3 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 3, !dbg !310 ; [#uses=1 type=i32*] [debug line = 78:5@138:2]
  store i32 -1521486534, i32* %cipher_m_h_addr_3, align 4, !dbg !310 ; [debug line = 78:5@138:2]
  %cipher_m_h_addr_4 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 4, !dbg !311 ; [#uses=1 type=i32*] [debug line = 79:5@138:2]
  store i32 1359893119, i32* %cipher_m_h_addr_4, align 4, !dbg !311 ; [debug line = 79:5@138:2]
  %cipher_m_h_addr_5 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 5, !dbg !312 ; [#uses=1 type=i32*] [debug line = 80:5@138:2]
  store i32 -1694144372, i32* %cipher_m_h_addr_5, align 4, !dbg !312 ; [debug line = 80:5@138:2]
  %cipher_m_h_addr_6 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 6, !dbg !313 ; [#uses=1 type=i32*] [debug line = 81:5@138:2]
  store i32 528734635, i32* %cipher_m_h_addr_6, align 4, !dbg !313 ; [debug line = 81:5@138:2]
  %cipher_m_h_addr_7 = getelementptr [8 x i32]* %cipher_m_h, i64 0, i64 7, !dbg !314 ; [#uses=1 type=i32*] [debug line = 82:5@138:2]
  store i32 1541459225, i32* %cipher_m_h_addr_7, align 4, !dbg !314 ; [debug line = 82:5@138:2]
  br label %1, !dbg !315                          ; [debug line = 140:6]

; <label>:1                                       ; preds = %3, %0
  %cipher_m_len = phi i32 [ 0, %0 ], [ %cipher_m_len_1, %3 ] ; [#uses=2 type=i32]
  %cipher_m_tot_len = phi i32 [ 0, %0 ], [ %cipher_m_tot_len_1, %3 ] ; [#uses=2 type=i32]
  %block_counter = phi i31 [ 0, %0 ], [ %block_counter_1, %3 ] ; [#uses=2 type=i31]
  %block_counter_cast = zext i31 %block_counter to i32, !dbg !315 ; [#uses=1 type=i32] [debug line = 140:6]
  %tmp = icmp slt i32 %block_counter_cast, %num_blocks_read, !dbg !315 ; [#uses=1 type=i1] [debug line = 140:6]
  %block_counter_1 = add i31 %block_counter, 1, !dbg !317 ; [#uses=1 type=i31] [debug line = 140:49]
  br i1 %tmp, label %.preheader.preheader, label %4, !dbg !315 ; [debug line = 140:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !318                 ; [debug line = 142:7]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %data_index = phi i7 [ %data_index_1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i7]
  %exitcond = icmp eq i7 %data_index, -64, !dbg !318 ; [#uses=1 type=i1] [debug line = 142:7]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %data_index_1 = add i7 %data_index, 1, !dbg !321 ; [#uses=1 type=i7] [debug line = 142:36]
  br i1 %exitcond, label %3, label %2, !dbg !318  ; [debug line = 142:7]

; <label>:2                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i8* %stream_in_V}, i64 0, metadata !322), !dbg !327 ; [debug line = 129:56@143:30] [debug variable = stream<unsigned char>.V]
  %tmp_95 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %stream_in_V), !dbg !330 ; [#uses=1 type=i8] [debug line = 131:9@143:30]
  call void @llvm.dbg.value(metadata !{i8 %tmp_95}, i64 0, metadata !332), !dbg !330 ; [debug line = 131:9@143:30] [debug variable = tmp]
  %tmp_3 = zext i7 %data_index to i64, !dbg !328  ; [#uses=1 type=i64] [debug line = 143:30]
  %data_buffer_addr = getelementptr inbounds [64 x i8]* %data_buffer, i64 0, i64 %tmp_3, !dbg !328 ; [#uses=1 type=i8*] [debug line = 143:30]
  store i8 %tmp_95, i8* %data_buffer_addr, align 1, !dbg !328 ; [debug line = 143:30]
  call void @llvm.dbg.value(metadata !{i7 %data_index_1}, i64 0, metadata !333), !dbg !321 ; [debug line = 142:36] [debug variable = data_index]
  br label %.preheader, !dbg !321                 ; [debug line = 142:36]

; <label>:3                                       ; preds = %.preheader
  %call_ret = call fastcc { i32, i32 } @update(i32 %cipher_m_tot_len, i32 %cipher_m_len, [128 x i8]* %cipher_m_block, [8 x i32]* %cipher_m_h, [64 x i8]* %data_buffer), !dbg !334 ; [#uses=2 type={ i32, i32 }] [debug line = 145:3]
  %cipher_m_tot_len_1 = extractvalue { i32, i32 } %call_ret, 0, !dbg !334 ; [#uses=1 type=i32] [debug line = 145:3]
  %cipher_m_len_1 = extractvalue { i32, i32 } %call_ret, 1, !dbg !334 ; [#uses=1 type=i32] [debug line = 145:3]
  call void @llvm.dbg.value(metadata !{i32 %cipher_m_len_1}, i64 0, metadata !335), !dbg !334 ; [debug line = 145:3] [debug variable = cipher.m_len]
  call void @llvm.dbg.value(metadata !{i32 %cipher_m_tot_len_1}, i64 0, metadata !336), !dbg !334 ; [debug line = 145:3] [debug variable = cipher.m_tot_len]
  call void @llvm.dbg.value(metadata !{i31 %block_counter_1}, i64 0, metadata !337), !dbg !317 ; [debug line = 140:49] [debug variable = block_counter]
  br label %1, !dbg !317                          ; [debug line = 140:49]

; <label>:4                                       ; preds = %1
  call fastcc void @final(i32 %cipher_m_tot_len, i32 %cipher_m_len, [128 x i8]* %cipher_m_block, [8 x i32]* %cipher_m_h, [32 x i8]* %digest_out), !dbg !338 ; [debug line = 147:2]
  ret void, !dbg !339                             ; [debug line = 148:1]
}

; [#uses=1]
declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

; [#uses=13]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=1]
declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

; [#uses=1]
declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

; [#uses=62]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @final(i32 %SHA256_m_tot_len_read, i32 %SHA256_m_len_read, [128 x i8]* nocapture %SHA256_m_block, [8 x i32]* nocapture %SHA256_m_h, [32 x i8]* nocapture %digest) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %digest, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5) ; [#uses=0 type=i32]
  %SHA256_m_len_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %SHA256_m_len_read) ; [#uses=8 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %SHA256_m_len_read_2}, i64 0, metadata !340), !dbg !343 ; [debug line = 110:14] [debug variable = SHA256.m_len]
  %SHA256_m_tot_len_rea = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %SHA256_m_tot_len_read) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %SHA256_m_tot_len_rea}, i64 0, metadata !344), !dbg !343 ; [debug line = 110:14] [debug variable = SHA256.m_tot_len]
  call void @llvm.dbg.value(metadata !{i32 %SHA256_m_tot_len_read}, i64 0, metadata !344), !dbg !343 ; [debug line = 110:14] [debug variable = SHA256.m_tot_len]
  call void @llvm.dbg.value(metadata !{i32 %SHA256_m_len_read}, i64 0, metadata !340), !dbg !343 ; [debug line = 110:14] [debug variable = SHA256.m_len]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256_m_block}, i64 0, metadata !345), !dbg !343 ; [debug line = 110:14] [debug variable = SHA256.m_block]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %SHA256_m_h}, i64 0, metadata !346), !dbg !343 ; [debug line = 110:14] [debug variable = SHA256.m_h]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %digest}, i64 0, metadata !347), !dbg !348 ; [debug line = 110:35] [debug variable = digest]
  %tmp = trunc i32 %SHA256_m_len_read_2 to i6, !dbg !349 ; [#uses=1 type=i6] [debug line = 116:5]
  %tmp_s = icmp ugt i6 %tmp, -9, !dbg !349        ; [#uses=6 type=i1] [debug line = 116:5]
  %block_nb = select i1 %tmp_s, i2 -2, i2 1, !dbg !349 ; [#uses=1 type=i2] [debug line = 116:5]
  call void @llvm.dbg.value(metadata !{i2 %block_nb}, i64 0, metadata !351), !dbg !349 ; [debug line = 116:5] [debug variable = block_nb]
  %tmp_99 = trunc i32 %SHA256_m_len_read_2 to i29, !dbg !352 ; [#uses=1 type=i29] [debug line = 118:5]
  %tmp_100 = trunc i32 %SHA256_m_tot_len_rea to i29, !dbg !352 ; [#uses=1 type=i29] [debug line = 118:5]
  %tmp_101 = trunc i32 %SHA256_m_tot_len_rea to i13 ; [#uses=1 type=i13]
  %tmp_102 = trunc i32 %SHA256_m_len_read_2 to i13 ; [#uses=1 type=i13]
  %tmp_103 = trunc i32 %SHA256_m_tot_len_rea to i21 ; [#uses=1 type=i21]
  %tmp_104 = trunc i32 %SHA256_m_len_read_2 to i21 ; [#uses=1 type=i21]
  %tmp_84 = add i29 %tmp_99, %tmp_100, !dbg !352  ; [#uses=1 type=i29] [debug line = 118:5]
  %tmp_90_cast3 = add i21 %tmp_103, %tmp_104, !dbg !352 ; [#uses=1 type=i21] [debug line = 118:5]
  %tmp_90_cast = add i13 %tmp_101, %tmp_102, !dbg !352 ; [#uses=1 type=i13] [debug line = 118:5]
  %tmp_105 = trunc i32 %SHA256_m_len_read_2 to i5 ; [#uses=1 type=i5]
  %tmp_106 = trunc i32 %SHA256_m_tot_len_rea to i5 ; [#uses=1 type=i5]
  %pm_len_cast_cast = select i1 %tmp_s, i32 128, i32 64 ; [#uses=1 type=i32]
  %tmp_85 = zext i32 %SHA256_m_len_read_2 to i64, !dbg !353 ; [#uses=1 type=i64] [debug line = 120:5]
  %tmp_107 = trunc i32 %SHA256_m_len_read_2 to i9, !dbg !353 ; [#uses=1 type=i9] [debug line = 120:5]
  %length_assign = sub i32 %pm_len_cast_cast, %SHA256_m_len_read_2, !dbg !353 ; [#uses=1 type=i32] [debug line = 120:5]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256_m_block}, i64 0, metadata !354), !dbg !358 ; [debug line = 10:29@120:5] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{i32 %length_assign}, i64 0, metadata !359), !dbg !360 ; [debug line = 10:66@120:5] [debug variable = length]
  br label %1, !dbg !361                          ; [debug line = 12:6@120:5]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i32 [ 0, %0 ], [ %i_3, %2 ]          ; [#uses=3 type=i32]
  %exitcond_i = icmp eq i32 %i_i, %length_assign, !dbg !361 ; [#uses=1 type=i1] [debug line = 12:6@120:5]
  %i_3 = add nsw i32 %i_i, 1, !dbg !364           ; [#uses=1 type=i32] [debug line = 12:21@120:5]
  br i1 %exitcond_i, label %_memset.exit, label %2, !dbg !361 ; [debug line = 12:6@120:5]

; <label>:2                                       ; preds = %1
  %tmp_108 = trunc i32 %i_i to i9                 ; [#uses=1 type=i9]
  %sum_i = add i9 %tmp_108, %tmp_107              ; [#uses=1 type=i9]
  %sum_i_cast = sext i9 %sum_i to i64             ; [#uses=1 type=i64]
  %SHA256_m_block_addr_5 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %sum_i_cast, !dbg !365 ; [#uses=1 type=i8*] [debug line = 13:3@120:5]
  store i8 0, i8* %SHA256_m_block_addr_5, align 1, !dbg !365 ; [debug line = 13:3@120:5]
  call void @llvm.dbg.value(metadata !{i32 %i_3}, i64 0, metadata !367), !dbg !364 ; [debug line = 12:21@120:5] [debug variable = i]
  br label %1, !dbg !364                          ; [debug line = 12:21@120:5]

_memset.exit:                                     ; preds = %1
  %SHA256_m_block_addr = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %tmp_85, !dbg !368 ; [#uses=1 type=i8*] [debug line = 121:5]
  store i8 -128, i8* %SHA256_m_block_addr, align 1, !dbg !368 ; [debug line = 121:5]
  %tmp_86 = add i5 %tmp_106, %tmp_105, !dbg !369  ; [#uses=1 type=i5] [debug line = 122:7]
  %tmp_87 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_86, i3 0), !dbg !369 ; [#uses=1 type=i8] [debug line = 122:7]
  %p_sum1_cast_cast = select i1 %tmp_s, i64 127, i64 63 ; [#uses=1 type=i64]
  %SHA256_m_block_addr_1 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %p_sum1_cast_cast, !dbg !369 ; [#uses=1 type=i8*] [debug line = 122:7]
  store i8 %tmp_87, i8* %SHA256_m_block_addr_1, align 1, !dbg !369 ; [debug line = 122:7]
  %tmp_88 = call i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13 %tmp_90_cast, i32 5, i32 12), !dbg !371 ; [#uses=1 type=i8] [debug line = 122:59]
  %p_sum3_cast_cast = select i1 %tmp_s, i64 126, i64 62 ; [#uses=1 type=i64]
  %SHA256_m_block_addr_2 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %p_sum3_cast_cast, !dbg !371 ; [#uses=1 type=i8*] [debug line = 122:59]
  store i8 %tmp_88, i8* %SHA256_m_block_addr_2, align 1, !dbg !371 ; [debug line = 122:59]
  %tmp_89 = call i8 @_ssdm_op_PartSelect.i8.i21.i32.i32(i21 %tmp_90_cast3, i32 13, i32 20), !dbg !372 ; [#uses=1 type=i8] [debug line = 122:115]
  %p_sum5_cast_cast = select i1 %tmp_s, i64 125, i64 61 ; [#uses=1 type=i64]
  %SHA256_m_block_addr_3 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %p_sum5_cast_cast, !dbg !372 ; [#uses=1 type=i8*] [debug line = 122:115]
  store i8 %tmp_89, i8* %SHA256_m_block_addr_3, align 1, !dbg !372 ; [debug line = 122:115]
  %tmp_90 = call i8 @_ssdm_op_PartSelect.i8.i29.i32.i32(i29 %tmp_84, i32 21, i32 28), !dbg !373 ; [#uses=1 type=i8] [debug line = 122:172]
  %p_sum6_cast_cast = select i1 %tmp_s, i64 124, i64 60 ; [#uses=1 type=i64]
  %SHA256_m_block_addr_4 = getelementptr [128 x i8]* %SHA256_m_block, i64 0, i64 %p_sum6_cast_cast, !dbg !373 ; [#uses=1 type=i8*] [debug line = 122:172]
  store i8 %tmp_90, i8* %SHA256_m_block_addr_4, align 1, !dbg !373 ; [debug line = 122:172]
  call fastcc void @transform([8 x i32]* %SHA256_m_h, [128 x i8]* %SHA256_m_block, i2 %block_nb), !dbg !374 ; [debug line = 123:5]
  br label %3, !dbg !375                          ; [debug line = 124:10]

; <label>:3                                       ; preds = %4, %_memset.exit
  %i = phi i4 [ 0, %_memset.exit ], [ %i_4, %4 ]  ; [#uses=4 type=i4]
  %exitcond = icmp eq i4 %i, -8, !dbg !375        ; [#uses=1 type=i1] [debug line = 124:10]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !377                  ; [#uses=1 type=i4] [debug line = 124:25]
  br i1 %exitcond, label %5, label %4, !dbg !375  ; [debug line = 124:10]

; <label>:4                                       ; preds = %3
  %tmp_91 = zext i4 %i to i64, !dbg !378          ; [#uses=1 type=i64] [debug line = 125:11]
  %SHA256_m_h_addr = getelementptr [8 x i32]* %SHA256_m_h, i64 0, i64 %tmp_91, !dbg !378 ; [#uses=1 type=i32*] [debug line = 125:11]
  %SHA256_m_h_load = load i32* %SHA256_m_h_addr, align 4, !dbg !378 ; [#uses=4 type=i32] [debug line = 125:11]
  %tmp_109 = trunc i32 %SHA256_m_h_load to i8, !dbg !378 ; [#uses=1 type=i8] [debug line = 125:11]
  %tmp_110 = trunc i4 %i to i3                    ; [#uses=1 type=i3]
  %tmp_92 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_110, i2 0), !dbg !378 ; [#uses=4 type=i5] [debug line = 125:11]
  %tmp_93 = zext i5 %tmp_92 to i64, !dbg !378     ; [#uses=1 type=i64] [debug line = 125:11]
  %p_sum = or i5 %tmp_92, 3, !dbg !378            ; [#uses=1 type=i5] [debug line = 125:11]
  %p_sum_cast = zext i5 %p_sum to i64, !dbg !378  ; [#uses=1 type=i64] [debug line = 125:11]
  %digest_addr = getelementptr [32 x i8]* %digest, i64 0, i64 %p_sum_cast, !dbg !378 ; [#uses=1 type=i8*] [debug line = 125:11]
  store i8 %tmp_109, i8* %digest_addr, align 1, !dbg !378 ; [debug line = 125:11]
  %tmp_94 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %SHA256_m_h_load, i32 8, i32 15), !dbg !381 ; [#uses=1 type=i8] [debug line = 125:59]
  %p_sum2 = or i5 %tmp_92, 2, !dbg !381           ; [#uses=1 type=i5] [debug line = 125:59]
  %p_sum2_cast = zext i5 %p_sum2 to i64, !dbg !381 ; [#uses=1 type=i64] [debug line = 125:59]
  %digest_addr_1 = getelementptr [32 x i8]* %digest, i64 0, i64 %p_sum2_cast, !dbg !381 ; [#uses=1 type=i8*] [debug line = 125:59]
  store i8 %tmp_94, i8* %digest_addr_1, align 1, !dbg !381 ; [debug line = 125:59]
  %tmp_95 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %SHA256_m_h_load, i32 16, i32 23), !dbg !382 ; [#uses=1 type=i8] [debug line = 125:111]
  %p_sum4 = or i5 %tmp_92, 1, !dbg !382           ; [#uses=1 type=i5] [debug line = 125:111]
  %p_sum4_cast = zext i5 %p_sum4 to i64, !dbg !382 ; [#uses=1 type=i64] [debug line = 125:111]
  %digest_addr_2 = getelementptr [32 x i8]* %digest, i64 0, i64 %p_sum4_cast, !dbg !382 ; [#uses=1 type=i8*] [debug line = 125:111]
  store i8 %tmp_95, i8* %digest_addr_2, align 1, !dbg !382 ; [debug line = 125:111]
  %tmp_96 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %SHA256_m_h_load, i32 24, i32 31), !dbg !383 ; [#uses=1 type=i8] [debug line = 125:164]
  %digest_addr_3 = getelementptr [32 x i8]* %digest, i64 0, i64 %tmp_93, !dbg !383 ; [#uses=1 type=i8*] [debug line = 125:164]
  store i8 %tmp_96, i8* %digest_addr_3, align 1, !dbg !383 ; [debug line = 125:164]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !384), !dbg !377 ; [debug line = 124:25] [debug variable = i]
  br label %3, !dbg !377                          ; [debug line = 124:25]

; <label>:5                                       ; preds = %3
  ret void, !dbg !385                             ; [debug line = 127:1]
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

; [#uses=16]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i7 @_ssdm_op_Read.ap_auto.i7(i7) {
entry:
  ret i7 %0
}

; [#uses=4]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i2 @_ssdm_op_Read.ap_auto.i2(i2) {
entry:
  ret i2 %0
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=0]
declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_26 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_26
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_27 = trunc i29 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_27
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i21.i32.i32(i21, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.select.i21(i21 %0, i32 %1, i32 %2) ; [#uses=1 type=i21]
  %empty_28 = trunc i21 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_28
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2) ; [#uses=1 type=i13]
  %empty_29 = trunc i13 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_29
}

; [#uses=2]
define weak i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_30 = trunc i32 %empty to i7              ; [#uses=1 type=i7]
  ret i7 %empty_30
}

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_31 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_31
}

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=2]
define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_32 = trunc i32 %empty to i29             ; [#uses=1 type=i29]
  ret i29 %empty_32
}

; [#uses=2]
define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_33 = trunc i32 %empty to i26             ; [#uses=1 type=i26]
  ret i26 %empty_33
}

; [#uses=2]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_34 = trunc i32 %empty to i25             ; [#uses=1 type=i25]
  ret i25 %empty_34
}

; [#uses=2]
define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_35 = trunc i32 %empty to i22             ; [#uses=1 type=i22]
  ret i22 %empty_35
}

; [#uses=2]
define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_36 = trunc i32 %empty to i21             ; [#uses=1 type=i21]
  ret i21 %empty_36
}

; [#uses=1]
define weak i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2) ; [#uses=1 type=i8]
  %empty_37 = trunc i8 %empty to i2               ; [#uses=1 type=i2]
  ret i2 %empty_37
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=2]
define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_38 = trunc i32 %empty to i19             ; [#uses=1 type=i19]
  ret i19 %empty_38
}

; [#uses=0]
declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=2]
define weak i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_39 = trunc i32 %empty to i15             ; [#uses=1 type=i15]
  ret i15 %empty_39
}

; [#uses=2]
define weak i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_40 = trunc i32 %empty to i14             ; [#uses=1 type=i14]
  ret i14 %empty_40
}

; [#uses=2]
define weak i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_41 = trunc i32 %empty to i13             ; [#uses=1 type=i13]
  ret i13 %empty_41
}

; [#uses=0]
declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=2]
define weak i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_42 = trunc i32 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_42
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7                     ; [#uses=1 type=i7]
  %empty_43 = shl i7 1, %empty                    ; [#uses=1 type=i7]
  %empty_44 = and i7 %0, %empty_43                ; [#uses=1 type=i7]
  %empty_45 = icmp ne i7 %empty_44, 0             ; [#uses=1 type=i1]
  ret i1 %empty_45
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8                       ; [#uses=1 type=i8]
  %empty_46 = zext i3 %1 to i8                    ; [#uses=1 type=i8]
  %empty_47 = shl i8 %empty, 3                    ; [#uses=1 type=i8]
  %empty_48 = or i8 %empty_47, %empty_46          ; [#uses=1 type=i8]
  ret i8 %empty_48
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2, i6) nounwind readnone {
entry:
  %empty = zext i2 %0 to i8                       ; [#uses=1 type=i8]
  %empty_49 = zext i6 %1 to i8                    ; [#uses=1 type=i8]
  %empty_50 = shl i8 %empty, 6                    ; [#uses=1 type=i8]
  %empty_51 = or i8 %empty_50, %empty_49          ; [#uses=1 type=i8]
  ret i8 %empty_51
}

; [#uses=1]
define weak i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1, i6) nounwind readnone {
entry:
  %empty = zext i1 %0 to i7                       ; [#uses=1 type=i7]
  %empty_52 = zext i6 %1 to i7                    ; [#uses=1 type=i7]
  %empty_53 = shl i7 %empty, 6                    ; [#uses=1 type=i7]
  %empty_54 = or i7 %empty_53, %empty_52          ; [#uses=1 type=i7]
  ret i7 %empty_54
}

; [#uses=1]
define weak i7 @_ssdm_op_BitConcatenate.i7.i1.i4.i2(i1, i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %1 to i6                       ; [#uses=1 type=i6]
  %empty_55 = zext i2 %2 to i6                    ; [#uses=1 type=i6]
  %empty_56 = shl i6 %empty, 2                    ; [#uses=1 type=i6]
  %empty_57 = or i6 %empty_56, %empty_55          ; [#uses=1 type=i6]
  %empty_58 = zext i1 %0 to i7                    ; [#uses=1 type=i7]
  %empty_59 = zext i6 %empty_57 to i7             ; [#uses=1 type=i7]
  %empty_60 = shl i7 %empty_58, 6                 ; [#uses=1 type=i7]
  %empty_61 = or i7 %empty_60, %empty_59          ; [#uses=1 type=i7]
  ret i7 %empty_61
}

; [#uses=1]
define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6                       ; [#uses=1 type=i6]
  %empty_62 = zext i2 %1 to i6                    ; [#uses=1 type=i6]
  %empty_63 = shl i6 %empty, 2                    ; [#uses=1 type=i6]
  %empty_64 = or i6 %empty_63, %empty_62          ; [#uses=1 type=i6]
  ret i6 %empty_64
}

; [#uses=1]
define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i1.i1(i4, i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %1 to i2                       ; [#uses=1 type=i2]
  %empty_65 = zext i1 %2 to i2                    ; [#uses=1 type=i2]
  %empty_66 = shl i2 %empty, 1                    ; [#uses=1 type=i2]
  %empty_67 = or i2 %empty_66, %empty_65          ; [#uses=1 type=i2]
  %empty_68 = zext i4 %0 to i6                    ; [#uses=1 type=i6]
  %empty_69 = zext i2 %empty_67 to i6             ; [#uses=1 type=i6]
  %empty_70 = shl i6 %empty_68, 2                 ; [#uses=1 type=i6]
  %empty_71 = or i6 %empty_70, %empty_69          ; [#uses=1 type=i6]
  ret i6 %empty_71
}

; [#uses=1]
define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5                       ; [#uses=1 type=i5]
  %empty_72 = zext i2 %1 to i5                    ; [#uses=1 type=i5]
  %empty_73 = shl i5 %empty, 2                    ; [#uses=1 type=i5]
  %empty_74 = or i5 %empty_73, %empty_72          ; [#uses=1 type=i5]
  ret i5 %empty_74
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; [#uses=1 type=i16]
  %empty_75 = zext i8 %3 to i16                   ; [#uses=1 type=i16]
  %empty_76 = shl i16 %empty, 8                   ; [#uses=1 type=i16]
  %empty_77 = or i16 %empty_76, %empty_75         ; [#uses=1 type=i16]
  %empty_78 = zext i8 %1 to i24                   ; [#uses=1 type=i24]
  %empty_79 = zext i16 %empty_77 to i24           ; [#uses=1 type=i24]
  %empty_80 = shl i24 %empty_78, 16               ; [#uses=1 type=i24]
  %empty_81 = or i24 %empty_80, %empty_79         ; [#uses=1 type=i24]
  %empty_82 = zext i8 %0 to i32                   ; [#uses=1 type=i32]
  %empty_83 = zext i24 %empty_81 to i32           ; [#uses=1 type=i32]
  %empty_84 = shl i32 %empty_82, 24               ; [#uses=1 type=i32]
  %empty_85 = or i32 %empty_84, %empty_83         ; [#uses=1 type=i32]
  ret i32 %empty_85
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7, i25) nounwind readnone {
entry:
  %empty = zext i7 %0 to i32                      ; [#uses=1 type=i32]
  %empty_86 = zext i25 %1 to i32                  ; [#uses=1 type=i32]
  %empty_87 = shl i32 %empty, 25                  ; [#uses=1 type=i32]
  %empty_88 = or i32 %empty_87, %empty_86         ; [#uses=1 type=i32]
  ret i32 %empty_88
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6, i26) nounwind readnone {
entry:
  %empty = zext i6 %0 to i32                      ; [#uses=1 type=i32]
  %empty_89 = zext i26 %1 to i32                  ; [#uses=1 type=i32]
  %empty_90 = shl i32 %empty, 26                  ; [#uses=1 type=i32]
  %empty_91 = or i32 %empty_90, %empty_89         ; [#uses=1 type=i32]
  ret i32 %empty_91
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32                     ; [#uses=1 type=i32]
  %empty_92 = zext i7 %1 to i32                   ; [#uses=1 type=i32]
  %empty_93 = shl i32 %empty, 7                   ; [#uses=1 type=i32]
  %empty_94 = or i32 %empty_93, %empty_92         ; [#uses=1 type=i32]
  ret i32 %empty_94
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone {
entry:
  %empty = zext i22 %0 to i32                     ; [#uses=1 type=i32]
  %empty_95 = zext i10 %1 to i32                  ; [#uses=1 type=i32]
  %empty_96 = shl i32 %empty, 10                  ; [#uses=1 type=i32]
  %empty_97 = or i32 %empty_96, %empty_95         ; [#uses=1 type=i32]
  ret i32 %empty_97
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2, i30) nounwind readnone {
entry:
  %empty = zext i2 %0 to i32                      ; [#uses=1 type=i32]
  %empty_98 = zext i30 %1 to i32                  ; [#uses=1 type=i32]
  %empty_99 = shl i32 %empty, 30                  ; [#uses=1 type=i32]
  %empty_100 = or i32 %empty_99, %empty_98        ; [#uses=1 type=i32]
  ret i32 %empty_100
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19, i13) nounwind readnone {
entry:
  %empty = zext i19 %0 to i32                     ; [#uses=1 type=i32]
  %empty_101 = zext i13 %1 to i32                 ; [#uses=1 type=i32]
  %empty_102 = shl i32 %empty, 13                 ; [#uses=1 type=i32]
  %empty_103 = or i32 %empty_102, %empty_101      ; [#uses=1 type=i32]
  ret i32 %empty_103
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18, i14) nounwind readnone {
entry:
  %empty = zext i18 %0 to i32                     ; [#uses=1 type=i32]
  %empty_104 = zext i14 %1 to i32                 ; [#uses=1 type=i32]
  %empty_105 = shl i32 %empty, 14                 ; [#uses=1 type=i32]
  %empty_106 = or i32 %empty_105, %empty_104      ; [#uses=1 type=i32]
  ret i32 %empty_106
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17, i15) nounwind readnone {
entry:
  %empty = zext i17 %0 to i32                     ; [#uses=1 type=i32]
  %empty_107 = zext i15 %1 to i32                 ; [#uses=1 type=i32]
  %empty_108 = shl i32 %empty, 15                 ; [#uses=1 type=i32]
  %empty_109 = or i32 %empty_108, %empty_107      ; [#uses=1 type=i32]
  ret i32 %empty_109
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13, i19) nounwind readnone {
entry:
  %empty = zext i13 %0 to i32                     ; [#uses=1 type=i32]
  %empty_110 = zext i19 %1 to i32                 ; [#uses=1 type=i32]
  %empty_111 = shl i32 %empty, 19                 ; [#uses=1 type=i32]
  %empty_112 = or i32 %empty_111, %empty_110      ; [#uses=1 type=i32]
  ret i32 %empty_112
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11, i21) nounwind readnone {
entry:
  %empty = zext i11 %0 to i32                     ; [#uses=1 type=i32]
  %empty_113 = zext i21 %1 to i32                 ; [#uses=1 type=i32]
  %empty_114 = shl i32 %empty, 21                 ; [#uses=1 type=i32]
  %empty_115 = or i32 %empty_114, %empty_113      ; [#uses=1 type=i32]
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
!36 = metadata !{i32 790533, metadata !37, metadata !"SHA256.m_len", null, i32 87, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!37 = metadata !{i32 786689, metadata !38, metadata !"this", metadata !39, i32 16777303, metadata !75, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 786478, i32 0, null, metadata !"update", metadata !"update", metadata !"_ZN6SHA2566updateEPKh", metadata !39, i32 87, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !64, metadata !62, i32 88} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786473, metadata !"sha256_stream/src/sha256_stream.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !42, metadata !72}
!42 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !43} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 786434, null, metadata !"SHA256", metadata !44, i32 14, i64 1344, i64 32, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_class_type ]
!44 = metadata !{i32 786473, metadata !"sha256_stream/src/sha256_stream.h", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!45 = metadata !{metadata !46, metadata !48, metadata !49, metadata !54, metadata !59, metadata !64, metadata !65, metadata !69, metadata !74}
!46 = metadata !{i32 786445, metadata !43, metadata !"m_tot_len", metadata !44, i32 32, i64 32, i64 32, i64 0, i32 2, metadata !47} ; [ DW_TAG_member ]
!47 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 786445, metadata !43, metadata !"m_len", metadata !44, i32 33, i64 32, i64 32, i64 32, i32 2, metadata !47} ; [ DW_TAG_member ]
!49 = metadata !{i32 786445, metadata !43, metadata !"m_block", metadata !44, i32 34, i64 1024, i64 8, i64 64, i32 2, metadata !50} ; [ DW_TAG_member ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !51, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 786445, metadata !43, metadata !"m_h", metadata !44, i32 35, i64 256, i64 32, i64 1088, i32 2, metadata !55} ; [ DW_TAG_member ]
!55 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !56, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ]
!56 = metadata !{i32 786454, metadata !43, metadata !"uint32", metadata !44, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!59 = metadata !{i32 786478, i32 0, metadata !43, metadata !"init", metadata !"init", metadata !"_ZN6SHA2564initEv", metadata !44, i32 24, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 24} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !42}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786478, i32 0, metadata !43, metadata !"update", metadata !"update", metadata !"_ZN6SHA2566updateEPKh", metadata !44, i32 26, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 26} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786478, i32 0, metadata !43, metadata !"final", metadata !"final", metadata !"_ZN6SHA2565finalEPh", metadata !44, i32 27, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 27} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{null, metadata !42, metadata !68}
!68 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786478, i32 0, metadata !43, metadata !"transform", metadata !"transform", metadata !"_ZN6SHA2569transformEPKhj", metadata !44, i32 31, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, metadata !62, i32 31} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{null, metadata !42, metadata !72, metadata !47}
!72 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ]
!73 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_const_type ]
!74 = metadata !{i32 786478, i32 0, metadata !43, metadata !"SHA256", metadata !"SHA256", metadata !"", metadata !44, i32 38, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 38} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ]
!77 = metadata !{i32 786438, null, metadata !"SHA256", metadata !44, i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !78, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!78 = metadata !{metadata !48}
!79 = metadata !{i32 87, i32 14, metadata !38, null}
!80 = metadata !{i32 790533, metadata !37, metadata !"SHA256.m_tot_len", null, i32 87, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!81 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ]
!82 = metadata !{i32 786438, null, metadata !"SHA256", metadata !44, i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !83, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!83 = metadata !{metadata !46}
!84 = metadata !{i32 790531, metadata !37, metadata !"SHA256.m_block", null, i32 87, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!85 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ]
!86 = metadata !{i32 786438, null, metadata !"SHA256", metadata !44, i32 14, i64 1024, i64 32, i32 0, i32 0, null, metadata !87, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!87 = metadata !{metadata !49}
!88 = metadata !{i32 790531, metadata !37, metadata !"SHA256.m_h", null, i32 87, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!89 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ]
!90 = metadata !{i32 786438, null, metadata !"SHA256", metadata !44, i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !91, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!91 = metadata !{metadata !54}
!92 = metadata !{i32 786689, metadata !38, metadata !"message", null, i32 87, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !73, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!96 = metadata !{i32 87, i32 41, metadata !38, null}
!97 = metadata !{i32 92, i32 5, metadata !98, null}
!98 = metadata !{i32 786443, metadata !38, i32 88, i32 1, metadata !39, i32 21} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786688, metadata !98, metadata !"tmp_len", metadata !39, i32 90, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 93, i32 5, metadata !98, null}
!101 = metadata !{i32 786688, metadata !98, metadata !"rem_len", metadata !39, i32 90, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 3, i32 29, metadata !103, metadata !106}
!103 = metadata !{i32 786478, i32 0, metadata !39, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_j", metadata !39, i32 3, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 3} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{null, metadata !68, metadata !68, metadata !47}
!106 = metadata !{i32 94, i32 5, metadata !98, null}
!107 = metadata !{i32 786689, metadata !103, metadata !"dst", null, i32 3, metadata !50, i32 0, metadata !106} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 786689, metadata !103, metadata !"src", null, i32 3, metadata !109, i32 0, metadata !106} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !51, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ]
!110 = metadata !{i32 3, i32 49, metadata !103, metadata !106}
!111 = metadata !{i32 786689, metadata !103, metadata !"length", metadata !39, i32 50331651, metadata !47, i32 0, metadata !106} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 3, i32 67, metadata !103, metadata !106}
!113 = metadata !{i32 5, i32 6, metadata !114, metadata !106}
!114 = metadata !{i32 786443, metadata !115, i32 5, i32 2, metadata !39, i32 1} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !103, i32 3, i32 74, metadata !39, i32 0} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 5, i32 21, metadata !114, metadata !106}
!117 = metadata !{i32 6, i32 3, metadata !118, metadata !106}
!118 = metadata !{i32 786443, metadata !114, i32 5, i32 25, metadata !39, i32 2} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786688, metadata !115, metadata !"i", metadata !39, i32 4, metadata !120, i32 0, metadata !106} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 95, i32 5, metadata !98, null}
!122 = metadata !{i32 96, i32 9, metadata !123, null}
!123 = metadata !{i32 786443, metadata !98, i32 95, i32 27, metadata !39, i32 22} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 97, i32 9, metadata !123, null}
!125 = metadata !{i32 99, i32 5, metadata !98, null}
!126 = metadata !{i32 786688, metadata !98, metadata !"new_len", metadata !39, i32 90, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 102, i32 5, metadata !98, null}
!128 = metadata !{i32 103, i32 5, metadata !98, null}
!129 = metadata !{i32 104, i32 5, metadata !98, null}
!130 = metadata !{i32 105, i32 5, metadata !98, null}
!131 = metadata !{i32 3, i32 29, metadata !103, metadata !130}
!132 = metadata !{i32 786689, metadata !103, metadata !"dst", null, i32 3, metadata !50, i32 0, metadata !130} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 786689, metadata !103, metadata !"src", null, i32 3, metadata !109, i32 0, metadata !130} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 3, i32 49, metadata !103, metadata !130}
!135 = metadata !{i32 786689, metadata !103, metadata !"length", metadata !39, i32 50331651, metadata !47, i32 0, metadata !130} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 3, i32 67, metadata !103, metadata !130}
!137 = metadata !{i32 5, i32 6, metadata !114, metadata !130}
!138 = metadata !{i32 5, i32 21, metadata !114, metadata !130}
!139 = metadata !{i32 6, i32 3, metadata !118, metadata !130}
!140 = metadata !{i32 786688, metadata !115, metadata !"i", metadata !39, i32 4, metadata !120, i32 0, metadata !130} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 107, i32 5, metadata !98, null}
!142 = metadata !{i32 108, i32 1, metadata !98, null}
!143 = metadata !{i32 790535, metadata !37, metadata !"SHA256.m_len", null, i32 87, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!144 = metadata !{i32 786689, metadata !145, metadata !"block_nb", metadata !39, i32 50331683, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 786478, i32 0, null, metadata !"transform", metadata !"transform", metadata !"_ZN6SHA2569transformEPKhj", metadata !39, i32 35, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !69, metadata !62, i32 36} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 35, i32 67, metadata !145, null}
!147 = metadata !{i32 790531, metadata !148, metadata !"SHA256.m_h", null, i32 35, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!148 = metadata !{i32 786689, metadata !145, metadata !"this", metadata !39, i32 16777251, metadata !75, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 35, i32 14, metadata !145, null}
!150 = metadata !{i32 786688, metadata !151, metadata !"w", metadata !39, i32 37, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 786443, metadata !145, i32 36, i32 1, metadata !39, i32 6} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !56, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ]
!153 = metadata !{i32 37, i32 12, metadata !151, null}
!154 = metadata !{i32 786688, metadata !151, metadata !"wv", metadata !39, i32 38, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 38, i32 12, metadata !151, null}
!156 = metadata !{i32 55, i32 13, metadata !157, null}
!157 = metadata !{i32 786443, metadata !158, i32 54, i32 34, metadata !39, i32 17} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !159, i32 54, i32 9, metadata !39, i32 16} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786443, metadata !160, i32 43, i32 42, metadata !39, i32 8} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 786443, metadata !151, i32 43, i32 5, metadata !39, i32 7} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 57, i32 13, metadata !157, null}
!162 = metadata !{i32 61, i32 13, metadata !157, null}
!163 = metadata !{i32 43, i32 10, metadata !160, null}
!164 = metadata !{i32 45, i32 14, metadata !165, null}
!165 = metadata !{i32 786443, metadata !159, i32 45, i32 9, metadata !39, i32 9} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 45, i32 29, metadata !165, null}
!167 = metadata !{i32 48, i32 14, metadata !168, null}
!168 = metadata !{i32 786443, metadata !159, i32 48, i32 9, metadata !39, i32 12} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 46, i32 15, metadata !170, null}
!170 = metadata !{i32 786443, metadata !171, i32 46, i32 13, metadata !39, i32 11} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786443, metadata !165, i32 45, i32 34, metadata !39, i32 10} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 786688, metadata !151, metadata !"j", metadata !39, i32 42, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 51, i32 14, metadata !174, null}
!174 = metadata !{i32 786443, metadata !159, i32 51, i32 9, metadata !39, i32 14} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 49, i32 13, metadata !176, null}
!176 = metadata !{i32 786443, metadata !168, i32 48, i32 35, metadata !39, i32 13} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 48, i32 30, metadata !168, null}
!178 = metadata !{i32 51, i32 28, metadata !174, null}
!179 = metadata !{i32 54, i32 14, metadata !158, null}
!180 = metadata !{i32 52, i32 13, metadata !181, null}
!181 = metadata !{i32 786443, metadata !174, i32 51, i32 33, metadata !39, i32 15} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 54, i32 29, metadata !158, null}
!183 = metadata !{i32 67, i32 14, metadata !184, null}
!184 = metadata !{i32 786443, metadata !159, i32 67, i32 9, metadata !39, i32 18} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786688, metadata !151, metadata !"t1", metadata !39, i32 39, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 58, i32 13, metadata !157, null}
!187 = metadata !{i32 59, i32 13, metadata !157, null}
!188 = metadata !{i32 60, i32 13, metadata !157, null}
!189 = metadata !{i32 62, i32 13, metadata !157, null}
!190 = metadata !{i32 63, i32 13, metadata !157, null}
!191 = metadata !{i32 64, i32 13, metadata !157, null}
!192 = metadata !{i32 65, i32 13, metadata !157, null}
!193 = metadata !{i32 67, i32 28, metadata !184, null}
!194 = metadata !{i32 68, i32 13, metadata !195, null}
!195 = metadata !{i32 786443, metadata !184, i32 67, i32 33, metadata !39, i32 19} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 71, i32 1, metadata !151, null}
!197 = metadata !{i32 786689, metadata !145, metadata !"message", null, i32 35, metadata !198, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !73, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ]
!199 = metadata !{i32 35, i32 45, metadata !145, null}
!200 = metadata !{i32 43, i32 37, metadata !160, null}
!201 = metadata !{i32 786688, metadata !151, metadata !"i", metadata !39, i32 41, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{metadata !203}
!203 = metadata !{i32 0, i32 7, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"stream_in.V", metadata !206, metadata !"unsigned char", i32 0, i32 7}
!206 = metadata !{metadata !207}
!207 = metadata !{i32 0, i32 0, i32 1}
!208 = metadata !{metadata !209}
!209 = metadata !{i32 0, i32 31, metadata !210}
!210 = metadata !{metadata !211}
!211 = metadata !{metadata !"num_blocks", metadata !212, metadata !"int", i32 0, i32 31}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 0, i32 0}
!214 = metadata !{metadata !215}
!215 = metadata !{i32 0, i32 7, metadata !216}
!216 = metadata !{metadata !217}
!217 = metadata !{metadata !"digest_out", metadata !218, metadata !"unsigned char", i32 0, i32 7}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 0, i32 31, i32 1}
!220 = metadata !{i32 786689, metadata !221, metadata !"num_blocks", metadata !39, i32 33554561, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 786478, i32 0, metadata !39, metadata !"sha256", metadata !"sha256", metadata !"_Z6sha256N3hls6streamIhEEiPh", metadata !39, i32 129, metadata !222, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{null, metadata !224, metadata !120, metadata !68}
!224 = metadata !{i32 786454, null, metadata !"mem_stream", metadata !39, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_typedef ]
!225 = metadata !{i32 786434, metadata !226, metadata !"stream<unsigned char>", metadata !227, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !228, i32 0, null, metadata !277} ; [ DW_TAG_class_type ]
!226 = metadata !{i32 786489, null, metadata !"hls", metadata !227, i32 69} ; [ DW_TAG_namespace ]
!227 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!228 = metadata !{metadata !229, metadata !230, metadata !234, metadata !240, metadata !245, metadata !249, metadata !253, metadata !257, metadata !262, metadata !263, metadata !264, metadata !267, metadata !270, metadata !271, metadata !274}
!229 = metadata !{i32 786445, metadata !225, metadata !"V", metadata !227, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ]
!230 = metadata !{i32 786478, i32 0, metadata !225, metadata !"stream", metadata !"stream", metadata !"", metadata !227, i32 83, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 83} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{null, metadata !233}
!233 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !225} ; [ DW_TAG_pointer_type ]
!234 = metadata !{i32 786478, i32 0, metadata !225, metadata !"stream", metadata !"stream", metadata !"", metadata !227, i32 86, metadata !235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 86} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{null, metadata !233, metadata !237}
!237 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !238} ; [ DW_TAG_pointer_type ]
!238 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !239} ; [ DW_TAG_const_type ]
!239 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!240 = metadata !{i32 786478, i32 0, metadata !225, metadata !"stream", metadata !"stream", metadata !"", metadata !227, i32 91, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 91} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{null, metadata !233, metadata !243}
!243 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !244} ; [ DW_TAG_reference_type ]
!244 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_const_type ]
!245 = metadata !{i32 786478, i32 0, metadata !225, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !227, i32 94, metadata !246, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 94} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!247 = metadata !{metadata !248, metadata !233, metadata !243}
!248 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_reference_type ]
!249 = metadata !{i32 786478, i32 0, metadata !225, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !227, i32 101, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 101} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!251 = metadata !{null, metadata !233, metadata !252}
!252 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_reference_type ]
!253 = metadata !{i32 786478, i32 0, metadata !225, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !227, i32 105, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 105} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{null, metadata !233, metadata !256}
!256 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_reference_type ]
!257 = metadata !{i32 786478, i32 0, metadata !225, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !227, i32 112, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 112} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{metadata !260, metadata !261}
!260 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!261 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !244} ; [ DW_TAG_pointer_type ]
!262 = metadata !{i32 786478, i32 0, metadata !225, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !227, i32 117, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 117} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786478, i32 0, metadata !225, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !227, i32 123, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 123} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786478, i32 0, metadata !225, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !227, i32 129, metadata !265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!266 = metadata !{metadata !51, metadata !233}
!267 = metadata !{i32 786478, i32 0, metadata !225, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !227, i32 136, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 136} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{metadata !260, metadata !233, metadata !252}
!270 = metadata !{i32 786478, i32 0, metadata !225, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !227, i32 144, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 144} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786478, i32 0, metadata !225, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !227, i32 150, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 150} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !260, metadata !233, metadata !256}
!274 = metadata !{i32 786478, i32 0, metadata !225, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !227, i32 157, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 157} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{metadata !47, metadata !233}
!277 = metadata !{metadata !278}
!278 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !51, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!279 = metadata !{i32 129, i32 39, metadata !221, null}
!280 = metadata !{i32 790531, metadata !281, metadata !"stream_in.V", null, i32 129, metadata !283, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!281 = metadata !{i32 786689, metadata !221, metadata !"stream_in", metadata !39, i32 16777345, metadata !282, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!282 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_reference_type ]
!283 = metadata !{i32 786438, metadata !226, metadata !"stream<unsigned char>", metadata !227, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !284, i32 0, null, metadata !277} ; [ DW_TAG_class_field_type ]
!284 = metadata !{metadata !229}
!285 = metadata !{i32 129, i32 24, metadata !221, null}
!286 = metadata !{i32 786689, metadata !221, metadata !"digest_out", null, i32 129, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!287 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !51, metadata !288, i32 0, i32 0} ; [ DW_TAG_array_type ]
!288 = metadata !{metadata !289}
!289 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!290 = metadata !{i32 129, i32 65, metadata !221, null}
!291 = metadata !{i32 130, i32 1, metadata !292, null}
!292 = metadata !{i32 786443, metadata !221, i32 129, i32 80, metadata !39, i32 28} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 132, i32 1, metadata !292, null}
!294 = metadata !{i32 133, i32 1, metadata !292, null}
!295 = metadata !{i32 786688, metadata !292, metadata !"data_buffer", metadata !39, i32 134, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!296 = metadata !{i32 134, i32 16, metadata !292, null}
!297 = metadata !{i32 790529, metadata !298, metadata !"cipher.m_block", null, i32 136, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!298 = metadata !{i32 786688, metadata !292, metadata !"cipher", metadata !39, i32 136, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 136, i32 9, metadata !292, null}
!300 = metadata !{i32 790529, metadata !298, metadata !"cipher.m_h", null, i32 136, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!301 = metadata !{i32 790531, metadata !302, metadata !"SHA256.m_h", null, i32 73, metadata !89, i32 0, metadata !304} ; [ DW_TAG_arg_variable_field ]
!302 = metadata !{i32 786689, metadata !303, metadata !"this", metadata !39, i32 16777289, metadata !75, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!303 = metadata !{i32 786478, i32 0, null, metadata !"init", metadata !"init", metadata !"_ZN6SHA2564initEv", metadata !39, i32 73, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !59, metadata !62, i32 74} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 138, i32 2, metadata !292, null}
!305 = metadata !{i32 73, i32 14, metadata !303, metadata !304}
!306 = metadata !{i32 75, i32 5, metadata !307, metadata !304}
!307 = metadata !{i32 786443, metadata !303, i32 74, i32 1, metadata !39, i32 20} ; [ DW_TAG_lexical_block ]
!308 = metadata !{i32 76, i32 5, metadata !307, metadata !304}
!309 = metadata !{i32 77, i32 5, metadata !307, metadata !304}
!310 = metadata !{i32 78, i32 5, metadata !307, metadata !304}
!311 = metadata !{i32 79, i32 5, metadata !307, metadata !304}
!312 = metadata !{i32 80, i32 5, metadata !307, metadata !304}
!313 = metadata !{i32 81, i32 5, metadata !307, metadata !304}
!314 = metadata !{i32 82, i32 5, metadata !307, metadata !304}
!315 = metadata !{i32 140, i32 6, metadata !316, null}
!316 = metadata !{i32 786443, metadata !292, i32 140, i32 2, metadata !39, i32 29} ; [ DW_TAG_lexical_block ]
!317 = metadata !{i32 140, i32 49, metadata !316, null}
!318 = metadata !{i32 142, i32 7, metadata !319, null}
!319 = metadata !{i32 786443, metadata !320, i32 142, i32 3, metadata !39, i32 31} ; [ DW_TAG_lexical_block ]
!320 = metadata !{i32 786443, metadata !316, i32 140, i32 65, metadata !39, i32 30} ; [ DW_TAG_lexical_block ]
!321 = metadata !{i32 142, i32 36, metadata !319, null}
!322 = metadata !{i32 790531, metadata !323, metadata !"stream<unsigned char>.V", null, i32 129, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!323 = metadata !{i32 786689, metadata !324, metadata !"this", metadata !227, i32 16777345, metadata !325, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!324 = metadata !{i32 786478, i32 0, metadata !226, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !227, i32 129, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !264, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!325 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !225} ; [ DW_TAG_pointer_type ]
!326 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !283} ; [ DW_TAG_pointer_type ]
!327 = metadata !{i32 129, i32 56, metadata !324, metadata !328}
!328 = metadata !{i32 143, i32 30, metadata !329, null}
!329 = metadata !{i32 786443, metadata !319, i32 142, i32 49, metadata !39, i32 32} ; [ DW_TAG_lexical_block ]
!330 = metadata !{i32 131, i32 9, metadata !331, metadata !328}
!331 = metadata !{i32 786443, metadata !324, i32 129, i32 63, metadata !227, i32 33} ; [ DW_TAG_lexical_block ]
!332 = metadata !{i32 786688, metadata !331, metadata !"tmp", metadata !227, i32 130, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!333 = metadata !{i32 786688, metadata !292, metadata !"data_index", metadata !39, i32 135, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!334 = metadata !{i32 145, i32 3, metadata !320, null}
!335 = metadata !{i32 790529, metadata !298, metadata !"cipher.m_len", null, i32 136, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!336 = metadata !{i32 790529, metadata !298, metadata !"cipher.m_tot_len", null, i32 136, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!337 = metadata !{i32 786688, metadata !292, metadata !"block_counter", metadata !39, i32 135, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!338 = metadata !{i32 147, i32 2, metadata !292, null}
!339 = metadata !{i32 148, i32 1, metadata !292, null}
!340 = metadata !{i32 790533, metadata !341, metadata !"SHA256.m_len", null, i32 110, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!341 = metadata !{i32 786689, metadata !342, metadata !"this", metadata !39, i32 16777326, metadata !75, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!342 = metadata !{i32 786478, i32 0, null, metadata !"final", metadata !"final", metadata !"_ZN6SHA2565finalEPh", metadata !39, i32 110, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !65, metadata !62, i32 111} ; [ DW_TAG_subprogram ]
!343 = metadata !{i32 110, i32 14, metadata !342, null}
!344 = metadata !{i32 790533, metadata !341, metadata !"SHA256.m_tot_len", null, i32 110, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!345 = metadata !{i32 790531, metadata !341, metadata !"SHA256.m_block", null, i32 110, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!346 = metadata !{i32 790531, metadata !341, metadata !"SHA256.m_h", null, i32 110, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!347 = metadata !{i32 786689, metadata !342, metadata !"digest", null, i32 110, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!348 = metadata !{i32 110, i32 35, metadata !342, null}
!349 = metadata !{i32 116, i32 5, metadata !350, null}
!350 = metadata !{i32 786443, metadata !342, i32 111, i32 1, metadata !39, i32 23} ; [ DW_TAG_lexical_block ]
!351 = metadata !{i32 786688, metadata !350, metadata !"block_nb", metadata !39, i32 112, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!352 = metadata !{i32 118, i32 5, metadata !350, null}
!353 = metadata !{i32 120, i32 5, metadata !350, null}
!354 = metadata !{i32 786689, metadata !355, metadata !"dst", null, i32 10, metadata !50, i32 0, metadata !353} ; [ DW_TAG_arg_variable ]
!355 = metadata !{i32 786478, i32 0, metadata !39, metadata !"_memset", metadata !"_memset", metadata !"_Z7_memsetPhhj", metadata !39, i32 10, metadata !356, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 10} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!357 = metadata !{null, metadata !68, metadata !51, metadata !47}
!358 = metadata !{i32 10, i32 29, metadata !355, metadata !353}
!359 = metadata !{i32 786689, metadata !355, metadata !"length", metadata !39, i32 50331658, metadata !47, i32 0, metadata !353} ; [ DW_TAG_arg_variable ]
!360 = metadata !{i32 10, i32 66, metadata !355, metadata !353}
!361 = metadata !{i32 12, i32 6, metadata !362, metadata !353}
!362 = metadata !{i32 786443, metadata !363, i32 12, i32 2, metadata !39, i32 4} ; [ DW_TAG_lexical_block ]
!363 = metadata !{i32 786443, metadata !355, i32 10, i32 73, metadata !39, i32 3} ; [ DW_TAG_lexical_block ]
!364 = metadata !{i32 12, i32 21, metadata !362, metadata !353}
!365 = metadata !{i32 13, i32 3, metadata !366, metadata !353}
!366 = metadata !{i32 786443, metadata !362, i32 12, i32 25, metadata !39, i32 5} ; [ DW_TAG_lexical_block ]
!367 = metadata !{i32 786688, metadata !363, metadata !"i", metadata !39, i32 11, metadata !120, i32 0, metadata !353} ; [ DW_TAG_auto_variable ]
!368 = metadata !{i32 121, i32 5, metadata !350, null}
!369 = metadata !{i32 122, i32 7, metadata !370, null}
!370 = metadata !{i32 786443, metadata !350, i32 122, i32 5, metadata !39, i32 24} ; [ DW_TAG_lexical_block ]
!371 = metadata !{i32 122, i32 59, metadata !370, null}
!372 = metadata !{i32 122, i32 115, metadata !370, null}
!373 = metadata !{i32 122, i32 172, metadata !370, null}
!374 = metadata !{i32 123, i32 5, metadata !350, null}
!375 = metadata !{i32 124, i32 10, metadata !376, null}
!376 = metadata !{i32 786443, metadata !350, i32 124, i32 5, metadata !39, i32 25} ; [ DW_TAG_lexical_block ]
!377 = metadata !{i32 124, i32 25, metadata !376, null}
!378 = metadata !{i32 125, i32 11, metadata !379, null}
!379 = metadata !{i32 786443, metadata !380, i32 125, i32 9, metadata !39, i32 27} ; [ DW_TAG_lexical_block ]
!380 = metadata !{i32 786443, metadata !376, i32 124, i32 30, metadata !39, i32 26} ; [ DW_TAG_lexical_block ]
!381 = metadata !{i32 125, i32 59, metadata !379, null}
!382 = metadata !{i32 125, i32 111, metadata !379, null}
!383 = metadata !{i32 125, i32 164, metadata !379, null}
!384 = metadata !{i32 786688, metadata !350, metadata !"i", metadata !39, i32 115, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!385 = metadata !{i32 127, i32 1, metadata !350, null}
