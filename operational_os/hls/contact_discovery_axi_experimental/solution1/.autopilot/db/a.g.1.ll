; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.0" = type { i8 }

@results = internal unnamed_addr global [30000 x i1] zeroinitializer, align 16 ; [#uses=2 type=[30000 x i1]*]
@llvm.global_ctors = appending global [0 x { i32, void ()* }] zeroinitializer ; [#uses=0 type=[0 x { i32, void ()* }]*]
@db_stream = internal global %"class.hls::stream.0" zeroinitializer, align 1 ; [#uses=1 type=%"class.hls::stream.0"*]
@database_size = internal unnamed_addr global i32 0, align 4 ; [#uses=10 type=i32*]
@database = internal global [1920000 x i8] zeroinitializer, align 16 ; [#uses=2 type=[1920000 x i8]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=9 type=i32*]
@contacts = internal global [8192 x i8] zeroinitializer, align 16 ; [#uses=2 type=[8192 x i8]*]
@contact_discovery.str = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=1]
define internal fastcc void @match_db_contact(i32 %database_index) nounwind uwtable {
  %tmp.13 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp.16 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %local_results = alloca [128 x i1], align 16    ; [#uses=2 type=[128 x i1]*]
  %db_item_temp = alloca [64 x i8], align 16      ; [#uses=2 type=[64 x i8]*]
  %contact = alloca %"class.hls::stream.0", align 1 ; [#uses=2 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %contact}, i64 0, metadata !145), !dbg !147 ; [debug line = 83:43@84:5@65:37] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %contact}, i64 0, metadata !153), !dbg !154 ; [debug line = 83:43@65:37] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"* %contact}, metadata !155), !dbg !156 ; [debug line = 65:30] [debug variable = contact]
  %db_item = alloca %"class.hls::stream.0", align 1 ; [#uses=2 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %db_item}, i64 0, metadata !145), !dbg !157 ; [debug line = 83:43@84:5@66:37] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %db_item}, i64 0, metadata !153), !dbg !160 ; [debug line = 83:43@66:37] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"* %db_item}, metadata !161), !dbg !162 ; [debug line = 66:30] [debug variable = db_item]
  call void @llvm.dbg.value(metadata !{i32 %database_index}, i64 0, metadata !163), !dbg !164 ; [debug line = 50:27] [debug variable = database_index]
  call void @llvm.dbg.declare(metadata !{[128 x i1]* %local_results}, metadata !165), !dbg !169 ; [debug line = 54:7] [debug variable = local_results]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %db_item_temp}, metadata !170), !dbg !174 ; [debug line = 55:16] [debug variable = db_item_temp]
  br label %1, !dbg !175                          ; [debug line = 56:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 64, !dbg !175      ; [#uses=1 type=i1] [debug line = 56:6]
  br i1 %exitcond1, label %.preheader12.preheader, label %2, !dbg !175 ; [debug line = 56:6]

.preheader12.preheader:                           ; preds = %1
  %contact.addr = getelementptr inbounds %"class.hls::stream.0"* %contact, i64 0, i32 0, !dbg !177 ; [#uses=1 type=i8*] [debug line = 146:9@69:4]
  %db_item.addr = getelementptr inbounds %"class.hls::stream.0"* %db_item, i64 0, i32 0, !dbg !182 ; [#uses=1 type=i8*] [debug line = 146:9@70:4]
  br label %.preheader12, !dbg !184               ; [debug line = 60:6]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !185) nounwind, !dbg !187 ; [debug line = 130:22@58:21] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* getelementptr inbounds (%"class.hls::stream.0"* @db_stream, i64 0, i32 0), i8* %tmp) nounwind, !dbg !190 ; [debug line = 131:9@58:21]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !191 ; [debug line = 132:9@58:21] [debug variable = tmp]
  %3 = load i8* %tmp, align 1, !dbg !191          ; [#uses=1 type=i8] [debug line = 132:9@58:21]
  %tmp.1 = sext i32 %i to i64, !dbg !188          ; [#uses=1 type=i64] [debug line = 58:21]
  %db_item_temp.addr = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp.1, !dbg !188 ; [#uses=1 type=i8*] [debug line = 58:21]
  store i8 %3, i8* %db_item_temp.addr, align 1, !dbg !188 ; [debug line = 58:21]
  %i.2 = add nsw i32 %i, 1, !dbg !192             ; [#uses=1 type=i32] [debug line = 56:17]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !193), !dbg !192 ; [debug line = 56:17] [debug variable = i]
  br label %1, !dbg !192                          ; [debug line = 56:17]

.preheader12:                                     ; preds = %5, %.preheader12.preheader
  %contacts_index = phi i32 [ %contacts_index.3, %5 ], [ 0, %.preheader12.preheader ] ; [#uses=4 type=i32]
  %exitcond9 = icmp eq i32 %contacts_index, 128, !dbg !184 ; [#uses=1 type=i1] [debug line = 60:6]
  br i1 %exitcond9, label %.preheader.preheader, label %.preheader11.preheader, !dbg !184 ; [debug line = 60:6]

.preheader.preheader:                             ; preds = %.preheader12
  br label %.preheader, !dbg !194                 ; [debug line = 74:6]

.preheader11.preheader:                           ; preds = %.preheader12
  %tmp.3 = mul i32 %contacts_index, 64, !dbg !179 ; [#uses=1 type=i32] [debug line = 69:4]
  br label %.preheader11, !dbg !196               ; [debug line = 68:7]

.preheader11:                                     ; preds = %4, %.preheader11.preheader
  %i.1 = phi i32 [ %i.3, %4 ], [ 0, %.preheader11.preheader ] ; [#uses=4 type=i32]
  %exitcond8 = icmp eq i32 %i.1, 64, !dbg !196    ; [#uses=1 type=i1] [debug line = 68:7]
  br i1 %exitcond8, label %5, label %4, !dbg !196 ; [debug line = 68:7]

; <label>:4                                       ; preds = %.preheader11
  %tmp.11 = add nsw i32 %i.1, %tmp.3, !dbg !179   ; [#uses=1 type=i32] [debug line = 69:4]
  %tmp.12 = sext i32 %tmp.11 to i64, !dbg !179    ; [#uses=1 type=i64] [debug line = 69:4]
  %din.assign = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.12, !dbg !179 ; [#uses=1 type=i8*] [debug line = 69:4]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %contact}, i64 0, metadata !197), !dbg !198 ; [debug line = 144:48@69:4] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %din.assign}, i64 0, metadata !199), !dbg !200 ; [debug line = 144:74@69:4] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.13}, metadata !201) nounwind, !dbg !202 ; [debug line = 145:22@69:4] [debug variable = tmp]
  %tmp.14 = load i8* %din.assign, align 1, !dbg !203 ; [#uses=2 type=i8] [debug line = 145:31@69:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.14) nounwind
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.14}, i64 0, metadata !201), !dbg !203 ; [debug line = 145:31@69:4] [debug variable = tmp]
  store i8 %tmp.14, i8* %tmp.13, align 1, !dbg !203 ; [debug line = 145:31@69:4]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %contact.addr, i8* %tmp.13) nounwind, !dbg !177 ; [debug line = 146:9@69:4]
  %tmp.15 = sext i32 %i.1 to i64, !dbg !183       ; [#uses=1 type=i64] [debug line = 70:4]
  %din.assign.1 = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp.15, !dbg !183 ; [#uses=1 type=i8*] [debug line = 70:4]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %db_item}, i64 0, metadata !197), !dbg !204 ; [debug line = 144:48@70:4] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %din.assign.1}, i64 0, metadata !199), !dbg !205 ; [debug line = 144:74@70:4] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.16}, metadata !201) nounwind, !dbg !206 ; [debug line = 145:22@70:4] [debug variable = tmp]
  %tmp.17 = load i8* %din.assign.1, align 1, !dbg !207 ; [#uses=2 type=i8] [debug line = 145:31@70:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.17) nounwind
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.17}, i64 0, metadata !201), !dbg !207 ; [debug line = 145:31@70:4] [debug variable = tmp]
  store i8 %tmp.17, i8* %tmp.16, align 1, !dbg !207 ; [debug line = 145:31@70:4]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %db_item.addr, i8* %tmp.16) nounwind, !dbg !182 ; [debug line = 146:9@70:4]
  %i.3 = add nsw i32 %i.1, 1, !dbg !208           ; [#uses=1 type=i32] [debug line = 68:18]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !193), !dbg !208 ; [debug line = 68:18] [debug variable = i]
  br label %.preheader11, !dbg !208               ; [debug line = 68:18]

; <label>:5                                       ; preds = %.preheader11
  %tmp.8 = call fastcc zeroext i1 @compare(%"class.hls::stream.0"* %contact, %"class.hls::stream.0"* %db_item), !dbg !209 ; [#uses=1 type=i1] [debug line = 72:35]
  %tmp.9 = sext i32 %contacts_index to i64, !dbg !209 ; [#uses=1 type=i64] [debug line = 72:35]
  %local_results.addr.1 = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp.9, !dbg !209 ; [#uses=1 type=i1*] [debug line = 72:35]
  store i1 %tmp.8, i1* %local_results.addr.1, align 1, !dbg !209 ; [debug line = 72:35]
  %contacts_index.3 = add nsw i32 %contacts_index, 1, !dbg !210 ; [#uses=1 type=i32] [debug line = 60:46]
  call void @llvm.dbg.value(metadata !{i32 %contacts_index.3}, i64 0, metadata !211), !dbg !210 ; [debug line = 60:46] [debug variable = contacts_index]
  br label %.preheader12, !dbg !210               ; [debug line = 60:46]

.preheader:                                       ; preds = %6, %.preheader.preheader
  %contacts_index.1 = phi i32 [ %contacts_index.2, %6 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %matched = phi i1 [ %matched.1, %6 ], [ false, %.preheader.preheader ] ; [#uses=2 type=i1]
  %exitcond = icmp eq i32 %contacts_index.1, 128, !dbg !194 ; [#uses=1 type=i1] [debug line = 74:6]
  br i1 %exitcond, label %7, label %6, !dbg !194  ; [debug line = 74:6]

; <label>:6                                       ; preds = %.preheader
  %tmp.5 = sext i32 %contacts_index.1 to i64, !dbg !212 ; [#uses=1 type=i64] [debug line = 75:3]
  %local_results.addr = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp.5, !dbg !212 ; [#uses=1 type=i1*] [debug line = 75:3]
  %local_results.load = load i1* %local_results.addr, align 1, !dbg !212 ; [#uses=2 type=i1] [debug line = 75:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %local_results.load) nounwind
  %matched.1 = or i1 %matched, %local_results.load, !dbg !212 ; [#uses=1 type=i1] [debug line = 75:3]
  call void @llvm.dbg.value(metadata !{i1 %matched.1}, i64 0, metadata !214), !dbg !212 ; [debug line = 75:3] [debug variable = matched]
  %contacts_index.2 = add nsw i32 %contacts_index.1, 1, !dbg !215 ; [#uses=1 type=i32] [debug line = 74:46]
  call void @llvm.dbg.value(metadata !{i32 %contacts_index.2}, i64 0, metadata !211), !dbg !215 ; [debug line = 74:46] [debug variable = contacts_index]
  br label %.preheader, !dbg !215                 ; [debug line = 74:46]

; <label>:7                                       ; preds = %.preheader
  %matched.0.lcssa = phi i1 [ %matched, %.preheader ] ; [#uses=1 type=i1]
  %tmp.4 = sext i32 %database_index to i64, !dbg !216 ; [#uses=1 type=i64] [debug line = 77:2]
  %results.addr = getelementptr inbounds [30000 x i1]* @results, i64 0, i64 %tmp.4, !dbg !216 ; [#uses=1 type=i1*] [debug line = 77:2]
  store i1 %matched.0.lcssa, i1* %results.addr, align 1, !dbg !216 ; [debug line = 77:2]
  ret void, !dbg !217                             ; [debug line = 78:1]
}

; [#uses=102]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=11]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, i8* %contact_in, i8* %database_in, i1* %matched_out, i32* %matched_finished, i32* %error_out, i32* %database_size_out, i32* %contacts_size_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery.str) nounwind
  %tmp.32 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !218), !dbg !219 ; [debug line = 83:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i8* %contact_in}, i64 0, metadata !220), !dbg !221 ; [debug line = 84:16] [debug variable = contact_in]
  call void @llvm.dbg.value(metadata !{i8* %database_in}, i64 0, metadata !222), !dbg !223 ; [debug line = 85:16] [debug variable = database_in]
  call void @llvm.dbg.value(metadata !{i1* %matched_out}, i64 0, metadata !224), !dbg !225 ; [debug line = 86:7] [debug variable = matched_out]
  call void @llvm.dbg.value(metadata !{i32* %matched_finished}, i64 0, metadata !226), !dbg !227 ; [debug line = 87:7] [debug variable = matched_finished]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !228), !dbg !229 ; [debug line = 88:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %database_size_out}, i64 0, metadata !230), !dbg !231 ; [debug line = 89:7] [debug variable = database_size_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !232), !dbg !233 ; [debug line = 90:7] [debug variable = contacts_size_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %contact_in, i32 64) nounwind, !dbg !234 ; [debug line = 91:3]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %database_in, i32 64) nounwind, !dbg !236 ; [debug line = 91:41]
  call void (...)* @_ssdm_SpecArrayDimSize(i1* %matched_out, i32 30000) nounwind, !dbg !237 ; [debug line = 91:80]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !238 ; [debug line = 94:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !239 ; [debug line = 95:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !240 ; [debug line = 96:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !241 ; [debug line = 97:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !242 ; [debug line = 98:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !243 ; [debug line = 99:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !244 ; [debug line = 100:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !245 ; [debug line = 101:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !246 ; [debug line = 102:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !247 ; [debug line = 103:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !248 ; [debug line = 104:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %matched_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !249 ; [debug line = 105:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %database_in, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !250 ; [debug line = 106:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %contact_in, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !251 ; [debug line = 107:1]
  switch i32 %operation, label %19 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %9
    i32 3, label %17
    i32 4, label %18
  ], !dbg !252                                    ; [debug line = 118:2]

; <label>:1                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !253 ; [debug line = 121:4]
  store i32 0, i32* %error_out, align 4, !dbg !255 ; [debug line = 122:4]
  %contacts_size.load.1 = load i32* @contacts_size, align 4, !dbg !256 ; [#uses=1 type=i32] [debug line = 123:4]
  store i32 %contacts_size.load.1, i32* %contacts_size_out, align 4, !dbg !256 ; [debug line = 123:4]
  %database_size.load.1 = load i32* @database_size, align 4, !dbg !257 ; [#uses=1 type=i32] [debug line = 124:4]
  store i32 %database_size.load.1, i32* %database_size_out, align 4, !dbg !257 ; [debug line = 124:4]
  %contacts_size.load.2 = load i32* @contacts_size, align 4, !dbg !258 ; [#uses=2 type=i32] [debug line = 125:4]
  %tmp = icmp sgt i32 %contacts_size.load.2, 127, !dbg !258 ; [#uses=1 type=i1] [debug line = 125:4]
  br i1 %tmp, label %2, label %3, !dbg !258       ; [debug line = 125:4]

; <label>:2                                       ; preds = %1
  store i32 1, i32* %error_out, align 4, !dbg !259 ; [debug line = 126:5]
  %contacts_size.load.5 = load i32* @contacts_size, align 4, !dbg !261 ; [#uses=1 type=i32] [debug line = 127:5]
  br label %4, !dbg !262                          ; [debug line = 128:4]

; <label>:3                                       ; preds = %1
  %tmp.20 = shl nsw i32 %contacts_size.load.2, 6, !dbg !263 ; [#uses=1 type=i32] [debug line = 129:5]
  %tmp.21 = sext i32 %tmp.20 to i64, !dbg !263    ; [#uses=1 type=i64] [debug line = 129:5]
  %contacts.addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.21, !dbg !263 ; [#uses=1 type=i8*] [debug line = 129:5]
  call fastcc void @_memcpy(i8* %contacts.addr, i8* %contact_in), !dbg !263 ; [debug line = 129:5]
  %contacts_size.load.6 = load i32* @contacts_size, align 4, !dbg !265 ; [#uses=1 type=i32] [debug line = 130:5]
  %tmp.22 = add nsw i32 %contacts_size.load.6, 1, !dbg !265 ; [#uses=2 type=i32] [debug line = 130:5]
  store i32 %tmp.22, i32* @contacts_size, align 4, !dbg !265 ; [debug line = 130:5]
  br label %4

; <label>:4                                       ; preds = %3, %2
  %storemerge1 = phi i32 [ %tmp.22, %3 ], [ %contacts_size.load.5, %2 ] ; [#uses=1 type=i32]
  store i32 %storemerge1, i32* %contacts_size_out, align 4, !dbg !261 ; [debug line = 127:5]
  br label %20, !dbg !266                         ; [debug line = 133:4]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !267 ; [debug line = 136:4]
  store i32 0, i32* %error_out, align 4, !dbg !268 ; [debug line = 137:4]
  %database_size.load.2 = load i32* @database_size, align 4, !dbg !269 ; [#uses=2 type=i32] [debug line = 138:4]
  %tmp.19 = icmp sgt i32 %database_size.load.2, 29999, !dbg !269 ; [#uses=1 type=i1] [debug line = 138:4]
  br i1 %tmp.19, label %6, label %7, !dbg !269    ; [debug line = 138:4]

; <label>:6                                       ; preds = %5
  store i32 2, i32* %error_out, align 4, !dbg !270 ; [debug line = 139:5]
  %database_size.load.6 = load i32* @database_size, align 4, !dbg !272 ; [#uses=1 type=i32] [debug line = 140:5]
  br label %8, !dbg !273                          ; [debug line = 141:4]

; <label>:7                                       ; preds = %5
  %tmp.23 = shl nsw i32 %database_size.load.2, 6, !dbg !274 ; [#uses=1 type=i32] [debug line = 142:5]
  %tmp.24 = sext i32 %tmp.23 to i64, !dbg !274    ; [#uses=1 type=i64] [debug line = 142:5]
  %database.addr = getelementptr inbounds [1920000 x i8]* @database, i64 0, i64 %tmp.24, !dbg !274 ; [#uses=1 type=i8*] [debug line = 142:5]
  call fastcc void @_memcpy(i8* %database.addr, i8* %database_in), !dbg !274 ; [debug line = 142:5]
  %database_size.load.7 = load i32* @database_size, align 4, !dbg !276 ; [#uses=1 type=i32] [debug line = 143:5]
  %tmp.25 = add nsw i32 %database_size.load.7, 1, !dbg !276 ; [#uses=2 type=i32] [debug line = 143:5]
  store i32 %tmp.25, i32* @database_size, align 4, !dbg !276 ; [debug line = 143:5]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %storemerge = phi i32 [ %tmp.25, %7 ], [ %database_size.load.6, %6 ] ; [#uses=1 type=i32]
  store i32 %storemerge, i32* %database_size_out, align 4, !dbg !272 ; [debug line = 140:5]
  br label %20, !dbg !277                         ; [debug line = 146:4]

; <label>:9                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !278 ; [debug line = 149:4]
  store i32 0, i32* %error_out, align 4, !dbg !279 ; [debug line = 150:4]
  %contacts_size.load.3 = load i32* @contacts_size, align 4, !dbg !280 ; [#uses=1 type=i32] [debug line = 151:4]
  store i32 %contacts_size.load.3, i32* %contacts_size_out, align 4, !dbg !280 ; [debug line = 151:4]
  %database_size.load.3 = load i32* @database_size, align 4, !dbg !281 ; [#uses=1 type=i32] [debug line = 152:4]
  store i32 %database_size.load.3, i32* %database_size_out, align 4, !dbg !281 ; [debug line = 152:4]
  br label %10, !dbg !282                         ; [debug line = 157:8]

; <label>:10                                      ; preds = %14, %9
  %database_index = phi i32 [ 0, %9 ], [ %database_index.1, %14 ] ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %database_index, 30000, !dbg !282 ; [#uses=1 type=i1] [debug line = 157:8]
  br i1 %exitcond3, label %.preheader.preheader, label %11, !dbg !282 ; [debug line = 157:8]

.preheader.preheader:                             ; preds = %10
  br label %.preheader, !dbg !284                 ; [debug line = 177:8]

; <label>:11                                      ; preds = %10
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !286 ; [#uses=1 type=i32] [debug line = 157:70]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !288 ; [debug line = 158:1]
  %tmp.26 = mul i32 %database_index, 64, !dbg !289 ; [#uses=1 type=i32] [debug line = 173:6]
  br label %12, !dbg !292                         ; [debug line = 172:9]

; <label>:12                                      ; preds = %13, %11
  %i = phi i32 [ 0, %11 ], [ %i.5, %13 ]          ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i, 64, !dbg !292      ; [#uses=1 type=i1] [debug line = 172:9]
  br i1 %exitcond2, label %14, label %13, !dbg !292 ; [debug line = 172:9]

; <label>:13                                      ; preds = %12
  %tmp.30 = add nsw i32 %i, %tmp.26, !dbg !289    ; [#uses=1 type=i32] [debug line = 173:6]
  %tmp.31 = sext i32 %tmp.30 to i64, !dbg !289    ; [#uses=1 type=i64] [debug line = 173:6]
  %din.assign = getelementptr inbounds [1920000 x i8]* @database, i64 0, i64 %tmp.31, !dbg !289 ; [#uses=1 type=i8*] [debug line = 173:6]
  call void @llvm.dbg.value(metadata !{i8* %din.assign}, i64 0, metadata !199), !dbg !293 ; [debug line = 144:74@173:6] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.32}, metadata !201) nounwind, !dbg !294 ; [debug line = 145:22@173:6] [debug variable = tmp]
  %tmp.33 = load i8* %din.assign, align 1, !dbg !295 ; [#uses=2 type=i8] [debug line = 145:31@173:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.33) nounwind
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.33}, i64 0, metadata !201), !dbg !295 ; [debug line = 145:31@173:6] [debug variable = tmp]
  store i8 %tmp.33, i8* %tmp.32, align 1, !dbg !295 ; [debug line = 145:31@173:6]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* getelementptr inbounds (%"class.hls::stream.0"* @db_stream, i64 0, i32 0), i8* %tmp.32) nounwind, !dbg !296 ; [debug line = 146:9@173:6]
  %i.5 = add nsw i32 %i, 1, !dbg !297             ; [#uses=1 type=i32] [debug line = 172:20]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !298), !dbg !297 ; [debug line = 172:20] [debug variable = i]
  br label %12, !dbg !297                         ; [debug line = 172:20]

; <label>:14                                      ; preds = %12
  call fastcc void @match_db_contact(i32 %database_index), !dbg !299 ; [debug line = 175:5]
  %rend5 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !300 ; [#uses=0 type=i32] [debug line = 176:4]
  %database_index.1 = add nsw i32 %database_index, 1, !dbg !301 ; [#uses=1 type=i32] [debug line = 157:52]
  call void @llvm.dbg.value(metadata !{i32 %database_index.1}, i64 0, metadata !302), !dbg !301 ; [debug line = 157:52] [debug variable = database_index]
  br label %10, !dbg !301                         ; [debug line = 157:52]

.preheader:                                       ; preds = %15, %.preheader.preheader
  %i.1 = phi i32 [ %i.4, %15 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i.1, 30000, !dbg !284  ; [#uses=1 type=i1] [debug line = 177:8]
  br i1 %exitcond, label %16, label %15, !dbg !284 ; [debug line = 177:8]

; <label>:15                                      ; preds = %.preheader
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !303 ; [#uses=1 type=i32] [debug line = 177:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !305 ; [debug line = 178:1]
  %tmp.27 = sext i32 %i.1 to i64, !dbg !306       ; [#uses=2 type=i64] [debug line = 179:2]
  %results.addr = getelementptr inbounds [30000 x i1]* @results, i64 0, i64 %tmp.27, !dbg !306 ; [#uses=1 type=i1*] [debug line = 179:2]
  %results.load = load i1* %results.addr, align 1, !dbg !306 ; [#uses=2 type=i1] [debug line = 179:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %results.load) nounwind
  %matched_out.addr = getelementptr inbounds i1* %matched_out, i64 %tmp.27, !dbg !306 ; [#uses=1 type=i1*] [debug line = 179:2]
  store i1 %results.load, i1* %matched_out.addr, align 1, !dbg !306 ; [debug line = 179:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !307 ; [#uses=0 type=i32] [debug line = 180:4]
  %i.4 = add nsw i32 %i.1, 1, !dbg !308           ; [#uses=1 type=i32] [debug line = 177:22]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !298), !dbg !308 ; [debug line = 177:22] [debug variable = i]
  br label %.preheader, !dbg !308                 ; [debug line = 177:22]

; <label>:16                                      ; preds = %.preheader
  store i32 1, i32* %matched_finished, align 4, !dbg !309 ; [debug line = 181:4]
  br label %20, !dbg !310                         ; [debug line = 182:4]

; <label>:17                                      ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !311 ; [debug line = 185:4]
  store i32 0, i32* %error_out, align 4, !dbg !312 ; [debug line = 186:4]
  store i32 0, i32* @database_size, align 4, !dbg !313 ; [debug line = 188:4]
  %contacts_size.load.4 = load i32* @contacts_size, align 4, !dbg !314 ; [#uses=1 type=i32] [debug line = 190:4]
  store i32 %contacts_size.load.4, i32* %contacts_size_out, align 4, !dbg !314 ; [debug line = 190:4]
  %database_size.load.4 = load i32* @database_size, align 4, !dbg !315 ; [#uses=1 type=i32] [debug line = 191:4]
  store i32 %database_size.load.4, i32* %database_size_out, align 4, !dbg !315 ; [debug line = 191:4]
  br label %20, !dbg !316                         ; [debug line = 192:4]

; <label>:18                                      ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !317 ; [debug line = 195:4]
  store i32 0, i32* %error_out, align 4, !dbg !318 ; [debug line = 196:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !319 ; [debug line = 198:4]
  store i32 0, i32* %contacts_size_out, align 4, !dbg !320 ; [debug line = 200:4]
  %database_size.load.5 = load i32* @database_size, align 4, !dbg !321 ; [#uses=1 type=i32] [debug line = 201:4]
  store i32 %database_size.load.5, i32* %database_size_out, align 4, !dbg !321 ; [debug line = 201:4]
  br label %20, !dbg !322                         ; [debug line = 202:4]

; <label>:19                                      ; preds = %0
  %contacts_size.load = load i32* @contacts_size, align 4, !dbg !323 ; [#uses=1 type=i32] [debug line = 213:4]
  store i32 %contacts_size.load, i32* %contacts_size_out, align 4, !dbg !323 ; [debug line = 213:4]
  %database_size.load = load i32* @database_size, align 4, !dbg !324 ; [#uses=1 type=i32] [debug line = 214:4]
  store i32 %database_size.load, i32* %database_size_out, align 4, !dbg !324 ; [debug line = 214:4]
  store i32 0, i32* %matched_finished, align 4, !dbg !325 ; [debug line = 215:4]
  store i32 3, i32* %error_out, align 4, !dbg !326 ; [debug line = 216:4]
  br label %20, !dbg !327                         ; [debug line = 217:4]

; <label>:20                                      ; preds = %19, %18, %17, %16, %8, %4
  ret void, !dbg !328                             ; [debug line = 220:1]
}

; [#uses=1]
define internal fastcc zeroext i1 @compare(%"class.hls::stream.0"* %contact, %"class.hls::stream.0"* %db_item) nounwind uwtable {
  %tmp.35 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %results_local = alloca [64 x i1], align 16     ; [#uses=2 type=[64 x i1]*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %contact}, i64 0, metadata !329), !dbg !330 ; [debug line = 26:42] [debug variable = contact]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %db_item}, i64 0, metadata !331), !dbg !332 ; [debug line = 26:79] [debug variable = db_item]
  call void @llvm.dbg.declare(metadata !{[64 x i1]* %results_local}, metadata !333), !dbg !336 ; [debug line = 31:7] [debug variable = results_local]
  %contact.addr = getelementptr inbounds %"class.hls::stream.0"* %contact, i64 0, i32 0, !dbg !337 ; [#uses=1 type=i8*] [debug line = 131:9@42:23]
  %db_item.addr = getelementptr inbounds %"class.hls::stream.0"* %db_item, i64 0, i32 0, !dbg !341 ; [#uses=1 type=i8*] [debug line = 131:9@42:41]
  br label %1, !dbg !343                          ; [debug line = 37:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.6, %2 ]            ; [#uses=3 type=i32]
  %exitcond3 = icmp eq i32 %i, 64, !dbg !343      ; [#uses=1 type=i1] [debug line = 37:6]
  br i1 %exitcond3, label %.preheader.preheader, label %2, !dbg !343 ; [debug line = 37:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !344                 ; [debug line = 44:6]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %contact}, i64 0, metadata !346), !dbg !347 ; [debug line = 129:56@42:23] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !185) nounwind, !dbg !348 ; [debug line = 130:22@42:23] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %contact.addr, i8* %tmp) nounwind, !dbg !337 ; [debug line = 131:9@42:23]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !185), !dbg !349 ; [debug line = 132:9@42:23] [debug variable = tmp]
  %3 = load i8* %tmp, align 1, !dbg !349          ; [#uses=1 type=i8] [debug line = 132:9@42:23]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %db_item}, i64 0, metadata !346), !dbg !350 ; [debug line = 129:56@42:41] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.35}, metadata !185) nounwind, !dbg !351 ; [debug line = 130:22@42:41] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %db_item.addr, i8* %tmp.35) nounwind, !dbg !341 ; [debug line = 131:9@42:41]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.35}, i64 0, metadata !185), !dbg !352 ; [debug line = 132:9@42:41] [debug variable = tmp]
  %tmp.35.load = load i8* %tmp.35, align 1, !dbg !352 ; [#uses=1 type=i8] [debug line = 132:9@42:41]
  %tmp.36 = icmp eq i8 %3, %tmp.35.load, !dbg !342 ; [#uses=1 type=i1] [debug line = 42:41]
  %tmp.37 = sext i32 %i to i64, !dbg !342         ; [#uses=1 type=i64] [debug line = 42:41]
  %results_local.addr = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp.37, !dbg !342 ; [#uses=1 type=i1*] [debug line = 42:41]
  store i1 %tmp.36, i1* %results_local.addr, align 1, !dbg !342 ; [debug line = 42:41]
  %i.6 = add nsw i32 %i, 1, !dbg !353             ; [#uses=1 type=i32] [debug line = 37:17]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !354), !dbg !353 ; [debug line = 37:17] [debug variable = i]
  br label %1, !dbg !353                          ; [debug line = 37:17]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %i.1 = phi i32 [ %i.7, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %found = phi i1 [ %found.1, %4 ], [ true, %.preheader.preheader ] ; [#uses=2 type=i1]
  %exitcond = icmp eq i32 %i.1, 64, !dbg !344     ; [#uses=1 type=i1] [debug line = 44:6]
  br i1 %exitcond, label %5, label %4, !dbg !344  ; [debug line = 44:6]

; <label>:4                                       ; preds = %.preheader
  %tmp.39 = sext i32 %i.1 to i64, !dbg !355       ; [#uses=1 type=i64] [debug line = 45:3]
  %results_local.addr.1 = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp.39, !dbg !355 ; [#uses=1 type=i1*] [debug line = 45:3]
  %results_local.load = load i1* %results_local.addr.1, align 1, !dbg !355 ; [#uses=2 type=i1] [debug line = 45:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %results_local.load) nounwind
  %found.1 = and i1 %found, %results_local.load, !dbg !355 ; [#uses=1 type=i1] [debug line = 45:3]
  call void @llvm.dbg.value(metadata !{i1 %found.1}, i64 0, metadata !357), !dbg !355 ; [debug line = 45:3] [debug variable = found]
  %i.7 = add nsw i32 %i.1, 1, !dbg !358           ; [#uses=1 type=i32] [debug line = 44:17]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !354), !dbg !358 ; [debug line = 44:17] [debug variable = i]
  br label %.preheader, !dbg !358                 ; [debug line = 44:17]

; <label>:5                                       ; preds = %.preheader
  %found.0.lcssa = phi i1 [ %found, %.preheader ] ; [#uses=1 type=i1]
  ret i1 %found.0.lcssa, !dbg !359                ; [debug line = 47:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=14]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8*, i8*)

; [#uses=3]
declare void @_ssdm_op_IfRead.Stream.i8P.i8P(i8*, i8*)

; [#uses=7]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
define internal fastcc void @_memcpy(i8* %dest, i8* %src) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %dest}, i64 0, metadata !360), !dbg !361 ; [debug line = 19:29] [debug variable = dest]
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !362), !dbg !363 ; [debug line = 19:50] [debug variable = src]
  br label %1, !dbg !364                          ; [debug line = 21:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.8, %2 ]            ; [#uses=3 type=i32]
  %tmp = icmp slt i32 %i, 64, !dbg !364           ; [#uses=1 type=i1] [debug line = 21:6]
  br i1 %tmp, label %2, label %3, !dbg !364       ; [debug line = 21:6]

; <label>:2                                       ; preds = %1
  %tmp.42 = sext i32 %i to i64, !dbg !367         ; [#uses=2 type=i64] [debug line = 22:3]
  %src.addr = getelementptr inbounds i8* %src, i64 %tmp.42, !dbg !367 ; [#uses=1 type=i8*] [debug line = 22:3]
  %src.load = load i8* %src.addr, align 1, !dbg !367 ; [#uses=2 type=i8] [debug line = 22:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %src.load) nounwind
  %dest.addr = getelementptr inbounds i8* %dest, i64 %tmp.42, !dbg !367 ; [#uses=1 type=i8*] [debug line = 22:3]
  store i8 %src.load, i8* %dest.addr, align 1, !dbg !367 ; [debug line = 22:3]
  %i.8 = add nsw i32 %i, 1, !dbg !369             ; [#uses=1 type=i32] [debug line = 21:21]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !370), !dbg !369 ; [debug line = 21:21] [debug variable = i]
  br label %1, !dbg !369                          ; [debug line = 21:21]

; <label>:3                                       ; preds = %1
  ret void, !dbg !371                             ; [debug line = 24:1]
}

!llvm.dbg.cu = !{!0, !3}
!hls.encrypted.func = !{}
!opencl.kernels = !{!111, !118, !124, !130, !136, !139, !139, !139}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/sha512.pragma.2.c", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !1, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !4, metadata !86} ; [ DW_TAG_compile_unit ]
!4 = metadata !{metadata !5}
!5 = metadata !{metadata !6, metadata !15, metadata !74, metadata !77, metadata !82, metadata !83, metadata !84, metadata !85}
!6 = metadata !{i32 786478, i32 0, metadata !7, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !7, i32 19, metadata !8, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 19} ; [ DW_TAG_subprogram ]
!7 = metadata !{i32 786473, metadata !"contact_discovery_axi/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !9, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!9 = metadata !{null, metadata !10, metadata !10, metadata !12}
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !7, metadata !"compare", metadata !"compare", metadata !"_Z7compareRN3hls6streamIhEES2_", metadata !7, i32 26, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"class.hls::stream.0"*, %"class.hls::stream.0"*)* @compare, null, null, metadata !13, i32 26} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !18, metadata !19, metadata !19}
!18 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_reference_type ]
!20 = metadata !{i32 786434, metadata !21, metadata !"stream<unsigned char>", metadata !22, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !23, i32 0, null, metadata !72} ; [ DW_TAG_class_type ]
!21 = metadata !{i32 786489, null, metadata !"hls", metadata !22, i32 69} ; [ DW_TAG_namespace ]
!22 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!23 = metadata !{metadata !24, metadata !25, metadata !29, metadata !35, metadata !40, metadata !43, metadata !47, metadata !52, metadata !56, metadata !57, metadata !58, metadata !61, metadata !64, metadata !65, metadata !68}
!24 = metadata !{i32 786445, metadata !20, metadata !"V", metadata !22, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!25 = metadata !{i32 786478, i32 0, metadata !20, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 83, metadata !26, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28}
!28 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !20} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786478, i32 0, metadata !20, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 86, metadata !30, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 86} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !28, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!34 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786478, i32 0, metadata !20, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 91, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !13, i32 91} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !28, metadata !38}
!38 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_reference_type ]
!39 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ]
!40 = metadata !{i32 786478, i32 0, metadata !20, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !22, i32 94, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !13, i32 94} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{metadata !19, metadata !28, metadata !38}
!43 = metadata !{i32 786478, i32 0, metadata !20, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !22, i32 101, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 101} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !28, metadata !46}
!46 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_reference_type ]
!47 = metadata !{i32 786478, i32 0, metadata !20, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !22, i32 105, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 105} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !28, metadata !50}
!50 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_reference_type ]
!51 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!52 = metadata !{i32 786478, i32 0, metadata !20, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !22, i32 112, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 112} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !18, metadata !55}
!55 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !39} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786478, i32 0, metadata !20, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !22, i32 117, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 117} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786478, i32 0, metadata !20, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !22, i32 123, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 123} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786478, i32 0, metadata !20, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !22, i32 129, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 129} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{metadata !11, metadata !28}
!61 = metadata !{i32 786478, i32 0, metadata !20, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !22, i32 136, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 136} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{metadata !18, metadata !28, metadata !46}
!64 = metadata !{i32 786478, i32 0, metadata !20, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !22, i32 144, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786478, i32 0, metadata !20, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !22, i32 150, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 150} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !18, metadata !28, metadata !50}
!68 = metadata !{i32 786478, i32 0, metadata !20, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !22, i32 157, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 157} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{metadata !71, metadata !28}
!71 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !11, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!74 = metadata !{i32 786478, i32 0, metadata !7, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contacti", metadata !7, i32 50, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @match_db_contact, null, null, metadata !13, i32 50} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{null, metadata !12}
!77 = metadata !{i32 786478, i32 0, metadata !7, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhS_PbPiS1_S1_S1_", metadata !7, i32 82, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @contact_discovery, null, null, metadata !13, i32 91} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{null, metadata !12, metadata !10, metadata !10, metadata !80, metadata !81, metadata !81, metadata !81, metadata !81}
!80 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!81 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!82 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !22, i32 144, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !64, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !22, i32 129, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !13, i32 129} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIhEC1Ev", metadata !22, i32 83, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !25, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIhEC2Ev", metadata !22, i32 83, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !25, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !88, metadata !89, metadata !92, metadata !93, metadata !94, metadata !96, metadata !97, metadata !101, metadata !102, metadata !103, metadata !107}
!88 = metadata !{i32 786484, i32 0, null, metadata !"db_stream", metadata !"db_stream", metadata !"_ZL9db_stream", metadata !7, i32 16, metadata !20, i32 1, i32 1, %"class.hls::stream.0"* @db_stream} ; [ DW_TAG_variable ]
!89 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !90, i32 315, metadata !91, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!91 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !90, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!92 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !90, i32 316, metadata !91, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !90, i32 317, metadata !91, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!94 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !95, i32 26, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!96 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !95, i32 30, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!97 = metadata !{i32 786484, i32 0, null, metadata !"database", metadata !"database", metadata !"_ZL8database", metadata !7, i32 10, metadata !98, i32 1, i32 1, [1920000 x i8]* @database} ; [ DW_TAG_variable ]
!98 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360000, i64 8, i32 0, i32 0, metadata !11, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 1919999} ; [ DW_TAG_subrange_type ]
!101 = metadata !{i32 786484, i32 0, null, metadata !"database_size", metadata !"database_size", metadata !"_ZL13database_size", metadata !7, i32 14, metadata !12, i32 1, i32 1, i32* @database_size} ; [ DW_TAG_variable ]
!102 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !7, i32 13, metadata !12, i32 1, i32 1, i32* @contacts_size} ; [ DW_TAG_variable ]
!103 = metadata !{i32 786484, i32 0, null, metadata !"results", metadata !"results", metadata !"_ZL7results", metadata !7, i32 12, metadata !104, i32 1, i32 1, [30000 x i1]* @results} ; [ DW_TAG_variable ]
!104 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 240000, i64 8, i32 0, i32 0, metadata !18, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786465, i64 0, i64 29999}   ; [ DW_TAG_subrange_type ]
!107 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !7, i32 9, metadata !108, i32 1, i32 1, [8192 x i8]* @contacts} ; [ DW_TAG_variable ]
!108 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !11, metadata !109, i32 0, i32 0} ; [ DW_TAG_array_type ]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786465, i64 0, i64 8191}    ; [ DW_TAG_subrange_type ]
!111 = metadata !{null, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!112 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!113 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!115 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!116 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!117 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!118 = metadata !{i1 (%"class.hls::stream.0"*, %"class.hls::stream.0"*)* @compare, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !117}
!119 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!120 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &"}
!122 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!123 = metadata !{metadata !"kernel_arg_name", metadata !"contact", metadata !"db_item"}
!124 = metadata !{void (i32)* @match_db_contact, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !117}
!125 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!126 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!128 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!129 = metadata !{metadata !"kernel_arg_name", metadata !"database_index"}
!130 = metadata !{void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @contact_discovery, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !117}
!131 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!132 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"uchar*", metadata !"_Bool*", metadata !"int*", metadata !"int*", metadata !"int*", metadata !"int*"}
!134 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!135 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"database_size_out", metadata !"contacts_size_out"}
!136 = metadata !{null, metadata !125, metadata !126, metadata !137, metadata !128, metadata !138, metadata !117}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!138 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!139 = metadata !{null, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !117}
!140 = metadata !{metadata !"kernel_arg_addr_space"}
!141 = metadata !{metadata !"kernel_arg_access_qual"}
!142 = metadata !{metadata !"kernel_arg_type"}
!143 = metadata !{metadata !"kernel_arg_type_qual"}
!144 = metadata !{metadata !"kernel_arg_name"}
!145 = metadata !{i32 786689, metadata !85, metadata !"this", metadata !22, i32 16777299, metadata !146, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!147 = metadata !{i32 83, i32 43, metadata !85, metadata !148}
!148 = metadata !{i32 84, i32 5, metadata !84, metadata !149}
!149 = metadata !{i32 65, i32 37, metadata !150, null}
!150 = metadata !{i32 786443, metadata !151, i32 60, i32 63, metadata !7, i32 12} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786443, metadata !152, i32 60, i32 2, metadata !7, i32 11} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786443, metadata !74, i32 50, i32 42, metadata !7, i32 8} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 786689, metadata !84, metadata !"this", metadata !22, i32 16777299, metadata !146, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 83, i32 43, metadata !84, metadata !149}
!155 = metadata !{i32 786688, metadata !150, metadata !"contact", metadata !7, i32 65, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 65, i32 30, metadata !150, null}
!157 = metadata !{i32 83, i32 43, metadata !85, metadata !158}
!158 = metadata !{i32 84, i32 5, metadata !84, metadata !159}
!159 = metadata !{i32 66, i32 37, metadata !150, null}
!160 = metadata !{i32 83, i32 43, metadata !84, metadata !159}
!161 = metadata !{i32 786688, metadata !150, metadata !"db_item", metadata !7, i32 66, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 66, i32 30, metadata !150, null}
!163 = metadata !{i32 786689, metadata !74, metadata !"database_index", metadata !7, i32 16777266, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 50, i32 27, metadata !74, null}
!165 = metadata !{i32 786688, metadata !152, metadata !"local_results", metadata !7, i32 54, metadata !166, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !18, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786465, i64 0, i64 127}     ; [ DW_TAG_subrange_type ]
!169 = metadata !{i32 54, i32 7, metadata !152, null}
!170 = metadata !{i32 786688, metadata !152, metadata !"db_item_temp", metadata !7, i32 55, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !11, metadata !172, i32 0, i32 0} ; [ DW_TAG_array_type ]
!172 = metadata !{metadata !173}
!173 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!174 = metadata !{i32 55, i32 16, metadata !152, null}
!175 = metadata !{i32 56, i32 6, metadata !176, null}
!176 = metadata !{i32 786443, metadata !152, i32 56, i32 2, metadata !7, i32 9} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 146, i32 9, metadata !178, metadata !179}
!178 = metadata !{i32 786443, metadata !82, i32 144, i32 79, metadata !22, i32 29} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 69, i32 4, metadata !180, null}
!180 = metadata !{i32 786443, metadata !181, i32 68, i32 22, metadata !7, i32 14} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786443, metadata !150, i32 68, i32 3, metadata !7, i32 13} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 146, i32 9, metadata !178, metadata !183}
!183 = metadata !{i32 70, i32 4, metadata !180, null}
!184 = metadata !{i32 60, i32 6, metadata !151, null}
!185 = metadata !{i32 786688, metadata !186, metadata !"tmp", metadata !22, i32 130, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 786443, metadata !83, i32 129, i32 63, metadata !22, i32 30} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 130, i32 22, metadata !186, metadata !188}
!188 = metadata !{i32 58, i32 21, metadata !189, null}
!189 = metadata !{i32 786443, metadata !176, i32 56, i32 21, metadata !7, i32 10} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 131, i32 9, metadata !186, metadata !188}
!191 = metadata !{i32 132, i32 9, metadata !186, metadata !188}
!192 = metadata !{i32 56, i32 17, metadata !176, null}
!193 = metadata !{i32 786688, metadata !152, metadata !"i", metadata !7, i32 52, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 74, i32 6, metadata !195, null}
!195 = metadata !{i32 786443, metadata !152, i32 74, i32 2, metadata !7, i32 15} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 68, i32 7, metadata !181, null}
!197 = metadata !{i32 786689, metadata !82, metadata !"this", metadata !22, i32 16777360, metadata !146, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 144, i32 48, metadata !82, metadata !179}
!199 = metadata !{i32 786689, metadata !82, metadata !"din", metadata !22, i32 33554576, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 144, i32 74, metadata !82, metadata !179}
!201 = metadata !{i32 786688, metadata !178, metadata !"tmp", metadata !22, i32 145, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 145, i32 22, metadata !178, metadata !179}
!203 = metadata !{i32 145, i32 31, metadata !178, metadata !179}
!204 = metadata !{i32 144, i32 48, metadata !82, metadata !183}
!205 = metadata !{i32 144, i32 74, metadata !82, metadata !183}
!206 = metadata !{i32 145, i32 22, metadata !178, metadata !183}
!207 = metadata !{i32 145, i32 31, metadata !178, metadata !183}
!208 = metadata !{i32 68, i32 18, metadata !181, null}
!209 = metadata !{i32 72, i32 35, metadata !150, null}
!210 = metadata !{i32 60, i32 46, metadata !151, null}
!211 = metadata !{i32 786688, metadata !152, metadata !"contacts_index", metadata !7, i32 52, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 75, i32 3, metadata !213, null}
!213 = metadata !{i32 786443, metadata !195, i32 74, i32 63, metadata !7, i32 16} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 786688, metadata !152, metadata !"matched", metadata !7, i32 53, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 74, i32 46, metadata !195, null}
!216 = metadata !{i32 77, i32 2, metadata !152, null}
!217 = metadata !{i32 78, i32 1, metadata !152, null}
!218 = metadata !{i32 786689, metadata !77, metadata !"operation", metadata !7, i32 16777299, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 83, i32 6, metadata !77, null}
!220 = metadata !{i32 786689, metadata !77, metadata !"contact_in", metadata !7, i32 33554516, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 84, i32 16, metadata !77, null}
!222 = metadata !{i32 786689, metadata !77, metadata !"database_in", metadata !7, i32 50331733, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 85, i32 16, metadata !77, null}
!224 = metadata !{i32 786689, metadata !77, metadata !"matched_out", metadata !7, i32 67108950, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 86, i32 7, metadata !77, null}
!226 = metadata !{i32 786689, metadata !77, metadata !"matched_finished", metadata !7, i32 83886167, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!227 = metadata !{i32 87, i32 7, metadata !77, null}
!228 = metadata !{i32 786689, metadata !77, metadata !"error_out", metadata !7, i32 100663384, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!229 = metadata !{i32 88, i32 7, metadata !77, null}
!230 = metadata !{i32 786689, metadata !77, metadata !"database_size_out", metadata !7, i32 117440601, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!231 = metadata !{i32 89, i32 7, metadata !77, null}
!232 = metadata !{i32 786689, metadata !77, metadata !"contacts_size_out", metadata !7, i32 134217818, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!233 = metadata !{i32 90, i32 7, metadata !77, null}
!234 = metadata !{i32 91, i32 3, metadata !235, null}
!235 = metadata !{i32 786443, metadata !77, i32 91, i32 2, metadata !7, i32 17} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 91, i32 41, metadata !235, null}
!237 = metadata !{i32 91, i32 80, metadata !235, null}
!238 = metadata !{i32 94, i32 1, metadata !235, null}
!239 = metadata !{i32 95, i32 1, metadata !235, null}
!240 = metadata !{i32 96, i32 1, metadata !235, null}
!241 = metadata !{i32 97, i32 1, metadata !235, null}
!242 = metadata !{i32 98, i32 1, metadata !235, null}
!243 = metadata !{i32 99, i32 1, metadata !235, null}
!244 = metadata !{i32 100, i32 1, metadata !235, null}
!245 = metadata !{i32 101, i32 1, metadata !235, null}
!246 = metadata !{i32 102, i32 1, metadata !235, null}
!247 = metadata !{i32 103, i32 1, metadata !235, null}
!248 = metadata !{i32 104, i32 1, metadata !235, null}
!249 = metadata !{i32 105, i32 1, metadata !235, null}
!250 = metadata !{i32 106, i32 1, metadata !235, null}
!251 = metadata !{i32 107, i32 1, metadata !235, null}
!252 = metadata !{i32 118, i32 2, metadata !235, null}
!253 = metadata !{i32 121, i32 4, metadata !254, null}
!254 = metadata !{i32 786443, metadata !235, i32 118, i32 19, metadata !7, i32 18} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 122, i32 4, metadata !254, null}
!256 = metadata !{i32 123, i32 4, metadata !254, null}
!257 = metadata !{i32 124, i32 4, metadata !254, null}
!258 = metadata !{i32 125, i32 4, metadata !254, null}
!259 = metadata !{i32 126, i32 5, metadata !260, null}
!260 = metadata !{i32 786443, metadata !254, i32 125, i32 28, metadata !7, i32 19} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 127, i32 5, metadata !260, null}
!262 = metadata !{i32 128, i32 4, metadata !260, null}
!263 = metadata !{i32 129, i32 5, metadata !264, null}
!264 = metadata !{i32 786443, metadata !254, i32 128, i32 10, metadata !7, i32 20} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 130, i32 5, metadata !264, null}
!266 = metadata !{i32 133, i32 4, metadata !254, null}
!267 = metadata !{i32 136, i32 4, metadata !254, null}
!268 = metadata !{i32 137, i32 4, metadata !254, null}
!269 = metadata !{i32 138, i32 4, metadata !254, null}
!270 = metadata !{i32 139, i32 5, metadata !271, null}
!271 = metadata !{i32 786443, metadata !254, i32 138, i32 30, metadata !7, i32 21} ; [ DW_TAG_lexical_block ]
!272 = metadata !{i32 140, i32 5, metadata !271, null}
!273 = metadata !{i32 141, i32 4, metadata !271, null}
!274 = metadata !{i32 142, i32 5, metadata !275, null}
!275 = metadata !{i32 786443, metadata !254, i32 141, i32 10, metadata !7, i32 22} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 143, i32 5, metadata !275, null}
!277 = metadata !{i32 146, i32 4, metadata !254, null}
!278 = metadata !{i32 149, i32 4, metadata !254, null}
!279 = metadata !{i32 150, i32 4, metadata !254, null}
!280 = metadata !{i32 151, i32 4, metadata !254, null}
!281 = metadata !{i32 152, i32 4, metadata !254, null}
!282 = metadata !{i32 157, i32 8, metadata !283, null}
!283 = metadata !{i32 786443, metadata !254, i32 157, i32 4, metadata !7, i32 23} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 177, i32 8, metadata !285, null}
!285 = metadata !{i32 786443, metadata !254, i32 177, i32 4, metadata !7, i32 27} ; [ DW_TAG_lexical_block ]
!286 = metadata !{i32 157, i32 70, metadata !287, null}
!287 = metadata !{i32 786443, metadata !283, i32 157, i32 69, metadata !7, i32 24} ; [ DW_TAG_lexical_block ]
!288 = metadata !{i32 158, i32 1, metadata !287, null}
!289 = metadata !{i32 173, i32 6, metadata !290, null}
!290 = metadata !{i32 786443, metadata !291, i32 172, i32 24, metadata !7, i32 26} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 786443, metadata !287, i32 172, i32 5, metadata !7, i32 25} ; [ DW_TAG_lexical_block ]
!292 = metadata !{i32 172, i32 9, metadata !291, null}
!293 = metadata !{i32 144, i32 74, metadata !82, metadata !289}
!294 = metadata !{i32 145, i32 22, metadata !178, metadata !289}
!295 = metadata !{i32 145, i32 31, metadata !178, metadata !289}
!296 = metadata !{i32 146, i32 9, metadata !178, metadata !289}
!297 = metadata !{i32 172, i32 20, metadata !291, null}
!298 = metadata !{i32 786688, metadata !235, metadata !"i", metadata !7, i32 108, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 175, i32 5, metadata !287, null}
!300 = metadata !{i32 176, i32 4, metadata !287, null}
!301 = metadata !{i32 157, i32 52, metadata !283, null}
!302 = metadata !{i32 786688, metadata !235, metadata !"database_index", metadata !7, i32 108, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 177, i32 27, metadata !304, null}
!304 = metadata !{i32 786443, metadata !285, i32 177, i32 26, metadata !7, i32 28} ; [ DW_TAG_lexical_block ]
!305 = metadata !{i32 178, i32 1, metadata !304, null}
!306 = metadata !{i32 179, i32 2, metadata !304, null}
!307 = metadata !{i32 180, i32 4, metadata !304, null}
!308 = metadata !{i32 177, i32 22, metadata !285, null}
!309 = metadata !{i32 181, i32 4, metadata !254, null}
!310 = metadata !{i32 182, i32 4, metadata !254, null}
!311 = metadata !{i32 185, i32 4, metadata !254, null}
!312 = metadata !{i32 186, i32 4, metadata !254, null}
!313 = metadata !{i32 188, i32 4, metadata !254, null}
!314 = metadata !{i32 190, i32 4, metadata !254, null}
!315 = metadata !{i32 191, i32 4, metadata !254, null}
!316 = metadata !{i32 192, i32 4, metadata !254, null}
!317 = metadata !{i32 195, i32 4, metadata !254, null}
!318 = metadata !{i32 196, i32 4, metadata !254, null}
!319 = metadata !{i32 198, i32 4, metadata !254, null}
!320 = metadata !{i32 200, i32 4, metadata !254, null}
!321 = metadata !{i32 201, i32 4, metadata !254, null}
!322 = metadata !{i32 202, i32 4, metadata !254, null}
!323 = metadata !{i32 213, i32 4, metadata !254, null}
!324 = metadata !{i32 214, i32 4, metadata !254, null}
!325 = metadata !{i32 215, i32 4, metadata !254, null}
!326 = metadata !{i32 216, i32 4, metadata !254, null}
!327 = metadata !{i32 217, i32 4, metadata !254, null}
!328 = metadata !{i32 220, i32 1, metadata !235, null}
!329 = metadata !{i32 786689, metadata !15, metadata !"contact", metadata !7, i32 16777242, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!330 = metadata !{i32 26, i32 42, metadata !15, null}
!331 = metadata !{i32 786689, metadata !15, metadata !"db_item", metadata !7, i32 33554458, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!332 = metadata !{i32 26, i32 79, metadata !15, null}
!333 = metadata !{i32 786688, metadata !334, metadata !"results_local", metadata !7, i32 31, metadata !335, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!334 = metadata !{i32 786443, metadata !15, i32 26, i32 87, metadata !7, i32 3} ; [ DW_TAG_lexical_block ]
!335 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !18, metadata !172, i32 0, i32 0} ; [ DW_TAG_array_type ]
!336 = metadata !{i32 31, i32 7, metadata !334, null}
!337 = metadata !{i32 131, i32 9, metadata !186, metadata !338}
!338 = metadata !{i32 42, i32 23, metadata !339, null}
!339 = metadata !{i32 786443, metadata !340, i32 37, i32 21, metadata !7, i32 5} ; [ DW_TAG_lexical_block ]
!340 = metadata !{i32 786443, metadata !334, i32 37, i32 2, metadata !7, i32 4} ; [ DW_TAG_lexical_block ]
!341 = metadata !{i32 131, i32 9, metadata !186, metadata !342}
!342 = metadata !{i32 42, i32 41, metadata !339, null}
!343 = metadata !{i32 37, i32 6, metadata !340, null}
!344 = metadata !{i32 44, i32 6, metadata !345, null}
!345 = metadata !{i32 786443, metadata !334, i32 44, i32 2, metadata !7, i32 6} ; [ DW_TAG_lexical_block ]
!346 = metadata !{i32 786689, metadata !83, metadata !"this", metadata !22, i32 16777345, metadata !146, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!347 = metadata !{i32 129, i32 56, metadata !83, metadata !338}
!348 = metadata !{i32 130, i32 22, metadata !186, metadata !338}
!349 = metadata !{i32 132, i32 9, metadata !186, metadata !338}
!350 = metadata !{i32 129, i32 56, metadata !83, metadata !342}
!351 = metadata !{i32 130, i32 22, metadata !186, metadata !342}
!352 = metadata !{i32 132, i32 9, metadata !186, metadata !342}
!353 = metadata !{i32 37, i32 17, metadata !340, null}
!354 = metadata !{i32 786688, metadata !334, metadata !"i", metadata !7, i32 29, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!355 = metadata !{i32 45, i32 3, metadata !356, null}
!356 = metadata !{i32 786443, metadata !345, i32 44, i32 21, metadata !7, i32 7} ; [ DW_TAG_lexical_block ]
!357 = metadata !{i32 786688, metadata !334, metadata !"found", metadata !7, i32 30, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!358 = metadata !{i32 44, i32 17, metadata !345, null}
!359 = metadata !{i32 47, i32 2, metadata !334, null}
!360 = metadata !{i32 786689, metadata !6, metadata !"dest", metadata !7, i32 16777235, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!361 = metadata !{i32 19, i32 29, metadata !6, null}
!362 = metadata !{i32 786689, metadata !6, metadata !"src", metadata !7, i32 33554451, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!363 = metadata !{i32 19, i32 50, metadata !6, null}
!364 = metadata !{i32 21, i32 6, metadata !365, null}
!365 = metadata !{i32 786443, metadata !366, i32 21, i32 2, metadata !7, i32 1} ; [ DW_TAG_lexical_block ]
!366 = metadata !{i32 786443, metadata !6, i32 19, i32 66, metadata !7, i32 0} ; [ DW_TAG_lexical_block ]
!367 = metadata !{i32 22, i32 3, metadata !368, null}
!368 = metadata !{i32 786443, metadata !365, i32 21, i32 25, metadata !7, i32 2} ; [ DW_TAG_lexical_block ]
!369 = metadata !{i32 21, i32 21, metadata !365, null}
!370 = metadata !{i32 786688, metadata !366, metadata !"i", metadata !7, i32 20, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!371 = metadata !{i32 24, i32 1, metadata !366, null}
