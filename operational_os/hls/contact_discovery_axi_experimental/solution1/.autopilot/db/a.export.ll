; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@contacts_size = internal unnamed_addr global i32 0, align 4
@contacts_V = internal unnamed_addr global [128 x i512] zeroinitializer
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str8 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str7 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1

define internal fastcc i1 @match_db_contact(i512 %db_item_V) readonly {
  %db_item_V_read = call i512 @_ssdm_op_Read.ap_auto.i512(i512 %db_item_V)
  %contacts_V_load = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 0), align 64
  %tmp_1 = icmp eq i512 %contacts_V_load, %db_item_V_read
  %contacts_V_load_1 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 1), align 64
  %tmp_1_1 = icmp eq i512 %contacts_V_load_1, %db_item_V_read
  %contacts_V_load_2 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 2), align 64
  %tmp_1_2 = icmp eq i512 %contacts_V_load_2, %db_item_V_read
  %contacts_V_load_3 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 3), align 64
  %tmp_1_3 = icmp eq i512 %contacts_V_load_3, %db_item_V_read
  %contacts_V_load_4 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 4), align 64
  %tmp_1_4 = icmp eq i512 %contacts_V_load_4, %db_item_V_read
  %contacts_V_load_5 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 5), align 64
  %tmp_1_5 = icmp eq i512 %contacts_V_load_5, %db_item_V_read
  %contacts_V_load_6 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 6), align 64
  %tmp_1_6 = icmp eq i512 %contacts_V_load_6, %db_item_V_read
  %contacts_V_load_7 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 7), align 64
  %tmp_1_7 = icmp eq i512 %contacts_V_load_7, %db_item_V_read
  %contacts_V_load_8 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 8), align 64
  %tmp_1_8 = icmp eq i512 %contacts_V_load_8, %db_item_V_read
  %contacts_V_load_9 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 9), align 64
  %tmp_1_9 = icmp eq i512 %contacts_V_load_9, %db_item_V_read
  %contacts_V_load_10 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 10), align 64
  %tmp_1_s = icmp eq i512 %contacts_V_load_10, %db_item_V_read
  %contacts_V_load_11 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 11), align 64
  %tmp_1_10 = icmp eq i512 %contacts_V_load_11, %db_item_V_read
  %contacts_V_load_12 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 12), align 64
  %tmp_1_11 = icmp eq i512 %contacts_V_load_12, %db_item_V_read
  %contacts_V_load_13 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 13), align 64
  %tmp_1_12 = icmp eq i512 %contacts_V_load_13, %db_item_V_read
  %contacts_V_load_14 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 14), align 64
  %tmp_1_13 = icmp eq i512 %contacts_V_load_14, %db_item_V_read
  %contacts_V_load_15 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 15), align 64
  %tmp_1_14 = icmp eq i512 %contacts_V_load_15, %db_item_V_read
  %contacts_V_load_16 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 16), align 64
  %tmp_1_15 = icmp eq i512 %contacts_V_load_16, %db_item_V_read
  %contacts_V_load_17 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 17), align 64
  %tmp_1_16 = icmp eq i512 %contacts_V_load_17, %db_item_V_read
  %contacts_V_load_18 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 18), align 64
  %tmp_1_17 = icmp eq i512 %contacts_V_load_18, %db_item_V_read
  %contacts_V_load_19 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 19), align 64
  %tmp_1_18 = icmp eq i512 %contacts_V_load_19, %db_item_V_read
  %contacts_V_load_20 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 20), align 64
  %tmp_1_19 = icmp eq i512 %contacts_V_load_20, %db_item_V_read
  %contacts_V_load_21 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 21), align 64
  %tmp_1_20 = icmp eq i512 %contacts_V_load_21, %db_item_V_read
  %contacts_V_load_22 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 22), align 64
  %tmp_1_21 = icmp eq i512 %contacts_V_load_22, %db_item_V_read
  %contacts_V_load_23 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 23), align 64
  %tmp_1_22 = icmp eq i512 %contacts_V_load_23, %db_item_V_read
  %contacts_V_load_24 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 24), align 64
  %tmp_1_23 = icmp eq i512 %contacts_V_load_24, %db_item_V_read
  %contacts_V_load_25 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 25), align 64
  %tmp_1_24 = icmp eq i512 %contacts_V_load_25, %db_item_V_read
  %contacts_V_load_26 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 26), align 64
  %tmp_1_25 = icmp eq i512 %contacts_V_load_26, %db_item_V_read
  %contacts_V_load_27 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 27), align 64
  %tmp_1_26 = icmp eq i512 %contacts_V_load_27, %db_item_V_read
  %contacts_V_load_28 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 28), align 64
  %tmp_1_27 = icmp eq i512 %contacts_V_load_28, %db_item_V_read
  %contacts_V_load_29 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 29), align 64
  %tmp_1_28 = icmp eq i512 %contacts_V_load_29, %db_item_V_read
  %contacts_V_load_30 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 30), align 64
  %tmp_1_29 = icmp eq i512 %contacts_V_load_30, %db_item_V_read
  %contacts_V_load_31 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 31), align 64
  %tmp_1_30 = icmp eq i512 %contacts_V_load_31, %db_item_V_read
  %contacts_V_load_32 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 32), align 64
  %tmp_1_31 = icmp eq i512 %contacts_V_load_32, %db_item_V_read
  %contacts_V_load_33 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 33), align 64
  %tmp_1_32 = icmp eq i512 %contacts_V_load_33, %db_item_V_read
  %contacts_V_load_34 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 34), align 64
  %tmp_1_33 = icmp eq i512 %contacts_V_load_34, %db_item_V_read
  %contacts_V_load_35 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 35), align 64
  %tmp_1_34 = icmp eq i512 %contacts_V_load_35, %db_item_V_read
  %contacts_V_load_36 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 36), align 64
  %tmp_1_35 = icmp eq i512 %contacts_V_load_36, %db_item_V_read
  %contacts_V_load_37 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 37), align 64
  %tmp_1_36 = icmp eq i512 %contacts_V_load_37, %db_item_V_read
  %contacts_V_load_38 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 38), align 64
  %tmp_1_37 = icmp eq i512 %contacts_V_load_38, %db_item_V_read
  %contacts_V_load_39 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 39), align 64
  %tmp_1_38 = icmp eq i512 %contacts_V_load_39, %db_item_V_read
  %contacts_V_load_40 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 40), align 64
  %tmp_1_39 = icmp eq i512 %contacts_V_load_40, %db_item_V_read
  %contacts_V_load_41 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 41), align 64
  %tmp_1_40 = icmp eq i512 %contacts_V_load_41, %db_item_V_read
  %contacts_V_load_42 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 42), align 64
  %tmp_1_41 = icmp eq i512 %contacts_V_load_42, %db_item_V_read
  %contacts_V_load_43 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 43), align 64
  %tmp_1_42 = icmp eq i512 %contacts_V_load_43, %db_item_V_read
  %contacts_V_load_44 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 44), align 64
  %tmp_1_43 = icmp eq i512 %contacts_V_load_44, %db_item_V_read
  %contacts_V_load_45 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 45), align 64
  %tmp_1_44 = icmp eq i512 %contacts_V_load_45, %db_item_V_read
  %contacts_V_load_46 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 46), align 64
  %tmp_1_45 = icmp eq i512 %contacts_V_load_46, %db_item_V_read
  %contacts_V_load_47 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 47), align 64
  %tmp_1_46 = icmp eq i512 %contacts_V_load_47, %db_item_V_read
  %contacts_V_load_48 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 48), align 64
  %tmp_1_47 = icmp eq i512 %contacts_V_load_48, %db_item_V_read
  %contacts_V_load_49 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 49), align 64
  %tmp_1_48 = icmp eq i512 %contacts_V_load_49, %db_item_V_read
  %contacts_V_load_50 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 50), align 64
  %tmp_1_49 = icmp eq i512 %contacts_V_load_50, %db_item_V_read
  %contacts_V_load_51 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 51), align 64
  %tmp_1_50 = icmp eq i512 %contacts_V_load_51, %db_item_V_read
  %contacts_V_load_52 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 52), align 64
  %tmp_1_51 = icmp eq i512 %contacts_V_load_52, %db_item_V_read
  %contacts_V_load_53 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 53), align 64
  %tmp_1_52 = icmp eq i512 %contacts_V_load_53, %db_item_V_read
  %contacts_V_load_54 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 54), align 64
  %tmp_1_53 = icmp eq i512 %contacts_V_load_54, %db_item_V_read
  %contacts_V_load_55 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 55), align 64
  %tmp_1_54 = icmp eq i512 %contacts_V_load_55, %db_item_V_read
  %contacts_V_load_56 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 56), align 64
  %tmp_1_55 = icmp eq i512 %contacts_V_load_56, %db_item_V_read
  %contacts_V_load_57 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 57), align 64
  %tmp_1_56 = icmp eq i512 %contacts_V_load_57, %db_item_V_read
  %contacts_V_load_58 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 58), align 64
  %tmp_1_57 = icmp eq i512 %contacts_V_load_58, %db_item_V_read
  %contacts_V_load_59 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 59), align 64
  %tmp_1_58 = icmp eq i512 %contacts_V_load_59, %db_item_V_read
  %contacts_V_load_60 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 60), align 64
  %tmp_1_59 = icmp eq i512 %contacts_V_load_60, %db_item_V_read
  %contacts_V_load_61 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 61), align 64
  %tmp_1_60 = icmp eq i512 %contacts_V_load_61, %db_item_V_read
  %contacts_V_load_62 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 62), align 64
  %tmp_1_61 = icmp eq i512 %contacts_V_load_62, %db_item_V_read
  %contacts_V_load_63 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 63), align 64
  %tmp_1_62 = icmp eq i512 %contacts_V_load_63, %db_item_V_read
  %contacts_V_load_64 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 64), align 64
  %tmp_1_63 = icmp eq i512 %contacts_V_load_64, %db_item_V_read
  %contacts_V_load_65 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 65), align 64
  %tmp_1_64 = icmp eq i512 %contacts_V_load_65, %db_item_V_read
  %contacts_V_load_66 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 66), align 64
  %tmp_1_65 = icmp eq i512 %contacts_V_load_66, %db_item_V_read
  %contacts_V_load_67 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 67), align 64
  %tmp_1_66 = icmp eq i512 %contacts_V_load_67, %db_item_V_read
  %contacts_V_load_68 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 68), align 64
  %tmp_1_67 = icmp eq i512 %contacts_V_load_68, %db_item_V_read
  %contacts_V_load_69 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 69), align 64
  %tmp_1_68 = icmp eq i512 %contacts_V_load_69, %db_item_V_read
  %contacts_V_load_70 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 70), align 64
  %tmp_1_69 = icmp eq i512 %contacts_V_load_70, %db_item_V_read
  %contacts_V_load_71 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 71), align 64
  %tmp_1_70 = icmp eq i512 %contacts_V_load_71, %db_item_V_read
  %contacts_V_load_72 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 72), align 64
  %tmp_1_71 = icmp eq i512 %contacts_V_load_72, %db_item_V_read
  %contacts_V_load_73 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 73), align 64
  %tmp_1_72 = icmp eq i512 %contacts_V_load_73, %db_item_V_read
  %contacts_V_load_74 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 74), align 64
  %tmp_1_73 = icmp eq i512 %contacts_V_load_74, %db_item_V_read
  %contacts_V_load_75 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 75), align 64
  %tmp_1_74 = icmp eq i512 %contacts_V_load_75, %db_item_V_read
  %contacts_V_load_76 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 76), align 64
  %tmp_1_75 = icmp eq i512 %contacts_V_load_76, %db_item_V_read
  %contacts_V_load_77 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 77), align 64
  %tmp_1_76 = icmp eq i512 %contacts_V_load_77, %db_item_V_read
  %contacts_V_load_78 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 78), align 64
  %tmp_1_77 = icmp eq i512 %contacts_V_load_78, %db_item_V_read
  %contacts_V_load_79 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 79), align 64
  %tmp_1_78 = icmp eq i512 %contacts_V_load_79, %db_item_V_read
  %contacts_V_load_80 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 80), align 64
  %tmp_1_79 = icmp eq i512 %contacts_V_load_80, %db_item_V_read
  %contacts_V_load_81 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 81), align 64
  %tmp_1_80 = icmp eq i512 %contacts_V_load_81, %db_item_V_read
  %contacts_V_load_82 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 82), align 64
  %tmp_1_81 = icmp eq i512 %contacts_V_load_82, %db_item_V_read
  %contacts_V_load_83 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 83), align 64
  %tmp_1_82 = icmp eq i512 %contacts_V_load_83, %db_item_V_read
  %contacts_V_load_84 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 84), align 64
  %tmp_1_83 = icmp eq i512 %contacts_V_load_84, %db_item_V_read
  %contacts_V_load_85 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 85), align 64
  %tmp_1_84 = icmp eq i512 %contacts_V_load_85, %db_item_V_read
  %contacts_V_load_86 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 86), align 64
  %tmp_1_85 = icmp eq i512 %contacts_V_load_86, %db_item_V_read
  %contacts_V_load_87 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 87), align 64
  %tmp_1_86 = icmp eq i512 %contacts_V_load_87, %db_item_V_read
  %contacts_V_load_88 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 88), align 64
  %tmp_1_87 = icmp eq i512 %contacts_V_load_88, %db_item_V_read
  %contacts_V_load_89 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 89), align 64
  %tmp_1_88 = icmp eq i512 %contacts_V_load_89, %db_item_V_read
  %contacts_V_load_90 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 90), align 64
  %tmp_1_89 = icmp eq i512 %contacts_V_load_90, %db_item_V_read
  %contacts_V_load_91 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 91), align 64
  %tmp_1_90 = icmp eq i512 %contacts_V_load_91, %db_item_V_read
  %contacts_V_load_92 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 92), align 64
  %tmp_1_91 = icmp eq i512 %contacts_V_load_92, %db_item_V_read
  %contacts_V_load_93 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 93), align 64
  %tmp_1_92 = icmp eq i512 %contacts_V_load_93, %db_item_V_read
  %contacts_V_load_94 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 94), align 64
  %tmp_1_93 = icmp eq i512 %contacts_V_load_94, %db_item_V_read
  %contacts_V_load_95 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 95), align 64
  %tmp_1_94 = icmp eq i512 %contacts_V_load_95, %db_item_V_read
  %contacts_V_load_96 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 96), align 64
  %tmp_1_95 = icmp eq i512 %contacts_V_load_96, %db_item_V_read
  %contacts_V_load_97 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 97), align 64
  %tmp_1_96 = icmp eq i512 %contacts_V_load_97, %db_item_V_read
  %contacts_V_load_98 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 98), align 64
  %tmp_1_97 = icmp eq i512 %contacts_V_load_98, %db_item_V_read
  %contacts_V_load_99 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 99), align 64
  %tmp_1_98 = icmp eq i512 %contacts_V_load_99, %db_item_V_read
  %contacts_V_load_100 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 100), align 64
  %tmp_1_99 = icmp eq i512 %contacts_V_load_100, %db_item_V_read
  %contacts_V_load_101 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 101), align 64
  %tmp_1_100 = icmp eq i512 %contacts_V_load_101, %db_item_V_read
  %contacts_V_load_102 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 102), align 64
  %tmp_1_101 = icmp eq i512 %contacts_V_load_102, %db_item_V_read
  %contacts_V_load_103 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 103), align 64
  %tmp_1_102 = icmp eq i512 %contacts_V_load_103, %db_item_V_read
  %contacts_V_load_104 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 104), align 64
  %tmp_1_103 = icmp eq i512 %contacts_V_load_104, %db_item_V_read
  %contacts_V_load_105 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 105), align 64
  %tmp_1_104 = icmp eq i512 %contacts_V_load_105, %db_item_V_read
  %contacts_V_load_106 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 106), align 64
  %tmp_1_105 = icmp eq i512 %contacts_V_load_106, %db_item_V_read
  %contacts_V_load_107 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 107), align 64
  %tmp_1_106 = icmp eq i512 %contacts_V_load_107, %db_item_V_read
  %contacts_V_load_108 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 108), align 64
  %tmp_1_107 = icmp eq i512 %contacts_V_load_108, %db_item_V_read
  %contacts_V_load_109 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 109), align 64
  %tmp_1_108 = icmp eq i512 %contacts_V_load_109, %db_item_V_read
  %contacts_V_load_110 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 110), align 64
  %tmp_1_109 = icmp eq i512 %contacts_V_load_110, %db_item_V_read
  %contacts_V_load_111 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 111), align 64
  %tmp_1_110 = icmp eq i512 %contacts_V_load_111, %db_item_V_read
  %contacts_V_load_112 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 112), align 64
  %tmp_1_111 = icmp eq i512 %contacts_V_load_112, %db_item_V_read
  %contacts_V_load_113 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 113), align 64
  %tmp_1_112 = icmp eq i512 %contacts_V_load_113, %db_item_V_read
  %contacts_V_load_114 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 114), align 64
  %tmp_1_113 = icmp eq i512 %contacts_V_load_114, %db_item_V_read
  %contacts_V_load_115 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 115), align 64
  %tmp_1_114 = icmp eq i512 %contacts_V_load_115, %db_item_V_read
  %contacts_V_load_116 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 116), align 64
  %tmp_1_115 = icmp eq i512 %contacts_V_load_116, %db_item_V_read
  %contacts_V_load_117 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 117), align 64
  %tmp_1_116 = icmp eq i512 %contacts_V_load_117, %db_item_V_read
  %contacts_V_load_118 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 118), align 64
  %tmp_1_117 = icmp eq i512 %contacts_V_load_118, %db_item_V_read
  %contacts_V_load_119 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 119), align 64
  %tmp_1_118 = icmp eq i512 %contacts_V_load_119, %db_item_V_read
  %contacts_V_load_120 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 120), align 64
  %tmp_1_119 = icmp eq i512 %contacts_V_load_120, %db_item_V_read
  %contacts_V_load_121 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 121), align 64
  %tmp_1_120 = icmp eq i512 %contacts_V_load_121, %db_item_V_read
  %contacts_V_load_122 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 122), align 64
  %tmp_1_121 = icmp eq i512 %contacts_V_load_122, %db_item_V_read
  %contacts_V_load_123 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 123), align 64
  %tmp_1_122 = icmp eq i512 %contacts_V_load_123, %db_item_V_read
  %contacts_V_load_124 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 124), align 64
  %tmp_1_123 = icmp eq i512 %contacts_V_load_124, %db_item_V_read
  %contacts_V_load_125 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 125), align 64
  %tmp_1_124 = icmp eq i512 %contacts_V_load_125, %db_item_V_read
  %contacts_V_load_126 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 126), align 64
  %tmp_1_125 = icmp eq i512 %contacts_V_load_126, %db_item_V_read
  %contacts_V_load_127 = load i512* getelementptr inbounds ([128 x i512]* @contacts_V, i64 0, i64 127), align 64
  %tmp_1_126 = icmp eq i512 %contacts_V_load_127, %db_item_V_read
  %tmp5 = or i1 %tmp_1, %tmp_1_1
  %tmp6 = or i1 %tmp_1_2, %tmp_1_3
  %tmp4 = or i1 %tmp6, %tmp5
  %tmp8 = or i1 %tmp_1_4, %tmp_1_5
  %tmp9 = or i1 %tmp_1_6, %tmp_1_7
  %tmp7 = or i1 %tmp9, %tmp8
  %tmp3 = or i1 %tmp7, %tmp4
  %tmp12 = or i1 %tmp_1_8, %tmp_1_9
  %tmp13 = or i1 %tmp_1_s, %tmp_1_10
  %tmp11 = or i1 %tmp13, %tmp12
  %tmp15 = or i1 %tmp_1_11, %tmp_1_12
  %tmp16 = or i1 %tmp_1_13, %tmp_1_14
  %tmp14 = or i1 %tmp16, %tmp15
  %tmp10 = or i1 %tmp14, %tmp11
  %tmp2 = or i1 %tmp10, %tmp3
  %tmp20 = or i1 %tmp_1_15, %tmp_1_16
  %tmp21 = or i1 %tmp_1_17, %tmp_1_18
  %tmp19 = or i1 %tmp21, %tmp20
  %tmp23 = or i1 %tmp_1_19, %tmp_1_20
  %tmp24 = or i1 %tmp_1_21, %tmp_1_22
  %tmp22 = or i1 %tmp24, %tmp23
  %tmp18 = or i1 %tmp22, %tmp19
  %tmp27 = or i1 %tmp_1_23, %tmp_1_24
  %tmp28 = or i1 %tmp_1_25, %tmp_1_26
  %tmp26 = or i1 %tmp28, %tmp27
  %tmp30 = or i1 %tmp_1_27, %tmp_1_28
  %tmp31 = or i1 %tmp_1_29, %tmp_1_30
  %tmp29 = or i1 %tmp31, %tmp30
  %tmp25 = or i1 %tmp29, %tmp26
  %tmp17 = or i1 %tmp25, %tmp18
  %tmp1 = or i1 %tmp17, %tmp2
  %tmp36 = or i1 %tmp_1_31, %tmp_1_32
  %tmp37 = or i1 %tmp_1_33, %tmp_1_34
  %tmp35 = or i1 %tmp37, %tmp36
  %tmp39 = or i1 %tmp_1_35, %tmp_1_36
  %tmp40 = or i1 %tmp_1_37, %tmp_1_38
  %tmp38 = or i1 %tmp40, %tmp39
  %tmp34 = or i1 %tmp38, %tmp35
  %tmp43 = or i1 %tmp_1_39, %tmp_1_40
  %tmp44 = or i1 %tmp_1_41, %tmp_1_42
  %tmp42 = or i1 %tmp44, %tmp43
  %tmp46 = or i1 %tmp_1_43, %tmp_1_44
  %tmp47 = or i1 %tmp_1_45, %tmp_1_46
  %tmp45 = or i1 %tmp47, %tmp46
  %tmp41 = or i1 %tmp45, %tmp42
  %tmp33 = or i1 %tmp41, %tmp34
  %tmp51 = or i1 %tmp_1_47, %tmp_1_48
  %tmp52 = or i1 %tmp_1_49, %tmp_1_50
  %tmp50 = or i1 %tmp52, %tmp51
  %tmp54 = or i1 %tmp_1_51, %tmp_1_52
  %tmp55 = or i1 %tmp_1_53, %tmp_1_54
  %tmp53 = or i1 %tmp55, %tmp54
  %tmp49 = or i1 %tmp53, %tmp50
  %tmp58 = or i1 %tmp_1_55, %tmp_1_56
  %tmp59 = or i1 %tmp_1_57, %tmp_1_58
  %tmp57 = or i1 %tmp59, %tmp58
  %tmp61 = or i1 %tmp_1_59, %tmp_1_60
  %tmp62 = or i1 %tmp_1_61, %tmp_1_62
  %tmp60 = or i1 %tmp62, %tmp61
  %tmp56 = or i1 %tmp60, %tmp57
  %tmp48 = or i1 %tmp56, %tmp49
  %tmp32 = or i1 %tmp48, %tmp33
  %tmp = or i1 %tmp32, %tmp1
  %tmp68 = or i1 %tmp_1_63, %tmp_1_64
  %tmp69 = or i1 %tmp_1_65, %tmp_1_66
  %tmp67 = or i1 %tmp69, %tmp68
  %tmp71 = or i1 %tmp_1_67, %tmp_1_68
  %tmp72 = or i1 %tmp_1_69, %tmp_1_70
  %tmp70 = or i1 %tmp72, %tmp71
  %tmp66 = or i1 %tmp70, %tmp67
  %tmp75 = or i1 %tmp_1_71, %tmp_1_72
  %tmp76 = or i1 %tmp_1_73, %tmp_1_74
  %tmp74 = or i1 %tmp76, %tmp75
  %tmp78 = or i1 %tmp_1_75, %tmp_1_76
  %tmp79 = or i1 %tmp_1_77, %tmp_1_78
  %tmp77 = or i1 %tmp79, %tmp78
  %tmp73 = or i1 %tmp77, %tmp74
  %tmp65 = or i1 %tmp73, %tmp66
  %tmp83 = or i1 %tmp_1_79, %tmp_1_80
  %tmp84 = or i1 %tmp_1_81, %tmp_1_82
  %tmp82 = or i1 %tmp84, %tmp83
  %tmp86 = or i1 %tmp_1_83, %tmp_1_84
  %tmp87 = or i1 %tmp_1_85, %tmp_1_86
  %tmp85 = or i1 %tmp87, %tmp86
  %tmp81 = or i1 %tmp85, %tmp82
  %tmp90 = or i1 %tmp_1_87, %tmp_1_88
  %tmp91 = or i1 %tmp_1_89, %tmp_1_90
  %tmp89 = or i1 %tmp91, %tmp90
  %tmp93 = or i1 %tmp_1_91, %tmp_1_92
  %tmp94 = or i1 %tmp_1_93, %tmp_1_94
  %tmp92 = or i1 %tmp94, %tmp93
  %tmp88 = or i1 %tmp92, %tmp89
  %tmp80 = or i1 %tmp88, %tmp81
  %tmp64 = or i1 %tmp80, %tmp65
  %tmp99 = or i1 %tmp_1_95, %tmp_1_96
  %tmp100 = or i1 %tmp_1_97, %tmp_1_98
  %tmp98 = or i1 %tmp100, %tmp99
  %tmp102 = or i1 %tmp_1_99, %tmp_1_100
  %tmp103 = or i1 %tmp_1_101, %tmp_1_102
  %tmp101 = or i1 %tmp103, %tmp102
  %tmp97 = or i1 %tmp101, %tmp98
  %tmp106 = or i1 %tmp_1_103, %tmp_1_104
  %tmp107 = or i1 %tmp_1_105, %tmp_1_106
  %tmp105 = or i1 %tmp107, %tmp106
  %tmp109 = or i1 %tmp_1_107, %tmp_1_108
  %tmp110 = or i1 %tmp_1_109, %tmp_1_110
  %tmp108 = or i1 %tmp110, %tmp109
  %tmp104 = or i1 %tmp108, %tmp105
  %tmp96 = or i1 %tmp104, %tmp97
  %tmp114 = or i1 %tmp_1_111, %tmp_1_112
  %tmp115 = or i1 %tmp_1_113, %tmp_1_114
  %tmp113 = or i1 %tmp115, %tmp114
  %tmp117 = or i1 %tmp_1_115, %tmp_1_116
  %tmp118 = or i1 %tmp_1_117, %tmp_1_118
  %tmp116 = or i1 %tmp118, %tmp117
  %tmp112 = or i1 %tmp116, %tmp113
  %tmp121 = or i1 %tmp_1_119, %tmp_1_120
  %tmp122 = or i1 %tmp_1_121, %tmp_1_122
  %tmp120 = or i1 %tmp122, %tmp121
  %tmp124 = or i1 %tmp_1_123, %tmp_1_124
  %tmp125 = or i1 %tmp_1_125, %tmp_1_126
  %tmp123 = or i1 %tmp125, %tmp124
  %tmp119 = or i1 %tmp123, %tmp120
  %tmp111 = or i1 %tmp119, %tmp112
  %tmp95 = or i1 %tmp111, %tmp96
  %tmp63 = or i1 %tmp95, %tmp64
  %matched_1_s = or i1 %tmp63, %tmp
  ret i1 %matched_1_s
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @contact_discovery(i32 %operation, i512 %contact_in_V, i512* %db_mem_V, i64 %offset, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, i8* %results_out) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %contact_in_V), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %db_mem_V), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %offset), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %db_size_in), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %results_out), !map !63
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %db_size_in_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %db_size_in)
  %offset_read = call i64 @_ssdm_op_Read.ap_none.i64(i64 %offset)
  %contact_in_V_read = call i512 @_ssdm_op_Read.s_axilite.i512(i512 %contact_in_V)
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation)
  call void (...)* @_ssdm_op_SpecInterface(i64 %offset, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %offset, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %db_mem_V, [6 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 536870912, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 16, i32 16, i32 4, i32 16, [1 x i8]* @p_str3, [1 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecInterface(i8* %results_out, [5 x i8]* @p_str6, i32 1, i32 1, [5 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str, i32 1, i32 1, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str, i32 1, i32 1, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512 %contact_in_V, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  %contacts_size_load = load i32* @contacts_size, align 4
  switch i32 %operation_read, label %10 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %9
  ]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  %tmp = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load, i32 7, i32 31)
  %icmp = icmp sgt i25 %tmp, 0
  br i1 %icmp, label %2, label %3

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1)
  br label %4

; <label>:3                                       ; preds = %1
  %tmp_4 = sext i32 %contacts_size_load to i64
  %contacts_V_addr = getelementptr [128 x i512]* @contacts_V, i64 0, i64 %tmp_4
  store i512 %contact_in_V_read, i512* %contacts_V_addr, align 64
  %tmp_5 = add nsw i32 %contacts_size_load, 1
  store i32 %tmp_5, i32* @contacts_size, align 4
  br label %4

; <label>:4                                       ; preds = %3, %2
  %storemerge = phi i32 [ %tmp_5, %3 ], [ %contacts_size_load, %2 ]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %storemerge)
  br label %11

; <label>:5                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  %tmp_126 = trunc i64 %offset_read to i25
  br label %6

; <label>:6                                       ; preds = %8, %5
  %database_index = phi i24 [ 0, %5 ], [ %database_index_1, %8 ]
  %tmp_127 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %database_index, i32 23)
  %database_index_1 = add i24 %database_index, 1
  br i1 %tmp_127, label %.loopexit, label %7

