; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_mem/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.SHA256.0 = type { i32, i32, [128 x i8], [8 x i32] }

@sha256_mem.str = internal unnamed_addr constant [11 x i8] c"sha256_mem\00" ; [#uses=1 type=[11 x i8]*]
@"SHA256::sha256_k" = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=1 type=[64 x i32]*]
@.str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define void @sha256_mem(i8* %mem, i32 %message_addr, i32 %num_blocks, i8* %digest_out, i1* %digest_valid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @sha256_mem.str) nounwind
  %data_buffer = alloca [64 x i8], align 16       ; [#uses=2 type=[64 x i8]*]
  %cipher = alloca %class.SHA256.0, align 4       ; [#uses=3 type=%class.SHA256.0*]
  call void @llvm.dbg.value(metadata !{i8* %mem}, i64 0, metadata !104), !dbg !105 ; [debug line = 129:31] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %message_addr}, i64 0, metadata !106), !dbg !107 ; [debug line = 129:58] [debug variable = message_addr]
  call void @llvm.dbg.value(metadata !{i32 %num_blocks}, i64 0, metadata !108), !dbg !109 ; [debug line = 129:85] [debug variable = num_blocks]
  call void @llvm.dbg.value(metadata !{i8* %digest_out}, i64 0, metadata !110), !dbg !111 ; [debug line = 129:111] [debug variable = digest_out]
  call void @llvm.dbg.value(metadata !{i1* %digest_valid}, i64 0, metadata !112), !dbg !113 ; [debug line = 129:133] [debug variable = digest_valid]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %mem, i32 131072) nounwind, !dbg !114 ; [debug line = 129:147]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %digest_out, i32 32) nounwind, !dbg !116 ; [debug line = 129:183]
  call void (...)* @_ssdm_op_SpecInterface(i1* %digest_valid, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !117 ; [debug line = 130:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %digest_out, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !118 ; [debug line = 131:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %message_addr, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !119 ; [debug line = 132:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %message_addr, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !120 ; [debug line = 133:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %mem, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 131072, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !121 ; [debug line = 134:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !122 ; [debug line = 135:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !123 ; [debug line = 136:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %data_buffer}, metadata !124), !dbg !126 ; [debug line = 137:16] [debug variable = data_buffer]
  call void @llvm.dbg.declare(metadata !{%class.SHA256.0* %cipher}, metadata !127), !dbg !128 ; [debug line = 139:9] [debug variable = cipher]
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %cipher}, i64 0, metadata !129), !dbg !131 ; [debug line = 38:39@139:15] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %cipher}, i64 0, metadata !133), !dbg !134 ; [debug line = 38:39@38:80@139:15] [debug variable = this]
  call fastcc void @"SHA256::init"(%class.SHA256.0* %cipher), !dbg !136 ; [debug line = 141:2]
  %data_buffer.addr = getelementptr inbounds [64 x i8]* %data_buffer, i64 0, i64 0, !dbg !137 ; [#uses=1 type=i8*] [debug line = 148:3]
  br label %1, !dbg !140                          ; [debug line = 143:6]

; <label>:1                                       ; preds = %5, %0
  %indvars.iv = phi i32 [ %indvars.iv.next, %5 ], [ 64, %0 ] ; [#uses=2 type=i32]
  %block_counter = phi i32 [ %block_counter.1, %5 ], [ 0, %0 ] ; [#uses=2 type=i32]
  %data_index = phi i32 [ %data_index.2, %5 ], [ 0, %0 ] ; [#uses=2 type=i32]
  %exitcond2 = icmp eq i32 %block_counter, %num_blocks, !dbg !140 ; [#uses=1 type=i1] [debug line = 143:6]
  br i1 %exitcond2, label %6, label %2, !dbg !140 ; [debug line = 143:6]

; <label>:2                                       ; preds = %1
  %data_index.2 = add i32 %data_index, 64, !dbg !141 ; [#uses=1 type=i32] [debug line = 146:4]
  call void @llvm.dbg.value(metadata !{i32 %data_index.2}, i64 0, metadata !144), !dbg !141 ; [debug line = 146:4] [debug variable = data_index]
  br label %3, !dbg !146                          ; [debug line = 144:7]

; <label>:3                                       ; preds = %4, %2
  %data_index.1 = phi i32 [ %data_index, %2 ], [ %tmp.3, %4 ] ; [#uses=3 type=i32]
  %buffer_index = phi i32 [ 0, %2 ], [ %buffer_index.1, %4 ] ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %data_index.1, %indvars.iv, !dbg !146 ; [#uses=1 type=i1] [debug line = 144:7]
  br i1 %exitcond, label %5, label %4, !dbg !146  ; [debug line = 144:7]

; <label>:4                                       ; preds = %3
  %tmp = add i32 %data_index.1, %message_addr, !dbg !147 ; [#uses=1 type=i32] [debug line = 145:4]
  %tmp.1 = zext i32 %tmp to i64, !dbg !147        ; [#uses=1 type=i64] [debug line = 145:4]
  %mem.addr = getelementptr inbounds i8* %mem, i64 %tmp.1, !dbg !147 ; [#uses=1 type=i8*] [debug line = 145:4]
  %mem.load = load i8* %mem.addr, align 1, !dbg !147 ; [#uses=2 type=i8] [debug line = 145:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %mem.load) nounwind
  %tmp.2 = sext i32 %buffer_index to i64, !dbg !147 ; [#uses=1 type=i64] [debug line = 145:4]
  %data_buffer.addr.1 = getelementptr inbounds [64 x i8]* %data_buffer, i64 0, i64 %tmp.2, !dbg !147 ; [#uses=1 type=i8*] [debug line = 145:4]
  store i8 %mem.load, i8* %data_buffer.addr.1, align 1, !dbg !147 ; [debug line = 145:4]
  %tmp.3 = add nsw i32 %data_index.1, 1, !dbg !141 ; [#uses=1 type=i32] [debug line = 146:4]
  %buffer_index.1 = add nsw i32 %buffer_index, 1, !dbg !148 ; [#uses=1 type=i32] [debug line = 144:40]
  call void @llvm.dbg.value(metadata !{i32 %buffer_index.1}, i64 0, metadata !149), !dbg !148 ; [debug line = 144:40] [debug variable = buffer_index]
  br label %3, !dbg !148                          ; [debug line = 144:40]

; <label>:5                                       ; preds = %3
  call fastcc void @"SHA256::update"(%class.SHA256.0* %cipher, i8* %data_buffer.addr), !dbg !137 ; [debug line = 148:3]
  %block_counter.1 = add nsw i32 %block_counter, 1, !dbg !150 ; [#uses=1 type=i32] [debug line = 143:49]
  call void @llvm.dbg.value(metadata !{i32 %block_counter.1}, i64 0, metadata !151), !dbg !150 ; [debug line = 143:49] [debug variable = block_counter]
  %indvars.iv.next = add i32 %indvars.iv, 64, !dbg !150 ; [#uses=1 type=i32] [debug line = 143:49]
  br label %1, !dbg !150                          ; [debug line = 143:49]

; <label>:6                                       ; preds = %1
  call fastcc void @"SHA256::final"(%class.SHA256.0* %cipher, i8* %digest_out), !dbg !152 ; [debug line = 150:2]
  store i1 true, i1* %digest_valid, align 1, !dbg !153 ; [debug line = 151:2]
  ret void, !dbg !154                             ; [debug line = 152:1]
}

; [#uses=42]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=7]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=68]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define internal fastcc void @_memset(i8* %dst, i32 %length) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !155), !dbg !156 ; [debug line = 10:29] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !157), !dbg !158 ; [debug line = 10:66] [debug variable = length]
  br label %1, !dbg !159                          ; [debug line = 12:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, %length, !dbg !159  ; [#uses=1 type=i1] [debug line = 12:6]
  br i1 %exitcond, label %3, label %2, !dbg !159  ; [debug line = 12:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !162            ; [#uses=1 type=i64] [debug line = 13:3]
  %dst.addr = getelementptr inbounds i8* %dst, i64 %tmp, !dbg !162 ; [#uses=1 type=i8*] [debug line = 13:3]
  store i8 0, i8* %dst.addr, align 1, !dbg !162   ; [debug line = 13:3]
  %i.1 = add nsw i32 %i, 1, !dbg !164             ; [#uses=1 type=i32] [debug line = 12:21]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !165), !dbg !164 ; [debug line = 12:21] [debug variable = i]
  br label %1, !dbg !164                          ; [debug line = 12:21]

; <label>:3                                       ; preds = %1
  ret void, !dbg !166                             ; [debug line = 15:1]
}

; [#uses=2]
define internal fastcc void @_memcpy(i8* %dst, i8* %src, i32 %length) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !167), !dbg !168 ; [debug line = 3:29] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !169), !dbg !170 ; [debug line = 3:49] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !171), !dbg !172 ; [debug line = 3:67] [debug variable = length]
  br label %1, !dbg !173                          ; [debug line = 5:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, %length, !dbg !173  ; [#uses=1 type=i1] [debug line = 5:6]
  br i1 %exitcond, label %3, label %2, !dbg !173  ; [debug line = 5:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !176            ; [#uses=2 type=i64] [debug line = 6:3]
  %src.addr = getelementptr inbounds i8* %src, i64 %tmp, !dbg !176 ; [#uses=1 type=i8*] [debug line = 6:3]
  %src.load = load i8* %src.addr, align 1, !dbg !176 ; [#uses=2 type=i8] [debug line = 6:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %src.load) nounwind
  %dst.addr = getelementptr inbounds i8* %dst, i64 %tmp, !dbg !176 ; [#uses=1 type=i8*] [debug line = 6:3]
  store i8 %src.load, i8* %dst.addr, align 1, !dbg !176 ; [debug line = 6:3]
  %i.2 = add nsw i32 %i, 1, !dbg !178             ; [#uses=1 type=i32] [debug line = 5:21]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !179), !dbg !178 ; [debug line = 5:21] [debug variable = i]
  br label %1, !dbg !178                          ; [debug line = 5:21]

; <label>:3                                       ; preds = %1
  ret void, !dbg !180                             ; [debug line = 8:1]
}

; [#uses=1]
define internal fastcc void @"SHA256::update"(%class.SHA256.0* %this, i8* %message) nounwind uwtable align 2 {
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %this}, i64 0, metadata !181), !dbg !182 ; [debug line = 87:14] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !183), !dbg !184 ; [debug line = 87:41] [debug variable = message]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %message, i32 64) nounwind, !dbg !185 ; [debug line = 88:2]
  %this.addr = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 1, !dbg !187 ; [#uses=4 type=i32*] [debug line = 92:5]
  %this.load = load i32* %this.addr, align 4, !dbg !187 ; [#uses=4 type=i32] [debug line = 92:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp_len = sub i32 64, %this.load, !dbg !187    ; [#uses=2 type=i32] [debug line = 92:5]
  call void @llvm.dbg.value(metadata !{i32 %tmp_len}, i64 0, metadata !188), !dbg !187 ; [debug line = 92:5] [debug variable = tmp_len]
  %tmp = icmp ugt i32 %tmp_len, 64, !dbg !189     ; [#uses=1 type=i1] [debug line = 93:5]
  %rem_len = select i1 %tmp, i32 64, i32 %tmp_len, !dbg !189 ; [#uses=3 type=i32] [debug line = 93:5]
  call void @llvm.dbg.value(metadata !{i32 %rem_len}, i64 0, metadata !190), !dbg !189 ; [debug line = 93:5] [debug variable = rem_len]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp.8 = zext i32 %this.load to i64, !dbg !191  ; [#uses=1 type=i64] [debug line = 94:5]
  %this.addr.1 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %tmp.8, !dbg !191 ; [#uses=1 type=i8*] [debug line = 94:5]
  call fastcc void @_memcpy(i8* %this.addr.1, i8* %message, i32 %rem_len), !dbg !191 ; [debug line = 94:5]
  %this.load.1 = load i32* %this.addr, align 4, !dbg !192 ; [#uses=4 type=i32] [debug line = 95:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.1) nounwind
  %tmp.9 = icmp ugt i32 %this.load.1, -65, !dbg !192 ; [#uses=1 type=i1] [debug line = 95:5]
  br i1 %tmp.9, label %1, label %2, !dbg !192     ; [debug line = 95:5]

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.1) nounwind
  %tmp.10 = add i32 %this.load.1, 64, !dbg !193   ; [#uses=1 type=i32] [debug line = 96:9]
  store i32 %tmp.10, i32* %this.addr, align 4, !dbg !193 ; [debug line = 96:9]
  br label %3, !dbg !195                          ; [debug line = 97:9]

; <label>:2                                       ; preds = %0
  %new_len = sub i32 64, %rem_len, !dbg !196      ; [#uses=4 type=i32] [debug line = 99:5]
  call void @llvm.dbg.value(metadata !{i32 %new_len}, i64 0, metadata !197), !dbg !196 ; [debug line = 99:5] [debug variable = new_len]
  %block_nb = lshr i32 %new_len, 6, !dbg !198     ; [#uses=1 type=i32] [debug line = 100:5]
  call void @llvm.dbg.value(metadata !{i32 %block_nb}, i64 0, metadata !199), !dbg !198 ; [debug line = 100:5] [debug variable = block_nb]
  %tmp.11 = zext i32 %rem_len to i64, !dbg !200   ; [#uses=2 type=i64] [debug line = 101:5]
  %shifted_message = getelementptr inbounds i8* %message, i64 %tmp.11, !dbg !200 ; [#uses=1 type=i8*] [debug line = 101:5]
  call void @llvm.dbg.value(metadata !{i8* %shifted_message}, i64 0, metadata !201), !dbg !200 ; [debug line = 101:5] [debug variable = shifted_message]
  %this.addr.2 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 0, !dbg !202 ; [#uses=2 type=i8*] [debug line = 102:5]
  call fastcc void @"SHA256::transform"(%class.SHA256.0* %this, i8* %this.addr.2, i32 1), !dbg !202 ; [debug line = 102:5]
  call fastcc void @"SHA256::transform"(%class.SHA256.0* %this, i8* %shifted_message, i32 %block_nb), !dbg !203 ; [debug line = 103:5]
  %rem_len.1 = and i32 %new_len, 63, !dbg !204    ; [#uses=2 type=i32] [debug line = 104:5]
  call void @llvm.dbg.value(metadata !{i32 %rem_len.1}, i64 0, metadata !190), !dbg !204 ; [debug line = 104:5] [debug variable = rem_len]
  %tmp.13 = and i32 %new_len, -64, !dbg !205      ; [#uses=1 type=i32] [debug line = 105:5]
  %tmp.14 = zext i32 %tmp.13 to i64, !dbg !205    ; [#uses=1 type=i64] [debug line = 105:5]
  %shifted_message.0.sum = add i64 %tmp.14, %tmp.11, !dbg !205 ; [#uses=1 type=i64] [debug line = 105:5]
  %message.addr = getelementptr inbounds i8* %message, i64 %shifted_message.0.sum, !dbg !205 ; [#uses=1 type=i8*] [debug line = 105:5]
  call fastcc void @_memcpy(i8* %this.addr.2, i8* %message.addr, i32 %rem_len.1), !dbg !205 ; [debug line = 105:5]
  store i32 %rem_len.1, i32* %this.addr, align 4, !dbg !206 ; [debug line = 106:5]
  %tmp.15 = add i32 %new_len, 64, !dbg !207       ; [#uses=1 type=i32] [debug line = 107:5]
  %tmp.16 = and i32 %tmp.15, -64, !dbg !207       ; [#uses=1 type=i32] [debug line = 107:5]
  %this.addr.3 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 0, !dbg !207 ; [#uses=2 type=i32*] [debug line = 107:5]
  %this.load.2 = load i32* %this.addr.3, align 4, !dbg !207 ; [#uses=2 type=i32] [debug line = 107:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.2) nounwind
  %tmp.17 = add i32 %this.load.2, %tmp.16, !dbg !207 ; [#uses=1 type=i32] [debug line = 107:5]
  store i32 %tmp.17, i32* %this.addr.3, align 4, !dbg !207 ; [debug line = 107:5]
  br label %3, !dbg !208                          ; [debug line = 108:1]

; <label>:3                                       ; preds = %2, %1
  ret void, !dbg !208                             ; [debug line = 108:1]
}

; [#uses=3]
define internal fastcc void @"SHA256::transform"(%class.SHA256.0* %this, i8* %message, i32 %block_nb) nounwind uwtable align 2 {
  %w = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  %wv = alloca [8 x i32], align 16                ; [#uses=10 type=[8 x i32]*]
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %this}, i64 0, metadata !209), !dbg !210 ; [debug line = 35:14] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !211), !dbg !212 ; [debug line = 35:45] [debug variable = message]
  call void @llvm.dbg.value(metadata !{i32 %block_nb}, i64 0, metadata !213), !dbg !214 ; [debug line = 35:67] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %w}, metadata !215), !dbg !218 ; [debug line = 37:12] [debug variable = w]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %wv}, metadata !219), !dbg !220 ; [debug line = 38:12] [debug variable = wv]
  %wv.addr = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 7, !dbg !221 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.1 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 4, !dbg !221 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.2 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 5, !dbg !221 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.3 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 6, !dbg !221 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.4 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 0, !dbg !226 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.5 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 1, !dbg !226 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.6 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 2, !dbg !226 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.7 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 3, !dbg !227 ; [#uses=2 type=i32*] [debug line = 61:13]
  br label %1, !dbg !228                          ; [debug line = 43:10]

; <label>:1                                       ; preds = %9, %0
  %i = phi i32 [ 0, %0 ], [ %i.3, %9 ]            ; [#uses=3 type=i32]
  %tmp = icmp slt i32 %i, %block_nb, !dbg !228    ; [#uses=1 type=i1] [debug line = 43:10]
  br i1 %tmp, label %2, label %10, !dbg !228      ; [debug line = 43:10]

; <label>:2                                       ; preds = %1
  %tmp.18 = shl i32 %i, 6, !dbg !229              ; [#uses=1 type=i32] [debug line = 44:9]
  %tmp.19 = sext i32 %tmp.18 to i64, !dbg !229    ; [#uses=1 type=i64] [debug line = 44:9]
  br label %3, !dbg !230                          ; [debug line = 45:14]

; <label>:3                                       ; preds = %4, %2
  %j = phi i32 [ 0, %2 ], [ %j.5, %4 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %j, 16, !dbg !230      ; [#uses=1 type=i1] [debug line = 45:14]
  br i1 %exitcond1, label %.preheader13.preheader, label %4, !dbg !230 ; [debug line = 45:14]

.preheader13.preheader:                           ; preds = %3
  br label %.preheader13, !dbg !232               ; [debug line = 48:14]

; <label>:4                                       ; preds = %3
  %tmp.20 = shl i32 %j, 2, !dbg !234              ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.21 = sext i32 %tmp.20 to i64, !dbg !234    ; [#uses=1 type=i64] [debug line = 46:15]
  %sub_block.0.sum = add i64 %tmp.21, %tmp.19, !dbg !234 ; [#uses=4 type=i64] [debug line = 46:15]
  %.sum1 = or i64 %sub_block.0.sum, 3, !dbg !234  ; [#uses=1 type=i64] [debug line = 46:15]
  %message.addr = getelementptr inbounds i8* %message, i64 %.sum1, !dbg !234 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load = load i8* %message.addr, align 1, !dbg !234 ; [#uses=2 type=i8] [debug line = 46:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %message.load) nounwind
  %tmp.22 = zext i8 %message.load to i32, !dbg !234 ; [#uses=1 type=i32] [debug line = 46:15]
  %.sum3 = or i64 %sub_block.0.sum, 2, !dbg !234  ; [#uses=1 type=i64] [debug line = 46:15]
  %message.addr.1 = getelementptr inbounds i8* %message, i64 %.sum3, !dbg !234 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.1 = load i8* %message.addr.1, align 1, !dbg !234 ; [#uses=2 type=i8] [debug line = 46:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %message.load.1) nounwind
  %tmp.23 = zext i8 %message.load.1 to i32, !dbg !234 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.24 = shl nuw nsw i32 %tmp.23, 8, !dbg !234 ; [#uses=1 type=i32] [debug line = 46:15]
  %.sum5 = or i64 %sub_block.0.sum, 1, !dbg !234  ; [#uses=1 type=i64] [debug line = 46:15]
  %message.addr.2 = getelementptr inbounds i8* %message, i64 %.sum5, !dbg !234 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.2 = load i8* %message.addr.2, align 1, !dbg !234 ; [#uses=2 type=i8] [debug line = 46:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %message.load.2) nounwind
  %tmp.25 = zext i8 %message.load.2 to i32, !dbg !234 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.26 = shl nuw nsw i32 %tmp.25, 16, !dbg !234 ; [#uses=1 type=i32] [debug line = 46:15]
  %message.addr.3 = getelementptr inbounds i8* %message, i64 %sub_block.0.sum, !dbg !234 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.3 = load i8* %message.addr.3, align 1, !dbg !234 ; [#uses=2 type=i8] [debug line = 46:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %message.load.3) nounwind
  %tmp.27 = zext i8 %message.load.3 to i32, !dbg !234 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.28 = shl nuw i32 %tmp.27, 24, !dbg !234    ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.29 = or i32 %tmp.24, %tmp.22, !dbg !234    ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.30 = or i32 %tmp.29, %tmp.26, !dbg !234    ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.31 = or i32 %tmp.30, %tmp.28, !dbg !234    ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.32 = sext i32 %j to i64, !dbg !234         ; [#uses=1 type=i64] [debug line = 46:15]
  %w.addr = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.32, !dbg !234 ; [#uses=1 type=i32*] [debug line = 46:15]
  store i32 %tmp.31, i32* %w.addr, align 4, !dbg !234 ; [debug line = 46:15]
  %j.5 = add nsw i32 %j, 1, !dbg !237             ; [#uses=1 type=i32] [debug line = 45:29]
  call void @llvm.dbg.value(metadata !{i32 %j.5}, i64 0, metadata !238), !dbg !237 ; [debug line = 45:29] [debug variable = j]
  br label %3, !dbg !237                          ; [debug line = 45:29]

.preheader13:                                     ; preds = %5, %.preheader13.preheader
  %j.1 = phi i32 [ %j.6, %5 ], [ 16, %.preheader13.preheader ] ; [#uses=7 type=i32]
  %exitcond9 = icmp eq i32 %j.1, 64, !dbg !232    ; [#uses=1 type=i1] [debug line = 48:14]
  br i1 %exitcond9, label %.preheader12.preheader, label %5, !dbg !232 ; [debug line = 48:14]

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12, !dbg !239               ; [debug line = 51:14]

; <label>:5                                       ; preds = %.preheader13
  %tmp.34 = add nsw i32 %j.1, -2, !dbg !241       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.35 = sext i32 %tmp.34 to i64, !dbg !241    ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.1 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.35, !dbg !241 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load = load i32* %w.addr.1, align 4, !dbg !241 ; [#uses=10 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.36 = lshr i32 %w.load, 17, !dbg !241       ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.37 = shl i32 %w.load, 15, !dbg !241        ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.38 = or i32 %tmp.37, %tmp.36, !dbg !241    ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.39 = lshr i32 %w.load, 19, !dbg !241       ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.40 = shl i32 %w.load, 13, !dbg !241        ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.41 = or i32 %tmp.40, %tmp.39, !dbg !241    ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.42 = lshr i32 %w.load, 10, !dbg !241       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.43 = xor i32 %tmp.38, %tmp.42, !dbg !241   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.44 = xor i32 %tmp.43, %tmp.41, !dbg !241   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.45 = add nsw i32 %j.1, -7, !dbg !241       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.46 = sext i32 %tmp.45 to i64, !dbg !241    ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.2 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.46, !dbg !241 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.1 = load i32* %w.addr.2, align 4, !dbg !241 ; [#uses=2 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.1) nounwind
  %tmp.47 = add nsw i32 %j.1, -15, !dbg !241      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.48 = sext i32 %tmp.47 to i64, !dbg !241    ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.3 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.48, !dbg !241 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.2 = load i32* %w.addr.3, align 4, !dbg !241 ; [#uses=10 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.49 = lshr i32 %w.load.2, 7, !dbg !241      ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.50 = shl i32 %w.load.2, 25, !dbg !241      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.51 = or i32 %tmp.50, %tmp.49, !dbg !241    ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.52 = lshr i32 %w.load.2, 18, !dbg !241     ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.53 = shl i32 %w.load.2, 14, !dbg !241      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.54 = or i32 %tmp.53, %tmp.52, !dbg !241    ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.55 = lshr i32 %w.load.2, 3, !dbg !241      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.56 = xor i32 %tmp.51, %tmp.55, !dbg !241   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.57 = xor i32 %tmp.56, %tmp.54, !dbg !241   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.58 = add nsw i32 %j.1, -16, !dbg !241      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.59 = sext i32 %tmp.58 to i64, !dbg !241    ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.4 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.59, !dbg !241 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.3 = load i32* %w.addr.4, align 4, !dbg !241 ; [#uses=2 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.3) nounwind
  %tmp.60 = add i32 %w.load.1, %tmp.44, !dbg !241 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.61 = add i32 %tmp.60, %tmp.57, !dbg !241   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.62 = add i32 %tmp.61, %w.load.3, !dbg !241 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.63 = sext i32 %j.1 to i64, !dbg !241       ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.5 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.63, !dbg !241 ; [#uses=1 type=i32*] [debug line = 49:13]
  store i32 %tmp.62, i32* %w.addr.5, align 4, !dbg !241 ; [debug line = 49:13]
  %j.6 = add nsw i32 %j.1, 1, !dbg !243           ; [#uses=1 type=i32] [debug line = 48:30]
  call void @llvm.dbg.value(metadata !{i32 %j.6}, i64 0, metadata !238), !dbg !243 ; [debug line = 48:30] [debug variable = j]
  br label %.preheader13, !dbg !243               ; [debug line = 48:30]

.preheader12:                                     ; preds = %6, %.preheader12.preheader
  %j.2 = phi i32 [ %j.7, %6 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i32]
  %exitcond8 = icmp eq i32 %j.2, 8, !dbg !239     ; [#uses=1 type=i1] [debug line = 51:14]
  br i1 %exitcond8, label %.preheader11.preheader, label %6, !dbg !239 ; [debug line = 51:14]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !244               ; [debug line = 54:14]

; <label>:6                                       ; preds = %.preheader12
  %tmp.65 = sext i32 %j.2 to i64, !dbg !245       ; [#uses=2 type=i64] [debug line = 52:13]
  %this.addr = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 %tmp.65, !dbg !245 ; [#uses=1 type=i32*] [debug line = 52:13]
  %this.load = load i32* %this.addr, align 4, !dbg !245 ; [#uses=2 type=i32] [debug line = 52:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %wv.addr.8 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp.65, !dbg !245 ; [#uses=1 type=i32*] [debug line = 52:13]
  store i32 %this.load, i32* %wv.addr.8, align 4, !dbg !245 ; [debug line = 52:13]
  %j.7 = add nsw i32 %j.2, 1, !dbg !247           ; [#uses=1 type=i32] [debug line = 51:28]
  call void @llvm.dbg.value(metadata !{i32 %j.7}, i64 0, metadata !238), !dbg !247 ; [debug line = 51:28] [debug variable = j]
  br label %.preheader12, !dbg !247               ; [debug line = 51:28]

.preheader11:                                     ; preds = %7, %.preheader11.preheader
  %j.3 = phi i32 [ %j.8, %7 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i32]
  %exitcond7 = icmp eq i32 %j.3, 64, !dbg !244    ; [#uses=1 type=i1] [debug line = 54:14]
  br i1 %exitcond7, label %.preheader.preheader, label %7, !dbg !244 ; [debug line = 54:14]

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader, !dbg !248                 ; [debug line = 67:14]

; <label>:7                                       ; preds = %.preheader11
  %wv.load = load i32* %wv.addr, align 4, !dbg !221 ; [#uses=2 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load) nounwind
  %wv.load.1 = load i32* %wv.addr.1, align 16, !dbg !221 ; [#uses=18 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.67 = lshr i32 %wv.load.1, 6, !dbg !221     ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.68 = shl i32 %wv.load.1, 26, !dbg !221     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.69 = or i32 %tmp.68, %tmp.67, !dbg !221    ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.70 = lshr i32 %wv.load.1, 11, !dbg !221    ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.71 = shl i32 %wv.load.1, 21, !dbg !221     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.72 = or i32 %tmp.71, %tmp.70, !dbg !221    ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.73 = lshr i32 %wv.load.1, 25, !dbg !221    ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.74 = shl i32 %wv.load.1, 7, !dbg !221      ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.75 = or i32 %tmp.74, %tmp.73, !dbg !221    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.76 = xor i32 %tmp.69, %tmp.75, !dbg !221   ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.77 = xor i32 %tmp.76, %tmp.72, !dbg !221   ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %wv.load.2 = load i32* %wv.addr.2, align 4, !dbg !221 ; [#uses=4 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.2) nounwind
  %tmp.78 = and i32 %wv.load.2, %wv.load.1, !dbg !221 ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.79 = xor i32 %wv.load.1, -1, !dbg !221     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv.load.3 = load i32* %wv.addr.3, align 8, !dbg !221 ; [#uses=4 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.3) nounwind
  %tmp.80 = and i32 %wv.load.3, %tmp.79, !dbg !221 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.81 = xor i32 %tmp.80, %tmp.78, !dbg !221   ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.82 = sext i32 %j.3 to i64, !dbg !221       ; [#uses=2 type=i64] [debug line = 55:13]
  %"SHA256::sha256_k.addr" = getelementptr inbounds [64 x i32]* @"SHA256::sha256_k", i64 0, i64 %tmp.82, !dbg !221 ; [#uses=1 type=i32*] [debug line = 55:13]
  %"SHA256::sha256_k.load" = load i32* %"SHA256::sha256_k.addr", align 4, !dbg !221 ; [#uses=2 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %"SHA256::sha256_k.load") nounwind
  %w.addr.6 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.82, !dbg !221 ; [#uses=1 type=i32*] [debug line = 55:13]
  %w.load.4 = load i32* %w.addr.6, align 4, !dbg !221 ; [#uses=2 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.4) nounwind
  %tmp.83 = add i32 %tmp.77, %wv.load, !dbg !221  ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.84 = add i32 %tmp.83, %tmp.81, !dbg !221   ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.85 = add i32 %tmp.84, %"SHA256::sha256_k.load", !dbg !221 ; [#uses=1 type=i32] [debug line = 55:13]
  %t1 = add i32 %tmp.85, %w.load.4, !dbg !221     ; [#uses=2 type=i32] [debug line = 55:13]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !250), !dbg !221 ; [debug line = 55:13] [debug variable = t1]
  %wv.load.4 = load i32* %wv.addr.4, align 16, !dbg !226 ; [#uses=17 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.86 = lshr i32 %wv.load.4, 2, !dbg !226     ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.87 = shl i32 %wv.load.4, 30, !dbg !226     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.88 = or i32 %tmp.87, %tmp.86, !dbg !226    ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.89 = lshr i32 %wv.load.4, 13, !dbg !226    ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.90 = shl i32 %wv.load.4, 19, !dbg !226     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.91 = or i32 %tmp.90, %tmp.89, !dbg !226    ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.92 = lshr i32 %wv.load.4, 22, !dbg !226    ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.93 = shl i32 %wv.load.4, 10, !dbg !226     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.94 = or i32 %tmp.93, %tmp.92, !dbg !226    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.95 = xor i32 %tmp.88, %tmp.94, !dbg !226   ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.96 = xor i32 %tmp.95, %tmp.91, !dbg !226   ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %wv.load.5 = load i32* %wv.addr.5, align 4, !dbg !226 ; [#uses=6 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.5) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %wv.load.6 = load i32* %wv.addr.6, align 8, !dbg !226 ; [#uses=6 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.6) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.5) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.6) nounwind
  %tmp.97 = and i32 %wv.load.6, %wv.load.5, !dbg !226 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.98 = xor i32 %wv.load.6, %wv.load.5, !dbg !226 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.99 = and i32 %tmp.98, %wv.load.4, !dbg !226 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.100 = xor i32 %tmp.99, %tmp.97, !dbg !226  ; [#uses=1 type=i32] [debug line = 57:13]
  call void @llvm.dbg.value(metadata !{i32 %t2}, i64 0, metadata !251), !dbg !226 ; [debug line = 57:13] [debug variable = t2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.3) nounwind
  store i32 %wv.load.3, i32* %wv.addr, align 4, !dbg !252 ; [debug line = 58:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.2) nounwind
  store i32 %wv.load.2, i32* %wv.addr.3, align 8, !dbg !253 ; [debug line = 59:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  store i32 %wv.load.1, i32* %wv.addr.2, align 4, !dbg !254 ; [debug line = 60:13]
  %wv.load.7 = load i32* %wv.addr.7, align 4, !dbg !227 ; [#uses=2 type=i32] [debug line = 61:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.7) nounwind
  %tmp.101 = add i32 %wv.load.7, %t1, !dbg !227   ; [#uses=1 type=i32] [debug line = 61:13]
  store i32 %tmp.101, i32* %wv.addr.1, align 16, !dbg !227 ; [debug line = 61:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.6) nounwind
  store i32 %wv.load.6, i32* %wv.addr.7, align 4, !dbg !255 ; [debug line = 62:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.5) nounwind
  store i32 %wv.load.5, i32* %wv.addr.6, align 8, !dbg !256 ; [debug line = 63:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  store i32 %wv.load.4, i32* %wv.addr.5, align 4, !dbg !257 ; [debug line = 64:13]
  %t2 = add i32 %tmp.96, %t1, !dbg !226           ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.102 = add i32 %t2, %tmp.100, !dbg !258     ; [#uses=1 type=i32] [debug line = 65:13]
  store i32 %tmp.102, i32* %wv.addr.4, align 16, !dbg !258 ; [debug line = 65:13]
  %j.8 = add nsw i32 %j.3, 1, !dbg !259           ; [#uses=1 type=i32] [debug line = 54:29]
  call void @llvm.dbg.value(metadata !{i32 %j.8}, i64 0, metadata !238), !dbg !259 ; [debug line = 54:29] [debug variable = j]
  br label %.preheader11, !dbg !259               ; [debug line = 54:29]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %j.4 = phi i32 [ %j.9, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j.4, 8, !dbg !248      ; [#uses=1 type=i1] [debug line = 67:14]
  br i1 %exitcond, label %9, label %8, !dbg !248  ; [debug line = 67:14]

; <label>:8                                       ; preds = %.preheader
  %tmp.105 = sext i32 %j.4 to i64, !dbg !260      ; [#uses=2 type=i64] [debug line = 68:13]
  %wv.addr.9 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp.105, !dbg !260 ; [#uses=1 type=i32*] [debug line = 68:13]
  %wv.load.8 = load i32* %wv.addr.9, align 4, !dbg !260 ; [#uses=2 type=i32] [debug line = 68:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.8) nounwind
  %this.addr.4 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 %tmp.105, !dbg !260 ; [#uses=2 type=i32*] [debug line = 68:13]
  %this.load.3 = load i32* %this.addr.4, align 4, !dbg !260 ; [#uses=2 type=i32] [debug line = 68:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.3) nounwind
  %tmp.106 = add i32 %this.load.3, %wv.load.8, !dbg !260 ; [#uses=1 type=i32] [debug line = 68:13]
  store i32 %tmp.106, i32* %this.addr.4, align 4, !dbg !260 ; [debug line = 68:13]
  %j.9 = add nsw i32 %j.4, 1, !dbg !262           ; [#uses=1 type=i32] [debug line = 67:28]
  call void @llvm.dbg.value(metadata !{i32 %j.9}, i64 0, metadata !238), !dbg !262 ; [debug line = 67:28] [debug variable = j]
  br label %.preheader, !dbg !262                 ; [debug line = 67:28]

; <label>:9                                       ; preds = %.preheader
  %i.3 = add nsw i32 %i, 1, !dbg !263             ; [#uses=1 type=i32] [debug line = 43:37]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !264), !dbg !263 ; [debug line = 43:37] [debug variable = i]
  br label %1, !dbg !263                          ; [debug line = 43:37]

; <label>:10                                      ; preds = %1
  ret void, !dbg !265                             ; [debug line = 71:1]
}

; [#uses=1]
define internal fastcc void @"SHA256::init"(%class.SHA256.0* %this) nounwind uwtable align 2 {
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %this}, i64 0, metadata !266), !dbg !267 ; [debug line = 73:14] [debug variable = this]
  %this.addr = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 0, !dbg !268 ; [#uses=1 type=i32*] [debug line = 75:5]
  store i32 1779033703, i32* %this.addr, align 4, !dbg !268 ; [debug line = 75:5]
  %this.addr.5 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 1, !dbg !270 ; [#uses=1 type=i32*] [debug line = 76:5]
  store i32 -1150833019, i32* %this.addr.5, align 4, !dbg !270 ; [debug line = 76:5]
  %this.addr.6 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 2, !dbg !271 ; [#uses=1 type=i32*] [debug line = 77:5]
  store i32 1013904242, i32* %this.addr.6, align 4, !dbg !271 ; [debug line = 77:5]
  %this.addr.7 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 3, !dbg !272 ; [#uses=1 type=i32*] [debug line = 78:5]
  store i32 -1521486534, i32* %this.addr.7, align 4, !dbg !272 ; [debug line = 78:5]
  %this.addr.8 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 4, !dbg !273 ; [#uses=1 type=i32*] [debug line = 79:5]
  store i32 1359893119, i32* %this.addr.8, align 4, !dbg !273 ; [debug line = 79:5]
  %this.addr.9 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 5, !dbg !274 ; [#uses=1 type=i32*] [debug line = 80:5]
  store i32 -1694144372, i32* %this.addr.9, align 4, !dbg !274 ; [debug line = 80:5]
  %this.addr.10 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 6, !dbg !275 ; [#uses=1 type=i32*] [debug line = 81:5]
  store i32 528734635, i32* %this.addr.10, align 4, !dbg !275 ; [debug line = 81:5]
  %this.addr.11 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 7, !dbg !276 ; [#uses=1 type=i32*] [debug line = 82:5]
  store i32 1541459225, i32* %this.addr.11, align 4, !dbg !276 ; [debug line = 82:5]
  %this.addr.12 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 1, !dbg !277 ; [#uses=1 type=i32*] [debug line = 83:5]
  store i32 0, i32* %this.addr.12, align 4, !dbg !277 ; [debug line = 83:5]
  %this.addr.13 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 0, !dbg !278 ; [#uses=1 type=i32*] [debug line = 84:5]
  store i32 0, i32* %this.addr.13, align 4, !dbg !278 ; [debug line = 84:5]
  ret void, !dbg !279                             ; [debug line = 85:1]
}

; [#uses=1]
define internal fastcc void @"SHA256::final"(%class.SHA256.0* %this, i8* %digest) nounwind uwtable align 2 {
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %this}, i64 0, metadata !280), !dbg !281 ; [debug line = 110:14] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %digest}, i64 0, metadata !282), !dbg !283 ; [debug line = 110:35] [debug variable = digest]
  %this.addr = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 1, !dbg !284 ; [#uses=2 type=i32*] [debug line = 116:5]
  %this.load = load i32* %this.addr, align 4, !dbg !284 ; [#uses=8 type=i32] [debug line = 116:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp = and i32 %this.load, 56, !dbg !284        ; [#uses=1 type=i32] [debug line = 116:5]
  %tmp.108 = icmp ugt i32 %tmp, 55, !dbg !284     ; [#uses=1 type=i1] [debug line = 116:5]
  %block_nb = select i1 %tmp.108, i32 2, i32 1, !dbg !284 ; [#uses=2 type=i32] [debug line = 116:5]
  call void @llvm.dbg.value(metadata !{i32 %block_nb}, i64 0, metadata !286), !dbg !284 ; [debug line = 116:5] [debug variable = block_nb]
  %this.addr.14 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 0, !dbg !287 ; [#uses=1 type=i32*] [debug line = 118:5]
  %this.load.4 = load i32* %this.addr.14, align 4, !dbg !287 ; [#uses=2 type=i32] [debug line = 118:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.4) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp.109 = add i32 %this.load.4, %this.load, !dbg !287 ; [#uses=4 type=i32] [debug line = 118:5]
  %tmp.110 = trunc i32 %tmp.109 to i8, !dbg !287  ; [#uses=1 type=i8] [debug line = 118:5]
  %pm_len = shl nuw nsw i32 %block_nb, 6, !dbg !288 ; [#uses=2 type=i32] [debug line = 119:5]
  call void @llvm.dbg.value(metadata !{i32 %pm_len}, i64 0, metadata !289), !dbg !288 ; [debug line = 119:5] [debug variable = pm_len]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp.111 = zext i32 %this.load to i64, !dbg !290 ; [#uses=1 type=i64] [debug line = 120:5]
  %this.addr.15 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %tmp.111, !dbg !290 ; [#uses=1 type=i8*] [debug line = 120:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp.112 = sub i32 %pm_len, %this.load, !dbg !290 ; [#uses=1 type=i32] [debug line = 120:5]
  call fastcc void @_memset(i8* %this.addr.15, i32 %tmp.112), !dbg !290 ; [debug line = 120:5]
  %this.load.5 = load i32* %this.addr, align 4, !dbg !291 ; [#uses=2 type=i32] [debug line = 121:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.5) nounwind
  %tmp.113 = zext i32 %this.load.5 to i64, !dbg !291 ; [#uses=1 type=i64] [debug line = 121:5]
  %this.addr.16 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %tmp.113, !dbg !291 ; [#uses=1 type=i8*] [debug line = 121:5]
  store i8 -128, i8* %this.addr.16, align 1, !dbg !291 ; [debug line = 121:5]
  %tmp.114 = shl i8 %tmp.110, 3, !dbg !292        ; [#uses=1 type=i8] [debug line = 122:7]
  %tmp.115 = zext i32 %pm_len to i64, !dbg !292   ; [#uses=4 type=i64] [debug line = 122:7]
  %.sum1 = add i64 %tmp.115, -1, !dbg !292        ; [#uses=1 type=i64] [debug line = 122:7]
  %this.addr.17 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %.sum1, !dbg !292 ; [#uses=1 type=i8*] [debug line = 122:7]
  store i8 %tmp.114, i8* %this.addr.17, align 1, !dbg !292 ; [debug line = 122:7]
  %tmp.116 = lshr i32 %tmp.109, 5, !dbg !294      ; [#uses=1 type=i32] [debug line = 122:59]
  %tmp.117 = trunc i32 %tmp.116 to i8, !dbg !294  ; [#uses=1 type=i8] [debug line = 122:59]
  %.sum3 = add i64 %tmp.115, -2, !dbg !294        ; [#uses=1 type=i64] [debug line = 122:59]
  %this.addr.18 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %.sum3, !dbg !294 ; [#uses=1 type=i8*] [debug line = 122:59]
  store i8 %tmp.117, i8* %this.addr.18, align 1, !dbg !294 ; [debug line = 122:59]
  %tmp.118 = lshr i32 %tmp.109, 13, !dbg !295     ; [#uses=1 type=i32] [debug line = 122:115]
  %tmp.119 = trunc i32 %tmp.118 to i8, !dbg !295  ; [#uses=1 type=i8] [debug line = 122:115]
  %.sum5 = add i64 %tmp.115, -3, !dbg !295        ; [#uses=1 type=i64] [debug line = 122:115]
  %this.addr.19 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %.sum5, !dbg !295 ; [#uses=1 type=i8*] [debug line = 122:115]
  store i8 %tmp.119, i8* %this.addr.19, align 1, !dbg !295 ; [debug line = 122:115]
  %tmp.120 = lshr i32 %tmp.109, 21, !dbg !296     ; [#uses=1 type=i32] [debug line = 122:172]
  %tmp.121 = trunc i32 %tmp.120 to i8, !dbg !296  ; [#uses=1 type=i8] [debug line = 122:172]
  %.sum6 = add i64 %tmp.115, -4, !dbg !296        ; [#uses=1 type=i64] [debug line = 122:172]
  %this.addr.20 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %.sum6, !dbg !296 ; [#uses=1 type=i8*] [debug line = 122:172]
  store i8 %tmp.121, i8* %this.addr.20, align 1, !dbg !296 ; [debug line = 122:172]
  %this.addr.21 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 0, !dbg !297 ; [#uses=1 type=i8*] [debug line = 123:5]
  call fastcc void @"SHA256::transform"(%class.SHA256.0* %this, i8* %this.addr.21, i32 %block_nb), !dbg !297 ; [debug line = 123:5]
  br label %1, !dbg !298                          ; [debug line = 124:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %2 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %i, 8, !dbg !298        ; [#uses=1 type=i1] [debug line = 124:10]
  br i1 %exitcond, label %3, label %2, !dbg !298  ; [debug line = 124:10]

; <label>:2                                       ; preds = %1
  %tmp.122 = sext i32 %i to i64, !dbg !300        ; [#uses=1 type=i64] [debug line = 125:11]
  %this.addr.22 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 %tmp.122, !dbg !300 ; [#uses=4 type=i32*] [debug line = 125:11]
  %this.load.6 = load i32* %this.addr.22, align 4, !dbg !300 ; [#uses=2 type=i32] [debug line = 125:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.6) nounwind
  %tmp.123 = trunc i32 %this.load.6 to i8, !dbg !300 ; [#uses=1 type=i8] [debug line = 125:11]
  %tmp.124 = shl i32 %i, 2, !dbg !300             ; [#uses=1 type=i32] [debug line = 125:11]
  %tmp.125 = sext i32 %tmp.124 to i64, !dbg !300  ; [#uses=4 type=i64] [debug line = 125:11]
  %.sum = or i64 %tmp.125, 3, !dbg !300           ; [#uses=1 type=i64] [debug line = 125:11]
  %digest.addr = getelementptr inbounds i8* %digest, i64 %.sum, !dbg !300 ; [#uses=1 type=i8*] [debug line = 125:11]
  store i8 %tmp.123, i8* %digest.addr, align 1, !dbg !300 ; [debug line = 125:11]
  %this.load.7 = load i32* %this.addr.22, align 4, !dbg !303 ; [#uses=2 type=i32] [debug line = 125:59]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.7) nounwind
  %tmp.126 = lshr i32 %this.load.7, 8, !dbg !303  ; [#uses=1 type=i32] [debug line = 125:59]
  %tmp.127 = trunc i32 %tmp.126 to i8, !dbg !303  ; [#uses=1 type=i8] [debug line = 125:59]
  %.sum2 = or i64 %tmp.125, 2, !dbg !303          ; [#uses=1 type=i64] [debug line = 125:59]
  %digest.addr.1 = getelementptr inbounds i8* %digest, i64 %.sum2, !dbg !303 ; [#uses=1 type=i8*] [debug line = 125:59]
  store i8 %tmp.127, i8* %digest.addr.1, align 1, !dbg !303 ; [debug line = 125:59]
  %this.load.8 = load i32* %this.addr.22, align 4, !dbg !304 ; [#uses=2 type=i32] [debug line = 125:111]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.8) nounwind
  %tmp.128 = lshr i32 %this.load.8, 16, !dbg !304 ; [#uses=1 type=i32] [debug line = 125:111]
  %tmp.129 = trunc i32 %tmp.128 to i8, !dbg !304  ; [#uses=1 type=i8] [debug line = 125:111]
  %.sum4 = or i64 %tmp.125, 1, !dbg !304          ; [#uses=1 type=i64] [debug line = 125:111]
  %digest.addr.2 = getelementptr inbounds i8* %digest, i64 %.sum4, !dbg !304 ; [#uses=1 type=i8*] [debug line = 125:111]
  store i8 %tmp.129, i8* %digest.addr.2, align 1, !dbg !304 ; [debug line = 125:111]
  %this.load.9 = load i32* %this.addr.22, align 4, !dbg !305 ; [#uses=2 type=i32] [debug line = 125:164]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.9) nounwind
  %tmp.130 = lshr i32 %this.load.9, 24, !dbg !305 ; [#uses=1 type=i32] [debug line = 125:164]
  %tmp.131 = trunc i32 %tmp.130 to i8, !dbg !305  ; [#uses=1 type=i8] [debug line = 125:164]
  %digest.addr.3 = getelementptr inbounds i8* %digest, i64 %tmp.125, !dbg !305 ; [#uses=1 type=i8*] [debug line = 125:164]
  store i8 %tmp.131, i8* %digest.addr.3, align 1, !dbg !305 ; [debug line = 125:164]
  %i.4 = add nsw i32 %i, 1, !dbg !306             ; [#uses=1 type=i32] [debug line = 124:25]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !307), !dbg !306 ; [debug line = 124:25] [debug variable = i]
  br label %1, !dbg !306                          ; [debug line = 124:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !308                             ; [debug line = 127:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!65, !72, !76, !82, !88, !94, !97, !103, !103}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_mem/solution1/.autopilot/db/sha256_mem.pragma.2.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !58} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !17, metadata !48, metadata !49, metadata !50, metadata !51, metadata !56, metadata !57}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_j", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @_memcpy, null, null, metadata !12, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sha256_mem/src/sha256_mem.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memset", metadata !"_memset", metadata !"_Z7_memsetPhhj", metadata !6, i32 10, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 10} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !9, metadata !10, metadata !11}
!17 = metadata !{i32 786478, i32 0, null, metadata !"transform", metadata !"transform", metadata !"_ZN6SHA2569transformEPKhj", metadata !6, i32 35, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256.0*, i8*, i32)* @"SHA256::transform", null, metadata !46, metadata !12, i32 36} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20, metadata !41, metadata !11}
!20 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786434, null, metadata !"SHA256", metadata !22, i32 14, i64 1344, i64 32, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_class_type ]
!22 = metadata !{i32 786473, metadata !"sha256_mem/src/sha256_mem.h", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !30, metadata !35, metadata !38, metadata !43, metadata !46, metadata !47}
!24 = metadata !{i32 786445, metadata !21, metadata !"m_tot_len", metadata !22, i32 32, i64 32, i64 32, i64 0, i32 2, metadata !11} ; [ DW_TAG_member ]
!25 = metadata !{i32 786445, metadata !21, metadata !"m_len", metadata !22, i32 33, i64 32, i64 32, i64 32, i32 2, metadata !11} ; [ DW_TAG_member ]
!26 = metadata !{i32 786445, metadata !21, metadata !"m_block", metadata !22, i32 34, i64 1024, i64 8, i64 64, i32 2, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !10, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!30 = metadata !{i32 786445, metadata !21, metadata !"m_h", metadata !22, i32 35, i64 256, i64 32, i64 1088, i32 2, metadata !31} ; [ DW_TAG_member ]
!31 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !32, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!32 = metadata !{i32 786454, metadata !21, metadata !"uint32", metadata !22, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!35 = metadata !{i32 786478, i32 0, metadata !21, metadata !"init", metadata !"init", metadata !"_ZN6SHA2564initEv", metadata !22, i32 24, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 24} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !20}
!38 = metadata !{i32 786478, i32 0, metadata !21, metadata !"update", metadata !"update", metadata !"_ZN6SHA2566updateEPKh", metadata !22, i32 26, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 26} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !20, metadata !41}
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!43 = metadata !{i32 786478, i32 0, metadata !21, metadata !"final", metadata !"final", metadata !"_ZN6SHA2565finalEPh", metadata !22, i32 27, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 27} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !20, metadata !9}
!46 = metadata !{i32 786478, i32 0, metadata !21, metadata !"transform", metadata !"transform", metadata !"_ZN6SHA2569transformEPKhj", metadata !22, i32 31, metadata !18, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, metadata !12, i32 31} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786478, i32 0, metadata !21, metadata !"SHA256", metadata !"SHA256", metadata !"", metadata !22, i32 38, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786478, i32 0, null, metadata !"init", metadata !"init", metadata !"_ZN6SHA2564initEv", metadata !6, i32 73, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256.0*)* @"SHA256::init", null, metadata !35, metadata !12, i32 74} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786478, i32 0, null, metadata !"update", metadata !"update", metadata !"_ZN6SHA2566updateEPKh", metadata !6, i32 87, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256.0*, i8*)* @"SHA256::update", null, metadata !38, metadata !12, i32 88} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786478, i32 0, null, metadata !"final", metadata !"final", metadata !"_ZN6SHA2565finalEPh", metadata !6, i32 110, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256.0*, i8*)* @"SHA256::final", null, metadata !43, metadata !12, i32 111} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_mem", metadata !"sha256_mem", metadata !"_Z10sha256_memPhjjS_Pb", metadata !6, i32 129, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32, i32, i8*, i1*)* @sha256_mem, null, null, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !9, metadata !54}
!54 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!55 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786478, i32 0, null, metadata !"SHA256", metadata !"SHA256", metadata !"_ZN6SHA256C1Ev", metadata !22, i32 38, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !47, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786478, i32 0, null, metadata !"SHA256", metadata !"SHA256", metadata !"_ZN6SHA256C2Ev", metadata !22, i32 38, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !47, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786484, i32 0, metadata !21, metadata !"sha256_k", metadata !"sha256_k", metadata !"_ZN6SHA2568sha256_kE", metadata !6, i32 17, metadata !61, i32 0, i32 1, [64 x i32]* @"SHA256::sha256_k"} ; [ DW_TAG_variable ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !62, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!65 = metadata !{void (i8*, i8*, i32)* @_memcpy, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71}
!66 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!67 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uint"}
!69 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"src", metadata !"length"}
!71 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!72 = metadata !{null, metadata !73, metadata !67, metadata !74, metadata !69, metadata !75, metadata !71}
!73 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar", metadata !"uint"}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"val", metadata !"length"}
!76 = metadata !{void (%class.SHA256.0*, i8*, i32)* @"SHA256::transform", metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !71}
!77 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!78 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint"}
!80 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"message", metadata !"block_nb"}
!82 = metadata !{void (%class.SHA256.0*)* @"SHA256::init", metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !71}
!83 = metadata !{metadata !"kernel_arg_addr_space"}
!84 = metadata !{metadata !"kernel_arg_access_qual"}
!85 = metadata !{metadata !"kernel_arg_type"}
!86 = metadata !{metadata !"kernel_arg_type_qual"}
!87 = metadata !{metadata !"kernel_arg_name"}
!88 = metadata !{void (%class.SHA256.0*, i8*)* @"SHA256::update", metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !71}
!89 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!90 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!92 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!93 = metadata !{metadata !"kernel_arg_name", metadata !"message"}
!94 = metadata !{void (%class.SHA256.0*, i8*)* @"SHA256::final", metadata !89, metadata !90, metadata !91, metadata !95, metadata !96, metadata !71}
!95 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"digest"}
!97 = metadata !{void (i8*, i32, i32, i8*, i1*)* @sha256_mem, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !71}
!98 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1, i32 1}
!99 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint", metadata !"uint", metadata !"uchar*", metadata !"_Bool*"}
!101 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!102 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"message_addr", metadata !"num_blocks", metadata !"digest_out", metadata !"digest_valid"}
!103 = metadata !{null, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !71}
!104 = metadata !{i32 786689, metadata !51, metadata !"mem", metadata !6, i32 16777345, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 129, i32 31, metadata !51, null}
!106 = metadata !{i32 786689, metadata !51, metadata !"message_addr", metadata !6, i32 33554561, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 129, i32 58, metadata !51, null}
!108 = metadata !{i32 786689, metadata !51, metadata !"num_blocks", metadata !6, i32 50331777, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 129, i32 85, metadata !51, null}
!110 = metadata !{i32 786689, metadata !51, metadata !"digest_out", metadata !6, i32 67108993, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 129, i32 111, metadata !51, null}
!112 = metadata !{i32 786689, metadata !51, metadata !"digest_valid", metadata !6, i32 83886209, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 129, i32 133, metadata !51, null}
!114 = metadata !{i32 129, i32 147, metadata !115, null}
!115 = metadata !{i32 786443, metadata !51, i32 129, i32 146, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 129, i32 183, metadata !115, null}
!117 = metadata !{i32 130, i32 1, metadata !115, null}
!118 = metadata !{i32 131, i32 1, metadata !115, null}
!119 = metadata !{i32 132, i32 1, metadata !115, null}
!120 = metadata !{i32 133, i32 1, metadata !115, null}
!121 = metadata !{i32 134, i32 1, metadata !115, null}
!122 = metadata !{i32 135, i32 1, metadata !115, null}
!123 = metadata !{i32 136, i32 1, metadata !115, null}
!124 = metadata !{i32 786688, metadata !115, metadata !"data_buffer", metadata !6, i32 137, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !10, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!126 = metadata !{i32 137, i32 16, metadata !115, null}
!127 = metadata !{i32 786688, metadata !115, metadata !"cipher", metadata !6, i32 139, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 139, i32 9, metadata !115, null}
!129 = metadata !{i32 786689, metadata !56, metadata !"this", metadata !22, i32 16777254, metadata !130, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!131 = metadata !{i32 38, i32 39, metadata !56, metadata !132}
!132 = metadata !{i32 139, i32 15, metadata !115, null}
!133 = metadata !{i32 786689, metadata !57, metadata !"this", metadata !22, i32 16777254, metadata !130, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 38, i32 39, metadata !57, metadata !135}
!135 = metadata !{i32 38, i32 80, metadata !56, metadata !132}
!136 = metadata !{i32 141, i32 2, metadata !115, null}
!137 = metadata !{i32 148, i32 3, metadata !138, null}
!138 = metadata !{i32 786443, metadata !139, i32 143, i32 65, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 786443, metadata !115, i32 143, i32 2, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 143, i32 6, metadata !139, null}
!141 = metadata !{i32 146, i32 4, metadata !142, null}
!142 = metadata !{i32 786443, metadata !143, i32 144, i32 55, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 786443, metadata !138, i32 144, i32 3, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 786688, metadata !115, metadata !"data_index", metadata !6, i32 138, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 144, i32 7, metadata !143, null}
!147 = metadata !{i32 145, i32 4, metadata !142, null}
!148 = metadata !{i32 144, i32 40, metadata !143, null}
!149 = metadata !{i32 786688, metadata !115, metadata !"buffer_index", metadata !6, i32 138, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 143, i32 49, metadata !139, null}
!151 = metadata !{i32 786688, metadata !115, metadata !"block_counter", metadata !6, i32 138, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 150, i32 2, metadata !115, null}
!153 = metadata !{i32 151, i32 2, metadata !115, null}
!154 = metadata !{i32 152, i32 1, metadata !115, null}
!155 = metadata !{i32 786689, metadata !14, metadata !"dst", metadata !6, i32 16777226, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 10, i32 29, metadata !14, null}
!157 = metadata !{i32 786689, metadata !14, metadata !"length", metadata !6, i32 50331658, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 10, i32 66, metadata !14, null}
!159 = metadata !{i32 12, i32 6, metadata !160, null}
!160 = metadata !{i32 786443, metadata !161, i32 12, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !14, i32 10, i32 73, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 13, i32 3, metadata !163, null}
!163 = metadata !{i32 786443, metadata !160, i32 12, i32 25, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 12, i32 21, metadata !160, null}
!165 = metadata !{i32 786688, metadata !161, metadata !"i", metadata !6, i32 11, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 15, i32 1, metadata !161, null}
!167 = metadata !{i32 786689, metadata !5, metadata !"dst", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 3, i32 29, metadata !5, null}
!169 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 3, i32 49, metadata !5, null}
!171 = metadata !{i32 786689, metadata !5, metadata !"length", metadata !6, i32 50331651, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!172 = metadata !{i32 3, i32 67, metadata !5, null}
!173 = metadata !{i32 5, i32 6, metadata !174, null}
!174 = metadata !{i32 786443, metadata !175, i32 5, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 786443, metadata !5, i32 3, i32 74, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 6, i32 3, metadata !177, null}
!177 = metadata !{i32 786443, metadata !174, i32 5, i32 25, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 5, i32 21, metadata !174, null}
!179 = metadata !{i32 786688, metadata !175, metadata !"i", metadata !6, i32 4, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 8, i32 1, metadata !175, null}
!181 = metadata !{i32 786689, metadata !49, metadata !"this", metadata !6, i32 16777303, metadata !130, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 87, i32 14, metadata !49, null}
!183 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !6, i32 33554519, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 87, i32 41, metadata !49, null}
!185 = metadata !{i32 88, i32 2, metadata !186, null}
!186 = metadata !{i32 786443, metadata !49, i32 88, i32 1, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 92, i32 5, metadata !186, null}
!188 = metadata !{i32 786688, metadata !186, metadata !"tmp_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 93, i32 5, metadata !186, null}
!190 = metadata !{i32 786688, metadata !186, metadata !"rem_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 94, i32 5, metadata !186, null}
!192 = metadata !{i32 95, i32 5, metadata !186, null}
!193 = metadata !{i32 96, i32 9, metadata !194, null}
!194 = metadata !{i32 786443, metadata !186, i32 95, i32 27, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 97, i32 9, metadata !194, null}
!196 = metadata !{i32 99, i32 5, metadata !186, null}
!197 = metadata !{i32 786688, metadata !186, metadata !"new_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 100, i32 5, metadata !186, null}
!199 = metadata !{i32 786688, metadata !186, metadata !"block_nb", metadata !6, i32 89, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 101, i32 5, metadata !186, null}
!201 = metadata !{i32 786688, metadata !186, metadata !"shifted_message", metadata !6, i32 91, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 102, i32 5, metadata !186, null}
!203 = metadata !{i32 103, i32 5, metadata !186, null}
!204 = metadata !{i32 104, i32 5, metadata !186, null}
!205 = metadata !{i32 105, i32 5, metadata !186, null}
!206 = metadata !{i32 106, i32 5, metadata !186, null}
!207 = metadata !{i32 107, i32 5, metadata !186, null}
!208 = metadata !{i32 108, i32 1, metadata !186, null}
!209 = metadata !{i32 786689, metadata !17, metadata !"this", metadata !6, i32 16777251, metadata !130, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 35, i32 14, metadata !17, null}
!211 = metadata !{i32 786689, metadata !17, metadata !"message", metadata !6, i32 33554467, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 35, i32 45, metadata !17, null}
!213 = metadata !{i32 786689, metadata !17, metadata !"block_nb", metadata !6, i32 50331683, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 35, i32 67, metadata !17, null}
!215 = metadata !{i32 786688, metadata !216, metadata !"w", metadata !6, i32 37, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 786443, metadata !17, i32 36, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !32, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!218 = metadata !{i32 37, i32 12, metadata !216, null}
!219 = metadata !{i32 786688, metadata !216, metadata !"wv", metadata !6, i32 38, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 38, i32 12, metadata !216, null}
!221 = metadata !{i32 55, i32 13, metadata !222, null}
!222 = metadata !{i32 786443, metadata !223, i32 54, i32 34, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 786443, metadata !224, i32 54, i32 9, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 786443, metadata !225, i32 43, i32 42, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 786443, metadata !216, i32 43, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 57, i32 13, metadata !222, null}
!227 = metadata !{i32 61, i32 13, metadata !222, null}
!228 = metadata !{i32 43, i32 10, metadata !225, null}
!229 = metadata !{i32 44, i32 9, metadata !224, null}
!230 = metadata !{i32 45, i32 14, metadata !231, null}
!231 = metadata !{i32 786443, metadata !224, i32 45, i32 9, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 48, i32 14, metadata !233, null}
!233 = metadata !{i32 786443, metadata !224, i32 48, i32 9, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!234 = metadata !{i32 46, i32 15, metadata !235, null}
!235 = metadata !{i32 786443, metadata !236, i32 46, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 786443, metadata !231, i32 45, i32 34, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 45, i32 29, metadata !231, null}
!238 = metadata !{i32 786688, metadata !216, metadata !"j", metadata !6, i32 42, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 51, i32 14, metadata !240, null}
!240 = metadata !{i32 786443, metadata !224, i32 51, i32 9, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 49, i32 13, metadata !242, null}
!242 = metadata !{i32 786443, metadata !233, i32 48, i32 35, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 48, i32 30, metadata !233, null}
!244 = metadata !{i32 54, i32 14, metadata !223, null}
!245 = metadata !{i32 52, i32 13, metadata !246, null}
!246 = metadata !{i32 786443, metadata !240, i32 51, i32 33, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 51, i32 28, metadata !240, null}
!248 = metadata !{i32 67, i32 14, metadata !249, null}
!249 = metadata !{i32 786443, metadata !224, i32 67, i32 9, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 786688, metadata !216, metadata !"t1", metadata !6, i32 39, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 786688, metadata !216, metadata !"t2", metadata !6, i32 39, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 58, i32 13, metadata !222, null}
!253 = metadata !{i32 59, i32 13, metadata !222, null}
!254 = metadata !{i32 60, i32 13, metadata !222, null}
!255 = metadata !{i32 62, i32 13, metadata !222, null}
!256 = metadata !{i32 63, i32 13, metadata !222, null}
!257 = metadata !{i32 64, i32 13, metadata !222, null}
!258 = metadata !{i32 65, i32 13, metadata !222, null}
!259 = metadata !{i32 54, i32 29, metadata !223, null}
!260 = metadata !{i32 68, i32 13, metadata !261, null}
!261 = metadata !{i32 786443, metadata !249, i32 67, i32 33, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 67, i32 28, metadata !249, null}
!263 = metadata !{i32 43, i32 37, metadata !225, null}
!264 = metadata !{i32 786688, metadata !216, metadata !"i", metadata !6, i32 41, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 71, i32 1, metadata !216, null}
!266 = metadata !{i32 786689, metadata !48, metadata !"this", metadata !6, i32 16777289, metadata !130, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 73, i32 14, metadata !48, null}
!268 = metadata !{i32 75, i32 5, metadata !269, null}
!269 = metadata !{i32 786443, metadata !48, i32 74, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!270 = metadata !{i32 76, i32 5, metadata !269, null}
!271 = metadata !{i32 77, i32 5, metadata !269, null}
!272 = metadata !{i32 78, i32 5, metadata !269, null}
!273 = metadata !{i32 79, i32 5, metadata !269, null}
!274 = metadata !{i32 80, i32 5, metadata !269, null}
!275 = metadata !{i32 81, i32 5, metadata !269, null}
!276 = metadata !{i32 82, i32 5, metadata !269, null}
!277 = metadata !{i32 83, i32 5, metadata !269, null}
!278 = metadata !{i32 84, i32 5, metadata !269, null}
!279 = metadata !{i32 85, i32 1, metadata !269, null}
!280 = metadata !{i32 786689, metadata !50, metadata !"this", metadata !6, i32 16777326, metadata !130, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!281 = metadata !{i32 110, i32 14, metadata !50, null}
!282 = metadata !{i32 786689, metadata !50, metadata !"digest", metadata !6, i32 33554542, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!283 = metadata !{i32 110, i32 35, metadata !50, null}
!284 = metadata !{i32 116, i32 5, metadata !285, null}
!285 = metadata !{i32 786443, metadata !50, i32 111, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!286 = metadata !{i32 786688, metadata !285, metadata !"block_nb", metadata !6, i32 112, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!287 = metadata !{i32 118, i32 5, metadata !285, null}
!288 = metadata !{i32 119, i32 5, metadata !285, null}
!289 = metadata !{i32 786688, metadata !285, metadata !"pm_len", metadata !6, i32 113, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 120, i32 5, metadata !285, null}
!291 = metadata !{i32 121, i32 5, metadata !285, null}
!292 = metadata !{i32 122, i32 7, metadata !293, null}
!293 = metadata !{i32 786443, metadata !285, i32 122, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!294 = metadata !{i32 122, i32 59, metadata !293, null}
!295 = metadata !{i32 122, i32 115, metadata !293, null}
!296 = metadata !{i32 122, i32 172, metadata !293, null}
!297 = metadata !{i32 123, i32 5, metadata !285, null}
!298 = metadata !{i32 124, i32 10, metadata !299, null}
!299 = metadata !{i32 786443, metadata !285, i32 124, i32 5, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 125, i32 11, metadata !301, null}
!301 = metadata !{i32 786443, metadata !302, i32 125, i32 9, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!302 = metadata !{i32 786443, metadata !299, i32 124, i32 30, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!303 = metadata !{i32 125, i32 59, metadata !301, null}
!304 = metadata !{i32 125, i32 111, metadata !301, null}
!305 = metadata !{i32 125, i32 164, metadata !301, null}
!306 = metadata !{i32 124, i32 25, metadata !299, null}
!307 = metadata !{i32 786688, metadata !285, metadata !"i", metadata !6, i32 115, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!308 = metadata !{i32 127, i32 1, metadata !285, null}
