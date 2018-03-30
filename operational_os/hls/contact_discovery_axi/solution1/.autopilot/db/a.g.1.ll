; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@database_size = internal unnamed_addr global i32 0, align 4 ; [#uses=11 type=i32*]
@database = internal global [19200 x i8] zeroinitializer, align 16 ; [#uses=2 type=[19200 x i8]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=9 type=i32*]
@contacts = internal global [8192 x i8] zeroinitializer, align 16 ; [#uses=2 type=[8192 x i8]*]
@contact_discovery.str = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@.str8 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"MuxnS\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, i8* %contact_in, i8* %database_in, i1* %matched_out, i32* %matched_finished, i32* %error_out, i32* %database_size_out, i32* %contacts_size_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery.str) nounwind
  %results = alloca [300 x i1], align 16          ; [#uses=2 type=[300 x i1]*]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !55), !dbg !56 ; [debug line = 32:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i8* %contact_in}, i64 0, metadata !57), !dbg !58 ; [debug line = 33:16] [debug variable = contact_in]
  call void @llvm.dbg.value(metadata !{i8* %database_in}, i64 0, metadata !59), !dbg !60 ; [debug line = 34:16] [debug variable = database_in]
  call void @llvm.dbg.value(metadata !{i1* %matched_out}, i64 0, metadata !61), !dbg !62 ; [debug line = 35:7] [debug variable = matched_out]
  call void @llvm.dbg.value(metadata !{i32* %matched_finished}, i64 0, metadata !63), !dbg !64 ; [debug line = 36:7] [debug variable = matched_finished]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !65), !dbg !66 ; [debug line = 37:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %database_size_out}, i64 0, metadata !67), !dbg !68 ; [debug line = 38:7] [debug variable = database_size_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !69), !dbg !70 ; [debug line = 39:7] [debug variable = contacts_size_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %contact_in, i32 64) nounwind, !dbg !71 ; [debug line = 40:3]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %database_in, i32 64) nounwind, !dbg !73 ; [debug line = 40:41]
  call void (...)* @_ssdm_SpecArrayDimSize(i1* %matched_out, i32 300) nounwind, !dbg !74 ; [debug line = 40:80]
  call void (...)* @_ssdm_op_SpecInterface(i1* %matched_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !76 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !77 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !78 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !79 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !80 ; [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !81 ; [debug line = 47:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !82 ; [debug line = 48:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !83 ; [debug line = 49:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !84 ; [debug line = 50:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !85 ; [debug line = 51:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !86 ; [debug line = 52:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %matched_out, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !87 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %database_in, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !88 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %contact_in, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !89 ; [debug line = 55:1]
  call void @llvm.dbg.declare(metadata !{[300 x i1]* %results}, metadata !90), !dbg !94 ; [debug line = 57:7] [debug variable = results]
  switch i32 %operation, label %19 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %9
    i32 3, label %17
    i32 4, label %18
  ], !dbg !95                                     ; [debug line = 67:2]

; <label>:1                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !96 ; [debug line = 70:4]
  store i32 0, i32* %error_out, align 4, !dbg !98 ; [debug line = 71:4]
  %contacts_size.load.1 = load i32* @contacts_size, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 72:4]
  store i32 %contacts_size.load.1, i32* %contacts_size_out, align 4, !dbg !99 ; [debug line = 72:4]
  %database_size.load.1 = load i32* @database_size, align 4, !dbg !100 ; [#uses=1 type=i32] [debug line = 73:4]
  store i32 %database_size.load.1, i32* %database_size_out, align 4, !dbg !100 ; [debug line = 73:4]
  %contacts_size.load.2 = load i32* @contacts_size, align 4, !dbg !101 ; [#uses=2 type=i32] [debug line = 74:4]
  %tmp = icmp sgt i32 %contacts_size.load.2, 127, !dbg !101 ; [#uses=1 type=i1] [debug line = 74:4]
  br i1 %tmp, label %2, label %3, !dbg !101       ; [debug line = 74:4]

; <label>:2                                       ; preds = %1
  store i32 1, i32* %error_out, align 4, !dbg !102 ; [debug line = 75:5]
  %contacts_size.load.5 = load i32* @contacts_size, align 4, !dbg !104 ; [#uses=1 type=i32] [debug line = 76:5]
  br label %4, !dbg !105                          ; [debug line = 77:4]

; <label>:3                                       ; preds = %1
  %tmp.2 = shl nsw i32 %contacts_size.load.2, 6, !dbg !106 ; [#uses=1 type=i32] [debug line = 78:5]
  %tmp.3 = sext i32 %tmp.2 to i64, !dbg !106      ; [#uses=1 type=i64] [debug line = 78:5]
  %contacts.addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.3, !dbg !106 ; [#uses=1 type=i8*] [debug line = 78:5]
  call fastcc void @_memcpy(i8* %contacts.addr, i8* %contact_in), !dbg !106 ; [debug line = 78:5]
  %contacts_size.load.6 = load i32* @contacts_size, align 4, !dbg !108 ; [#uses=1 type=i32] [debug line = 79:5]
  %tmp.4 = add nsw i32 %contacts_size.load.6, 1, !dbg !108 ; [#uses=2 type=i32] [debug line = 79:5]
  store i32 %tmp.4, i32* @contacts_size, align 4, !dbg !108 ; [debug line = 79:5]
  br label %4

; <label>:4                                       ; preds = %3, %2
  %storemerge1 = phi i32 [ %tmp.4, %3 ], [ %contacts_size.load.5, %2 ] ; [#uses=1 type=i32]
  store i32 %storemerge1, i32* %contacts_size_out, align 4, !dbg !104 ; [debug line = 76:5]
  br label %20, !dbg !109                         ; [debug line = 82:4]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !110 ; [debug line = 85:4]
  store i32 0, i32* %error_out, align 4, !dbg !111 ; [debug line = 86:4]
  %database_size.load.2 = load i32* @database_size, align 4, !dbg !112 ; [#uses=2 type=i32] [debug line = 87:4]
  %tmp.1 = icmp sgt i32 %database_size.load.2, 299, !dbg !112 ; [#uses=1 type=i1] [debug line = 87:4]
  br i1 %tmp.1, label %6, label %7, !dbg !112     ; [debug line = 87:4]

; <label>:6                                       ; preds = %5
  store i32 2, i32* %error_out, align 4, !dbg !113 ; [debug line = 88:5]
  %database_size.load.6 = load i32* @database_size, align 4, !dbg !115 ; [#uses=1 type=i32] [debug line = 89:5]
  br label %8, !dbg !116                          ; [debug line = 90:4]

; <label>:7                                       ; preds = %5
  %tmp.5 = shl nsw i32 %database_size.load.2, 6, !dbg !117 ; [#uses=1 type=i32] [debug line = 91:5]
  %tmp.6 = sext i32 %tmp.5 to i64, !dbg !117      ; [#uses=1 type=i64] [debug line = 91:5]
  %database.addr = getelementptr inbounds [19200 x i8]* @database, i64 0, i64 %tmp.6, !dbg !117 ; [#uses=1 type=i8*] [debug line = 91:5]
  call fastcc void @_memcpy(i8* %database.addr, i8* %database_in), !dbg !117 ; [debug line = 91:5]
  %database_size.load.7 = load i32* @database_size, align 4, !dbg !119 ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.7 = add nsw i32 %database_size.load.7, 1, !dbg !119 ; [#uses=2 type=i32] [debug line = 92:5]
  store i32 %tmp.7, i32* @database_size, align 4, !dbg !119 ; [debug line = 92:5]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %storemerge = phi i32 [ %tmp.7, %7 ], [ %database_size.load.6, %6 ] ; [#uses=1 type=i32]
  store i32 %storemerge, i32* %database_size_out, align 4, !dbg !115 ; [debug line = 89:5]
  br label %20, !dbg !120                         ; [debug line = 95:4]

; <label>:9                                       ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !121 ; [debug line = 98:4]
  store i32 0, i32* %error_out, align 4, !dbg !122 ; [debug line = 99:4]
  %contacts_size.load.3 = load i32* @contacts_size, align 4, !dbg !123 ; [#uses=1 type=i32] [debug line = 100:4]
  store i32 %contacts_size.load.3, i32* %contacts_size_out, align 4, !dbg !123 ; [debug line = 100:4]
  %database_size.load.3 = load i32* @database_size, align 4, !dbg !124 ; [#uses=1 type=i32] [debug line = 101:4]
  store i32 %database_size.load.3, i32* %database_size_out, align 4, !dbg !124 ; [debug line = 101:4]
  br label %10, !dbg !125                         ; [debug line = 102:8]

; <label>:10                                      ; preds = %14, %9
  %database_index = phi i32 [ 0, %9 ], [ %database_index.1, %14 ] ; [#uses=4 type=i32]
  %database_size.load.8 = load i32* @database_size, align 4, !dbg !125 ; [#uses=1 type=i32] [debug line = 102:8]
  %tmp.8 = icmp slt i32 %database_index, %database_size.load.8, !dbg !125 ; [#uses=1 type=i1] [debug line = 102:8]
  br i1 %tmp.8, label %11, label %.preheader.preheader, !dbg !125 ; [debug line = 102:8]

.preheader.preheader:                             ; preds = %10
  br label %.preheader, !dbg !127                 ; [debug line = 125:8]

; <label>:11                                      ; preds = %10
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !129 ; [#uses=1 type=i32] [debug line = 102:78]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !131 ; [debug line = 103:1]
  br label %12, !dbg !132                         ; [debug line = 118:9]

; <label>:12                                      ; preds = %13, %11
  %contacts_index = phi i32 [ 0, %11 ], [ %contacts_index.1, %13 ] ; [#uses=3 type=i32]
  %matched = phi i1 [ false, %11 ], [ %matched.1, %13 ] ; [#uses=2 type=i1]
  %exitcond2 = icmp eq i32 %contacts_index, 128, !dbg !132 ; [#uses=1 type=i1] [debug line = 118:9]
  br i1 %exitcond2, label %14, label %13, !dbg !132 ; [debug line = 118:9]

; <label>:13                                      ; preds = %12
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !134 ; [#uses=1 type=i32] [debug line = 118:67]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !136 ; [debug line = 119:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !137 ; [debug line = 120:1]
  %tmp.11 = call fastcc zeroext i1 @compare(i32 %database_index, i32 %contacts_index), !dbg !138 ; [#uses=1 type=i1] [debug line = 121:13]
  %matched.1 = or i1 %matched, %tmp.11, !dbg !138 ; [#uses=1 type=i1] [debug line = 121:13]
  call void @llvm.dbg.value(metadata !{i1 %matched.1}, i64 0, metadata !139), !dbg !138 ; [debug line = 121:13] [debug variable = matched]
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !140 ; [#uses=0 type=i32] [debug line = 122:5]
  %contacts_index.1 = add nsw i32 %contacts_index, 1, !dbg !141 ; [#uses=1 type=i32] [debug line = 118:49]
  call void @llvm.dbg.value(metadata !{i32 %contacts_index.1}, i64 0, metadata !142), !dbg !141 ; [debug line = 118:49] [debug variable = contacts_index]
  br label %12, !dbg !141                         ; [debug line = 118:49]

; <label>:14                                      ; preds = %12
  %matched.0.lcssa = phi i1 [ %matched, %12 ]     ; [#uses=1 type=i1]
  %tmp.9 = sext i32 %database_index to i64, !dbg !143 ; [#uses=1 type=i64] [debug line = 123:5]
  %results.addr = getelementptr inbounds [300 x i1]* %results, i64 0, i64 %tmp.9, !dbg !143 ; [#uses=1 type=i1*] [debug line = 123:5]
  store i1 %matched.0.lcssa, i1* %results.addr, align 1, !dbg !143 ; [debug line = 123:5]
  %rend6 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !144 ; [#uses=0 type=i32] [debug line = 124:4]
  %database_index.1 = add nsw i32 %database_index, 1, !dbg !145 ; [#uses=1 type=i32] [debug line = 102:60]
  call void @llvm.dbg.value(metadata !{i32 %database_index.1}, i64 0, metadata !146), !dbg !145 ; [debug line = 102:60] [debug variable = database_index]
  br label %10, !dbg !145                         ; [debug line = 102:60]

.preheader:                                       ; preds = %15, %.preheader.preheader
  %i = phi i32 [ %i.1, %15 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 300, !dbg !127      ; [#uses=1 type=i1] [debug line = 125:8]
  br i1 %exitcond, label %16, label %15, !dbg !127 ; [debug line = 125:8]

; <label>:15                                      ; preds = %.preheader
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !147 ; [#uses=1 type=i32] [debug line = 125:25]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !149 ; [debug line = 126:1]
  %tmp.14 = sext i32 %i to i64, !dbg !150         ; [#uses=2 type=i64] [debug line = 127:2]
  %results.addr.1 = getelementptr inbounds [300 x i1]* %results, i64 0, i64 %tmp.14, !dbg !150 ; [#uses=1 type=i1*] [debug line = 127:2]
  %results.load = load i1* %results.addr.1, align 1, !dbg !150 ; [#uses=2 type=i1] [debug line = 127:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %results.load) nounwind
  %matched_out.addr = getelementptr inbounds i1* %matched_out, i64 %tmp.14, !dbg !150 ; [#uses=1 type=i1*] [debug line = 127:2]
  store i1 %results.load, i1* %matched_out.addr, align 1, !dbg !150 ; [debug line = 127:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !151 ; [#uses=0 type=i32] [debug line = 128:4]
  %i.1 = add nsw i32 %i, 1, !dbg !152             ; [#uses=1 type=i32] [debug line = 125:20]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !153), !dbg !152 ; [debug line = 125:20] [debug variable = i]
  br label %.preheader, !dbg !152                 ; [debug line = 125:20]

; <label>:16                                      ; preds = %.preheader
  store i32 1, i32* %matched_finished, align 4, !dbg !154 ; [debug line = 129:4]
  br label %20, !dbg !155                         ; [debug line = 130:4]

; <label>:17                                      ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !156 ; [debug line = 133:4]
  store i32 0, i32* %error_out, align 4, !dbg !157 ; [debug line = 134:4]
  store i32 0, i32* @database_size, align 4, !dbg !158 ; [debug line = 136:4]
  %contacts_size.load.4 = load i32* @contacts_size, align 4, !dbg !159 ; [#uses=1 type=i32] [debug line = 138:4]
  store i32 %contacts_size.load.4, i32* %contacts_size_out, align 4, !dbg !159 ; [debug line = 138:4]
  %database_size.load.4 = load i32* @database_size, align 4, !dbg !160 ; [#uses=1 type=i32] [debug line = 139:4]
  store i32 %database_size.load.4, i32* %database_size_out, align 4, !dbg !160 ; [debug line = 139:4]
  br label %20, !dbg !161                         ; [debug line = 140:4]

; <label>:18                                      ; preds = %0
  store i32 0, i32* %matched_finished, align 4, !dbg !162 ; [debug line = 143:4]
  store i32 0, i32* %error_out, align 4, !dbg !163 ; [debug line = 144:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !164 ; [debug line = 146:4]
  store i32 0, i32* %contacts_size_out, align 4, !dbg !165 ; [debug line = 148:4]
  %database_size.load.5 = load i32* @database_size, align 4, !dbg !166 ; [#uses=1 type=i32] [debug line = 149:4]
  store i32 %database_size.load.5, i32* %database_size_out, align 4, !dbg !166 ; [debug line = 149:4]
  br label %20, !dbg !167                         ; [debug line = 150:4]

; <label>:19                                      ; preds = %0
  %contacts_size.load = load i32* @contacts_size, align 4, !dbg !168 ; [#uses=1 type=i32] [debug line = 161:4]
  store i32 %contacts_size.load, i32* %contacts_size_out, align 4, !dbg !168 ; [debug line = 161:4]
  %database_size.load = load i32* @database_size, align 4, !dbg !169 ; [#uses=1 type=i32] [debug line = 162:4]
  store i32 %database_size.load, i32* %database_size_out, align 4, !dbg !169 ; [debug line = 162:4]
  store i32 0, i32* %matched_finished, align 4, !dbg !170 ; [debug line = 163:4]
  store i32 3, i32* %error_out, align 4, !dbg !171 ; [debug line = 164:4]
  br label %20, !dbg !172                         ; [debug line = 165:4]

; <label>:20                                      ; preds = %19, %18, %17, %16, %8, %4
  ret void, !dbg !173                             ; [debug line = 168:1]
}

; [#uses=1]
define internal fastcc zeroext i1 @compare(i32 %db_index, i32 %contacts_index) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %db_index}, i64 0, metadata !174), !dbg !175 ; [debug line = 20:18] [debug variable = db_index]
  call void @llvm.dbg.value(metadata !{i32 %contacts_index}, i64 0, metadata !176), !dbg !177 ; [debug line = 20:32] [debug variable = contacts_index]
  %tmp = mul i32 %contacts_index, 64, !dbg !178   ; [#uses=1 type=i32] [debug line = 26:2]
  %tmp.16 = mul i32 %db_index, 64, !dbg !178      ; [#uses=1 type=i32] [debug line = 26:2]
  br label %1, !dbg !182                          ; [debug line = 23:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=4 type=i32]
  %found = phi i1 [ true, %0 ], [ %found.1, %2 ]  ; [#uses=2 type=i1]
  %exitcond = icmp eq i32 %i, 64, !dbg !182       ; [#uses=1 type=i1] [debug line = 23:6]
  br i1 %exitcond, label %3, label %2, !dbg !182  ; [debug line = 23:6]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !183 ; [#uses=1 type=i32] [debug line = 23:22]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !184 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !185 ; [debug line = 25:1]
  %tmp.17 = add nsw i32 %i, %tmp, !dbg !178       ; [#uses=1 type=i32] [debug line = 26:2]
  %tmp.18 = sext i32 %tmp.17 to i64, !dbg !178    ; [#uses=1 type=i64] [debug line = 26:2]
  %contacts.addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp.18, !dbg !178 ; [#uses=1 type=i8*] [debug line = 26:2]
  %contacts.load = load i8* %contacts.addr, align 1, !dbg !178 ; [#uses=2 type=i8] [debug line = 26:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %contacts.load) nounwind
  %tmp.19 = add nsw i32 %i, %tmp.16, !dbg !178    ; [#uses=1 type=i32] [debug line = 26:2]
  %tmp.20 = sext i32 %tmp.19 to i64, !dbg !178    ; [#uses=1 type=i64] [debug line = 26:2]
  %database.addr = getelementptr inbounds [19200 x i8]* @database, i64 0, i64 %tmp.20, !dbg !178 ; [#uses=1 type=i8*] [debug line = 26:2]
  %database.load = load i8* %database.addr, align 1, !dbg !178 ; [#uses=2 type=i8] [debug line = 26:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %database.load) nounwind
  %tmp.21 = icmp eq i8 %contacts.load, %database.load, !dbg !178 ; [#uses=1 type=i1] [debug line = 26:2]
  %found.1 = and i1 %found, %tmp.21, !dbg !178    ; [#uses=1 type=i1] [debug line = 26:2]
  call void @llvm.dbg.value(metadata !{i1 %found.1}, i64 0, metadata !186), !dbg !178 ; [debug line = 26:2] [debug variable = found]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !187 ; [#uses=0 type=i32] [debug line = 27:2]
  %i.2 = add nsw i32 %i, 1, !dbg !188             ; [#uses=1 type=i32] [debug line = 23:17]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !189), !dbg !188 ; [debug line = 23:17] [debug variable = i]
  br label %1, !dbg !188                          ; [debug line = 23:17]

; <label>:3                                       ; preds = %1
  %found.0.lcssa = phi i1 [ %found, %1 ]          ; [#uses=1 type=i1]
  ret i1 %found.0.lcssa, !dbg !190                ; [debug line = 28:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare void @_ssdm_op_SpecResourceLimit(...) nounwind

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=15]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
define internal fastcc void @_memcpy(i8* %dest, i8* %src) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %dest}, i64 0, metadata !191), !dbg !192 ; [debug line = 13:29] [debug variable = dest]
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !193), !dbg !194 ; [debug line = 13:50] [debug variable = src]
  br label %1, !dbg !195                          ; [debug line = 15:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.3, %2 ]            ; [#uses=3 type=i32]
  %tmp = icmp slt i32 %i, 64, !dbg !195           ; [#uses=1 type=i1] [debug line = 15:6]
  br i1 %tmp, label %2, label %3, !dbg !195       ; [debug line = 15:6]

; <label>:2                                       ; preds = %1
  %tmp.24 = sext i32 %i to i64, !dbg !198         ; [#uses=2 type=i64] [debug line = 16:3]
  %src.addr = getelementptr inbounds i8* %src, i64 %tmp.24, !dbg !198 ; [#uses=1 type=i8*] [debug line = 16:3]
  %src.load = load i8* %src.addr, align 1, !dbg !198 ; [#uses=2 type=i8] [debug line = 16:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %src.load) nounwind
  %dest.addr = getelementptr inbounds i8* %dest, i64 %tmp.24, !dbg !198 ; [#uses=1 type=i8*] [debug line = 16:3]
  store i8 %src.load, i8* %dest.addr, align 1, !dbg !198 ; [debug line = 16:3]
  %i.3 = add nsw i32 %i, 1, !dbg !200             ; [#uses=1 type=i32] [debug line = 15:21]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !201), !dbg !200 ; [debug line = 15:21] [debug variable = i]
  br label %1, !dbg !200                          ; [debug line = 15:21]

; <label>:3                                       ; preds = %1
  ret void, !dbg !202                             ; [debug line = 18:1]
}

!llvm.dbg.cu = !{!0, !3}
!hls.encrypted.func = !{}
!opencl.kernels = !{!36, !43, !49}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/sha512.pragma.2.c", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !1, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi/solution1/.autopilot/db/contact_discovery.pragma.2.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !4, metadata !24} ; [ DW_TAG_compile_unit ]
!4 = metadata !{metadata !5}
!5 = metadata !{metadata !6, metadata !15, metadata !19}
!6 = metadata !{i32 786478, i32 0, metadata !7, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !7, i32 13, metadata !8, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 13} ; [ DW_TAG_subprogram ]
!7 = metadata !{i32 786473, metadata !"contact_discovery_axi/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !9, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!9 = metadata !{null, metadata !10, metadata !10, metadata !12}
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !7, metadata !"compare", metadata !"compare", metadata !"_Z7compareii", metadata !7, i32 20, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i32, i32)* @compare, null, null, metadata !13, i32 20} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !18, metadata !12, metadata !12}
!18 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786478, i32 0, metadata !7, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhS_PbPiS1_S1_S1_", metadata !7, i32 31, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @contact_discovery, null, null, metadata !13, i32 40} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !12, metadata !10, metadata !10, metadata !22, metadata !23, metadata !23, metadata !23, metadata !23}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !32}
!26 = metadata !{i32 786484, i32 0, null, metadata !"database_size", metadata !"database_size", metadata !"_ZL13database_size", metadata !7, i32 9, metadata !12, i32 1, i32 1, i32* @database_size} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"contacts_size", metadata !"contacts_size", metadata !"_ZL13contacts_size", metadata !7, i32 8, metadata !12, i32 1, i32 1, i32* @contacts_size} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"database", metadata !"database", metadata !"_ZL8database", metadata !7, i32 6, metadata !29, i32 1, i32 1, [19200 x i8]* @database} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 153600, i64 8, i32 0, i32 0, metadata !11, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 19199}    ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, null, metadata !"contacts", metadata !"contacts", metadata !"_ZL8contacts", metadata !7, i32 5, metadata !33, i32 1, i32 1, [8192 x i8]* @contacts} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !11, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 8191}     ; [ DW_TAG_subrange_type ]
!36 = metadata !{null, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!38 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!42 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!43 = metadata !{i1 (i32, i32)* @compare, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !42}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"db_index", metadata !"contacts_index"}
!49 = metadata !{void (i32, i8*, i8*, i1*, i32*, i32*, i32*, i32*)* @contact_discovery, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !42}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!51 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"uchar*", metadata !"_Bool*", metadata !"int*", metadata !"int*", metadata !"int*", metadata !"int*"}
!53 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"database_size_out", metadata !"contacts_size_out"}
!55 = metadata !{i32 786689, metadata !19, metadata !"operation", metadata !7, i32 16777248, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 32, i32 6, metadata !19, null}
!57 = metadata !{i32 786689, metadata !19, metadata !"contact_in", metadata !7, i32 33554465, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 33, i32 16, metadata !19, null}
!59 = metadata !{i32 786689, metadata !19, metadata !"database_in", metadata !7, i32 50331682, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 34, i32 16, metadata !19, null}
!61 = metadata !{i32 786689, metadata !19, metadata !"matched_out", metadata !7, i32 67108899, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 35, i32 7, metadata !19, null}
!63 = metadata !{i32 786689, metadata !19, metadata !"matched_finished", metadata !7, i32 83886116, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 36, i32 7, metadata !19, null}
!65 = metadata !{i32 786689, metadata !19, metadata !"error_out", metadata !7, i32 100663333, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 37, i32 7, metadata !19, null}
!67 = metadata !{i32 786689, metadata !19, metadata !"database_size_out", metadata !7, i32 117440550, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 38, i32 7, metadata !19, null}
!69 = metadata !{i32 786689, metadata !19, metadata !"contacts_size_out", metadata !7, i32 134217767, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 39, i32 7, metadata !19, null}
!71 = metadata !{i32 40, i32 3, metadata !72, null}
!72 = metadata !{i32 786443, metadata !19, i32 40, i32 2, metadata !7, i32 6} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 40, i32 41, metadata !72, null}
!74 = metadata !{i32 40, i32 80, metadata !72, null}
!75 = metadata !{i32 41, i32 1, metadata !72, null}
!76 = metadata !{i32 42, i32 1, metadata !72, null}
!77 = metadata !{i32 43, i32 1, metadata !72, null}
!78 = metadata !{i32 44, i32 1, metadata !72, null}
!79 = metadata !{i32 45, i32 1, metadata !72, null}
!80 = metadata !{i32 46, i32 1, metadata !72, null}
!81 = metadata !{i32 47, i32 1, metadata !72, null}
!82 = metadata !{i32 48, i32 1, metadata !72, null}
!83 = metadata !{i32 49, i32 1, metadata !72, null}
!84 = metadata !{i32 50, i32 1, metadata !72, null}
!85 = metadata !{i32 51, i32 1, metadata !72, null}
!86 = metadata !{i32 52, i32 1, metadata !72, null}
!87 = metadata !{i32 53, i32 1, metadata !72, null}
!88 = metadata !{i32 54, i32 1, metadata !72, null}
!89 = metadata !{i32 55, i32 1, metadata !72, null}
!90 = metadata !{i32 786688, metadata !72, metadata !"results", metadata !7, i32 57, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !18, metadata !92, i32 0, i32 0} ; [ DW_TAG_array_type ]
!92 = metadata !{metadata !93}
!93 = metadata !{i32 786465, i64 0, i64 299}      ; [ DW_TAG_subrange_type ]
!94 = metadata !{i32 57, i32 7, metadata !72, null}
!95 = metadata !{i32 67, i32 2, metadata !72, null}
!96 = metadata !{i32 70, i32 4, metadata !97, null}
!97 = metadata !{i32 786443, metadata !72, i32 67, i32 19, metadata !7, i32 7} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 71, i32 4, metadata !97, null}
!99 = metadata !{i32 72, i32 4, metadata !97, null}
!100 = metadata !{i32 73, i32 4, metadata !97, null}
!101 = metadata !{i32 74, i32 4, metadata !97, null}
!102 = metadata !{i32 75, i32 5, metadata !103, null}
!103 = metadata !{i32 786443, metadata !97, i32 74, i32 28, metadata !7, i32 8} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 76, i32 5, metadata !103, null}
!105 = metadata !{i32 77, i32 4, metadata !103, null}
!106 = metadata !{i32 78, i32 5, metadata !107, null}
!107 = metadata !{i32 786443, metadata !97, i32 77, i32 10, metadata !7, i32 9} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 79, i32 5, metadata !107, null}
!109 = metadata !{i32 82, i32 4, metadata !97, null}
!110 = metadata !{i32 85, i32 4, metadata !97, null}
!111 = metadata !{i32 86, i32 4, metadata !97, null}
!112 = metadata !{i32 87, i32 4, metadata !97, null}
!113 = metadata !{i32 88, i32 5, metadata !114, null}
!114 = metadata !{i32 786443, metadata !97, i32 87, i32 28, metadata !7, i32 10} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 89, i32 5, metadata !114, null}
!116 = metadata !{i32 90, i32 4, metadata !114, null}
!117 = metadata !{i32 91, i32 5, metadata !118, null}
!118 = metadata !{i32 786443, metadata !97, i32 90, i32 10, metadata !7, i32 11} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 92, i32 5, metadata !118, null}
!120 = metadata !{i32 95, i32 4, metadata !97, null}
!121 = metadata !{i32 98, i32 4, metadata !97, null}
!122 = metadata !{i32 99, i32 4, metadata !97, null}
!123 = metadata !{i32 100, i32 4, metadata !97, null}
!124 = metadata !{i32 101, i32 4, metadata !97, null}
!125 = metadata !{i32 102, i32 8, metadata !126, null}
!126 = metadata !{i32 786443, metadata !97, i32 102, i32 4, metadata !7, i32 12} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 125, i32 8, metadata !128, null}
!128 = metadata !{i32 786443, metadata !97, i32 125, i32 4, metadata !7, i32 16} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 102, i32 78, metadata !130, null}
!130 = metadata !{i32 786443, metadata !126, i32 102, i32 77, metadata !7, i32 13} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 103, i32 1, metadata !130, null}
!132 = metadata !{i32 118, i32 9, metadata !133, null}
!133 = metadata !{i32 786443, metadata !130, i32 118, i32 5, metadata !7, i32 14} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 118, i32 67, metadata !135, null}
!135 = metadata !{i32 786443, metadata !133, i32 118, i32 66, metadata !7, i32 15} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 119, i32 1, metadata !135, null}
!137 = metadata !{i32 120, i32 1, metadata !135, null}
!138 = metadata !{i32 121, i32 13, metadata !135, null}
!139 = metadata !{i32 786688, metadata !72, metadata !"matched", metadata !7, i32 58, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 122, i32 5, metadata !135, null}
!141 = metadata !{i32 118, i32 49, metadata !133, null}
!142 = metadata !{i32 786688, metadata !72, metadata !"contacts_index", metadata !7, i32 56, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 123, i32 5, metadata !130, null}
!144 = metadata !{i32 124, i32 4, metadata !130, null}
!145 = metadata !{i32 102, i32 60, metadata !126, null}
!146 = metadata !{i32 786688, metadata !72, metadata !"database_index", metadata !7, i32 56, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 125, i32 25, metadata !148, null}
!148 = metadata !{i32 786443, metadata !128, i32 125, i32 24, metadata !7, i32 17} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 126, i32 1, metadata !148, null}
!150 = metadata !{i32 127, i32 2, metadata !148, null}
!151 = metadata !{i32 128, i32 4, metadata !148, null}
!152 = metadata !{i32 125, i32 20, metadata !128, null}
!153 = metadata !{i32 786688, metadata !72, metadata !"i", metadata !7, i32 56, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 129, i32 4, metadata !97, null}
!155 = metadata !{i32 130, i32 4, metadata !97, null}
!156 = metadata !{i32 133, i32 4, metadata !97, null}
!157 = metadata !{i32 134, i32 4, metadata !97, null}
!158 = metadata !{i32 136, i32 4, metadata !97, null}
!159 = metadata !{i32 138, i32 4, metadata !97, null}
!160 = metadata !{i32 139, i32 4, metadata !97, null}
!161 = metadata !{i32 140, i32 4, metadata !97, null}
!162 = metadata !{i32 143, i32 4, metadata !97, null}
!163 = metadata !{i32 144, i32 4, metadata !97, null}
!164 = metadata !{i32 146, i32 4, metadata !97, null}
!165 = metadata !{i32 148, i32 4, metadata !97, null}
!166 = metadata !{i32 149, i32 4, metadata !97, null}
!167 = metadata !{i32 150, i32 4, metadata !97, null}
!168 = metadata !{i32 161, i32 4, metadata !97, null}
!169 = metadata !{i32 162, i32 4, metadata !97, null}
!170 = metadata !{i32 163, i32 4, metadata !97, null}
!171 = metadata !{i32 164, i32 4, metadata !97, null}
!172 = metadata !{i32 165, i32 4, metadata !97, null}
!173 = metadata !{i32 168, i32 1, metadata !72, null}
!174 = metadata !{i32 786689, metadata !15, metadata !"db_index", metadata !7, i32 16777236, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 20, i32 18, metadata !15, null}
!176 = metadata !{i32 786689, metadata !15, metadata !"contacts_index", metadata !7, i32 33554452, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 20, i32 32, metadata !15, null}
!178 = metadata !{i32 26, i32 2, metadata !179, null}
!179 = metadata !{i32 786443, metadata !180, i32 23, i32 21, metadata !7, i32 5} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 786443, metadata !181, i32 23, i32 2, metadata !7, i32 4} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786443, metadata !15, i32 20, i32 47, metadata !7, i32 3} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 23, i32 6, metadata !180, null}
!183 = metadata !{i32 23, i32 22, metadata !179, null}
!184 = metadata !{i32 24, i32 1, metadata !179, null}
!185 = metadata !{i32 25, i32 1, metadata !179, null}
!186 = metadata !{i32 786688, metadata !181, metadata !"found", metadata !7, i32 22, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 27, i32 2, metadata !179, null}
!188 = metadata !{i32 23, i32 17, metadata !180, null}
!189 = metadata !{i32 786688, metadata !181, metadata !"i", metadata !7, i32 21, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 28, i32 2, metadata !181, null}
!191 = metadata !{i32 786689, metadata !6, metadata !"dest", metadata !7, i32 16777229, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 13, i32 29, metadata !6, null}
!193 = metadata !{i32 786689, metadata !6, metadata !"src", metadata !7, i32 33554445, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 13, i32 50, metadata !6, null}
!195 = metadata !{i32 15, i32 6, metadata !196, null}
!196 = metadata !{i32 786443, metadata !197, i32 15, i32 2, metadata !7, i32 1} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 786443, metadata !6, i32 13, i32 66, metadata !7, i32 0} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 16, i32 3, metadata !199, null}
!199 = metadata !{i32 786443, metadata !196, i32 15, i32 25, metadata !7, i32 2} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 15, i32 21, metadata !196, null}
!201 = metadata !{i32 786688, metadata !197, metadata !"i", metadata !7, i32 14, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 18, i32 1, metadata !197, null}
