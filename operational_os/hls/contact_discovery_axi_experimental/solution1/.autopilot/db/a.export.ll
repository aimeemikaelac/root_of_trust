; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@contacts_size = internal unnamed_addr global i32 0, align 4
@contacts_V = internal unnamed_addr global [128 x i512] zeroinitializer
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00"
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str8 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str7 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

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

define void @contact_discovery(i32 %operation, i512 %contact_in_V, i512* %db_mem_V, i64 %offset, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, i8* %results_out_V, i64* %current_offset) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i512 %contact_in_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %db_mem_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %offset), !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %db_size_in), !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %results_out_V), !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %current_offset), !map !70
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %db_size_in_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %db_size_in)
  %offset_read = call i64 @_ssdm_op_Read.ap_none.i64(i64 %offset)
  %contact_in_V_read = call i512 @_ssdm_op_Read.s_axilite.i512(i512 %contact_in_V)
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation)
  call void (...)* @_ssdm_op_SpecInterface(i64* %current_offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %current_offset, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %offset, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %db_mem_V, [6 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 536870912, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 16, i32 16, i32 4, i32 16, [1 x i8]* @p_str3, [1 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecInterface(i8* %results_out_V, [5 x i8]* @p_str6, i32 1, i32 1, [5 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str, i32 1, i32 1, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512 %contact_in_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  %contacts_size_load = load i32* @contacts_size, align 4
  switch i32 %operation_read, label %71 [
    i32 0, label %1
    i32 1, label %5
    i32 2, label %70
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
  %tmp_5 = sext i32 %contacts_size_load to i64
  %contacts_V_addr = getelementptr [128 x i512]* @contacts_V, i64 0, i64 %tmp_5
  store i512 %contact_in_V_read, i512* %contacts_V_addr, align 64
  %tmp_6 = add nsw i32 %contacts_size_load, 1
  store i32 %tmp_6, i32* @contacts_size, align 4
  br label %4

; <label>:4                                       ; preds = %3, %2
  %storemerge = phi i32 [ %tmp_6, %3 ], [ %contacts_size_load, %2 ]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %storemerge)
  br label %.loopexit

; <label>:5                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  %tmp_126 = trunc i64 %offset_read to i32
  br label %6

; <label>:6                                       ; preds = %._crit_edge.63, %5
  %database_index = phi i32 [ 0, %5 ], [ %database_index_1, %._crit_edge.63 ]
  %tmp_7 = icmp ult i32 %database_index, %db_size_in_read
  br i1 %tmp_7, label %burst.rd.header.0, label %.loopexit.loopexit

burst.rd.header.0:                                ; preds = %6
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
  %tmp_8 = sext i32 %database_index to i64
  %tmp_9 = add i64 %tmp_8, %offset_read
  %tmp_3 = add i32 %tmp_126, %database_index
  %tmp_4 = sext i32 %tmp_3 to i64
  %db_mem_V_addr = getelementptr i512* %db_mem_V, i64 %tmp_4
  %db_mem_V_addr_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i512P(i512* %db_mem_V_addr, i32 64)
  %db_mem_V_addr_read = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_1 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_2 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_3 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_4 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_5 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_6 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_7 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_8 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_9 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_10 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_11 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_12 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_13 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_14 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_15 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_16 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_17 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_18 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_19 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_20 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_21 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_22 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_23 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_24 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_25 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_26 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_27 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_28 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_29 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_30 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_31 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_32 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_33 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_34 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_35 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_36 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_37 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_38 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_39 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_40 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_41 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_42 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_43 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_44 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_45 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_46 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_47 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_48 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_49 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_50 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_51 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_52 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_53 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_54 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_55 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_56 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_57 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_58 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_59 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_60 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_61 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_62 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %db_mem_V_addr_read_63 = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %db_mem_V_addr)
  %tmp_s = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read)
  %tmp_2 = zext i1 %tmp_s to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_2)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  %tmp_1_110 = or i32 %database_index, 1
  %tmp_2_1 = icmp ult i32 %tmp_1_110, %db_size_in_read
  br i1 %tmp_2_1, label %7, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %7, %burst.rd.header.0
  %tmp_1_s = or i32 %database_index, 2
  %tmp_2_2 = icmp ult i32 %tmp_1_s, %db_size_in_read
  br i1 %tmp_2_2, label %8, label %._crit_edge.2

; <label>:7                                       ; preds = %burst.rd.header.0
  %tmp_10_1 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_1)
  %tmp_10 = zext i1 %tmp_10_1 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_10)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.1

