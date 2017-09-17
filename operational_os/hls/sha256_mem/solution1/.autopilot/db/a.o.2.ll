; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_mem/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sha256_mem.str = internal unnamed_addr constant [11 x i8] c"sha256_mem\00" ; [#uses=1 type=[11 x i8]*]
@"SHA256::sha256_k" = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=2 type=[64 x i32]*]
@.str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=2 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=2 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=42 type=[1 x i8]*]
@.str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=2 type=[8 x i8]*]

; [#uses=0]
define void @sha256_mem([131072 x i8]* %mem, i32 %message_addr, i32 %num_blocks, [32 x i8]* %digest_out, i1* %digest_valid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([131072 x i8]* %mem) nounwind, !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %message_addr) nounwind, !map !88
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_blocks) nounwind, !map !94
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %digest_out) nounwind, !map !98
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %digest_valid) nounwind, !map !104
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @sha256_mem.str) nounwind
  %data_buffer = alloca [64 x i8], align 16       ; [#uses=2 type=[64 x i8]*]
  %cipher.m_block = alloca [128 x i8], align 1    ; [#uses=2 type=[128 x i8]*]
  %cipher.m_h = alloca [8 x i32], align 4         ; [#uses=10 type=[8 x i32]*]
  call void @llvm.dbg.value(metadata !{[131072 x i8]* %mem}, i64 0, metadata !110), !dbg !119 ; [debug line = 129:31] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %message_addr}, i64 0, metadata !120), !dbg !121 ; [debug line = 129:58] [debug variable = message_addr]
  call void @llvm.dbg.value(metadata !{i32 %num_blocks}, i64 0, metadata !122), !dbg !123 ; [debug line = 129:85] [debug variable = num_blocks]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %digest_out}, i64 0, metadata !124), !dbg !128 ; [debug line = 129:111] [debug variable = digest_out]
  call void @llvm.dbg.value(metadata !{i1* %digest_valid}, i64 0, metadata !129), !dbg !130 ; [debug line = 129:133] [debug variable = digest_valid]
  call void (...)* @_ssdm_op_SpecInterface(i1* %digest_valid, [8 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !131 ; [debug line = 130:1]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %digest_out, [8 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %message_addr, [7 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !133 ; [debug line = 132:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %message_addr, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !134 ; [debug line = 133:1]
  call void (...)* @_ssdm_op_SpecInterface([131072 x i8]* %mem, [6 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 131072, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, [7 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !135 ; [debug line = 135:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !136 ; [debug line = 136:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %data_buffer}, metadata !137), !dbg !139 ; [debug line = 137:16] [debug variable = data_buffer]
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %cipher.m_block}, metadata !140), !dbg !144 ; [debug line = 139:9] [debug variable = cipher.m_block]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %cipher.m_h}, metadata !145), !dbg !144 ; [debug line = 139:9] [debug variable = cipher.m_h]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %cipher.m_h}, i64 0, metadata !148), !dbg !154 ; [debug line = 73:14@141:2] [debug variable = SHA256.m_h]
  %SHA256.m_h.assign.addr = getelementptr [8 x i32]* %cipher.m_h, i64 0, i64 0, !dbg !155 ; [#uses=1 type=i32*] [debug line = 75:5@141:2]
  store i32 1779033703, i32* %SHA256.m_h.assign.addr, align 4, !dbg !155 ; [debug line = 75:5@141:2]
  %SHA256.m_h.assign.addr.1 = getelementptr [8 x i32]* %cipher.m_h, i64 0, i64 1, !dbg !157 ; [#uses=1 type=i32*] [debug line = 76:5@141:2]
  store i32 -1150833019, i32* %SHA256.m_h.assign.addr.1, align 4, !dbg !157 ; [debug line = 76:5@141:2]
  %SHA256.m_h.assign.addr.2 = getelementptr [8 x i32]* %cipher.m_h, i64 0, i64 2, !dbg !158 ; [#uses=1 type=i32*] [debug line = 77:5@141:2]
  store i32 1013904242, i32* %SHA256.m_h.assign.addr.2, align 4, !dbg !158 ; [debug line = 77:5@141:2]
  %SHA256.m_h.assign.addr.3 = getelementptr [8 x i32]* %cipher.m_h, i64 0, i64 3, !dbg !159 ; [#uses=1 type=i32*] [debug line = 78:5@141:2]
  store i32 -1521486534, i32* %SHA256.m_h.assign.addr.3, align 4, !dbg !159 ; [debug line = 78:5@141:2]
  %SHA256.m_h.assign.addr.4 = getelementptr [8 x i32]* %cipher.m_h, i64 0, i64 4, !dbg !160 ; [#uses=1 type=i32*] [debug line = 79:5@141:2]
  store i32 1359893119, i32* %SHA256.m_h.assign.addr.4, align 4, !dbg !160 ; [debug line = 79:5@141:2]
  %SHA256.m_h.assign.addr.5 = getelementptr [8 x i32]* %cipher.m_h, i64 0, i64 5, !dbg !161 ; [#uses=1 type=i32*] [debug line = 80:5@141:2]
  store i32 -1694144372, i32* %SHA256.m_h.assign.addr.5, align 4, !dbg !161 ; [debug line = 80:5@141:2]
  %SHA256.m_h.assign.addr.6 = getelementptr [8 x i32]* %cipher.m_h, i64 0, i64 6, !dbg !162 ; [#uses=1 type=i32*] [debug line = 81:5@141:2]
  store i32 528734635, i32* %SHA256.m_h.assign.addr.6, align 4, !dbg !162 ; [debug line = 81:5@141:2]
  %SHA256.m_h.assign.addr.7 = getelementptr [8 x i32]* %cipher.m_h, i64 0, i64 7, !dbg !163 ; [#uses=1 type=i32*] [debug line = 82:5@141:2]
  store i32 1541459225, i32* %SHA256.m_h.assign.addr.7, align 4, !dbg !163 ; [debug line = 82:5@141:2]
  br label %1, !dbg !164                          ; [debug line = 143:6]

; <label>:1                                       ; preds = %6, %0
  %cipher.m_len = phi i32 [ 0, %0 ], [ %cipher.m_len.1, %6 ] ; [#uses=2 type=i32]
  %cipher.m_tot_len = phi i32 [ 0, %0 ], [ %cipher.m_tot_len.1, %6 ] ; [#uses=2 type=i32]
  %indvars.iv = phi i32 [ 64, %0 ], [ %indvars.iv.next, %6 ] ; [#uses=2 type=i32]
  %block_counter = phi i32 [ 0, %0 ], [ %block_counter.1, %6 ] ; [#uses=2 type=i32]
  %data_index = phi i32 [ 0, %0 ], [ %data_index.2, %6 ] ; [#uses=2 type=i32]
  %exitcond2 = icmp eq i32 %block_counter, %num_blocks, !dbg !164 ; [#uses=1 type=i1] [debug line = 143:6]
  br i1 %exitcond2, label %7, label %2, !dbg !164 ; [debug line = 143:6]

; <label>:2                                       ; preds = %1
  %data_index.2 = add i32 %data_index, 64, !dbg !166 ; [#uses=1 type=i32] [debug line = 146:4]
  call void @llvm.dbg.value(metadata !{i32 %data_index.2}, i64 0, metadata !170), !dbg !166 ; [debug line = 146:4] [debug variable = data_index]
  br label %3, !dbg !172                          ; [debug line = 144:7]

; <label>:3                                       ; preds = %5, %2
  %data_index.1 = phi i32 [ %data_index, %2 ], [ %tmp.3, %5 ] ; [#uses=3 type=i32]
  %buffer_index = phi i7 [ 0, %2 ], [ %buffer_index.1, %5 ] ; [#uses=2 type=i7]
  %exitcond = icmp eq i32 %data_index.1, %indvars.iv, !dbg !172 ; [#uses=1 type=i1] [debug line = 144:7]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %6, label %5, !dbg !172  ; [debug line = 144:7]

; <label>:5                                       ; preds = %3
  %tmp = add i32 %data_index.1, %message_addr, !dbg !173 ; [#uses=1 type=i32] [debug line = 145:4]
  %tmp.1 = zext i32 %tmp to i64, !dbg !173        ; [#uses=1 type=i64] [debug line = 145:4]
  %mem.addr = getelementptr [131072 x i8]* %mem, i64 0, i64 %tmp.1, !dbg !173 ; [#uses=1 type=i8*] [debug line = 145:4]
  %mem.load = load i8* %mem.addr, align 1, !dbg !173 ; [#uses=1 type=i8] [debug line = 145:4]
  %tmp.2 = zext i7 %buffer_index to i64, !dbg !173 ; [#uses=1 type=i64] [debug line = 145:4]
  %data_buffer.addr = getelementptr inbounds [64 x i8]* %data_buffer, i64 0, i64 %tmp.2, !dbg !173 ; [#uses=1 type=i8*] [debug line = 145:4]
  store i8 %mem.load, i8* %data_buffer.addr, align 1, !dbg !173 ; [debug line = 145:4]
  %tmp.3 = add nsw i32 %data_index.1, 1, !dbg !166 ; [#uses=1 type=i32] [debug line = 146:4]
  %buffer_index.1 = add i7 %buffer_index, 1, !dbg !174 ; [#uses=1 type=i7] [debug line = 144:40]
  call void @llvm.dbg.value(metadata !{i7 %buffer_index.1}, i64 0, metadata !175), !dbg !174 ; [debug line = 144:40] [debug variable = buffer_index]
  br label %3, !dbg !174                          ; [debug line = 144:40]

; <label>:6                                       ; preds = %3
  %call.ret = call fastcc { i32, i32 } @"SHA256::update"(i32 %cipher.m_tot_len, i32 %cipher.m_len, [128 x i8]* %cipher.m_block, [8 x i32]* %cipher.m_h, [64 x i8]* %data_buffer) nounwind, !dbg !176 ; [#uses=2 type={ i32, i32 }] [debug line = 148:3]
  %cipher.m_tot_len.1 = extractvalue { i32, i32 } %call.ret, 0, !dbg !176 ; [#uses=1 type=i32] [debug line = 148:3]
  %cipher.m_len.1 = extractvalue { i32, i32 } %call.ret, 1, !dbg !176 ; [#uses=1 type=i32] [debug line = 148:3]
  call void @llvm.dbg.value(metadata !{i32 %cipher.m_len.1}, i64 0, metadata !177), !dbg !176 ; [debug line = 148:3] [debug variable = cipher.m_len]
  call void @llvm.dbg.value(metadata !{i32 %cipher.m_tot_len.1}, i64 0, metadata !180), !dbg !176 ; [debug line = 148:3] [debug variable = cipher.m_tot_len]
  %block_counter.1 = add nsw i32 %block_counter, 1, !dbg !183 ; [#uses=1 type=i32] [debug line = 143:49]
  call void @llvm.dbg.value(metadata !{i32 %block_counter.1}, i64 0, metadata !184), !dbg !183 ; [debug line = 143:49] [debug variable = block_counter]
  %indvars.iv.next = add i32 %indvars.iv, 64, !dbg !183 ; [#uses=1 type=i32] [debug line = 143:49]
  br label %1, !dbg !183                          ; [debug line = 143:49]

; <label>:7                                       ; preds = %1
  %cipher.m_tot_len.lcssa = phi i32 [ %cipher.m_tot_len, %1 ] ; [#uses=1 type=i32]
  %cipher.m_len.lcssa = phi i32 [ %cipher.m_len, %1 ] ; [#uses=1 type=i32]
  call fastcc void @"SHA256::final"(i32 %cipher.m_tot_len.lcssa, i32 %cipher.m_len.lcssa, [128 x i8]* %cipher.m_block, [8 x i32]* %cipher.m_h, [32 x i8]* %digest_out) nounwind, !dbg !185 ; [debug line = 150:2]
  store i1 true, i1* %digest_valid, align 1, !dbg !186 ; [debug line = 151:2]
  ret void, !dbg !187                             ; [debug line = 152:1]
}

; [#uses=59]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=16]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=7]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=1]
declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i7.i32.i32(i7, i32, i32) nounwind readnone

; [#uses=1]
declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

; [#uses=1]
declare i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1, i6) nounwind readnone

; [#uses=0]
declare i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone

; [#uses=1]
declare i6 @_ssdm_op_BitConcatenate.i6.i4.i1.i1(i4, i1, i1) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone

; [#uses=2]
declare i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=1]
define internal fastcc { i32, i32 } @"SHA256::update"(i32 %SHA256.m_tot_len.read, i32 %SHA256.m_len.read, [128 x i8]* nocapture %SHA256.m_block, [8 x i32]* nocapture %SHA256.m_h, [64 x i8]* nocapture %message) {
  call void @llvm.dbg.value(metadata !{i32 %SHA256.m_tot_len.read}, i64 0, metadata !188), !dbg !192 ; [debug line = 87:14] [debug variable = SHA256.m_tot_len]
  call void @llvm.dbg.value(metadata !{i32 %SHA256.m_len.read}, i64 0, metadata !193), !dbg !192 ; [debug line = 87:14] [debug variable = SHA256.m_len]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256.m_block}, i64 0, metadata !195), !dbg !192 ; [debug line = 87:14] [debug variable = SHA256.m_block]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %SHA256.m_h}, i64 0, metadata !197), !dbg !192 ; [debug line = 87:14] [debug variable = SHA256.m_h]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %message}, i64 0, metadata !198), !dbg !200 ; [debug line = 87:41] [debug variable = message]
  %tmp_len = sub i32 64, %SHA256.m_len.read, !dbg !201 ; [#uses=2 type=i32] [debug line = 92:5]
  %tmp_len.cast = trunc i32 %tmp_len to i7, !dbg !201 ; [#uses=1 type=i7] [debug line = 92:5]
  call void @llvm.dbg.value(metadata !{i32 %tmp_len}, i64 0, metadata !203), !dbg !201 ; [debug line = 92:5] [debug variable = tmp_len]
  %tmp = icmp ugt i32 %tmp_len, 64, !dbg !204     ; [#uses=1 type=i1] [debug line = 93:5]
  %rem_len = select i1 %tmp, i7 -64, i7 %tmp_len.cast, !dbg !204 ; [#uses=4 type=i7] [debug line = 93:5]
  call void @llvm.dbg.value(metadata !{i7 %rem_len}, i64 0, metadata !205), !dbg !204 ; [debug line = 93:5] [debug variable = rem_len]
  %tmp.8.cast = trunc i32 %SHA256.m_len.read to i9, !dbg !206 ; [#uses=1 type=i9] [debug line = 3:29@94:5]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256.m_block}, i64 0, metadata !211), !dbg !206 ; [debug line = 3:29@94:5] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %message}, i64 0, metadata !212), !dbg !213 ; [debug line = 3:49@94:5] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i7 %rem_len}, i64 0, metadata !214), !dbg !215 ; [debug line = 3:67@94:5] [debug variable = length]
  br label %1, !dbg !216                          ; [debug line = 5:6@94:5]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i7 [ 0, %0 ], [ %i, %3 ]             ; [#uses=4 type=i7]
  %exitcond.i = icmp eq i7 %i.i, %rem_len, !dbg !216 ; [#uses=1 type=i1] [debug line = 5:6@94:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 64, i64 0) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.exit, label %3, !dbg !216 ; [debug line = 5:6@94:5]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i7 %i.i to i64, !dbg !219         ; [#uses=1 type=i64] [debug line = 6:3@94:5]
  %tmp.i.cast = zext i7 %i.i to i9, !dbg !219     ; [#uses=1 type=i9] [debug line = 6:3@94:5]
  %message.addr = getelementptr [64 x i8]* %message, i64 0, i64 %tmp.i, !dbg !219 ; [#uses=1 type=i8*] [debug line = 6:3@94:5]
  %message.load = load i8* %message.addr, align 1, !dbg !219 ; [#uses=1 type=i8] [debug line = 6:3@94:5]
  %sum.i = add i9 %tmp.i.cast, %tmp.8.cast        ; [#uses=1 type=i9]
  %sum.i.cast = zext i9 %sum.i to i64             ; [#uses=1 type=i64]
  %SHA256.m_block.addr = getelementptr [128 x i8]* %SHA256.m_block, i64 0, i64 %sum.i.cast, !dbg !219 ; [#uses=1 type=i8*] [debug line = 6:3@94:5]
  store i8 %message.load, i8* %SHA256.m_block.addr, align 1, !dbg !219 ; [debug line = 6:3@94:5]
  %i = add i7 %i.i, 1, !dbg !221                  ; [#uses=1 type=i7] [debug line = 5:21@94:5]
  call void @llvm.dbg.value(metadata !{i7 %i}, i64 0, metadata !222), !dbg !221 ; [debug line = 5:21@94:5] [debug variable = i]
  br label %1, !dbg !221                          ; [debug line = 5:21@94:5]

_memcpy.exit:                                     ; preds = %1
  %tmp.9 = icmp ugt i32 %SHA256.m_len.read, -65, !dbg !223 ; [#uses=1 type=i1] [debug line = 95:5]
  br i1 %tmp.9, label %4, label %5, !dbg !223     ; [debug line = 95:5]

; <label>:4                                       ; preds = %_memcpy.exit
  %tmp.1 = trunc i32 %SHA256.m_len.read to i6, !dbg !224 ; [#uses=1 type=i6] [debug line = 96:9]
  br label %9, !dbg !226                          ; [debug line = 97:9]

; <label>:5                                       ; preds = %_memcpy.exit
  %new_len = sub i7 -64, %rem_len, !dbg !227      ; [#uses=4 type=i7] [debug line = 99:5]
  %new_len.cast3 = zext i7 %new_len to i8, !dbg !227 ; [#uses=1 type=i8] [debug line = 99:5]
  %rem_len.1 = trunc i7 %new_len to i6, !dbg !227 ; [#uses=2 type=i6] [debug line = 99:5]
  call void @llvm.dbg.value(metadata !{i7 %new_len}, i64 0, metadata !228), !dbg !227 ; [debug line = 99:5] [debug variable = new_len]
  %block_nb = lshr i7 %new_len, 6, !dbg !229      ; [#uses=1 type=i7] [debug line = 100:5]
  call void @llvm.dbg.value(metadata !{i7 %block_nb}, i64 0, metadata !230), !dbg !229 ; [debug line = 100:5] [debug variable = block_nb]
  call fastcc void @"SHA256::transform"([8 x i32]* %SHA256.m_h, [128 x i8]* %SHA256.m_block, i2 1), !dbg !231 ; [debug line = 102:5]
  %block_nb.cast.cast = trunc i7 %block_nb to i1, !dbg !232 ; [#uses=1 type=i1] [debug line = 103:5]
  call fastcc void @"SHA256::transform.1"([8 x i32]* %SHA256.m_h, [64 x i8]* %message, i7 %rem_len, i1 %block_nb.cast.cast), !dbg !232 ; [debug line = 103:5]
  call void @llvm.dbg.value(metadata !{i6 %rem_len.1}, i64 0, metadata !205), !dbg !233 ; [debug line = 104:5] [debug variable = rem_len]
  %tmp.2 = and i7 %new_len, -64, !dbg !234        ; [#uses=1 type=i7] [debug line = 105:5]
  %tmp.3.cast = zext i7 %tmp.2 to i8, !dbg !235   ; [#uses=1 type=i8] [debug line = 3:29@105:5]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256.m_block}, i64 0, metadata !236), !dbg !235 ; [debug line = 3:29@105:5] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %message}, i64 0, metadata !237), !dbg !238 ; [debug line = 3:49@105:5] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i6 %rem_len.1}, i64 0, metadata !239), !dbg !240 ; [debug line = 3:67@105:5] [debug variable = length]
  br label %6, !dbg !241                          ; [debug line = 5:6@105:5]

; <label>:6                                       ; preds = %8, %5
  %i.i1 = phi i6 [ 0, %5 ], [ %i.1, %8 ]          ; [#uses=4 type=i6]
  %exitcond.i2 = icmp eq i6 %i.i1, %rem_len.1, !dbg !241 ; [#uses=1 type=i1] [debug line = 5:6@105:5]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 63, i64 0) ; [#uses=0 type=i32]
  br i1 %exitcond.i2, label %_memcpy.exit8, label %8, !dbg !241 ; [debug line = 5:6@105:5]

; <label>:8                                       ; preds = %6
  %tmp.i3 = zext i6 %i.i1 to i64, !dbg !242       ; [#uses=1 type=i64] [debug line = 6:3@105:5]
  %tmp.i3.cast = zext i6 %i.i1 to i7              ; [#uses=1 type=i7]
  %tmp1 = add i7 %tmp.i3.cast, %rem_len           ; [#uses=1 type=i7]
  %tmp1.cast = zext i7 %tmp1 to i8                ; [#uses=1 type=i8]
  %sum3.i = add i8 %tmp.3.cast, %tmp1.cast        ; [#uses=1 type=i8]
  %sum3.i.cast = zext i8 %sum3.i to i64           ; [#uses=1 type=i64]
  %message.addr.1 = getelementptr [64 x i8]* %message, i64 0, i64 %sum3.i.cast, !dbg !242 ; [#uses=1 type=i8*] [debug line = 6:3@105:5]
  %message.load.1 = load i8* %message.addr.1, align 1, !dbg !242 ; [#uses=1 type=i8] [debug line = 6:3@105:5]
  %SHA256.m_block.addr.1 = getelementptr [128 x i8]* %SHA256.m_block, i64 0, i64 %tmp.i3, !dbg !242 ; [#uses=1 type=i8*] [debug line = 6:3@105:5]
  store i8 %message.load.1, i8* %SHA256.m_block.addr.1, align 1, !dbg !242 ; [debug line = 6:3@105:5]
  %i.1 = add i6 %i.i1, 1, !dbg !243               ; [#uses=1 type=i6] [debug line = 5:21@105:5]
  call void @llvm.dbg.value(metadata !{i6 %i.1}, i64 0, metadata !244), !dbg !243 ; [debug line = 5:21@105:5] [debug variable = i]
  br label %6, !dbg !243                          ; [debug line = 5:21@105:5]

_memcpy.exit8:                                    ; preds = %6
  %tmp.4 = add i8 %new_len.cast3, 64, !dbg !245   ; [#uses=1 type=i8] [debug line = 107:5]
  %tmp.5 = and i8 %tmp.4, -64, !dbg !245          ; [#uses=1 type=i8] [debug line = 107:5]
  %tmp.5.cast = zext i8 %tmp.5 to i32, !dbg !245  ; [#uses=1 type=i32] [debug line = 107:5]
  %tmp.6 = add i32 %tmp.5.cast, %SHA256.m_tot_len.read, !dbg !245 ; [#uses=1 type=i32] [debug line = 107:5]
  br label %9, !dbg !246                          ; [debug line = 108:1]

; <label>:9                                       ; preds = %_memcpy.exit8, %4
  %SHA256.m_tot_len = phi i32 [ %SHA256.m_tot_len.read, %4 ], [ %tmp.6, %_memcpy.exit8 ] ; [#uses=1 type=i32]
  %SHA256.m_len.write.assign = phi i6 [ %tmp.1, %4 ], [ %rem_len.1, %_memcpy.exit8 ] ; [#uses=1 type=i6]
  %SHA256.m_len.write.assign.cast = zext i6 %SHA256.m_len.write.assign to i32, !dbg !192 ; [#uses=1 type=i32] [debug line = 87:14]
  call void @llvm.dbg.value(metadata !{i6 %SHA256.m_len.write.assign}, i64 0, metadata !247), !dbg !192 ; [debug line = 87:14] [debug variable = SHA256.m_len]
  %mrv = insertvalue { i32, i32 } undef, i32 %SHA256.m_tot_len, 0, !dbg !246 ; [#uses=1 type={ i32, i32 }] [debug line = 108:1]
  %mrv.1 = insertvalue { i32, i32 } %mrv, i32 %SHA256.m_len.write.assign.cast, 1, !dbg !246 ; [#uses=1 type={ i32, i32 }] [debug line = 108:1]
  ret { i32, i32 } %mrv.1, !dbg !246              ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc void @"SHA256::transform.1"([8 x i32]* nocapture %SHA256.m_h, [64 x i8]* nocapture %message, i7 %tmp.1, i1 %block_nb) {
  %w = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  %wv = alloca [8 x i32], align 16                ; [#uses=10 type=[8 x i32]*]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %SHA256.m_h}, i64 0, metadata !248), !dbg !251 ; [debug line = 35:14] [debug variable = SHA256.m_h]
  call void @llvm.dbg.value(metadata !{i1 %block_nb}, i64 0, metadata !252), !dbg !253 ; [debug line = 35:67] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %w}, metadata !254), !dbg !257 ; [debug line = 37:12] [debug variable = w]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %wv}, metadata !258), !dbg !259 ; [debug line = 38:12] [debug variable = wv]
  %wv.addr = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 7, !dbg !260 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.1 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 4, !dbg !260 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.2 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 5, !dbg !260 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.3 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 6, !dbg !260 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.4 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 0, !dbg !265 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.5 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 1, !dbg !265 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.6 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 2, !dbg !265 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.7 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 3, !dbg !266 ; [#uses=2 type=i32*] [debug line = 61:13]
  br label %1, !dbg !267                          ; [debug line = 43:10]

; <label>:1                                       ; preds = %14, %0
  %i = phi i1 [ false, %0 ], [ %i.2, %14 ]        ; [#uses=3 type=i1]
  %tmptmp = xor i1 %i, true, !dbg !267            ; [#uses=1 type=i1] [debug line = 43:10]
  %tmp = and i1 %tmptmp, %block_nb, !dbg !267     ; [#uses=1 type=i1] [debug line = 43:10]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1, i64 0) ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader3, label %15, !dbg !267 ; [debug line = 43:10]

.preheader3:                                      ; preds = %1
  br label %3, !dbg !268                          ; [debug line = 45:14]

; <label>:3                                       ; preds = %5, %.preheader3
  %j = phi i5 [ %j.5, %5 ], [ 0, %.preheader3 ]   ; [#uses=5 type=i5]
  %j.cast = zext i5 %j to i6, !dbg !268           ; [#uses=1 type=i6] [debug line = 45:14]
  %exitcond1 = icmp eq i5 %j, -16, !dbg !268      ; [#uses=1 type=i1] [debug line = 45:14]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader13.preheader, label %5, !dbg !268 ; [debug line = 45:14]

.preheader13.preheader:                           ; preds = %3
  br label %.preheader13, !dbg !270               ; [debug line = 48:14]

; <label>:5                                       ; preds = %3
  %tmp.8 = shl i6 %j.cast, 2, !dbg !272           ; [#uses=2 type=i6] [debug line = 46:15]
  %tmp.7 = call i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5 %j, i32 0, i32 3) ; [#uses=1 type=i4]
  %sub_block.0.sum = call i6 @_ssdm_op_BitConcatenate.i6.i4.i1.i1(i4 %tmp.7, i1 false, i1 %i), !dbg !272 ; [#uses=2 type=i6] [debug line = 46:15]
  %sub_block.0.sum.cast = zext i6 %sub_block.0.sum to i7, !dbg !272 ; [#uses=1 type=i7] [debug line = 46:15]
  %.sum1 = or i6 %tmp.8, 3, !dbg !272             ; [#uses=1 type=i6] [debug line = 46:15]
  %.sum1.cast = zext i6 %.sum1 to i7, !dbg !272   ; [#uses=1 type=i7] [debug line = 46:15]
  %sum = add i7 %.sum1.cast, %tmp.1               ; [#uses=1 type=i7]
  %sum.cast = zext i7 %sum to i64                 ; [#uses=1 type=i64]
  %message.addr = getelementptr [64 x i8]* %message, i64 0, i64 %sum.cast, !dbg !272 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load = load i8* %message.addr, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 46:15]
  %.sum3 = or i6 %sub_block.0.sum, 2, !dbg !272   ; [#uses=1 type=i6] [debug line = 46:15]
  %.sum3.cast = zext i6 %.sum3 to i7, !dbg !272   ; [#uses=1 type=i7] [debug line = 46:15]
  %sum2 = add i7 %.sum3.cast, %tmp.1              ; [#uses=1 type=i7]
  %sum2.cast = zext i7 %sum2 to i64               ; [#uses=1 type=i64]
  %message.addr.1 = getelementptr [64 x i8]* %message, i64 0, i64 %sum2.cast, !dbg !272 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.1 = load i8* %message.addr.1, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 46:15]
  %.sum5 = or i6 %tmp.8, 1, !dbg !272             ; [#uses=1 type=i6] [debug line = 46:15]
  %.sum5.cast = zext i6 %.sum5 to i7, !dbg !272   ; [#uses=1 type=i7] [debug line = 46:15]
  %sum4 = add i7 %.sum5.cast, %tmp.1              ; [#uses=1 type=i7]
  %sum4.cast = zext i7 %sum4 to i64               ; [#uses=1 type=i64]
  %message.addr.2 = getelementptr [64 x i8]* %message, i64 0, i64 %sum4.cast, !dbg !272 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.2 = load i8* %message.addr.2, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 46:15]
  %sum6 = add i7 %sub_block.0.sum.cast, %tmp.1    ; [#uses=1 type=i7]
  %sum6.cast = zext i7 %sum6 to i64               ; [#uses=1 type=i64]
  %message.addr.3 = getelementptr [64 x i8]* %message, i64 0, i64 %sum6.cast, !dbg !272 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.3 = load i8* %message.addr.3, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 46:15]
  %tmp.2 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %message.load.3, i8 %message.load.2, i8 %message.load.1, i8 %message.load), !dbg !272 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.3 = zext i5 %j to i64, !dbg !272           ; [#uses=1 type=i64] [debug line = 46:15]
  %w.addr = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.3, !dbg !272 ; [#uses=1 type=i32*] [debug line = 46:15]
  store i32 %tmp.2, i32* %w.addr, align 4, !dbg !272 ; [debug line = 46:15]
  %j.5 = add i5 %j, 1, !dbg !275                  ; [#uses=1 type=i5] [debug line = 45:29]
  call void @llvm.dbg.value(metadata !{i5 %j.5}, i64 0, metadata !276), !dbg !275 ; [debug line = 45:29] [debug variable = j]
  br label %3, !dbg !275                          ; [debug line = 45:29]

.preheader13:                                     ; preds = %7, %.preheader13.preheader
  %j.1 = phi i7 [ %j.6, %7 ], [ 16, %.preheader13.preheader ] ; [#uses=7 type=i7]
  %exitcond9 = icmp eq i7 %j.1, -64, !dbg !270    ; [#uses=1 type=i1] [debug line = 48:14]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) ; [#uses=0 type=i32]
  br i1 %exitcond9, label %.preheader12.preheader, label %7, !dbg !270 ; [debug line = 48:14]

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12, !dbg !277               ; [debug line = 51:14]

; <label>:7                                       ; preds = %.preheader13
  %tmp.4 = add i7 %j.1, -2, !dbg !279             ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp.5 = zext i7 %tmp.4 to i64, !dbg !279       ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.1 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.5, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load = load i32* %w.addr.1, align 4, !dbg !279 ; [#uses=5 type=i32] [debug line = 49:13]
  %tmp.6 = lshr i32 %w.load, 17, !dbg !279        ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp. = shl i32 %w.load, 15, !dbg !279          ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.9 = or i32 %tmp., %tmp.6, !dbg !279        ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.10 = lshr i32 %w.load, 19, !dbg !279       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.11 = shl i32 %w.load, 13, !dbg !279        ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.12 = or i32 %tmp.11, %tmp.10, !dbg !279    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.13 = lshr i32 %w.load, 10, !dbg !279       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp1 = xor i32 %tmp.13, %tmp.12, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.14 = xor i32 %tmp1, %tmp.9, !dbg !279      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.15 = add i7 %j.1, -7, !dbg !279            ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp.16 = zext i7 %tmp.15 to i64, !dbg !279     ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.2 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.16, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.1 = load i32* %w.addr.2, align 4, !dbg !279 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.17 = add i7 %j.1, -15, !dbg !279           ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp.18 = zext i7 %tmp.17 to i64, !dbg !279     ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.3 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.18, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.2 = load i32* %w.addr.3, align 4, !dbg !279 ; [#uses=5 type=i32] [debug line = 49:13]
  %tmp.19 = lshr i32 %w.load.2, 7, !dbg !279      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.20 = shl i32 %w.load.2, 25, !dbg !279      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.21 = or i32 %tmp.20, %tmp.19, !dbg !279    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.22 = lshr i32 %w.load.2, 18, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.23 = shl i32 %w.load.2, 14, !dbg !279      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.24 = or i32 %tmp.23, %tmp.22, !dbg !279    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.25 = lshr i32 %w.load.2, 3, !dbg !279      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp2 = xor i32 %tmp.25, %tmp.24, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.26 = xor i32 %tmp2, %tmp.21, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.27 = add i7 %j.1, -16, !dbg !279           ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp.28 = zext i7 %tmp.27 to i64, !dbg !279     ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.4 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.28, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.3 = load i32* %w.addr.4, align 4, !dbg !279 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp3 = add i32 %w.load.3, %w.load.1, !dbg !279 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp4 = add i32 %tmp.26, %tmp.14, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.29 = add i32 %tmp3, %tmp4, !dbg !279       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.30 = zext i7 %j.1 to i64, !dbg !279        ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.5 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.30, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  store i32 %tmp.29, i32* %w.addr.5, align 4, !dbg !279 ; [debug line = 49:13]
  %j.6 = add i7 %j.1, 1, !dbg !281                ; [#uses=1 type=i7] [debug line = 48:30]
  call void @llvm.dbg.value(metadata !{i7 %j.6}, i64 0, metadata !276), !dbg !281 ; [debug line = 48:30] [debug variable = j]
  br label %.preheader13, !dbg !281               ; [debug line = 48:30]

.preheader12:                                     ; preds = %9, %.preheader12.preheader
  %j.2 = phi i4 [ %j.7, %9 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i4]
  %exitcond8 = icmp eq i4 %j.2, -8, !dbg !277     ; [#uses=1 type=i1] [debug line = 51:14]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond8, label %.preheader11.preheader, label %9, !dbg !277 ; [debug line = 51:14]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !282               ; [debug line = 54:14]

; <label>:9                                       ; preds = %.preheader12
  %tmp.31 = zext i4 %j.2 to i64, !dbg !283        ; [#uses=2 type=i64] [debug line = 52:13]
  %SHA256.m_h.addr = getelementptr [8 x i32]* %SHA256.m_h, i64 0, i64 %tmp.31, !dbg !283 ; [#uses=1 type=i32*] [debug line = 52:13]
  %SHA256.m_h.load = load i32* %SHA256.m_h.addr, align 4, !dbg !283 ; [#uses=1 type=i32] [debug line = 52:13]
  %wv.addr.8 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp.31, !dbg !283 ; [#uses=1 type=i32*] [debug line = 52:13]
  store i32 %SHA256.m_h.load, i32* %wv.addr.8, align 4, !dbg !283 ; [debug line = 52:13]
  %j.7 = add i4 %j.2, 1, !dbg !285                ; [#uses=1 type=i4] [debug line = 51:28]
  call void @llvm.dbg.value(metadata !{i4 %j.7}, i64 0, metadata !276), !dbg !285 ; [debug line = 51:28] [debug variable = j]
  br label %.preheader12, !dbg !285               ; [debug line = 51:28]

.preheader11:                                     ; preds = %11, %.preheader11.preheader
  %j.3 = phi i7 [ %j.8, %11 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i7]
  %exitcond7 = icmp eq i7 %j.3, -64, !dbg !282    ; [#uses=1 type=i1] [debug line = 54:14]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  br i1 %exitcond7, label %.preheader.preheader, label %11, !dbg !282 ; [debug line = 54:14]

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader, !dbg !286                 ; [debug line = 67:14]

; <label>:11                                      ; preds = %.preheader11
  %wv.load = load i32* %wv.addr, align 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %wv.load.1 = load i32* %wv.addr.1, align 16, !dbg !260 ; [#uses=9 type=i32] [debug line = 55:13]
  %tmp.32 = lshr i32 %wv.load.1, 6, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.33 = shl i32 %wv.load.1, 26, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.34 = or i32 %tmp.33, %tmp.32, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.35 = lshr i32 %wv.load.1, 11, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.36 = shl i32 %wv.load.1, 21, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.37 = or i32 %tmp.36, %tmp.35, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.38 = lshr i32 %wv.load.1, 25, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.39 = shl i32 %wv.load.1, 7, !dbg !260      ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.40 = or i32 %tmp.39, %tmp.38, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp5 = xor i32 %tmp.40, %tmp.37, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.41 = xor i32 %tmp5, %tmp.34, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv.load.2 = load i32* %wv.addr.2, align 4, !dbg !260 ; [#uses=2 type=i32] [debug line = 55:13]
  %tmp.42 = and i32 %wv.load.2, %wv.load.1, !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.43 = xor i32 %wv.load.1, -1, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv.load.3 = load i32* %wv.addr.3, align 8, !dbg !260 ; [#uses=2 type=i32] [debug line = 55:13]
  %tmp.44 = and i32 %wv.load.3, %tmp.43, !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.45 = xor i32 %tmp.44, %tmp.42, !dbg !260   ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.46 = zext i7 %j.3 to i64, !dbg !260        ; [#uses=2 type=i64] [debug line = 55:13]
  %"SHA256::sha256_k.addr" = getelementptr inbounds [64 x i32]* @"SHA256::sha256_k", i64 0, i64 %tmp.46, !dbg !260 ; [#uses=1 type=i32*] [debug line = 55:13]
  %"SHA256::sha256_k.load" = load i32* %"SHA256::sha256_k.addr", align 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %w.addr.6 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.46, !dbg !260 ; [#uses=1 type=i32*] [debug line = 55:13]
  %w.load.4 = load i32* %w.addr.6, align 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp8 = add i32 %wv.load, %"SHA256::sha256_k.load", !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp10 = add i32 %tmp.45, %tmp.41, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp9 = add i32 %w.load.4, %tmp10, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %t1 = add i32 %tmp8, %tmp9, !dbg !260           ; [#uses=2 type=i32] [debug line = 55:13]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !288), !dbg !260 ; [debug line = 55:13] [debug variable = t1]
  %wv.load.4 = load i32* %wv.addr.4, align 16, !dbg !265 ; [#uses=8 type=i32] [debug line = 57:13]
  %tmp.47 = lshr i32 %wv.load.4, 2, !dbg !265     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.48 = shl i32 %wv.load.4, 30, !dbg !265     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.49 = or i32 %tmp.48, %tmp.47, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.50 = lshr i32 %wv.load.4, 13, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.51 = shl i32 %wv.load.4, 19, !dbg !265     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.52 = or i32 %tmp.51, %tmp.50, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.53 = lshr i32 %wv.load.4, 22, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.54 = shl i32 %wv.load.4, 10, !dbg !265     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.55 = or i32 %tmp.54, %tmp.53, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp11 = xor i32 %tmp.55, %tmp.52, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.56 = xor i32 %tmp11, %tmp.49, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %wv.load.5 = load i32* %wv.addr.5, align 4, !dbg !265 ; [#uses=3 type=i32] [debug line = 57:13]
  %wv.load.6 = load i32* %wv.addr.6, align 8, !dbg !265 ; [#uses=3 type=i32] [debug line = 57:13]
  %tmp.57 = and i32 %wv.load.6, %wv.load.5, !dbg !265 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.58 = xor i32 %wv.load.6, %wv.load.5, !dbg !265 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.59 = and i32 %wv.load.4, %tmp.58, !dbg !265 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.60 = xor i32 %tmp.59, %tmp.57, !dbg !265   ; [#uses=1 type=i32] [debug line = 57:13]
  store i32 %wv.load.3, i32* %wv.addr, align 4, !dbg !289 ; [debug line = 58:13]
  store i32 %wv.load.2, i32* %wv.addr.3, align 8, !dbg !290 ; [debug line = 59:13]
  store i32 %wv.load.1, i32* %wv.addr.2, align 4, !dbg !291 ; [debug line = 60:13]
  %wv.load.7 = load i32* %wv.addr.7, align 4, !dbg !266 ; [#uses=1 type=i32] [debug line = 61:13]
  %tmp.61 = add i32 %t1, %wv.load.7, !dbg !266    ; [#uses=1 type=i32] [debug line = 61:13]
  store i32 %tmp.61, i32* %wv.addr.1, align 16, !dbg !266 ; [debug line = 61:13]
  store i32 %wv.load.6, i32* %wv.addr.7, align 4, !dbg !292 ; [debug line = 62:13]
  store i32 %wv.load.5, i32* %wv.addr.6, align 8, !dbg !293 ; [debug line = 63:13]
  store i32 %wv.load.4, i32* %wv.addr.5, align 4, !dbg !294 ; [debug line = 64:13]
  %tmp12 = add i32 %tmp.60, %tmp.56, !dbg !295    ; [#uses=1 type=i32] [debug line = 65:13]
  %tmp.62 = add i32 %t1, %tmp12, !dbg !295        ; [#uses=1 type=i32] [debug line = 65:13]
  store i32 %tmp.62, i32* %wv.addr.4, align 16, !dbg !295 ; [debug line = 65:13]
  %j.8 = add i7 %j.3, 1, !dbg !296                ; [#uses=1 type=i7] [debug line = 54:29]
  call void @llvm.dbg.value(metadata !{i7 %j.8}, i64 0, metadata !276), !dbg !296 ; [debug line = 54:29] [debug variable = j]
  br label %.preheader11, !dbg !296               ; [debug line = 54:29]

.preheader:                                       ; preds = %13, %.preheader.preheader
  %j.4 = phi i4 [ %j.9, %13 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %j.4, -8, !dbg !286      ; [#uses=1 type=i1] [debug line = 67:14]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %14, label %13, !dbg !286 ; [debug line = 67:14]

; <label>:13                                      ; preds = %.preheader
  %tmp.63 = zext i4 %j.4 to i64, !dbg !297        ; [#uses=2 type=i64] [debug line = 68:13]
  %wv.addr.9 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp.63, !dbg !297 ; [#uses=1 type=i32*] [debug line = 68:13]
  %wv.load.8 = load i32* %wv.addr.9, align 4, !dbg !297 ; [#uses=1 type=i32] [debug line = 68:13]
  %SHA256.m_h.addr.1 = getelementptr [8 x i32]* %SHA256.m_h, i64 0, i64 %tmp.63, !dbg !297 ; [#uses=2 type=i32*] [debug line = 68:13]
  %SHA256.m_h.load.1 = load i32* %SHA256.m_h.addr.1, align 4, !dbg !297 ; [#uses=1 type=i32] [debug line = 68:13]
  %tmp.64 = add i32 %SHA256.m_h.load.1, %wv.load.8, !dbg !297 ; [#uses=1 type=i32] [debug line = 68:13]
  store i32 %tmp.64, i32* %SHA256.m_h.addr.1, align 4, !dbg !297 ; [debug line = 68:13]
  %j.9 = add i4 %j.4, 1, !dbg !299                ; [#uses=1 type=i4] [debug line = 67:28]
  call void @llvm.dbg.value(metadata !{i4 %j.9}, i64 0, metadata !276), !dbg !299 ; [debug line = 67:28] [debug variable = j]
  br label %.preheader, !dbg !299                 ; [debug line = 67:28]

; <label>:14                                      ; preds = %.preheader
  %i.2 = xor i1 %i, true, !dbg !300               ; [#uses=1 type=i1] [debug line = 43:37]
  call void @llvm.dbg.value(metadata !{i1 %i.2}, i64 0, metadata !301), !dbg !300 ; [debug line = 43:37] [debug variable = i]
  br label %1, !dbg !300                          ; [debug line = 43:37]

; <label>:15                                      ; preds = %1
  ret void, !dbg !302                             ; [debug line = 71:1]
}

; [#uses=2]
define internal fastcc void @"SHA256::transform"([8 x i32]* nocapture %SHA256.m_h, [128 x i8]* nocapture %message, i2 %block_nb) {
  %w = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  %wv = alloca [8 x i32], align 16                ; [#uses=10 type=[8 x i32]*]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %SHA256.m_h}, i64 0, metadata !248), !dbg !251 ; [debug line = 35:14] [debug variable = SHA256.m_h]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %message}, i64 0, metadata !303), !dbg !305 ; [debug line = 35:45] [debug variable = message]
  call void @llvm.dbg.value(metadata !{i2 %block_nb}, i64 0, metadata !252), !dbg !253 ; [debug line = 35:67] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %w}, metadata !254), !dbg !257 ; [debug line = 37:12] [debug variable = w]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %wv}, metadata !258), !dbg !259 ; [debug line = 38:12] [debug variable = wv]
  %wv.addr = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 7, !dbg !260 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.1 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 4, !dbg !260 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.2 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 5, !dbg !260 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.3 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 6, !dbg !260 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.4 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 0, !dbg !265 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.5 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 1, !dbg !265 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.6 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 2, !dbg !265 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.7 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 3, !dbg !266 ; [#uses=2 type=i32*] [debug line = 61:13]
  br label %1, !dbg !267                          ; [debug line = 43:10]

; <label>:1                                       ; preds = %14, %0
  %i = phi i2 [ 0, %0 ], [ %i.3, %14 ]            ; [#uses=3 type=i2]
  %tmp = icmp ult i2 %i, %block_nb, !dbg !267     ; [#uses=1 type=i1] [debug line = 43:10]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 0) ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader2, label %15, !dbg !267 ; [debug line = 43:10]

.preheader2:                                      ; preds = %1
  br label %3, !dbg !268                          ; [debug line = 45:14]

; <label>:3                                       ; preds = %5, %.preheader2
  %j = phi i5 [ %j.5, %5 ], [ 0, %.preheader2 ]   ; [#uses=4 type=i5]
  %j.cast = zext i5 %j to i6, !dbg !268           ; [#uses=1 type=i6] [debug line = 45:14]
  %exitcond1 = icmp eq i5 %j, -16, !dbg !268      ; [#uses=1 type=i1] [debug line = 45:14]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader13.preheader, label %5, !dbg !268 ; [debug line = 45:14]

.preheader13.preheader:                           ; preds = %3
  br label %.preheader13, !dbg !270               ; [debug line = 48:14]

; <label>:5                                       ; preds = %3
  %tmp.8 = shl i6 %j.cast, 2, !dbg !272           ; [#uses=1 type=i6] [debug line = 46:15]
  %tmp.13 = call i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2 %i, i32 0, i32 0) ; [#uses=1 type=i1]
  %sub_block.0.sum = call i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1 %tmp.13, i6 %tmp.8), !dbg !272 ; [#uses=4 type=i7] [debug line = 46:15]
  %sub_block.0.sum.cast = zext i7 %sub_block.0.sum to i64, !dbg !272 ; [#uses=1 type=i64] [debug line = 46:15]
  %.sum1 = or i7 %sub_block.0.sum, 3, !dbg !272   ; [#uses=1 type=i7] [debug line = 46:15]
  %.sum1.cast = zext i7 %.sum1 to i64, !dbg !272  ; [#uses=1 type=i64] [debug line = 46:15]
  %message.addr = getelementptr [128 x i8]* %message, i64 0, i64 %.sum1.cast, !dbg !272 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load = load i8* %message.addr, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 46:15]
  %.sum3 = or i7 %sub_block.0.sum, 2, !dbg !272   ; [#uses=1 type=i7] [debug line = 46:15]
  %.sum3.cast = zext i7 %.sum3 to i64, !dbg !272  ; [#uses=1 type=i64] [debug line = 46:15]
  %message.addr.4 = getelementptr [128 x i8]* %message, i64 0, i64 %.sum3.cast, !dbg !272 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.1 = load i8* %message.addr.4, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 46:15]
  %.sum5 = or i7 %sub_block.0.sum, 1, !dbg !272   ; [#uses=1 type=i7] [debug line = 46:15]
  %.sum5.cast = zext i7 %.sum5 to i64, !dbg !272  ; [#uses=1 type=i64] [debug line = 46:15]
  %message.addr.5 = getelementptr [128 x i8]* %message, i64 0, i64 %.sum5.cast, !dbg !272 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.2 = load i8* %message.addr.5, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 46:15]
  %message.addr.6 = getelementptr [128 x i8]* %message, i64 0, i64 %sub_block.0.sum.cast, !dbg !272 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.3 = load i8* %message.addr.6, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 46:15]
  %tmp.19 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %message.load.3, i8 %message.load.2, i8 %message.load.1, i8 %message.load), !dbg !272 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.20 = zext i5 %j to i64, !dbg !272          ; [#uses=1 type=i64] [debug line = 46:15]
  %w.addr = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.20, !dbg !272 ; [#uses=1 type=i32*] [debug line = 46:15]
  store i32 %tmp.19, i32* %w.addr, align 4, !dbg !272 ; [debug line = 46:15]
  %j.5 = add i5 %j, 1, !dbg !275                  ; [#uses=1 type=i5] [debug line = 45:29]
  call void @llvm.dbg.value(metadata !{i5 %j.5}, i64 0, metadata !276), !dbg !275 ; [debug line = 45:29] [debug variable = j]
  br label %3, !dbg !275                          ; [debug line = 45:29]

.preheader13:                                     ; preds = %7, %.preheader13.preheader
  %j.1 = phi i7 [ %j.6, %7 ], [ 16, %.preheader13.preheader ] ; [#uses=7 type=i7]
  %exitcond9 = icmp eq i7 %j.1, -64, !dbg !270    ; [#uses=1 type=i1] [debug line = 48:14]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) ; [#uses=0 type=i32]
  br i1 %exitcond9, label %.preheader12.preheader, label %7, !dbg !270 ; [debug line = 48:14]

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12, !dbg !277               ; [debug line = 51:14]

; <label>:7                                       ; preds = %.preheader13
  %tmp.21 = add i7 %j.1, -2, !dbg !279            ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp.22 = zext i7 %tmp.21 to i64, !dbg !279     ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.1 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.22, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load = load i32* %w.addr.1, align 4, !dbg !279 ; [#uses=5 type=i32] [debug line = 49:13]
  %tmp.23 = lshr i32 %w.load, 17, !dbg !279       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.24 = shl i32 %w.load, 15, !dbg !279        ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.25 = or i32 %tmp.24, %tmp.23, !dbg !279    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.26 = lshr i32 %w.load, 19, !dbg !279       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.27 = shl i32 %w.load, 13, !dbg !279        ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.28 = or i32 %tmp.27, %tmp.26, !dbg !279    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.29 = lshr i32 %w.load, 10, !dbg !279       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp1 = xor i32 %tmp.29, %tmp.28, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.31 = xor i32 %tmp1, %tmp.25, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.32 = add i7 %j.1, -7, !dbg !279            ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp.33 = zext i7 %tmp.32 to i64, !dbg !279     ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.2 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.33, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.1 = load i32* %w.addr.2, align 4, !dbg !279 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.34 = add i7 %j.1, -15, !dbg !279           ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp.35 = zext i7 %tmp.34 to i64, !dbg !279     ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.3 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.35, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.2 = load i32* %w.addr.3, align 4, !dbg !279 ; [#uses=5 type=i32] [debug line = 49:13]
  %tmp.36 = lshr i32 %w.load.2, 7, !dbg !279      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.37 = shl i32 %w.load.2, 25, !dbg !279      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.38 = or i32 %tmp.37, %tmp.36, !dbg !279    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.39 = lshr i32 %w.load.2, 18, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.40 = shl i32 %w.load.2, 14, !dbg !279      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.41 = or i32 %tmp.40, %tmp.39, !dbg !279    ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.42 = lshr i32 %w.load.2, 3, !dbg !279      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp2 = xor i32 %tmp.42, %tmp.41, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.44 = xor i32 %tmp2, %tmp.38, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.45 = add i7 %j.1, -16, !dbg !279           ; [#uses=1 type=i7] [debug line = 49:13]
  %tmp.46 = zext i7 %tmp.45 to i64, !dbg !279     ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.4 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.46, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.3 = load i32* %w.addr.4, align 4, !dbg !279 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp3 = add i32 %w.load.3, %w.load.1, !dbg !279 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp4 = add i32 %tmp.44, %tmp.31, !dbg !279     ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.49 = add i32 %tmp3, %tmp4, !dbg !279       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.50 = zext i7 %j.1 to i64, !dbg !279        ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.5 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.50, !dbg !279 ; [#uses=1 type=i32*] [debug line = 49:13]
  store i32 %tmp.49, i32* %w.addr.5, align 4, !dbg !279 ; [debug line = 49:13]
  %j.6 = add i7 %j.1, 1, !dbg !281                ; [#uses=1 type=i7] [debug line = 48:30]
  call void @llvm.dbg.value(metadata !{i7 %j.6}, i64 0, metadata !276), !dbg !281 ; [debug line = 48:30] [debug variable = j]
  br label %.preheader13, !dbg !281               ; [debug line = 48:30]

.preheader12:                                     ; preds = %9, %.preheader12.preheader
  %j.2 = phi i4 [ %j.7, %9 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i4]
  %exitcond8 = icmp eq i4 %j.2, -8, !dbg !277     ; [#uses=1 type=i1] [debug line = 51:14]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond8, label %.preheader11.preheader, label %9, !dbg !277 ; [debug line = 51:14]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !282               ; [debug line = 54:14]

; <label>:9                                       ; preds = %.preheader12
  %tmp.51 = zext i4 %j.2 to i64, !dbg !283        ; [#uses=2 type=i64] [debug line = 52:13]
  %SHA256.m_h.addr = getelementptr [8 x i32]* %SHA256.m_h, i64 0, i64 %tmp.51, !dbg !283 ; [#uses=1 type=i32*] [debug line = 52:13]
  %SHA256.m_h.load = load i32* %SHA256.m_h.addr, align 4, !dbg !283 ; [#uses=1 type=i32] [debug line = 52:13]
  %wv.addr.8 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp.51, !dbg !283 ; [#uses=1 type=i32*] [debug line = 52:13]
  store i32 %SHA256.m_h.load, i32* %wv.addr.8, align 4, !dbg !283 ; [debug line = 52:13]
  %j.7 = add i4 %j.2, 1, !dbg !285                ; [#uses=1 type=i4] [debug line = 51:28]
  call void @llvm.dbg.value(metadata !{i4 %j.7}, i64 0, metadata !276), !dbg !285 ; [debug line = 51:28] [debug variable = j]
  br label %.preheader12, !dbg !285               ; [debug line = 51:28]

.preheader11:                                     ; preds = %11, %.preheader11.preheader
  %j.3 = phi i7 [ %j.8, %11 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i7]
  %exitcond7 = icmp eq i7 %j.3, -64, !dbg !282    ; [#uses=1 type=i1] [debug line = 54:14]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  br i1 %exitcond7, label %.preheader.preheader, label %11, !dbg !282 ; [debug line = 54:14]

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader, !dbg !286                 ; [debug line = 67:14]

; <label>:11                                      ; preds = %.preheader11
  %wv.load = load i32* %wv.addr, align 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %wv.load.1 = load i32* %wv.addr.1, align 16, !dbg !260 ; [#uses=9 type=i32] [debug line = 55:13]
  %tmp.52 = lshr i32 %wv.load.1, 6, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.53 = shl i32 %wv.load.1, 26, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.54 = or i32 %tmp.53, %tmp.52, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.55 = lshr i32 %wv.load.1, 11, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.56 = shl i32 %wv.load.1, 21, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.57 = or i32 %tmp.56, %tmp.55, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.58 = lshr i32 %wv.load.1, 25, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.59 = shl i32 %wv.load.1, 7, !dbg !260      ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.60 = or i32 %tmp.59, %tmp.58, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp5 = xor i32 %tmp.60, %tmp.57, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.62 = xor i32 %tmp5, %tmp.54, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv.load.2 = load i32* %wv.addr.2, align 4, !dbg !260 ; [#uses=2 type=i32] [debug line = 55:13]
  %tmp.63 = and i32 %wv.load.2, %wv.load.1, !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.64 = xor i32 %wv.load.1, -1, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv.load.3 = load i32* %wv.addr.3, align 8, !dbg !260 ; [#uses=2 type=i32] [debug line = 55:13]
  %tmp. = and i32 %wv.load.3, %tmp.64, !dbg !260  ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.65 = xor i32 %tmp., %tmp.63, !dbg !260     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.66 = zext i7 %j.3 to i64, !dbg !260        ; [#uses=2 type=i64] [debug line = 55:13]
  %"SHA256::sha256_k.addr" = getelementptr inbounds [64 x i32]* @"SHA256::sha256_k", i64 0, i64 %tmp.66, !dbg !260 ; [#uses=1 type=i32*] [debug line = 55:13]
  %"SHA256::sha256_k.load" = load i32* %"SHA256::sha256_k.addr", align 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %w.addr.6 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.66, !dbg !260 ; [#uses=1 type=i32*] [debug line = 55:13]
  %w.load.4 = load i32* %w.addr.6, align 4, !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp8 = add i32 %wv.load, %"SHA256::sha256_k.load", !dbg !260 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp10 = add i32 %tmp.65, %tmp.62, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp9 = add i32 %w.load.4, %tmp10, !dbg !260    ; [#uses=1 type=i32] [debug line = 55:13]
  %t1 = add i32 %tmp8, %tmp9, !dbg !260           ; [#uses=2 type=i32] [debug line = 55:13]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !288), !dbg !260 ; [debug line = 55:13] [debug variable = t1]
  %wv.load.4 = load i32* %wv.addr.4, align 16, !dbg !265 ; [#uses=8 type=i32] [debug line = 57:13]
  %tmp.67 = lshr i32 %wv.load.4, 2, !dbg !265     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.68 = shl i32 %wv.load.4, 30, !dbg !265     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.69 = or i32 %tmp.68, %tmp.67, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.70 = lshr i32 %wv.load.4, 13, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.71 = shl i32 %wv.load.4, 19, !dbg !265     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.72 = or i32 %tmp.71, %tmp.70, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.73 = lshr i32 %wv.load.4, 22, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.74 = shl i32 %wv.load.4, 10, !dbg !265     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.75 = or i32 %tmp.74, %tmp.73, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp11 = xor i32 %tmp.75, %tmp.72, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.76 = xor i32 %tmp11, %tmp.69, !dbg !265    ; [#uses=1 type=i32] [debug line = 57:13]
  %wv.load.5 = load i32* %wv.addr.5, align 4, !dbg !265 ; [#uses=3 type=i32] [debug line = 57:13]
  %wv.load.6 = load i32* %wv.addr.6, align 8, !dbg !265 ; [#uses=3 type=i32] [debug line = 57:13]
  %tmp.77 = and i32 %wv.load.6, %wv.load.5, !dbg !265 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.78 = xor i32 %wv.load.6, %wv.load.5, !dbg !265 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.79 = and i32 %wv.load.4, %tmp.78, !dbg !265 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.80 = xor i32 %tmp.79, %tmp.77, !dbg !265   ; [#uses=1 type=i32] [debug line = 57:13]
  store i32 %wv.load.3, i32* %wv.addr, align 4, !dbg !289 ; [debug line = 58:13]
  store i32 %wv.load.2, i32* %wv.addr.3, align 8, !dbg !290 ; [debug line = 59:13]
  store i32 %wv.load.1, i32* %wv.addr.2, align 4, !dbg !291 ; [debug line = 60:13]
  %wv.load.7 = load i32* %wv.addr.7, align 4, !dbg !266 ; [#uses=1 type=i32] [debug line = 61:13]
  %tmp.81 = add i32 %t1, %wv.load.7, !dbg !266    ; [#uses=1 type=i32] [debug line = 61:13]
  store i32 %tmp.81, i32* %wv.addr.1, align 16, !dbg !266 ; [debug line = 61:13]
  store i32 %wv.load.6, i32* %wv.addr.7, align 4, !dbg !292 ; [debug line = 62:13]
  store i32 %wv.load.5, i32* %wv.addr.6, align 8, !dbg !293 ; [debug line = 63:13]
  store i32 %wv.load.4, i32* %wv.addr.5, align 4, !dbg !294 ; [debug line = 64:13]
  %tmp12 = add i32 %tmp.80, %tmp.76, !dbg !295    ; [#uses=1 type=i32] [debug line = 65:13]
  %tmp.82 = add i32 %t1, %tmp12, !dbg !295        ; [#uses=1 type=i32] [debug line = 65:13]
  store i32 %tmp.82, i32* %wv.addr.4, align 16, !dbg !295 ; [debug line = 65:13]
  %j.8 = add i7 %j.3, 1, !dbg !296                ; [#uses=1 type=i7] [debug line = 54:29]
  call void @llvm.dbg.value(metadata !{i7 %j.8}, i64 0, metadata !276), !dbg !296 ; [debug line = 54:29] [debug variable = j]
  br label %.preheader11, !dbg !296               ; [debug line = 54:29]

.preheader:                                       ; preds = %13, %.preheader.preheader
  %j.4 = phi i4 [ %j.9, %13 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %j.4, -8, !dbg !286      ; [#uses=1 type=i1] [debug line = 67:14]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %14, label %13, !dbg !286 ; [debug line = 67:14]

; <label>:13                                      ; preds = %.preheader
  %tmp.83 = zext i4 %j.4 to i64, !dbg !297        ; [#uses=2 type=i64] [debug line = 68:13]
  %wv.addr.9 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp.83, !dbg !297 ; [#uses=1 type=i32*] [debug line = 68:13]
  %wv.load.8 = load i32* %wv.addr.9, align 4, !dbg !297 ; [#uses=1 type=i32] [debug line = 68:13]
  %SHA256.m_h.addr.1 = getelementptr [8 x i32]* %SHA256.m_h, i64 0, i64 %tmp.83, !dbg !297 ; [#uses=2 type=i32*] [debug line = 68:13]
  %SHA256.m_h.load.1 = load i32* %SHA256.m_h.addr.1, align 4, !dbg !297 ; [#uses=1 type=i32] [debug line = 68:13]
  %tmp.84 = add i32 %SHA256.m_h.load.1, %wv.load.8, !dbg !297 ; [#uses=1 type=i32] [debug line = 68:13]
  store i32 %tmp.84, i32* %SHA256.m_h.addr.1, align 4, !dbg !297 ; [debug line = 68:13]
  %j.9 = add i4 %j.4, 1, !dbg !299                ; [#uses=1 type=i4] [debug line = 67:28]
  call void @llvm.dbg.value(metadata !{i4 %j.9}, i64 0, metadata !276), !dbg !299 ; [debug line = 67:28] [debug variable = j]
  br label %.preheader, !dbg !299                 ; [debug line = 67:28]

; <label>:14                                      ; preds = %.preheader
  %i.3 = add i2 %i, 1, !dbg !300                  ; [#uses=1 type=i2] [debug line = 43:37]
  call void @llvm.dbg.value(metadata !{i2 %i.3}, i64 0, metadata !301), !dbg !300 ; [debug line = 43:37] [debug variable = i]
  br label %1, !dbg !300                          ; [debug line = 43:37]

; <label>:15                                      ; preds = %1
  ret void, !dbg !302                             ; [debug line = 71:1]
}

; [#uses=1]
define internal fastcc void @"SHA256::final"(i32 %SHA256.m_tot_len.read, i32 %SHA256.m_len.read, [128 x i8]* nocapture %SHA256.m_block, [8 x i32]* nocapture %SHA256.m_h, [32 x i8]* nocapture %digest) {
  call void @llvm.dbg.value(metadata !{i32 %SHA256.m_tot_len.read}, i64 0, metadata !306), !dbg !309 ; [debug line = 110:14] [debug variable = SHA256.m_tot_len]
  call void @llvm.dbg.value(metadata !{i32 %SHA256.m_len.read}, i64 0, metadata !310), !dbg !309 ; [debug line = 110:14] [debug variable = SHA256.m_len]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256.m_block}, i64 0, metadata !311), !dbg !309 ; [debug line = 110:14] [debug variable = SHA256.m_block]
  call void @llvm.dbg.value(metadata !{[8 x i32]* %SHA256.m_h}, i64 0, metadata !312), !dbg !309 ; [debug line = 110:14] [debug variable = SHA256.m_h]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %digest}, i64 0, metadata !313), !dbg !314 ; [debug line = 110:35] [debug variable = digest]
  %SHA256.m_len.read.cast4 = trunc i32 %SHA256.m_len.read to i6, !dbg !315 ; [#uses=1 type=i6] [debug line = 116:5]
  %tmp. = icmp ugt i6 %SHA256.m_len.read.cast4, -9, !dbg !315 ; [#uses=6 type=i1] [debug line = 116:5]
  %block_nb = select i1 %tmp., i2 -2, i2 1, !dbg !315 ; [#uses=1 type=i2] [debug line = 116:5]
  call void @llvm.dbg.value(metadata !{i2 %block_nb}, i64 0, metadata !317), !dbg !315 ; [debug line = 116:5] [debug variable = block_nb]
  %SHA256.m_len.read.cast = trunc i32 %SHA256.m_len.read to i29, !dbg !318 ; [#uses=1 type=i29] [debug line = 118:5]
  %SHA256.m_tot_len.read.cast = trunc i32 %SHA256.m_tot_len.read to i29, !dbg !318 ; [#uses=1 type=i29] [debug line = 118:5]
  %tmp = trunc i32 %SHA256.m_tot_len.read to i13  ; [#uses=1 type=i13]
  %tmp.14 = trunc i32 %SHA256.m_len.read to i13   ; [#uses=1 type=i13]
  %tmp.15 = trunc i32 %SHA256.m_tot_len.read to i21 ; [#uses=1 type=i21]
  %tmp.16 = trunc i32 %SHA256.m_len.read to i21   ; [#uses=1 type=i21]
  %tmp.85 = add i29 %SHA256.m_len.read.cast, %SHA256.m_tot_len.read.cast, !dbg !318 ; [#uses=1 type=i29] [debug line = 118:5]
  %tmp.90.cast3 = add i21 %tmp.15, %tmp.16, !dbg !318 ; [#uses=1 type=i21] [debug line = 118:5]
  %tmp.90.cast = add i13 %tmp, %tmp.14, !dbg !318 ; [#uses=1 type=i13] [debug line = 118:5]
  %tmp.1 = trunc i32 %SHA256.m_len.read to i5     ; [#uses=1 type=i5]
  %tmp.2 = trunc i32 %SHA256.m_tot_len.read to i5 ; [#uses=1 type=i5]
  %pm_len.cast = select i1 %tmp., i32 128, i32 64 ; [#uses=1 type=i32]
  %tmp.86 = zext i32 %SHA256.m_len.read to i64, !dbg !319 ; [#uses=1 type=i64] [debug line = 120:5]
  %tmp.91.cast = trunc i32 %SHA256.m_len.read to i9, !dbg !319 ; [#uses=1 type=i9] [debug line = 120:5]
  %length.assign = sub i32 %pm_len.cast, %SHA256.m_len.read, !dbg !319 ; [#uses=1 type=i32] [debug line = 120:5]
  call void @llvm.dbg.value(metadata !{[128 x i8]* %SHA256.m_block}, i64 0, metadata !320), !dbg !324 ; [debug line = 10:29@120:5] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{i32 %length.assign}, i64 0, metadata !325), !dbg !326 ; [debug line = 10:66@120:5] [debug variable = length]
  br label %1, !dbg !327                          ; [debug line = 12:6@120:5]

; <label>:1                                       ; preds = %2, %0
  %i.i = phi i32 [ 0, %0 ], [ %i.5, %2 ]          ; [#uses=3 type=i32]
  %exitcond.i = icmp eq i32 %i.i, %length.assign, !dbg !327 ; [#uses=1 type=i1] [debug line = 12:6@120:5]
  br i1 %exitcond.i, label %_memset.exit, label %2, !dbg !327 ; [debug line = 12:6@120:5]

; <label>:2                                       ; preds = %1
  %tmp.i.cast = trunc i32 %i.i to i9              ; [#uses=1 type=i9]
  %sum.i = add i9 %tmp.91.cast, %tmp.i.cast       ; [#uses=1 type=i9]
  %sum.i.cast = sext i9 %sum.i to i64             ; [#uses=1 type=i64]
  %SHA256.m_block.addr.5 = getelementptr [128 x i8]* %SHA256.m_block, i64 0, i64 %sum.i.cast, !dbg !330 ; [#uses=1 type=i8*] [debug line = 13:3@120:5]
  store i8 0, i8* %SHA256.m_block.addr.5, align 1, !dbg !330 ; [debug line = 13:3@120:5]
  %i.5 = add nsw i32 %i.i, 1, !dbg !332           ; [#uses=1 type=i32] [debug line = 12:21@120:5]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !333), !dbg !332 ; [debug line = 12:21@120:5] [debug variable = i]
  br label %1, !dbg !332                          ; [debug line = 12:21@120:5]

_memset.exit:                                     ; preds = %1
  %SHA256.m_block.addr = getelementptr [128 x i8]* %SHA256.m_block, i64 0, i64 %tmp.86, !dbg !334 ; [#uses=1 type=i8*] [debug line = 121:5]
  store i8 -128, i8* %SHA256.m_block.addr, align 1, !dbg !334 ; [debug line = 121:5]
  %tmp.87 = add i5 %tmp.1, %tmp.2, !dbg !335      ; [#uses=1 type=i5] [debug line = 122:7]
  %tmp.88 = zext i5 %tmp.87 to i8, !dbg !335      ; [#uses=1 type=i8] [debug line = 122:7]
  %tmp.89 = shl nuw i8 %tmp.88, 3, !dbg !335      ; [#uses=1 type=i8] [debug line = 122:7]
  %.sum1.cast = select i1 %tmp., i64 127, i64 63  ; [#uses=1 type=i64]
  %SHA256.m_block.addr.1 = getelementptr [128 x i8]* %SHA256.m_block, i64 0, i64 %.sum1.cast, !dbg !335 ; [#uses=1 type=i8*] [debug line = 122:7]
  store i8 %tmp.89, i8* %SHA256.m_block.addr.1, align 1, !dbg !335 ; [debug line = 122:7]
  %tmp.90 = lshr i13 %tmp.90.cast, 5, !dbg !337   ; [#uses=1 type=i13] [debug line = 122:59]
  %tmp.91 = trunc i13 %tmp.90 to i8, !dbg !337    ; [#uses=1 type=i8] [debug line = 122:59]
  %.sum3.cast = select i1 %tmp., i64 126, i64 62  ; [#uses=1 type=i64]
  %SHA256.m_block.addr.2 = getelementptr [128 x i8]* %SHA256.m_block, i64 0, i64 %.sum3.cast, !dbg !337 ; [#uses=1 type=i8*] [debug line = 122:59]
  store i8 %tmp.91, i8* %SHA256.m_block.addr.2, align 1, !dbg !337 ; [debug line = 122:59]
  %tmp.92 = lshr i21 %tmp.90.cast3, 13, !dbg !338 ; [#uses=1 type=i21] [debug line = 122:115]
  %tmp.93 = trunc i21 %tmp.92 to i8, !dbg !338    ; [#uses=1 type=i8] [debug line = 122:115]
  %.sum5.cast = select i1 %tmp., i64 125, i64 61  ; [#uses=1 type=i64]
  %SHA256.m_block.addr.3 = getelementptr [128 x i8]* %SHA256.m_block, i64 0, i64 %.sum5.cast, !dbg !338 ; [#uses=1 type=i8*] [debug line = 122:115]
  store i8 %tmp.93, i8* %SHA256.m_block.addr.3, align 1, !dbg !338 ; [debug line = 122:115]
  %tmp.94 = lshr i29 %tmp.85, 21, !dbg !339       ; [#uses=1 type=i29] [debug line = 122:172]
  %tmp.95 = trunc i29 %tmp.94 to i8, !dbg !339    ; [#uses=1 type=i8] [debug line = 122:172]
  %.sum6.cast = select i1 %tmp., i64 124, i64 60  ; [#uses=1 type=i64]
  %SHA256.m_block.addr.4 = getelementptr [128 x i8]* %SHA256.m_block, i64 0, i64 %.sum6.cast, !dbg !339 ; [#uses=1 type=i8*] [debug line = 122:172]
  store i8 %tmp.95, i8* %SHA256.m_block.addr.4, align 1, !dbg !339 ; [debug line = 122:172]
  call fastcc void @"SHA256::transform"([8 x i32]* %SHA256.m_h, [128 x i8]* %SHA256.m_block, i2 %block_nb), !dbg !340 ; [debug line = 123:5]
  br label %3, !dbg !341                          ; [debug line = 124:10]

; <label>:3                                       ; preds = %5, %_memset.exit
  %i = phi i4 [ 0, %_memset.exit ], [ %i.4, %5 ]  ; [#uses=4 type=i4]
  %i.cast = zext i4 %i to i5, !dbg !341           ; [#uses=1 type=i5] [debug line = 124:10]
  %exitcond = icmp eq i4 %i, -8, !dbg !341        ; [#uses=1 type=i1] [debug line = 124:10]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %6, label %5, !dbg !341  ; [debug line = 124:10]

; <label>:5                                       ; preds = %3
  %tmp.96 = zext i4 %i to i64, !dbg !343          ; [#uses=1 type=i64] [debug line = 125:11]
  %SHA256.m_h.addr = getelementptr [8 x i32]* %SHA256.m_h, i64 0, i64 %tmp.96, !dbg !343 ; [#uses=1 type=i32*] [debug line = 125:11]
  %SHA256.m_h.load = load i32* %SHA256.m_h.addr, align 4, !dbg !343 ; [#uses=4 type=i32] [debug line = 125:11]
  %SHA256.m_h.load.cast1 = trunc i32 %SHA256.m_h.load to i24, !dbg !343 ; [#uses=1 type=i24] [debug line = 125:11]
  %SHA256.m_h.load.cast = trunc i32 %SHA256.m_h.load to i16, !dbg !343 ; [#uses=1 type=i16] [debug line = 125:11]
  %tmp.97 = trunc i32 %SHA256.m_h.load to i8, !dbg !343 ; [#uses=1 type=i8] [debug line = 125:11]
  %tmp.98 = shl i5 %i.cast, 2, !dbg !343          ; [#uses=4 type=i5] [debug line = 125:11]
  %tmp.99 = zext i5 %tmp.98 to i64, !dbg !343     ; [#uses=1 type=i64] [debug line = 125:11]
  %.sum = or i5 %tmp.98, 3, !dbg !343             ; [#uses=1 type=i5] [debug line = 125:11]
  %.sum.cast = zext i5 %.sum to i64, !dbg !343    ; [#uses=1 type=i64] [debug line = 125:11]
  %digest.addr = getelementptr [32 x i8]* %digest, i64 0, i64 %.sum.cast, !dbg !343 ; [#uses=1 type=i8*] [debug line = 125:11]
  store i8 %tmp.97, i8* %digest.addr, align 1, !dbg !343 ; [debug line = 125:11]
  %tmp.100 = lshr i16 %SHA256.m_h.load.cast, 8, !dbg !346 ; [#uses=1 type=i16] [debug line = 125:59]
  %tmp.101 = trunc i16 %tmp.100 to i8, !dbg !346  ; [#uses=1 type=i8] [debug line = 125:59]
  %.sum2 = or i5 %tmp.98, 2, !dbg !346            ; [#uses=1 type=i5] [debug line = 125:59]
  %.sum2.cast = zext i5 %.sum2 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 125:59]
  %digest.addr.1 = getelementptr [32 x i8]* %digest, i64 0, i64 %.sum2.cast, !dbg !346 ; [#uses=1 type=i8*] [debug line = 125:59]
  store i8 %tmp.101, i8* %digest.addr.1, align 1, !dbg !346 ; [debug line = 125:59]
  %tmp.102 = lshr i24 %SHA256.m_h.load.cast1, 16, !dbg !347 ; [#uses=1 type=i24] [debug line = 125:111]
  %tmp.103 = trunc i24 %tmp.102 to i8, !dbg !347  ; [#uses=1 type=i8] [debug line = 125:111]
  %.sum4 = or i5 %tmp.98, 1, !dbg !347            ; [#uses=1 type=i5] [debug line = 125:111]
  %.sum4.cast = zext i5 %.sum4 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 125:111]
  %digest.addr.2 = getelementptr [32 x i8]* %digest, i64 0, i64 %.sum4.cast, !dbg !347 ; [#uses=1 type=i8*] [debug line = 125:111]
  store i8 %tmp.103, i8* %digest.addr.2, align 1, !dbg !347 ; [debug line = 125:111]
  %tmp.104 = lshr i32 %SHA256.m_h.load, 24, !dbg !348 ; [#uses=1 type=i32] [debug line = 125:164]
  %tmp.105 = trunc i32 %tmp.104 to i8, !dbg !348  ; [#uses=1 type=i8] [debug line = 125:164]
  %digest.addr.3 = getelementptr [32 x i8]* %digest, i64 0, i64 %tmp.99, !dbg !348 ; [#uses=1 type=i8*] [debug line = 125:164]
  store i8 %tmp.105, i8* %digest.addr.3, align 1, !dbg !348 ; [debug line = 125:164]
  %i.4 = add i4 %i, 1, !dbg !349                  ; [#uses=1 type=i4] [debug line = 124:25]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !350), !dbg !349 ; [debug line = 124:25] [debug variable = i]
  br label %3, !dbg !349                          ; [debug line = 124:25]

; <label>:6                                       ; preds = %3
  ret void, !dbg !351                             ; [debug line = 127:1]
}

!opencl.kernels = !{!0, !7, !11, !17, !23, !29, !32, !17, !17}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!38}

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
!32 = metadata !{null, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !6}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1, i32 1}
!34 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint", metadata !"uint", metadata !"uchar*", metadata !"_Bool*"}
!36 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"message_addr", metadata !"num_blocks", metadata !"digest_out", metadata !"digest_valid"}
!38 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_mem/solution1/.autopilot/db/sha256_mem.pragma.2.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !39} ; [ DW_TAG_compile_unit ]
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786484, i32 0, metadata !42, metadata !"sha256_k", metadata !"sha256_k", metadata !"_ZN6SHA2568sha256_kE", metadata !77, i32 17, metadata !78, i32 0, i32 1, [64 x i32]* @"SHA256::sha256_k"} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786434, null, metadata !"SHA256", metadata !43, i32 14, i64 1344, i64 32, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_class_type ]
!43 = metadata !{i32 786473, metadata !"sha256_mem/src/sha256_mem.h", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!44 = metadata !{metadata !45, metadata !47, metadata !48, metadata !53, metadata !58, metadata !64, metadata !69, metadata !73, metadata !76}
!45 = metadata !{i32 786445, metadata !42, metadata !"m_tot_len", metadata !43, i32 32, i64 32, i64 32, i64 0, i32 2, metadata !46} ; [ DW_TAG_member ]
!46 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!47 = metadata !{i32 786445, metadata !42, metadata !"m_len", metadata !43, i32 33, i64 32, i64 32, i64 32, i32 2, metadata !46} ; [ DW_TAG_member ]
!48 = metadata !{i32 786445, metadata !42, metadata !"m_block", metadata !43, i32 34, i64 1024, i64 8, i64 64, i32 2, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !50, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!53 = metadata !{i32 786445, metadata !42, metadata !"m_h", metadata !43, i32 35, i64 256, i64 32, i64 1088, i32 2, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !55, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{i32 786454, metadata !42, metadata !"uint32", metadata !43, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!58 = metadata !{i32 786478, i32 0, metadata !42, metadata !"init", metadata !"init", metadata !"_ZN6SHA2564initEv", metadata !43, i32 24, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 24} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !61}
!61 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !42} ; [ DW_TAG_pointer_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786478, i32 0, metadata !42, metadata !"update", metadata !"update", metadata !"_ZN6SHA2566updateEPKh", metadata !43, i32 26, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 26} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !61, metadata !67}
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_const_type ]
!69 = metadata !{i32 786478, i32 0, metadata !42, metadata !"final", metadata !"final", metadata !"_ZN6SHA2565finalEPh", metadata !43, i32 27, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 27} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{null, metadata !61, metadata !72}
!72 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!73 = metadata !{i32 786478, i32 0, metadata !42, metadata !"transform", metadata !"transform", metadata !"_ZN6SHA2569transformEPKhj", metadata !43, i32 31, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, metadata !62, i32 31} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !61, metadata !67, metadata !46}
!76 = metadata !{i32 786478, i32 0, metadata !42, metadata !"SHA256", metadata !"SHA256", metadata !"", metadata !43, i32 38, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 38} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786473, metadata !"sha256_mem/src/sha256_mem.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!78 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !79, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!79 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_const_type ]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 7, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"mem", metadata !86, metadata !"unsigned char", i32 0, i32 7}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 131071, i32 1}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 31, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"message_addr", metadata !92, metadata !"unsigned int", i32 0, i32 31}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 0, i32 0}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 31, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"num_blocks", metadata !92, metadata !"unsigned int", i32 0, i32 31}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 7, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"digest_out", metadata !102, metadata !"unsigned char", i32 0, i32 7}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 31, i32 1}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 0, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"digest_valid", metadata !108, metadata !"bool", i32 0, i32 0}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 0, i32 1}
!110 = metadata !{i32 786689, metadata !111, metadata !"mem", null, i32 129, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 786478, i32 0, metadata !77, metadata !"sha256_mem", metadata !"sha256_mem", metadata !"_Z10sha256_memPhjjS_Pb", metadata !77, i32 129, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{null, metadata !72, metadata !46, metadata !46, metadata !72, metadata !114}
!114 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ]
!115 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1048576, i64 8, i32 0, i32 0, metadata !50, metadata !117, i32 0, i32 0} ; [ DW_TAG_array_type ]
!117 = metadata !{metadata !118}
!118 = metadata !{i32 786465, i64 0, i64 131071}  ; [ DW_TAG_subrange_type ]
!119 = metadata !{i32 129, i32 31, metadata !111, null}
!120 = metadata !{i32 786689, metadata !111, metadata !"message_addr", metadata !77, i32 33554561, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 129, i32 58, metadata !111, null}
!122 = metadata !{i32 786689, metadata !111, metadata !"num_blocks", metadata !77, i32 50331777, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 129, i32 85, metadata !111, null}
!124 = metadata !{i32 786689, metadata !111, metadata !"digest_out", null, i32 129, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !50, metadata !126, i32 0, i32 0} ; [ DW_TAG_array_type ]
!126 = metadata !{metadata !127}
!127 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!128 = metadata !{i32 129, i32 111, metadata !111, null}
!129 = metadata !{i32 786689, metadata !111, metadata !"digest_valid", metadata !77, i32 83886209, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 129, i32 133, metadata !111, null}
!131 = metadata !{i32 130, i32 1, metadata !132, null}
!132 = metadata !{i32 786443, metadata !111, i32 129, i32 146, metadata !77, i32 28} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 132, i32 1, metadata !132, null}
!134 = metadata !{i32 133, i32 1, metadata !132, null}
!135 = metadata !{i32 135, i32 1, metadata !132, null}
!136 = metadata !{i32 136, i32 1, metadata !132, null}
!137 = metadata !{i32 786688, metadata !132, metadata !"data_buffer", metadata !77, i32 137, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !50, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!139 = metadata !{i32 137, i32 16, metadata !132, null}
!140 = metadata !{i32 790529, metadata !141, metadata !"cipher.m_block", null, i32 139, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!141 = metadata !{i32 786688, metadata !132, metadata !"cipher", metadata !77, i32 139, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 786438, null, metadata !"SHA256", metadata !43, i32 14, i64 1024, i64 32, i32 0, i32 0, null, metadata !143, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!143 = metadata !{metadata !48}
!144 = metadata !{i32 139, i32 9, metadata !132, null}
!145 = metadata !{i32 790529, metadata !141, metadata !"cipher.m_h", null, i32 139, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!146 = metadata !{i32 786438, null, metadata !"SHA256", metadata !43, i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !147, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!147 = metadata !{metadata !53}
!148 = metadata !{i32 790531, metadata !149, metadata !"SHA256.m_h", null, i32 73, metadata !152, i32 0, metadata !153} ; [ DW_TAG_arg_variable_field ]
!149 = metadata !{i32 786689, metadata !150, metadata !"this", metadata !77, i32 16777289, metadata !151, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 786478, i32 0, null, metadata !"init", metadata !"init", metadata !"_ZN6SHA2564initEv", metadata !77, i32 73, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !62, i32 74} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!152 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ]
!153 = metadata !{i32 141, i32 2, metadata !132, null}
!154 = metadata !{i32 73, i32 14, metadata !150, metadata !153}
!155 = metadata !{i32 75, i32 5, metadata !156, metadata !153}
!156 = metadata !{i32 786443, metadata !150, i32 74, i32 1, metadata !77, i32 20} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 76, i32 5, metadata !156, metadata !153}
!158 = metadata !{i32 77, i32 5, metadata !156, metadata !153}
!159 = metadata !{i32 78, i32 5, metadata !156, metadata !153}
!160 = metadata !{i32 79, i32 5, metadata !156, metadata !153}
!161 = metadata !{i32 80, i32 5, metadata !156, metadata !153}
!162 = metadata !{i32 81, i32 5, metadata !156, metadata !153}
!163 = metadata !{i32 82, i32 5, metadata !156, metadata !153}
!164 = metadata !{i32 143, i32 6, metadata !165, null}
!165 = metadata !{i32 786443, metadata !132, i32 143, i32 2, metadata !77, i32 29} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 146, i32 4, metadata !167, null}
!167 = metadata !{i32 786443, metadata !168, i32 144, i32 55, metadata !77, i32 32} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 786443, metadata !169, i32 144, i32 3, metadata !77, i32 31} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 786443, metadata !165, i32 143, i32 65, metadata !77, i32 30} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786688, metadata !132, metadata !"data_index", metadata !77, i32 138, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!172 = metadata !{i32 144, i32 7, metadata !168, null}
!173 = metadata !{i32 145, i32 4, metadata !167, null}
!174 = metadata !{i32 144, i32 40, metadata !168, null}
!175 = metadata !{i32 786688, metadata !132, metadata !"buffer_index", metadata !77, i32 138, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 148, i32 3, metadata !169, null}
!177 = metadata !{i32 790529, metadata !141, metadata !"cipher.m_len", null, i32 139, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!178 = metadata !{i32 786438, null, metadata !"SHA256", metadata !43, i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !179, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!179 = metadata !{metadata !47}
!180 = metadata !{i32 790529, metadata !141, metadata !"cipher.m_tot_len", null, i32 139, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!181 = metadata !{i32 786438, null, metadata !"SHA256", metadata !43, i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !182, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!182 = metadata !{metadata !45}
!183 = metadata !{i32 143, i32 49, metadata !165, null}
!184 = metadata !{i32 786688, metadata !132, metadata !"block_counter", metadata !77, i32 138, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 150, i32 2, metadata !132, null}
!186 = metadata !{i32 151, i32 2, metadata !132, null}
!187 = metadata !{i32 152, i32 1, metadata !132, null}
!188 = metadata !{i32 790533, metadata !189, metadata !"SHA256.m_tot_len", null, i32 87, metadata !191, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!189 = metadata !{i32 786689, metadata !190, metadata !"this", metadata !77, i32 16777303, metadata !151, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 786478, i32 0, null, metadata !"update", metadata !"update", metadata !"_ZN6SHA2566updateEPKh", metadata !77, i32 87, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !64, metadata !62, i32 88} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ]
!192 = metadata !{i32 87, i32 14, metadata !190, null}
!193 = metadata !{i32 790533, metadata !189, metadata !"SHA256.m_len", null, i32 87, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!194 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !178} ; [ DW_TAG_pointer_type ]
!195 = metadata !{i32 790531, metadata !189, metadata !"SHA256.m_block", null, i32 87, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!196 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ]
!197 = metadata !{i32 790531, metadata !189, metadata !"SHA256.m_h", null, i32 87, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!198 = metadata !{i32 786689, metadata !190, metadata !"message", null, i32 87, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !68, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!200 = metadata !{i32 87, i32 41, metadata !190, null}
!201 = metadata !{i32 92, i32 5, metadata !202, null}
!202 = metadata !{i32 786443, metadata !190, i32 88, i32 1, metadata !77, i32 21} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 786688, metadata !202, metadata !"tmp_len", metadata !77, i32 90, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 93, i32 5, metadata !202, null}
!205 = metadata !{i32 786688, metadata !202, metadata !"rem_len", metadata !77, i32 90, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 3, i32 29, metadata !207, metadata !210}
!207 = metadata !{i32 786478, i32 0, metadata !77, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_j", metadata !77, i32 3, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 3} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!209 = metadata !{null, metadata !72, metadata !72, metadata !46}
!210 = metadata !{i32 94, i32 5, metadata !202, null}
!211 = metadata !{i32 786689, metadata !207, metadata !"dst", null, i32 3, metadata !49, i32 0, metadata !210} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 786689, metadata !207, metadata !"src", null, i32 3, metadata !138, i32 0, metadata !210} ; [ DW_TAG_arg_variable ]
!213 = metadata !{i32 3, i32 49, metadata !207, metadata !210}
!214 = metadata !{i32 786689, metadata !207, metadata !"length", metadata !77, i32 50331651, metadata !46, i32 0, metadata !210} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 3, i32 67, metadata !207, metadata !210}
!216 = metadata !{i32 5, i32 6, metadata !217, metadata !210}
!217 = metadata !{i32 786443, metadata !218, i32 5, i32 2, metadata !77, i32 1} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 786443, metadata !207, i32 3, i32 74, metadata !77, i32 0} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 6, i32 3, metadata !220, metadata !210}
!220 = metadata !{i32 786443, metadata !217, i32 5, i32 25, metadata !77, i32 2} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 5, i32 21, metadata !217, metadata !210}
!222 = metadata !{i32 786688, metadata !218, metadata !"i", metadata !77, i32 4, metadata !171, i32 0, metadata !210} ; [ DW_TAG_auto_variable ]
!223 = metadata !{i32 95, i32 5, metadata !202, null}
!224 = metadata !{i32 96, i32 9, metadata !225, null}
!225 = metadata !{i32 786443, metadata !202, i32 95, i32 27, metadata !77, i32 22} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 97, i32 9, metadata !225, null}
!227 = metadata !{i32 99, i32 5, metadata !202, null}
!228 = metadata !{i32 786688, metadata !202, metadata !"new_len", metadata !77, i32 90, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 100, i32 5, metadata !202, null}
!230 = metadata !{i32 786688, metadata !202, metadata !"block_nb", metadata !77, i32 89, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 102, i32 5, metadata !202, null}
!232 = metadata !{i32 103, i32 5, metadata !202, null}
!233 = metadata !{i32 104, i32 5, metadata !202, null}
!234 = metadata !{i32 105, i32 5, metadata !202, null}
!235 = metadata !{i32 3, i32 29, metadata !207, metadata !234}
!236 = metadata !{i32 786689, metadata !207, metadata !"dst", null, i32 3, metadata !49, i32 0, metadata !234} ; [ DW_TAG_arg_variable ]
!237 = metadata !{i32 786689, metadata !207, metadata !"src", null, i32 3, metadata !138, i32 0, metadata !234} ; [ DW_TAG_arg_variable ]
!238 = metadata !{i32 3, i32 49, metadata !207, metadata !234}
!239 = metadata !{i32 786689, metadata !207, metadata !"length", metadata !77, i32 50331651, metadata !46, i32 0, metadata !234} ; [ DW_TAG_arg_variable ]
!240 = metadata !{i32 3, i32 67, metadata !207, metadata !234}
!241 = metadata !{i32 5, i32 6, metadata !217, metadata !234}
!242 = metadata !{i32 6, i32 3, metadata !220, metadata !234}
!243 = metadata !{i32 5, i32 21, metadata !217, metadata !234}
!244 = metadata !{i32 786688, metadata !218, metadata !"i", metadata !77, i32 4, metadata !171, i32 0, metadata !234} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 107, i32 5, metadata !202, null}
!246 = metadata !{i32 108, i32 1, metadata !202, null}
!247 = metadata !{i32 790535, metadata !189, metadata !"SHA256.m_len", null, i32 87, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!248 = metadata !{i32 790531, metadata !249, metadata !"SHA256.m_h", null, i32 35, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!249 = metadata !{i32 786689, metadata !250, metadata !"this", metadata !77, i32 16777251, metadata !151, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!250 = metadata !{i32 786478, i32 0, null, metadata !"transform", metadata !"transform", metadata !"_ZN6SHA2569transformEPKhj", metadata !77, i32 35, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !73, metadata !62, i32 36} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 35, i32 14, metadata !250, null}
!252 = metadata !{i32 786689, metadata !250, metadata !"block_nb", metadata !77, i32 50331683, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!253 = metadata !{i32 35, i32 67, metadata !250, null}
!254 = metadata !{i32 786688, metadata !255, metadata !"w", metadata !77, i32 37, metadata !256, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!255 = metadata !{i32 786443, metadata !250, i32 36, i32 1, metadata !77, i32 6} ; [ DW_TAG_lexical_block ]
!256 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !55, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!257 = metadata !{i32 37, i32 12, metadata !255, null}
!258 = metadata !{i32 786688, metadata !255, metadata !"wv", metadata !77, i32 38, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 38, i32 12, metadata !255, null}
!260 = metadata !{i32 55, i32 13, metadata !261, null}
!261 = metadata !{i32 786443, metadata !262, i32 54, i32 34, metadata !77, i32 17} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 786443, metadata !263, i32 54, i32 9, metadata !77, i32 16} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 786443, metadata !264, i32 43, i32 42, metadata !77, i32 8} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 786443, metadata !255, i32 43, i32 5, metadata !77, i32 7} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 57, i32 13, metadata !261, null}
!266 = metadata !{i32 61, i32 13, metadata !261, null}
!267 = metadata !{i32 43, i32 10, metadata !264, null}
!268 = metadata !{i32 45, i32 14, metadata !269, null}
!269 = metadata !{i32 786443, metadata !263, i32 45, i32 9, metadata !77, i32 9} ; [ DW_TAG_lexical_block ]
!270 = metadata !{i32 48, i32 14, metadata !271, null}
!271 = metadata !{i32 786443, metadata !263, i32 48, i32 9, metadata !77, i32 12} ; [ DW_TAG_lexical_block ]
!272 = metadata !{i32 46, i32 15, metadata !273, null}
!273 = metadata !{i32 786443, metadata !274, i32 46, i32 13, metadata !77, i32 11} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 786443, metadata !269, i32 45, i32 34, metadata !77, i32 10} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 45, i32 29, metadata !269, null}
!276 = metadata !{i32 786688, metadata !255, metadata !"j", metadata !77, i32 42, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 51, i32 14, metadata !278, null}
!278 = metadata !{i32 786443, metadata !263, i32 51, i32 9, metadata !77, i32 14} ; [ DW_TAG_lexical_block ]
!279 = metadata !{i32 49, i32 13, metadata !280, null}
!280 = metadata !{i32 786443, metadata !271, i32 48, i32 35, metadata !77, i32 13} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 48, i32 30, metadata !271, null}
!282 = metadata !{i32 54, i32 14, metadata !262, null}
!283 = metadata !{i32 52, i32 13, metadata !284, null}
!284 = metadata !{i32 786443, metadata !278, i32 51, i32 33, metadata !77, i32 15} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 51, i32 28, metadata !278, null}
!286 = metadata !{i32 67, i32 14, metadata !287, null}
!287 = metadata !{i32 786443, metadata !263, i32 67, i32 9, metadata !77, i32 18} ; [ DW_TAG_lexical_block ]
!288 = metadata !{i32 786688, metadata !255, metadata !"t1", metadata !77, i32 39, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!289 = metadata !{i32 58, i32 13, metadata !261, null}
!290 = metadata !{i32 59, i32 13, metadata !261, null}
!291 = metadata !{i32 60, i32 13, metadata !261, null}
!292 = metadata !{i32 62, i32 13, metadata !261, null}
!293 = metadata !{i32 63, i32 13, metadata !261, null}
!294 = metadata !{i32 64, i32 13, metadata !261, null}
!295 = metadata !{i32 65, i32 13, metadata !261, null}
!296 = metadata !{i32 54, i32 29, metadata !262, null}
!297 = metadata !{i32 68, i32 13, metadata !298, null}
!298 = metadata !{i32 786443, metadata !287, i32 67, i32 33, metadata !77, i32 19} ; [ DW_TAG_lexical_block ]
!299 = metadata !{i32 67, i32 28, metadata !287, null}
!300 = metadata !{i32 43, i32 37, metadata !264, null}
!301 = metadata !{i32 786688, metadata !255, metadata !"i", metadata !77, i32 41, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!302 = metadata !{i32 71, i32 1, metadata !255, null}
!303 = metadata !{i32 786689, metadata !250, metadata !"message", null, i32 35, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!304 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !68, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!305 = metadata !{i32 35, i32 45, metadata !250, null}
!306 = metadata !{i32 790533, metadata !307, metadata !"SHA256.m_tot_len", null, i32 110, metadata !191, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!307 = metadata !{i32 786689, metadata !308, metadata !"this", metadata !77, i32 16777326, metadata !151, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 786478, i32 0, null, metadata !"final", metadata !"final", metadata !"_ZN6SHA2565finalEPh", metadata !77, i32 110, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !69, metadata !62, i32 111} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 110, i32 14, metadata !308, null}
!310 = metadata !{i32 790533, metadata !307, metadata !"SHA256.m_len", null, i32 110, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!311 = metadata !{i32 790531, metadata !307, metadata !"SHA256.m_block", null, i32 110, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!312 = metadata !{i32 790531, metadata !307, metadata !"SHA256.m_h", null, i32 110, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!313 = metadata !{i32 786689, metadata !308, metadata !"digest", null, i32 110, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!314 = metadata !{i32 110, i32 35, metadata !308, null}
!315 = metadata !{i32 116, i32 5, metadata !316, null}
!316 = metadata !{i32 786443, metadata !308, i32 111, i32 1, metadata !77, i32 23} ; [ DW_TAG_lexical_block ]
!317 = metadata !{i32 786688, metadata !316, metadata !"block_nb", metadata !77, i32 112, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!318 = metadata !{i32 118, i32 5, metadata !316, null}
!319 = metadata !{i32 120, i32 5, metadata !316, null}
!320 = metadata !{i32 786689, metadata !321, metadata !"dst", null, i32 10, metadata !49, i32 0, metadata !319} ; [ DW_TAG_arg_variable ]
!321 = metadata !{i32 786478, i32 0, metadata !77, metadata !"_memset", metadata !"_memset", metadata !"_Z7_memsetPhhj", metadata !77, i32 10, metadata !322, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 10} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!323 = metadata !{null, metadata !72, metadata !50, metadata !46}
!324 = metadata !{i32 10, i32 29, metadata !321, metadata !319}
!325 = metadata !{i32 786689, metadata !321, metadata !"length", metadata !77, i32 50331658, metadata !46, i32 0, metadata !319} ; [ DW_TAG_arg_variable ]
!326 = metadata !{i32 10, i32 66, metadata !321, metadata !319}
!327 = metadata !{i32 12, i32 6, metadata !328, metadata !319}
!328 = metadata !{i32 786443, metadata !329, i32 12, i32 2, metadata !77, i32 4} ; [ DW_TAG_lexical_block ]
!329 = metadata !{i32 786443, metadata !321, i32 10, i32 73, metadata !77, i32 3} ; [ DW_TAG_lexical_block ]
!330 = metadata !{i32 13, i32 3, metadata !331, metadata !319}
!331 = metadata !{i32 786443, metadata !328, i32 12, i32 25, metadata !77, i32 5} ; [ DW_TAG_lexical_block ]
!332 = metadata !{i32 12, i32 21, metadata !328, metadata !319}
!333 = metadata !{i32 786688, metadata !329, metadata !"i", metadata !77, i32 11, metadata !171, i32 0, metadata !319} ; [ DW_TAG_auto_variable ]
!334 = metadata !{i32 121, i32 5, metadata !316, null}
!335 = metadata !{i32 122, i32 7, metadata !336, null}
!336 = metadata !{i32 786443, metadata !316, i32 122, i32 5, metadata !77, i32 24} ; [ DW_TAG_lexical_block ]
!337 = metadata !{i32 122, i32 59, metadata !336, null}
!338 = metadata !{i32 122, i32 115, metadata !336, null}
!339 = metadata !{i32 122, i32 172, metadata !336, null}
!340 = metadata !{i32 123, i32 5, metadata !316, null}
!341 = metadata !{i32 124, i32 10, metadata !342, null}
!342 = metadata !{i32 786443, metadata !316, i32 124, i32 5, metadata !77, i32 25} ; [ DW_TAG_lexical_block ]
!343 = metadata !{i32 125, i32 11, metadata !344, null}
!344 = metadata !{i32 786443, metadata !345, i32 125, i32 9, metadata !77, i32 27} ; [ DW_TAG_lexical_block ]
!345 = metadata !{i32 786443, metadata !342, i32 124, i32 30, metadata !77, i32 26} ; [ DW_TAG_lexical_block ]
!346 = metadata !{i32 125, i32 59, metadata !344, null}
!347 = metadata !{i32 125, i32 111, metadata !344, null}
!348 = metadata !{i32 125, i32 164, metadata !344, null}
!349 = metadata !{i32 124, i32 25, metadata !342, null}
!350 = metadata !{i32 786688, metadata !316, metadata !"i", metadata !77, i32 115, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!351 = metadata !{i32 127, i32 1, metadata !316, null}
