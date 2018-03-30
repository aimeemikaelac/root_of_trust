; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_database_ite = internal unnamed_addr global [64 x i8] zeroinitializer, align 16 ; [#uses=2 type=[64 x i8]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=8 type=i32*]
@contacts = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16 ; [#uses=3 type=[8192 x i8]*]
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@p_str6 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@p_str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=3 type=[8 x i8]*]
@p_str3 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=69 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=3 type=[5 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=29]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, i8* %contacts_in_V, i8* %database_in_V, i8* %matched_out_V, i32* %matched_finished, i32* %error_out, i32* %contacts_size_out) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %contacts_in_V), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %database_in_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %matched_out_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %matched_finished), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !56
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %operation_read}, i64 0, metadata !60), !dbg !175 ; [debug line = 30:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !60), !dbg !175 ; [debug line = 30:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i8* %contacts_in_V}, i64 0, metadata !176), !dbg !181 ; [debug line = 31:30] [debug variable = contacts_in.V]
  call void @llvm.dbg.value(metadata !{i8* %database_in_V}, i64 0, metadata !182), !dbg !184 ; [debug line = 32:30] [debug variable = database_in.V]
  call void @llvm.dbg.value(metadata !{i8* %matched_out_V}, i64 0, metadata !185), !dbg !190 ; [debug line = 33:21] [debug variable = matched_out.V]
  call void @llvm.dbg.value(metadata !{i32* %matched_finished}, i64 0, metadata !191), !dbg !192 ; [debug line = 34:7] [debug variable = matched_finished]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !193), !dbg !194 ; [debug line = 35:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !195), !dbg !196 ; [debug line = 36:7] [debug variable = contacts_size_out]
  call void (...)* @_ssdm_op_SpecInterface(i8* %matched_out_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2), !dbg !197 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %database_in_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !199 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %contacts_in_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !200 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !201 ; [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !202 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !203 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !204 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !205 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !206 ; [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !207 ; [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !208 ; [debug line = 48:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !209 ; [debug line = 49:1]
  switch i32 %operation_read, label %19 [
    i32 0, label %1
    i32 1, label %8
    i32 2, label %16
  ], !dbg !210                                    ; [debug line = 55:2]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0), !dbg !211 ; [debug line = 58:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !213 ; [debug line = 59:4]
  %contacts_size_load_1 = load i32* @contacts_size, align 4, !dbg !214 ; [#uses=1 type=i32] [debug line = 60:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load_1), !dbg !214 ; [debug line = 60:4]
  br label %2, !dbg !215                          ; [debug line = 61:4]

; <label>:2                                       ; preds = %7, %1
  call void @llvm.dbg.value(metadata !{i8* %contacts_in_V}, i64 0, metadata !216), !dbg !221 ; [debug line = 112:48@61:11] [debug variable = stream<unsigned char>.V]
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i8P(i8* %contacts_in_V, i32 1), !dbg !223 ; [#uses=1 type=i1] [debug line = 113:20@61:11]
  call void @llvm.dbg.value(metadata !{i1 %tmp}, i64 0, metadata !225), !dbg !223 ; [debug line = 113:20@61:11] [debug variable = tmp]
  br i1 %tmp, label %3, label %.loopexit.loopexit5, !dbg !222 ; [debug line = 61:11]

; <label>:3                                       ; preds = %2
  %contacts_size_load_3 = load i32* @contacts_size, align 4, !dbg !226 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_2 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load_3, i32 7, i32 31), !dbg !226 ; [#uses=1 type=i25] [debug line = 62:5]
  %icmp = icmp sgt i25 %tmp_2, 0, !dbg !226       ; [#uses=1 type=i1] [debug line = 62:5]
  br i1 %icmp, label %4, label %.preheader11.preheader, !dbg !226 ; [debug line = 62:5]

.preheader11.preheader:                           ; preds = %3
  br label %.preheader11, !dbg !228               ; [debug line = 66:10]

; <label>:4                                       ; preds = %3
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1), !dbg !231 ; [debug line = 63:6]
  call void @llvm.dbg.value(metadata !{i8* %contacts_in_V}, i64 0, metadata !233), !dbg !237 ; [debug line = 129:56@64:6] [debug variable = stream<unsigned char>.V]
  %tmp_4_0 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %contacts_in_V), !dbg !239 ; [#uses=0 type=i8] [debug line = 131:9@64:6]
  call void @llvm.dbg.value(metadata !{i8 %tmp_4_0}, i64 0, metadata !241), !dbg !239 ; [debug line = 131:9@64:6] [debug variable = tmp]
  br label %7, !dbg !242                          ; [debug line = 65:5]

.preheader11:                                     ; preds = %5, %.preheader11.preheader
  %i1 = phi i7 [ %i_4, %5 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i7]
  %i1_cast = zext i7 %i1 to i32, !dbg !228        ; [#uses=1 type=i32] [debug line = 66:10]
  %exitcond9 = icmp eq i7 %i1, -64, !dbg !228     ; [#uses=1 type=i1] [debug line = 66:10]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %i_4 = add i7 %i1, 1, !dbg !243                 ; [#uses=1 type=i7] [debug line = 66:21]
  br i1 %exitcond9, label %6, label %5, !dbg !228 ; [debug line = 66:10]

; <label>:5                                       ; preds = %.preheader11
  call void @llvm.dbg.value(metadata !{i8* %contacts_in_V}, i64 0, metadata !233), !dbg !244 ; [debug line = 129:56@67:40] [debug variable = stream<unsigned char>.V]
  %tmp_5 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %contacts_in_V), !dbg !247 ; [#uses=1 type=i8] [debug line = 131:9@67:40]
  call void @llvm.dbg.value(metadata !{i8 %tmp_5}, i64 0, metadata !241), !dbg !247 ; [debug line = 131:9@67:40] [debug variable = tmp]
  %contacts_size_load_5 = load i32* @contacts_size, align 4, !dbg !245 ; [#uses=1 type=i32] [debug line = 67:40]
  %tmp_6 = shl i32 %contacts_size_load_5, 6, !dbg !245 ; [#uses=1 type=i32] [debug line = 67:40]
  %tmp_8 = add nsw i32 %tmp_6, %i1_cast, !dbg !245 ; [#uses=1 type=i32] [debug line = 67:40]
  %tmp_s = sext i32 %tmp_8 to i64, !dbg !245      ; [#uses=1 type=i64] [debug line = 67:40]
  %contacts_addr_1 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_s, !dbg !245 ; [#uses=1 type=i8*] [debug line = 67:40]
  store i8 %tmp_5, i8* %contacts_addr_1, align 1, !dbg !245 ; [debug line = 67:40]
  call void @llvm.dbg.value(metadata !{i7 %i_4}, i64 0, metadata !248), !dbg !243 ; [debug line = 66:21] [debug variable = i]
  br label %.preheader11, !dbg !243               ; [debug line = 66:21]

; <label>:6                                       ; preds = %.preheader11
  %contacts_size_load_4 = load i32* @contacts_size, align 4, !dbg !249 ; [#uses=1 type=i32] [debug line = 69:6]
  %tmp_9 = add nsw i32 %contacts_size_load_4, 1, !dbg !249 ; [#uses=2 type=i32] [debug line = 69:6]
  store i32 %tmp_9, i32* @contacts_size, align 4, !dbg !249 ; [debug line = 69:6]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %tmp_9), !dbg !250 ; [debug line = 70:6]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !251 ; [debug line = 71:6]
  br label %7

; <label>:7                                       ; preds = %6, %4
  br label %2, !dbg !252                          ; [debug line = 73:4]

; <label>:8                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !253 ; [debug line = 78:4]
  %contacts_size_load_2 = load i32* @contacts_size, align 4, !dbg !254 ; [#uses=1 type=i32] [debug line = 79:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load_2), !dbg !254 ; [debug line = 79:4]
  br label %9, !dbg !255                          ; [debug line = 80:4]

; <label>:9                                       ; preds = %14, %8
  call void @llvm.dbg.value(metadata !{i8* %database_in_V}, i64 0, metadata !216), !dbg !256 ; [debug line = 112:48@80:11] [debug variable = stream<unsigned char>.V]
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.axis.i8P(i8* %database_in_V, i32 1), !dbg !258 ; [#uses=1 type=i1] [debug line = 113:20@80:11]
  call void @llvm.dbg.value(metadata !{i1 %tmp_1}, i64 0, metadata !225), !dbg !258 ; [debug line = 113:20@80:11] [debug variable = tmp]
  br i1 %tmp_1, label %.preheader10.preheader, label %15, !dbg !257 ; [debug line = 80:11]

.preheader10.preheader:                           ; preds = %9
  br label %.preheader10, !dbg !259               ; [debug line = 82:9]

.preheader10:                                     ; preds = %10, %.preheader10.preheader
  %i_1 = phi i7 [ %i_2, %10 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i7]
  %exitcond8 = icmp eq i7 %i_1, -64, !dbg !259    ; [#uses=1 type=i1] [debug line = 82:9]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %i_2 = add i7 %i_1, 1, !dbg !262                ; [#uses=1 type=i7] [debug line = 82:20]
  br i1 %exitcond8, label %.preheader.preheader, label %10, !dbg !259 ; [debug line = 82:9]

.preheader.preheader:                             ; preds = %.preheader10
  br label %.preheader, !dbg !263                 ; [debug line = 85:9]

; <label>:10                                      ; preds = %.preheader10
  call void @llvm.dbg.value(metadata !{i8* %database_in_V}, i64 0, metadata !233), !dbg !265 ; [debug line = 129:56@83:33] [debug variable = stream<unsigned char>.V]
  %tmp_4 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %database_in_V), !dbg !268 ; [#uses=1 type=i8] [debug line = 131:9@83:33]
  call void @llvm.dbg.value(metadata !{i8 %tmp_4}, i64 0, metadata !241), !dbg !268 ; [debug line = 131:9@83:33] [debug variable = tmp]
  %tmp_7 = zext i7 %i_1 to i64, !dbg !266         ; [#uses=1 type=i64] [debug line = 83:33]
  %current_database_ite = getelementptr inbounds [64 x i8]* @current_database_ite, i64 0, i64 %tmp_7, !dbg !266 ; [#uses=1 type=i8*] [debug line = 83:33]
  store i8 %tmp_4, i8* %current_database_ite, align 1, !dbg !266 ; [debug line = 83:33]
  call void @llvm.dbg.value(metadata !{i7 %i_2}, i64 0, metadata !248), !dbg !262 ; [debug line = 82:20] [debug variable = i]
  br label %.preheader10, !dbg !262               ; [debug line = 82:20]

.preheader:                                       ; preds = %compare.exit, %.preheader.preheader
  %tmp_10 = phi i1 [ %found, %compare.exit ], [ false, %.preheader.preheader ] ; [#uses=2 type=i1]
  %contact_index_assign = phi i8 [ %i_5, %compare.exit ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i8]
  %exitcond7 = icmp eq i8 %contact_index_assign, -128, !dbg !263 ; [#uses=1 type=i1] [debug line = 85:9]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) ; [#uses=0 type=i32]
  %i_5 = add i8 %contact_index_assign, 1, !dbg !269 ; [#uses=1 type=i8] [debug line = 85:21]
  br i1 %exitcond7, label %14, label %11, !dbg !263 ; [debug line = 85:9]

; <label>:11                                      ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i8 %contact_index_assign}, i64 0, metadata !270) nounwind, !dbg !276 ; [debug line = 19:18@86:18] [debug variable = contact_index]
  %tmp_11 = trunc i8 %contact_index_assign to i7  ; [#uses=1 type=i7]
  %tmp_i = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_11, i6 0), !dbg !277 ; [#uses=1 type=i13] [debug line = 24:3@86:18]
  br label %12, !dbg !281                         ; [debug line = 23:6@86:18]

; <label>:12                                      ; preds = %13, %11
  %i_i = phi i7 [ 0, %11 ], [ %i_6, %13 ]         ; [#uses=4 type=i7]
  %comp = phi i1 [ true, %11 ], [ %found_1, %13 ] ; [#uses=2 type=i1]
  %i_i_cast7 = zext i7 %i_i to i13, !dbg !281     ; [#uses=1 type=i13] [debug line = 23:6@86:18]
  %exitcond_i = icmp eq i7 %i_i, -64, !dbg !281   ; [#uses=1 type=i1] [debug line = 23:6@86:18]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %i_6 = add i7 %i_i, 1, !dbg !282                ; [#uses=1 type=i7] [debug line = 23:17@86:18]
  br i1 %exitcond_i, label %compare.exit, label %13, !dbg !281 ; [debug line = 23:6@86:18]

; <label>:13                                      ; preds = %12
  %tmp_i_7 = zext i7 %i_i to i64, !dbg !277       ; [#uses=1 type=i64] [debug line = 24:3@86:18]
  %current_database_ite_1 = getelementptr inbounds [64 x i8]* @current_database_ite, i64 0, i64 %tmp_i_7, !dbg !277 ; [#uses=1 type=i8*] [debug line = 24:3@86:18]
  %current_database_ite_2 = load i8* %current_database_ite_1, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 24:3@86:18]
  %tmp_12_i = add i13 %i_i_cast7, %tmp_i, !dbg !277 ; [#uses=1 type=i13] [debug line = 24:3@86:18]
  %tmp_13_i = zext i13 %tmp_12_i to i64, !dbg !277 ; [#uses=1 type=i64] [debug line = 24:3@86:18]
  %contacts_addr_2 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_13_i, !dbg !277 ; [#uses=1 type=i8*] [debug line = 24:3@86:18]
  %contacts_load = load i8* %contacts_addr_2, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 24:3@86:18]
  %tmp_14_i = icmp eq i8 %current_database_ite_2, %contacts_load, !dbg !277 ; [#uses=1 type=i1] [debug line = 24:3@86:18]
  %found_1 = and i1 %tmp_14_i, %comp, !dbg !277   ; [#uses=1 type=i1] [debug line = 24:3@86:18]
  call void @llvm.dbg.value(metadata !{i1 %found_1}, i64 0, metadata !283) nounwind, !dbg !277 ; [debug line = 24:3@86:18] [debug variable = found]
  call void @llvm.dbg.value(metadata !{i7 %i_6}, i64 0, metadata !284) nounwind, !dbg !282 ; [debug line = 23:17@86:18] [debug variable = i]
  br label %12, !dbg !282                         ; [debug line = 23:17@86:18]

compare.exit:                                     ; preds = %12
  call void @llvm.dbg.value(metadata !{i1 %comp}, i64 0, metadata !285), !dbg !274 ; [debug line = 86:18] [debug variable = comp]
  %found = or i1 %comp, %tmp_10, !dbg !286        ; [#uses=1 type=i1] [debug line = 87:6]
  call void @llvm.dbg.value(metadata !{i1 %found}, i64 0, metadata !287), !dbg !286 ; [debug line = 87:6] [debug variable = found]
  call void @llvm.dbg.value(metadata !{i8 %i_5}, i64 0, metadata !248), !dbg !269 ; [debug line = 85:21] [debug variable = i]
  br label %.preheader, !dbg !269                 ; [debug line = 85:21]

; <label>:14                                      ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i8* %matched_out_V}, i64 0, metadata !288), !dbg !293 ; [debug line = 144:48@89:5] [debug variable = stream<bool>.V]
  call void @llvm.dbg.value(metadata !{i1 %tmp_10}, i64 0, metadata !295), !dbg !297 ; [debug line = 145:31@89:5] [debug variable = tmp]
  %cast = zext i1 %tmp_10 to i8                   ; [#uses=1 type=i8]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %matched_out_V, i8 %cast), !dbg !298 ; [debug line = 146:9@89:5]
  br label %9, !dbg !299                          ; [debug line = 90:4]

; <label>:15                                      ; preds = %9
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 1), !dbg !300 ; [debug line = 91:4]
  br label %.loopexit, !dbg !301                  ; [debug line = 92:4]

; <label>:16                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0), !dbg !302 ; [debug line = 95:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0), !dbg !303 ; [debug line = 96:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !304 ; [debug line = 98:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0), !dbg !305 ; [debug line = 100:4]
  br label %17, !dbg !306                         ; [debug line = 101:8]

; <label>:17                                      ; preds = %18, %16
  %i_3 = phi i8 [ 0, %16 ], [ %i, %18 ]           ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i_3, -128, !dbg !306    ; [#uses=1 type=i1] [debug line = 101:8]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) ; [#uses=0 type=i32]
  %i = add i8 %i_3, 1, !dbg !308                  ; [#uses=1 type=i8] [debug line = 101:20]
  br i1 %exitcond, label %.loopexit.loopexit, label %18, !dbg !306 ; [debug line = 101:8]

; <label>:18                                      ; preds = %17
  %tmp_3 = zext i8 %i_3 to i64, !dbg !309         ; [#uses=1 type=i64] [debug line = 102:5]
  %contacts_addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_3, !dbg !309 ; [#uses=1 type=i8*] [debug line = 102:5]
  store i8 0, i8* %contacts_addr, align 1, !dbg !309 ; [debug line = 102:5]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !248), !dbg !308 ; [debug line = 101:20] [debug variable = i]
  br label %17, !dbg !308                         ; [debug line = 101:20]

; <label>:19                                      ; preds = %0
  %contacts_size_load = load i32* @contacts_size, align 4, !dbg !311 ; [#uses=1 type=i32] [debug line = 107:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load), !dbg !311 ; [debug line = 107:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0), !dbg !312 ; [debug line = 108:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3), !dbg !313 ; [debug line = 109:4]
  br label %.loopexit, !dbg !314                  ; [debug line = 110:4]

.loopexit.loopexit:                               ; preds = %17
  br label %.loopexit

.loopexit.loopexit5:                              ; preds = %2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit5, %.loopexit.loopexit, %19, %15
  ret void, !dbg !315                             ; [debug line = 112:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

; [#uses=15]
define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=12]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
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

; [#uses=0]
declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_9 = trunc i32 %empty to i25              ; [#uses=1 type=i25]
  ret i25 %empty_9
}

; [#uses=2]
define weak i1 @_ssdm_op_NbReadReq.axis.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i26.i6(i26, i6) nounwind readnone

; [#uses=1]
define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13                      ; [#uses=1 type=i13]
  %empty_10 = zext i6 %1 to i13                   ; [#uses=1 type=i13]
  %empty_11 = shl i13 %empty, 6                   ; [#uses=1 type=i13]
  %empty_12 = or i13 %empty_11, %empty_10         ; [#uses=1 type=i13]
  ret i13 %empty_12
}

!opencl.kernels = !{!0, !7, !13, !19, !22, !22}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

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
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"operation", metadata !32, metadata !"int", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 0}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 7, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"contacts_in.V", metadata !38, metadata !"unsigned char", i32 0, i32 7}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 1}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 7, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"database_in.V", metadata !38, metadata !"unsigned char", i32 0, i32 7}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 0, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"matched_out.V", metadata !38, metadata !"bool", i32 0, i32 0}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"matched_finished", metadata !38, metadata !"int", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"error_out", metadata !38, metadata !"int", i32 0, i32 31}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"contacts_size_out", metadata !38, metadata !"int", i32 0, i32 31}
!60 = metadata !{i32 786689, metadata !61, metadata !"operation", metadata !62, i32 16777246, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 786478, i32 0, metadata !62, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiRN3hls6streamIhEES2_RNS0_IbEEPiS5_S5_", metadata !62, i32 29, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !77, i32 37} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786473, metadata !"contact_discovery/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{null, metadata !65, metadata !66, metadata !66, metadata !125, metadata !174, metadata !174, metadata !174}
!65 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!66 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_reference_type ]
!67 = metadata !{i32 786434, metadata !68, metadata !"stream<unsigned char>", metadata !69, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !70, i32 0, null, metadata !123} ; [ DW_TAG_class_type ]
!68 = metadata !{i32 786489, null, metadata !"hls", metadata !69, i32 69} ; [ DW_TAG_namespace ]
!69 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!70 = metadata !{metadata !71, metadata !73, metadata !79, metadata !85, metadata !90, metadata !93, metadata !97, metadata !102, metadata !107, metadata !108, metadata !109, metadata !112, metadata !115, metadata !116, metadata !119}
!71 = metadata !{i32 786445, metadata !67, metadata !"V", metadata !69, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ]
!72 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 786478, i32 0, metadata !67, metadata !"stream", metadata !"stream", metadata !"", metadata !69, i32 83, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 83} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !76}
!76 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !67} ; [ DW_TAG_pointer_type ]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!79 = metadata !{i32 786478, i32 0, metadata !67, metadata !"stream", metadata !"stream", metadata !"", metadata !69, i32 86, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 86} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !76, metadata !82}
!82 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ]
!83 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_const_type ]
!84 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 786478, i32 0, metadata !67, metadata !"stream", metadata !"stream", metadata !"", metadata !69, i32 91, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !77, i32 91} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !76, metadata !88}
!88 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_reference_type ]
!89 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_const_type ]
!90 = metadata !{i32 786478, i32 0, metadata !67, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !69, i32 94, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !77, i32 94} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{metadata !66, metadata !76, metadata !88}
!93 = metadata !{i32 786478, i32 0, metadata !67, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !69, i32 101, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 101} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{null, metadata !76, metadata !96}
!96 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_reference_type ]
!97 = metadata !{i32 786478, i32 0, metadata !67, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !69, i32 105, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 105} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{null, metadata !76, metadata !100}
!100 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_reference_type ]
!101 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_const_type ]
!102 = metadata !{i32 786478, i32 0, metadata !67, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !69, i32 112, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 112} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{metadata !105, metadata !106}
!105 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!106 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !89} ; [ DW_TAG_pointer_type ]
!107 = metadata !{i32 786478, i32 0, metadata !67, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !69, i32 117, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 117} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786478, i32 0, metadata !67, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !69, i32 123, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 123} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786478, i32 0, metadata !67, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !69, i32 129, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 129} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{metadata !72, metadata !76}
!112 = metadata !{i32 786478, i32 0, metadata !67, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !69, i32 136, metadata !113, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 136} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!114 = metadata !{metadata !105, metadata !76, metadata !96}
!115 = metadata !{i32 786478, i32 0, metadata !67, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !69, i32 144, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 144} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786478, i32 0, metadata !67, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !69, i32 150, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 150} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{metadata !105, metadata !76, metadata !100}
!119 = metadata !{i32 786478, i32 0, metadata !67, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !69, i32 157, metadata !120, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 157} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{metadata !122, metadata !76}
!122 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !72, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!125 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_reference_type ]
!126 = metadata !{i32 786434, metadata !68, metadata !"stream<bool>", metadata !69, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !127, i32 0, null, metadata !172} ; [ DW_TAG_class_type ]
!127 = metadata !{metadata !128, metadata !129, metadata !133, metadata !136, metadata !141, metadata !144, metadata !148, metadata !153, metadata !157, metadata !158, metadata !159, metadata !162, metadata !165, metadata !166, metadata !169}
!128 = metadata !{i32 786445, metadata !126, metadata !"V", metadata !69, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !105} ; [ DW_TAG_member ]
!129 = metadata !{i32 786478, i32 0, metadata !126, metadata !"stream", metadata !"stream", metadata !"", metadata !69, i32 83, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 83} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{null, metadata !132}
!132 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !126} ; [ DW_TAG_pointer_type ]
!133 = metadata !{i32 786478, i32 0, metadata !126, metadata !"stream", metadata !"stream", metadata !"", metadata !69, i32 86, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 86} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{null, metadata !132, metadata !82}
!136 = metadata !{i32 786478, i32 0, metadata !126, metadata !"stream", metadata !"stream", metadata !"", metadata !69, i32 91, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !77, i32 91} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{null, metadata !132, metadata !139}
!139 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_reference_type ]
!140 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_const_type ]
!141 = metadata !{i32 786478, i32 0, metadata !126, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIbEaSERKS1_", metadata !69, i32 94, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !77, i32 94} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{metadata !125, metadata !132, metadata !139}
!144 = metadata !{i32 786478, i32 0, metadata !126, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIbErsERb", metadata !69, i32 101, metadata !145, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 101} ; [ DW_TAG_subprogram ]
!145 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!146 = metadata !{null, metadata !132, metadata !147}
!147 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_reference_type ]
!148 = metadata !{i32 786478, i32 0, metadata !126, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIbElsERKb", metadata !69, i32 105, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 105} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{null, metadata !132, metadata !151}
!151 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_reference_type ]
!152 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_const_type ]
!153 = metadata !{i32 786478, i32 0, metadata !126, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIbE5emptyEv", metadata !69, i32 112, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 112} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !105, metadata !156}
!156 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !140} ; [ DW_TAG_pointer_type ]
!157 = metadata !{i32 786478, i32 0, metadata !126, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIbE4fullEv", metadata !69, i32 117, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 117} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786478, i32 0, metadata !126, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readERb", metadata !69, i32 123, metadata !145, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 123} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 786478, i32 0, metadata !126, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readEv", metadata !69, i32 129, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 129} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{metadata !105, metadata !132}
!162 = metadata !{i32 786478, i32 0, metadata !126, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIbE7read_nbERb", metadata !69, i32 136, metadata !163, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 136} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{metadata !105, metadata !132, metadata !147}
!165 = metadata !{i32 786478, i32 0, metadata !126, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !69, i32 144, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 144} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 786478, i32 0, metadata !126, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIbE8write_nbERKb", metadata !69, i32 150, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 150} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{metadata !105, metadata !132, metadata !151}
!169 = metadata !{i32 786478, i32 0, metadata !126, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIbE4sizeEv", metadata !69, i32 157, metadata !170, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !77, i32 157} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!171 = metadata !{metadata !122, metadata !132}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !105, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!174 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!175 = metadata !{i32 30, i32 6, metadata !61, null}
!176 = metadata !{i32 790531, metadata !177, metadata !"contacts_in.V", null, i32 31, metadata !178, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!177 = metadata !{i32 786689, metadata !61, metadata !"contacts_in", metadata !62, i32 33554463, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ]
!179 = metadata !{i32 786438, metadata !68, metadata !"stream<unsigned char>", metadata !69, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !180, i32 0, null, metadata !123} ; [ DW_TAG_class_field_type ]
!180 = metadata !{metadata !71}
!181 = metadata !{i32 31, i32 30, metadata !61, null}
!182 = metadata !{i32 790531, metadata !183, metadata !"database_in.V", null, i32 32, metadata !178, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!183 = metadata !{i32 786689, metadata !61, metadata !"database_in", metadata !62, i32 50331680, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 32, i32 30, metadata !61, null}
!185 = metadata !{i32 790531, metadata !186, metadata !"matched_out.V", null, i32 33, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!186 = metadata !{i32 786689, metadata !61, metadata !"matched_out", metadata !62, i32 67108897, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_pointer_type ]
!188 = metadata !{i32 786438, metadata !68, metadata !"stream<bool>", metadata !69, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !189, i32 0, null, metadata !172} ; [ DW_TAG_class_field_type ]
!189 = metadata !{metadata !128}
!190 = metadata !{i32 33, i32 21, metadata !61, null}
!191 = metadata !{i32 786689, metadata !61, metadata !"matched_finished", metadata !62, i32 83886114, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 34, i32 7, metadata !61, null}
!193 = metadata !{i32 786689, metadata !61, metadata !"error_out", metadata !62, i32 100663331, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 35, i32 7, metadata !61, null}
!195 = metadata !{i32 786689, metadata !61, metadata !"contacts_size_out", metadata !62, i32 117440548, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!196 = metadata !{i32 36, i32 7, metadata !61, null}
!197 = metadata !{i32 38, i32 1, metadata !198, null}
!198 = metadata !{i32 786443, metadata !61, i32 37, i32 2, metadata !62, i32 6} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 39, i32 1, metadata !198, null}
!200 = metadata !{i32 40, i32 1, metadata !198, null}
!201 = metadata !{i32 41, i32 1, metadata !198, null}
!202 = metadata !{i32 42, i32 1, metadata !198, null}
!203 = metadata !{i32 43, i32 1, metadata !198, null}
!204 = metadata !{i32 44, i32 1, metadata !198, null}
!205 = metadata !{i32 45, i32 1, metadata !198, null}
!206 = metadata !{i32 46, i32 1, metadata !198, null}
!207 = metadata !{i32 47, i32 1, metadata !198, null}
!208 = metadata !{i32 48, i32 1, metadata !198, null}
!209 = metadata !{i32 49, i32 1, metadata !198, null}
!210 = metadata !{i32 55, i32 2, metadata !198, null}
!211 = metadata !{i32 58, i32 4, metadata !212, null}
!212 = metadata !{i32 786443, metadata !198, i32 55, i32 19, metadata !62, i32 7} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 59, i32 4, metadata !212, null}
!214 = metadata !{i32 60, i32 4, metadata !212, null}
!215 = metadata !{i32 61, i32 4, metadata !212, null}
!216 = metadata !{i32 790531, metadata !217, metadata !"stream<unsigned char>.V", null, i32 112, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!217 = metadata !{i32 786689, metadata !218, metadata !"this", metadata !69, i32 16777328, metadata !219, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!218 = metadata !{i32 786478, i32 0, metadata !68, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !69, i32 112, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !102, metadata !77, i32 112} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ]
!220 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ]
!221 = metadata !{i32 112, i32 48, metadata !218, metadata !222}
!222 = metadata !{i32 61, i32 11, metadata !212, null}
!223 = metadata !{i32 113, i32 20, metadata !224, metadata !222}
!224 = metadata !{i32 786443, metadata !218, i32 112, i32 62, metadata !69, i32 22} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 786688, metadata !224, metadata !"tmp", metadata !69, i32 113, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 62, i32 5, metadata !227, null}
!227 = metadata !{i32 786443, metadata !212, i32 61, i32 31, metadata !62, i32 8} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 66, i32 10, metadata !229, null}
!229 = metadata !{i32 786443, metadata !230, i32 66, i32 6, metadata !62, i32 11} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 786443, metadata !227, i32 65, i32 12, metadata !62, i32 10} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 63, i32 6, metadata !232, null}
!232 = metadata !{i32 786443, metadata !227, i32 62, i32 29, metadata !62, i32 9} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 790531, metadata !234, metadata !"stream<unsigned char>.V", null, i32 129, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!234 = metadata !{i32 786689, metadata !235, metadata !"this", metadata !69, i32 16777345, metadata !236, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 786478, i32 0, metadata !68, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !69, i32 129, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !109, metadata !77, i32 129} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ]
!237 = metadata !{i32 129, i32 56, metadata !235, metadata !238}
!238 = metadata !{i32 64, i32 6, metadata !232, null}
!239 = metadata !{i32 131, i32 9, metadata !240, metadata !238}
!240 = metadata !{i32 786443, metadata !235, i32 129, i32 63, metadata !69, i32 21} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 786688, metadata !240, metadata !"tmp", metadata !69, i32 130, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!242 = metadata !{i32 65, i32 5, metadata !232, null}
!243 = metadata !{i32 66, i32 21, metadata !229, null}
!244 = metadata !{i32 129, i32 56, metadata !235, metadata !245}
!245 = metadata !{i32 67, i32 40, metadata !246, null}
!246 = metadata !{i32 786443, metadata !229, i32 66, i32 25, metadata !62, i32 12} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 131, i32 9, metadata !240, metadata !245}
!248 = metadata !{i32 786688, metadata !198, metadata !"i", metadata !62, i32 50, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 69, i32 6, metadata !230, null}
!250 = metadata !{i32 70, i32 6, metadata !230, null}
!251 = metadata !{i32 71, i32 6, metadata !230, null}
!252 = metadata !{i32 73, i32 4, metadata !227, null}
!253 = metadata !{i32 78, i32 4, metadata !212, null}
!254 = metadata !{i32 79, i32 4, metadata !212, null}
!255 = metadata !{i32 80, i32 4, metadata !212, null}
!256 = metadata !{i32 112, i32 48, metadata !218, metadata !257}
!257 = metadata !{i32 80, i32 11, metadata !212, null}
!258 = metadata !{i32 113, i32 20, metadata !224, metadata !257}
!259 = metadata !{i32 82, i32 9, metadata !260, null}
!260 = metadata !{i32 786443, metadata !261, i32 82, i32 5, metadata !62, i32 14} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 786443, metadata !212, i32 80, i32 31, metadata !62, i32 13} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 82, i32 20, metadata !260, null}
!263 = metadata !{i32 85, i32 9, metadata !264, null}
!264 = metadata !{i32 786443, metadata !261, i32 85, i32 5, metadata !62, i32 16} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 129, i32 56, metadata !235, metadata !266}
!266 = metadata !{i32 83, i32 33, metadata !267, null}
!267 = metadata !{i32 786443, metadata !260, i32 82, i32 24, metadata !62, i32 15} ; [ DW_TAG_lexical_block ]
!268 = metadata !{i32 131, i32 9, metadata !240, metadata !266}
!269 = metadata !{i32 85, i32 21, metadata !264, null}
!270 = metadata !{i32 786689, metadata !271, metadata !"contact_index", metadata !62, i32 16777235, metadata !65, i32 0, metadata !274} ; [ DW_TAG_arg_variable ]
!271 = metadata !{i32 786478, i32 0, metadata !62, metadata !"compare", metadata !"compare", metadata !"_Z7comparei", metadata !62, i32 19, metadata !272, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !77, i32 19} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !105, metadata !65}
!274 = metadata !{i32 86, i32 18, metadata !275, null}
!275 = metadata !{i32 786443, metadata !264, i32 85, i32 25, metadata !62, i32 17} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 19, i32 18, metadata !271, metadata !274}
!277 = metadata !{i32 24, i32 3, metadata !278, metadata !274}
!278 = metadata !{i32 786443, metadata !279, i32 23, i32 21, metadata !62, i32 5} ; [ DW_TAG_lexical_block ]
!279 = metadata !{i32 786443, metadata !280, i32 23, i32 2, metadata !62, i32 4} ; [ DW_TAG_lexical_block ]
!280 = metadata !{i32 786443, metadata !271, i32 19, i32 32, metadata !62, i32 3} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 23, i32 6, metadata !279, metadata !274}
!282 = metadata !{i32 23, i32 17, metadata !279, metadata !274}
!283 = metadata !{i32 786688, metadata !280, metadata !"found", metadata !62, i32 21, metadata !105, i32 0, metadata !274} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 786688, metadata !280, metadata !"i", metadata !62, i32 20, metadata !65, i32 0, metadata !274} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 786688, metadata !275, metadata !"comp", metadata !62, i32 86, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 87, i32 6, metadata !275, null}
!287 = metadata !{i32 786688, metadata !198, metadata !"found", metadata !62, i32 53, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!288 = metadata !{i32 790531, metadata !289, metadata !"stream<bool>.V", null, i32 144, metadata !292, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!289 = metadata !{i32 786689, metadata !290, metadata !"this", metadata !69, i32 16777360, metadata !291, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 786478, i32 0, metadata !68, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !69, i32 144, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !165, metadata !77, i32 144} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ]
!292 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !188} ; [ DW_TAG_pointer_type ]
!293 = metadata !{i32 144, i32 48, metadata !290, metadata !294}
!294 = metadata !{i32 89, i32 5, metadata !261, null}
!295 = metadata !{i32 786688, metadata !296, metadata !"tmp", metadata !69, i32 145, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!296 = metadata !{i32 786443, metadata !290, i32 144, i32 79, metadata !69, i32 20} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 145, i32 31, metadata !296, metadata !294}
!298 = metadata !{i32 146, i32 9, metadata !296, metadata !294}
!299 = metadata !{i32 90, i32 4, metadata !261, null}
!300 = metadata !{i32 91, i32 4, metadata !212, null}
!301 = metadata !{i32 92, i32 4, metadata !212, null}
!302 = metadata !{i32 95, i32 4, metadata !212, null}
!303 = metadata !{i32 96, i32 4, metadata !212, null}
!304 = metadata !{i32 98, i32 4, metadata !212, null}
!305 = metadata !{i32 100, i32 4, metadata !212, null}
!306 = metadata !{i32 101, i32 8, metadata !307, null}
!307 = metadata !{i32 786443, metadata !212, i32 101, i32 4, metadata !62, i32 18} ; [ DW_TAG_lexical_block ]
!308 = metadata !{i32 101, i32 20, metadata !307, null}
!309 = metadata !{i32 102, i32 5, metadata !310, null}
!310 = metadata !{i32 786443, metadata !307, i32 101, i32 24, metadata !62, i32 19} ; [ DW_TAG_lexical_block ]
!311 = metadata !{i32 107, i32 4, metadata !212, null}
!312 = metadata !{i32 108, i32 4, metadata !212, null}
!313 = metadata !{i32 109, i32 4, metadata !212, null}
!314 = metadata !{i32 110, i32 4, metadata !212, null}
!315 = metadata !{i32 112, i32 1, metadata !198, null}