._crit_edge.2:                                    ; preds = %8, %._crit_edge.1
  %tmp_1_127 = or i32 %database_index, 3
  %tmp_2_3 = icmp ult i32 %tmp_1_127, %db_size_in_read
  br i1 %tmp_2_3, label %9, label %._crit_edge.3

; <label>:8                                       ; preds = %._crit_edge.1
  %tmp_10_2 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_2)
  %tmp_11 = zext i1 %tmp_10_2 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_11)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.2

._crit_edge.3:                                    ; preds = %9, %._crit_edge.2
  %tmp_1_128 = or i32 %database_index, 4
  %tmp_2_4 = icmp ult i32 %tmp_1_128, %db_size_in_read
  br i1 %tmp_2_4, label %10, label %._crit_edge.4

; <label>:9                                       ; preds = %._crit_edge.2
  %tmp_10_3 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_3)
  %tmp_12 = zext i1 %tmp_10_3 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_12)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.3

._crit_edge.4:                                    ; preds = %10, %._crit_edge.3
  %tmp_1_129 = or i32 %database_index, 5
  %tmp_2_5 = icmp ult i32 %tmp_1_129, %db_size_in_read
  br i1 %tmp_2_5, label %11, label %._crit_edge.5

; <label>:10                                      ; preds = %._crit_edge.3
  %tmp_10_4 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_4)
  %tmp_13 = zext i1 %tmp_10_4 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_13)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.4

._crit_edge.5:                                    ; preds = %11, %._crit_edge.4
  %tmp_1_130 = or i32 %database_index, 6
  %tmp_2_6 = icmp ult i32 %tmp_1_130, %db_size_in_read
  br i1 %tmp_2_6, label %12, label %._crit_edge.6

; <label>:11                                      ; preds = %._crit_edge.4
  %tmp_10_5 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_5)
  %tmp_14 = zext i1 %tmp_10_5 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_14)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.5

._crit_edge.6:                                    ; preds = %12, %._crit_edge.5
  %tmp_1_131 = or i32 %database_index, 7
  %tmp_2_7 = icmp ult i32 %tmp_1_131, %db_size_in_read
  br i1 %tmp_2_7, label %13, label %._crit_edge.7

; <label>:12                                      ; preds = %._crit_edge.5
  %tmp_10_6 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_6)
  %tmp_15 = zext i1 %tmp_10_6 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_15)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.6

._crit_edge.7:                                    ; preds = %13, %._crit_edge.6
  %tmp_1_132 = or i32 %database_index, 8
  %tmp_2_8 = icmp ult i32 %tmp_1_132, %db_size_in_read
  br i1 %tmp_2_8, label %14, label %._crit_edge.8

; <label>:13                                      ; preds = %._crit_edge.6
  %tmp_10_7 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_7)
  %tmp_16 = zext i1 %tmp_10_7 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_16)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.7

._crit_edge.8:                                    ; preds = %14, %._crit_edge.7
  %tmp_1_133 = or i32 %database_index, 9
  %tmp_2_9 = icmp ult i32 %tmp_1_133, %db_size_in_read
  br i1 %tmp_2_9, label %15, label %._crit_edge.9

; <label>:14                                      ; preds = %._crit_edge.7
  %tmp_10_8 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_8)
  %tmp_17 = zext i1 %tmp_10_8 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_17)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.8

._crit_edge.9:                                    ; preds = %15, %._crit_edge.8
  %tmp_1_134 = or i32 %database_index, 10
  %tmp_2_s = icmp ult i32 %tmp_1_134, %db_size_in_read
  br i1 %tmp_2_s, label %16, label %._crit_edge.10

; <label>:15                                      ; preds = %._crit_edge.8
  %tmp_10_9 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_9)
  %tmp_18 = zext i1 %tmp_10_9 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_18)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.9

._crit_edge.10:                                   ; preds = %16, %._crit_edge.9
  %tmp_1_135 = or i32 %database_index, 11
  %tmp_2_10 = icmp ult i32 %tmp_1_135, %db_size_in_read
  br i1 %tmp_2_10, label %17, label %._crit_edge.11

; <label>:16                                      ; preds = %._crit_edge.9
  %tmp_10_s = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_10)
  %tmp_19 = zext i1 %tmp_10_s to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_19)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.10

._crit_edge.11:                                   ; preds = %17, %._crit_edge.10
  %tmp_1_136 = or i32 %database_index, 12
  %tmp_2_11 = icmp ult i32 %tmp_1_136, %db_size_in_read
  br i1 %tmp_2_11, label %18, label %._crit_edge.12

