; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_stream/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.1" = type { i8 }
%class.SHA256.0 = type { i32, i32, [128 x i8], [8 x i32] }

@sha256.str = internal unnamed_addr constant [7 x i8] c"sha256\00" ; [#uses=1 type=[7 x i8]*]
@"SHA256::sha256_k" = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=1 type=[64 x i32]*]
@.str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=0]
define void @sha256(%"class.hls::stream.1"* %stream_in, i32 %num_blocks, i8* %digest_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @sha256.str) nounwind
  %tmp.2 = alloca i8, align 1                     ; [#uses=2 type=i8*]
  %data_buffer = alloca [64 x i8], align 16       ; [#uses=2 type=[64 x i8]*]
  %cipher = alloca %class.SHA256.0, align 4       ; [#uses=3 type=%class.SHA256.0*]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %stream_in}, metadata !157), !dbg !159 ; [debug line = 129:24] [debug variable = stream_in]
  call void @llvm.dbg.value(metadata !{i32 %num_blocks}, i64 0, metadata !160), !dbg !161 ; [debug line = 129:39] [debug variable = num_blocks]
  call void @llvm.dbg.value(metadata !{i8* %digest_out}, i64 0, metadata !162), !dbg !163 ; [debug line = 129:65] [debug variable = digest_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %digest_out, i32 32) nounwind, !dbg !164 ; [debug line = 129:81]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !166 ; [debug line = 130:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %digest_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !167 ; [debug line = 131:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %num_blocks, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !168 ; [debug line = 132:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.1"* %stream_in, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !169 ; [debug line = 133:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %data_buffer}, metadata !170), !dbg !172 ; [debug line = 134:16] [debug variable = data_buffer]
  call void @llvm.dbg.declare(metadata !{%class.SHA256.0* %cipher}, metadata !173), !dbg !174 ; [debug line = 136:9] [debug variable = cipher]
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %cipher}, i64 0, metadata !175), !dbg !177 ; [debug line = 38:39@136:15] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %cipher}, i64 0, metadata !179), !dbg !180 ; [debug line = 38:39@38:80@136:15] [debug variable = this]
  call fastcc void @"SHA256::init"(%class.SHA256.0* %cipher), !dbg !182 ; [debug line = 138:2]
  %stream_in.addr = getelementptr inbounds %"class.hls::stream.1"* %stream_in, i64 0, i32 0, !dbg !183 ; [#uses=1 type=i8*] [debug line = 131:9@143:30]
  %data_buffer.addr = getelementptr inbounds [64 x i8]* %data_buffer, i64 0, i64 0, !dbg !190 ; [#uses=1 type=i8*] [debug line = 145:3]
  br label %1, !dbg !191                          ; [debug line = 140:6]

; <label>:1                                       ; preds = %3, %0
  %block_counter = phi i32 [ 0, %0 ], [ %block_counter.1, %3 ] ; [#uses=2 type=i32]
  %tmp = icmp slt i32 %block_counter, %num_blocks, !dbg !191 ; [#uses=1 type=i1] [debug line = 140:6]
  br i1 %tmp, label %.preheader.preheader, label %4, !dbg !191 ; [debug line = 140:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !192                 ; [debug line = 142:7]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %data_index = phi i32 [ %data_index.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %data_index, 64, !dbg !192 ; [#uses=1 type=i1] [debug line = 142:7]
  br i1 %exitcond, label %3, label %2, !dbg !192  ; [debug line = 142:7]

; <label>:2                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %stream_in}, i64 0, metadata !193), !dbg !195 ; [debug line = 129:56@143:30] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.2}, metadata !196) nounwind, !dbg !197 ; [debug line = 130:22@143:30] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %stream_in.addr, i8* %tmp.2) nounwind, !dbg !183 ; [debug line = 131:9@143:30]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.2}, i64 0, metadata !196), !dbg !198 ; [debug line = 132:9@143:30] [debug variable = tmp]
  %tmp.2.load = load i8* %tmp.2, align 1, !dbg !198 ; [#uses=1 type=i8] [debug line = 132:9@143:30]
  %tmp.3 = sext i32 %data_index to i64, !dbg !185 ; [#uses=1 type=i64] [debug line = 143:30]
  %data_buffer.addr.1 = getelementptr inbounds [64 x i8]* %data_buffer, i64 0, i64 %tmp.3, !dbg !185 ; [#uses=1 type=i8*] [debug line = 143:30]
  store i8 %tmp.2.load, i8* %data_buffer.addr.1, align 1, !dbg !185 ; [debug line = 143:30]
  %data_index.1 = add nsw i32 %data_index, 1, !dbg !199 ; [#uses=1 type=i32] [debug line = 142:36]
  call void @llvm.dbg.value(metadata !{i32 %data_index.1}, i64 0, metadata !200), !dbg !199 ; [debug line = 142:36] [debug variable = data_index]
  br label %.preheader, !dbg !199                 ; [debug line = 142:36]

; <label>:3                                       ; preds = %.preheader
  call fastcc void @"SHA256::update"(%class.SHA256.0* %cipher, i8* %data_buffer.addr), !dbg !190 ; [debug line = 145:3]
  %block_counter.1 = add nsw i32 %block_counter, 1, !dbg !201 ; [#uses=1 type=i32] [debug line = 140:49]
  call void @llvm.dbg.value(metadata !{i32 %block_counter.1}, i64 0, metadata !202), !dbg !201 ; [debug line = 140:49] [debug variable = block_counter]
  br label %1, !dbg !201                          ; [debug line = 140:49]

; <label>:4                                       ; preds = %1
  call fastcc void @"SHA256::final"(%class.SHA256.0* %cipher, i8* %digest_out), !dbg !203 ; [debug line = 147:2]
  ret void, !dbg !204                             ; [debug line = 148:1]
}

; [#uses=50]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.i8P.i8P(i8*, i8*)

; [#uses=67]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define internal fastcc void @_memset(i8* %dst, i32 %length) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !205), !dbg !206 ; [debug line = 10:29] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !207), !dbg !208 ; [debug line = 10:66] [debug variable = length]
  br label %1, !dbg !209                          ; [debug line = 12:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, %length, !dbg !209  ; [#uses=1 type=i1] [debug line = 12:6]
  br i1 %exitcond, label %3, label %2, !dbg !209  ; [debug line = 12:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !212            ; [#uses=1 type=i64] [debug line = 13:3]
  %dst.addr = getelementptr inbounds i8* %dst, i64 %tmp, !dbg !212 ; [#uses=1 type=i8*] [debug line = 13:3]
  store i8 0, i8* %dst.addr, align 1, !dbg !212   ; [debug line = 13:3]
  %i.1 = add nsw i32 %i, 1, !dbg !214             ; [#uses=1 type=i32] [debug line = 12:21]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !215), !dbg !214 ; [debug line = 12:21] [debug variable = i]
  br label %1, !dbg !214                          ; [debug line = 12:21]

; <label>:3                                       ; preds = %1
  ret void, !dbg !216                             ; [debug line = 15:1]
}

; [#uses=2]
define internal fastcc void @_memcpy(i8* %dst, i8* %src, i32 %length) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !217), !dbg !218 ; [debug line = 3:29] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !219), !dbg !220 ; [debug line = 3:49] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !221), !dbg !222 ; [debug line = 3:67] [debug variable = length]
  br label %1, !dbg !223                          ; [debug line = 5:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, %length, !dbg !223  ; [#uses=1 type=i1] [debug line = 5:6]
  br i1 %exitcond, label %3, label %2, !dbg !223  ; [debug line = 5:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !226            ; [#uses=2 type=i64] [debug line = 6:3]
  %src.addr = getelementptr inbounds i8* %src, i64 %tmp, !dbg !226 ; [#uses=1 type=i8*] [debug line = 6:3]
  %src.load = load i8* %src.addr, align 1, !dbg !226 ; [#uses=2 type=i8] [debug line = 6:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %src.load) nounwind
  %dst.addr = getelementptr inbounds i8* %dst, i64 %tmp, !dbg !226 ; [#uses=1 type=i8*] [debug line = 6:3]
  store i8 %src.load, i8* %dst.addr, align 1, !dbg !226 ; [debug line = 6:3]
  %i.2 = add nsw i32 %i, 1, !dbg !228             ; [#uses=1 type=i32] [debug line = 5:21]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !229), !dbg !228 ; [debug line = 5:21] [debug variable = i]
  br label %1, !dbg !228                          ; [debug line = 5:21]

; <label>:3                                       ; preds = %1
  ret void, !dbg !230                             ; [debug line = 8:1]
}

; [#uses=1]
define internal fastcc void @"SHA256::update"(%class.SHA256.0* %this, i8* %message) nounwind uwtable align 2 {
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %this}, i64 0, metadata !231), !dbg !232 ; [debug line = 87:14] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !233), !dbg !234 ; [debug line = 87:41] [debug variable = message]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %message, i32 64) nounwind, !dbg !235 ; [debug line = 88:2]
  %this.addr = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 1, !dbg !237 ; [#uses=4 type=i32*] [debug line = 92:5]
  %this.load = load i32* %this.addr, align 4, !dbg !237 ; [#uses=4 type=i32] [debug line = 92:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp_len = sub i32 64, %this.load, !dbg !237    ; [#uses=2 type=i32] [debug line = 92:5]
  call void @llvm.dbg.value(metadata !{i32 %tmp_len}, i64 0, metadata !238), !dbg !237 ; [debug line = 92:5] [debug variable = tmp_len]
  %tmp = icmp ugt i32 %tmp_len, 64, !dbg !239     ; [#uses=1 type=i1] [debug line = 93:5]
  %rem_len = select i1 %tmp, i32 64, i32 %tmp_len, !dbg !239 ; [#uses=3 type=i32] [debug line = 93:5]
  call void @llvm.dbg.value(metadata !{i32 %rem_len}, i64 0, metadata !240), !dbg !239 ; [debug line = 93:5] [debug variable = rem_len]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp.8 = zext i32 %this.load to i64, !dbg !241  ; [#uses=1 type=i64] [debug line = 94:5]
  %this.addr.1 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %tmp.8, !dbg !241 ; [#uses=1 type=i8*] [debug line = 94:5]
  call fastcc void @_memcpy(i8* %this.addr.1, i8* %message, i32 %rem_len), !dbg !241 ; [debug line = 94:5]
  %this.load.1 = load i32* %this.addr, align 4, !dbg !242 ; [#uses=4 type=i32] [debug line = 95:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.1) nounwind
  %tmp.9 = icmp ugt i32 %this.load.1, -65, !dbg !242 ; [#uses=1 type=i1] [debug line = 95:5]
  br i1 %tmp.9, label %1, label %2, !dbg !242     ; [debug line = 95:5]

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.1) nounwind
  %tmp.10 = add i32 %this.load.1, 64, !dbg !243   ; [#uses=1 type=i32] [debug line = 96:9]
  store i32 %tmp.10, i32* %this.addr, align 4, !dbg !243 ; [debug line = 96:9]
  br label %3, !dbg !245                          ; [debug line = 97:9]

; <label>:2                                       ; preds = %0
  %new_len = sub i32 64, %rem_len, !dbg !246      ; [#uses=4 type=i32] [debug line = 99:5]
  call void @llvm.dbg.value(metadata !{i32 %new_len}, i64 0, metadata !247), !dbg !246 ; [debug line = 99:5] [debug variable = new_len]
  %block_nb = lshr i32 %new_len, 6, !dbg !248     ; [#uses=1 type=i32] [debug line = 100:5]
  call void @llvm.dbg.value(metadata !{i32 %block_nb}, i64 0, metadata !249), !dbg !248 ; [debug line = 100:5] [debug variable = block_nb]
  %tmp.11 = zext i32 %rem_len to i64, !dbg !250   ; [#uses=2 type=i64] [debug line = 101:5]
  %shifted_message = getelementptr inbounds i8* %message, i64 %tmp.11, !dbg !250 ; [#uses=1 type=i8*] [debug line = 101:5]
  call void @llvm.dbg.value(metadata !{i8* %shifted_message}, i64 0, metadata !251), !dbg !250 ; [debug line = 101:5] [debug variable = shifted_message]
  %this.addr.2 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 0, !dbg !252 ; [#uses=2 type=i8*] [debug line = 102:5]
  call fastcc void @"SHA256::transform"(%class.SHA256.0* %this, i8* %this.addr.2, i32 1), !dbg !252 ; [debug line = 102:5]
  call fastcc void @"SHA256::transform"(%class.SHA256.0* %this, i8* %shifted_message, i32 %block_nb), !dbg !253 ; [debug line = 103:5]
  %rem_len.1 = and i32 %new_len, 63, !dbg !254    ; [#uses=2 type=i32] [debug line = 104:5]
  call void @llvm.dbg.value(metadata !{i32 %rem_len.1}, i64 0, metadata !240), !dbg !254 ; [debug line = 104:5] [debug variable = rem_len]
  %tmp.13 = and i32 %new_len, -64, !dbg !255      ; [#uses=1 type=i32] [debug line = 105:5]
  %tmp.14 = zext i32 %tmp.13 to i64, !dbg !255    ; [#uses=1 type=i64] [debug line = 105:5]
  %shifted_message.0.sum = add i64 %tmp.14, %tmp.11, !dbg !255 ; [#uses=1 type=i64] [debug line = 105:5]
  %message.addr = getelementptr inbounds i8* %message, i64 %shifted_message.0.sum, !dbg !255 ; [#uses=1 type=i8*] [debug line = 105:5]
  call fastcc void @_memcpy(i8* %this.addr.2, i8* %message.addr, i32 %rem_len.1), !dbg !255 ; [debug line = 105:5]
  store i32 %rem_len.1, i32* %this.addr, align 4, !dbg !256 ; [debug line = 106:5]
  %tmp.15 = add i32 %new_len, 64, !dbg !257       ; [#uses=1 type=i32] [debug line = 107:5]
  %tmp.16 = and i32 %tmp.15, -64, !dbg !257       ; [#uses=1 type=i32] [debug line = 107:5]
  %this.addr.3 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 0, !dbg !257 ; [#uses=2 type=i32*] [debug line = 107:5]
  %this.load.2 = load i32* %this.addr.3, align 4, !dbg !257 ; [#uses=2 type=i32] [debug line = 107:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.2) nounwind
  %tmp.17 = add i32 %this.load.2, %tmp.16, !dbg !257 ; [#uses=1 type=i32] [debug line = 107:5]
  store i32 %tmp.17, i32* %this.addr.3, align 4, !dbg !257 ; [debug line = 107:5]
  br label %3, !dbg !258                          ; [debug line = 108:1]

; <label>:3                                       ; preds = %2, %1
  ret void, !dbg !258                             ; [debug line = 108:1]
}

; [#uses=3]
define internal fastcc void @"SHA256::transform"(%class.SHA256.0* %this, i8* %message, i32 %block_nb) nounwind uwtable align 2 {
  %w = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  %wv = alloca [8 x i32], align 16                ; [#uses=10 type=[8 x i32]*]
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %this}, i64 0, metadata !259), !dbg !260 ; [debug line = 35:14] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !261), !dbg !262 ; [debug line = 35:45] [debug variable = message]
  call void @llvm.dbg.value(metadata !{i32 %block_nb}, i64 0, metadata !263), !dbg !264 ; [debug line = 35:67] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %w}, metadata !265), !dbg !268 ; [debug line = 37:12] [debug variable = w]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %wv}, metadata !269), !dbg !270 ; [debug line = 38:12] [debug variable = wv]
  %wv.addr = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 7, !dbg !271 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.1 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 4, !dbg !271 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.2 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 5, !dbg !271 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.3 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 6, !dbg !271 ; [#uses=2 type=i32*] [debug line = 55:13]
  %wv.addr.4 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 0, !dbg !276 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.5 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 1, !dbg !276 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.6 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 2, !dbg !276 ; [#uses=2 type=i32*] [debug line = 57:13]
  %wv.addr.7 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 3, !dbg !277 ; [#uses=2 type=i32*] [debug line = 61:13]
  br label %1, !dbg !278                          ; [debug line = 43:10]

; <label>:1                                       ; preds = %9, %0
  %i = phi i32 [ 0, %0 ], [ %i.3, %9 ]            ; [#uses=3 type=i32]
  %tmp = icmp slt i32 %i, %block_nb, !dbg !278    ; [#uses=1 type=i1] [debug line = 43:10]
  br i1 %tmp, label %2, label %10, !dbg !278      ; [debug line = 43:10]

; <label>:2                                       ; preds = %1
  %tmp.18 = shl i32 %i, 6, !dbg !279              ; [#uses=1 type=i32] [debug line = 44:9]
  %tmp.19 = sext i32 %tmp.18 to i64, !dbg !279    ; [#uses=1 type=i64] [debug line = 44:9]
  br label %3, !dbg !280                          ; [debug line = 45:14]

; <label>:3                                       ; preds = %4, %2
  %j = phi i32 [ 0, %2 ], [ %j.5, %4 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %j, 16, !dbg !280      ; [#uses=1 type=i1] [debug line = 45:14]
  br i1 %exitcond1, label %.preheader13.preheader, label %4, !dbg !280 ; [debug line = 45:14]

.preheader13.preheader:                           ; preds = %3
  br label %.preheader13, !dbg !282               ; [debug line = 48:14]

; <label>:4                                       ; preds = %3
  %tmp.20 = shl i32 %j, 2, !dbg !284              ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.21 = sext i32 %tmp.20 to i64, !dbg !284    ; [#uses=1 type=i64] [debug line = 46:15]
  %sub_block.0.sum = add i64 %tmp.21, %tmp.19, !dbg !284 ; [#uses=4 type=i64] [debug line = 46:15]
  %.sum1 = or i64 %sub_block.0.sum, 3, !dbg !284  ; [#uses=1 type=i64] [debug line = 46:15]
  %message.addr = getelementptr inbounds i8* %message, i64 %.sum1, !dbg !284 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load = load i8* %message.addr, align 1, !dbg !284 ; [#uses=2 type=i8] [debug line = 46:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %message.load) nounwind
  %tmp.22 = zext i8 %message.load to i32, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:15]
  %.sum3 = or i64 %sub_block.0.sum, 2, !dbg !284  ; [#uses=1 type=i64] [debug line = 46:15]
  %message.addr.1 = getelementptr inbounds i8* %message, i64 %.sum3, !dbg !284 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.1 = load i8* %message.addr.1, align 1, !dbg !284 ; [#uses=2 type=i8] [debug line = 46:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %message.load.1) nounwind
  %tmp.23 = zext i8 %message.load.1 to i32, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.24 = shl nuw nsw i32 %tmp.23, 8, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:15]
  %.sum5 = or i64 %sub_block.0.sum, 1, !dbg !284  ; [#uses=1 type=i64] [debug line = 46:15]
  %message.addr.2 = getelementptr inbounds i8* %message, i64 %.sum5, !dbg !284 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.2 = load i8* %message.addr.2, align 1, !dbg !284 ; [#uses=2 type=i8] [debug line = 46:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %message.load.2) nounwind
  %tmp.25 = zext i8 %message.load.2 to i32, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.26 = shl nuw nsw i32 %tmp.25, 16, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:15]
  %message.addr.3 = getelementptr inbounds i8* %message, i64 %sub_block.0.sum, !dbg !284 ; [#uses=1 type=i8*] [debug line = 46:15]
  %message.load.3 = load i8* %message.addr.3, align 1, !dbg !284 ; [#uses=2 type=i8] [debug line = 46:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %message.load.3) nounwind
  %tmp.27 = zext i8 %message.load.3 to i32, !dbg !284 ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.28 = shl nuw i32 %tmp.27, 24, !dbg !284    ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.29 = or i32 %tmp.24, %tmp.22, !dbg !284    ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.30 = or i32 %tmp.29, %tmp.26, !dbg !284    ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.31 = or i32 %tmp.30, %tmp.28, !dbg !284    ; [#uses=1 type=i32] [debug line = 46:15]
  %tmp.32 = sext i32 %j to i64, !dbg !284         ; [#uses=1 type=i64] [debug line = 46:15]
  %w.addr = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.32, !dbg !284 ; [#uses=1 type=i32*] [debug line = 46:15]
  store i32 %tmp.31, i32* %w.addr, align 4, !dbg !284 ; [debug line = 46:15]
  %j.5 = add nsw i32 %j, 1, !dbg !287             ; [#uses=1 type=i32] [debug line = 45:29]
  call void @llvm.dbg.value(metadata !{i32 %j.5}, i64 0, metadata !288), !dbg !287 ; [debug line = 45:29] [debug variable = j]
  br label %3, !dbg !287                          ; [debug line = 45:29]

.preheader13:                                     ; preds = %5, %.preheader13.preheader
  %j.1 = phi i32 [ %j.6, %5 ], [ 16, %.preheader13.preheader ] ; [#uses=7 type=i32]
  %exitcond9 = icmp eq i32 %j.1, 64, !dbg !282    ; [#uses=1 type=i1] [debug line = 48:14]
  br i1 %exitcond9, label %.preheader12.preheader, label %5, !dbg !282 ; [debug line = 48:14]

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12, !dbg !289               ; [debug line = 51:14]

; <label>:5                                       ; preds = %.preheader13
  %tmp.34 = add nsw i32 %j.1, -2, !dbg !291       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.35 = sext i32 %tmp.34 to i64, !dbg !291    ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.1 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.35, !dbg !291 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load = load i32* %w.addr.1, align 4, !dbg !291 ; [#uses=10 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.36 = lshr i32 %w.load, 17, !dbg !291       ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.37 = shl i32 %w.load, 15, !dbg !291        ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.38 = or i32 %tmp.37, %tmp.36, !dbg !291    ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.39 = lshr i32 %w.load, 19, !dbg !291       ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.40 = shl i32 %w.load, 13, !dbg !291        ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.41 = or i32 %tmp.40, %tmp.39, !dbg !291    ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load) nounwind
  %tmp.42 = lshr i32 %w.load, 10, !dbg !291       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.43 = xor i32 %tmp.38, %tmp.42, !dbg !291   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.44 = xor i32 %tmp.43, %tmp.41, !dbg !291   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.45 = add nsw i32 %j.1, -7, !dbg !291       ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.46 = sext i32 %tmp.45 to i64, !dbg !291    ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.2 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.46, !dbg !291 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.1 = load i32* %w.addr.2, align 4, !dbg !291 ; [#uses=2 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.1) nounwind
  %tmp.47 = add nsw i32 %j.1, -15, !dbg !291      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.48 = sext i32 %tmp.47 to i64, !dbg !291    ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.3 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.48, !dbg !291 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.2 = load i32* %w.addr.3, align 4, !dbg !291 ; [#uses=10 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.49 = lshr i32 %w.load.2, 7, !dbg !291      ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.50 = shl i32 %w.load.2, 25, !dbg !291      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.51 = or i32 %tmp.50, %tmp.49, !dbg !291    ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.52 = lshr i32 %w.load.2, 18, !dbg !291     ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.53 = shl i32 %w.load.2, 14, !dbg !291      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.54 = or i32 %tmp.53, %tmp.52, !dbg !291    ; [#uses=1 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.2) nounwind
  %tmp.55 = lshr i32 %w.load.2, 3, !dbg !291      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.56 = xor i32 %tmp.51, %tmp.55, !dbg !291   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.57 = xor i32 %tmp.56, %tmp.54, !dbg !291   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.58 = add nsw i32 %j.1, -16, !dbg !291      ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.59 = sext i32 %tmp.58 to i64, !dbg !291    ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.4 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.59, !dbg !291 ; [#uses=1 type=i32*] [debug line = 49:13]
  %w.load.3 = load i32* %w.addr.4, align 4, !dbg !291 ; [#uses=2 type=i32] [debug line = 49:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.3) nounwind
  %tmp.60 = add i32 %w.load.1, %tmp.44, !dbg !291 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.61 = add i32 %tmp.60, %tmp.57, !dbg !291   ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.62 = add i32 %tmp.61, %w.load.3, !dbg !291 ; [#uses=1 type=i32] [debug line = 49:13]
  %tmp.63 = sext i32 %j.1 to i64, !dbg !291       ; [#uses=1 type=i64] [debug line = 49:13]
  %w.addr.5 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.63, !dbg !291 ; [#uses=1 type=i32*] [debug line = 49:13]
  store i32 %tmp.62, i32* %w.addr.5, align 4, !dbg !291 ; [debug line = 49:13]
  %j.6 = add nsw i32 %j.1, 1, !dbg !293           ; [#uses=1 type=i32] [debug line = 48:30]
  call void @llvm.dbg.value(metadata !{i32 %j.6}, i64 0, metadata !288), !dbg !293 ; [debug line = 48:30] [debug variable = j]
  br label %.preheader13, !dbg !293               ; [debug line = 48:30]

.preheader12:                                     ; preds = %6, %.preheader12.preheader
  %j.2 = phi i32 [ %j.7, %6 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i32]
  %exitcond8 = icmp eq i32 %j.2, 8, !dbg !289     ; [#uses=1 type=i1] [debug line = 51:14]
  br i1 %exitcond8, label %.preheader11.preheader, label %6, !dbg !289 ; [debug line = 51:14]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !294               ; [debug line = 54:14]

; <label>:6                                       ; preds = %.preheader12
  %tmp.65 = sext i32 %j.2 to i64, !dbg !295       ; [#uses=2 type=i64] [debug line = 52:13]
  %this.addr = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 %tmp.65, !dbg !295 ; [#uses=1 type=i32*] [debug line = 52:13]
  %this.load = load i32* %this.addr, align 4, !dbg !295 ; [#uses=2 type=i32] [debug line = 52:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %wv.addr.8 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp.65, !dbg !295 ; [#uses=1 type=i32*] [debug line = 52:13]
  store i32 %this.load, i32* %wv.addr.8, align 4, !dbg !295 ; [debug line = 52:13]
  %j.7 = add nsw i32 %j.2, 1, !dbg !297           ; [#uses=1 type=i32] [debug line = 51:28]
  call void @llvm.dbg.value(metadata !{i32 %j.7}, i64 0, metadata !288), !dbg !297 ; [debug line = 51:28] [debug variable = j]
  br label %.preheader12, !dbg !297               ; [debug line = 51:28]

.preheader11:                                     ; preds = %7, %.preheader11.preheader
  %j.3 = phi i32 [ %j.8, %7 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i32]
  %exitcond7 = icmp eq i32 %j.3, 64, !dbg !294    ; [#uses=1 type=i1] [debug line = 54:14]
  br i1 %exitcond7, label %.preheader.preheader, label %7, !dbg !294 ; [debug line = 54:14]

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader, !dbg !298                 ; [debug line = 67:14]

; <label>:7                                       ; preds = %.preheader11
  %wv.load = load i32* %wv.addr, align 4, !dbg !271 ; [#uses=2 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load) nounwind
  %wv.load.1 = load i32* %wv.addr.1, align 16, !dbg !271 ; [#uses=18 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.67 = lshr i32 %wv.load.1, 6, !dbg !271     ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.68 = shl i32 %wv.load.1, 26, !dbg !271     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.69 = or i32 %tmp.68, %tmp.67, !dbg !271    ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.70 = lshr i32 %wv.load.1, 11, !dbg !271    ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.71 = shl i32 %wv.load.1, 21, !dbg !271     ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.72 = or i32 %tmp.71, %tmp.70, !dbg !271    ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.73 = lshr i32 %wv.load.1, 25, !dbg !271    ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.74 = shl i32 %wv.load.1, 7, !dbg !271      ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.75 = or i32 %tmp.74, %tmp.73, !dbg !271    ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.76 = xor i32 %tmp.69, %tmp.75, !dbg !271   ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.77 = xor i32 %tmp.76, %tmp.72, !dbg !271   ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %wv.load.2 = load i32* %wv.addr.2, align 4, !dbg !271 ; [#uses=4 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.2) nounwind
  %tmp.78 = and i32 %wv.load.2, %wv.load.1, !dbg !271 ; [#uses=1 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  %tmp.79 = xor i32 %wv.load.1, -1, !dbg !271     ; [#uses=1 type=i32] [debug line = 55:13]
  %wv.load.3 = load i32* %wv.addr.3, align 8, !dbg !271 ; [#uses=4 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.3) nounwind
  %tmp.80 = and i32 %wv.load.3, %tmp.79, !dbg !271 ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.81 = xor i32 %tmp.80, %tmp.78, !dbg !271   ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.82 = sext i32 %j.3 to i64, !dbg !271       ; [#uses=2 type=i64] [debug line = 55:13]
  %"SHA256::sha256_k.addr" = getelementptr inbounds [64 x i32]* @"SHA256::sha256_k", i64 0, i64 %tmp.82, !dbg !271 ; [#uses=1 type=i32*] [debug line = 55:13]
  %"SHA256::sha256_k.load" = load i32* %"SHA256::sha256_k.addr", align 4, !dbg !271 ; [#uses=2 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %"SHA256::sha256_k.load") nounwind
  %w.addr.6 = getelementptr inbounds [64 x i32]* %w, i64 0, i64 %tmp.82, !dbg !271 ; [#uses=1 type=i32*] [debug line = 55:13]
  %w.load.4 = load i32* %w.addr.6, align 4, !dbg !271 ; [#uses=2 type=i32] [debug line = 55:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %w.load.4) nounwind
  %tmp.83 = add i32 %tmp.77, %wv.load, !dbg !271  ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.84 = add i32 %tmp.83, %tmp.81, !dbg !271   ; [#uses=1 type=i32] [debug line = 55:13]
  %tmp.85 = add i32 %tmp.84, %"SHA256::sha256_k.load", !dbg !271 ; [#uses=1 type=i32] [debug line = 55:13]
  %t1 = add i32 %tmp.85, %w.load.4, !dbg !271     ; [#uses=2 type=i32] [debug line = 55:13]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !300), !dbg !271 ; [debug line = 55:13] [debug variable = t1]
  %wv.load.4 = load i32* %wv.addr.4, align 16, !dbg !276 ; [#uses=17 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.86 = lshr i32 %wv.load.4, 2, !dbg !276     ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.87 = shl i32 %wv.load.4, 30, !dbg !276     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.88 = or i32 %tmp.87, %tmp.86, !dbg !276    ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.89 = lshr i32 %wv.load.4, 13, !dbg !276    ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.90 = shl i32 %wv.load.4, 19, !dbg !276     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.91 = or i32 %tmp.90, %tmp.89, !dbg !276    ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.92 = lshr i32 %wv.load.4, 22, !dbg !276    ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %tmp.93 = shl i32 %wv.load.4, 10, !dbg !276     ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.94 = or i32 %tmp.93, %tmp.92, !dbg !276    ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.95 = xor i32 %tmp.88, %tmp.94, !dbg !276   ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.96 = xor i32 %tmp.95, %tmp.91, !dbg !276   ; [#uses=1 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %wv.load.5 = load i32* %wv.addr.5, align 4, !dbg !276 ; [#uses=6 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.5) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  %wv.load.6 = load i32* %wv.addr.6, align 8, !dbg !276 ; [#uses=6 type=i32] [debug line = 57:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.6) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.5) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.6) nounwind
  %tmp.97 = and i32 %wv.load.6, %wv.load.5, !dbg !276 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.98 = xor i32 %wv.load.6, %wv.load.5, !dbg !276 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.99 = and i32 %tmp.98, %wv.load.4, !dbg !276 ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.100 = xor i32 %tmp.99, %tmp.97, !dbg !276  ; [#uses=1 type=i32] [debug line = 57:13]
  call void @llvm.dbg.value(metadata !{i32 %t2}, i64 0, metadata !301), !dbg !276 ; [debug line = 57:13] [debug variable = t2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.3) nounwind
  store i32 %wv.load.3, i32* %wv.addr, align 4, !dbg !302 ; [debug line = 58:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.2) nounwind
  store i32 %wv.load.2, i32* %wv.addr.3, align 8, !dbg !303 ; [debug line = 59:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.1) nounwind
  store i32 %wv.load.1, i32* %wv.addr.2, align 4, !dbg !304 ; [debug line = 60:13]
  %wv.load.7 = load i32* %wv.addr.7, align 4, !dbg !277 ; [#uses=2 type=i32] [debug line = 61:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.7) nounwind
  %tmp.101 = add i32 %wv.load.7, %t1, !dbg !277   ; [#uses=1 type=i32] [debug line = 61:13]
  store i32 %tmp.101, i32* %wv.addr.1, align 16, !dbg !277 ; [debug line = 61:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.6) nounwind
  store i32 %wv.load.6, i32* %wv.addr.7, align 4, !dbg !305 ; [debug line = 62:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.5) nounwind
  store i32 %wv.load.5, i32* %wv.addr.6, align 8, !dbg !306 ; [debug line = 63:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.4) nounwind
  store i32 %wv.load.4, i32* %wv.addr.5, align 4, !dbg !307 ; [debug line = 64:13]
  %t2 = add i32 %tmp.96, %t1, !dbg !276           ; [#uses=1 type=i32] [debug line = 57:13]
  %tmp.102 = add i32 %t2, %tmp.100, !dbg !308     ; [#uses=1 type=i32] [debug line = 65:13]
  store i32 %tmp.102, i32* %wv.addr.4, align 16, !dbg !308 ; [debug line = 65:13]
  %j.8 = add nsw i32 %j.3, 1, !dbg !309           ; [#uses=1 type=i32] [debug line = 54:29]
  call void @llvm.dbg.value(metadata !{i32 %j.8}, i64 0, metadata !288), !dbg !309 ; [debug line = 54:29] [debug variable = j]
  br label %.preheader11, !dbg !309               ; [debug line = 54:29]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %j.4 = phi i32 [ %j.9, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j.4, 8, !dbg !298      ; [#uses=1 type=i1] [debug line = 67:14]
  br i1 %exitcond, label %9, label %8, !dbg !298  ; [debug line = 67:14]

; <label>:8                                       ; preds = %.preheader
  %tmp.105 = sext i32 %j.4 to i64, !dbg !310      ; [#uses=2 type=i64] [debug line = 68:13]
  %wv.addr.9 = getelementptr inbounds [8 x i32]* %wv, i64 0, i64 %tmp.105, !dbg !310 ; [#uses=1 type=i32*] [debug line = 68:13]
  %wv.load.8 = load i32* %wv.addr.9, align 4, !dbg !310 ; [#uses=2 type=i32] [debug line = 68:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wv.load.8) nounwind
  %this.addr.4 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 %tmp.105, !dbg !310 ; [#uses=2 type=i32*] [debug line = 68:13]
  %this.load.3 = load i32* %this.addr.4, align 4, !dbg !310 ; [#uses=2 type=i32] [debug line = 68:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.3) nounwind
  %tmp.106 = add i32 %this.load.3, %wv.load.8, !dbg !310 ; [#uses=1 type=i32] [debug line = 68:13]
  store i32 %tmp.106, i32* %this.addr.4, align 4, !dbg !310 ; [debug line = 68:13]
  %j.9 = add nsw i32 %j.4, 1, !dbg !312           ; [#uses=1 type=i32] [debug line = 67:28]
  call void @llvm.dbg.value(metadata !{i32 %j.9}, i64 0, metadata !288), !dbg !312 ; [debug line = 67:28] [debug variable = j]
  br label %.preheader, !dbg !312                 ; [debug line = 67:28]

; <label>:9                                       ; preds = %.preheader
  %i.3 = add nsw i32 %i, 1, !dbg !313             ; [#uses=1 type=i32] [debug line = 43:37]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !314), !dbg !313 ; [debug line = 43:37] [debug variable = i]
  br label %1, !dbg !313                          ; [debug line = 43:37]

; <label>:10                                      ; preds = %1
  ret void, !dbg !315                             ; [debug line = 71:1]
}

; [#uses=1]
define internal fastcc void @"SHA256::init"(%class.SHA256.0* %this) nounwind uwtable align 2 {
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %this}, i64 0, metadata !316), !dbg !317 ; [debug line = 73:14] [debug variable = this]
  %this.addr = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 0, !dbg !318 ; [#uses=1 type=i32*] [debug line = 75:5]
  store i32 1779033703, i32* %this.addr, align 4, !dbg !318 ; [debug line = 75:5]
  %this.addr.5 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 1, !dbg !320 ; [#uses=1 type=i32*] [debug line = 76:5]
  store i32 -1150833019, i32* %this.addr.5, align 4, !dbg !320 ; [debug line = 76:5]
  %this.addr.6 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 2, !dbg !321 ; [#uses=1 type=i32*] [debug line = 77:5]
  store i32 1013904242, i32* %this.addr.6, align 4, !dbg !321 ; [debug line = 77:5]
  %this.addr.7 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 3, !dbg !322 ; [#uses=1 type=i32*] [debug line = 78:5]
  store i32 -1521486534, i32* %this.addr.7, align 4, !dbg !322 ; [debug line = 78:5]
  %this.addr.8 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 4, !dbg !323 ; [#uses=1 type=i32*] [debug line = 79:5]
  store i32 1359893119, i32* %this.addr.8, align 4, !dbg !323 ; [debug line = 79:5]
  %this.addr.9 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 5, !dbg !324 ; [#uses=1 type=i32*] [debug line = 80:5]
  store i32 -1694144372, i32* %this.addr.9, align 4, !dbg !324 ; [debug line = 80:5]
  %this.addr.10 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 6, !dbg !325 ; [#uses=1 type=i32*] [debug line = 81:5]
  store i32 528734635, i32* %this.addr.10, align 4, !dbg !325 ; [debug line = 81:5]
  %this.addr.11 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 7, !dbg !326 ; [#uses=1 type=i32*] [debug line = 82:5]
  store i32 1541459225, i32* %this.addr.11, align 4, !dbg !326 ; [debug line = 82:5]
  %this.addr.12 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 1, !dbg !327 ; [#uses=1 type=i32*] [debug line = 83:5]
  store i32 0, i32* %this.addr.12, align 4, !dbg !327 ; [debug line = 83:5]
  %this.addr.13 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 0, !dbg !328 ; [#uses=1 type=i32*] [debug line = 84:5]
  store i32 0, i32* %this.addr.13, align 4, !dbg !328 ; [debug line = 84:5]
  ret void, !dbg !329                             ; [debug line = 85:1]
}

; [#uses=1]
define internal fastcc void @"SHA256::final"(%class.SHA256.0* %this, i8* %digest) nounwind uwtable align 2 {
  call void @llvm.dbg.value(metadata !{%class.SHA256.0* %this}, i64 0, metadata !330), !dbg !331 ; [debug line = 110:14] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %digest}, i64 0, metadata !332), !dbg !333 ; [debug line = 110:35] [debug variable = digest]
  %this.addr = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 1, !dbg !334 ; [#uses=2 type=i32*] [debug line = 116:5]
  %this.load = load i32* %this.addr, align 4, !dbg !334 ; [#uses=8 type=i32] [debug line = 116:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp = and i32 %this.load, 56, !dbg !334        ; [#uses=1 type=i32] [debug line = 116:5]
  %tmp.108 = icmp ugt i32 %tmp, 55, !dbg !334     ; [#uses=1 type=i1] [debug line = 116:5]
  %block_nb = select i1 %tmp.108, i32 2, i32 1, !dbg !334 ; [#uses=2 type=i32] [debug line = 116:5]
  call void @llvm.dbg.value(metadata !{i32 %block_nb}, i64 0, metadata !336), !dbg !334 ; [debug line = 116:5] [debug variable = block_nb]
  %this.addr.14 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 0, !dbg !337 ; [#uses=1 type=i32*] [debug line = 118:5]
  %this.load.4 = load i32* %this.addr.14, align 4, !dbg !337 ; [#uses=2 type=i32] [debug line = 118:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.4) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp.109 = add i32 %this.load.4, %this.load, !dbg !337 ; [#uses=4 type=i32] [debug line = 118:5]
  %tmp.110 = trunc i32 %tmp.109 to i8, !dbg !337  ; [#uses=1 type=i8] [debug line = 118:5]
  %pm_len = shl nuw nsw i32 %block_nb, 6, !dbg !338 ; [#uses=2 type=i32] [debug line = 119:5]
  call void @llvm.dbg.value(metadata !{i32 %pm_len}, i64 0, metadata !339), !dbg !338 ; [debug line = 119:5] [debug variable = pm_len]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp.111 = zext i32 %this.load to i64, !dbg !340 ; [#uses=1 type=i64] [debug line = 120:5]
  %this.addr.15 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %tmp.111, !dbg !340 ; [#uses=1 type=i8*] [debug line = 120:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load) nounwind
  %tmp.112 = sub i32 %pm_len, %this.load, !dbg !340 ; [#uses=1 type=i32] [debug line = 120:5]
  call fastcc void @_memset(i8* %this.addr.15, i32 %tmp.112), !dbg !340 ; [debug line = 120:5]
  %this.load.5 = load i32* %this.addr, align 4, !dbg !341 ; [#uses=2 type=i32] [debug line = 121:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.5) nounwind
  %tmp.113 = zext i32 %this.load.5 to i64, !dbg !341 ; [#uses=1 type=i64] [debug line = 121:5]
  %this.addr.16 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %tmp.113, !dbg !341 ; [#uses=1 type=i8*] [debug line = 121:5]
  store i8 -128, i8* %this.addr.16, align 1, !dbg !341 ; [debug line = 121:5]
  %tmp.114 = shl i8 %tmp.110, 3, !dbg !342        ; [#uses=1 type=i8] [debug line = 122:7]
  %tmp.115 = zext i32 %pm_len to i64, !dbg !342   ; [#uses=4 type=i64] [debug line = 122:7]
  %.sum1 = add i64 %tmp.115, -1, !dbg !342        ; [#uses=1 type=i64] [debug line = 122:7]
  %this.addr.17 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %.sum1, !dbg !342 ; [#uses=1 type=i8*] [debug line = 122:7]
  store i8 %tmp.114, i8* %this.addr.17, align 1, !dbg !342 ; [debug line = 122:7]
  %tmp.116 = lshr i32 %tmp.109, 5, !dbg !344      ; [#uses=1 type=i32] [debug line = 122:59]
  %tmp.117 = trunc i32 %tmp.116 to i8, !dbg !344  ; [#uses=1 type=i8] [debug line = 122:59]
  %.sum3 = add i64 %tmp.115, -2, !dbg !344        ; [#uses=1 type=i64] [debug line = 122:59]
  %this.addr.18 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %.sum3, !dbg !344 ; [#uses=1 type=i8*] [debug line = 122:59]
  store i8 %tmp.117, i8* %this.addr.18, align 1, !dbg !344 ; [debug line = 122:59]
  %tmp.118 = lshr i32 %tmp.109, 13, !dbg !345     ; [#uses=1 type=i32] [debug line = 122:115]
  %tmp.119 = trunc i32 %tmp.118 to i8, !dbg !345  ; [#uses=1 type=i8] [debug line = 122:115]
  %.sum5 = add i64 %tmp.115, -3, !dbg !345        ; [#uses=1 type=i64] [debug line = 122:115]
  %this.addr.19 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %.sum5, !dbg !345 ; [#uses=1 type=i8*] [debug line = 122:115]
  store i8 %tmp.119, i8* %this.addr.19, align 1, !dbg !345 ; [debug line = 122:115]
  %tmp.120 = lshr i32 %tmp.109, 21, !dbg !346     ; [#uses=1 type=i32] [debug line = 122:172]
  %tmp.121 = trunc i32 %tmp.120 to i8, !dbg !346  ; [#uses=1 type=i8] [debug line = 122:172]
  %.sum6 = add i64 %tmp.115, -4, !dbg !346        ; [#uses=1 type=i64] [debug line = 122:172]
  %this.addr.20 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 %.sum6, !dbg !346 ; [#uses=1 type=i8*] [debug line = 122:172]
  store i8 %tmp.121, i8* %this.addr.20, align 1, !dbg !346 ; [debug line = 122:172]
  %this.addr.21 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 2, i64 0, !dbg !347 ; [#uses=1 type=i8*] [debug line = 123:5]
  call fastcc void @"SHA256::transform"(%class.SHA256.0* %this, i8* %this.addr.21, i32 %block_nb), !dbg !347 ; [debug line = 123:5]
  br label %1, !dbg !348                          ; [debug line = 124:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %2 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %i, 8, !dbg !348        ; [#uses=1 type=i1] [debug line = 124:10]
  br i1 %exitcond, label %3, label %2, !dbg !348  ; [debug line = 124:10]

; <label>:2                                       ; preds = %1
  %tmp.122 = sext i32 %i to i64, !dbg !350        ; [#uses=1 type=i64] [debug line = 125:11]
  %this.addr.22 = getelementptr inbounds %class.SHA256.0* %this, i64 0, i32 3, i64 %tmp.122, !dbg !350 ; [#uses=4 type=i32*] [debug line = 125:11]
  %this.load.6 = load i32* %this.addr.22, align 4, !dbg !350 ; [#uses=2 type=i32] [debug line = 125:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.6) nounwind
  %tmp.123 = trunc i32 %this.load.6 to i8, !dbg !350 ; [#uses=1 type=i8] [debug line = 125:11]
  %tmp.124 = shl i32 %i, 2, !dbg !350             ; [#uses=1 type=i32] [debug line = 125:11]
  %tmp.125 = sext i32 %tmp.124 to i64, !dbg !350  ; [#uses=4 type=i64] [debug line = 125:11]
  %.sum = or i64 %tmp.125, 3, !dbg !350           ; [#uses=1 type=i64] [debug line = 125:11]
  %digest.addr = getelementptr inbounds i8* %digest, i64 %.sum, !dbg !350 ; [#uses=1 type=i8*] [debug line = 125:11]
  store i8 %tmp.123, i8* %digest.addr, align 1, !dbg !350 ; [debug line = 125:11]
  %this.load.7 = load i32* %this.addr.22, align 4, !dbg !353 ; [#uses=2 type=i32] [debug line = 125:59]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.7) nounwind
  %tmp.126 = lshr i32 %this.load.7, 8, !dbg !353  ; [#uses=1 type=i32] [debug line = 125:59]
  %tmp.127 = trunc i32 %tmp.126 to i8, !dbg !353  ; [#uses=1 type=i8] [debug line = 125:59]
  %.sum2 = or i64 %tmp.125, 2, !dbg !353          ; [#uses=1 type=i64] [debug line = 125:59]
  %digest.addr.1 = getelementptr inbounds i8* %digest, i64 %.sum2, !dbg !353 ; [#uses=1 type=i8*] [debug line = 125:59]
  store i8 %tmp.127, i8* %digest.addr.1, align 1, !dbg !353 ; [debug line = 125:59]
  %this.load.8 = load i32* %this.addr.22, align 4, !dbg !354 ; [#uses=2 type=i32] [debug line = 125:111]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.8) nounwind
  %tmp.128 = lshr i32 %this.load.8, 16, !dbg !354 ; [#uses=1 type=i32] [debug line = 125:111]
  %tmp.129 = trunc i32 %tmp.128 to i8, !dbg !354  ; [#uses=1 type=i8] [debug line = 125:111]
  %.sum4 = or i64 %tmp.125, 1, !dbg !354          ; [#uses=1 type=i64] [debug line = 125:111]
  %digest.addr.2 = getelementptr inbounds i8* %digest, i64 %.sum4, !dbg !354 ; [#uses=1 type=i8*] [debug line = 125:111]
  store i8 %tmp.129, i8* %digest.addr.2, align 1, !dbg !354 ; [debug line = 125:111]
  %this.load.9 = load i32* %this.addr.22, align 4, !dbg !355 ; [#uses=2 type=i32] [debug line = 125:164]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %this.load.9) nounwind
  %tmp.130 = lshr i32 %this.load.9, 24, !dbg !355 ; [#uses=1 type=i32] [debug line = 125:164]
  %tmp.131 = trunc i32 %tmp.130 to i8, !dbg !355  ; [#uses=1 type=i8] [debug line = 125:164]
  %digest.addr.3 = getelementptr inbounds i8* %digest, i64 %tmp.125, !dbg !355 ; [#uses=1 type=i8*] [debug line = 125:164]
  store i8 %tmp.131, i8* %digest.addr.3, align 1, !dbg !355 ; [debug line = 125:164]
  %i.4 = add nsw i32 %i, 1, !dbg !356             ; [#uses=1 type=i32] [debug line = 124:25]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !357), !dbg !356 ; [debug line = 124:25] [debug variable = i]
  br label %1, !dbg !356                          ; [debug line = 124:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !358                             ; [debug line = 127:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!120, !127, !131, !137, !143, !149, !152, !156, !156, !156}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_stream/solution1/.autopilot/db/sha256_stream.pragma.2.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !113} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !17, metadata !48, metadata !49, metadata !50, metadata !51, metadata !110, metadata !111, metadata !112}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_j", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @_memcpy, null, null, metadata !12, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sha256_stream/src/sha256_stream.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
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
!22 = metadata !{i32 786473, metadata !"sha256_stream/src/sha256_stream.h", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
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
!51 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256", metadata !"sha256", metadata !"_Z6sha256N3hls6streamIhEEiPh", metadata !6, i32 129, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.1"*, i32, i8*)* @sha256, null, null, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !54, metadata !109, metadata !9}
!54 = metadata !{i32 786454, null, metadata !"mem_stream", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!55 = metadata !{i32 786434, metadata !56, metadata !"stream<unsigned char>", metadata !57, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !58, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!56 = metadata !{i32 786489, null, metadata !"hls", metadata !57, i32 69} ; [ DW_TAG_namespace ]
!57 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!58 = metadata !{metadata !59, metadata !60, metadata !64, metadata !70, metadata !75, metadata !79, metadata !83, metadata !87, metadata !92, metadata !93, metadata !94, metadata !97, metadata !100, metadata !101, metadata !104}
!59 = metadata !{i32 786445, metadata !55, metadata !"V", metadata !57, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ]
!60 = metadata !{i32 786478, i32 0, metadata !55, metadata !"stream", metadata !"stream", metadata !"", metadata !57, i32 83, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 83} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !63}
!63 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !55} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786478, i32 0, metadata !55, metadata !"stream", metadata !"stream", metadata !"", metadata !57, i32 86, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 86} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !63, metadata !67}
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_const_type ]
!69 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786478, i32 0, metadata !55, metadata !"stream", metadata !"stream", metadata !"", metadata !57, i32 91, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 91} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !63, metadata !73}
!73 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_reference_type ]
!74 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ]
!75 = metadata !{i32 786478, i32 0, metadata !55, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !57, i32 94, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 94} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !78, metadata !63, metadata !73}
!78 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_reference_type ]
!79 = metadata !{i32 786478, i32 0, metadata !55, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !57, i32 101, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 101} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !63, metadata !82}
!82 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!83 = metadata !{i32 786478, i32 0, metadata !55, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !57, i32 105, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 105} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{null, metadata !63, metadata !86}
!86 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_reference_type ]
!87 = metadata !{i32 786478, i32 0, metadata !55, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !57, i32 112, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 112} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !90, metadata !91}
!90 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!91 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !74} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 786478, i32 0, metadata !55, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !57, i32 117, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 117} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786478, i32 0, metadata !55, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !57, i32 123, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 123} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786478, i32 0, metadata !55, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !57, i32 129, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{metadata !10, metadata !63}
!97 = metadata !{i32 786478, i32 0, metadata !55, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !57, i32 136, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 136} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !90, metadata !63, metadata !82}
!100 = metadata !{i32 786478, i32 0, metadata !55, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !57, i32 144, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 144} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786478, i32 0, metadata !55, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !57, i32 150, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 150} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{metadata !90, metadata !63, metadata !86}
!104 = metadata !{i32 786478, i32 0, metadata !55, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !57, i32 157, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 157} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !11, metadata !63}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !10, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!109 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 786478, i32 0, metadata !56, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !57, i32 129, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !94, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786478, i32 0, null, metadata !"SHA256", metadata !"SHA256", metadata !"_ZN6SHA256C1Ev", metadata !22, i32 38, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !47, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786478, i32 0, null, metadata !"SHA256", metadata !"SHA256", metadata !"_ZN6SHA256C2Ev", metadata !22, i32 38, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !47, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 786484, i32 0, metadata !21, metadata !"sha256_k", metadata !"sha256_k", metadata !"_ZN6SHA2568sha256_kE", metadata !6, i32 17, metadata !116, i32 0, i32 1, [64 x i32]* @"SHA256::sha256_k"} ; [ DW_TAG_variable ]
!116 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !117, metadata !118, i32 0, i32 0} ; [ DW_TAG_array_type ]
!117 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!118 = metadata !{metadata !119}
!119 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!120 = metadata !{void (i8*, i8*, i32)* @_memcpy, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!121 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!122 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uint"}
!124 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"src", metadata !"length"}
!126 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!127 = metadata !{null, metadata !128, metadata !122, metadata !129, metadata !124, metadata !130, metadata !126}
!128 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar", metadata !"uint"}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"val", metadata !"length"}
!131 = metadata !{void (%class.SHA256.0*, i8*, i32)* @"SHA256::transform", metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !126}
!132 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!133 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint"}
!135 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"message", metadata !"block_nb"}
!137 = metadata !{void (%class.SHA256.0*)* @"SHA256::init", metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !126}
!138 = metadata !{metadata !"kernel_arg_addr_space"}
!139 = metadata !{metadata !"kernel_arg_access_qual"}
!140 = metadata !{metadata !"kernel_arg_type"}
!141 = metadata !{metadata !"kernel_arg_type_qual"}
!142 = metadata !{metadata !"kernel_arg_name"}
!143 = metadata !{void (%class.SHA256.0*, i8*)* @"SHA256::update", metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !126}
!144 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!145 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!147 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!148 = metadata !{metadata !"kernel_arg_name", metadata !"message"}
!149 = metadata !{void (%class.SHA256.0*, i8*)* @"SHA256::final", metadata !144, metadata !145, metadata !146, metadata !150, metadata !151, metadata !126}
!150 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!151 = metadata !{metadata !"kernel_arg_name", metadata !"digest"}
!152 = metadata !{void (%"class.hls::stream.1"*, i32, i8*)* @sha256, metadata !153, metadata !122, metadata !154, metadata !124, metadata !155, metadata !126}
!153 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"mem_stream", metadata !"int", metadata !"uchar*"}
!155 = metadata !{metadata !"kernel_arg_name", metadata !"stream_in", metadata !"num_blocks", metadata !"digest_out"}
!156 = metadata !{null, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !126}
!157 = metadata !{i32 786689, metadata !51, metadata !"stream_in", metadata !6, i32 16777345, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_reference_type ]
!159 = metadata !{i32 129, i32 24, metadata !51, null}
!160 = metadata !{i32 786689, metadata !51, metadata !"num_blocks", metadata !6, i32 33554561, metadata !109, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 129, i32 39, metadata !51, null}
!162 = metadata !{i32 786689, metadata !51, metadata !"digest_out", metadata !6, i32 50331777, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 129, i32 65, metadata !51, null}
!164 = metadata !{i32 129, i32 81, metadata !165, null}
!165 = metadata !{i32 786443, metadata !51, i32 129, i32 80, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 130, i32 1, metadata !165, null}
!167 = metadata !{i32 131, i32 1, metadata !165, null}
!168 = metadata !{i32 132, i32 1, metadata !165, null}
!169 = metadata !{i32 133, i32 1, metadata !165, null}
!170 = metadata !{i32 786688, metadata !165, metadata !"data_buffer", metadata !6, i32 134, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !10, metadata !118, i32 0, i32 0} ; [ DW_TAG_array_type ]
!172 = metadata !{i32 134, i32 16, metadata !165, null}
!173 = metadata !{i32 786688, metadata !165, metadata !"cipher", metadata !6, i32 136, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 136, i32 9, metadata !165, null}
!175 = metadata !{i32 786689, metadata !111, metadata !"this", metadata !22, i32 16777254, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!177 = metadata !{i32 38, i32 39, metadata !111, metadata !178}
!178 = metadata !{i32 136, i32 15, metadata !165, null}
!179 = metadata !{i32 786689, metadata !112, metadata !"this", metadata !22, i32 16777254, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!180 = metadata !{i32 38, i32 39, metadata !112, metadata !181}
!181 = metadata !{i32 38, i32 80, metadata !111, metadata !178}
!182 = metadata !{i32 138, i32 2, metadata !165, null}
!183 = metadata !{i32 131, i32 9, metadata !184, metadata !185}
!184 = metadata !{i32 786443, metadata !110, i32 129, i32 63, metadata !57, i32 33} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 143, i32 30, metadata !186, null}
!186 = metadata !{i32 786443, metadata !187, i32 142, i32 49, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 786443, metadata !188, i32 142, i32 3, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 786443, metadata !189, i32 140, i32 65, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 786443, metadata !165, i32 140, i32 2, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 145, i32 3, metadata !188, null}
!191 = metadata !{i32 140, i32 6, metadata !189, null}
!192 = metadata !{i32 142, i32 7, metadata !187, null}
!193 = metadata !{i32 786689, metadata !110, metadata !"this", metadata !57, i32 16777345, metadata !194, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!195 = metadata !{i32 129, i32 56, metadata !110, metadata !185}
!196 = metadata !{i32 786688, metadata !184, metadata !"tmp", metadata !57, i32 130, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 130, i32 22, metadata !184, metadata !185}
!198 = metadata !{i32 132, i32 9, metadata !184, metadata !185}
!199 = metadata !{i32 142, i32 36, metadata !187, null}
!200 = metadata !{i32 786688, metadata !165, metadata !"data_index", metadata !6, i32 135, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 140, i32 49, metadata !189, null}
!202 = metadata !{i32 786688, metadata !165, metadata !"block_counter", metadata !6, i32 135, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 147, i32 2, metadata !165, null}
!204 = metadata !{i32 148, i32 1, metadata !165, null}
!205 = metadata !{i32 786689, metadata !14, metadata !"dst", metadata !6, i32 16777226, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 10, i32 29, metadata !14, null}
!207 = metadata !{i32 786689, metadata !14, metadata !"length", metadata !6, i32 50331658, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!208 = metadata !{i32 10, i32 66, metadata !14, null}
!209 = metadata !{i32 12, i32 6, metadata !210, null}
!210 = metadata !{i32 786443, metadata !211, i32 12, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 786443, metadata !14, i32 10, i32 73, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 13, i32 3, metadata !213, null}
!213 = metadata !{i32 786443, metadata !210, i32 12, i32 25, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 12, i32 21, metadata !210, null}
!215 = metadata !{i32 786688, metadata !211, metadata !"i", metadata !6, i32 11, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 15, i32 1, metadata !211, null}
!217 = metadata !{i32 786689, metadata !5, metadata !"dst", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!218 = metadata !{i32 3, i32 29, metadata !5, null}
!219 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!220 = metadata !{i32 3, i32 49, metadata !5, null}
!221 = metadata !{i32 786689, metadata !5, metadata !"length", metadata !6, i32 50331651, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!222 = metadata !{i32 3, i32 67, metadata !5, null}
!223 = metadata !{i32 5, i32 6, metadata !224, null}
!224 = metadata !{i32 786443, metadata !225, i32 5, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 786443, metadata !5, i32 3, i32 74, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 6, i32 3, metadata !227, null}
!227 = metadata !{i32 786443, metadata !224, i32 5, i32 25, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 5, i32 21, metadata !224, null}
!229 = metadata !{i32 786688, metadata !225, metadata !"i", metadata !6, i32 4, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 8, i32 1, metadata !225, null}
!231 = metadata !{i32 786689, metadata !49, metadata !"this", metadata !6, i32 16777303, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!232 = metadata !{i32 87, i32 14, metadata !49, null}
!233 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !6, i32 33554519, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 87, i32 41, metadata !49, null}
!235 = metadata !{i32 88, i32 2, metadata !236, null}
!236 = metadata !{i32 786443, metadata !49, i32 88, i32 1, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 92, i32 5, metadata !236, null}
!238 = metadata !{i32 786688, metadata !236, metadata !"tmp_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 93, i32 5, metadata !236, null}
!240 = metadata !{i32 786688, metadata !236, metadata !"rem_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 94, i32 5, metadata !236, null}
!242 = metadata !{i32 95, i32 5, metadata !236, null}
!243 = metadata !{i32 96, i32 9, metadata !244, null}
!244 = metadata !{i32 786443, metadata !236, i32 95, i32 27, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 97, i32 9, metadata !244, null}
!246 = metadata !{i32 99, i32 5, metadata !236, null}
!247 = metadata !{i32 786688, metadata !236, metadata !"new_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 100, i32 5, metadata !236, null}
!249 = metadata !{i32 786688, metadata !236, metadata !"block_nb", metadata !6, i32 89, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 101, i32 5, metadata !236, null}
!251 = metadata !{i32 786688, metadata !236, metadata !"shifted_message", metadata !6, i32 91, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 102, i32 5, metadata !236, null}
!253 = metadata !{i32 103, i32 5, metadata !236, null}
!254 = metadata !{i32 104, i32 5, metadata !236, null}
!255 = metadata !{i32 105, i32 5, metadata !236, null}
!256 = metadata !{i32 106, i32 5, metadata !236, null}
!257 = metadata !{i32 107, i32 5, metadata !236, null}
!258 = metadata !{i32 108, i32 1, metadata !236, null}
!259 = metadata !{i32 786689, metadata !17, metadata !"this", metadata !6, i32 16777251, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!260 = metadata !{i32 35, i32 14, metadata !17, null}
!261 = metadata !{i32 786689, metadata !17, metadata !"message", metadata !6, i32 33554467, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!262 = metadata !{i32 35, i32 45, metadata !17, null}
!263 = metadata !{i32 786689, metadata !17, metadata !"block_nb", metadata !6, i32 50331683, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!264 = metadata !{i32 35, i32 67, metadata !17, null}
!265 = metadata !{i32 786688, metadata !266, metadata !"w", metadata !6, i32 37, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 786443, metadata !17, i32 36, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !32, metadata !118, i32 0, i32 0} ; [ DW_TAG_array_type ]
!268 = metadata !{i32 37, i32 12, metadata !266, null}
!269 = metadata !{i32 786688, metadata !266, metadata !"wv", metadata !6, i32 38, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 38, i32 12, metadata !266, null}
!271 = metadata !{i32 55, i32 13, metadata !272, null}
!272 = metadata !{i32 786443, metadata !273, i32 54, i32 34, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 786443, metadata !274, i32 54, i32 9, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 786443, metadata !275, i32 43, i32 42, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 786443, metadata !266, i32 43, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 57, i32 13, metadata !272, null}
!277 = metadata !{i32 61, i32 13, metadata !272, null}
!278 = metadata !{i32 43, i32 10, metadata !275, null}
!279 = metadata !{i32 44, i32 9, metadata !274, null}
!280 = metadata !{i32 45, i32 14, metadata !281, null}
!281 = metadata !{i32 786443, metadata !274, i32 45, i32 9, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!282 = metadata !{i32 48, i32 14, metadata !283, null}
!283 = metadata !{i32 786443, metadata !274, i32 48, i32 9, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 46, i32 15, metadata !285, null}
!285 = metadata !{i32 786443, metadata !286, i32 46, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!286 = metadata !{i32 786443, metadata !281, i32 45, i32 34, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 45, i32 29, metadata !281, null}
!288 = metadata !{i32 786688, metadata !266, metadata !"j", metadata !6, i32 42, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!289 = metadata !{i32 51, i32 14, metadata !290, null}
!290 = metadata !{i32 786443, metadata !274, i32 51, i32 9, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 49, i32 13, metadata !292, null}
!292 = metadata !{i32 786443, metadata !283, i32 48, i32 35, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 48, i32 30, metadata !283, null}
!294 = metadata !{i32 54, i32 14, metadata !273, null}
!295 = metadata !{i32 52, i32 13, metadata !296, null}
!296 = metadata !{i32 786443, metadata !290, i32 51, i32 33, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 51, i32 28, metadata !290, null}
!298 = metadata !{i32 67, i32 14, metadata !299, null}
!299 = metadata !{i32 786443, metadata !274, i32 67, i32 9, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 786688, metadata !266, metadata !"t1", metadata !6, i32 39, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!301 = metadata !{i32 786688, metadata !266, metadata !"t2", metadata !6, i32 39, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!302 = metadata !{i32 58, i32 13, metadata !272, null}
!303 = metadata !{i32 59, i32 13, metadata !272, null}
!304 = metadata !{i32 60, i32 13, metadata !272, null}
!305 = metadata !{i32 62, i32 13, metadata !272, null}
!306 = metadata !{i32 63, i32 13, metadata !272, null}
!307 = metadata !{i32 64, i32 13, metadata !272, null}
!308 = metadata !{i32 65, i32 13, metadata !272, null}
!309 = metadata !{i32 54, i32 29, metadata !273, null}
!310 = metadata !{i32 68, i32 13, metadata !311, null}
!311 = metadata !{i32 786443, metadata !299, i32 67, i32 33, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!312 = metadata !{i32 67, i32 28, metadata !299, null}
!313 = metadata !{i32 43, i32 37, metadata !275, null}
!314 = metadata !{i32 786688, metadata !266, metadata !"i", metadata !6, i32 41, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!315 = metadata !{i32 71, i32 1, metadata !266, null}
!316 = metadata !{i32 786689, metadata !48, metadata !"this", metadata !6, i32 16777289, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!317 = metadata !{i32 73, i32 14, metadata !48, null}
!318 = metadata !{i32 75, i32 5, metadata !319, null}
!319 = metadata !{i32 786443, metadata !48, i32 74, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!320 = metadata !{i32 76, i32 5, metadata !319, null}
!321 = metadata !{i32 77, i32 5, metadata !319, null}
!322 = metadata !{i32 78, i32 5, metadata !319, null}
!323 = metadata !{i32 79, i32 5, metadata !319, null}
!324 = metadata !{i32 80, i32 5, metadata !319, null}
!325 = metadata !{i32 81, i32 5, metadata !319, null}
!326 = metadata !{i32 82, i32 5, metadata !319, null}
!327 = metadata !{i32 83, i32 5, metadata !319, null}
!328 = metadata !{i32 84, i32 5, metadata !319, null}
!329 = metadata !{i32 85, i32 1, metadata !319, null}
!330 = metadata !{i32 786689, metadata !50, metadata !"this", metadata !6, i32 16777326, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!331 = metadata !{i32 110, i32 14, metadata !50, null}
!332 = metadata !{i32 786689, metadata !50, metadata !"digest", metadata !6, i32 33554542, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!333 = metadata !{i32 110, i32 35, metadata !50, null}
!334 = metadata !{i32 116, i32 5, metadata !335, null}
!335 = metadata !{i32 786443, metadata !50, i32 111, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!336 = metadata !{i32 786688, metadata !335, metadata !"block_nb", metadata !6, i32 112, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!337 = metadata !{i32 118, i32 5, metadata !335, null}
!338 = metadata !{i32 119, i32 5, metadata !335, null}
!339 = metadata !{i32 786688, metadata !335, metadata !"pm_len", metadata !6, i32 113, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!340 = metadata !{i32 120, i32 5, metadata !335, null}
!341 = metadata !{i32 121, i32 5, metadata !335, null}
!342 = metadata !{i32 122, i32 7, metadata !343, null}
!343 = metadata !{i32 786443, metadata !335, i32 122, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!344 = metadata !{i32 122, i32 59, metadata !343, null}
!345 = metadata !{i32 122, i32 115, metadata !343, null}
!346 = metadata !{i32 122, i32 172, metadata !343, null}
!347 = metadata !{i32 123, i32 5, metadata !335, null}
!348 = metadata !{i32 124, i32 10, metadata !349, null}
!349 = metadata !{i32 786443, metadata !335, i32 124, i32 5, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!350 = metadata !{i32 125, i32 11, metadata !351, null}
!351 = metadata !{i32 786443, metadata !352, i32 125, i32 9, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!352 = metadata !{i32 786443, metadata !349, i32 124, i32 30, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!353 = metadata !{i32 125, i32 59, metadata !351, null}
!354 = metadata !{i32 125, i32 111, metadata !351, null}
!355 = metadata !{i32 125, i32 164, metadata !351, null}
!356 = metadata !{i32 124, i32 25, metadata !349, null}
!357 = metadata !{i32 786688, metadata !335, metadata !"i", metadata !6, i32 115, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!358 = metadata !{i32 127, i32 1, metadata !335, null}
