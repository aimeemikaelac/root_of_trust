; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_one_db_load/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@results = internal unnamed_addr global [7500 x i1] zeroinitializer, align 16 ; [#uses=2 type=[7500 x i1]*]
@database_size = internal unnamed_addr global i32 0, align 4 ; [#uses=10 type=i32*]
@database = internal global [480000 x i8] zeroinitializer, align 16 ; [#uses=2 type=[480000 x i8]*]
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
  %local_results = alloca [128 x i1], align 16    ; [#uses=2 type=[128 x i1]*]
  call void @llvm.dbg.value(metadata !{i32 %database_index}, i64 0, metadata !68), !dbg !69 ; [debug line = 45:27] [debug variable = database_index]
  call void @llvm.dbg.declare(metadata !{[128 x i1]* %local_results}, metadata !70), !dbg !75 ; [debug line = 49:7] [debug variable = local_results]
  br label %1, !dbg !76                           ; [debug line = 50:6]

; <label>:1                                       ; preds = %2, %0
  %contacts_index = phi i32 [ 0, %0 ], [ %contacts_index.2, %2 ] ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %contacts_index, 128, !dbg !76 ; [#uses=1 type=i1] [debug line = 50:6]
  br i1 %exitcond1, label %.preheader.preheader, label %2, !dbg !76 ; [debug line = 50:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !78                  ; [debug line = 58:6]

; <label>:2                                       ; preds = %1
  %tmp = call fastcc zeroext i1 @compare(i32 %database_index, i32 %contacts_index), !dbg !80 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp.1 = sext i32 %contacts_index to i64, !dbg !80 ; [#uses=1 type=i64] [debug line = 56:35]
  %local_results.addr = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp.1, !dbg !80 ; [#uses=1 type=i1*] [debug line = 56:35]
  store i1 %tmp, i1* %local_results.addr, align 1, !dbg !80 ; [debug line = 56:35]
  %contacts_index.2 = add nsw i32 %contacts_index, 1, !dbg !82 ; [#uses=1 type=i32] [debug line = 50:46]
  call void @llvm.dbg.value(metadata !{i32 %contacts_index.2}, i64 0, metadata !83), !dbg !82 ; [debug line = 50:46] [debug variable = contacts_index]
  br label %1, !dbg !82                           ; [debug line = 50:46]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %contacts_index.1 = phi i32 [ %contacts_index.3, %3 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %matched = phi i1 [ %matched.1, %3 ], [ false, %.preheader.preheader ] ; [#uses=2 type=i1]
  %exitcond = icmp eq i32 %contacts_index.1, 128, !dbg !78 ; [#uses=1 type=i1] [debug line = 58:6]
  br i1 %exitcond, label %4, label %3, !dbg !78   ; [debug line = 58:6]

; <label>:3                                       ; preds = %.preheader
  %tmp.4 = sext i32 %contacts_index.1 to i64, !dbg !84 ; [#uses=1 type=i64] [debug line = 59:3]
  %local_results.addr.1 = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp.4, !dbg !84 ; [#uses=1 type=i1*] [debug line = 59:3]
  %local_results.load = load i1* %local_results.addr.1, align 1, !dbg !84 ; [#uses=2 type=i1] [debug line = 59:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %local_results.load) nounwind
  %matched.1 = or i1 %matched, %local_results.load, !dbg !84 ; [#uses=1 type=i1] [debug line = 59:3]
  call void @llvm.dbg.value(metadata !{i1 %matched.1}, i64 0, metadata !86), !dbg !84 ; [debug line = 59:3] [debug variable = matched]
  %contacts_index.3 = add nsw i32 %contacts_index.1, 1, !dbg !87 ; [#uses=1 type=i32] [debug line = 58:46]
  call void @llvm.dbg.value(metadata !{i32 %contacts_index.3}, i64 0, metadata !83), !dbg !87 ; [debug line = 58:46] [debug variable = contacts_index]
  br label %.preheader, !dbg !87                  ; [debug line = 58:46]

; <label>:4                                       ; preds = %.preheader
  %matched.0.lcssa = phi i1 [ %matched, %.preheader ] ; [#uses=1 type=i1]
  %tmp.3 = sext i32 %database_index to i64, !dbg !88 ; [#uses=1 type=i64] [debug line = 61:2]
  %results.addr = getelementptr inbounds [7500 x i1]* @results, i64 0, i64 %tmp.3, !dbg !88 ; [#uses=1 type=i1*] [debug line = 61:2]
  store i1 %matched.0.lcssa, i1* %results.addr, align 1, !dbg !88 ; [debug line = 61:2]
  ret void, !dbg !89                              ; [debug line = 62:1]
}

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, i8* %contact_in, i8* %database_in, i1* %matched_out, i32* %matched_finished, i32* %error_out, i32* %database_size_out, i32* %contacts_size_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery.str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !90), !dbg !91 ; [debug line = 67:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i8* %contact_in}, i64 0, metadata !92), !dbg !93 ; [debug line = 68:16] [debug variable = contact_in]
  call void @llvm.dbg.value(metadata !{i8* %database_in}, i64 0, metadata !94), !dbg !95 ; [debug line = 69:16] [debug variable = database_in]
  call void @llvm.dbg.value(metadata !{i1* %matched_out}, i64 0, metadata !96), !dbg !97 ; [debug line = 70:7] [debug variable = matched_out]
  call void @llvm.dbg.value(metadata !{i32* %matched_finished}, i64 0, metadata !98), !dbg !99 ; [debug line = 71:7] [debug variable = matched_finished]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !100), !dbg !101 ; [debug line = 72:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %database_size_out}, i64 0, metadata !102), !dbg !103 ; [debug line = 73:7] [debug variable = database_size_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !104), !dbg !105 ; [debug line = 74:7] [debug variable = contacts_size_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %contact_in, i32 64) nounwind, !dbg !106 ; [debug line = 75:3]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %database_in, i32 64) nounwind, !dbg !108 ; [debug line = 75:41]
  call void (...)* @_ssdm_SpecArrayDimSize(i1* %matched_out, i32 7500) nounwind, !dbg !109 ; [debug line = 75:80]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !110 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !111 ; [debug line = 79:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !112 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !113 ; [debug line = 81:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !114 ; [debug line = 82:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !115 ; [debug line = 83:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !116 ; [debug line = 84:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !117 ; [debug line = 85:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !118 ; [debug line = 86:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !119 ; [debug line = 87:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !120 ; [debug line = 88:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %matched_out, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !121 ; [debug line = 89:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %database_in, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !122 ; [debug line = 90:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %contact_in, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !123 ; [debug line = 91:1]
  switch i32 %operation, label %16 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %9
    i32 3, label %14
    i32 4, label %15
  ], !dbg !124                                    ; [debug line = 102:2]

; <label>:1                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !125 ; [debug line = 105:4]
  store i32 0, i32* %error_out, align 4, !dbg !127 ; [debug line = 106:4]
  %contacts_size.load.1 = load i32* @contacts_size, align 4, !dbg !128 ; [#uses=1 type=i32] [debug line = 107:4]
  store i32 %contacts_size.load.1, i32* %contacts_size_out, align 4, !dbg !128 ; [debug line = 107:4]
  %database_size.load.1 = load i32* @database_size, align 4, !dbg !129 ; [#uses=1 type=i32] [debug line = 108:4]
  store i32 %database_size.load.1, i32* %database_size_out, align 4, !dbg !129 ; [debug line = 108:4]
  %contacts_size.load.2 = load i32* @contacts_size, align 4, !dbg !130 ; [#uses=2 type=i32] [debug line = 109:4]
  %tmp = icmp sgt i32 %contacts_size.load.2, 127, !dbg !130 ; [#uses=1 type=i1] [debug line = 109:4]
  br i1 %tmp, label %2, label %3, !dbg !130       ; [debug line = 109:4]

; <label>:2                                       ; preds = %1
  store i32 1, i32* %error_out, align 4, !dbg !131 ; [debug line = 110:5]
  %contacts_size.load.5 = load i32* @contacts_size, align 4, !dbg !133 ; [#uses=1 type=i32] [debug line = 111:5]
  br label %4, !dbg !134                          ; [debug line = 112:4]

; <label>:3                                       ; preds = %1
  %tmp.8 = shl nsw i32 %contacts_size.load.2, 6, !dbg !135 ; [#uses=1 type=i32] [debug line = 113:5]
  %tmp.9 = sext i32 %tmp.8 to i64, !dbg !135      ; [#uses=1 type=i64] [debug line = 113:5]
  %contacts.addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.9, !dbg !135 ; [#uses=1 type=i8*] [debug line = 113:5]
  call fastcc void @_memcpy(i8* %contacts.addr, i8* %contact_in), !dbg !135 ; [debug line = 113:5]
  %contacts_size.load.6 = load i32* @contacts_size, align 4, !dbg !137 ; [#uses=1 type=i32] [debug line = 114:5]
  %tmp.10 = add nsw i32 %contacts_size.load.6, 1, !dbg !137 ; [#uses=2 type=i32] [debug line = 114:5]
  store i32 %tmp.10, i32* @contacts_size, align 4, !dbg !137 ; [debug line = 114:5]
  br label %4

; <label>:4                                       ; preds = %3, %2
  %storemerge1 = phi i32 [ %tmp.10, %3 ], [ %contacts_size.load.5, %2 ] ; [#uses=1 type=i32]
  store i32 %storemerge1, i32* %contacts_size_out, align 4, !dbg !133 ; [debug line = 111:5]
  br label %17, !dbg !138                         ; [debug line = 117:4]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !139 ; [debug line = 120:4]
  store i32 0, i32* %error_out, align 4, !dbg !140 ; [debug line = 121:4]
  %database_size.load.2 = load i32* @database_size, align 4, !dbg !141 ; [#uses=2 type=i32] [debug line = 122:4]
  %tmp.7 = icmp sgt i32 %database_size.load.2, 7499, !dbg !141 ; [#uses=1 type=i1] [debug line = 122:4]
  br i1 %tmp.7, label %6, label %7, !dbg !141     ; [debug line = 122:4]

; <label>:6                                       ; preds = %5
  store i32 2, i32* %error_out, align 4, !dbg !142 ; [debug line = 123:5]
  %database_size.load.6 = load i32* @database_size, align 4, !dbg !144 ; [#uses=1 type=i32] [debug line = 124:5]
  br label %8, !dbg !145                          ; [debug line = 125:4]

; <label>:7                                       ; preds = %5
  %tmp.11 = shl nsw i32 %database_size.load.2, 6, !dbg !146 ; [#uses=1 type=i32] [debug line = 126:5]
  %tmp.12 = sext i32 %tmp.11 to i64, !dbg !146    ; [#uses=1 type=i64] [debug line = 126:5]
  %database.addr = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp.12, !dbg !146 ; [#uses=1 type=i8*] [debug line = 126:5]
  call fastcc void @_memcpy(i8* %database.addr, i8* %database_in), !dbg !146 ; [debug line = 126:5]
  %database_size.load.7 = load i32* @database_size, align 4, !dbg !148 ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.13 = add nsw i32 %database_size.load.7, 1, !dbg !148 ; [#uses=2 type=i32] [debug line = 127:5]
  store i32 %tmp.13, i32* @database_size, align 4, !dbg !148 ; [debug line = 127:5]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %storemerge = phi i32 [ %tmp.13, %7 ], [ %database_size.load.6, %6 ] ; [#uses=1 type=i32]
  store i32 %storemerge, i32* %database_size_out, align 4, !dbg !144 ; [debug line = 124:5]
  br label %17, !dbg !149                         ; [debug line = 130:4]

; <label>:9                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !150 ; [debug line = 133:4]
  store i32 0, i32* %error_out, align 4, !dbg !151 ; [debug line = 134:4]
  %contacts_size.load.3 = load i32* @contacts_size, align 4, !dbg !152 ; [#uses=1 type=i32] [debug line = 135:4]
  store i32 %contacts_size.load.3, i32* %contacts_size_out, align 4, !dbg !152 ; [debug line = 135:4]
  %database_size.load.3 = load i32* @database_size, align 4, !dbg !153 ; [#uses=1 type=i32] [debug line = 136:4]
  store i32 %database_size.load.3, i32* %database_size_out, align 4, !dbg !153 ; [debug line = 136:4]
  br label %10, !dbg !154                         ; [debug line = 141:8]

; <label>:10                                      ; preds = %11, %9
  %database_index = phi i32 [ 0, %9 ], [ %database_index.1, %11 ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %database_index, 7500, !dbg !154 ; [#uses=1 type=i1] [debug line = 141:8]
  br i1 %exitcond2, label %.preheader.preheader, label %11, !dbg !154 ; [debug line = 141:8]

.preheader.preheader:                             ; preds = %10
  br label %.preheader, !dbg !156                 ; [debug line = 158:8]

; <label>:11                                      ; preds = %10
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !158 ; [#uses=1 type=i32] [debug line = 141:69]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !160 ; [debug line = 142:1]
  call fastcc void @match_db_contact(i32 %database_index), !dbg !161 ; [debug line = 156:5]
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !162 ; [#uses=0 type=i32] [debug line = 157:4]
  %database_index.1 = add nsw i32 %database_index, 1, !dbg !163 ; [#uses=1 type=i32] [debug line = 141:51]
  call void @llvm.dbg.value(metadata !{i32 %database_index.1}, i64 0, metadata !164), !dbg !163 ; [debug line = 141:51] [debug variable = database_index]
  br label %10, !dbg !163                         ; [debug line = 141:51]

.preheader:                                       ; preds = %12, %.preheader.preheader
  %i = phi i32 [ %i.1, %12 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 7500, !dbg !156     ; [#uses=1 type=i1] [debug line = 158:8]
  br i1 %exitcond, label %13, label %12, !dbg !156 ; [debug line = 158:8]

; <label>:12                                      ; preds = %.preheader
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !165 ; [#uses=1 type=i32] [debug line = 158:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !167 ; [debug line = 159:1]
  %tmp.15 = sext i32 %i to i64, !dbg !168         ; [#uses=2 type=i64] [debug line = 160:2]
  %results.addr = getelementptr inbounds [7500 x i1]* @results, i64 0, i64 %tmp.15, !dbg !168 ; [#uses=1 type=i1*] [debug line = 160:2]
  %results.load = load i1* %results.addr, align 1, !dbg !168 ; [#uses=2 type=i1] [debug line = 160:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %results.load) nounwind
  %matched_out.addr = getelementptr inbounds i1* %matched_out, i64 %tmp.15, !dbg !168 ; [#uses=1 type=i1*] [debug line = 160:2]
  store i1 %results.load, i1* %matched_out.addr, align 1, !dbg !168 ; [debug line = 160:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !169 ; [#uses=0 type=i32] [debug line = 161:4]
  %i.1 = add nsw i32 %i, 1, !dbg !170             ; [#uses=1 type=i32] [debug line = 158:21]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !171), !dbg !170 ; [debug line = 158:21] [debug variable = i]
  br label %.preheader, !dbg !170                 ; [debug line = 158:21]

; <label>:13                                      ; preds = %.preheader
  store i32 1, i32* %matched_finished, align 4, !dbg !172 ; [debug line = 162:4]
  br label %17, !dbg !173                         ; [debug line = 163:4]

; <label>:14                                      ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !174 ; [debug line = 166:4]
  store i32 0, i32* %error_out, align 4, !dbg !175 ; [debug line = 167:4]
  store i32 0, i32* @database_size, align 4, !dbg !176 ; [debug line = 169:4]
  %contacts_size.load.4 = load i32* @contacts_size, align 4, !dbg !177 ; [#uses=1 type=i32] [debug line = 171:4]
  store i32 %contacts_size.load.4, i32* %contacts_size_out, align 4, !dbg !177 ; [debug line = 171:4]
  %database_size.load.4 = load i32* @database_size, align 4, !dbg !178 ; [#uses=1 type=i32] [debug line = 172:4]
  store i32 %database_size.load.4, i32* %database_size_out, align 4, !dbg !178 ; [debug line = 172:4]
  br label %17, !dbg !179                         ; [debug line = 173:4]

; <label>:15                                      ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !180 ; [debug line = 176:4]
  store i32 0, i32* %error_out, align 4, !dbg !181 ; [debug line = 177:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !182 ; [debug line = 179:4]
  store i32 0, i32* %contacts_size_out, align 4, !dbg !183 ; [debug line = 181:4]
  %database_size.load.5 = load i32* @database_size, align 4, !dbg !184 ; [#uses=1 type=i32] [debug line = 182:4]
  store i32 %database_size.load.5, i32* %database_size_out, align 4, !dbg !184 ; [debug line = 182:4]
  br label %17, !dbg !185                         ; [debug line = 183:4]

; <label>:16                                      ; preds = %0
  %contacts_size.load = load i32* @contacts_size, align 4, !dbg !186 ; [#uses=1 type=i32] [debug line = 194:4]
  store i32 %contacts_size.load, i32* %contacts_size_out, align 4, !dbg !186 ; [debug line = 194:4]
  %database_size.load = load i32* @database_size, align 4, !dbg !187 ; [#uses=1 type=i32] [debug line = 195:4]
  store i32 %database_size.load, i32* %database_size_out, align 4, !dbg !187 ; [debug line = 195:4]
  store i32 0, i32* %matched_finished, align 4, !dbg !188 ; [debug line = 196:4]
  store i32 3, i32* %error_out, align 4, !dbg !189 ; [debug line = 197:4]
  br label %17, !dbg !190                         ; [debug line = 198:4]

; <label>:17                                      ; preds = %16, %15, %14, %13, %8, %4
  ret void, !dbg !191                             ; [debug line = 201:1]
}

; [#uses=1]
define internal fastcc zeroext i1 @compare(i32 %db_index, i32 %contacts_index) nounwind uwtable {
  %results_local = alloca [64 x i1], align 16     ; [#uses=2 type=[64 x i1]*]
  call void @llvm.dbg.value(metadata !{i32 %db_index}, i64 0, metadata !192), !dbg !193 ; [debug line = 22:18] [debug variable = db_index]
  call void @llvm.dbg.value(metadata !{i32 %contacts_index}, i64 0, metadata !194), !dbg !195 ; [debug line = 22:32] [debug variable = contacts_index]
  call void @llvm.dbg.declare(metadata !{[64 x i1]* %results_local}, metadata !196), !dbg !201 ; [debug line = 26:7] [debug variable = results_local]
  %tmp = mul i32 %contacts_index, 64, !dbg !202   ; [#uses=1 type=i32] [debug line = 37:3]
  %tmp.17 = mul i32 %db_index, 64, !dbg !202      ; [#uses=1 type=i32] [debug line = 37:3]
  br label %1, !dbg !205                          ; [debug line = 32:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=5 type=i32]
  %exitcond1 = icmp eq i32 %i, 64, !dbg !205      ; [#uses=1 type=i1] [debug line = 32:6]
  br i1 %exitcond1, label %.preheader.preheader, label %2, !dbg !205 ; [debug line = 32:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !206                 ; [debug line = 39:6]

; <label>:2                                       ; preds = %1
  %tmp.18 = add nsw i32 %i, %tmp, !dbg !202       ; [#uses=1 type=i32] [debug line = 37:3]
  %tmp.19 = sext i32 %tmp.18 to i64, !dbg !202    ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts.addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.19, !dbg !202 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts.load = load i8* %contacts.addr, align 1, !dbg !202 ; [#uses=2 type=i8] [debug line = 37:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %contacts.load) nounwind
  %tmp.20 = add nsw i32 %i, %tmp.17, !dbg !202    ; [#uses=1 type=i32] [debug line = 37:3]
  %tmp.21 = sext i32 %tmp.20 to i64, !dbg !202    ; [#uses=1 type=i64] [debug line = 37:3]
  %database.addr = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp.21, !dbg !202 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database.load = load i8* %database.addr, align 1, !dbg !202 ; [#uses=2 type=i8] [debug line = 37:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %database.load) nounwind
  %tmp.22 = icmp eq i8 %contacts.load, %database.load, !dbg !202 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp.23 = sext i32 %i to i64, !dbg !202         ; [#uses=1 type=i64] [debug line = 37:3]
  %results_local.addr = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp.23, !dbg !202 ; [#uses=1 type=i1*] [debug line = 37:3]
  store i1 %tmp.22, i1* %results_local.addr, align 1, !dbg !202 ; [debug line = 37:3]
  %i.2 = add nsw i32 %i, 1, !dbg !208             ; [#uses=1 type=i32] [debug line = 32:17]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !209), !dbg !208 ; [debug line = 32:17] [debug variable = i]
  br label %1, !dbg !208                          ; [debug line = 32:17]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i.1 = phi i32 [ %i.3, %3 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %found = phi i1 [ %found.1, %3 ], [ true, %.preheader.preheader ] ; [#uses=2 type=i1]
  %exitcond = icmp eq i32 %i.1, 64, !dbg !206     ; [#uses=1 type=i1] [debug line = 39:6]
  br i1 %exitcond, label %4, label %3, !dbg !206  ; [debug line = 39:6]

; <label>:3                                       ; preds = %.preheader
  %tmp.25 = sext i32 %i.1 to i64, !dbg !210       ; [#uses=1 type=i64] [debug line = 40:3]
  %results_local.addr.1 = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp.25, !dbg !210 ; [#uses=1 type=i1*] [debug line = 40:3]
  %results_local.load = load i1* %results_local.addr.1, align 1, !dbg !210 ; [#uses=2 type=i1] [debug line = 40:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %results_local.load) nounwind
  %found.1 = and i1 %found, %results_local.load, !dbg !210 ; [#uses=1 type=i1] [debug line = 40:3]
  call void @llvm.dbg.value(metadata !{i1 %found.1}, i64 0, metadata !212), !dbg !210 ; [debug line = 40:3] [debug variable = found]
  %i.3 = add nsw i32 %i.1, 1, !dbg !213           ; [#uses=1 type=i32] [debug line = 39:17]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !209), !dbg !213 ; [debug line = 39:17] [debug variable = i]
  br label %.preheader, !dbg !213                 ; [debug line = 39:17]

; <label>:4                                       ; preds = %.preheader
  %found.0.lcssa = phi i1 [ %found, %.preheader ] ; [#uses=1 type=i1]
  ret i1 %found.0.lcssa, !dbg !214                ; [debug line = 42:2]
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

; [#uses=6]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
define internal fastcc void @_memcpy(i8* %dest, i8* %src) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %dest}, i64 0, metadata !215), !dbg !216 ; [debug line = 15:29] [debug variable = dest]
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !217), !dbg !218 ; [debug line = 15:50] [debug variable = src]
  br label %1, !dbg !219                          ; [debug line = 17:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %2 ]            ; [#uses=3 type=i32]
  %tmp = icmp slt i32 %i, 64, !dbg !219           ; [#uses=1 type=i1] [debug line = 17:6]
  br i1 %tmp, label %2, label %3, !dbg !219       ; [debug line = 17:6]

; <label>:2                                       ; preds = %1
  %tmp.28 = sext i32 %i to i64, !dbg !222         ; [#uses=2 type=i64] [debug line = 18:3]
  %src.addr = getelementptr inbounds i8* %src, i64 %tmp.28, !dbg !222 ; [#uses=1 type=i8*] [debug line = 18:3]
  %src.load = load i8* %src.addr, align 1, !dbg !222 ; [#uses=2 type=i8] [debug line = 18:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %src.load) nounwind
  %dest.addr = getelementptr inbounds i8* %dest, i64 %tmp.28, !dbg !222 ; [#uses=1 type=i8*] [debug line = 18:3]
  store i8 %src.load, i8* %dest.addr, align 1, !dbg !222 ; [debug line = 18:3]
  %i.4 = add nsw i32 %i, 1, !dbg !224             ; [#uses=1 type=i32] [debug line = 17:21]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !225), !dbg !224 ; [debug line = 17:21] [debug variable = i]
  br label %1, !dbg !224                          ; [debug line = 17:21]

; <label>:3                                       ; preds = %1
  ret void, !dbg !226                             ; [debug line = 20:1]
}

!llvm.dbg.cu = !{!0, !3}
!hls.encrypted.func = !{}
!opencl.kernels = !{!43, !50, !56, !62}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_one_db_load/solution1/.autopilot/db/sha512.pragma.2.c", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !1, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_one_db_load/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !4, metadata !27} ; [ DW_TAG_compile_unit ]
!4 = metadata !{metadata !5}
!5 = metadata !{metadata !6, metadata !15, metadata !19, metadata !22}
!6 = metadata !{i32 786478, i32 0, metadata !7, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !7, i32 15, metadata !8, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 15} ; [ DW_TAG_subprogram ]
!7 = metadata !{i32 786473, metadata !"contact_discovery_axi_one_db_load/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !9, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!9 = metadata !{null, metadata !10, metadata !10, metadata !12}
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !7, metadata !"compare", metadata !"compare", metadata !"_Z7compareii", metadata !7, i32 22, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i32, i32)* @compare, null, null, metadata !13, i32 22} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !18, metadata !12, metadata !12}
!18 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786478, i32 0, metadata !7, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contacti", metadata !7, i32 45, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @match_db_contact, null, null, metadata !13, i32 45} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !12}
!22 = metadata !{i32 786478, i32 0, metadata !7, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhS_PbPiS1_S1_S1_", metadata !7, i32 66, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @contact_discovery, null, null, metadata !13, i32 75} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !12, metadata !10, metadata !10, metadata !25, metadata !26, metadata !26, metadata !26, metadata !26}
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !35, metadata !39}
!29 = metadata !{i32 786484, i32 0, null, metadata !"database_size", metadata !"database_size", metadata !"_ZL13database_size", metadata !7, i32 11, metadata !12, i32 1, i32 1, i32* @database_size} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !7, i32 10, metadata !12, i32 1, i32 1, i32* @contacts_size} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"results", metadata !"results", metadata !"_ZL7results", metadata !7, i32 9, metadata !32, i32 1, i32 1, [7500 x i1]* @results} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 60000, i64 8, i32 0, i32 0, metadata !18, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786465, i64 0, i64 7499}     ; [ DW_TAG_subrange_type ]
!35 = metadata !{i32 786484, i32 0, null, metadata !"database", metadata !"database", metadata !"_ZL8database", metadata !7, i32 7, metadata !36, i32 1, i32 1, [480000 x i8]* @database} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3840000, i64 8, i32 0, i32 0, metadata !11, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 479999}   ; [ DW_TAG_subrange_type ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !7, i32 6, metadata !40, i32 1, i32 1, [8192 x i8]* @contacts} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !11, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 8191}     ; [ DW_TAG_subrange_type ]
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!49 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!50 = metadata !{i1 (i32, i32)* @compare, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !49}
!51 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!52 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!54 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"db_index", metadata !"contacts_index"}
!56 = metadata !{void (i32)* @match_db_contact, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !49}
!57 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!58 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!60 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"database_index"}
!62 = metadata !{void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @contact_discovery, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !49}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!64 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"uchar*", metadata !"_Bool*", metadata !"int*", metadata !"int*", metadata !"int*", metadata !"int*"}
!66 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"database_size_out", metadata !"contacts_size_out"}
!68 = metadata !{i32 786689, metadata !19, metadata !"database_index", metadata !7, i32 16777261, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 45, i32 27, metadata !19, null}
!70 = metadata !{i32 786688, metadata !71, metadata !"local_results", metadata !7, i32 49, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 786443, metadata !19, i32 45, i32 42, metadata !7, i32 8} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !18, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!75 = metadata !{i32 49, i32 7, metadata !71, null}
!76 = metadata !{i32 50, i32 6, metadata !77, null}
!77 = metadata !{i32 786443, metadata !71, i32 50, i32 2, metadata !7, i32 9} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 58, i32 6, metadata !79, null}
!79 = metadata !{i32 786443, metadata !71, i32 58, i32 2, metadata !7, i32 11} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 56, i32 35, metadata !81, null}
!81 = metadata !{i32 786443, metadata !77, i32 50, i32 63, metadata !7, i32 10} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 50, i32 46, metadata !77, null}
!83 = metadata !{i32 786688, metadata !71, metadata !"contacts_index", metadata !7, i32 47, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 59, i32 3, metadata !85, null}
!85 = metadata !{i32 786443, metadata !79, i32 58, i32 63, metadata !7, i32 12} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786688, metadata !71, metadata !"matched", metadata !7, i32 48, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 58, i32 46, metadata !79, null}
!88 = metadata !{i32 61, i32 2, metadata !71, null}
!89 = metadata !{i32 62, i32 1, metadata !71, null}
!90 = metadata !{i32 786689, metadata !22, metadata !"operation", metadata !7, i32 16777283, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 67, i32 6, metadata !22, null}
!92 = metadata !{i32 786689, metadata !22, metadata !"contact_in", metadata !7, i32 33554500, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 68, i32 16, metadata !22, null}
!94 = metadata !{i32 786689, metadata !22, metadata !"database_in", metadata !7, i32 50331717, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 69, i32 16, metadata !22, null}
!96 = metadata !{i32 786689, metadata !22, metadata !"matched_out", metadata !7, i32 67108934, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 70, i32 7, metadata !22, null}
!98 = metadata !{i32 786689, metadata !22, metadata !"matched_finished", metadata !7, i32 83886151, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 71, i32 7, metadata !22, null}
!100 = metadata !{i32 786689, metadata !22, metadata !"error_out", metadata !7, i32 100663368, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 72, i32 7, metadata !22, null}
!102 = metadata !{i32 786689, metadata !22, metadata !"database_size_out", metadata !7, i32 117440585, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 73, i32 7, metadata !22, null}
!104 = metadata !{i32 786689, metadata !22, metadata !"contacts_size_out", metadata !7, i32 134217802, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 74, i32 7, metadata !22, null}
!106 = metadata !{i32 75, i32 3, metadata !107, null}
!107 = metadata !{i32 786443, metadata !22, i32 75, i32 2, metadata !7, i32 13} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 75, i32 41, metadata !107, null}
!109 = metadata !{i32 75, i32 80, metadata !107, null}
!110 = metadata !{i32 78, i32 1, metadata !107, null}
!111 = metadata !{i32 79, i32 1, metadata !107, null}
!112 = metadata !{i32 80, i32 1, metadata !107, null}
!113 = metadata !{i32 81, i32 1, metadata !107, null}
!114 = metadata !{i32 82, i32 1, metadata !107, null}
!115 = metadata !{i32 83, i32 1, metadata !107, null}
!116 = metadata !{i32 84, i32 1, metadata !107, null}
!117 = metadata !{i32 85, i32 1, metadata !107, null}
!118 = metadata !{i32 86, i32 1, metadata !107, null}
!119 = metadata !{i32 87, i32 1, metadata !107, null}
!120 = metadata !{i32 88, i32 1, metadata !107, null}
!121 = metadata !{i32 89, i32 1, metadata !107, null}
!122 = metadata !{i32 90, i32 1, metadata !107, null}
!123 = metadata !{i32 91, i32 1, metadata !107, null}
!124 = metadata !{i32 102, i32 2, metadata !107, null}
!125 = metadata !{i32 105, i32 4, metadata !126, null}
!126 = metadata !{i32 786443, metadata !107, i32 102, i32 19, metadata !7, i32 14} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 106, i32 4, metadata !126, null}
!128 = metadata !{i32 107, i32 4, metadata !126, null}
!129 = metadata !{i32 108, i32 4, metadata !126, null}
!130 = metadata !{i32 109, i32 4, metadata !126, null}
!131 = metadata !{i32 110, i32 5, metadata !132, null}
!132 = metadata !{i32 786443, metadata !126, i32 109, i32 28, metadata !7, i32 15} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 111, i32 5, metadata !132, null}
!134 = metadata !{i32 112, i32 4, metadata !132, null}
!135 = metadata !{i32 113, i32 5, metadata !136, null}
!136 = metadata !{i32 786443, metadata !126, i32 112, i32 10, metadata !7, i32 16} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 114, i32 5, metadata !136, null}
!138 = metadata !{i32 117, i32 4, metadata !126, null}
!139 = metadata !{i32 120, i32 4, metadata !126, null}
!140 = metadata !{i32 121, i32 4, metadata !126, null}
!141 = metadata !{i32 122, i32 4, metadata !126, null}
!142 = metadata !{i32 123, i32 5, metadata !143, null}
!143 = metadata !{i32 786443, metadata !126, i32 122, i32 29, metadata !7, i32 17} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 124, i32 5, metadata !143, null}
!145 = metadata !{i32 125, i32 4, metadata !143, null}
!146 = metadata !{i32 126, i32 5, metadata !147, null}
!147 = metadata !{i32 786443, metadata !126, i32 125, i32 10, metadata !7, i32 18} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 127, i32 5, metadata !147, null}
!149 = metadata !{i32 130, i32 4, metadata !126, null}
!150 = metadata !{i32 133, i32 4, metadata !126, null}
!151 = metadata !{i32 134, i32 4, metadata !126, null}
!152 = metadata !{i32 135, i32 4, metadata !126, null}
!153 = metadata !{i32 136, i32 4, metadata !126, null}
!154 = metadata !{i32 141, i32 8, metadata !155, null}
!155 = metadata !{i32 786443, metadata !126, i32 141, i32 4, metadata !7, i32 19} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 158, i32 8, metadata !157, null}
!157 = metadata !{i32 786443, metadata !126, i32 158, i32 4, metadata !7, i32 21} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 141, i32 69, metadata !159, null}
!159 = metadata !{i32 786443, metadata !155, i32 141, i32 68, metadata !7, i32 20} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 142, i32 1, metadata !159, null}
!161 = metadata !{i32 156, i32 5, metadata !159, null}
!162 = metadata !{i32 157, i32 4, metadata !159, null}
!163 = metadata !{i32 141, i32 51, metadata !155, null}
!164 = metadata !{i32 786688, metadata !107, metadata !"database_index", metadata !7, i32 92, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 158, i32 26, metadata !166, null}
!166 = metadata !{i32 786443, metadata !157, i32 158, i32 25, metadata !7, i32 22} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 159, i32 1, metadata !166, null}
!168 = metadata !{i32 160, i32 2, metadata !166, null}
!169 = metadata !{i32 161, i32 4, metadata !166, null}
!170 = metadata !{i32 158, i32 21, metadata !157, null}
!171 = metadata !{i32 786688, metadata !107, metadata !"i", metadata !7, i32 92, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 162, i32 4, metadata !126, null}
!173 = metadata !{i32 163, i32 4, metadata !126, null}
!174 = metadata !{i32 166, i32 4, metadata !126, null}
!175 = metadata !{i32 167, i32 4, metadata !126, null}
!176 = metadata !{i32 169, i32 4, metadata !126, null}
!177 = metadata !{i32 171, i32 4, metadata !126, null}
!178 = metadata !{i32 172, i32 4, metadata !126, null}
!179 = metadata !{i32 173, i32 4, metadata !126, null}
!180 = metadata !{i32 176, i32 4, metadata !126, null}
!181 = metadata !{i32 177, i32 4, metadata !126, null}
!182 = metadata !{i32 179, i32 4, metadata !126, null}
!183 = metadata !{i32 181, i32 4, metadata !126, null}
!184 = metadata !{i32 182, i32 4, metadata !126, null}
!185 = metadata !{i32 183, i32 4, metadata !126, null}
!186 = metadata !{i32 194, i32 4, metadata !126, null}
!187 = metadata !{i32 195, i32 4, metadata !126, null}
!188 = metadata !{i32 196, i32 4, metadata !126, null}
!189 = metadata !{i32 197, i32 4, metadata !126, null}
!190 = metadata !{i32 198, i32 4, metadata !126, null}
!191 = metadata !{i32 201, i32 1, metadata !107, null}
!192 = metadata !{i32 786689, metadata !15, metadata !"db_index", metadata !7, i32 16777238, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 22, i32 18, metadata !15, null}
!194 = metadata !{i32 786689, metadata !15, metadata !"contacts_index", metadata !7, i32 33554454, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 22, i32 32, metadata !15, null}
!196 = metadata !{i32 786688, metadata !197, metadata !"results_local", metadata !7, i32 26, metadata !198, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 786443, metadata !15, i32 22, i32 47, metadata !7, i32 3} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !18, metadata !199, i32 0, i32 0} ; [ DW_TAG_array_type ]
!199 = metadata !{metadata !200}
!200 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!201 = metadata !{i32 26, i32 7, metadata !197, null}
!202 = metadata !{i32 37, i32 3, metadata !203, null}
!203 = metadata !{i32 786443, metadata !204, i32 32, i32 21, metadata !7, i32 5} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 786443, metadata !197, i32 32, i32 2, metadata !7, i32 4} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 32, i32 6, metadata !204, null}
!206 = metadata !{i32 39, i32 6, metadata !207, null}
!207 = metadata !{i32 786443, metadata !197, i32 39, i32 2, metadata !7, i32 6} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 32, i32 17, metadata !204, null}
!209 = metadata !{i32 786688, metadata !197, metadata !"i", metadata !7, i32 24, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 40, i32 3, metadata !211, null}
!211 = metadata !{i32 786443, metadata !207, i32 39, i32 21, metadata !7, i32 7} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 786688, metadata !197, metadata !"found", metadata !7, i32 25, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 39, i32 17, metadata !207, null}
!214 = metadata !{i32 42, i32 2, metadata !197, null}
!215 = metadata !{i32 786689, metadata !6, metadata !"dest", metadata !7, i32 16777231, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 15, i32 29, metadata !6, null}
!217 = metadata !{i32 786689, metadata !6, metadata !"src", metadata !7, i32 33554447, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!218 = metadata !{i32 15, i32 50, metadata !6, null}
!219 = metadata !{i32 17, i32 6, metadata !220, null}
!220 = metadata !{i32 786443, metadata !221, i32 17, i32 2, metadata !7, i32 1} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 786443, metadata !6, i32 15, i32 66, metadata !7, i32 0} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 18, i32 3, metadata !223, null}
!223 = metadata !{i32 786443, metadata !220, i32 17, i32 25, metadata !7, i32 2} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 17, i32 21, metadata !220, null}
!225 = metadata !{i32 786688, metadata !221, metadata !"i", metadata !7, i32 16, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 20, i32 1, metadata !221, null}