; <label>:17                                      ; preds = %._crit_edge.10
  %tmp_10_10 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_11)
  %tmp_20 = zext i1 %tmp_10_10 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_20)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.11

._crit_edge.12:                                   ; preds = %18, %._crit_edge.11
  %tmp_1_137 = or i32 %database_index, 13
  %tmp_2_12 = icmp ult i32 %tmp_1_137, %db_size_in_read
  br i1 %tmp_2_12, label %19, label %._crit_edge.13

; <label>:18                                      ; preds = %._crit_edge.11
  %tmp_10_11 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_12)
  %tmp_21 = zext i1 %tmp_10_11 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_21)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.12

._crit_edge.13:                                   ; preds = %19, %._crit_edge.12
  %tmp_1_138 = or i32 %database_index, 14
  %tmp_2_13 = icmp ult i32 %tmp_1_138, %db_size_in_read
  br i1 %tmp_2_13, label %20, label %._crit_edge.14

; <label>:19                                      ; preds = %._crit_edge.12
  %tmp_10_12 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_13)
  %tmp_22 = zext i1 %tmp_10_12 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_22)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.13

._crit_edge.14:                                   ; preds = %20, %._crit_edge.13
  %tmp_1_139 = or i32 %database_index, 15
  %tmp_2_14 = icmp ult i32 %tmp_1_139, %db_size_in_read
  br i1 %tmp_2_14, label %21, label %._crit_edge.15

; <label>:20                                      ; preds = %._crit_edge.13
  %tmp_10_13 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_14)
  %tmp_23 = zext i1 %tmp_10_13 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_23)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.14

._crit_edge.15:                                   ; preds = %21, %._crit_edge.14
  %tmp_1_140 = or i32 %database_index, 16
  %tmp_2_15 = icmp ult i32 %tmp_1_140, %db_size_in_read
  br i1 %tmp_2_15, label %22, label %._crit_edge.16

; <label>:21                                      ; preds = %._crit_edge.14
  %tmp_10_14 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_15)
  %tmp_24 = zext i1 %tmp_10_14 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_24)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.15

._crit_edge.16:                                   ; preds = %22, %._crit_edge.15
  %tmp_1_141 = or i32 %database_index, 17
  %tmp_2_16 = icmp ult i32 %tmp_1_141, %db_size_in_read
  br i1 %tmp_2_16, label %23, label %._crit_edge.17

; <label>:22                                      ; preds = %._crit_edge.15
  %tmp_10_15 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_16)
  %tmp_25 = zext i1 %tmp_10_15 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_25)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.16

._crit_edge.17:                                   ; preds = %23, %._crit_edge.16
  %tmp_1_142 = or i32 %database_index, 18
  %tmp_2_17 = icmp ult i32 %tmp_1_142, %db_size_in_read
  br i1 %tmp_2_17, label %24, label %._crit_edge.18

; <label>:23                                      ; preds = %._crit_edge.16
  %tmp_10_16 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_17)
  %tmp_26 = zext i1 %tmp_10_16 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_26)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.17

._crit_edge.18:                                   ; preds = %24, %._crit_edge.17
  %tmp_1_143 = or i32 %database_index, 19
  %tmp_2_18 = icmp ult i32 %tmp_1_143, %db_size_in_read
  br i1 %tmp_2_18, label %25, label %._crit_edge.19

; <label>:24                                      ; preds = %._crit_edge.17
  %tmp_10_17 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_18)
  %tmp_27 = zext i1 %tmp_10_17 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_27)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.18

._crit_edge.19:                                   ; preds = %25, %._crit_edge.18
  %tmp_1_144 = or i32 %database_index, 20
  %tmp_2_19 = icmp ult i32 %tmp_1_144, %db_size_in_read
  br i1 %tmp_2_19, label %26, label %._crit_edge.20

; <label>:25                                      ; preds = %._crit_edge.18
  %tmp_10_18 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_19)
  %tmp_28 = zext i1 %tmp_10_18 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_28)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.19

._crit_edge.20:                                   ; preds = %26, %._crit_edge.19
  %tmp_1_145 = or i32 %database_index, 21
  %tmp_2_20 = icmp ult i32 %tmp_1_145, %db_size_in_read
  br i1 %tmp_2_20, label %27, label %._crit_edge.21

; <label>:26                                      ; preds = %._crit_edge.19
  %tmp_10_19 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_20)
  %tmp_29 = zext i1 %tmp_10_19 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_29)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.20