; <label>:7                                       ; preds = %6
  %database_index_cast1 = zext i24 %database_index to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 8388608, i64 4194304)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
  %tmp_7_cast = zext i24 %database_index to i25
  %tmp_8 = icmp ult i32 %database_index_cast1, %db_size_in_read
  br i1 %tmp_8, label %8, label %.loopexit

; <label>:8                                       ; preds = %7
  %sum = add i25 %tmp_7_cast, %tmp_126
  %sum_cast = zext i25 %sum to i64
  %db_mem_V_addr = getelementptr i512* %db_mem_V, i64 %sum_cast
  %db_mem_V_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i512P(i512* %db_mem_V_addr, i32 1)
  %db_mem_V_addr_read = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %tmp_s = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read)
  %tmp_1 = zext i1 %tmp_s to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out, i8 %tmp_1)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_2)
  br label %6

.loopexit:                                        ; preds = %6, %7
  br label %11

; <label>:9                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  store i32 0, i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0)
  br label %11

; <label>:10                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3)
  br label %11

; <label>:11                                      ; preds = %10, %9, %.loopexit, %4
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i512P(i512*, i32) {
entry:
  ret i1 true
}

define weak i512 @_ssdm_op_Read.s_axilite.i512(i512) {
entry:
  ret i512 %0
}

