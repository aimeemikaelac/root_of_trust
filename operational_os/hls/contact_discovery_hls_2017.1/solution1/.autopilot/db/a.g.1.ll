; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.1" = type { i8 }
%"class.hls::stream.0.2" = type { i1 }

@current_database_item = internal unnamed_addr global [64 x i8] zeroinitializer, align 16 ; [#uses=2 type=[64 x i8]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=8 type=i32*]
@contacts = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16 ; [#uses=3 type=[8192 x i8]*]
@contact_discovery.str = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=58]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, %"class.hls::stream.1"* %contacts_in, %"class.hls::stream.1"* %database_in, %"class.hls::stream.0.2"* %matched_out, i32* %matched_finished, i32* %error_out, i32* %contacts_size_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery.str) nounwind
  %tmp.15 = alloca i1, align 1                    ; [#uses=2 type=i1*]
  %tmp.6 = alloca i8, align 1                     ; [#uses=2 type=i8*]
  %tmp.10 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp.5 = alloca i8, align 1                     ; [#uses=1 type=i8*]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !176), !dbg !177 ; [debug line = 30:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %contacts_in}, i64 0, metadata !178), !dbg !179 ; [debug line = 31:30] [debug variable = contacts_in]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %database_in}, i64 0, metadata !180), !dbg !181 ; [debug line = 32:30] [debug variable = database_in]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %matched_out}, i64 0, metadata !182), !dbg !183 ; [debug line = 33:21] [debug variable = matched_out]
  call void @llvm.dbg.value(metadata !{i32* %matched_finished}, i64 0, metadata !184), !dbg !185 ; [debug line = 34:7] [debug variable = matched_finished]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !186), !dbg !187 ; [debug line = 35:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !188), !dbg !189 ; [debug line = 36:7] [debug variable = contacts_size_out]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !190 ; [debug line = 38:1]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream.1"* %database_in, i32 1, i32 512, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !192 ; [debug line = 39:1]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream.1"* %contacts_in, i32 1, i32 512, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !193 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !194 ; [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !195 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !196 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !197 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !198 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !199 ; [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !200 ; [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !201 ; [debug line = 48:1]
  switch i32 %operation, label %17 [
    i32 0, label %1
    i32 1, label %8
    i32 2, label %14
  ], !dbg !202                                    ; [debug line = 54:2]

; <label>:1                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !203 ; [debug line = 57:4]
  store i32 0, i32* %error_out, align 4, !dbg !205 ; [debug line = 58:4]
  %contacts_size.load.1 = load i32* @contacts_size, align 4, !dbg !206 ; [#uses=1 type=i32] [debug line = 59:4]
  store i32 %contacts_size.load.1, i32* %contacts_size_out, align 4, !dbg !206 ; [debug line = 59:4]
  %contacts_in.addr = getelementptr inbounds %"class.hls::stream.1"* %contacts_in, i64 0, i32 0, !dbg !207 ; [#uses=3 type=i8*] [debug line = 113:20@60:11]
  br label %2, !dbg !210                          ; [debug line = 60:4]

; <label>:2                                       ; preds = %7, %1
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %contacts_in}, i64 0, metadata !211), !dbg !213 ; [debug line = 112:48@60:11] [debug variable = this]
  %tmp = call i1 @_ssdm_op_IfCanRead.Stream.i8P(i8* %contacts_in.addr) nounwind, !dbg !207 ; [#uses=1 type=i1] [debug line = 113:20@60:11]
  call void @llvm.dbg.value(metadata !{i1 %tmp}, i64 0, metadata !214), !dbg !207 ; [debug line = 113:20@60:11] [debug variable = tmp]
  br i1 %tmp, label %3, label %.loopexit.loopexit17, !dbg !209 ; [debug line = 60:11]

; <label>:3                                       ; preds = %2
  %contacts_size.load.3 = load i32* @contacts_size, align 4, !dbg !215 ; [#uses=1 type=i32] [debug line = 61:5]
  %tmp.2 = icmp sgt i32 %contacts_size.load.3, 127, !dbg !215 ; [#uses=1 type=i1] [debug line = 61:5]
  br i1 %tmp.2, label %4, label %.preheader11.preheader, !dbg !215 ; [debug line = 61:5]

.preheader11.preheader:                           ; preds = %3
  br label %.preheader11, !dbg !217               ; [debug line = 65:10]

; <label>:4                                       ; preds = %3
  store i32 1, i32* %error_out, align 4, !dbg !220 ; [debug line = 62:6]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %contacts_in}, i64 0, metadata !222), !dbg !224 ; [debug line = 129:56@63:6] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.5}, metadata !226) nounwind, !dbg !228 ; [debug line = 130:22@63:6] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %contacts_in.addr, i8* %tmp.5) nounwind, !dbg !229 ; [debug line = 131:9@63:6]
  call void @llvm.dbg.value(metadata !{i8* %tmp.5}, i64 0, metadata !226), !dbg !230 ; [debug line = 132:9@63:6] [debug variable = tmp]
  br label %7, !dbg !231                          ; [debug line = 64:5]

.preheader11:                                     ; preds = %5, %.preheader11.preheader
  %i1 = phi i32 [ %i.5, %5 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i32]
  %exitcond9 = icmp eq i32 %i1, 64, !dbg !217     ; [#uses=1 type=i1] [debug line = 65:10]
  br i1 %exitcond9, label %6, label %5, !dbg !217 ; [debug line = 65:10]

; <label>:5                                       ; preds = %.preheader11
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %contacts_in}, i64 0, metadata !222), !dbg !232 ; [debug line = 129:56@66:40] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.10}, metadata !226) nounwind, !dbg !235 ; [debug line = 130:22@66:40] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %contacts_in.addr, i8* %tmp.10) nounwind, !dbg !236 ; [debug line = 131:9@66:40]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.10}, i64 0, metadata !226), !dbg !237 ; [debug line = 132:9@66:40] [debug variable = tmp]
  %tmp.10.load = load i8* %tmp.10, align 1, !dbg !237 ; [#uses=1 type=i8] [debug line = 132:9@66:40]
  %contacts_size.load.5 = load i32* @contacts_size, align 4, !dbg !233 ; [#uses=1 type=i32] [debug line = 66:40]
  %tmp.11 = mul i32 %contacts_size.load.5, 64, !dbg !233 ; [#uses=1 type=i32] [debug line = 66:40]
  %tmp.12 = add nsw i32 %tmp.11, %i1, !dbg !233   ; [#uses=1 type=i32] [debug line = 66:40]
  %tmp.13 = sext i32 %tmp.12 to i64, !dbg !233    ; [#uses=1 type=i64] [debug line = 66:40]
  %contacts.addr.1 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.13, !dbg !233 ; [#uses=1 type=i8*] [debug line = 66:40]
  store i8 %tmp.10.load, i8* %contacts.addr.1, align 1, !dbg !233 ; [debug line = 66:40]
  %i.5 = add nsw i32 %i1, 1, !dbg !238            ; [#uses=1 type=i32] [debug line = 65:21]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !239), !dbg !238 ; [debug line = 65:21] [debug variable = i]
  br label %.preheader11, !dbg !238               ; [debug line = 65:21]

; <label>:6                                       ; preds = %.preheader11
  %contacts_size.load.4 = load i32* @contacts_size, align 4, !dbg !240 ; [#uses=1 type=i32] [debug line = 68:6]
  %tmp.9 = add nsw i32 %contacts_size.load.4, 1, !dbg !240 ; [#uses=2 type=i32] [debug line = 68:6]
  store i32 %tmp.9, i32* @contacts_size, align 4, !dbg !240 ; [debug line = 68:6]
  store i32 %tmp.9, i32* %contacts_size_out, align 4, !dbg !241 ; [debug line = 69:6]
  store i32 0, i32* %error_out, align 4, !dbg !242 ; [debug line = 70:6]
  br label %7

; <label>:7                                       ; preds = %6, %4
  br label %2, !dbg !243                          ; [debug line = 72:4]

; <label>:8                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !244 ; [debug line = 76:4]
  store i32 0, i32* %error_out, align 4, !dbg !245 ; [debug line = 77:4]
  %contacts_size.load.2 = load i32* @contacts_size, align 4, !dbg !246 ; [#uses=1 type=i32] [debug line = 78:4]
  store i32 %contacts_size.load.2, i32* %contacts_size_out, align 4, !dbg !246 ; [debug line = 78:4]
  %database_in.addr = getelementptr inbounds %"class.hls::stream.1"* %database_in, i64 0, i32 0, !dbg !247 ; [#uses=2 type=i8*] [debug line = 113:20@79:11]
  %matched_out.addr = getelementptr inbounds %"class.hls::stream.0.2"* %matched_out, i64 0, i32 0, !dbg !249 ; [#uses=1 type=i1*] [debug line = 146:9@88:5]
  br label %9, !dbg !253                          ; [debug line = 79:4]

; <label>:9                                       ; preds = %12, %8
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %database_in}, i64 0, metadata !211), !dbg !254 ; [debug line = 112:48@79:11] [debug variable = this]
  %tmp.1 = call i1 @_ssdm_op_IfCanRead.Stream.i8P(i8* %database_in.addr) nounwind, !dbg !247 ; [#uses=1 type=i1] [debug line = 113:20@79:11]
  call void @llvm.dbg.value(metadata !{i1 %tmp.1}, i64 0, metadata !214), !dbg !247 ; [debug line = 113:20@79:11] [debug variable = tmp]
  br i1 %tmp.1, label %.preheader10.preheader, label %13, !dbg !248 ; [debug line = 79:11]

.preheader10.preheader:                           ; preds = %9
  br label %.preheader10, !dbg !255               ; [debug line = 81:9]

.preheader10:                                     ; preds = %10, %.preheader10.preheader
  %i.1 = phi i32 [ %i.4, %10 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i32]
  %exitcond8 = icmp eq i32 %i.1, 64, !dbg !255    ; [#uses=1 type=i1] [debug line = 81:9]
  br i1 %exitcond8, label %.preheader.preheader, label %10, !dbg !255 ; [debug line = 81:9]

.preheader.preheader:                             ; preds = %.preheader10
  br label %.preheader, !dbg !257                 ; [debug line = 84:9]

; <label>:10                                      ; preds = %.preheader10
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %database_in}, i64 0, metadata !222), !dbg !259 ; [debug line = 129:56@82:33] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.6}, metadata !226) nounwind, !dbg !262 ; [debug line = 130:22@82:33] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %database_in.addr, i8* %tmp.6) nounwind, !dbg !263 ; [debug line = 131:9@82:33]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !226), !dbg !264 ; [debug line = 132:9@82:33] [debug variable = tmp]
  %tmp.6.load = load i8* %tmp.6, align 1, !dbg !264 ; [#uses=1 type=i8] [debug line = 132:9@82:33]
  %tmp.7 = sext i32 %i.1 to i64, !dbg !260        ; [#uses=1 type=i64] [debug line = 82:33]
  %current_database_item.addr = getelementptr inbounds [64 x i8]* @current_database_item, i64 0, i64 %tmp.7, !dbg !260 ; [#uses=1 type=i8*] [debug line = 82:33]
  store i8 %tmp.6.load, i8* %current_database_item.addr, align 1, !dbg !260 ; [debug line = 82:33]
  %i.4 = add nsw i32 %i.1, 1, !dbg !265           ; [#uses=1 type=i32] [debug line = 81:20]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !239), !dbg !265 ; [debug line = 81:20] [debug variable = i]
  br label %.preheader10, !dbg !265               ; [debug line = 81:20]

.preheader:                                       ; preds = %11, %.preheader.preheader
  %tmp.16 = phi i1 [ %found, %11 ], [ false, %.preheader.preheader ] ; [#uses=2 type=i1]
  %i.2 = phi i32 [ %i.6, %11 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond7 = icmp eq i32 %i.2, 128, !dbg !257   ; [#uses=1 type=i1] [debug line = 84:9]
  br i1 %exitcond7, label %12, label %11, !dbg !257 ; [debug line = 84:9]

; <label>:11                                      ; preds = %.preheader
  %comp = call fastcc zeroext i1 @compare(i32 %i.2), !dbg !266 ; [#uses=1 type=i1] [debug line = 85:18]
  call void @llvm.dbg.value(metadata !{i1 %comp}, i64 0, metadata !268), !dbg !266 ; [debug line = 85:18] [debug variable = comp]
  %found = or i1 %tmp.16, %comp, !dbg !269        ; [#uses=1 type=i1] [debug line = 86:6]
  call void @llvm.dbg.value(metadata !{i1 %found}, i64 0, metadata !270), !dbg !269 ; [debug line = 86:6] [debug variable = found]
  %i.6 = add nsw i32 %i.2, 1, !dbg !271           ; [#uses=1 type=i32] [debug line = 84:21]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !239), !dbg !271 ; [debug line = 84:21] [debug variable = i]
  br label %.preheader, !dbg !271                 ; [debug line = 84:21]

; <label>:12                                      ; preds = %.preheader
  %.06.0.lcssa = phi i1 [ %tmp.16, %.preheader ]  ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %matched_out}, i64 0, metadata !272), !dbg !274 ; [debug line = 144:48@88:5] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i1* %tmp.15}, metadata !275) nounwind, !dbg !276 ; [debug line = 145:22@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.16}, i64 0, metadata !275), !dbg !277 ; [debug line = 145:31@88:5] [debug variable = tmp]
  store i1 %.06.0.lcssa, i1* %tmp.15, align 1, !dbg !277 ; [debug line = 145:31@88:5]
  call void @_ssdm_op_IfWrite.Stream.i1P.i1P(i1* %matched_out.addr, i1* %tmp.15) nounwind, !dbg !249 ; [debug line = 146:9@88:5]
  br label %9, !dbg !278                          ; [debug line = 89:4]

; <label>:13                                      ; preds = %9
  store i32 1, i32* %matched_finished, align 4, !dbg !279 ; [debug line = 90:4]
  br label %.loopexit, !dbg !280                  ; [debug line = 91:4]

; <label>:14                                      ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !281 ; [debug line = 94:4]
  store i32 0, i32* %error_out, align 4, !dbg !282 ; [debug line = 95:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !283 ; [debug line = 97:4]
  store i32 0, i32* %contacts_size_out, align 4, !dbg !284 ; [debug line = 99:4]
  br label %15, !dbg !285                         ; [debug line = 100:8]

; <label>:15                                      ; preds = %16, %14
  %i.3 = phi i32 [ 0, %14 ], [ %i, %16 ]          ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i.3, 128, !dbg !285    ; [#uses=1 type=i1] [debug line = 100:8]
  br i1 %exitcond, label %.loopexit.loopexit, label %16, !dbg !285 ; [debug line = 100:8]

; <label>:16                                      ; preds = %15
  %tmp.3 = sext i32 %i.3 to i64, !dbg !287        ; [#uses=1 type=i64] [debug line = 101:5]
  %contacts.addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.3, !dbg !287 ; [#uses=1 type=i8*] [debug line = 101:5]
  store i8 0, i8* %contacts.addr, align 1, !dbg !287 ; [debug line = 101:5]
  %i = add nsw i32 %i.3, 1, !dbg !289             ; [#uses=1 type=i32] [debug line = 100:20]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !239), !dbg !289 ; [debug line = 100:20] [debug variable = i]
  br label %15, !dbg !289                         ; [debug line = 100:20]

; <label>:17                                      ; preds = %0
  %contacts_size.load = load i32* @contacts_size, align 4, !dbg !290 ; [#uses=1 type=i32] [debug line = 106:4]
  store i32 %contacts_size.load, i32* %contacts_size_out, align 4, !dbg !290 ; [debug line = 106:4]
  store i32 0, i32* %matched_finished, align 4, !dbg !291 ; [debug line = 107:4]
  store i32 3, i32* %error_out, align 4, !dbg !292 ; [debug line = 108:4]
  br label %.loopexit, !dbg !293                  ; [debug line = 109:4]

.loopexit.loopexit:                               ; preds = %15
  br label %.loopexit

.loopexit.loopexit17:                             ; preds = %2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit17, %.loopexit.loopexit, %17, %13
  ret void, !dbg !294                             ; [debug line = 111:1]
}

; [#uses=1]
define internal fastcc zeroext i1 @compare(i32 %contact_index) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %contact_index}, i64 0, metadata !295), !dbg !296 ; [debug line = 19:18] [debug variable = contact_index]
  %tmp = mul i32 %contact_index, 64, !dbg !297    ; [#uses=1 type=i32] [debug line = 24:3]
  br label %1, !dbg !301                          ; [debug line = 23:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.7, %2 ]            ; [#uses=4 type=i32]
  %found = phi i1 [ true, %0 ], [ %found.1, %2 ]  ; [#uses=2 type=i1]
  %exitcond = icmp eq i32 %i, 64, !dbg !301       ; [#uses=1 type=i1] [debug line = 23:6]
  br i1 %exitcond, label %3, label %2, !dbg !301  ; [debug line = 23:6]

; <label>:2                                       ; preds = %1
  %tmp.19 = sext i32 %i to i64, !dbg !297         ; [#uses=1 type=i64] [debug line = 24:3]
  %current_database_item.addr = getelementptr inbounds [64 x i8]* @current_database_item, i64 0, i64 %tmp.19, !dbg !297 ; [#uses=1 type=i8*] [debug line = 24:3]
  %current_database_item.load = load i8* %current_database_item.addr, align 1, !dbg !297 ; [#uses=2 type=i8] [debug line = 24:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %current_database_item.load) nounwind
  %tmp.20 = add nsw i32 %i, %tmp, !dbg !297       ; [#uses=1 type=i32] [debug line = 24:3]
  %tmp.21 = sext i32 %tmp.20 to i64, !dbg !297    ; [#uses=1 type=i64] [debug line = 24:3]
  %contacts.addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.21, !dbg !297 ; [#uses=1 type=i8*] [debug line = 24:3]
  %contacts.load = load i8* %contacts.addr, align 1, !dbg !297 ; [#uses=2 type=i8] [debug line = 24:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %contacts.load) nounwind
  %tmp.22 = icmp eq i8 %current_database_item.load, %contacts.load, !dbg !297 ; [#uses=1 type=i1] [debug line = 24:3]
  %found.1 = and i1 %found, %tmp.22, !dbg !297    ; [#uses=1 type=i1] [debug line = 24:3]
  call void @llvm.dbg.value(metadata !{i1 %found.1}, i64 0, metadata !302), !dbg !297 ; [debug line = 24:3] [debug variable = found]
  %i.7 = add nsw i32 %i, 1, !dbg !303             ; [#uses=1 type=i32] [debug line = 23:17]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !304), !dbg !303 ; [debug line = 23:17] [debug variable = i]
  br label %1, !dbg !303                          ; [debug line = 23:17]

; <label>:3                                       ; preds = %1
  %found.0.lcssa = phi i1 [ %found, %1 ]          ; [#uses=1 type=i1]
  ret i1 %found.0.lcssa, !dbg !305                ; [debug line = 26:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.i1P.i1P(i1*, i1*)

; [#uses=3]
declare void @_ssdm_op_IfRead.Stream.i8P.i8P(i8*, i8*)

; [#uses=2]
declare i1 @_ssdm_op_IfCanRead.Stream.i8P(i8*)

; [#uses=2]
declare void @_ssdm_SpecStream(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!148, !155, !161, !167, !170, !170}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !129} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !18, metadata !126, metadata !127, metadata !128}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !6, i32 12, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 12} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"contact_discovery/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"compare", metadata !"compare", metadata !"_Z7comparei", metadata !6, i32 19, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i32)* @compare, null, null, metadata !12, i32 19} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{metadata !17, metadata !11}
!17 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiRN3hls6streamIhEES2_RNS0_IbEEPiS5_S5_", metadata !6, i32 29, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, %"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.0.2"*, i32*, i32*, i32*)* @contact_discovery, null, null, metadata !12, i32 37} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !11, metadata !21, metadata !21, metadata !76, metadata !125, metadata !125, metadata !125}
!21 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_reference_type ]
!22 = metadata !{i32 786434, metadata !23, metadata !"stream<unsigned char>", metadata !24, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !25, i32 0, null, metadata !74} ; [ DW_TAG_class_type ]
!23 = metadata !{i32 786489, null, metadata !"hls", metadata !24, i32 69} ; [ DW_TAG_namespace ]
!24 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!25 = metadata !{metadata !26, metadata !27, metadata !31, metadata !37, metadata !42, metadata !45, metadata !49, metadata !54, metadata !58, metadata !59, metadata !60, metadata !63, metadata !66, metadata !67, metadata !70}
!26 = metadata !{i32 786445, metadata !22, metadata !"V", metadata !24, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ]
!27 = metadata !{i32 786478, i32 0, metadata !22, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 83, metadata !28, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 83} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !30}
!30 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !22} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 786478, i32 0, metadata !22, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 86, metadata !32, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 86} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !30, metadata !34}
!34 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!35 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ]
!36 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!37 = metadata !{i32 786478, i32 0, metadata !22, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 91, metadata !38, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 91} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !30, metadata !40}
!40 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_reference_type ]
!41 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ]
!42 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !24, i32 94, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 94} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{metadata !21, metadata !30, metadata !40}
!45 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !24, i32 101, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 101} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !30, metadata !48}
!48 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!49 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !24, i32 105, metadata !50, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 105} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !30, metadata !52}
!52 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_reference_type ]
!53 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!54 = metadata !{i32 786478, i32 0, metadata !22, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !24, i32 112, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 112} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{metadata !17, metadata !57}
!57 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !41} ; [ DW_TAG_pointer_type ]
!58 = metadata !{i32 786478, i32 0, metadata !22, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !24, i32 117, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 117} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !24, i32 123, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 123} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !24, i32 129, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !10, metadata !30}
!63 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !24, i32 136, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 136} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{metadata !17, metadata !30, metadata !48}
!66 = metadata !{i32 786478, i32 0, metadata !22, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !24, i32 144, metadata !50, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 144} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786478, i32 0, metadata !22, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !24, i32 150, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 150} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !17, metadata !30, metadata !52}
!70 = metadata !{i32 786478, i32 0, metadata !22, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !24, i32 157, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 157} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !73, metadata !30}
!73 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !10, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!76 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_reference_type ]
!77 = metadata !{i32 786434, metadata !23, metadata !"stream<bool>", metadata !24, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !78, i32 0, null, metadata !123} ; [ DW_TAG_class_type ]
!78 = metadata !{metadata !79, metadata !80, metadata !84, metadata !87, metadata !92, metadata !95, metadata !99, metadata !104, metadata !108, metadata !109, metadata !110, metadata !113, metadata !116, metadata !117, metadata !120}
!79 = metadata !{i32 786445, metadata !77, metadata !"V", metadata !24, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ]
!80 = metadata !{i32 786478, i32 0, metadata !77, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 83, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 83} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !83}
!83 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !77} ; [ DW_TAG_pointer_type ]
!84 = metadata !{i32 786478, i32 0, metadata !77, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 86, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 86} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !83, metadata !34}
!87 = metadata !{i32 786478, i32 0, metadata !77, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 91, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 91} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{null, metadata !83, metadata !90}
!90 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_reference_type ]
!91 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ]
!92 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIbEaSERKS1_", metadata !24, i32 94, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 94} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{metadata !76, metadata !83, metadata !90}
!95 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIbErsERb", metadata !24, i32 101, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 101} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !83, metadata !98}
!98 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_reference_type ]
!99 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIbElsERKb", metadata !24, i32 105, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 105} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !83, metadata !102}
!102 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_reference_type ]
!103 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ]
!104 = metadata !{i32 786478, i32 0, metadata !77, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIbE5emptyEv", metadata !24, i32 112, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 112} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !17, metadata !107}
!107 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !91} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 786478, i32 0, metadata !77, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIbE4fullEv", metadata !24, i32 117, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 117} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786478, i32 0, metadata !77, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readERb", metadata !24, i32 123, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 123} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786478, i32 0, metadata !77, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readEv", metadata !24, i32 129, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !17, metadata !83}
!113 = metadata !{i32 786478, i32 0, metadata !77, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIbE7read_nbERb", metadata !24, i32 136, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 136} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !17, metadata !83, metadata !98}
!116 = metadata !{i32 786478, i32 0, metadata !77, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !24, i32 144, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 144} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786478, i32 0, metadata !77, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIbE8write_nbERKb", metadata !24, i32 150, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 150} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{metadata !17, metadata !83, metadata !102}
!120 = metadata !{i32 786478, i32 0, metadata !77, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIbE4sizeEv", metadata !24, i32 157, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 157} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{metadata !73, metadata !83}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !17, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!125 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!126 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !24, i32 144, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !116, metadata !12, i32 144} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !24, i32 129, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !60, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786478, i32 0, metadata !23, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !24, i32 112, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !54, metadata !12, i32 112} ; [ DW_TAG_subprogram ]
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !131, metadata !134, metadata !135, metadata !136, metadata !138, metadata !139, metadata !140, metadata !144}
!131 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !132, i32 315, metadata !133, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!132 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!133 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !132, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!134 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !132, i32 316, metadata !133, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!135 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !132, i32 317, metadata !133, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!136 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !137, i32 26, metadata !11, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!137 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!138 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !137, i32 30, metadata !11, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!139 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !6, i32 9, metadata !11, i32 1, i32 1, i32* @contacts_size} ; [ DW_TAG_variable ]
!140 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !6, i32 7, metadata !141, i32 1, i32 1, [8192 x i8]* @contacts} ; [ DW_TAG_variable ]
!141 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !10, metadata !142, i32 0, i32 0} ; [ DW_TAG_array_type ]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786465, i64 0, i64 8191}    ; [ DW_TAG_subrange_type ]
!144 = metadata !{i32 786484, i32 0, null, metadata !"current_database_item", metadata !"current_database_item", metadata !"_ZL21current_database_item", metadata !6, i32 8, metadata !145, i32 1, i32 1, [64 x i8]* @current_database_item} ; [ DW_TAG_variable ]
!145 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !10, metadata !146, i32 0, i32 0} ; [ DW_TAG_array_type ]
!146 = metadata !{metadata !147}
!147 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!148 = metadata !{null, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154}
!149 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!150 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!152 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!153 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!154 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!155 = metadata !{i1 (i32)* @compare, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !154}
!156 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!157 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!159 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!160 = metadata !{metadata !"kernel_arg_name", metadata !"contact_index"}
!161 = metadata !{void (i32, %"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.0.2"*, i32*, i32*, i32*)* @contact_discovery, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !154}
!162 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1}
!163 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &", metadata !"hls::stream<_Bool> &", metadata !"int*", metadata !"int*", metadata !"int*"}
!165 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!166 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contacts_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"contacts_size_out"}
!167 = metadata !{null, metadata !156, metadata !157, metadata !168, metadata !159, metadata !169, metadata !154}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"const _Bool &"}
!169 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!170 = metadata !{null, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !154}
!171 = metadata !{metadata !"kernel_arg_addr_space"}
!172 = metadata !{metadata !"kernel_arg_access_qual"}
!173 = metadata !{metadata !"kernel_arg_type"}
!174 = metadata !{metadata !"kernel_arg_type_qual"}
!175 = metadata !{metadata !"kernel_arg_name"}
!176 = metadata !{i32 786689, metadata !18, metadata !"operation", metadata !6, i32 16777246, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 30, i32 6, metadata !18, null}
!178 = metadata !{i32 786689, metadata !18, metadata !"contacts_in", metadata !6, i32 33554463, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 31, i32 30, metadata !18, null}
!180 = metadata !{i32 786689, metadata !18, metadata !"database_in", metadata !6, i32 50331680, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 32, i32 30, metadata !18, null}
!182 = metadata !{i32 786689, metadata !18, metadata !"matched_out", metadata !6, i32 67108897, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!183 = metadata !{i32 33, i32 21, metadata !18, null}
!184 = metadata !{i32 786689, metadata !18, metadata !"matched_finished", metadata !6, i32 83886114, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 34, i32 7, metadata !18, null}
!186 = metadata !{i32 786689, metadata !18, metadata !"error_out", metadata !6, i32 100663331, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 35, i32 7, metadata !18, null}
!188 = metadata !{i32 786689, metadata !18, metadata !"contacts_size_out", metadata !6, i32 117440548, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 36, i32 7, metadata !18, null}
!190 = metadata !{i32 38, i32 1, metadata !191, null}
!191 = metadata !{i32 786443, metadata !18, i32 37, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 39, i32 1, metadata !191, null}
!193 = metadata !{i32 40, i32 1, metadata !191, null}
!194 = metadata !{i32 41, i32 1, metadata !191, null}
!195 = metadata !{i32 42, i32 1, metadata !191, null}
!196 = metadata !{i32 43, i32 1, metadata !191, null}
!197 = metadata !{i32 44, i32 1, metadata !191, null}
!198 = metadata !{i32 45, i32 1, metadata !191, null}
!199 = metadata !{i32 46, i32 1, metadata !191, null}
!200 = metadata !{i32 47, i32 1, metadata !191, null}
!201 = metadata !{i32 48, i32 1, metadata !191, null}
!202 = metadata !{i32 54, i32 2, metadata !191, null}
!203 = metadata !{i32 57, i32 4, metadata !204, null}
!204 = metadata !{i32 786443, metadata !191, i32 54, i32 19, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 58, i32 4, metadata !204, null}
!206 = metadata !{i32 59, i32 4, metadata !204, null}
!207 = metadata !{i32 113, i32 20, metadata !208, metadata !209}
!208 = metadata !{i32 786443, metadata !128, i32 112, i32 62, metadata !24, i32 22} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 60, i32 11, metadata !204, null}
!210 = metadata !{i32 60, i32 4, metadata !204, null}
!211 = metadata !{i32 786689, metadata !128, metadata !"this", metadata !24, i32 16777328, metadata !212, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!213 = metadata !{i32 112, i32 48, metadata !128, metadata !209}
!214 = metadata !{i32 786688, metadata !208, metadata !"tmp", metadata !24, i32 113, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 61, i32 5, metadata !216, null}
!216 = metadata !{i32 786443, metadata !204, i32 60, i32 31, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 65, i32 10, metadata !218, null}
!218 = metadata !{i32 786443, metadata !219, i32 65, i32 6, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 786443, metadata !216, i32 64, i32 12, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 62, i32 6, metadata !221, null}
!221 = metadata !{i32 786443, metadata !216, i32 61, i32 29, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 786689, metadata !127, metadata !"this", metadata !24, i32 16777345, metadata !223, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!224 = metadata !{i32 129, i32 56, metadata !127, metadata !225}
!225 = metadata !{i32 63, i32 6, metadata !221, null}
!226 = metadata !{i32 786688, metadata !227, metadata !"tmp", metadata !24, i32 130, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 786443, metadata !127, i32 129, i32 63, metadata !24, i32 21} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 130, i32 22, metadata !227, metadata !225}
!229 = metadata !{i32 131, i32 9, metadata !227, metadata !225}
!230 = metadata !{i32 132, i32 9, metadata !227, metadata !225}
!231 = metadata !{i32 64, i32 5, metadata !221, null}
!232 = metadata !{i32 129, i32 56, metadata !127, metadata !233}
!233 = metadata !{i32 66, i32 40, metadata !234, null}
!234 = metadata !{i32 786443, metadata !218, i32 65, i32 25, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 130, i32 22, metadata !227, metadata !233}
!236 = metadata !{i32 131, i32 9, metadata !227, metadata !233}
!237 = metadata !{i32 132, i32 9, metadata !227, metadata !233}
!238 = metadata !{i32 65, i32 21, metadata !218, null}
!239 = metadata !{i32 786688, metadata !191, metadata !"i", metadata !6, i32 49, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 68, i32 6, metadata !219, null}
!241 = metadata !{i32 69, i32 6, metadata !219, null}
!242 = metadata !{i32 70, i32 6, metadata !219, null}
!243 = metadata !{i32 72, i32 4, metadata !216, null}
!244 = metadata !{i32 76, i32 4, metadata !204, null}
!245 = metadata !{i32 77, i32 4, metadata !204, null}
!246 = metadata !{i32 78, i32 4, metadata !204, null}
!247 = metadata !{i32 113, i32 20, metadata !208, metadata !248}
!248 = metadata !{i32 79, i32 11, metadata !204, null}
!249 = metadata !{i32 146, i32 9, metadata !250, metadata !251}
!250 = metadata !{i32 786443, metadata !126, i32 144, i32 79, metadata !24, i32 20} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 88, i32 5, metadata !252, null}
!252 = metadata !{i32 786443, metadata !204, i32 79, i32 31, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 79, i32 4, metadata !204, null}
!254 = metadata !{i32 112, i32 48, metadata !128, metadata !248}
!255 = metadata !{i32 81, i32 9, metadata !256, null}
!256 = metadata !{i32 786443, metadata !252, i32 81, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!257 = metadata !{i32 84, i32 9, metadata !258, null}
!258 = metadata !{i32 786443, metadata !252, i32 84, i32 5, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 129, i32 56, metadata !127, metadata !260}
!260 = metadata !{i32 82, i32 33, metadata !261, null}
!261 = metadata !{i32 786443, metadata !256, i32 81, i32 24, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 130, i32 22, metadata !227, metadata !260}
!263 = metadata !{i32 131, i32 9, metadata !227, metadata !260}
!264 = metadata !{i32 132, i32 9, metadata !227, metadata !260}
!265 = metadata !{i32 81, i32 20, metadata !256, null}
!266 = metadata !{i32 85, i32 18, metadata !267, null}
!267 = metadata !{i32 786443, metadata !258, i32 84, i32 25, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!268 = metadata !{i32 786688, metadata !267, metadata !"comp", metadata !6, i32 85, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!269 = metadata !{i32 86, i32 6, metadata !267, null}
!270 = metadata !{i32 786688, metadata !191, metadata !"found", metadata !6, i32 52, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 84, i32 21, metadata !258, null}
!272 = metadata !{i32 786689, metadata !126, metadata !"this", metadata !24, i32 16777360, metadata !273, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ]
!274 = metadata !{i32 144, i32 48, metadata !126, metadata !251}
!275 = metadata !{i32 786688, metadata !250, metadata !"tmp", metadata !24, i32 145, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 145, i32 22, metadata !250, metadata !251}
!277 = metadata !{i32 145, i32 31, metadata !250, metadata !251}
!278 = metadata !{i32 89, i32 4, metadata !252, null}
!279 = metadata !{i32 90, i32 4, metadata !204, null}
!280 = metadata !{i32 91, i32 4, metadata !204, null}
!281 = metadata !{i32 94, i32 4, metadata !204, null}
!282 = metadata !{i32 95, i32 4, metadata !204, null}
!283 = metadata !{i32 97, i32 4, metadata !204, null}
!284 = metadata !{i32 99, i32 4, metadata !204, null}
!285 = metadata !{i32 100, i32 8, metadata !286, null}
!286 = metadata !{i32 786443, metadata !204, i32 100, i32 4, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 101, i32 5, metadata !288, null}
!288 = metadata !{i32 786443, metadata !286, i32 100, i32 24, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!289 = metadata !{i32 100, i32 20, metadata !286, null}
!290 = metadata !{i32 106, i32 4, metadata !204, null}
!291 = metadata !{i32 107, i32 4, metadata !204, null}
!292 = metadata !{i32 108, i32 4, metadata !204, null}
!293 = metadata !{i32 109, i32 4, metadata !204, null}
!294 = metadata !{i32 111, i32 1, metadata !191, null}
!295 = metadata !{i32 786689, metadata !14, metadata !"contact_index", metadata !6, i32 16777235, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!296 = metadata !{i32 19, i32 18, metadata !14, null}
!297 = metadata !{i32 24, i32 3, metadata !298, null}
!298 = metadata !{i32 786443, metadata !299, i32 23, i32 21, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!299 = metadata !{i32 786443, metadata !300, i32 23, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 786443, metadata !14, i32 19, i32 32, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!301 = metadata !{i32 23, i32 6, metadata !299, null}
!302 = metadata !{i32 786688, metadata !300, metadata !"found", metadata !6, i32 21, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 23, i32 17, metadata !299, null}
!304 = metadata !{i32 786688, metadata !300, metadata !"i", metadata !6, i32 20, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 26, i32 2, metadata !300, null}