._crit_edge.21:                                   ; preds = %27, %._crit_edge.20
  %tmp_1_146 = or i32 %database_index, 22
  %tmp_2_21 = icmp ult i32 %tmp_1_146, %db_size_in_read
  br i1 %tmp_2_21, label %28, label %._crit_edge.22

; <label>:27                                      ; preds = %._crit_edge.20
  %tmp_10_20 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_21)
  %tmp_30 = zext i1 %tmp_10_20 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_30)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.21

._crit_edge.22:                                   ; preds = %28, %._crit_edge.21
  %tmp_1_147 = or i32 %database_index, 23
  %tmp_2_22 = icmp ult i32 %tmp_1_147, %db_size_in_read
  br i1 %tmp_2_22, label %29, label %._crit_edge.23

; <label>:28                                      ; preds = %._crit_edge.21
  %tmp_10_21 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_22)
  %tmp_31 = zext i1 %tmp_10_21 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_31)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.22

._crit_edge.23:                                   ; preds = %29, %._crit_edge.22
  %tmp_1_148 = or i32 %database_index, 24
  %tmp_2_23 = icmp ult i32 %tmp_1_148, %db_size_in_read
  br i1 %tmp_2_23, label %30, label %._crit_edge.24

; <label>:29                                      ; preds = %._crit_edge.22
  %tmp_10_22 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_23)
  %tmp_32 = zext i1 %tmp_10_22 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_32)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.23

._crit_edge.24:                                   ; preds = %30, %._crit_edge.23
  %tmp_1_149 = or i32 %database_index, 25
  %tmp_2_24 = icmp ult i32 %tmp_1_149, %db_size_in_read
  br i1 %tmp_2_24, label %31, label %._crit_edge.25

; <label>:30                                      ; preds = %._crit_edge.23
  %tmp_10_23 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_24)
  %tmp_33 = zext i1 %tmp_10_23 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_33)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.24

._crit_edge.25:                                   ; preds = %31, %._crit_edge.24
  %tmp_1_150 = or i32 %database_index, 26
  %tmp_2_25 = icmp ult i32 %tmp_1_150, %db_size_in_read
  br i1 %tmp_2_25, label %32, label %._crit_edge.26

; <label>:31                                      ; preds = %._crit_edge.24
  %tmp_10_24 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_25)
  %tmp_34 = zext i1 %tmp_10_24 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_34)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.25

._crit_edge.26:                                   ; preds = %32, %._crit_edge.25
  %tmp_1_151 = or i32 %database_index, 27
  %tmp_2_26 = icmp ult i32 %tmp_1_151, %db_size_in_read
  br i1 %tmp_2_26, label %33, label %._crit_edge.27

; <label>:32                                      ; preds = %._crit_edge.25
  %tmp_10_25 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_26)
  %tmp_35 = zext i1 %tmp_10_25 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_35)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.26

._crit_edge.27:                                   ; preds = %33, %._crit_edge.26
  %tmp_1_152 = or i32 %database_index, 28
  %tmp_2_27 = icmp ult i32 %tmp_1_152, %db_size_in_read
  br i1 %tmp_2_27, label %34, label %._crit_edge.28

; <label>:33                                      ; preds = %._crit_edge.26
  %tmp_10_26 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_27)
  %tmp_36 = zext i1 %tmp_10_26 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_36)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.27

._crit_edge.28:                                   ; preds = %34, %._crit_edge.27
  %tmp_1_153 = or i32 %database_index, 29
  %tmp_2_28 = icmp ult i32 %tmp_1_153, %db_size_in_read
  br i1 %tmp_2_28, label %35, label %._crit_edge.29

; <label>:34                                      ; preds = %._crit_edge.27
  %tmp_10_27 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_28)
  %tmp_37 = zext i1 %tmp_10_27 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_37)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.28

._crit_edge.29:                                   ; preds = %35, %._crit_edge.28
  %tmp_1_154 = or i32 %database_index, 30
  %tmp_2_29 = icmp ult i32 %tmp_1_154, %db_size_in_read
  br i1 %tmp_2_29, label %36, label %._crit_edge.30

; <label>:35                                      ; preds = %._crit_edge.28
  %tmp_10_28 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_29)
  %tmp_38 = zext i1 %tmp_10_28 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_38)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.29

._crit_edge.30:                                   ; preds = %36, %._crit_edge.29
  %tmp_1_155 = or i32 %database_index, 31
  %tmp_2_30 = icmp ult i32 %tmp_1_155, %db_size_in_read
  br i1 %tmp_2_30, label %37, label %._crit_edge.31