define weak i512 @_ssdm_op_Read.m_axi.i512P(i512*) {
entry:
  %empty = load i512* %0
  ret i512 %empty
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak i64 @_ssdm_op_Read.ap_none.i64(i64) {
entry:
  ret i64 %0
}

define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

define weak i512 @_ssdm_op_Read.ap_auto.i512(i512) {
entry:
  ret i512 %0
}

declare i25 @_ssdm_op_PartSelect.i25.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i25
  ret i25 %empty_5
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_6 = shl i24 1, %empty
  %empty_7 = and i24 %0, %empty_6
  %empty_8 = icmp ne i24 %empty_7, 0
  ret i1 %empty_8
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!opencl.kernels = !{!0, !7, !13, !16, !18, !18, !18, !18}
!llvm.map.gv = !{!24}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hash"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"db_item"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"hash", metadata !"hash*", metadata !"ulong long", metadata !"uint", metadata !"int*", metadata !"int*", metadata !"uchar*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"db_mem", metadata !"offset", metadata !"db_size_in", metadata !"error_out", metadata !"contacts_size_out", metadata !"results_out"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<512> &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !15, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<512, false> &"}
!18 = metadata !{null, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !6}
!19 = metadata !{metadata !"kernel_arg_addr_space"}
!20 = metadata !{metadata !"kernel_arg_access_qual"}
!21 = metadata !{metadata !"kernel_arg_type"}
!22 = metadata !{metadata !"kernel_arg_type_qual"}
!23 = metadata !{metadata !"kernel_arg_name"}
!24 = metadata !{metadata !25, [1 x i32]* @llvm_global_ctors_0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"llvm.global_ctors.0", metadata !29, metadata !"", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, i32 1}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"operation", metadata !35, metadata !"int", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 0, i32 0}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 511, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"contact_in.V", metadata !35, metadata !"uint512", i32 0, i32 511}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 511, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"db_mem.V", metadata !45, metadata !"uint512", i32 0, i32 511}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 8388607, i32 1}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 63, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"offset", metadata !35, metadata !"long long unsigned int", i32 0, i32 63}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"db_size_in", metadata !35, metadata !"unsigned int", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"error_out", metadata !29, metadata !"int", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"contacts_size_out", metadata !29, metadata !"int", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 7, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"results_out", metadata !67, metadata !"unsigned char", i32 0, i32 7}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 1048575, i32 1}
