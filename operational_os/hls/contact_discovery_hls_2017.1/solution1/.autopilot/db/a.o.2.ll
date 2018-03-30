; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_database_item = internal unnamed_addr global [64 x i8] zeroinitializer, align 16 ; [#uses=2 type=[64 x i8]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=8 type=i32*]
@contacts = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16 ; [#uses=3 type=[8192 x i8]*]
@contact_discovery.str = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=3 type=[8 x i8]*]
@.str9 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str8 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str7 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str6 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str5 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]
@.str22 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str21 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str20 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=3 type=[8 x i8]*]
@.str19 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str18 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str17 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str16 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str12 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=54 type=[1 x i8]*]
@.str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=31]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, i8* %contacts_in.V, i8* %database_in.V, i1* %matched_out.V, i32* %matched_finished, i32* %error_out, i32* %contacts_size_out) {
  call void (...)* @_ssdm_op_SpecInterface(i1* %matched_out.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str17, i32 0, i32 0, [1 x i8]* @.str18, [1 x i8]* @.str19, [1 x i8]* @.str20, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str21, [1 x i8]* @.str22)
  call void (...)* @_ssdm_op_SpecInterface(i8* %database_in.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str11, i32 0, i32 0, [1 x i8]* @.str12, [1 x i8]* @.str13, [1 x i8]* @.str14, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str15, [1 x i8]* @.str16)
  call void (...)* @_ssdm_op_SpecInterface(i8* %contacts_in.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str5, i32 0, i32 0, [1 x i8]* @.str6, [1 x i8]* @.str7, [1 x i8]* @.str8, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str9, [1 x i8]* @.str10)
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %contacts_in.V), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %database_in.V), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %matched_out.V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %matched_finished), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !79
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery.str) nounwind
  %tmp.12 = alloca i1, align 1                    ; [#uses=2 type=i1*]
  %tmp.5 = alloca i8, align 1                     ; [#uses=2 type=i8*]
  %tmp.6 = alloca i8, align 1                     ; [#uses=2 type=i8*]
  %tmp.4 = alloca i8, align 1                     ; [#uses=1 type=i8*]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !83), !dbg !195 ; [debug line = 30:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i8* %contacts_in.V}, i64 0, metadata !196), !dbg !201 ; [debug line = 31:30] [debug variable = contacts_in.V]
  call void @llvm.dbg.value(metadata !{i8* %database_in.V}, i64 0, metadata !202), !dbg !204 ; [debug line = 32:30] [debug variable = database_in.V]
  call void @llvm.dbg.value(metadata !{i1* %matched_out.V}, i64 0, metadata !205), !dbg !210 ; [debug line = 33:21] [debug variable = matched_out.V]
  call void @llvm.dbg.value(metadata !{i32* %matched_finished}, i64 0, metadata !211), !dbg !212 ; [debug line = 34:7] [debug variable = matched_finished]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !213), !dbg !214 ; [debug line = 35:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !215), !dbg !216 ; [debug line = 36:7] [debug variable = contacts_size_out]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @.str, i32 1, i32 1, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !217 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [8 x i8]* @.str2, i32 1, i32 1, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !219 ; [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @.str2, i32 1, i32 1, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !220 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !221 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @.str2, i32 1, i32 1, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !222 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !223 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !224 ; [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !225 ; [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !226 ; [debug line = 48:1]
  switch i32 %operation, label %24 [
    i32 0, label %1
    i32 1, label %9
    i32 2, label %20
  ], !dbg !227                                    ; [debug line = 54:2]

; <label>:1                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !228 ; [debug line = 57:4]
  store i32 0, i32* %error_out, align 4, !dbg !230 ; [debug line = 58:4]
  %contacts_size.load.1 = load i32* @contacts_size, align 4, !dbg !231 ; [#uses=1 type=i32] [debug line = 59:4]
  store i32 %contacts_size.load.1, i32* %contacts_size_out, align 4, !dbg !231 ; [debug line = 59:4]
  br label %2, !dbg !232                          ; [debug line = 60:4]

; <label>:2                                       ; preds = %8, %1
  call void @llvm.dbg.value(metadata !{i8* %contacts_in.V}, i64 0, metadata !233), !dbg !238 ; [debug line = 112:48@60:11] [debug variable = stream<unsigned char>.V]
  %tmp = call i1 @_ssdm_op_IfCanRead.Stream.i8P(i8* %contacts_in.V) nounwind, !dbg !240 ; [#uses=1 type=i1] [debug line = 113:20@60:11]
  call void @llvm.dbg.value(metadata !{i1 %tmp}, i64 0, metadata !242), !dbg !240 ; [debug line = 113:20@60:11] [debug variable = tmp]
  br i1 %tmp, label %3, label %.loopexit.loopexit8, !dbg !239 ; [debug line = 60:11]

; <label>:3                                       ; preds = %2
  %contacts_size.load.3 = load i32* @contacts_size, align 4, !dbg !243 ; [#uses=1 type=i32] [debug line = 61:5]
  %tmp.2 = icmp sgt i32 %contacts_size.load.3, 127, !dbg !243 ; [#uses=1 type=i1] [debug line = 61:5]
  br i1 %tmp.2, label %4, label %.preheader11.preheader, !dbg !243 ; [debug line = 61:5]

.preheader11.preheader:                           ; preds = %3
  br label %.preheader11, !dbg !245               ; [debug line = 65:10]

; <label>:4                                       ; preds = %3
  store i32 1, i32* %error_out, align 4, !dbg !248 ; [debug line = 62:6]
  call void @llvm.dbg.value(metadata !{i8* %contacts_in.V}, i64 0, metadata !250), !dbg !254 ; [debug line = 129:56@63:6] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.4}, metadata !256) nounwind, !dbg !258 ; [debug line = 130:22@63:6] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %contacts_in.V, i8* %tmp.4) nounwind, !dbg !259 ; [debug line = 131:9@63:6]
  call void @llvm.dbg.value(metadata !{i8* %tmp.4}, i64 0, metadata !256), !dbg !260 ; [debug line = 132:9@63:6] [debug variable = tmp]
  br label %8, !dbg !261                          ; [debug line = 64:5]

.preheader11:                                     ; preds = %6, %.preheader11.preheader
  %i1 = phi i7 [ %i.4, %6 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i7]
  %i1.cast6 = zext i7 %i1 to i32, !dbg !245       ; [#uses=1 type=i32] [debug line = 65:10]
  %exitcond9 = icmp eq i7 %i1, -64, !dbg !245     ; [#uses=1 type=i1] [debug line = 65:10]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  br i1 %exitcond9, label %7, label %6, !dbg !245 ; [debug line = 65:10]

; <label>:6                                       ; preds = %.preheader11
  call void @llvm.dbg.value(metadata !{i8* %contacts_in.V}, i64 0, metadata !250), !dbg !262 ; [debug line = 129:56@66:40] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.6}, metadata !256) nounwind, !dbg !265 ; [debug line = 130:22@66:40] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %contacts_in.V, i8* %tmp.6) nounwind, !dbg !266 ; [debug line = 131:9@66:40]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !256), !dbg !267 ; [debug line = 132:9@66:40] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.6}, i64 0, metadata !256), !dbg !267 ; [debug line = 132:9@66:40] [debug variable = tmp]
  %tmp.6.load = load i8* %tmp.6, align 1, !dbg !267 ; [#uses=1 type=i8] [debug line = 132:9@66:40]
  %contacts_size.load.5 = load i32* @contacts_size, align 4, !dbg !263 ; [#uses=1 type=i32] [debug line = 66:40]
  %tmp. = shl i32 %contacts_size.load.5, 6, !dbg !263 ; [#uses=1 type=i32] [debug line = 66:40]
  %tmp.8 = add nsw i32 %i1.cast6, %tmp., !dbg !263 ; [#uses=1 type=i32] [debug line = 66:40]
  %tmp.10 = sext i32 %tmp.8 to i64, !dbg !263     ; [#uses=1 type=i64] [debug line = 66:40]
  %contacts.addr.1 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.10, !dbg !263 ; [#uses=1 type=i8*] [debug line = 66:40]
  store i8 %tmp.6.load, i8* %contacts.addr.1, align 1, !dbg !263 ; [debug line = 66:40]
  %i.4 = add i7 %i1, 1, !dbg !268                 ; [#uses=1 type=i7] [debug line = 65:21]
  call void @llvm.dbg.value(metadata !{i7 %i.4}, i64 0, metadata !269), !dbg !268 ; [debug line = 65:21] [debug variable = i]
  br label %.preheader11, !dbg !268               ; [debug line = 65:21]

; <label>:7                                       ; preds = %.preheader11
  %contacts_size.load.4 = load i32* @contacts_size, align 4, !dbg !270 ; [#uses=1 type=i32] [debug line = 68:6]
  %tmp.9 = add nsw i32 %contacts_size.load.4, 1, !dbg !270 ; [#uses=2 type=i32] [debug line = 68:6]
  store i32 %tmp.9, i32* @contacts_size, align 4, !dbg !270 ; [debug line = 68:6]
  store i32 %tmp.9, i32* %contacts_size_out, align 4, !dbg !271 ; [debug line = 69:6]
  store i32 0, i32* %error_out, align 4, !dbg !272 ; [debug line = 70:6]
  br label %8

; <label>:8                                       ; preds = %7, %4
  br label %2, !dbg !273                          ; [debug line = 72:4]

; <label>:9                                       ; preds = %0
  store i32 0, i32* %error_out, align 4, !dbg !274 ; [debug line = 77:4]
  %contacts_size.load.2 = load i32* @contacts_size, align 4, !dbg !275 ; [#uses=1 type=i32] [debug line = 78:4]
  store i32 %contacts_size.load.2, i32* %contacts_size_out, align 4, !dbg !275 ; [debug line = 78:4]
  br label %10, !dbg !276                         ; [debug line = 79:4]

; <label>:10                                      ; preds = %18, %9
  call void @llvm.dbg.value(metadata !{i8* %database_in.V}, i64 0, metadata !233), !dbg !277 ; [debug line = 112:48@79:11] [debug variable = stream<unsigned char>.V]
  %tmp.1 = call i1 @_ssdm_op_IfCanRead.Stream.i8P(i8* %database_in.V) nounwind, !dbg !279 ; [#uses=1 type=i1] [debug line = 113:20@79:11]
  call void @llvm.dbg.value(metadata !{i1 %tmp.1}, i64 0, metadata !242), !dbg !279 ; [debug line = 113:20@79:11] [debug variable = tmp]
  br i1 %tmp.1, label %.preheader10.preheader, label %19, !dbg !278 ; [debug line = 79:11]

.preheader10.preheader:                           ; preds = %10
  br label %.preheader10, !dbg !280               ; [debug line = 81:9]

.preheader10:                                     ; preds = %12, %.preheader10.preheader
  %i.1 = phi i7 [ %i.2, %12 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i7]
  %exitcond8 = icmp eq i7 %i.1, -64, !dbg !280    ; [#uses=1 type=i1] [debug line = 81:9]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  br i1 %exitcond8, label %.preheader.preheader, label %12, !dbg !280 ; [debug line = 81:9]

.preheader.preheader:                             ; preds = %.preheader10
  br label %.preheader, !dbg !283                 ; [debug line = 84:9]

; <label>:12                                      ; preds = %.preheader10
  call void @llvm.dbg.value(metadata !{i8* %database_in.V}, i64 0, metadata !250), !dbg !285 ; [debug line = 129:56@82:33] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.5}, metadata !256) nounwind, !dbg !288 ; [debug line = 130:22@82:33] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %database_in.V, i8* %tmp.5) nounwind, !dbg !289 ; [debug line = 131:9@82:33]
  call void @llvm.dbg.value(metadata !{i8* %tmp.5}, i64 0, metadata !256), !dbg !290 ; [debug line = 132:9@82:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp.5}, i64 0, metadata !256), !dbg !290 ; [debug line = 132:9@82:33] [debug variable = tmp]
  %tmp.5.load = load i8* %tmp.5, align 1, !dbg !290 ; [#uses=1 type=i8] [debug line = 132:9@82:33]
  %tmp.7 = zext i7 %i.1 to i64, !dbg !286         ; [#uses=1 type=i64] [debug line = 82:33]
  %current_database_item.addr = getelementptr inbounds [64 x i8]* @current_database_item, i64 0, i64 %tmp.7, !dbg !286 ; [#uses=1 type=i8*] [debug line = 82:33]
  store i8 %tmp.5.load, i8* %current_database_item.addr, align 1, !dbg !286 ; [debug line = 82:33]
  %i.2 = add i7 %i.1, 1, !dbg !291                ; [#uses=1 type=i7] [debug line = 81:20]
  call void @llvm.dbg.value(metadata !{i7 %i.2}, i64 0, metadata !269), !dbg !291 ; [debug line = 81:20] [debug variable = i]
  br label %.preheader10, !dbg !291               ; [debug line = 81:20]

.preheader:                                       ; preds = %compare.exit, %.preheader.preheader
  %tmp.11 = phi i1 [ %found, %compare.exit ], [ false, %.preheader.preheader ] ; [#uses=2 type=i1]
  %contact_index.assign = phi i8 [ %i.5, %compare.exit ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i8]
  %contact_index.assign.cast4 = zext i8 %contact_index.assign to i13, !dbg !283 ; [#uses=1 type=i13] [debug line = 84:9]
  %exitcond7 = icmp eq i8 %contact_index.assign, -128, !dbg !283 ; [#uses=1 type=i1] [debug line = 84:9]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) ; [#uses=0 type=i32]
  br i1 %exitcond7, label %18, label %14, !dbg !283 ; [debug line = 84:9]

; <label>:14                                      ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i8 %contact_index.assign}, i64 0, metadata !292) nounwind, !dbg !298 ; [debug line = 19:18@85:18] [debug variable = contact_index]
  %tmp.i = shl i13 %contact_index.assign.cast4, 6, !dbg !299 ; [#uses=1 type=i13] [debug line = 24:3@85:18]
  br label %15, !dbg !303                         ; [debug line = 23:6@85:18]

; <label>:15                                      ; preds = %17, %14
  %i.i = phi i7 [ 0, %14 ], [ %i.6, %17 ]         ; [#uses=4 type=i7]
  %comp = phi i1 [ true, %14 ], [ %found.1, %17 ] ; [#uses=2 type=i1]
  %i.i.cast3 = zext i7 %i.i to i13, !dbg !303     ; [#uses=1 type=i13] [debug line = 23:6@85:18]
  %exitcond.i = icmp eq i7 %i.i, -64, !dbg !303   ; [#uses=1 type=i1] [debug line = 23:6@85:18]
  %16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %compare.exit, label %17, !dbg !303 ; [debug line = 23:6@85:18]

; <label>:17                                      ; preds = %15
  %tmp..i = zext i7 %i.i to i64, !dbg !299        ; [#uses=1 type=i64] [debug line = 24:3@85:18]
  %current_database_item.addr.1 = getelementptr inbounds [64 x i8]* @current_database_item, i64 0, i64 %tmp..i, !dbg !299 ; [#uses=1 type=i8*] [debug line = 24:3@85:18]
  %current_database_item.load = load i8* %current_database_item.addr.1, align 1, !dbg !299 ; [#uses=1 type=i8] [debug line = 24:3@85:18]
  %tmp.12.i = add i13 %tmp.i, %i.i.cast3, !dbg !299 ; [#uses=1 type=i13] [debug line = 24:3@85:18]
  %tmp.13.i = zext i13 %tmp.12.i to i64, !dbg !299 ; [#uses=1 type=i64] [debug line = 24:3@85:18]
  %contacts.addr.2 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.13.i, !dbg !299 ; [#uses=1 type=i8*] [debug line = 24:3@85:18]
  %contacts.load = load i8* %contacts.addr.2, align 1, !dbg !299 ; [#uses=1 type=i8] [debug line = 24:3@85:18]
  %tmp.14.i = icmp eq i8 %current_database_item.load, %contacts.load, !dbg !299 ; [#uses=1 type=i1] [debug line = 24:3@85:18]
  %found.1 = and i1 %tmp.14.i, %comp, !dbg !299   ; [#uses=1 type=i1] [debug line = 24:3@85:18]
  call void @llvm.dbg.value(metadata !{i1 %found.1}, i64 0, metadata !304) nounwind, !dbg !299 ; [debug line = 24:3@85:18] [debug variable = found]
  %i.6 = add i7 %i.i, 1, !dbg !305                ; [#uses=1 type=i7] [debug line = 23:17@85:18]
  call void @llvm.dbg.value(metadata !{i7 %i.6}, i64 0, metadata !306) nounwind, !dbg !305 ; [debug line = 23:17@85:18] [debug variable = i]
  br label %15, !dbg !305                         ; [debug line = 23:17@85:18]

compare.exit:                                     ; preds = %15
  %comp.lcssa = phi i1 [ %comp, %15 ]             ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %comp}, i64 0, metadata !307), !dbg !296 ; [debug line = 85:18] [debug variable = comp]
  %found = or i1 %comp.lcssa, %tmp.11, !dbg !308  ; [#uses=1 type=i1] [debug line = 86:6]
  call void @llvm.dbg.value(metadata !{i1 %found}, i64 0, metadata !309), !dbg !308 ; [debug line = 86:6] [debug variable = found]
  %i.5 = add i8 %contact_index.assign, 1, !dbg !310 ; [#uses=1 type=i8] [debug line = 84:21]
  call void @llvm.dbg.value(metadata !{i8 %i.5}, i64 0, metadata !269), !dbg !310 ; [debug line = 84:21] [debug variable = i]
  br label %.preheader, !dbg !310                 ; [debug line = 84:21]

; <label>:18                                      ; preds = %.preheader
  %tmp.11.lcssa = phi i1 [ %tmp.11, %.preheader ] ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1* %matched_out.V}, i64 0, metadata !311), !dbg !316 ; [debug line = 144:48@88:5] [debug variable = stream<bool>.V]
  call void @llvm.dbg.declare(metadata !{i1* %tmp.12}, metadata !318) nounwind, !dbg !320 ; [debug line = 145:22@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.11}, i64 0, metadata !318), !dbg !321 ; [debug line = 145:31@88:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp.11}, i64 0, metadata !318), !dbg !321 ; [debug line = 145:31@88:5] [debug variable = tmp]
  store i1 %tmp.11.lcssa, i1* %tmp.12, align 1, !dbg !321 ; [debug line = 145:31@88:5]
  call void @_ssdm_op_IfWrite.Stream.i1P.i1P(i1* %matched_out.V, i1* %tmp.12) nounwind, !dbg !322 ; [debug line = 146:9@88:5]
  br label %10, !dbg !323                         ; [debug line = 89:4]

; <label>:19                                      ; preds = %10
  store i32 1, i32* %matched_finished, align 4, !dbg !324 ; [debug line = 90:4]
  br label %.loopexit, !dbg !325                  ; [debug line = 91:4]

; <label>:20                                      ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !326 ; [debug line = 94:4]
  store i32 0, i32* %error_out, align 4, !dbg !327 ; [debug line = 95:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !328 ; [debug line = 97:4]
  store i32 0, i32* %contacts_size_out, align 4, !dbg !329 ; [debug line = 99:4]
  br label %21, !dbg !330                         ; [debug line = 100:8]

; <label>:21                                      ; preds = %23, %20
  %i.3 = phi i8 [ 0, %20 ], [ %i, %23 ]           ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i.3, -128, !dbg !330    ; [#uses=1 type=i1] [debug line = 100:8]
  %22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.loopexit.loopexit, label %23, !dbg !330 ; [debug line = 100:8]

; <label>:23                                      ; preds = %21
  %tmp.3 = zext i8 %i.3 to i64, !dbg !332         ; [#uses=1 type=i64] [debug line = 101:5]
  %contacts.addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.3, !dbg !332 ; [#uses=1 type=i8*] [debug line = 101:5]
  store i8 0, i8* %contacts.addr, align 1, !dbg !332 ; [debug line = 101:5]
  %i = add i8 %i.3, 1, !dbg !334                  ; [#uses=1 type=i8] [debug line = 100:20]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !269), !dbg !334 ; [debug line = 100:20] [debug variable = i]
  br label %21, !dbg !334                         ; [debug line = 100:20]

; <label>:24                                      ; preds = %0
  %contacts_size.load = load i32* @contacts_size, align 4, !dbg !335 ; [#uses=1 type=i32] [debug line = 106:4]
  store i32 %contacts_size.load, i32* %contacts_size_out, align 4, !dbg !335 ; [debug line = 106:4]
  store i32 0, i32* %matched_finished, align 4, !dbg !336 ; [debug line = 107:4]
  store i32 3, i32* %error_out, align 4, !dbg !337 ; [debug line = 108:4]
  br label %.loopexit, !dbg !338                  ; [debug line = 109:4]

.loopexit.loopexit:                               ; preds = %21
  br label %.loopexit

.loopexit.loopexit8:                              ; preds = %2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit8, %.loopexit.loopexit, %24, %19
  ret void, !dbg !339                             ; [debug line = 111:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=12]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.i1P.i1P(i1*, i1*)

; [#uses=3]
declare void @_ssdm_op_IfRead.Stream.i8P.i8P(i8*, i8*)

; [#uses=2]
declare i1 @_ssdm_op_IfCanRead.Stream.i8P(i8*)

!opencl.kernels = !{!0, !7, !13, !19, !22, !22}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!28}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"contact_index"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &", metadata !"hls::stream<_Bool> &", metadata !"int*", metadata !"int*", metadata !"int*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contacts_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"contacts_size_out"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const _Bool &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space"}
!24 = metadata !{metadata !"kernel_arg_access_qual"}
!25 = metadata !{metadata !"kernel_arg_type"}
!26 = metadata !{metadata !"kernel_arg_type_qual"}
!27 = metadata !{metadata !"kernel_arg_name"}
!28 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !29} ; [ DW_TAG_compile_unit ]
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !31, metadata !37, metadata !39, metadata !43, metadata !46, metadata !47, metadata !48, metadata !50}
!31 = metadata !{i32 786484, i32 0, null, metadata !"current_database_item", metadata !"current_database_item", metadata !"_ZL21current_database_item", metadata !32, i32 8, metadata !33, i32 1, i32 1, [64 x i8]* @current_database_item} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786473, metadata !"contact_discovery/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !34, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !32, i32 9, metadata !38, i32 1, i32 1, i32* @contacts_size} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !32, i32 7, metadata !40, i32 1, i32 1, [8192 x i8]* @contacts} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !34, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 8191}     ; [ DW_TAG_subrange_type ]
!43 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !44, i32 315, metadata !45, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!44 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!45 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !44, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !44, i32 316, metadata !45, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !44, i32 317, metadata !45, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !49, i32 26, metadata !38, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !49, i32 30, metadata !38, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"operation", metadata !55, metadata !"int", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, i32 0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 7, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"contacts_in.V", metadata !61, metadata !"unsigned char", i32 0, i32 7}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, i32 1}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 7, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"database_in.V", metadata !61, metadata !"unsigned char", i32 0, i32 7}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"matched_out.V", metadata !61, metadata !"bool", i32 0, i32 0}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"matched_finished", metadata !61, metadata !"int", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"error_out", metadata !61, metadata !"int", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"contacts_size_out", metadata !61, metadata !"int", i32 0, i32 31}
!83 = metadata !{i32 786689, metadata !84, metadata !"operation", metadata !32, i32 16777246, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 786478, i32 0, metadata !32, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiRN3hls6streamIhEES2_RNS0_IbEEPiS5_S5_", metadata !32, i32 29, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !97, i32 37} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !38, metadata !87, metadata !87, metadata !145, metadata !194, metadata !194, metadata !194}
!87 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_reference_type ]
!88 = metadata !{i32 786434, metadata !89, metadata !"stream<unsigned char>", metadata !90, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !91, i32 0, null, metadata !143} ; [ DW_TAG_class_type ]
!89 = metadata !{i32 786489, null, metadata !"hls", metadata !90, i32 69} ; [ DW_TAG_namespace ]
!90 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!91 = metadata !{metadata !92, metadata !93, metadata !99, metadata !105, metadata !110, metadata !113, metadata !117, metadata !122, metadata !127, metadata !128, metadata !129, metadata !132, metadata !135, metadata !136, metadata !139}
!92 = metadata !{i32 786445, metadata !88, metadata !"V", metadata !90, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ]
!93 = metadata !{i32 786478, i32 0, metadata !88, metadata !"stream", metadata !"stream", metadata !"", metadata !90, i32 83, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 83} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{null, metadata !96}
!96 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !88} ; [ DW_TAG_pointer_type ]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!99 = metadata !{i32 786478, i32 0, metadata !88, metadata !"stream", metadata !"stream", metadata !"", metadata !90, i32 86, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 86} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !96, metadata !102}
!102 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ]
!103 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_const_type ]
!104 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!105 = metadata !{i32 786478, i32 0, metadata !88, metadata !"stream", metadata !"stream", metadata !"", metadata !90, i32 91, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !97, i32 91} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{null, metadata !96, metadata !108}
!108 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_reference_type ]
!109 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_const_type ]
!110 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !90, i32 94, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !97, i32 94} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !87, metadata !96, metadata !108}
!113 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !90, i32 101, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 101} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{null, metadata !96, metadata !116}
!116 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_reference_type ]
!117 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !90, i32 105, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 105} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !96, metadata !120}
!120 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_reference_type ]
!121 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!122 = metadata !{i32 786478, i32 0, metadata !88, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !90, i32 112, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 112} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{metadata !125, metadata !126}
!125 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!126 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !109} ; [ DW_TAG_pointer_type ]
!127 = metadata !{i32 786478, i32 0, metadata !88, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !90, i32 117, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 117} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786478, i32 0, metadata !88, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !90, i32 123, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 123} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786478, i32 0, metadata !88, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !90, i32 129, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 129} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{metadata !34, metadata !96}
!132 = metadata !{i32 786478, i32 0, metadata !88, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !90, i32 136, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 136} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{metadata !125, metadata !96, metadata !116}
!135 = metadata !{i32 786478, i32 0, metadata !88, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !90, i32 144, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 144} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786478, i32 0, metadata !88, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !90, i32 150, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 150} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{metadata !125, metadata !96, metadata !120}
!139 = metadata !{i32 786478, i32 0, metadata !88, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !90, i32 157, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 157} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{metadata !142, metadata !96}
!142 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !34, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!145 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_reference_type ]
!146 = metadata !{i32 786434, metadata !89, metadata !"stream<bool>", metadata !90, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !147, i32 0, null, metadata !192} ; [ DW_TAG_class_type ]
!147 = metadata !{metadata !148, metadata !149, metadata !153, metadata !156, metadata !161, metadata !164, metadata !168, metadata !173, metadata !177, metadata !178, metadata !179, metadata !182, metadata !185, metadata !186, metadata !189}
!148 = metadata !{i32 786445, metadata !146, metadata !"V", metadata !90, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !125} ; [ DW_TAG_member ]
!149 = metadata !{i32 786478, i32 0, metadata !146, metadata !"stream", metadata !"stream", metadata !"", metadata !90, i32 83, metadata !150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 83} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!151 = metadata !{null, metadata !152}
!152 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !146} ; [ DW_TAG_pointer_type ]
!153 = metadata !{i32 786478, i32 0, metadata !146, metadata !"stream", metadata !"stream", metadata !"", metadata !90, i32 86, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 86} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{null, metadata !152, metadata !102}
!156 = metadata !{i32 786478, i32 0, metadata !146, metadata !"stream", metadata !"stream", metadata !"", metadata !90, i32 91, metadata !157, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !97, i32 91} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{null, metadata !152, metadata !159}
!159 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_reference_type ]
!160 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_const_type ]
!161 = metadata !{i32 786478, i32 0, metadata !146, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIbEaSERKS1_", metadata !90, i32 94, metadata !162, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !97, i32 94} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!163 = metadata !{metadata !145, metadata !152, metadata !159}
!164 = metadata !{i32 786478, i32 0, metadata !146, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIbErsERb", metadata !90, i32 101, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 101} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!166 = metadata !{null, metadata !152, metadata !167}
!167 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_reference_type ]
!168 = metadata !{i32 786478, i32 0, metadata !146, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIbElsERKb", metadata !90, i32 105, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 105} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{null, metadata !152, metadata !171}
!171 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_reference_type ]
!172 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_const_type ]
!173 = metadata !{i32 786478, i32 0, metadata !146, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIbE5emptyEv", metadata !90, i32 112, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 112} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{metadata !125, metadata !176}
!176 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !160} ; [ DW_TAG_pointer_type ]
!177 = metadata !{i32 786478, i32 0, metadata !146, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIbE4fullEv", metadata !90, i32 117, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 117} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786478, i32 0, metadata !146, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readERb", metadata !90, i32 123, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 123} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786478, i32 0, metadata !146, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readEv", metadata !90, i32 129, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 129} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{metadata !125, metadata !152}
!182 = metadata !{i32 786478, i32 0, metadata !146, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIbE7read_nbERb", metadata !90, i32 136, metadata !183, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 136} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!184 = metadata !{metadata !125, metadata !152, metadata !167}
!185 = metadata !{i32 786478, i32 0, metadata !146, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !90, i32 144, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 144} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786478, i32 0, metadata !146, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIbE8write_nbERKb", metadata !90, i32 150, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 150} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{metadata !125, metadata !152, metadata !171}
!189 = metadata !{i32 786478, i32 0, metadata !146, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIbE4sizeEv", metadata !90, i32 157, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !97, i32 157} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!191 = metadata !{metadata !142, metadata !152}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !125, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!194 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ]
!195 = metadata !{i32 30, i32 6, metadata !84, null}
!196 = metadata !{i32 790531, metadata !197, metadata !"contacts_in.V", null, i32 31, metadata !198, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!197 = metadata !{i32 786689, metadata !84, metadata !"contacts_in", metadata !32, i32 33554463, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ]
!199 = metadata !{i32 786438, metadata !89, metadata !"stream<unsigned char>", metadata !90, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !200, i32 0, null, metadata !143} ; [ DW_TAG_class_field_type ]
!200 = metadata !{metadata !92}
!201 = metadata !{i32 31, i32 30, metadata !84, null}
!202 = metadata !{i32 790531, metadata !203, metadata !"database_in.V", null, i32 32, metadata !198, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!203 = metadata !{i32 786689, metadata !84, metadata !"database_in", metadata !32, i32 50331680, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 32, i32 30, metadata !84, null}
!205 = metadata !{i32 790531, metadata !206, metadata !"matched_out.V", null, i32 33, metadata !207, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!206 = metadata !{i32 786689, metadata !84, metadata !"matched_out", metadata !32, i32 67108897, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!207 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !208} ; [ DW_TAG_pointer_type ]
!208 = metadata !{i32 786438, metadata !89, metadata !"stream<bool>", metadata !90, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !209, i32 0, null, metadata !192} ; [ DW_TAG_class_field_type ]
!209 = metadata !{metadata !148}
!210 = metadata !{i32 33, i32 21, metadata !84, null}
!211 = metadata !{i32 786689, metadata !84, metadata !"matched_finished", metadata !32, i32 83886114, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 34, i32 7, metadata !84, null}
!213 = metadata !{i32 786689, metadata !84, metadata !"error_out", metadata !32, i32 100663331, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 35, i32 7, metadata !84, null}
!215 = metadata !{i32 786689, metadata !84, metadata !"contacts_size_out", metadata !32, i32 117440548, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 36, i32 7, metadata !84, null}
!217 = metadata !{i32 38, i32 1, metadata !218, null}
!218 = metadata !{i32 786443, metadata !84, i32 37, i32 2, metadata !32, i32 6} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 41, i32 1, metadata !218, null}
!220 = metadata !{i32 42, i32 1, metadata !218, null}
!221 = metadata !{i32 43, i32 1, metadata !218, null}
!222 = metadata !{i32 44, i32 1, metadata !218, null}
!223 = metadata !{i32 45, i32 1, metadata !218, null}
!224 = metadata !{i32 46, i32 1, metadata !218, null}
!225 = metadata !{i32 47, i32 1, metadata !218, null}
!226 = metadata !{i32 48, i32 1, metadata !218, null}
!227 = metadata !{i32 54, i32 2, metadata !218, null}
!228 = metadata !{i32 57, i32 4, metadata !229, null}
!229 = metadata !{i32 786443, metadata !218, i32 54, i32 19, metadata !32, i32 7} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 58, i32 4, metadata !229, null}
!231 = metadata !{i32 59, i32 4, metadata !229, null}
!232 = metadata !{i32 60, i32 4, metadata !229, null}
!233 = metadata !{i32 790531, metadata !234, metadata !"stream<unsigned char>.V", null, i32 112, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!234 = metadata !{i32 786689, metadata !235, metadata !"this", metadata !90, i32 16777328, metadata !236, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 786478, i32 0, metadata !89, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !90, i32 112, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !122, metadata !97, i32 112} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ]
!237 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ]
!238 = metadata !{i32 112, i32 48, metadata !235, metadata !239}
!239 = metadata !{i32 60, i32 11, metadata !229, null}
!240 = metadata !{i32 113, i32 20, metadata !241, metadata !239}
!241 = metadata !{i32 786443, metadata !235, i32 112, i32 62, metadata !90, i32 22} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 786688, metadata !241, metadata !"tmp", metadata !90, i32 113, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 61, i32 5, metadata !244, null}
!244 = metadata !{i32 786443, metadata !229, i32 60, i32 31, metadata !32, i32 8} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 65, i32 10, metadata !246, null}
!246 = metadata !{i32 786443, metadata !247, i32 65, i32 6, metadata !32, i32 11} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 786443, metadata !244, i32 64, i32 12, metadata !32, i32 10} ; [ DW_TAG_lexical_block ]
!248 = metadata !{i32 62, i32 6, metadata !249, null}
!249 = metadata !{i32 786443, metadata !244, i32 61, i32 29, metadata !32, i32 9} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 790531, metadata !251, metadata !"stream<unsigned char>.V", null, i32 129, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!251 = metadata !{i32 786689, metadata !252, metadata !"this", metadata !90, i32 16777345, metadata !253, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!252 = metadata !{i32 786478, i32 0, metadata !89, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !90, i32 129, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !129, metadata !97, i32 129} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ]
!254 = metadata !{i32 129, i32 56, metadata !252, metadata !255}
!255 = metadata !{i32 63, i32 6, metadata !249, null}
!256 = metadata !{i32 786688, metadata !257, metadata !"tmp", metadata !90, i32 130, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 786443, metadata !252, i32 129, i32 63, metadata !90, i32 21} ; [ DW_TAG_lexical_block ]
!258 = metadata !{i32 130, i32 22, metadata !257, metadata !255}
!259 = metadata !{i32 131, i32 9, metadata !257, metadata !255}
!260 = metadata !{i32 132, i32 9, metadata !257, metadata !255}
!261 = metadata !{i32 64, i32 5, metadata !249, null}
!262 = metadata !{i32 129, i32 56, metadata !252, metadata !263}
!263 = metadata !{i32 66, i32 40, metadata !264, null}
!264 = metadata !{i32 786443, metadata !246, i32 65, i32 25, metadata !32, i32 12} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 130, i32 22, metadata !257, metadata !263}
!266 = metadata !{i32 131, i32 9, metadata !257, metadata !263}
!267 = metadata !{i32 132, i32 9, metadata !257, metadata !263}
!268 = metadata !{i32 65, i32 21, metadata !246, null}
!269 = metadata !{i32 786688, metadata !218, metadata !"i", metadata !32, i32 49, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 68, i32 6, metadata !247, null}
!271 = metadata !{i32 69, i32 6, metadata !247, null}
!272 = metadata !{i32 70, i32 6, metadata !247, null}
!273 = metadata !{i32 72, i32 4, metadata !244, null}
!274 = metadata !{i32 77, i32 4, metadata !229, null}
!275 = metadata !{i32 78, i32 4, metadata !229, null}
!276 = metadata !{i32 79, i32 4, metadata !229, null}
!277 = metadata !{i32 112, i32 48, metadata !235, metadata !278}
!278 = metadata !{i32 79, i32 11, metadata !229, null}
!279 = metadata !{i32 113, i32 20, metadata !241, metadata !278}
!280 = metadata !{i32 81, i32 9, metadata !281, null}
!281 = metadata !{i32 786443, metadata !282, i32 81, i32 5, metadata !32, i32 14} ; [ DW_TAG_lexical_block ]
!282 = metadata !{i32 786443, metadata !229, i32 79, i32 31, metadata !32, i32 13} ; [ DW_TAG_lexical_block ]
!283 = metadata !{i32 84, i32 9, metadata !284, null}
!284 = metadata !{i32 786443, metadata !282, i32 84, i32 5, metadata !32, i32 16} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 129, i32 56, metadata !252, metadata !286}
!286 = metadata !{i32 82, i32 33, metadata !287, null}
!287 = metadata !{i32 786443, metadata !281, i32 81, i32 24, metadata !32, i32 15} ; [ DW_TAG_lexical_block ]
!288 = metadata !{i32 130, i32 22, metadata !257, metadata !286}
!289 = metadata !{i32 131, i32 9, metadata !257, metadata !286}
!290 = metadata !{i32 132, i32 9, metadata !257, metadata !286}
!291 = metadata !{i32 81, i32 20, metadata !281, null}
!292 = metadata !{i32 786689, metadata !293, metadata !"contact_index", metadata !32, i32 16777235, metadata !38, i32 0, metadata !296} ; [ DW_TAG_arg_variable ]
!293 = metadata !{i32 786478, i32 0, metadata !32, metadata !"compare", metadata !"compare", metadata !"_Z7comparei", metadata !32, i32 19, metadata !294, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !97, i32 19} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{metadata !125, metadata !38}
!296 = metadata !{i32 85, i32 18, metadata !297, null}
!297 = metadata !{i32 786443, metadata !284, i32 84, i32 25, metadata !32, i32 17} ; [ DW_TAG_lexical_block ]
!298 = metadata !{i32 19, i32 18, metadata !293, metadata !296}
!299 = metadata !{i32 24, i32 3, metadata !300, metadata !296}
!300 = metadata !{i32 786443, metadata !301, i32 23, i32 21, metadata !32, i32 5} ; [ DW_TAG_lexical_block ]
!301 = metadata !{i32 786443, metadata !302, i32 23, i32 2, metadata !32, i32 4} ; [ DW_TAG_lexical_block ]
!302 = metadata !{i32 786443, metadata !293, i32 19, i32 32, metadata !32, i32 3} ; [ DW_TAG_lexical_block ]
!303 = metadata !{i32 23, i32 6, metadata !301, metadata !296}
!304 = metadata !{i32 786688, metadata !302, metadata !"found", metadata !32, i32 21, metadata !125, i32 0, metadata !296} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 23, i32 17, metadata !301, metadata !296}
!306 = metadata !{i32 786688, metadata !302, metadata !"i", metadata !32, i32 20, metadata !38, i32 0, metadata !296} ; [ DW_TAG_auto_variable ]
!307 = metadata !{i32 786688, metadata !297, metadata !"comp", metadata !32, i32 85, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!308 = metadata !{i32 86, i32 6, metadata !297, null}
!309 = metadata !{i32 786688, metadata !218, metadata !"found", metadata !32, i32 52, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!310 = metadata !{i32 84, i32 21, metadata !284, null}
!311 = metadata !{i32 790531, metadata !312, metadata !"stream<bool>.V", null, i32 144, metadata !315, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!312 = metadata !{i32 786689, metadata !313, metadata !"this", metadata !90, i32 16777360, metadata !314, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!313 = metadata !{i32 786478, i32 0, metadata !89, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !90, i32 144, metadata !169, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !185, metadata !97, i32 144} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ]
!315 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !208} ; [ DW_TAG_pointer_type ]
!316 = metadata !{i32 144, i32 48, metadata !313, metadata !317}
!317 = metadata !{i32 88, i32 5, metadata !282, null}
!318 = metadata !{i32 786688, metadata !319, metadata !"tmp", metadata !90, i32 145, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!319 = metadata !{i32 786443, metadata !313, i32 144, i32 79, metadata !90, i32 20} ; [ DW_TAG_lexical_block ]
!320 = metadata !{i32 145, i32 22, metadata !319, metadata !317}
!321 = metadata !{i32 145, i32 31, metadata !319, metadata !317}
!322 = metadata !{i32 146, i32 9, metadata !319, metadata !317}
!323 = metadata !{i32 89, i32 4, metadata !282, null}
!324 = metadata !{i32 90, i32 4, metadata !229, null}
!325 = metadata !{i32 91, i32 4, metadata !229, null}
!326 = metadata !{i32 94, i32 4, metadata !229, null}
!327 = metadata !{i32 95, i32 4, metadata !229, null}
!328 = metadata !{i32 97, i32 4, metadata !229, null}
!329 = metadata !{i32 99, i32 4, metadata !229, null}
!330 = metadata !{i32 100, i32 8, metadata !331, null}
!331 = metadata !{i32 786443, metadata !229, i32 100, i32 4, metadata !32, i32 18} ; [ DW_TAG_lexical_block ]
!332 = metadata !{i32 101, i32 5, metadata !333, null}
!333 = metadata !{i32 786443, metadata !331, i32 100, i32 24, metadata !32, i32 19} ; [ DW_TAG_lexical_block ]
!334 = metadata !{i32 100, i32 20, metadata !331, null}
!335 = metadata !{i32 106, i32 4, metadata !229, null}
!336 = metadata !{i32 107, i32 4, metadata !229, null}
!337 = metadata !{i32 108, i32 4, metadata !229, null}
!338 = metadata !{i32 109, i32 4, metadata !229, null}
!339 = metadata !{i32 111, i32 1, metadata !218, null}