; <label>:36                                      ; preds = %._crit_edge.29
  %tmp_10_29 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_30)
  %tmp_39 = zext i1 %tmp_10_29 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_39)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.30

._crit_edge.31:                                   ; preds = %37, %._crit_edge.30
  %tmp_1_156 = or i32 %database_index, 32
  %tmp_2_31 = icmp ult i32 %tmp_1_156, %db_size_in_read
  br i1 %tmp_2_31, label %38, label %._crit_edge.32

; <label>:37                                      ; preds = %._crit_edge.30
  %tmp_10_30 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_31)
  %tmp_40 = zext i1 %tmp_10_30 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_40)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.31

._crit_edge.32:                                   ; preds = %38, %._crit_edge.31
  %tmp_1_157 = or i32 %database_index, 33
  %tmp_2_32 = icmp ult i32 %tmp_1_157, %db_size_in_read
  br i1 %tmp_2_32, label %39, label %._crit_edge.33

; <label>:38                                      ; preds = %._crit_edge.31
  %tmp_10_31 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_32)
  %tmp_41 = zext i1 %tmp_10_31 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_41)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.32

._crit_edge.33:                                   ; preds = %39, %._crit_edge.32
  %tmp_1_158 = or i32 %database_index, 34
  %tmp_2_33 = icmp ult i32 %tmp_1_158, %db_size_in_read
  br i1 %tmp_2_33, label %40, label %._crit_edge.34

; <label>:39                                      ; preds = %._crit_edge.32
  %tmp_10_32 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_33)
  %tmp_42 = zext i1 %tmp_10_32 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_42)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.33

._crit_edge.34:                                   ; preds = %40, %._crit_edge.33
  %tmp_1_159 = or i32 %database_index, 35
  %tmp_2_34 = icmp ult i32 %tmp_1_159, %db_size_in_read
  br i1 %tmp_2_34, label %41, label %._crit_edge.35

; <label>:40                                      ; preds = %._crit_edge.33
  %tmp_10_33 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_34)
  %tmp_43 = zext i1 %tmp_10_33 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_43)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.34

._crit_edge.35:                                   ; preds = %41, %._crit_edge.34
  %tmp_1_160 = or i32 %database_index, 36
  %tmp_2_35 = icmp ult i32 %tmp_1_160, %db_size_in_read
  br i1 %tmp_2_35, label %42, label %._crit_edge.36

; <label>:41                                      ; preds = %._crit_edge.34
  %tmp_10_34 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_35)
  %tmp_44 = zext i1 %tmp_10_34 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_44)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.35

._crit_edge.36:                                   ; preds = %42, %._crit_edge.35
  %tmp_1_161 = or i32 %database_index, 37
  %tmp_2_36 = icmp ult i32 %tmp_1_161, %db_size_in_read
  br i1 %tmp_2_36, label %43, label %._crit_edge.37

; <label>:42                                      ; preds = %._crit_edge.35
  %tmp_10_35 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_36)
  %tmp_45 = zext i1 %tmp_10_35 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_45)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.36

._crit_edge.37:                                   ; preds = %43, %._crit_edge.36
  %tmp_1_162 = or i32 %database_index, 38
  %tmp_2_37 = icmp ult i32 %tmp_1_162, %db_size_in_read
  br i1 %tmp_2_37, label %44, label %._crit_edge.38

; <label>:43                                      ; preds = %._crit_edge.36
  %tmp_10_36 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_37)
  %tmp_46 = zext i1 %tmp_10_36 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_46)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.37

._crit_edge.38:                                   ; preds = %44, %._crit_edge.37
  %tmp_1_163 = or i32 %database_index, 39
  %tmp_2_38 = icmp ult i32 %tmp_1_163, %db_size_in_read
  br i1 %tmp_2_38, label %45, label %._crit_edge.39

; <label>:44                                      ; preds = %._crit_edge.37
  %tmp_10_37 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_38)
  %tmp_47 = zext i1 %tmp_10_37 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_47)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.38

._crit_edge.39:                                   ; preds = %45, %._crit_edge.38
  %tmp_1_164 = or i32 %database_index, 40
  %tmp_2_39 = icmp ult i32 %tmp_1_164, %db_size_in_read
  br i1 %tmp_2_39, label %46, label %._crit_edge.40

; <label>:45                                      ; preds = %._crit_edge.38
  %tmp_10_38 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_39)
  %tmp_48 = zext i1 %tmp_10_38 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_48)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.39

