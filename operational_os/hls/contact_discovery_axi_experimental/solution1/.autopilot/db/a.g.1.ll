; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.1" = type { i8 }
%"class.hls::stream.0.2" = type { i32 }

@llvm.global_ctors = appending global [0 x { i32, void ()* }] zeroinitializer ; [#uses=0 type=[0 x { i32, void ()* }]*]
@db_stream = internal global %"class.hls::stream.1" zeroinitializer, align 1 ; [#uses=2 type=%"class.hls::stream.1"*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=8 type=i32*]
@contacts = internal global [8192 x i8] zeroinitializer, align 16 ; [#uses=2 type=[8192 x i8]*]
@contact_discovery.str = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@.str6 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=1]
define internal fastcc zeroext i1 @match_db_contact() nounwind uwtable {
  %tmp.12 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp.15 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %local_results = alloca [128 x i1], align 16    ; [#uses=2 type=[128 x i1]*]
  %db_item_temp = alloca [64 x i8], align 16      ; [#uses=2 type=[64 x i8]*]
  %contact = alloca %"class.hls::stream.1", align 1 ; [#uses=3 type=%"class.hls::stream.1"*]
  %db_item = alloca %"class.hls::stream.1", align 1 ; [#uses=3 type=%"class.hls::stream.1"*]
  call void @llvm.dbg.declare(metadata !{[128 x i1]* %local_results}, metadata !183), !dbg !188 ; [debug line = 36:7] [debug variable = local_results]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %db_item_temp}, metadata !189), !dbg !193 ; [debug line = 37:16] [debug variable = db_item_temp]
  br label %1, !dbg !194                          ; [debug line = 38:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 64, !dbg !194      ; [#uses=1 type=i1] [debug line = 38:6]
  br i1 %exitcond1, label %.preheader11.preheader, label %2, !dbg !194 ; [debug line = 38:6]

.preheader11.preheader:                           ; preds = %1
  %.0.addr = getelementptr inbounds %"class.hls::stream.1"* %contact, i64 0, i32 0, !dbg !196 ; [#uses=1 type=i8*] [debug line = 146:9@47:4]
  %.07.addr = getelementptr inbounds %"class.hls::stream.1"* %db_item, i64 0, i32 0, !dbg !203 ; [#uses=1 type=i8*] [debug line = 146:9@48:4]
  br label %.preheader11, !dbg !205               ; [debug line = 41:6]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !206) nounwind, !dbg !208 ; [debug line = 130:22@39:21] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* getelementptr inbounds (%"class.hls::stream.1"* @db_stream, i64 0, i32 0), i8* %tmp) nounwind, !dbg !211 ; [debug line = 131:9@39:21]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !212 ; [debug line = 132:9@39:21] [debug variable = tmp]
  %3 = load i8* %tmp, align 1, !dbg !212          ; [#uses=1 type=i8] [debug line = 132:9@39:21]
  %tmp.1 = sext i32 %i to i64, !dbg !209          ; [#uses=1 type=i64] [debug line = 39:21]
  %db_item_temp.addr = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp.1, !dbg !209 ; [#uses=1 type=i8*] [debug line = 39:21]
  store i8 %3, i8* %db_item_temp.addr, align 1, !dbg !209 ; [debug line = 39:21]
  %i.2 = add nsw i32 %i, 1, !dbg !213             ; [#uses=1 type=i32] [debug line = 38:17]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !214), !dbg !213 ; [debug line = 38:17] [debug variable = i]
  br label %1, !dbg !213                          ; [debug line = 38:17]

.preheader11:                                     ; preds = %7, %.preheader11.preheader
  %contacts_index = phi i32 [ %contacts_index.3, %7 ], [ 0, %.preheader11.preheader ] ; [#uses=4 type=i32]
  %exitcond9 = icmp eq i32 %contacts_index, 128, !dbg !205 ; [#uses=1 type=i1] [debug line = 41:6]
  br i1 %exitcond9, label %.preheader.preheader, label %4, !dbg !205 ; [debug line = 41:6]

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader, !dbg !215                 ; [debug line = 52:6]

; <label>:4                                       ; preds = %.preheader11
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !217 ; [#uses=1 type=i32] [debug line = 41:64]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %contact}, metadata !218), !dbg !219 ; [debug line = 42:30] [debug variable = contact]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %contact}, i64 0, metadata !220), !dbg !222 ; [debug line = 83:43@42:37] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %contact}, i64 0, metadata !224), !dbg !225 ; [debug line = 83:43@84:5@42:37] [debug variable = this]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream.1"* %contact, i32 1, i32 128, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !227 ; [debug line = 43:1]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %db_item}, metadata !228), !dbg !229 ; [debug line = 44:29] [debug variable = db_item]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %db_item}, i64 0, metadata !220), !dbg !230 ; [debug line = 83:43@44:36] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %db_item}, i64 0, metadata !224), !dbg !232 ; [debug line = 83:43@84:5@44:36] [debug variable = this]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream.1"* %db_item, i32 1, i32 128, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !234 ; [debug line = 45:1]
  %tmp.3 = mul i32 %contacts_index, 64, !dbg !198 ; [#uses=1 type=i32] [debug line = 47:4]
  br label %5, !dbg !235                          ; [debug line = 46:6]

; <label>:5                                       ; preds = %6, %4
  %i.1 = phi i32 [ 0, %4 ], [ %i.3, %6 ]          ; [#uses=4 type=i32]
  %exitcond8 = icmp eq i32 %i.1, 64, !dbg !235    ; [#uses=1 type=i1] [debug line = 46:6]
  br i1 %exitcond8, label %7, label %6, !dbg !235 ; [debug line = 46:6]

; <label>:6                                       ; preds = %5
  %tmp.10 = add nsw i32 %i.1, %tmp.3, !dbg !198   ; [#uses=1 type=i32] [debug line = 47:4]
  %tmp.11 = sext i32 %tmp.10 to i64, !dbg !198    ; [#uses=1 type=i64] [debug line = 47:4]
  %din.assign = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.11, !dbg !198 ; [#uses=1 type=i8*] [debug line = 47:4]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %contact}, i64 0, metadata !236), !dbg !237 ; [debug line = 144:48@47:4] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %din.assign}, i64 0, metadata !238), !dbg !239 ; [debug line = 144:74@47:4] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.12}, metadata !240) nounwind, !dbg !241 ; [debug line = 145:22@47:4] [debug variable = tmp]
  %tmp.13 = load i8* %din.assign, align 1, !dbg !242 ; [#uses=2 type=i8] [debug line = 145:31@47:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.13) nounwind
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.13}, i64 0, metadata !240), !dbg !242 ; [debug line = 145:31@47:4] [debug variable = tmp]
  store i8 %tmp.13, i8* %tmp.12, align 1, !dbg !242 ; [debug line = 145:31@47:4]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %.0.addr, i8* %tmp.12) nounwind, !dbg !196 ; [debug line = 146:9@47:4]
  %tmp.14 = sext i32 %i.1 to i64, !dbg !204       ; [#uses=1 type=i64] [debug line = 48:4]
  %din.assign.1 = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp.14, !dbg !204 ; [#uses=1 type=i8*] [debug line = 48:4]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %db_item}, i64 0, metadata !236), !dbg !243 ; [debug line = 144:48@48:4] [debug variable = this]
  call void @llvm.dbg.value(metadata !{i8* %din.assign.1}, i64 0, metadata !238), !dbg !244 ; [debug line = 144:74@48:4] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.15}, metadata !240) nounwind, !dbg !245 ; [debug line = 145:22@48:4] [debug variable = tmp]
  %tmp.16 = load i8* %din.assign.1, align 1, !dbg !246 ; [#uses=2 type=i8] [debug line = 145:31@48:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.16) nounwind
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.16}, i64 0, metadata !240), !dbg !246 ; [debug line = 145:31@48:4] [debug variable = tmp]
  store i8 %tmp.16, i8* %tmp.15, align 1, !dbg !246 ; [debug line = 145:31@48:4]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %.07.addr, i8* %tmp.15) nounwind, !dbg !203 ; [debug line = 146:9@48:4]
  %i.3 = add nsw i32 %i.1, 1, !dbg !247           ; [#uses=1 type=i32] [debug line = 46:17]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !214), !dbg !247 ; [debug line = 46:17] [debug variable = i]
  br label %5, !dbg !247                          ; [debug line = 46:17]

; <label>:7                                       ; preds = %5
  %tmp.7 = call fastcc zeroext i1 @compare(%"class.hls::stream.1"* %contact, %"class.hls::stream.1"* %db_item), !dbg !248 ; [#uses=1 type=i1] [debug line = 50:35]
  %tmp.8 = sext i32 %contacts_index to i64, !dbg !248 ; [#uses=1 type=i64] [debug line = 50:35]
  %local_results.addr.1 = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp.8, !dbg !248 ; [#uses=1 type=i1*] [debug line = 50:35]
  store i1 %tmp.7, i1* %local_results.addr.1, align 1, !dbg !248 ; [debug line = 50:35]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !249 ; [#uses=0 type=i32] [debug line = 51:2]
  %contacts_index.3 = add nsw i32 %contacts_index, 1, !dbg !250 ; [#uses=1 type=i32] [debug line = 41:46]
  call void @llvm.dbg.value(metadata !{i32 %contacts_index.3}, i64 0, metadata !251), !dbg !250 ; [debug line = 41:46] [debug variable = contacts_index]
  br label %.preheader11, !dbg !250               ; [debug line = 41:46]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %contacts_index.1 = phi i32 [ %contacts_index.2, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %matched = phi i1 [ %matched.1, %8 ], [ false, %.preheader.preheader ] ; [#uses=2 type=i1]
  %exitcond = icmp eq i32 %contacts_index.1, 128, !dbg !215 ; [#uses=1 type=i1] [debug line = 52:6]
  br i1 %exitcond, label %9, label %8, !dbg !215  ; [debug line = 52:6]

; <label>:8                                       ; preds = %.preheader
  %tmp.4 = sext i32 %contacts_index.1 to i64, !dbg !252 ; [#uses=1 type=i64] [debug line = 53:3]
  %local_results.addr = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp.4, !dbg !252 ; [#uses=1 type=i1*] [debug line = 53:3]
  %local_results.load = load i1* %local_results.addr, align 1, !dbg !252 ; [#uses=2 type=i1] [debug line = 53:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %local_results.load) nounwind
  %matched.1 = or i1 %matched, %local_results.load, !dbg !252 ; [#uses=1 type=i1] [debug line = 53:3]
  call void @llvm.dbg.value(metadata !{i1 %matched.1}, i64 0, metadata !254), !dbg !252 ; [debug line = 53:3] [debug variable = matched]
  %contacts_index.2 = add nsw i32 %contacts_index.1, 1, !dbg !255 ; [#uses=1 type=i32] [debug line = 52:46]
  call void @llvm.dbg.value(metadata !{i32 %contacts_index.2}, i64 0, metadata !251), !dbg !255 ; [debug line = 52:46] [debug variable = contacts_index]
  br label %.preheader, !dbg !255                 ; [debug line = 52:46]

; <label>:9                                       ; preds = %.preheader
  %matched.0.lcssa = phi i1 [ %matched, %.preheader ] ; [#uses=1 type=i1]
  ret i1 %matched.0.lcssa, !dbg !256              ; [debug line = 55:2]
}

; [#uses=122]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=13]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, i8* %contact_in, %"class.hls::stream.1"* %db_in, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, %"class.hls::stream.0.2"* %results_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery.str) nounwind
  %tmp.22 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.26 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp.25 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !257), !dbg !258 ; [debug line = 61:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i8* %contact_in}, i64 0, metadata !259), !dbg !260 ; [debug line = 62:16] [debug variable = contact_in]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %db_in}, i64 0, metadata !261), !dbg !262 ; [debug line = 63:30] [debug variable = db_in]
  call void @llvm.dbg.value(metadata !{i32 %db_size_in}, i64 0, metadata !263), !dbg !264 ; [debug line = 64:15] [debug variable = db_size_in]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !265), !dbg !266 ; [debug line = 65:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !267), !dbg !268 ; [debug line = 66:7] [debug variable = contacts_size_out]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %results_out}, i64 0, metadata !269), !dbg !270 ; [debug line = 67:29] [debug variable = results_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %contact_in, i32 64) nounwind, !dbg !271 ; [debug line = 68:3]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0.2"* %results_out, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !273 ; [debug line = 69:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.1"* %db_in, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !274 ; [debug line = 70:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !275 ; [debug line = 71:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !276 ; [debug line = 72:1]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream.1"* @db_stream, i32 1, i32 128, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !277 ; [debug line = 73:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !278 ; [debug line = 74:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !279 ; [debug line = 75:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !280 ; [debug line = 76:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !281 ; [debug line = 77:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !282 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !283 ; [debug line = 79:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !284 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %contact_in, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !285 ; [debug line = 81:1]
  switch i32 %operation, label %10 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %9
  ], !dbg !286                                    ; [debug line = 85:2]

; <label>:1                                       ; preds = %0
  store i32 0, i32* %error_out, align 4, !dbg !287 ; [debug line = 88:4]
  %contacts_size.load.1 = load i32* @contacts_size, align 4, !dbg !289 ; [#uses=1 type=i32] [debug line = 89:4]
  store i32 %contacts_size.load.1, i32* %contacts_size_out, align 4, !dbg !289 ; [debug line = 89:4]
  %contacts_size.load.2 = load i32* @contacts_size, align 4, !dbg !290 ; [#uses=2 type=i32] [debug line = 90:4]
  %tmp = icmp sgt i32 %contacts_size.load.2, 127, !dbg !290 ; [#uses=1 type=i1] [debug line = 90:4]
  br i1 %tmp, label %2, label %3, !dbg !290       ; [debug line = 90:4]

; <label>:2                                       ; preds = %1
  store i32 1, i32* %error_out, align 4, !dbg !291 ; [debug line = 91:5]
  %contacts_size.load.4 = load i32* @contacts_size, align 4, !dbg !293 ; [#uses=1 type=i32] [debug line = 92:5]
  br label %4, !dbg !294                          ; [debug line = 93:4]

; <label>:3                                       ; preds = %1
  %tmp.18 = shl nsw i32 %contacts_size.load.2, 6, !dbg !295 ; [#uses=1 type=i32] [debug line = 94:5]
  %tmp.19 = sext i32 %tmp.18 to i64, !dbg !295    ; [#uses=1 type=i64] [debug line = 94:5]
  %contacts.addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.19, !dbg !295 ; [#uses=1 type=i8*] [debug line = 94:5]
  call fastcc void @_memcpy(i8* %contacts.addr, i8* %contact_in), !dbg !295 ; [debug line = 94:5]
  %contacts_size.load.5 = load i32* @contacts_size, align 4, !dbg !297 ; [#uses=1 type=i32] [debug line = 95:5]
  %tmp.20 = add nsw i32 %contacts_size.load.5, 1, !dbg !297 ; [#uses=2 type=i32] [debug line = 95:5]
  store i32 %tmp.20, i32* @contacts_size, align 4, !dbg !297 ; [debug line = 95:5]
  br label %4

; <label>:4                                       ; preds = %3, %2
  %storemerge = phi i32 [ %tmp.20, %3 ], [ %contacts_size.load.4, %2 ] ; [#uses=1 type=i32]
  store i32 %storemerge, i32* %contacts_size_out, align 4, !dbg !293 ; [debug line = 92:5]
  br label %.loopexit, !dbg !298                  ; [debug line = 98:4]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %error_out, align 4, !dbg !299 ; [debug line = 101:4]
  %contacts_size.load.3 = load i32* @contacts_size, align 4, !dbg !300 ; [#uses=1 type=i32] [debug line = 102:4]
  store i32 %contacts_size.load.3, i32* %contacts_size_out, align 4, !dbg !300 ; [debug line = 102:4]
  %db_in.addr = getelementptr inbounds %"class.hls::stream.1"* %db_in, i64 0, i32 0, !dbg !301 ; [#uses=1 type=i8*] [debug line = 131:9@105:22]
  %results_out.addr = getelementptr inbounds %"class.hls::stream.0.2"* %results_out, i64 0, i32 0, !dbg !307 ; [#uses=1 type=i32*] [debug line = 146:9@107:38]
  br label %6, !dbg !310                          ; [debug line = 103:8]

; <label>:6                                       ; preds = %8, %5
  %database_index = phi i32 [ 0, %5 ], [ %database_index.1, %8 ] ; [#uses=2 type=i32]
  %exitcond4 = icmp eq i32 %database_index, %db_size_in, !dbg !310 ; [#uses=1 type=i1] [debug line = 103:8]
  br i1 %exitcond4, label %.loopexit.loopexit, label %.preheader.preheader, !dbg !310 ; [debug line = 103:8]

.preheader.preheader:                             ; preds = %6
  br label %.preheader, !dbg !311                 ; [debug line = 104:9]

.preheader:                                       ; preds = %7, %.preheader.preheader
  %i = phi i32 [ %i.4, %7 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %i, 64, !dbg !311       ; [#uses=1 type=i1] [debug line = 104:9]
  br i1 %exitcond, label %8, label %7, !dbg !311  ; [debug line = 104:9]

; <label>:7                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %db_in}, i64 0, metadata !312), !dbg !313 ; [debug line = 129:56@105:22] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.25}, metadata !206) nounwind, !dbg !314 ; [debug line = 130:22@105:22] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %db_in.addr, i8* %tmp.25) nounwind, !dbg !301 ; [debug line = 131:9@105:22]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.25}, i64 0, metadata !206), !dbg !315 ; [debug line = 132:9@105:22] [debug variable = tmp]
  %tmp.27 = load i8* %tmp.25, align 1, !dbg !315  ; [#uses=1 type=i8] [debug line = 132:9@105:22]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.26}, metadata !240) nounwind, !dbg !316 ; [debug line = 145:22@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp.27}, i64 0, metadata !240), !dbg !317 ; [debug line = 145:31@105:22] [debug variable = tmp]
  store i8 %tmp.27, i8* %tmp.26, align 1, !dbg !317 ; [debug line = 145:31@105:22]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* getelementptr inbounds (%"class.hls::stream.1"* @db_stream, i64 0, i32 0), i8* %tmp.26) nounwind, !dbg !318 ; [debug line = 146:9@105:22]
  %i.4 = add nsw i32 %i, 1, !dbg !319             ; [#uses=1 type=i32] [debug line = 104:21]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !320), !dbg !319 ; [debug line = 104:21] [debug variable = i]
  br label %.preheader, !dbg !319                 ; [debug line = 104:21]

; <label>:8                                       ; preds = %.preheader
  %tmp.21 = call fastcc zeroext i1 @match_db_contact(), !dbg !309 ; [#uses=1 type=i1] [debug line = 107:38]
  %tmp.23 = zext i1 %tmp.21 to i32, !dbg !309     ; [#uses=1 type=i32] [debug line = 107:38]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %results_out}, i64 0, metadata !321), !dbg !323 ; [debug line = 144:48@107:38] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.22}, metadata !324) nounwind, !dbg !325 ; [debug line = 145:22@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.23}, i64 0, metadata !324), !dbg !326 ; [debug line = 145:31@107:38] [debug variable = tmp]
  store i32 %tmp.23, i32* %tmp.22, align 4, !dbg !326 ; [debug line = 145:31@107:38]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %results_out.addr, i32* %tmp.22) nounwind, !dbg !307 ; [debug line = 146:9@107:38]
  %database_index.1 = add nsw i32 %database_index, 1, !dbg !327 ; [#uses=1 type=i32] [debug line = 103:57]
  call void @llvm.dbg.value(metadata !{i32 %database_index.1}, i64 0, metadata !328), !dbg !327 ; [debug line = 103:57] [debug variable = database_index]
  br label %6, !dbg !327                          ; [debug line = 103:57]

; <label>:9                                       ; preds = %0
  store i32 0, i32* %error_out, align 4, !dbg !329 ; [debug line = 112:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !330 ; [debug line = 113:4]
  store i32 0, i32* %contacts_size_out, align 4, !dbg !331 ; [debug line = 114:4]
  br label %.loopexit, !dbg !332                  ; [debug line = 115:4]

; <label>:10                                      ; preds = %0
  %contacts_size.load = load i32* @contacts_size, align 4, !dbg !333 ; [#uses=1 type=i32] [debug line = 118:4]
  store i32 %contacts_size.load, i32* %contacts_size_out, align 4, !dbg !333 ; [debug line = 118:4]
  store i32 3, i32* %error_out, align 4, !dbg !334 ; [debug line = 119:4]
  br label %.loopexit, !dbg !335                  ; [debug line = 120:4]

.loopexit.loopexit:                               ; preds = %6
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %10, %9, %4
  ret void, !dbg !336                             ; [debug line = 122:1]
}

; [#uses=1]
define internal fastcc zeroext i1 @compare(%"class.hls::stream.1"* %contact, %"class.hls::stream.1"* %db_item) nounwind uwtable {
  %tmp.29 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %results_local = alloca [64 x i1], align 16     ; [#uses=2 type=[64 x i1]*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %contact}, i64 0, metadata !337), !dbg !338 ; [debug line = 20:42] [debug variable = contact]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %db_item}, i64 0, metadata !339), !dbg !340 ; [debug line = 20:79] [debug variable = db_item]
  call void @llvm.dbg.declare(metadata !{[64 x i1]* %results_local}, metadata !341), !dbg !344 ; [debug line = 23:7] [debug variable = results_local]
  %contact.addr = getelementptr inbounds %"class.hls::stream.1"* %contact, i64 0, i32 0, !dbg !345 ; [#uses=1 type=i8*] [debug line = 131:9@25:23]
  %db_item.addr = getelementptr inbounds %"class.hls::stream.1"* %db_item, i64 0, i32 0, !dbg !349 ; [#uses=1 type=i8*] [debug line = 131:9@25:41]
  br label %1, !dbg !351                          ; [debug line = 24:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.5, %2 ]            ; [#uses=3 type=i32]
  %exitcond3 = icmp eq i32 %i, 64, !dbg !351      ; [#uses=1 type=i1] [debug line = 24:6]
  br i1 %exitcond3, label %.preheader.preheader, label %2, !dbg !351 ; [debug line = 24:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !352                 ; [debug line = 27:6]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %contact}, i64 0, metadata !312), !dbg !354 ; [debug line = 129:56@25:23] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !206) nounwind, !dbg !355 ; [debug line = 130:22@25:23] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %contact.addr, i8* %tmp) nounwind, !dbg !345 ; [debug line = 131:9@25:23]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !206), !dbg !356 ; [debug line = 132:9@25:23] [debug variable = tmp]
  %3 = load i8* %tmp, align 1, !dbg !356          ; [#uses=1 type=i8] [debug line = 132:9@25:23]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %db_item}, i64 0, metadata !312), !dbg !357 ; [debug line = 129:56@25:41] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.29}, metadata !206) nounwind, !dbg !358 ; [debug line = 130:22@25:41] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %db_item.addr, i8* %tmp.29) nounwind, !dbg !349 ; [debug line = 131:9@25:41]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.29}, i64 0, metadata !206), !dbg !359 ; [debug line = 132:9@25:41] [debug variable = tmp]
  %tmp.29.load = load i8* %tmp.29, align 1, !dbg !359 ; [#uses=1 type=i8] [debug line = 132:9@25:41]
  %tmp.30 = icmp eq i8 %3, %tmp.29.load, !dbg !350 ; [#uses=1 type=i1] [debug line = 25:41]
  %tmp.31 = sext i32 %i to i64, !dbg !350         ; [#uses=1 type=i64] [debug line = 25:41]
  %results_local.addr = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp.31, !dbg !350 ; [#uses=1 type=i1*] [debug line = 25:41]
  store i1 %tmp.30, i1* %results_local.addr, align 1, !dbg !350 ; [debug line = 25:41]
  %i.5 = add nsw i32 %i, 1, !dbg !360             ; [#uses=1 type=i32] [debug line = 24:17]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !361), !dbg !360 ; [debug line = 24:17] [debug variable = i]
  br label %1, !dbg !360                          ; [debug line = 24:17]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %i.1 = phi i32 [ %i.6, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %found = phi i1 [ %found.1, %4 ], [ true, %.preheader.preheader ] ; [#uses=2 type=i1]
  %exitcond = icmp eq i32 %i.1, 64, !dbg !352     ; [#uses=1 type=i1] [debug line = 27:6]
  br i1 %exitcond, label %5, label %4, !dbg !352  ; [debug line = 27:6]

; <label>:4                                       ; preds = %.preheader
  %tmp.33 = sext i32 %i.1 to i64, !dbg !362       ; [#uses=1 type=i64] [debug line = 28:3]
  %results_local.addr.1 = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp.33, !dbg !362 ; [#uses=1 type=i1*] [debug line = 28:3]
  %results_local.load = load i1* %results_local.addr.1, align 1, !dbg !362 ; [#uses=2 type=i1] [debug line = 28:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %results_local.load) nounwind
  %found.1 = and i1 %found, %results_local.load, !dbg !362 ; [#uses=1 type=i1] [debug line = 28:3]
  call void @llvm.dbg.value(metadata !{i1 %found.1}, i64 0, metadata !364), !dbg !362 ; [debug line = 28:3] [debug variable = found]
  %i.6 = add nsw i32 %i.1, 1, !dbg !365           ; [#uses=1 type=i32] [debug line = 27:17]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !361), !dbg !365 ; [debug line = 27:17] [debug variable = i]
  br label %.preheader, !dbg !365                 ; [debug line = 27:17]

; <label>:5                                       ; preds = %.preheader
  %found.0.lcssa = phi i1 [ %found, %.preheader ] ; [#uses=1 type=i1]
  ret i1 %found.0.lcssa, !dbg !366                ; [debug line = 30:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=12]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8*, i8*)

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32*, i32*)

; [#uses=4]
declare void @_ssdm_op_IfRead.Stream.i8P.i8P(i8*, i8*)

; [#uses=3]
declare void @_ssdm_SpecStream(...) nounwind

; [#uses=5]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define internal fastcc void @_memcpy(i8* %dest, i8* %src) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %dest}, i64 0, metadata !367), !dbg !368 ; [debug line = 13:29] [debug variable = dest]
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !369), !dbg !370 ; [debug line = 13:50] [debug variable = src]
  br label %1, !dbg !371                          ; [debug line = 15:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.7, %2 ]            ; [#uses=3 type=i32]
  %tmp = icmp slt i32 %i, 64, !dbg !371           ; [#uses=1 type=i1] [debug line = 15:6]
  br i1 %tmp, label %2, label %3, !dbg !371       ; [debug line = 15:6]

; <label>:2                                       ; preds = %1
  %tmp.36 = sext i32 %i to i64, !dbg !374         ; [#uses=2 type=i64] [debug line = 16:3]
  %src.addr = getelementptr inbounds i8* %src, i64 %tmp.36, !dbg !374 ; [#uses=1 type=i8*] [debug line = 16:3]
  %src.load = load i8* %src.addr, align 1, !dbg !374 ; [#uses=2 type=i8] [debug line = 16:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %src.load) nounwind
  %dest.addr = getelementptr inbounds i8* %dest, i64 %tmp.36, !dbg !374 ; [#uses=1 type=i8*] [debug line = 16:3]
  store i8 %src.load, i8* %dest.addr, align 1, !dbg !374 ; [debug line = 16:3]
  %i.7 = add nsw i32 %i, 1, !dbg !376             ; [#uses=1 type=i32] [debug line = 15:21]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !377), !dbg !376 ; [debug line = 15:21] [debug variable = i]
  br label %1, !dbg !376                          ; [debug line = 15:21]

; <label>:3                                       ; preds = %1
  ret void, !dbg !378                             ; [debug line = 18:1]
}

!llvm.dbg.cu = !{!0, !3}
!hls.encrypted.func = !{}
!opencl.kernels = !{!149, !156, !162, !168, !174, !180, !182, !182, !182}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/sha512.pragma.2.c", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !1, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !4, metadata !133} ; [ DW_TAG_compile_unit ]
!4 = metadata !{metadata !5}
!5 = metadata !{metadata !6, metadata !15, metadata !74, metadata !77, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!6 = metadata !{i32 786478, i32 0, metadata !7, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !7, i32 13, metadata !8, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 13} ; [ DW_TAG_subprogram ]
!7 = metadata !{i32 786473, metadata !"contact_discovery_axi_experimental/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !9, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!9 = metadata !{null, metadata !10, metadata !10, metadata !12}
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !7, metadata !"compare", metadata !"compare", metadata !"_Z7compareRN3hls6streamIhEES2_", metadata !7, i32 20, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"class.hls::stream.1"*, %"class.hls::stream.1"*)* @compare, null, null, metadata !13, i32 20} ; [ DW_TAG_subprogram ]
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
!74 = metadata !{i32 786478, i32 0, metadata !7, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contactv", metadata !7, i32 33, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 ()* @match_db_contact, null, null, metadata !13, i32 33} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !18}
!77 = metadata !{i32 786478, i32 0, metadata !7, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhRN3hls6streamIhEEjPiS4_RNS1_IjEE", metadata !7, i32 60, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i8*, %"class.hls::stream.1"*, i32, i32*, i32*, %"class.hls::stream.0.2"*)* @contact_discovery, null, null, metadata !13, i32 68} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{null, metadata !12, metadata !10, metadata !19, metadata !71, metadata !80, metadata !80, metadata !81}
!80 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!81 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_reference_type ]
!82 = metadata !{i32 786434, metadata !21, metadata !"stream<unsigned int>", metadata !22, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !83, i32 0, null, metadata !126} ; [ DW_TAG_class_type ]
!83 = metadata !{metadata !84, metadata !85, metadata !89, metadata !92, metadata !97, metadata !100, metadata !104, metadata !109, metadata !113, metadata !114, metadata !115, metadata !118, metadata !121, metadata !122, metadata !125}
!84 = metadata !{i32 786445, metadata !82, metadata !"V", metadata !22, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ]
!85 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 83, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !88}
!88 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !82} ; [ DW_TAG_pointer_type ]
!89 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 86, metadata !90, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 86} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{null, metadata !88, metadata !32}
!92 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"", metadata !22, i32 91, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !13, i32 91} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !88, metadata !95}
!95 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_reference_type ]
!96 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_const_type ]
!97 = metadata !{i32 786478, i32 0, metadata !82, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIjEaSERKS1_", metadata !22, i32 94, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !13, i32 94} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !81, metadata !88, metadata !95}
!100 = metadata !{i32 786478, i32 0, metadata !82, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIjErsERj", metadata !22, i32 101, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 101} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{null, metadata !88, metadata !103}
!103 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_reference_type ]
!104 = metadata !{i32 786478, i32 0, metadata !82, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIjElsERKj", metadata !22, i32 105, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 105} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !88, metadata !107}
!107 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_reference_type ]
!108 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_const_type ]
!109 = metadata !{i32 786478, i32 0, metadata !82, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIjE5emptyEv", metadata !22, i32 112, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 112} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{metadata !18, metadata !112}
!112 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !96} ; [ DW_TAG_pointer_type ]
!113 = metadata !{i32 786478, i32 0, metadata !82, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIjE4fullEv", metadata !22, i32 117, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 117} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readERj", metadata !22, i32 123, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 123} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readEv", metadata !22, i32 129, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 129} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{metadata !71, metadata !88}
!118 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIjE7read_nbERj", metadata !22, i32 136, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 136} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{metadata !18, metadata !88, metadata !103}
!121 = metadata !{i32 786478, i32 0, metadata !82, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !22, i32 144, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786478, i32 0, metadata !82, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIjE8write_nbERKj", metadata !22, i32 150, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 150} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{metadata !18, metadata !88, metadata !107}
!125 = metadata !{i32 786478, i32 0, metadata !82, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIjE4sizeEv", metadata !22, i32 157, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !13, i32 157} ; [ DW_TAG_subprogram ]
!126 = metadata !{metadata !127}
!127 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !71, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!128 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !22, i32 144, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !121, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !22, i32 144, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !64, metadata !13, i32 144} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !22, i32 129, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !13, i32 129} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIhEC1Ev", metadata !22, i32 83, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !25, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786478, i32 0, metadata !21, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIhEC2Ev", metadata !22, i32 83, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !25, metadata !13, i32 83} ; [ DW_TAG_subprogram ]
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !135, metadata !136, metadata !139, metadata !140, metadata !141, metadata !143, metadata !144, metadata !145}
!135 = metadata !{i32 786484, i32 0, null, metadata !"db_stream", metadata !"db_stream", metadata !"_ZL9db_stream", metadata !7, i32 10, metadata !20, i32 1, i32 1, %"class.hls::stream.1"* @db_stream} ; [ DW_TAG_variable ]
!136 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !137, i32 315, metadata !138, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!137 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!138 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !137, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!139 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !137, i32 316, metadata !138, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!140 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !137, i32 317, metadata !138, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!141 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !142, i32 26, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!142 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!143 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !142, i32 30, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!144 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !7, i32 9, metadata !12, i32 1, i32 1, i32* @contacts_size} ; [ DW_TAG_variable ]
!145 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !7, i32 8, metadata !146, i32 1, i32 1, [8192 x i8]* @contacts} ; [ DW_TAG_variable ]
!146 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !11, metadata !147, i32 0, i32 0} ; [ DW_TAG_array_type ]
!147 = metadata !{metadata !148}
!148 = metadata !{i32 786465, i64 0, i64 8191}    ; [ DW_TAG_subrange_type ]
!149 = metadata !{null, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155}
!150 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!151 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!153 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!154 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!155 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!156 = metadata !{i1 (%"class.hls::stream.1"*, %"class.hls::stream.1"*)* @compare, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !155}
!157 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!158 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &"}
!160 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!161 = metadata !{metadata !"kernel_arg_name", metadata !"contact", metadata !"db_item"}
!162 = metadata !{i1 ()* @match_db_contact, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !155}
!163 = metadata !{metadata !"kernel_arg_addr_space"}
!164 = metadata !{metadata !"kernel_arg_access_qual"}
!165 = metadata !{metadata !"kernel_arg_type"}
!166 = metadata !{metadata !"kernel_arg_type_qual"}
!167 = metadata !{metadata !"kernel_arg_name"}
!168 = metadata !{void (i32, i8*, %"class.hls::stream.1"*, i32, i32*, i32*, %"class.hls::stream.0.2"*)* @contact_discovery, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !155}
!169 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0}
!170 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"hls::stream<uchar> &", metadata !"uint", metadata !"int*", metadata !"int*", metadata !"hls::stream<uint> &"}
!172 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!173 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"db_in", metadata !"db_size_in", metadata !"error_out", metadata !"contacts_size_out", metadata !"results_out"}
!174 = metadata !{null, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !155}
!175 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!176 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"const uint &"}
!178 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!179 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!180 = metadata !{null, metadata !175, metadata !176, metadata !181, metadata !178, metadata !179, metadata !155}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!182 = metadata !{null, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !155}
!183 = metadata !{i32 786688, metadata !184, metadata !"local_results", metadata !7, i32 36, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 786443, metadata !74, i32 33, i32 24, metadata !7, i32 8} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !18, metadata !186, i32 0, i32 0} ; [ DW_TAG_array_type ]
!186 = metadata !{metadata !187}
!187 = metadata !{i32 786465, i64 0, i64 127}     ; [ DW_TAG_subrange_type ]
!188 = metadata !{i32 36, i32 7, metadata !184, null}
!189 = metadata !{i32 786688, metadata !184, metadata !"db_item_temp", metadata !7, i32 37, metadata !190, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !11, metadata !191, i32 0, i32 0} ; [ DW_TAG_array_type ]
!191 = metadata !{metadata !192}
!192 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!193 = metadata !{i32 37, i32 16, metadata !184, null}
!194 = metadata !{i32 38, i32 6, metadata !195, null}
!195 = metadata !{i32 786443, metadata !184, i32 38, i32 2, metadata !7, i32 9} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 146, i32 9, metadata !197, metadata !198}
!197 = metadata !{i32 786443, metadata !129, i32 144, i32 79, metadata !22, i32 26} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 47, i32 4, metadata !199, null}
!199 = metadata !{i32 786443, metadata !200, i32 46, i32 21, metadata !7, i32 14} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 786443, metadata !201, i32 46, i32 2, metadata !7, i32 13} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 786443, metadata !202, i32 41, i32 63, metadata !7, i32 12} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 786443, metadata !184, i32 41, i32 2, metadata !7, i32 11} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 146, i32 9, metadata !197, metadata !204}
!204 = metadata !{i32 48, i32 4, metadata !199, null}
!205 = metadata !{i32 41, i32 6, metadata !202, null}
!206 = metadata !{i32 786688, metadata !207, metadata !"tmp", metadata !22, i32 130, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 786443, metadata !130, i32 129, i32 63, metadata !22, i32 27} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 130, i32 22, metadata !207, metadata !209}
!209 = metadata !{i32 39, i32 21, metadata !210, null}
!210 = metadata !{i32 786443, metadata !195, i32 38, i32 21, metadata !7, i32 10} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 131, i32 9, metadata !207, metadata !209}
!212 = metadata !{i32 132, i32 9, metadata !207, metadata !209}
!213 = metadata !{i32 38, i32 17, metadata !195, null}
!214 = metadata !{i32 786688, metadata !184, metadata !"i", metadata !7, i32 34, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 52, i32 6, metadata !216, null}
!216 = metadata !{i32 786443, metadata !184, i32 52, i32 2, metadata !7, i32 15} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 41, i32 64, metadata !201, null}
!218 = metadata !{i32 786688, metadata !201, metadata !"contact", metadata !7, i32 42, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!219 = metadata !{i32 42, i32 30, metadata !201, null}
!220 = metadata !{i32 786689, metadata !131, metadata !"this", metadata !22, i32 16777299, metadata !221, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!222 = metadata !{i32 83, i32 43, metadata !131, metadata !223}
!223 = metadata !{i32 42, i32 37, metadata !201, null}
!224 = metadata !{i32 786689, metadata !132, metadata !"this", metadata !22, i32 16777299, metadata !221, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 83, i32 43, metadata !132, metadata !226}
!226 = metadata !{i32 84, i32 5, metadata !131, metadata !223}
!227 = metadata !{i32 43, i32 1, metadata !201, null}
!228 = metadata !{i32 786688, metadata !201, metadata !"db_item", metadata !7, i32 44, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 44, i32 29, metadata !201, null}
!230 = metadata !{i32 83, i32 43, metadata !131, metadata !231}
!231 = metadata !{i32 44, i32 36, metadata !201, null}
!232 = metadata !{i32 83, i32 43, metadata !132, metadata !233}
!233 = metadata !{i32 84, i32 5, metadata !131, metadata !231}
!234 = metadata !{i32 45, i32 1, metadata !201, null}
!235 = metadata !{i32 46, i32 6, metadata !200, null}
!236 = metadata !{i32 786689, metadata !129, metadata !"this", metadata !22, i32 16777360, metadata !221, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!237 = metadata !{i32 144, i32 48, metadata !129, metadata !198}
!238 = metadata !{i32 786689, metadata !129, metadata !"din", metadata !22, i32 33554576, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!239 = metadata !{i32 144, i32 74, metadata !129, metadata !198}
!240 = metadata !{i32 786688, metadata !197, metadata !"tmp", metadata !22, i32 145, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 145, i32 22, metadata !197, metadata !198}
!242 = metadata !{i32 145, i32 31, metadata !197, metadata !198}
!243 = metadata !{i32 144, i32 48, metadata !129, metadata !204}
!244 = metadata !{i32 144, i32 74, metadata !129, metadata !204}
!245 = metadata !{i32 145, i32 22, metadata !197, metadata !204}
!246 = metadata !{i32 145, i32 31, metadata !197, metadata !204}
!247 = metadata !{i32 46, i32 17, metadata !200, null}
!248 = metadata !{i32 50, i32 35, metadata !201, null}
!249 = metadata !{i32 51, i32 2, metadata !201, null}
!250 = metadata !{i32 41, i32 46, metadata !202, null}
!251 = metadata !{i32 786688, metadata !184, metadata !"contacts_index", metadata !7, i32 34, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 53, i32 3, metadata !253, null}
!253 = metadata !{i32 786443, metadata !216, i32 52, i32 63, metadata !7, i32 16} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 786688, metadata !184, metadata !"matched", metadata !7, i32 35, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!255 = metadata !{i32 52, i32 46, metadata !216, null}
!256 = metadata !{i32 55, i32 2, metadata !184, null}
!257 = metadata !{i32 786689, metadata !77, metadata !"operation", metadata !7, i32 16777277, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!258 = metadata !{i32 61, i32 6, metadata !77, null}
!259 = metadata !{i32 786689, metadata !77, metadata !"contact_in", metadata !7, i32 33554494, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!260 = metadata !{i32 62, i32 16, metadata !77, null}
!261 = metadata !{i32 786689, metadata !77, metadata !"db_in", metadata !7, i32 50331711, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!262 = metadata !{i32 63, i32 30, metadata !77, null}
!263 = metadata !{i32 786689, metadata !77, metadata !"db_size_in", metadata !7, i32 67108928, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!264 = metadata !{i32 64, i32 15, metadata !77, null}
!265 = metadata !{i32 786689, metadata !77, metadata !"error_out", metadata !7, i32 83886145, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!266 = metadata !{i32 65, i32 7, metadata !77, null}
!267 = metadata !{i32 786689, metadata !77, metadata !"contacts_size_out", metadata !7, i32 100663362, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 66, i32 7, metadata !77, null}
!269 = metadata !{i32 786689, metadata !77, metadata !"results_out", metadata !7, i32 117440579, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!270 = metadata !{i32 67, i32 29, metadata !77, null}
!271 = metadata !{i32 68, i32 3, metadata !272, null}
!272 = metadata !{i32 786443, metadata !77, i32 68, i32 2, metadata !7, i32 17} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 69, i32 1, metadata !272, null}
!274 = metadata !{i32 70, i32 1, metadata !272, null}
!275 = metadata !{i32 71, i32 1, metadata !272, null}
!276 = metadata !{i32 72, i32 1, metadata !272, null}
!277 = metadata !{i32 73, i32 1, metadata !272, null}
!278 = metadata !{i32 74, i32 1, metadata !272, null}
!279 = metadata !{i32 75, i32 1, metadata !272, null}
!280 = metadata !{i32 76, i32 1, metadata !272, null}
!281 = metadata !{i32 77, i32 1, metadata !272, null}
!282 = metadata !{i32 78, i32 1, metadata !272, null}
!283 = metadata !{i32 79, i32 1, metadata !272, null}
!284 = metadata !{i32 80, i32 1, metadata !272, null}
!285 = metadata !{i32 81, i32 1, metadata !272, null}
!286 = metadata !{i32 85, i32 2, metadata !272, null}
!287 = metadata !{i32 88, i32 4, metadata !288, null}
!288 = metadata !{i32 786443, metadata !272, i32 85, i32 19, metadata !7, i32 18} ; [ DW_TAG_lexical_block ]
!289 = metadata !{i32 89, i32 4, metadata !288, null}
!290 = metadata !{i32 90, i32 4, metadata !288, null}
!291 = metadata !{i32 91, i32 5, metadata !292, null}
!292 = metadata !{i32 786443, metadata !288, i32 90, i32 28, metadata !7, i32 19} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 92, i32 5, metadata !292, null}
!294 = metadata !{i32 93, i32 4, metadata !292, null}
!295 = metadata !{i32 94, i32 5, metadata !296, null}
!296 = metadata !{i32 786443, metadata !288, i32 93, i32 10, metadata !7, i32 20} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 95, i32 5, metadata !296, null}
!298 = metadata !{i32 98, i32 4, metadata !288, null}
!299 = metadata !{i32 101, i32 4, metadata !288, null}
!300 = metadata !{i32 102, i32 4, metadata !288, null}
!301 = metadata !{i32 131, i32 9, metadata !207, metadata !302}
!302 = metadata !{i32 105, i32 22, metadata !303, null}
!303 = metadata !{i32 786443, metadata !304, i32 104, i32 25, metadata !7, i32 24} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 786443, metadata !305, i32 104, i32 5, metadata !7, i32 23} ; [ DW_TAG_lexical_block ]
!305 = metadata !{i32 786443, metadata !306, i32 103, i32 74, metadata !7, i32 22} ; [ DW_TAG_lexical_block ]
!306 = metadata !{i32 786443, metadata !288, i32 103, i32 4, metadata !7, i32 21} ; [ DW_TAG_lexical_block ]
!307 = metadata !{i32 146, i32 9, metadata !308, metadata !309}
!308 = metadata !{i32 786443, metadata !128, i32 144, i32 79, metadata !22, i32 25} ; [ DW_TAG_lexical_block ]
!309 = metadata !{i32 107, i32 38, metadata !305, null}
!310 = metadata !{i32 103, i32 8, metadata !306, null}
!311 = metadata !{i32 104, i32 9, metadata !304, null}
!312 = metadata !{i32 786689, metadata !130, metadata !"this", metadata !22, i32 16777345, metadata !221, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!313 = metadata !{i32 129, i32 56, metadata !130, metadata !302}
!314 = metadata !{i32 130, i32 22, metadata !207, metadata !302}
!315 = metadata !{i32 132, i32 9, metadata !207, metadata !302}
!316 = metadata !{i32 145, i32 22, metadata !197, metadata !302}
!317 = metadata !{i32 145, i32 31, metadata !197, metadata !302}
!318 = metadata !{i32 146, i32 9, metadata !197, metadata !302}
!319 = metadata !{i32 104, i32 21, metadata !304, null}
!320 = metadata !{i32 786688, metadata !272, metadata !"i", metadata !7, i32 82, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!321 = metadata !{i32 786689, metadata !128, metadata !"this", metadata !22, i32 16777360, metadata !322, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!322 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ]
!323 = metadata !{i32 144, i32 48, metadata !128, metadata !309}
!324 = metadata !{i32 786688, metadata !308, metadata !"tmp", metadata !22, i32 145, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!325 = metadata !{i32 145, i32 22, metadata !308, metadata !309}
!326 = metadata !{i32 145, i32 31, metadata !308, metadata !309}
!327 = metadata !{i32 103, i32 57, metadata !306, null}
!328 = metadata !{i32 786688, metadata !272, metadata !"database_index", metadata !7, i32 82, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!329 = metadata !{i32 112, i32 4, metadata !288, null}
!330 = metadata !{i32 113, i32 4, metadata !288, null}
!331 = metadata !{i32 114, i32 4, metadata !288, null}
!332 = metadata !{i32 115, i32 4, metadata !288, null}
!333 = metadata !{i32 118, i32 4, metadata !288, null}
!334 = metadata !{i32 119, i32 4, metadata !288, null}
!335 = metadata !{i32 120, i32 4, metadata !288, null}
!336 = metadata !{i32 122, i32 1, metadata !272, null}
!337 = metadata !{i32 786689, metadata !15, metadata !"contact", metadata !7, i32 16777236, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!338 = metadata !{i32 20, i32 42, metadata !15, null}
!339 = metadata !{i32 786689, metadata !15, metadata !"db_item", metadata !7, i32 33554452, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!340 = metadata !{i32 20, i32 79, metadata !15, null}
!341 = metadata !{i32 786688, metadata !342, metadata !"results_local", metadata !7, i32 23, metadata !343, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!342 = metadata !{i32 786443, metadata !15, i32 20, i32 87, metadata !7, i32 3} ; [ DW_TAG_lexical_block ]
!343 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !18, metadata !191, i32 0, i32 0} ; [ DW_TAG_array_type ]
!344 = metadata !{i32 23, i32 7, metadata !342, null}
!345 = metadata !{i32 131, i32 9, metadata !207, metadata !346}
!346 = metadata !{i32 25, i32 23, metadata !347, null}
!347 = metadata !{i32 786443, metadata !348, i32 24, i32 21, metadata !7, i32 5} ; [ DW_TAG_lexical_block ]
!348 = metadata !{i32 786443, metadata !342, i32 24, i32 2, metadata !7, i32 4} ; [ DW_TAG_lexical_block ]
!349 = metadata !{i32 131, i32 9, metadata !207, metadata !350}
!350 = metadata !{i32 25, i32 41, metadata !347, null}
!351 = metadata !{i32 24, i32 6, metadata !348, null}
!352 = metadata !{i32 27, i32 6, metadata !353, null}
!353 = metadata !{i32 786443, metadata !342, i32 27, i32 2, metadata !7, i32 6} ; [ DW_TAG_lexical_block ]
!354 = metadata !{i32 129, i32 56, metadata !130, metadata !346}
!355 = metadata !{i32 130, i32 22, metadata !207, metadata !346}
!356 = metadata !{i32 132, i32 9, metadata !207, metadata !346}
!357 = metadata !{i32 129, i32 56, metadata !130, metadata !350}
!358 = metadata !{i32 130, i32 22, metadata !207, metadata !350}
!359 = metadata !{i32 132, i32 9, metadata !207, metadata !350}
!360 = metadata !{i32 24, i32 17, metadata !348, null}
!361 = metadata !{i32 786688, metadata !342, metadata !"i", metadata !7, i32 21, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!362 = metadata !{i32 28, i32 3, metadata !363, null}
!363 = metadata !{i32 786443, metadata !353, i32 27, i32 21, metadata !7, i32 7} ; [ DW_TAG_lexical_block ]
!364 = metadata !{i32 786688, metadata !342, metadata !"found", metadata !7, i32 22, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!365 = metadata !{i32 27, i32 17, metadata !353, null}
!366 = metadata !{i32 30, i32 2, metadata !342, null}
!367 = metadata !{i32 786689, metadata !6, metadata !"dest", metadata !7, i32 16777229, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!368 = metadata !{i32 13, i32 29, metadata !6, null}
!369 = metadata !{i32 786689, metadata !6, metadata !"src", metadata !7, i32 33554445, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!370 = metadata !{i32 13, i32 50, metadata !6, null}
!371 = metadata !{i32 15, i32 6, metadata !372, null}
!372 = metadata !{i32 786443, metadata !373, i32 15, i32 2, metadata !7, i32 1} ; [ DW_TAG_lexical_block ]
!373 = metadata !{i32 786443, metadata !6, i32 13, i32 66, metadata !7, i32 0} ; [ DW_TAG_lexical_block ]
!374 = metadata !{i32 16, i32 3, metadata !375, null}
!375 = metadata !{i32 786443, metadata !372, i32 15, i32 25, metadata !7, i32 2} ; [ DW_TAG_lexical_block ]
!376 = metadata !{i32 15, i32 21, metadata !372, null}
!377 = metadata !{i32 786688, metadata !373, metadata !"i", metadata !7, i32 14, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!378 = metadata !{i32 18, i32 1, metadata !373, null}
