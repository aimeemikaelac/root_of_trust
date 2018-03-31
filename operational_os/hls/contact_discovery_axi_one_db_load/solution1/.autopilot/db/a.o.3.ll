; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_one_db_load/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@results = internal unnamed_addr global [7500 x i1] zeroinitializer, align 16 ; [#uses=2 type=[7500 x i1]*]
@database_size = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@database = internal unnamed_addr global [480000 x i8] zeroinitializer, align 16 ; [#uses=65 type=[480000 x i8]*]
@contacts_size = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@contacts = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16 ; [#uses=65 type=[8192 x i8]*]
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00" ; [#uses=1 type=[18 x i8]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=3 type=[7 x i8]*]
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=4 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=9 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=86 type=[1 x i8]*]
@p_str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=1]
define internal fastcc void @match_db_contact(i13 %database_index) {
.preheader.preheader:
  %database_index_read = call i13 @_ssdm_op_Read.ap_auto.i13(i13 %database_index) ; [#uses=129 type=i13]
  call void @llvm.dbg.value(metadata !{i13 %database_index_read}, i64 0, metadata !25), !dbg !33 ; [debug line = 45:27] [debug variable = database_index]
  call void @llvm.dbg.value(metadata !{i13 %database_index}, i64 0, metadata !25), !dbg !33 ; [debug line = 45:27] [debug variable = database_index]
  %tmp = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 0), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_s = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 1), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_2 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 2), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_1 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 3), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_4 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 4), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_5 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 5), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_6 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 6), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_7 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 7), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_8 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 8), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_9 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 9), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_10 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 10), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_11 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 11), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_12 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 12), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_13 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 13), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_14 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 14), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_15 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 15), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_16 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 16), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_17 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 17), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_18 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 18), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_19 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 19), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_20 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 20), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_21 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 21), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_22 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 22), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_23 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 23), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_24 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 24), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_25 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 25), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_26 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 26), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_27 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 27), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_28 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 28), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_29 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 29), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_30 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 30), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_31 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 31), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_32 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 32), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_33 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 33), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_34 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 34), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_35 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 35), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_36 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 36), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_37 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 37), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_38 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 38), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_39 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 39), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_40 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 40), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_41 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 41), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_42 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 42), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_43 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 43), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_44 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 44), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_45 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 45), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_46 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 46), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_47 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 47), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_48 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 48), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_49 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 49), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_50 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 50), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_51 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 51), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_52 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 52), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_53 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 53), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_54 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 54), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_55 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 55), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_56 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 56), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_57 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 57), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_58 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 58), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_59 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 59), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_60 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 60), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_61 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 61), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_62 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 62), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_63 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 63), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_64 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 64), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_65 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 65), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_66 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 66), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_67 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 67), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_68 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 68), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_69 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 69), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_70 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 70), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_71 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 71), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_72 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 72), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_73 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 73), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_74 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 74), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_75 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 75), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_76 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 76), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_77 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 77), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_78 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 78), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_79 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 79), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_80 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 80), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_81 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 81), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_82 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 82), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_83 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 83), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_84 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 84), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_85 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 85), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_86 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 86), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_87 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 87), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_88 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 88), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_89 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 89), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_90 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 90), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_91 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 91), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_92 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 92), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_93 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 93), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_94 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 94), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_95 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 95), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_96 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 96), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_97 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 97), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_98 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 98), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_99 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 99), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_100 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 100), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_101 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 101), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_102 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 102), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_103 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 103), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_104 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 104), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_105 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 105), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_106 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 106), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_107 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 107), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_108 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 108), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_109 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 109), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_110 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 110), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_111 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 111), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_112 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 112), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_113 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 113), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_114 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 114), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_115 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 115), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_116 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 116), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_117 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 117), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_118 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 118), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_119 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 119), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_120 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 120), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_121 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 121), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_122 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 122), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_123 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 123), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_124 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 124), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_125 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 125), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_126 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 126), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp_127 = call fastcc zeroext i1 @compare(i13 %database_index_read, i8 127), !dbg !34 ; [#uses=1 type=i1] [debug line = 56:35]
  %tmp6 = or i1 %tmp, %tmp_s, !dbg !38            ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp7 = or i1 %tmp_2, %tmp_1, !dbg !38          ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp5 = or i1 %tmp7, %tmp6, !dbg !38            ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp9 = or i1 %tmp_4, %tmp_5, !dbg !38          ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp10 = or i1 %tmp_6, %tmp_7, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp8 = or i1 %tmp10, %tmp9, !dbg !38           ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp4 = or i1 %tmp8, %tmp5, !dbg !38            ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp13 = or i1 %tmp_8, %tmp_9, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp14 = or i1 %tmp_10, %tmp_11, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp12 = or i1 %tmp14, %tmp13, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp16 = or i1 %tmp_12, %tmp_13, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp17 = or i1 %tmp_14, %tmp_15, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp15 = or i1 %tmp17, %tmp16, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp11 = or i1 %tmp15, %tmp12, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp3 = or i1 %tmp11, %tmp4, !dbg !38           ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp21 = or i1 %tmp_16, %tmp_17, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp22 = or i1 %tmp_18, %tmp_19, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp20 = or i1 %tmp22, %tmp21, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp24 = or i1 %tmp_20, %tmp_21, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp25 = or i1 %tmp_22, %tmp_23, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp23 = or i1 %tmp25, %tmp24, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp19 = or i1 %tmp23, %tmp20, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp28 = or i1 %tmp_24, %tmp_25, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp29 = or i1 %tmp_26, %tmp_27, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp27 = or i1 %tmp29, %tmp28, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp31 = or i1 %tmp_28, %tmp_29, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp32 = or i1 %tmp_30, %tmp_31, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp30 = or i1 %tmp32, %tmp31, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp26 = or i1 %tmp30, %tmp27, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp18 = or i1 %tmp26, %tmp19, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp2 = or i1 %tmp18, %tmp3, !dbg !38           ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp37 = or i1 %tmp_32, %tmp_33, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp38 = or i1 %tmp_34, %tmp_35, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp36 = or i1 %tmp38, %tmp37, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp40 = or i1 %tmp_36, %tmp_37, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp41 = or i1 %tmp_38, %tmp_39, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp39 = or i1 %tmp41, %tmp40, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp35 = or i1 %tmp39, %tmp36, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp44 = or i1 %tmp_40, %tmp_41, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp45 = or i1 %tmp_42, %tmp_43, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp43 = or i1 %tmp45, %tmp44, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp47 = or i1 %tmp_44, %tmp_45, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp48 = or i1 %tmp_46, %tmp_47, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp46 = or i1 %tmp48, %tmp47, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp42 = or i1 %tmp46, %tmp43, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp34 = or i1 %tmp42, %tmp35, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp52 = or i1 %tmp_48, %tmp_49, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp53 = or i1 %tmp_50, %tmp_51, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp51 = or i1 %tmp53, %tmp52, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp55 = or i1 %tmp_52, %tmp_53, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp56 = or i1 %tmp_54, %tmp_55, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp54 = or i1 %tmp56, %tmp55, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp50 = or i1 %tmp54, %tmp51, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp59 = or i1 %tmp_56, %tmp_57, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp60 = or i1 %tmp_58, %tmp_59, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp58 = or i1 %tmp60, %tmp59, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp62 = or i1 %tmp_60, %tmp_61, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp63 = or i1 %tmp_62, %tmp_63, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp61 = or i1 %tmp63, %tmp62, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp57 = or i1 %tmp61, %tmp58, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp49 = or i1 %tmp57, %tmp50, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp33 = or i1 %tmp49, %tmp34, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp1 = or i1 %tmp33, %tmp2, !dbg !38           ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp69 = or i1 %tmp_64, %tmp_65, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp70 = or i1 %tmp_66, %tmp_67, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp68 = or i1 %tmp70, %tmp69, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp72 = or i1 %tmp_68, %tmp_69, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp73 = or i1 %tmp_70, %tmp_71, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp71 = or i1 %tmp73, %tmp72, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp67 = or i1 %tmp71, %tmp68, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp76 = or i1 %tmp_72, %tmp_73, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp77 = or i1 %tmp_74, %tmp_75, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp75 = or i1 %tmp77, %tmp76, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp79 = or i1 %tmp_76, %tmp_77, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp80 = or i1 %tmp_78, %tmp_79, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp78 = or i1 %tmp80, %tmp79, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp74 = or i1 %tmp78, %tmp75, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp66 = or i1 %tmp74, %tmp67, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp84 = or i1 %tmp_80, %tmp_81, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp85 = or i1 %tmp_82, %tmp_83, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp83 = or i1 %tmp85, %tmp84, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp87 = or i1 %tmp_84, %tmp_85, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp88 = or i1 %tmp_86, %tmp_87, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp86 = or i1 %tmp88, %tmp87, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp82 = or i1 %tmp86, %tmp83, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp91 = or i1 %tmp_88, %tmp_89, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp92 = or i1 %tmp_90, %tmp_91, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp90 = or i1 %tmp92, %tmp91, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp94 = or i1 %tmp_92, %tmp_93, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp95 = or i1 %tmp_94, %tmp_95, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp93 = or i1 %tmp95, %tmp94, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp89 = or i1 %tmp93, %tmp90, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp81 = or i1 %tmp89, %tmp82, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp65 = or i1 %tmp81, %tmp66, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp100 = or i1 %tmp_96, %tmp_97, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp101 = or i1 %tmp_98, %tmp_99, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp99 = or i1 %tmp101, %tmp100, !dbg !38       ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp103 = or i1 %tmp_100, %tmp_101, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp104 = or i1 %tmp_102, %tmp_103, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp102 = or i1 %tmp104, %tmp103, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp98 = or i1 %tmp102, %tmp99, !dbg !38        ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp107 = or i1 %tmp_104, %tmp_105, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp108 = or i1 %tmp_106, %tmp_107, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp106 = or i1 %tmp108, %tmp107, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp110 = or i1 %tmp_108, %tmp_109, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp111 = or i1 %tmp_110, %tmp_111, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp109 = or i1 %tmp111, %tmp110, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp105 = or i1 %tmp109, %tmp106, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp97 = or i1 %tmp105, %tmp98, !dbg !38        ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp115 = or i1 %tmp_112, %tmp_113, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp116 = or i1 %tmp_114, %tmp_115, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp114 = or i1 %tmp116, %tmp115, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp118 = or i1 %tmp_116, %tmp_117, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp119 = or i1 %tmp_118, %tmp_119, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp117 = or i1 %tmp119, %tmp118, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp113 = or i1 %tmp117, %tmp114, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp122 = or i1 %tmp_120, %tmp_121, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp123 = or i1 %tmp_122, %tmp_123, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp121 = or i1 %tmp123, %tmp122, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp125 = or i1 %tmp_124, %tmp_125, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp126 = or i1 %tmp_126, %tmp_127, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp124 = or i1 %tmp126, %tmp125, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp120 = or i1 %tmp124, %tmp121, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp112 = or i1 %tmp120, %tmp113, !dbg !38      ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp96 = or i1 %tmp112, %tmp97, !dbg !38        ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp64 = or i1 %tmp96, %tmp65, !dbg !38         ; [#uses=1 type=i1] [debug line = 59:3]
  %matched_1_s = or i1 %tmp64, %tmp1, !dbg !38    ; [#uses=1 type=i1] [debug line = 59:3]
  %tmp_3 = zext i13 %database_index_read to i64, !dbg !41 ; [#uses=1 type=i64] [debug line = 61:2]
  %results_addr = getelementptr inbounds [7500 x i1]* @results, i64 0, i64 %tmp_3, !dbg !41 ; [#uses=1 type=i1*] [debug line = 61:2]
  store i1 %matched_1_s, i1* %results_addr, align 1, !dbg !41 ; [debug line = 61:2]
  ret void, !dbg !42                              ; [debug line = 62:1]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=21]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @contact_discovery(i32 %operation, [64 x i8]* %contact_in, [64 x i8]* %database_in, [7500 x i1]* %matched_out, i32* %matched_finished, i32* %error_out, i32* %database_size_out, i32* %contacts_size_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i8]* %contact_in) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i8]* %database_in) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecBitsMap([7500 x i1]* %matched_out) nounwind, !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %matched_finished) nounwind, !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out) nounwind, !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %database_size_out) nounwind, !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out) nounwind, !map !79
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %operation_read}, i64 0, metadata !83), !dbg !92 ; [debug line = 67:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{i32 %operation}, i64 0, metadata !83), !dbg !92 ; [debug line = 67:6] [debug variable = operation]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %contact_in}, i64 0, metadata !93), !dbg !97 ; [debug line = 68:16] [debug variable = contact_in]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %database_in}, i64 0, metadata !98), !dbg !99 ; [debug line = 69:16] [debug variable = database_in]
  call void @llvm.dbg.value(metadata !{[7500 x i1]* %matched_out}, i64 0, metadata !100), !dbg !104 ; [debug line = 70:7] [debug variable = matched_out]
  call void @llvm.dbg.value(metadata !{i32* %matched_finished}, i64 0, metadata !105), !dbg !106 ; [debug line = 71:7] [debug variable = matched_finished]
  call void @llvm.dbg.value(metadata !{i32* %error_out}, i64 0, metadata !107), !dbg !108 ; [debug line = 72:7] [debug variable = error_out]
  call void @llvm.dbg.value(metadata !{i32* %database_size_out}, i64 0, metadata !109), !dbg !110 ; [debug line = 73:7] [debug variable = database_size_out]
  call void @llvm.dbg.value(metadata !{i32* %contacts_size_out}, i64 0, metadata !111), !dbg !112 ; [debug line = 74:7] [debug variable = contacts_size_out]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !113 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !115 ; [debug line = 79:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !116 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !117 ; [debug line = 81:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !118 ; [debug line = 82:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !119 ; [debug line = 83:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !120 ; [debug line = 84:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !121 ; [debug line = 85:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !122 ; [debug line = 86:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !123 ; [debug line = 87:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str2, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !124 ; [debug line = 88:1]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([7500 x i1]* %matched_out, [1 x i8]* @p_str8, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([7500 x i1]* %matched_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_4 = call i32 (...)* @_ssdm_op_SpecMemCore([64 x i8]* %database_in, [1 x i8]* @p_str7, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str7, i32 -1, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([64 x i8]* %database_in, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([64 x i8]* %contact_in, [1 x i8]* @p_str6, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str6, i32 -1, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([64 x i8]* %contact_in, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %contacts_size_load = load i32* @contacts_size, align 4, !dbg !125 ; [#uses=7 type=i32] [debug line = 107:4]
  %database_size_load = load i32* @database_size, align 4, !dbg !127 ; [#uses=8 type=i32] [debug line = 108:4]
  switch i32 %operation_read, label %20 [
    i32 0, label %1
    i32 1, label %7
    i32 2, label %13
    i32 3, label %18
    i32 4, label %19
  ], !dbg !128                                    ; [debug line = 102:2]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind, !dbg !129 ; [debug line = 105:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind, !dbg !130 ; [debug line = 106:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %database_size_load) nounwind, !dbg !127 ; [debug line = 108:4]
  %tmp = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load, i32 7, i32 31), !dbg !131 ; [#uses=1 type=i25] [debug line = 109:4]
  %icmp = icmp sgt i25 %tmp, 0, !dbg !131         ; [#uses=1 type=i1] [debug line = 109:4]
  br i1 %icmp, label %2, label %3, !dbg !131      ; [debug line = 109:4]

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1) nounwind, !dbg !132 ; [debug line = 110:5]
  br label %6, !dbg !134                          ; [debug line = 112:4]

; <label>:3                                       ; preds = %1
  %tmp_127 = trunc i32 %contacts_size_load to i9  ; [#uses=1 type=i9]
  %tmp_9_cast = call i15 @_ssdm_op_BitConcatenate.i15.i9.i6(i9 %tmp_127, i6 0), !dbg !135 ; [#uses=1 type=i15] [debug line = 15:50@113:5]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %contact_in}, i64 0, metadata !141) nounwind, !dbg !135 ; [debug line = 15:50@113:5] [debug variable = src]
  br label %4, !dbg !142                          ; [debug line = 17:6@113:5]

; <label>:4                                       ; preds = %5, %3
  %i_i = phi i7 [ 0, %3 ], [ %i_2, %5 ]           ; [#uses=4 type=i7]
  %exitcond_i = icmp eq i7 %i_i, -64, !dbg !142   ; [#uses=1 type=i1] [debug line = 17:6@113:5]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %i_2 = add i7 %i_i, 1, !dbg !145                ; [#uses=1 type=i7] [debug line = 17:21@113:5]
  br i1 %exitcond_i, label %_memcpy.exit, label %5, !dbg !142 ; [debug line = 17:6@113:5]

; <label>:5                                       ; preds = %4
  %tmp_i = zext i7 %i_i to i64, !dbg !146         ; [#uses=1 type=i64] [debug line = 18:3@113:5]
  %tmp_i_cast = zext i7 %i_i to i15, !dbg !146    ; [#uses=1 type=i15] [debug line = 18:3@113:5]
  %contact_in_addr = getelementptr [64 x i8]* %contact_in, i64 0, i64 %tmp_i, !dbg !146 ; [#uses=1 type=i8*] [debug line = 18:3@113:5]
  %contact_in_load = load i8* %contact_in_addr, align 1, !dbg !146 ; [#uses=1 type=i8] [debug line = 18:3@113:5]
  %sum_i = add i15 %tmp_i_cast, %tmp_9_cast       ; [#uses=1 type=i15]
  %sum_i_cast = sext i15 %sum_i to i64            ; [#uses=1 type=i64]
  %contacts_addr = getelementptr [8192 x i8]* @contacts, i64 0, i64 %sum_i_cast, !dbg !146 ; [#uses=1 type=i8*] [debug line = 18:3@113:5]
  store i8 %contact_in_load, i8* %contacts_addr, align 1, !dbg !146 ; [debug line = 18:3@113:5]
  call void @llvm.dbg.value(metadata !{i7 %i_2}, i64 0, metadata !148) nounwind, !dbg !145 ; [debug line = 17:21@113:5] [debug variable = i]
  br label %4, !dbg !145                          ; [debug line = 17:21@113:5]

_memcpy.exit:                                     ; preds = %4
  %tmp_s = add nsw i32 %contacts_size_load, 1, !dbg !149 ; [#uses=2 type=i32] [debug line = 114:5]
  store i32 %tmp_s, i32* @contacts_size, align 4, !dbg !149 ; [debug line = 114:5]
  br label %6

; <label>:6                                       ; preds = %_memcpy.exit, %2
  %storemerge1 = phi i32 [ %tmp_s, %_memcpy.exit ], [ %contacts_size_load, %2 ] ; [#uses=1 type=i32]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %storemerge1) nounwind, !dbg !150 ; [debug line = 111:5]
  br label %21, !dbg !151                         ; [debug line = 117:4]

; <label>:7                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind, !dbg !152 ; [debug line = 120:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind, !dbg !153 ; [debug line = 121:4]
  %tmp_7 = icmp sgt i32 %database_size_load, 7499, !dbg !154 ; [#uses=1 type=i1] [debug line = 122:4]
  br i1 %tmp_7, label %8, label %9, !dbg !154     ; [debug line = 122:4]

; <label>:8                                       ; preds = %7
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 2) nounwind, !dbg !155 ; [debug line = 123:5]
  br label %12, !dbg !157                         ; [debug line = 125:4]

; <label>:9                                       ; preds = %7
  %tmp_128 = trunc i32 %database_size_load to i14 ; [#uses=1 type=i14]
  %tmp_2_cast = call i20 @_ssdm_op_BitConcatenate.i20.i14.i6(i14 %tmp_128, i6 0), !dbg !158 ; [#uses=1 type=i20] [debug line = 15:50@126:5]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %database_in}, i64 0, metadata !161) nounwind, !dbg !158 ; [debug line = 15:50@126:5] [debug variable = src]
  br label %10, !dbg !162                         ; [debug line = 17:6@126:5]

; <label>:10                                      ; preds = %11, %9
  %i_i4 = phi i7 [ 0, %9 ], [ %i_3, %11 ]         ; [#uses=4 type=i7]
  %exitcond_i5 = icmp eq i7 %i_i4, -64, !dbg !162 ; [#uses=1 type=i1] [debug line = 17:6@126:5]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %i_3 = add i7 %i_i4, 1, !dbg !163               ; [#uses=1 type=i7] [debug line = 17:21@126:5]
  br i1 %exitcond_i5, label %_memcpy.1.exit, label %11, !dbg !162 ; [debug line = 17:6@126:5]

; <label>:11                                      ; preds = %10
  %tmp_i6 = zext i7 %i_i4 to i64, !dbg !164       ; [#uses=1 type=i64] [debug line = 18:3@126:5]
  %tmp_i6_cast = zext i7 %i_i4 to i20, !dbg !164  ; [#uses=1 type=i20] [debug line = 18:3@126:5]
  %database_in_addr = getelementptr [64 x i8]* %database_in, i64 0, i64 %tmp_i6, !dbg !164 ; [#uses=1 type=i8*] [debug line = 18:3@126:5]
  %database_in_load = load i8* %database_in_addr, align 1, !dbg !164 ; [#uses=1 type=i8] [debug line = 18:3@126:5]
  %sum_i9 = add i20 %tmp_i6_cast, %tmp_2_cast     ; [#uses=1 type=i20]
  %sum_i9_cast = sext i20 %sum_i9 to i64          ; [#uses=1 type=i64]
  %database_addr = getelementptr [480000 x i8]* @database, i64 0, i64 %sum_i9_cast, !dbg !164 ; [#uses=1 type=i8*] [debug line = 18:3@126:5]
  store i8 %database_in_load, i8* %database_addr, align 1, !dbg !164 ; [debug line = 18:3@126:5]
  call void @llvm.dbg.value(metadata !{i7 %i_3}, i64 0, metadata !165) nounwind, !dbg !163 ; [debug line = 17:21@126:5] [debug variable = i]
  br label %10, !dbg !163                         ; [debug line = 17:21@126:5]

_memcpy.1.exit:                                   ; preds = %10
  %tmp_3 = add nsw i32 %database_size_load, 1, !dbg !166 ; [#uses=2 type=i32] [debug line = 127:5]
  store i32 %tmp_3, i32* @database_size, align 4, !dbg !166 ; [debug line = 127:5]
  br label %12

; <label>:12                                      ; preds = %_memcpy.1.exit, %8
  %storemerge = phi i32 [ %tmp_3, %_memcpy.1.exit ], [ %database_size_load, %8 ] ; [#uses=1 type=i32]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %storemerge) nounwind, !dbg !167 ; [debug line = 124:5]
  br label %21, !dbg !168                         ; [debug line = 130:4]

; <label>:13                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind, !dbg !169 ; [debug line = 134:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load) nounwind, !dbg !170 ; [debug line = 135:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %database_size_load) nounwind, !dbg !171 ; [debug line = 136:4]
  br label %14, !dbg !172                         ; [debug line = 141:8]

; <label>:14                                      ; preds = %15, %13
  %database_index = phi i13 [ 0, %13 ], [ %database_index_1, %15 ] ; [#uses=3 type=i13]
  %exitcond2 = icmp eq i13 %database_index, -692, !dbg !172 ; [#uses=1 type=i1] [debug line = 141:8]
  %database_index_1 = add i13 %database_index, 1, !dbg !174 ; [#uses=1 type=i13] [debug line = 141:51]
  br i1 %exitcond2, label %.preheader.preheader, label %15, !dbg !172 ; [debug line = 141:8]

.preheader.preheader:                             ; preds = %14
  br label %.preheader, !dbg !175                 ; [debug line = 158:8]

; <label>:15                                      ; preds = %14
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7500, i64 7500, i64 7500) nounwind ; [#uses=0 type=i32]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind, !dbg !177 ; [#uses=1 type=i32] [debug line = 141:69]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !179 ; [debug line = 142:1]
  call fastcc void @match_db_contact(i13 %database_index) nounwind, !dbg !180 ; [debug line = 156:5]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_5) nounwind, !dbg !181 ; [#uses=0 type=i32] [debug line = 157:4]
  call void @llvm.dbg.value(metadata !{i13 %database_index_1}, i64 0, metadata !182), !dbg !174 ; [debug line = 141:51] [debug variable = database_index]
  br label %14, !dbg !174                         ; [debug line = 141:51]

.preheader:                                       ; preds = %16, %.preheader.preheader
  %i = phi i13 [ %i_1, %16 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i13]
  %exitcond = icmp eq i13 %i, -692, !dbg !175     ; [#uses=1 type=i1] [debug line = 158:8]
  %i_1 = add i13 %i, 1, !dbg !183                 ; [#uses=1 type=i13] [debug line = 158:21]
  br i1 %exitcond, label %17, label %16, !dbg !175 ; [debug line = 158:8]

; <label>:16                                      ; preds = %.preheader
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7500, i64 7500, i64 7500) nounwind ; [#uses=0 type=i32]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind, !dbg !184 ; [#uses=1 type=i32] [debug line = 158:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !186 ; [debug line = 159:1]
  %tmp_4 = zext i13 %i to i64, !dbg !187          ; [#uses=2 type=i64] [debug line = 160:2]
  %results_addr = getelementptr inbounds [7500 x i1]* @results, i64 0, i64 %tmp_4, !dbg !187 ; [#uses=1 type=i1*] [debug line = 160:2]
  %results_load = load i1* %results_addr, align 1, !dbg !187 ; [#uses=1 type=i1] [debug line = 160:2]
  %matched_out_addr = getelementptr [7500 x i1]* %matched_out, i64 0, i64 %tmp_4, !dbg !187 ; [#uses=1 type=i1*] [debug line = 160:2]
  store i1 %results_load, i1* %matched_out_addr, align 1, !dbg !187 ; [debug line = 160:2]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_6) nounwind, !dbg !188 ; [#uses=0 type=i32] [debug line = 161:4]
  call void @llvm.dbg.value(metadata !{i13 %i_1}, i64 0, metadata !189), !dbg !183 ; [debug line = 158:21] [debug variable = i]
  br label %.preheader, !dbg !183                 ; [debug line = 158:21]

; <label>:17                                      ; preds = %.preheader
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 1) nounwind, !dbg !190 ; [debug line = 162:4]
  br label %21, !dbg !191                         ; [debug line = 163:4]

; <label>:18                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind, !dbg !192 ; [debug line = 166:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind, !dbg !193 ; [debug line = 167:4]
  store i32 0, i32* @database_size, align 4, !dbg !194 ; [debug line = 169:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load) nounwind, !dbg !195 ; [debug line = 171:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 0) nounwind, !dbg !196 ; [debug line = 172:4]
  br label %21, !dbg !197                         ; [debug line = 173:4]

; <label>:19                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind, !dbg !198 ; [debug line = 176:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind, !dbg !199 ; [debug line = 177:4]
  store i32 0, i32* @contacts_size, align 4, !dbg !200 ; [debug line = 179:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0) nounwind, !dbg !201 ; [debug line = 181:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %database_size_load) nounwind, !dbg !202 ; [debug line = 182:4]
  br label %21, !dbg !203                         ; [debug line = 183:4]

; <label>:20                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load) nounwind, !dbg !204 ; [debug line = 194:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %database_size_load) nounwind, !dbg !205 ; [debug line = 195:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind, !dbg !206 ; [debug line = 196:4]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3) nounwind, !dbg !207 ; [debug line = 197:4]
  br label %21, !dbg !208                         ; [debug line = 198:4]

; <label>:21                                      ; preds = %20, %19, %18, %17, %12, %6
  ret void, !dbg !209                             ; [debug line = 201:1]
}

; [#uses=128]
define internal fastcc zeroext i1 @compare(i13 %db_index, i8 %contacts_index) readonly {
.preheader.preheader:
  %contacts_index_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %contacts_index) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %contacts_index_read}, i64 0, metadata !210), !dbg !214 ; [debug line = 22:32] [debug variable = contacts_index]
  %db_index_read = call i13 @_ssdm_op_Read.ap_auto.i13(i13 %db_index) ; [#uses=1 type=i13]
  call void @llvm.dbg.value(metadata !{i13 %db_index_read}, i64 0, metadata !215), !dbg !216 ; [debug line = 22:18] [debug variable = db_index]
  call void @llvm.dbg.value(metadata !{i13 %db_index}, i64 0, metadata !215), !dbg !216 ; [debug line = 22:18] [debug variable = db_index]
  call void @llvm.dbg.value(metadata !{i8 %contacts_index}, i64 0, metadata !210), !dbg !214 ; [debug line = 22:32] [debug variable = contacts_index]
  %tmp_129 = trunc i8 %contacts_index_read to i7  ; [#uses=1 type=i7]
  %tmp = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_129, i6 0), !dbg !217 ; [#uses=64 type=i13] [debug line = 37:3]
  %tmp_s = call i19 @_ssdm_op_BitConcatenate.i19.i13.i6(i13 %db_index_read, i6 0), !dbg !217 ; [#uses=64 type=i19] [debug line = 37:3]
  %tmp_6 = zext i13 %tmp to i64, !dbg !217        ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load = load i8* %contacts_addr, align 16, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_8 = zext i19 %tmp_s to i64, !dbg !217      ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load = load i8* %database_addr, align 16, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9 = icmp eq i8 %contacts_load, %database_load, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_s = or i13 %tmp, 1, !dbg !217            ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_1 = zext i13 %tmp_5_s to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_1 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_1, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_1 = load i8* %contacts_addr_1, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_s = or i19 %tmp_s, 1, !dbg !217          ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_1 = zext i19 %tmp_7_s to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_1 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_1, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_1 = load i8* %database_addr_1, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_1 = icmp eq i8 %contacts_load_1, %database_load_1, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_1 = or i13 %tmp, 2, !dbg !217            ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_2 = zext i13 %tmp_5_1 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_2 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_2, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_2 = load i8* %contacts_addr_2, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_1 = or i19 %tmp_s, 2, !dbg !217          ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_2 = zext i19 %tmp_7_1 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_2 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_2, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_2 = load i8* %database_addr_2, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_2 = icmp eq i8 %contacts_load_2, %database_load_2, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_2 = or i13 %tmp, 3, !dbg !217            ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_3 = zext i13 %tmp_5_2 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_3 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_3, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_3 = load i8* %contacts_addr_3, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_2 = or i19 %tmp_s, 3, !dbg !217          ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_3 = zext i19 %tmp_7_2 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_3 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_3, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_3 = load i8* %database_addr_3, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_3 = icmp eq i8 %contacts_load_3, %database_load_3, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_3 = or i13 %tmp, 4, !dbg !217            ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_4 = zext i13 %tmp_5_3 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_4 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_4, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_4 = load i8* %contacts_addr_4, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_3 = or i19 %tmp_s, 4, !dbg !217          ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_4 = zext i19 %tmp_7_3 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_4 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_4, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_4 = load i8* %database_addr_4, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_4 = icmp eq i8 %contacts_load_4, %database_load_4, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_4 = or i13 %tmp, 5, !dbg !217            ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_5 = zext i13 %tmp_5_4 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_5 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_5, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_5 = load i8* %contacts_addr_5, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_4 = or i19 %tmp_s, 5, !dbg !217          ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_5 = zext i19 %tmp_7_4 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_5 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_5, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_5 = load i8* %database_addr_5, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_5 = icmp eq i8 %contacts_load_5, %database_load_5, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_5 = or i13 %tmp, 6, !dbg !217            ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_6 = zext i13 %tmp_5_5 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_6 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_6, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_6 = load i8* %contacts_addr_6, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_5 = or i19 %tmp_s, 6, !dbg !217          ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_6 = zext i19 %tmp_7_5 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_6 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_6, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_6 = load i8* %database_addr_6, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_6 = icmp eq i8 %contacts_load_6, %database_load_6, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_6 = or i13 %tmp, 7, !dbg !217            ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_7 = zext i13 %tmp_5_6 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_7 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_7, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_7 = load i8* %contacts_addr_7, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_6 = or i19 %tmp_s, 7, !dbg !217          ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_7 = zext i19 %tmp_7_6 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_7 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_7, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_7 = load i8* %database_addr_7, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_7 = icmp eq i8 %contacts_load_7, %database_load_7, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_7 = or i13 %tmp, 8, !dbg !217            ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_8 = zext i13 %tmp_5_7 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_8 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_8, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_8 = load i8* %contacts_addr_8, align 8, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_7 = or i19 %tmp_s, 8, !dbg !217          ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_8 = zext i19 %tmp_7_7 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_8 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_8, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_8 = load i8* %database_addr_8, align 8, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_8 = icmp eq i8 %contacts_load_8, %database_load_8, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_8 = or i13 %tmp, 9, !dbg !217            ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_9 = zext i13 %tmp_5_8 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_9 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_9, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_9 = load i8* %contacts_addr_9, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_8 = or i19 %tmp_s, 9, !dbg !217          ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_9 = zext i19 %tmp_7_8 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_9 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_9, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_9 = load i8* %database_addr_9, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_9 = icmp eq i8 %contacts_load_9, %database_load_9, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_9 = or i13 %tmp, 10, !dbg !217           ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_s = zext i13 %tmp_5_9 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_10 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_s, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_10 = load i8* %contacts_addr_10, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_9 = or i19 %tmp_s, 10, !dbg !217         ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_s = zext i19 %tmp_7_9 to i64, !dbg !217  ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_10 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_s, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_10 = load i8* %database_addr_10, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_s = icmp eq i8 %contacts_load_10, %database_load_10, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_10 = or i13 %tmp, 11, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_10 = zext i13 %tmp_5_10 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_11 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_10, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_11 = load i8* %contacts_addr_11, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_10 = or i19 %tmp_s, 11, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_10 = zext i19 %tmp_7_10 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_11 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_10, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_11 = load i8* %database_addr_11, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_10 = icmp eq i8 %contacts_load_11, %database_load_11, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_11 = or i13 %tmp, 12, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_11 = zext i13 %tmp_5_11 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_12 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_11, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_12 = load i8* %contacts_addr_12, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_11 = or i19 %tmp_s, 12, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_11 = zext i19 %tmp_7_11 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_12 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_11, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_12 = load i8* %database_addr_12, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_11 = icmp eq i8 %contacts_load_12, %database_load_12, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_12 = or i13 %tmp, 13, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_12 = zext i13 %tmp_5_12 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_13 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_12, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_13 = load i8* %contacts_addr_13, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_12 = or i19 %tmp_s, 13, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_12 = zext i19 %tmp_7_12 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_13 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_12, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_13 = load i8* %database_addr_13, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_12 = icmp eq i8 %contacts_load_13, %database_load_13, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_13 = or i13 %tmp, 14, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_13 = zext i13 %tmp_5_13 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_14 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_13, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_14 = load i8* %contacts_addr_14, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_13 = or i19 %tmp_s, 14, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_13 = zext i19 %tmp_7_13 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_14 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_13, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_14 = load i8* %database_addr_14, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_13 = icmp eq i8 %contacts_load_14, %database_load_14, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_14 = or i13 %tmp, 15, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_14 = zext i13 %tmp_5_14 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_15 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_14, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_15 = load i8* %contacts_addr_15, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_14 = or i19 %tmp_s, 15, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_14 = zext i19 %tmp_7_14 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_15 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_14, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_15 = load i8* %database_addr_15, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_14 = icmp eq i8 %contacts_load_15, %database_load_15, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_15 = or i13 %tmp, 16, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_15 = zext i13 %tmp_5_15 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_16 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_15, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_16 = load i8* %contacts_addr_16, align 16, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_15 = or i19 %tmp_s, 16, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_15 = zext i19 %tmp_7_15 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_16 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_15, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_16 = load i8* %database_addr_16, align 16, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_15 = icmp eq i8 %contacts_load_16, %database_load_16, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_16 = or i13 %tmp, 17, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_16 = zext i13 %tmp_5_16 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_17 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_16, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_17 = load i8* %contacts_addr_17, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_16 = or i19 %tmp_s, 17, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_16 = zext i19 %tmp_7_16 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_17 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_16, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_17 = load i8* %database_addr_17, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_16 = icmp eq i8 %contacts_load_17, %database_load_17, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_17 = or i13 %tmp, 18, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_17 = zext i13 %tmp_5_17 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_18 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_17, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_18 = load i8* %contacts_addr_18, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_17 = or i19 %tmp_s, 18, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_17 = zext i19 %tmp_7_17 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_18 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_17, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_18 = load i8* %database_addr_18, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_17 = icmp eq i8 %contacts_load_18, %database_load_18, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_18 = or i13 %tmp, 19, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_18 = zext i13 %tmp_5_18 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_19 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_18, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_19 = load i8* %contacts_addr_19, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_18 = or i19 %tmp_s, 19, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_18 = zext i19 %tmp_7_18 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_19 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_18, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_19 = load i8* %database_addr_19, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_18 = icmp eq i8 %contacts_load_19, %database_load_19, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_19 = or i13 %tmp, 20, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_19 = zext i13 %tmp_5_19 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_20 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_19, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_20 = load i8* %contacts_addr_20, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_19 = or i19 %tmp_s, 20, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_19 = zext i19 %tmp_7_19 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_20 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_19, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_20 = load i8* %database_addr_20, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_19 = icmp eq i8 %contacts_load_20, %database_load_20, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_20 = or i13 %tmp, 21, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_20 = zext i13 %tmp_5_20 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_21 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_20, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_21 = load i8* %contacts_addr_21, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_20 = or i19 %tmp_s, 21, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_20 = zext i19 %tmp_7_20 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_21 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_20, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_21 = load i8* %database_addr_21, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_20 = icmp eq i8 %contacts_load_21, %database_load_21, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_21 = or i13 %tmp, 22, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_21 = zext i13 %tmp_5_21 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_22 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_21, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_22 = load i8* %contacts_addr_22, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_21 = or i19 %tmp_s, 22, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_21 = zext i19 %tmp_7_21 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_22 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_21, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_22 = load i8* %database_addr_22, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_21 = icmp eq i8 %contacts_load_22, %database_load_22, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_22 = or i13 %tmp, 23, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_22 = zext i13 %tmp_5_22 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_23 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_22, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_23 = load i8* %contacts_addr_23, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_22 = or i19 %tmp_s, 23, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_22 = zext i19 %tmp_7_22 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_23 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_22, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_23 = load i8* %database_addr_23, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_22 = icmp eq i8 %contacts_load_23, %database_load_23, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_23 = or i13 %tmp, 24, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_23 = zext i13 %tmp_5_23 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_24 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_23, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_24 = load i8* %contacts_addr_24, align 8, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_23 = or i19 %tmp_s, 24, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_23 = zext i19 %tmp_7_23 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_24 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_23, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_24 = load i8* %database_addr_24, align 8, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_23 = icmp eq i8 %contacts_load_24, %database_load_24, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_24 = or i13 %tmp, 25, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_24 = zext i13 %tmp_5_24 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_25 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_24, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_25 = load i8* %contacts_addr_25, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_24 = or i19 %tmp_s, 25, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_24 = zext i19 %tmp_7_24 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_25 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_24, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_25 = load i8* %database_addr_25, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_24 = icmp eq i8 %contacts_load_25, %database_load_25, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_25 = or i13 %tmp, 26, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_25 = zext i13 %tmp_5_25 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_26 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_25, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_26 = load i8* %contacts_addr_26, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_25 = or i19 %tmp_s, 26, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_25 = zext i19 %tmp_7_25 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_26 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_25, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_26 = load i8* %database_addr_26, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_25 = icmp eq i8 %contacts_load_26, %database_load_26, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_26 = or i13 %tmp, 27, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_26 = zext i13 %tmp_5_26 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_27 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_26, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_27 = load i8* %contacts_addr_27, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_26 = or i19 %tmp_s, 27, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_26 = zext i19 %tmp_7_26 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_27 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_26, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_27 = load i8* %database_addr_27, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_26 = icmp eq i8 %contacts_load_27, %database_load_27, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_27 = or i13 %tmp, 28, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_27 = zext i13 %tmp_5_27 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_28 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_27, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_28 = load i8* %contacts_addr_28, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_27 = or i19 %tmp_s, 28, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_27 = zext i19 %tmp_7_27 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_28 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_27, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_28 = load i8* %database_addr_28, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_27 = icmp eq i8 %contacts_load_28, %database_load_28, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_28 = or i13 %tmp, 29, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_28 = zext i13 %tmp_5_28 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_29 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_28, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_29 = load i8* %contacts_addr_29, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_28 = or i19 %tmp_s, 29, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_28 = zext i19 %tmp_7_28 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_29 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_28, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_29 = load i8* %database_addr_29, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_28 = icmp eq i8 %contacts_load_29, %database_load_29, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_29 = or i13 %tmp, 30, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_29 = zext i13 %tmp_5_29 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_30 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_29, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_30 = load i8* %contacts_addr_30, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_29 = or i19 %tmp_s, 30, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_29 = zext i19 %tmp_7_29 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_30 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_29, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_30 = load i8* %database_addr_30, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_29 = icmp eq i8 %contacts_load_30, %database_load_30, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_30 = or i13 %tmp, 31, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_30 = zext i13 %tmp_5_30 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_31 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_30, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_31 = load i8* %contacts_addr_31, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_30 = or i19 %tmp_s, 31, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_30 = zext i19 %tmp_7_30 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_31 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_30, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_31 = load i8* %database_addr_31, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_30 = icmp eq i8 %contacts_load_31, %database_load_31, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_31 = or i13 %tmp, 32, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_31 = zext i13 %tmp_5_31 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_32 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_31, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_32 = load i8* %contacts_addr_32, align 16, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_31 = or i19 %tmp_s, 32, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_31 = zext i19 %tmp_7_31 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_32 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_31, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_32 = load i8* %database_addr_32, align 16, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_31 = icmp eq i8 %contacts_load_32, %database_load_32, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_32 = or i13 %tmp, 33, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_32 = zext i13 %tmp_5_32 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_33 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_32, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_33 = load i8* %contacts_addr_33, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_32 = or i19 %tmp_s, 33, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_32 = zext i19 %tmp_7_32 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_33 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_32, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_33 = load i8* %database_addr_33, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_32 = icmp eq i8 %contacts_load_33, %database_load_33, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_33 = or i13 %tmp, 34, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_33 = zext i13 %tmp_5_33 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_34 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_33, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_34 = load i8* %contacts_addr_34, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_33 = or i19 %tmp_s, 34, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_33 = zext i19 %tmp_7_33 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_34 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_33, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_34 = load i8* %database_addr_34, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_33 = icmp eq i8 %contacts_load_34, %database_load_34, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_34 = or i13 %tmp, 35, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_34 = zext i13 %tmp_5_34 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_35 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_34, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_35 = load i8* %contacts_addr_35, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_34 = or i19 %tmp_s, 35, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_34 = zext i19 %tmp_7_34 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_35 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_34, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_35 = load i8* %database_addr_35, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_34 = icmp eq i8 %contacts_load_35, %database_load_35, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_35 = or i13 %tmp, 36, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_35 = zext i13 %tmp_5_35 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_36 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_35, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_36 = load i8* %contacts_addr_36, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_35 = or i19 %tmp_s, 36, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_35 = zext i19 %tmp_7_35 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_36 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_35, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_36 = load i8* %database_addr_36, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_35 = icmp eq i8 %contacts_load_36, %database_load_36, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_36 = or i13 %tmp, 37, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_36 = zext i13 %tmp_5_36 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_37 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_36, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_37 = load i8* %contacts_addr_37, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_36 = or i19 %tmp_s, 37, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_36 = zext i19 %tmp_7_36 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_37 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_36, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_37 = load i8* %database_addr_37, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_36 = icmp eq i8 %contacts_load_37, %database_load_37, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_37 = or i13 %tmp, 38, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_37 = zext i13 %tmp_5_37 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_38 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_37, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_38 = load i8* %contacts_addr_38, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_37 = or i19 %tmp_s, 38, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_37 = zext i19 %tmp_7_37 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_38 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_37, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_38 = load i8* %database_addr_38, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_37 = icmp eq i8 %contacts_load_38, %database_load_38, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_38 = or i13 %tmp, 39, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_38 = zext i13 %tmp_5_38 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_39 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_38, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_39 = load i8* %contacts_addr_39, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_38 = or i19 %tmp_s, 39, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_38 = zext i19 %tmp_7_38 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_39 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_38, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_39 = load i8* %database_addr_39, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_38 = icmp eq i8 %contacts_load_39, %database_load_39, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_39 = or i13 %tmp, 40, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_39 = zext i13 %tmp_5_39 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_40 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_39, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_40 = load i8* %contacts_addr_40, align 8, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_39 = or i19 %tmp_s, 40, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_39 = zext i19 %tmp_7_39 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_40 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_39, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_40 = load i8* %database_addr_40, align 8, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_39 = icmp eq i8 %contacts_load_40, %database_load_40, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_40 = or i13 %tmp, 41, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_40 = zext i13 %tmp_5_40 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_41 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_40, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_41 = load i8* %contacts_addr_41, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_40 = or i19 %tmp_s, 41, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_40 = zext i19 %tmp_7_40 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_41 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_40, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_41 = load i8* %database_addr_41, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_40 = icmp eq i8 %contacts_load_41, %database_load_41, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_41 = or i13 %tmp, 42, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_41 = zext i13 %tmp_5_41 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_42 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_41, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_42 = load i8* %contacts_addr_42, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_41 = or i19 %tmp_s, 42, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_41 = zext i19 %tmp_7_41 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_42 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_41, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_42 = load i8* %database_addr_42, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_41 = icmp eq i8 %contacts_load_42, %database_load_42, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_42 = or i13 %tmp, 43, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_42 = zext i13 %tmp_5_42 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_43 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_42, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_43 = load i8* %contacts_addr_43, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_42 = or i19 %tmp_s, 43, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_42 = zext i19 %tmp_7_42 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_43 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_42, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_43 = load i8* %database_addr_43, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_42 = icmp eq i8 %contacts_load_43, %database_load_43, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_43 = or i13 %tmp, 44, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_43 = zext i13 %tmp_5_43 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_44 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_43, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_44 = load i8* %contacts_addr_44, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_43 = or i19 %tmp_s, 44, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_43 = zext i19 %tmp_7_43 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_44 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_43, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_44 = load i8* %database_addr_44, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_43 = icmp eq i8 %contacts_load_44, %database_load_44, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_44 = or i13 %tmp, 45, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_44 = zext i13 %tmp_5_44 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_45 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_44, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_45 = load i8* %contacts_addr_45, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_44 = or i19 %tmp_s, 45, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_44 = zext i19 %tmp_7_44 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_45 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_44, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_45 = load i8* %database_addr_45, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_44 = icmp eq i8 %contacts_load_45, %database_load_45, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_45 = or i13 %tmp, 46, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_45 = zext i13 %tmp_5_45 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_46 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_45, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_46 = load i8* %contacts_addr_46, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_45 = or i19 %tmp_s, 46, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_45 = zext i19 %tmp_7_45 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_46 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_45, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_46 = load i8* %database_addr_46, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_45 = icmp eq i8 %contacts_load_46, %database_load_46, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_46 = or i13 %tmp, 47, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_46 = zext i13 %tmp_5_46 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_47 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_46, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_47 = load i8* %contacts_addr_47, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_46 = or i19 %tmp_s, 47, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_46 = zext i19 %tmp_7_46 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_47 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_46, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_47 = load i8* %database_addr_47, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_46 = icmp eq i8 %contacts_load_47, %database_load_47, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_47 = or i13 %tmp, 48, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_47 = zext i13 %tmp_5_47 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_48 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_47, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_48 = load i8* %contacts_addr_48, align 16, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_47 = or i19 %tmp_s, 48, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_47 = zext i19 %tmp_7_47 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_48 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_47, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_48 = load i8* %database_addr_48, align 16, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_47 = icmp eq i8 %contacts_load_48, %database_load_48, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_48 = or i13 %tmp, 49, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_48 = zext i13 %tmp_5_48 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_49 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_48, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_49 = load i8* %contacts_addr_49, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_48 = or i19 %tmp_s, 49, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_48 = zext i19 %tmp_7_48 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_49 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_48, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_49 = load i8* %database_addr_49, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_48 = icmp eq i8 %contacts_load_49, %database_load_49, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_49 = or i13 %tmp, 50, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_49 = zext i13 %tmp_5_49 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_50 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_49, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_50 = load i8* %contacts_addr_50, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_49 = or i19 %tmp_s, 50, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_49 = zext i19 %tmp_7_49 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_50 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_49, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_50 = load i8* %database_addr_50, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_49 = icmp eq i8 %contacts_load_50, %database_load_50, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_50 = or i13 %tmp, 51, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_50 = zext i13 %tmp_5_50 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_51 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_50, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_51 = load i8* %contacts_addr_51, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_50 = or i19 %tmp_s, 51, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_50 = zext i19 %tmp_7_50 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_51 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_50, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_51 = load i8* %database_addr_51, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_50 = icmp eq i8 %contacts_load_51, %database_load_51, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_51 = or i13 %tmp, 52, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_51 = zext i13 %tmp_5_51 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_52 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_51, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_52 = load i8* %contacts_addr_52, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_51 = or i19 %tmp_s, 52, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_51 = zext i19 %tmp_7_51 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_52 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_51, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_52 = load i8* %database_addr_52, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_51 = icmp eq i8 %contacts_load_52, %database_load_52, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_52 = or i13 %tmp, 53, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_52 = zext i13 %tmp_5_52 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_53 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_52, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_53 = load i8* %contacts_addr_53, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_52 = or i19 %tmp_s, 53, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_52 = zext i19 %tmp_7_52 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_53 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_52, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_53 = load i8* %database_addr_53, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_52 = icmp eq i8 %contacts_load_53, %database_load_53, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_53 = or i13 %tmp, 54, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_53 = zext i13 %tmp_5_53 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_54 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_53, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_54 = load i8* %contacts_addr_54, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_53 = or i19 %tmp_s, 54, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_53 = zext i19 %tmp_7_53 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_54 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_53, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_54 = load i8* %database_addr_54, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_53 = icmp eq i8 %contacts_load_54, %database_load_54, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_54 = or i13 %tmp, 55, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_54 = zext i13 %tmp_5_54 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_55 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_54, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_55 = load i8* %contacts_addr_55, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_54 = or i19 %tmp_s, 55, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_54 = zext i19 %tmp_7_54 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_55 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_54, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_55 = load i8* %database_addr_55, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_54 = icmp eq i8 %contacts_load_55, %database_load_55, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_55 = or i13 %tmp, 56, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_55 = zext i13 %tmp_5_55 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_56 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_55, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_56 = load i8* %contacts_addr_56, align 8, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_55 = or i19 %tmp_s, 56, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_55 = zext i19 %tmp_7_55 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_56 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_55, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_56 = load i8* %database_addr_56, align 8, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_55 = icmp eq i8 %contacts_load_56, %database_load_56, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_56 = or i13 %tmp, 57, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_56 = zext i13 %tmp_5_56 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_57 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_56, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_57 = load i8* %contacts_addr_57, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_56 = or i19 %tmp_s, 57, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_56 = zext i19 %tmp_7_56 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_57 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_56, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_57 = load i8* %database_addr_57, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_56 = icmp eq i8 %contacts_load_57, %database_load_57, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_57 = or i13 %tmp, 58, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_57 = zext i13 %tmp_5_57 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_58 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_57, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_58 = load i8* %contacts_addr_58, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_57 = or i19 %tmp_s, 58, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_57 = zext i19 %tmp_7_57 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_58 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_57, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_58 = load i8* %database_addr_58, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_57 = icmp eq i8 %contacts_load_58, %database_load_58, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_58 = or i13 %tmp, 59, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_58 = zext i13 %tmp_5_58 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_59 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_58, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_59 = load i8* %contacts_addr_59, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_58 = or i19 %tmp_s, 59, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_58 = zext i19 %tmp_7_58 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_59 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_58, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_59 = load i8* %database_addr_59, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_58 = icmp eq i8 %contacts_load_59, %database_load_59, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_59 = or i13 %tmp, 60, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_59 = zext i13 %tmp_5_59 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_60 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_59, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_60 = load i8* %contacts_addr_60, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_59 = or i19 %tmp_s, 60, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_59 = zext i19 %tmp_7_59 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_60 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_59, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_60 = load i8* %database_addr_60, align 4, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_59 = icmp eq i8 %contacts_load_60, %database_load_60, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_60 = or i13 %tmp, 61, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_60 = zext i13 %tmp_5_60 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_61 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_60, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_61 = load i8* %contacts_addr_61, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_60 = or i19 %tmp_s, 61, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_60 = zext i19 %tmp_7_60 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_61 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_60, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_61 = load i8* %database_addr_61, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_60 = icmp eq i8 %contacts_load_61, %database_load_61, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_61 = or i13 %tmp, 62, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_61 = zext i13 %tmp_5_61 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_62 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_61, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_62 = load i8* %contacts_addr_62, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_61 = or i19 %tmp_s, 62, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_61 = zext i19 %tmp_7_61 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_62 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_61, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_62 = load i8* %database_addr_62, align 2, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_61 = icmp eq i8 %contacts_load_62, %database_load_62, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp_5_62 = or i13 %tmp, 63, !dbg !217          ; [#uses=1 type=i13] [debug line = 37:3]
  %tmp_6_62 = zext i13 %tmp_5_62 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %contacts_addr_63 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_62, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %contacts_load_63 = load i8* %contacts_addr_63, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_7_62 = or i19 %tmp_s, 63, !dbg !217        ; [#uses=1 type=i19] [debug line = 37:3]
  %tmp_8_62 = zext i19 %tmp_7_62 to i64, !dbg !217 ; [#uses=1 type=i64] [debug line = 37:3]
  %database_addr_63 = getelementptr inbounds [480000 x i8]* @database, i64 0, i64 %tmp_8_62, !dbg !217 ; [#uses=1 type=i8*] [debug line = 37:3]
  %database_load_63 = load i8* %database_addr_63, align 1, !dbg !217 ; [#uses=1 type=i8] [debug line = 37:3]
  %tmp_9_62 = icmp eq i8 %contacts_load_63, %database_load_63, !dbg !217 ; [#uses=1 type=i1] [debug line = 37:3]
  %tmp5 = and i1 %tmp_9, %tmp_9_1, !dbg !221      ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp6 = and i1 %tmp_9_2, %tmp_9_3, !dbg !221    ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp4 = and i1 %tmp6, %tmp5, !dbg !221          ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp8 = and i1 %tmp_9_4, %tmp_9_5, !dbg !221    ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp9 = and i1 %tmp_9_6, %tmp_9_7, !dbg !221    ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp7 = and i1 %tmp9, %tmp8, !dbg !221          ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp3 = and i1 %tmp7, %tmp4, !dbg !221          ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp12 = and i1 %tmp_9_8, %tmp_9_9, !dbg !221   ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp13 = and i1 %tmp_9_s, %tmp_9_10, !dbg !221  ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp11 = and i1 %tmp13, %tmp12, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp15 = and i1 %tmp_9_11, %tmp_9_12, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp16 = and i1 %tmp_9_13, %tmp_9_14, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp14 = and i1 %tmp16, %tmp15, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp10 = and i1 %tmp14, %tmp11, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp2 = and i1 %tmp10, %tmp3, !dbg !221         ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp20 = and i1 %tmp_9_15, %tmp_9_16, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp21 = and i1 %tmp_9_17, %tmp_9_18, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp19 = and i1 %tmp21, %tmp20, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp23 = and i1 %tmp_9_19, %tmp_9_20, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp24 = and i1 %tmp_9_21, %tmp_9_22, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp22 = and i1 %tmp24, %tmp23, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp18 = and i1 %tmp22, %tmp19, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp27 = and i1 %tmp_9_23, %tmp_9_24, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp28 = and i1 %tmp_9_25, %tmp_9_26, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp26 = and i1 %tmp28, %tmp27, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp30 = and i1 %tmp_9_27, %tmp_9_28, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp31 = and i1 %tmp_9_29, %tmp_9_30, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp29 = and i1 %tmp31, %tmp30, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp25 = and i1 %tmp29, %tmp26, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp17 = and i1 %tmp25, %tmp18, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp1 = and i1 %tmp17, %tmp2, !dbg !221         ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp36 = and i1 %tmp_9_31, %tmp_9_32, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp37 = and i1 %tmp_9_33, %tmp_9_34, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp35 = and i1 %tmp37, %tmp36, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp39 = and i1 %tmp_9_35, %tmp_9_36, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp40 = and i1 %tmp_9_37, %tmp_9_38, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp38 = and i1 %tmp40, %tmp39, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp34 = and i1 %tmp38, %tmp35, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp43 = and i1 %tmp_9_39, %tmp_9_40, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp44 = and i1 %tmp_9_41, %tmp_9_42, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp42 = and i1 %tmp44, %tmp43, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp46 = and i1 %tmp_9_43, %tmp_9_44, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp47 = and i1 %tmp_9_45, %tmp_9_46, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp45 = and i1 %tmp47, %tmp46, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp41 = and i1 %tmp45, %tmp42, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp33 = and i1 %tmp41, %tmp34, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp51 = and i1 %tmp_9_47, %tmp_9_48, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp52 = and i1 %tmp_9_49, %tmp_9_50, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp50 = and i1 %tmp52, %tmp51, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp54 = and i1 %tmp_9_51, %tmp_9_52, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp55 = and i1 %tmp_9_53, %tmp_9_54, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp53 = and i1 %tmp55, %tmp54, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp49 = and i1 %tmp53, %tmp50, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp58 = and i1 %tmp_9_55, %tmp_9_56, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp59 = and i1 %tmp_9_57, %tmp_9_58, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp57 = and i1 %tmp59, %tmp58, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp61 = and i1 %tmp_9_59, %tmp_9_60, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp62 = and i1 %tmp_9_61, %tmp_9_62, !dbg !221 ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp60 = and i1 %tmp62, %tmp61, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp56 = and i1 %tmp60, %tmp57, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp48 = and i1 %tmp56, %tmp49, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %tmp32 = and i1 %tmp48, %tmp33, !dbg !221       ; [#uses=1 type=i1] [debug line = 40:3]
  %found_1_s = and i1 %tmp32, %tmp1, !dbg !221    ; [#uses=1 type=i1] [debug line = 40:3]
  ret i1 %found_1_s, !dbg !224                    ; [debug line = 42:2]
}

; [#uses=25]
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

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=14]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=2]
define weak i13 @_ssdm_op_Read.ap_auto.i13(i13) {
entry:
  ret i13 %0
}

; [#uses=0]
declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=1]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_12 = trunc i32 %empty to i25             ; [#uses=1 type=i25]
  ret i25 %empty_12
}

; [#uses=0]
declare i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i20 @_ssdm_op_BitConcatenate.i20.i14.i6(i14, i6) nounwind readnone {
entry:
  %empty = zext i14 %0 to i20                     ; [#uses=1 type=i20]
  %empty_13 = zext i6 %1 to i20                   ; [#uses=1 type=i20]
  %empty_14 = shl i20 %empty, 6                   ; [#uses=1 type=i20]
  %empty_15 = or i20 %empty_14, %empty_13         ; [#uses=1 type=i20]
  ret i20 %empty_15
}

; [#uses=1]
define weak i19 @_ssdm_op_BitConcatenate.i19.i13.i6(i13, i6) nounwind readnone {
entry:
  %empty = zext i13 %0 to i19                     ; [#uses=1 type=i19]
  %empty_16 = zext i6 %1 to i19                   ; [#uses=1 type=i19]
  %empty_17 = shl i19 %empty, 6                   ; [#uses=1 type=i19]
  %empty_18 = or i19 %empty_17, %empty_16         ; [#uses=1 type=i19]
  ret i19 %empty_18
}

; [#uses=1]
define weak i15 @_ssdm_op_BitConcatenate.i15.i9.i6(i9, i6) nounwind readnone {
entry:
  %empty = zext i9 %0 to i15                      ; [#uses=1 type=i15]
  %empty_19 = zext i6 %1 to i15                   ; [#uses=1 type=i15]
  %empty_20 = shl i15 %empty, 6                   ; [#uses=1 type=i15]
  %empty_21 = or i15 %empty_20, %empty_19         ; [#uses=1 type=i15]
  ret i15 %empty_21
}

; [#uses=1]
define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13                      ; [#uses=1 type=i13]
  %empty_22 = zext i6 %1 to i13                   ; [#uses=1 type=i13]
  %empty_23 = shl i13 %empty, 6                   ; [#uses=1 type=i13]
  %empty_24 = or i13 %empty_23, %empty_22         ; [#uses=1 type=i13]
  ret i13 %empty_24
}

!hls.encrypted.func = !{}
!opencl.kernels = !{!0, !7, !13, !19}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"db_index", metadata !"contacts_index"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"database_index"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"uchar*", metadata !"_Bool*", metadata !"int*", metadata !"int*", metadata !"int*", metadata !"int*"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"database_in", metadata !"matched_out", metadata !"matched_finished", metadata !"error_out", metadata !"database_size_out", metadata !"contacts_size_out"}
!25 = metadata !{i32 786689, metadata !26, metadata !"database_index", metadata !27, i32 16777261, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 786478, i32 0, metadata !27, metadata !"match_db_contact", metadata !"match_db_contact", metadata !"_Z16match_db_contacti", metadata !27, i32 45, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 45} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786473, metadata !"contact_discovery_axi_one_db_load/src/contact_discovery.cpp", metadata !"/home/aimee/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !30}
!30 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!33 = metadata !{i32 45, i32 27, metadata !26, null}
!34 = metadata !{i32 56, i32 35, metadata !35, null}
!35 = metadata !{i32 786443, metadata !36, i32 50, i32 63, metadata !27, i32 10} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 786443, metadata !37, i32 50, i32 2, metadata !27, i32 9} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786443, metadata !26, i32 45, i32 42, metadata !27, i32 8} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 59, i32 3, metadata !39, null}
!39 = metadata !{i32 786443, metadata !40, i32 58, i32 63, metadata !27, i32 12} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 786443, metadata !37, i32 58, i32 2, metadata !27, i32 11} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 61, i32 2, metadata !37, null}
!42 = metadata !{i32 62, i32 1, metadata !37, null}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"operation", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 0, i32 0}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 7, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"contact_in", metadata !53, metadata !"unsigned char", i32 0, i32 7}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 63, i32 1}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"database_in", metadata !53, metadata !"unsigned char", i32 0, i32 7}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"matched_out", metadata !63, metadata !"bool", i32 0, i32 0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 7499, i32 1}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"matched_finished", metadata !69, metadata !"int", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, i32 1}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"error_out", metadata !69, metadata !"int", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"database_size_out", metadata !69, metadata !"int", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"contacts_size_out", metadata !69, metadata !"int", i32 0, i32 31}
!83 = metadata !{i32 786689, metadata !84, metadata !"operation", metadata !27, i32 16777283, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 786478, i32 0, metadata !27, metadata !"contact_discovery", metadata !"contact_discovery", metadata !"_Z17contact_discoveryiPhS_PbPiS1_S1_S1_", metadata !27, i32 66, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 75} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !30, metadata !87, metadata !87, metadata !89, metadata !91, metadata !91, metadata !91, metadata !91}
!87 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ]
!88 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!89 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ]
!90 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!91 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 67, i32 6, metadata !84, null}
!93 = metadata !{i32 786689, metadata !84, metadata !"contact_in", null, i32 68, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !88, metadata !95, i32 0, i32 0} ; [ DW_TAG_array_type ]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!97 = metadata !{i32 68, i32 16, metadata !84, null}
!98 = metadata !{i32 786689, metadata !84, metadata !"database_in", null, i32 69, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 69, i32 16, metadata !84, null}
!100 = metadata !{i32 786689, metadata !84, metadata !"matched_out", null, i32 70, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 60000, i64 8, i32 0, i32 0, metadata !90, metadata !102, i32 0, i32 0} ; [ DW_TAG_array_type ]
!102 = metadata !{metadata !103}
!103 = metadata !{i32 786465, i64 0, i64 7499}    ; [ DW_TAG_subrange_type ]
!104 = metadata !{i32 70, i32 7, metadata !84, null}
!105 = metadata !{i32 786689, metadata !84, metadata !"matched_finished", metadata !27, i32 83886151, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 71, i32 7, metadata !84, null}
!107 = metadata !{i32 786689, metadata !84, metadata !"error_out", metadata !27, i32 100663368, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 72, i32 7, metadata !84, null}
!109 = metadata !{i32 786689, metadata !84, metadata !"database_size_out", metadata !27, i32 117440585, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 73, i32 7, metadata !84, null}
!111 = metadata !{i32 786689, metadata !84, metadata !"contacts_size_out", metadata !27, i32 134217802, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 74, i32 7, metadata !84, null}
!113 = metadata !{i32 78, i32 1, metadata !114, null}
!114 = metadata !{i32 786443, metadata !84, i32 75, i32 2, metadata !27, i32 13} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 79, i32 1, metadata !114, null}
!116 = metadata !{i32 80, i32 1, metadata !114, null}
!117 = metadata !{i32 81, i32 1, metadata !114, null}
!118 = metadata !{i32 82, i32 1, metadata !114, null}
!119 = metadata !{i32 83, i32 1, metadata !114, null}
!120 = metadata !{i32 84, i32 1, metadata !114, null}
!121 = metadata !{i32 85, i32 1, metadata !114, null}
!122 = metadata !{i32 86, i32 1, metadata !114, null}
!123 = metadata !{i32 87, i32 1, metadata !114, null}
!124 = metadata !{i32 88, i32 1, metadata !114, null}
!125 = metadata !{i32 107, i32 4, metadata !126, null}
!126 = metadata !{i32 786443, metadata !114, i32 102, i32 19, metadata !27, i32 14} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 108, i32 4, metadata !126, null}
!128 = metadata !{i32 102, i32 2, metadata !114, null}
!129 = metadata !{i32 105, i32 4, metadata !126, null}
!130 = metadata !{i32 106, i32 4, metadata !126, null}
!131 = metadata !{i32 109, i32 4, metadata !126, null}
!132 = metadata !{i32 110, i32 5, metadata !133, null}
!133 = metadata !{i32 786443, metadata !126, i32 109, i32 28, metadata !27, i32 15} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 112, i32 4, metadata !133, null}
!135 = metadata !{i32 15, i32 50, metadata !136, metadata !139}
!136 = metadata !{i32 786478, i32 0, metadata !27, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_i", metadata !27, i32 15, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 15} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{null, metadata !87, metadata !87, metadata !30}
!139 = metadata !{i32 113, i32 5, metadata !140, null}
!140 = metadata !{i32 786443, metadata !126, i32 112, i32 10, metadata !27, i32 16} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786689, metadata !136, metadata !"src", null, i32 15, metadata !94, i32 0, metadata !139} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 17, i32 6, metadata !143, metadata !139}
!143 = metadata !{i32 786443, metadata !144, i32 17, i32 2, metadata !27, i32 1} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 786443, metadata !136, i32 15, i32 66, metadata !27, i32 0} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 17, i32 21, metadata !143, metadata !139}
!146 = metadata !{i32 18, i32 3, metadata !147, metadata !139}
!147 = metadata !{i32 786443, metadata !143, i32 17, i32 25, metadata !27, i32 2} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786688, metadata !144, metadata !"i", metadata !27, i32 16, metadata !30, i32 0, metadata !139} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 114, i32 5, metadata !140, null}
!150 = metadata !{i32 111, i32 5, metadata !133, null}
!151 = metadata !{i32 117, i32 4, metadata !126, null}
!152 = metadata !{i32 120, i32 4, metadata !126, null}
!153 = metadata !{i32 121, i32 4, metadata !126, null}
!154 = metadata !{i32 122, i32 4, metadata !126, null}
!155 = metadata !{i32 123, i32 5, metadata !156, null}
!156 = metadata !{i32 786443, metadata !126, i32 122, i32 29, metadata !27, i32 17} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 125, i32 4, metadata !156, null}
!158 = metadata !{i32 15, i32 50, metadata !136, metadata !159}
!159 = metadata !{i32 126, i32 5, metadata !160, null}
!160 = metadata !{i32 786443, metadata !126, i32 125, i32 10, metadata !27, i32 18} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786689, metadata !136, metadata !"src", null, i32 15, metadata !94, i32 0, metadata !159} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 17, i32 6, metadata !143, metadata !159}
!163 = metadata !{i32 17, i32 21, metadata !143, metadata !159}
!164 = metadata !{i32 18, i32 3, metadata !147, metadata !159}
!165 = metadata !{i32 786688, metadata !144, metadata !"i", metadata !27, i32 16, metadata !30, i32 0, metadata !159} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 127, i32 5, metadata !160, null}
!167 = metadata !{i32 124, i32 5, metadata !156, null}
!168 = metadata !{i32 130, i32 4, metadata !126, null}
!169 = metadata !{i32 134, i32 4, metadata !126, null}
!170 = metadata !{i32 135, i32 4, metadata !126, null}
!171 = metadata !{i32 136, i32 4, metadata !126, null}
!172 = metadata !{i32 141, i32 8, metadata !173, null}
!173 = metadata !{i32 786443, metadata !126, i32 141, i32 4, metadata !27, i32 19} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 141, i32 51, metadata !173, null}
!175 = metadata !{i32 158, i32 8, metadata !176, null}
!176 = metadata !{i32 786443, metadata !126, i32 158, i32 4, metadata !27, i32 21} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 141, i32 69, metadata !178, null}
!178 = metadata !{i32 786443, metadata !173, i32 141, i32 68, metadata !27, i32 20} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 142, i32 1, metadata !178, null}
!180 = metadata !{i32 156, i32 5, metadata !178, null}
!181 = metadata !{i32 157, i32 4, metadata !178, null}
!182 = metadata !{i32 786688, metadata !114, metadata !"database_index", metadata !27, i32 92, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 158, i32 21, metadata !176, null}
!184 = metadata !{i32 158, i32 26, metadata !185, null}
!185 = metadata !{i32 786443, metadata !176, i32 158, i32 25, metadata !27, i32 22} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 159, i32 1, metadata !185, null}
!187 = metadata !{i32 160, i32 2, metadata !185, null}
!188 = metadata !{i32 161, i32 4, metadata !185, null}
!189 = metadata !{i32 786688, metadata !114, metadata !"i", metadata !27, i32 92, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 162, i32 4, metadata !126, null}
!191 = metadata !{i32 163, i32 4, metadata !126, null}
!192 = metadata !{i32 166, i32 4, metadata !126, null}
!193 = metadata !{i32 167, i32 4, metadata !126, null}
!194 = metadata !{i32 169, i32 4, metadata !126, null}
!195 = metadata !{i32 171, i32 4, metadata !126, null}
!196 = metadata !{i32 172, i32 4, metadata !126, null}
!197 = metadata !{i32 173, i32 4, metadata !126, null}
!198 = metadata !{i32 176, i32 4, metadata !126, null}
!199 = metadata !{i32 177, i32 4, metadata !126, null}
!200 = metadata !{i32 179, i32 4, metadata !126, null}
!201 = metadata !{i32 181, i32 4, metadata !126, null}
!202 = metadata !{i32 182, i32 4, metadata !126, null}
!203 = metadata !{i32 183, i32 4, metadata !126, null}
!204 = metadata !{i32 194, i32 4, metadata !126, null}
!205 = metadata !{i32 195, i32 4, metadata !126, null}
!206 = metadata !{i32 196, i32 4, metadata !126, null}
!207 = metadata !{i32 197, i32 4, metadata !126, null}
!208 = metadata !{i32 198, i32 4, metadata !126, null}
!209 = metadata !{i32 201, i32 1, metadata !114, null}
!210 = metadata !{i32 786689, metadata !211, metadata !"contacts_index", metadata !27, i32 33554454, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!211 = metadata !{i32 786478, i32 0, metadata !27, metadata !"compare", metadata !"compare", metadata !"_Z7compareii", metadata !27, i32 22, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 22} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!213 = metadata !{metadata !90, metadata !30, metadata !30}
!214 = metadata !{i32 22, i32 32, metadata !211, null}
!215 = metadata !{i32 786689, metadata !211, metadata !"db_index", metadata !27, i32 16777238, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 22, i32 18, metadata !211, null}
!217 = metadata !{i32 37, i32 3, metadata !218, null}
!218 = metadata !{i32 786443, metadata !219, i32 32, i32 21, metadata !27, i32 5} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 786443, metadata !220, i32 32, i32 2, metadata !27, i32 4} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 786443, metadata !211, i32 22, i32 47, metadata !27, i32 3} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 40, i32 3, metadata !222, null}
!222 = metadata !{i32 786443, metadata !223, i32 39, i32 21, metadata !27, i32 7} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 786443, metadata !220, i32 39, i32 2, metadata !27, i32 6} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 42, i32 2, metadata !220, null}