._crit_edge.40:                                   ; preds = %46, %._crit_edge.39
  %tmp_1_165 = or i32 %database_index, 41
  %tmp_2_40 = icmp ult i32 %tmp_1_165, %db_size_in_read
  br i1 %tmp_2_40, label %47, label %._crit_edge.41

; <label>:46                                      ; preds = %._crit_edge.39
  %tmp_10_39 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_40)
  %tmp_49 = zext i1 %tmp_10_39 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_49)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.40

._crit_edge.41:                                   ; preds = %47, %._crit_edge.40
  %tmp_1_166 = or i32 %database_index, 42
  %tmp_2_41 = icmp ult i32 %tmp_1_166, %db_size_in_read
  br i1 %tmp_2_41, label %48, label %._crit_edge.42

; <label>:47                                      ; preds = %._crit_edge.40
  %tmp_10_40 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_41)
  %tmp_50 = zext i1 %tmp_10_40 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_50)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.41

._crit_edge.42:                                   ; preds = %48, %._crit_edge.41
  %tmp_1_167 = or i32 %database_index, 43
  %tmp_2_42 = icmp ult i32 %tmp_1_167, %db_size_in_read
  br i1 %tmp_2_42, label %49, label %._crit_edge.43

; <label>:48                                      ; preds = %._crit_edge.41
  %tmp_10_41 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_42)
  %tmp_51 = zext i1 %tmp_10_41 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_51)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.42

._crit_edge.43:                                   ; preds = %49, %._crit_edge.42
  %tmp_1_168 = or i32 %database_index, 44
  %tmp_2_43 = icmp ult i32 %tmp_1_168, %db_size_in_read
  br i1 %tmp_2_43, label %50, label %._crit_edge.44

; <label>:49                                      ; preds = %._crit_edge.42
  %tmp_10_42 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_43)
  %tmp_52 = zext i1 %tmp_10_42 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_52)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.43

._crit_edge.44:                                   ; preds = %50, %._crit_edge.43
  %tmp_1_169 = or i32 %database_index, 45
  %tmp_2_44 = icmp ult i32 %tmp_1_169, %db_size_in_read
  br i1 %tmp_2_44, label %51, label %._crit_edge.45

; <label>:50                                      ; preds = %._crit_edge.43
  %tmp_10_43 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_44)
  %tmp_53 = zext i1 %tmp_10_43 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_53)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.44

._crit_edge.45:                                   ; preds = %51, %._crit_edge.44
  %tmp_1_170 = or i32 %database_index, 46
  %tmp_2_45 = icmp ult i32 %tmp_1_170, %db_size_in_read
  br i1 %tmp_2_45, label %52, label %._crit_edge.46

; <label>:51                                      ; preds = %._crit_edge.44
  %tmp_10_44 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_45)
  %tmp_54 = zext i1 %tmp_10_44 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_54)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.45

._crit_edge.46:                                   ; preds = %52, %._crit_edge.45
  %tmp_1_171 = or i32 %database_index, 47
  %tmp_2_46 = icmp ult i32 %tmp_1_171, %db_size_in_read
  br i1 %tmp_2_46, label %53, label %._crit_edge.47

; <label>:52                                      ; preds = %._crit_edge.45
  %tmp_10_45 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_46)
  %tmp_55 = zext i1 %tmp_10_45 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_55)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.46

._crit_edge.47:                                   ; preds = %53, %._crit_edge.46
  %tmp_1_172 = or i32 %database_index, 48
  %tmp_2_47 = icmp ult i32 %tmp_1_172, %db_size_in_read
  br i1 %tmp_2_47, label %54, label %._crit_edge.48

; <label>:53                                      ; preds = %._crit_edge.46
  %tmp_10_46 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_47)
  %tmp_56 = zext i1 %tmp_10_46 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_56)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.47

._crit_edge.48:                                   ; preds = %54, %._crit_edge.47
  %tmp_1_173 = or i32 %database_index, 49
  %tmp_2_48 = icmp ult i32 %tmp_1_173, %db_size_in_read
  br i1 %tmp_2_48, label %55, label %._crit_edge.49

; <label>:54                                      ; preds = %._crit_edge.47
  %tmp_10_47 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_48)
  %tmp_57 = zext i1 %tmp_10_47 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_57)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.48

._crit_edge.49:                                   ; preds = %55, %._crit_edge.48
  %tmp_1_174 = or i32 %database_index, 50
  %tmp_2_49 = icmp ult i32 %tmp_1_174, %db_size_in_read
  br i1 %tmp_2_49, label %56, label %._crit_edge.50

; <label>:55                                      ; preds = %._crit_edge.48
  %tmp_10_48 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_49)
  %tmp_58 = zext i1 %tmp_10_48 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_58)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.49

._crit_edge.50:                                   ; preds = %56, %._crit_edge.49
  %tmp_1_175 = or i32 %database_index, 51
  %tmp_2_50 = icmp ult i32 %tmp_1_175, %db_size_in_read
  br i1 %tmp_2_50, label %57, label %._crit_edge.51

; <label>:56                                      ; preds = %._crit_edge.49
  %tmp_10_49 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_50)
  %tmp_59 = zext i1 %tmp_10_49 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_59)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.50

._crit_edge.51:                                   ; preds = %57, %._crit_edge.50
  %tmp_1_176 = or i32 %database_index, 52
  %tmp_2_51 = icmp ult i32 %tmp_1_176, %db_size_in_read
  br i1 %tmp_2_51, label %58, label %._crit_edge.52

; <label>:57                                      ; preds = %._crit_edge.50
  %tmp_10_50 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_51)
  %tmp_60 = zext i1 %tmp_10_50 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_60)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.51

._crit_edge.52:                                   ; preds = %58, %._crit_edge.51
  %tmp_1_177 = or i32 %database_index, 53
  %tmp_2_52 = icmp ult i32 %tmp_1_177, %db_size_in_read
  br i1 %tmp_2_52, label %59, label %._crit_edge.53

; <label>:58                                      ; preds = %._crit_edge.51
  %tmp_10_51 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_52)
  %tmp_61 = zext i1 %tmp_10_51 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_61)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.52

._crit_edge.53:                                   ; preds = %59, %._crit_edge.52
  %tmp_1_178 = or i32 %database_index, 54
  %tmp_2_53 = icmp ult i32 %tmp_1_178, %db_size_in_read
  br i1 %tmp_2_53, label %60, label %._crit_edge.54

; <label>:59                                      ; preds = %._crit_edge.52
  %tmp_10_52 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_53)
  %tmp_62 = zext i1 %tmp_10_52 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_62)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.53

._crit_edge.54:                                   ; preds = %60, %._crit_edge.53
  %tmp_1_179 = or i32 %database_index, 55
  %tmp_2_54 = icmp ult i32 %tmp_1_179, %db_size_in_read
  br i1 %tmp_2_54, label %61, label %._crit_edge.55

; <label>:60                                      ; preds = %._crit_edge.53
  %tmp_10_53 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_54)
  %tmp_63 = zext i1 %tmp_10_53 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_63)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.54

._crit_edge.55:                                   ; preds = %61, %._crit_edge.54
  %tmp_1_180 = or i32 %database_index, 56
  %tmp_2_55 = icmp ult i32 %tmp_1_180, %db_size_in_read
  br i1 %tmp_2_55, label %62, label %._crit_edge.56

; <label>:61                                      ; preds = %._crit_edge.54
  %tmp_10_54 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_55)
  %tmp_64 = zext i1 %tmp_10_54 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_64)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.55

._crit_edge.56:                                   ; preds = %62, %._crit_edge.55
  %tmp_1_181 = or i32 %database_index, 57
  %tmp_2_56 = icmp ult i32 %tmp_1_181, %db_size_in_read
  br i1 %tmp_2_56, label %63, label %._crit_edge.57

; <label>:62                                      ; preds = %._crit_edge.55
  %tmp_10_55 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_56)
  %tmp_65 = zext i1 %tmp_10_55 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_65)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.56

._crit_edge.57:                                   ; preds = %63, %._crit_edge.56
  %tmp_1_182 = or i32 %database_index, 58
  %tmp_2_57 = icmp ult i32 %tmp_1_182, %db_size_in_read
  br i1 %tmp_2_57, label %64, label %._crit_edge.58

; <label>:63                                      ; preds = %._crit_edge.56
  %tmp_10_56 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_57)
  %tmp_66 = zext i1 %tmp_10_56 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_66)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.57

._crit_edge.58:                                   ; preds = %64, %._crit_edge.57
  %tmp_1_183 = or i32 %database_index, 59
  %tmp_2_58 = icmp ult i32 %tmp_1_183, %db_size_in_read
  br i1 %tmp_2_58, label %65, label %._crit_edge.59

; <label>:64                                      ; preds = %._crit_edge.57
  %tmp_10_57 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_58)
  %tmp_67 = zext i1 %tmp_10_57 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_67)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.58

._crit_edge.59:                                   ; preds = %65, %._crit_edge.58
  %tmp_1_184 = or i32 %database_index, 60
  %tmp_2_59 = icmp ult i32 %tmp_1_184, %db_size_in_read
  br i1 %tmp_2_59, label %66, label %._crit_edge.60

; <label>:65                                      ; preds = %._crit_edge.58
  %tmp_10_58 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_59)
  %tmp_68 = zext i1 %tmp_10_58 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_68)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.59

._crit_edge.60:                                   ; preds = %66, %._crit_edge.59
  %tmp_1_185 = or i32 %database_index, 61
  %tmp_2_60 = icmp ult i32 %tmp_1_185, %db_size_in_read
  br i1 %tmp_2_60, label %67, label %._crit_edge.61

; <label>:66                                      ; preds = %._crit_edge.59
  %tmp_10_59 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_60)
  %tmp_69 = zext i1 %tmp_10_59 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_69)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.60

._crit_edge.61:                                   ; preds = %67, %._crit_edge.60
  %tmp_1_186 = or i32 %database_index, 62
  %tmp_2_61 = icmp ult i32 %tmp_1_186, %db_size_in_read
  br i1 %tmp_2_61, label %68, label %._crit_edge.62

; <label>:67                                      ; preds = %._crit_edge.60
  %tmp_10_60 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_61)
  %tmp_70 = zext i1 %tmp_10_60 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_70)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.61

._crit_edge.62:                                   ; preds = %68, %._crit_edge.61
  %tmp_1_187 = or i32 %database_index, 63
  %tmp_2_62 = icmp ult i32 %tmp_1_187, %db_size_in_read
  br i1 %tmp_2_62, label %69, label %._crit_edge.63

; <label>:68                                      ; preds = %._crit_edge.61
  %tmp_10_61 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_62)
  %tmp_71 = zext i1 %tmp_10_61 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_71)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.62

._crit_edge.63:                                   ; preds = %69, %._crit_edge.62
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_1)
  %database_index_1 = add nsw i32 %database_index, 64
  br label %6

; <label>:69                                      ; preds = %._crit_edge.62
  %tmp_10_62 = call fastcc i1 @match_db_contact(i512 %db_mem_V_addr_read_63)
  %tmp_72 = zext i1 %tmp_10_62 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %results_out_V, i8 %tmp_72)
  call void @_ssdm_op_Write.ap_none.i64P(i64* %current_offset, i64 %tmp_9)
  br label %._crit_edge.63

; <label>:70                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  store i32 0, i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0)
  br label %.loopexit

; <label>:71                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %6
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %71, %70, %4
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i64P(i64*, i64) {
entry:
  store i64 %1, i64* %0
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

declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i25
  ret i25 %empty_4
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !16, !19, !21, !21, !21, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!27}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hash"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"db_item"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"hash", metadata !"hash*", metadata !"ulong long", metadata !"uint", metadata !"int*", metadata !"int*", metadata !"hls::stream<uchar> &", metadata !"ulong long*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"db_mem", metadata !"offset", metadata !"db_size_in", metadata !"error_out", metadata !"contacts_size_out", metadata !"results_out", metadata !"current_offset"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<512> &"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!19 = metadata !{null, metadata !1, metadata !2, metadata !20, metadata !4, metadata !18, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<512, false> &"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space"}
!23 = metadata !{metadata !"kernel_arg_access_qual"}
!24 = metadata !{metadata !"kernel_arg_type"}
!25 = metadata !{metadata !"kernel_arg_type_qual"}
!26 = metadata !{metadata !"kernel_arg_name"}
!27 = metadata !{metadata !28, [1 x i32]* @llvm_global_ctors_0}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"llvm.global_ctors.0", metadata !32, metadata !"", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 1}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"operation", metadata !38, metadata !"int", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 0}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 511, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"contact_in.V", metadata !38, metadata !"uint512", i32 0, i32 511}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 511, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"db_mem.V", metadata !48, metadata !"uint512", i32 0, i32 511}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 8388607, i32 1}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 63, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"offset", metadata !38, metadata !"long long unsigned int", i32 0, i32 63}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"db_size_in", metadata !38, metadata !"unsigned int", i32 0, i32 31}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 31, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"error_out", metadata !32, metadata !"int", i32 0, i32 31}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 31, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"contacts_size_out", metadata !32, metadata !"int", i32 0, i32 31}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 7, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"results_out.V", metadata !32, metadata !"unsigned char", i32 0, i32 7}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 63, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"current_offset", metadata !32, metadata !"long long unsigned int", i32 0, i32 63}
