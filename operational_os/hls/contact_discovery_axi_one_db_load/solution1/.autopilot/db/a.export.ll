; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_one_db_load/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@results = internal unnamed_addr global [15000 x i1] zeroinitializer, align 16
@database_size = internal unnamed_addr global i32 0, align 4
@database = internal unnamed_addr global [960000 x i8] zeroinitializer, align 16
@contacts_size = internal unnamed_addr global i32 0, align 4
@contacts = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1

define internal fastcc void @match_db_contact(i14 %database_index) {
.preheader.preheader:
  %database_index_read = call i14 @_ssdm_op_Read.ap_auto.i14(i14 %database_index)
  %tmp = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 0)
  %tmp_s = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 1)
  %tmp_2 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 2)
  %tmp_1 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 3)
  %tmp_4 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 4)
  %tmp_5 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 5)
  %tmp_6 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 6)
  %tmp_7 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 7)
  %tmp_8 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 8)
  %tmp_9 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 9)
  %tmp_10 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 10)
  %tmp_11 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 11)
  %tmp_12 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 12)
  %tmp_13 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 13)
  %tmp_14 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 14)
  %tmp_15 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 15)
  %tmp_16 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 16)
  %tmp_17 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 17)
  %tmp_18 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 18)
  %tmp_19 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 19)
  %tmp_20 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 20)
  %tmp_21 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 21)
  %tmp_22 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 22)
  %tmp_23 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 23)
  %tmp_24 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 24)
  %tmp_25 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 25)
  %tmp_26 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 26)
  %tmp_27 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 27)
  %tmp_28 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 28)
  %tmp_29 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 29)
  %tmp_30 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 30)
  %tmp_31 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 31)
  %tmp_32 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 32)
  %tmp_33 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 33)
  %tmp_34 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 34)
  %tmp_35 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 35)
  %tmp_36 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 36)
  %tmp_37 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 37)
  %tmp_38 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 38)
  %tmp_39 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 39)
  %tmp_40 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 40)
  %tmp_41 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 41)
  %tmp_42 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 42)
  %tmp_43 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 43)
  %tmp_44 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 44)
  %tmp_45 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 45)
  %tmp_46 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 46)
  %tmp_47 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 47)
  %tmp_48 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 48)
  %tmp_49 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 49)
  %tmp_50 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 50)
  %tmp_51 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 51)
  %tmp_52 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 52)
  %tmp_53 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 53)
  %tmp_54 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 54)
  %tmp_55 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 55)
  %tmp_56 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 56)
  %tmp_57 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 57)
  %tmp_58 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 58)
  %tmp_59 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 59)
  %tmp_60 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 60)
  %tmp_61 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 61)
  %tmp_62 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 62)
  %tmp_63 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 63)
  %tmp_64 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 64)
  %tmp_65 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 65)
  %tmp_66 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 66)
  %tmp_67 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 67)
  %tmp_68 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 68)
  %tmp_69 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 69)
  %tmp_70 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 70)
  %tmp_71 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 71)
  %tmp_72 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 72)
  %tmp_73 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 73)
  %tmp_74 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 74)
  %tmp_75 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 75)
  %tmp_76 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 76)
  %tmp_77 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 77)
  %tmp_78 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 78)
  %tmp_79 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 79)
  %tmp_80 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 80)
  %tmp_81 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 81)
  %tmp_82 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 82)
  %tmp_83 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 83)
  %tmp_84 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 84)
  %tmp_85 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 85)
  %tmp_86 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 86)
  %tmp_87 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 87)
  %tmp_88 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 88)
  %tmp_89 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 89)
  %tmp_90 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 90)
  %tmp_91 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 91)
  %tmp_92 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 92)
  %tmp_93 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 93)
  %tmp_94 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 94)
  %tmp_95 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 95)
  %tmp_96 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 96)
  %tmp_97 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 97)
  %tmp_98 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 98)
  %tmp_99 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 99)
  %tmp_100 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 100)
  %tmp_101 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 101)
  %tmp_102 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 102)
  %tmp_103 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 103)
  %tmp_104 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 104)
  %tmp_105 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 105)
  %tmp_106 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 106)
  %tmp_107 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 107)
  %tmp_108 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 108)
  %tmp_109 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 109)
  %tmp_110 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 110)
  %tmp_111 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 111)
  %tmp_112 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 112)
  %tmp_113 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 113)
  %tmp_114 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 114)
  %tmp_115 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 115)
  %tmp_116 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 116)
  %tmp_117 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 117)
  %tmp_118 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 118)
  %tmp_119 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 119)
  %tmp_120 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 120)
  %tmp_121 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 121)
  %tmp_122 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 122)
  %tmp_123 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 123)
  %tmp_124 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 124)
  %tmp_125 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 125)
  %tmp_126 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 126)
  %tmp_127 = call fastcc zeroext i1 @compare(i14 %database_index_read, i8 127)
  %tmp6 = or i1 %tmp, %tmp_s
  %tmp7 = or i1 %tmp_2, %tmp_1
  %tmp5 = or i1 %tmp7, %tmp6
  %tmp9 = or i1 %tmp_4, %tmp_5
  %tmp10 = or i1 %tmp_6, %tmp_7
  %tmp8 = or i1 %tmp10, %tmp9
  %tmp4 = or i1 %tmp8, %tmp5
  %tmp13 = or i1 %tmp_8, %tmp_9
  %tmp14 = or i1 %tmp_10, %tmp_11
  %tmp12 = or i1 %tmp14, %tmp13
  %tmp16 = or i1 %tmp_12, %tmp_13
  %tmp17 = or i1 %tmp_14, %tmp_15
  %tmp15 = or i1 %tmp17, %tmp16
  %tmp11 = or i1 %tmp15, %tmp12
  %tmp3 = or i1 %tmp11, %tmp4
  %tmp21 = or i1 %tmp_16, %tmp_17
  %tmp22 = or i1 %tmp_18, %tmp_19
  %tmp20 = or i1 %tmp22, %tmp21
  %tmp24 = or i1 %tmp_20, %tmp_21
  %tmp25 = or i1 %tmp_22, %tmp_23
  %tmp23 = or i1 %tmp25, %tmp24
  %tmp19 = or i1 %tmp23, %tmp20
  %tmp28 = or i1 %tmp_24, %tmp_25
  %tmp29 = or i1 %tmp_26, %tmp_27
  %tmp27 = or i1 %tmp29, %tmp28
  %tmp31 = or i1 %tmp_28, %tmp_29
  %tmp32 = or i1 %tmp_30, %tmp_31
  %tmp30 = or i1 %tmp32, %tmp31
  %tmp26 = or i1 %tmp30, %tmp27
  %tmp18 = or i1 %tmp26, %tmp19
  %tmp2 = or i1 %tmp18, %tmp3
  %tmp37 = or i1 %tmp_32, %tmp_33
  %tmp38 = or i1 %tmp_34, %tmp_35
  %tmp36 = or i1 %tmp38, %tmp37
  %tmp40 = or i1 %tmp_36, %tmp_37
  %tmp41 = or i1 %tmp_38, %tmp_39
  %tmp39 = or i1 %tmp41, %tmp40
  %tmp35 = or i1 %tmp39, %tmp36
  %tmp44 = or i1 %tmp_40, %tmp_41
  %tmp45 = or i1 %tmp_42, %tmp_43
  %tmp43 = or i1 %tmp45, %tmp44
  %tmp47 = or i1 %tmp_44, %tmp_45
  %tmp48 = or i1 %tmp_46, %tmp_47
  %tmp46 = or i1 %tmp48, %tmp47
  %tmp42 = or i1 %tmp46, %tmp43
  %tmp34 = or i1 %tmp42, %tmp35
  %tmp52 = or i1 %tmp_48, %tmp_49
  %tmp53 = or i1 %tmp_50, %tmp_51
  %tmp51 = or i1 %tmp53, %tmp52
  %tmp55 = or i1 %tmp_52, %tmp_53
  %tmp56 = or i1 %tmp_54, %tmp_55
  %tmp54 = or i1 %tmp56, %tmp55
  %tmp50 = or i1 %tmp54, %tmp51
  %tmp59 = or i1 %tmp_56, %tmp_57
  %tmp60 = or i1 %tmp_58, %tmp_59
  %tmp58 = or i1 %tmp60, %tmp59
  %tmp62 = or i1 %tmp_60, %tmp_61
  %tmp63 = or i1 %tmp_62, %tmp_63
  %tmp61 = or i1 %tmp63, %tmp62
  %tmp57 = or i1 %tmp61, %tmp58
  %tmp49 = or i1 %tmp57, %tmp50
  %tmp33 = or i1 %tmp49, %tmp34
  %tmp1 = or i1 %tmp33, %tmp2
  %tmp69 = or i1 %tmp_64, %tmp_65
  %tmp70 = or i1 %tmp_66, %tmp_67
  %tmp68 = or i1 %tmp70, %tmp69
  %tmp72 = or i1 %tmp_68, %tmp_69
  %tmp73 = or i1 %tmp_70, %tmp_71
  %tmp71 = or i1 %tmp73, %tmp72
  %tmp67 = or i1 %tmp71, %tmp68
  %tmp76 = or i1 %tmp_72, %tmp_73
  %tmp77 = or i1 %tmp_74, %tmp_75
  %tmp75 = or i1 %tmp77, %tmp76
  %tmp79 = or i1 %tmp_76, %tmp_77
  %tmp80 = or i1 %tmp_78, %tmp_79
  %tmp78 = or i1 %tmp80, %tmp79
  %tmp74 = or i1 %tmp78, %tmp75
  %tmp66 = or i1 %tmp74, %tmp67
  %tmp84 = or i1 %tmp_80, %tmp_81
  %tmp85 = or i1 %tmp_82, %tmp_83
  %tmp83 = or i1 %tmp85, %tmp84
  %tmp87 = or i1 %tmp_84, %tmp_85
  %tmp88 = or i1 %tmp_86, %tmp_87
  %tmp86 = or i1 %tmp88, %tmp87
  %tmp82 = or i1 %tmp86, %tmp83
  %tmp91 = or i1 %tmp_88, %tmp_89
  %tmp92 = or i1 %tmp_90, %tmp_91
  %tmp90 = or i1 %tmp92, %tmp91
  %tmp94 = or i1 %tmp_92, %tmp_93
  %tmp95 = or i1 %tmp_94, %tmp_95
  %tmp93 = or i1 %tmp95, %tmp94
  %tmp89 = or i1 %tmp93, %tmp90
  %tmp81 = or i1 %tmp89, %tmp82
  %tmp65 = or i1 %tmp81, %tmp66
  %tmp100 = or i1 %tmp_96, %tmp_97
  %tmp101 = or i1 %tmp_98, %tmp_99
  %tmp99 = or i1 %tmp101, %tmp100
  %tmp103 = or i1 %tmp_100, %tmp_101
  %tmp104 = or i1 %tmp_102, %tmp_103
  %tmp102 = or i1 %tmp104, %tmp103
  %tmp98 = or i1 %tmp102, %tmp99
  %tmp107 = or i1 %tmp_104, %tmp_105
  %tmp108 = or i1 %tmp_106, %tmp_107
  %tmp106 = or i1 %tmp108, %tmp107
  %tmp110 = or i1 %tmp_108, %tmp_109
  %tmp111 = or i1 %tmp_110, %tmp_111
  %tmp109 = or i1 %tmp111, %tmp110
  %tmp105 = or i1 %tmp109, %tmp106
  %tmp97 = or i1 %tmp105, %tmp98
  %tmp115 = or i1 %tmp_112, %tmp_113
  %tmp116 = or i1 %tmp_114, %tmp_115
  %tmp114 = or i1 %tmp116, %tmp115
  %tmp118 = or i1 %tmp_116, %tmp_117
  %tmp119 = or i1 %tmp_118, %tmp_119
  %tmp117 = or i1 %tmp119, %tmp118
  %tmp113 = or i1 %tmp117, %tmp114
  %tmp122 = or i1 %tmp_120, %tmp_121
  %tmp123 = or i1 %tmp_122, %tmp_123
  %tmp121 = or i1 %tmp123, %tmp122
  %tmp125 = or i1 %tmp_124, %tmp_125
  %tmp126 = or i1 %tmp_126, %tmp_127
  %tmp124 = or i1 %tmp126, %tmp125
  %tmp120 = or i1 %tmp124, %tmp121
  %tmp112 = or i1 %tmp120, %tmp113
  %tmp96 = or i1 %tmp112, %tmp97
  %tmp64 = or i1 %tmp96, %tmp65
  %matched_1_s = or i1 %tmp64, %tmp1
  %tmp_3 = zext i14 %database_index_read to i64
  %results_addr = getelementptr inbounds [15000 x i1]* @results, i64 0, i64 %tmp_3
  store i1 %matched_1_s, i1* %results_addr, align 1
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @contact_discovery(i32 %operation, [64 x i8]* %contact_in, [64 x i8]* %database_in, [15000 x i1]* %matched_out, i32* %matched_finished, i32* %error_out, i32* %database_size_out, i32* %contacts_size_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i8]* %contact_in) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i8]* %database_in) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap([15000 x i1]* %matched_out) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %matched_finished) nounwind, !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %database_size_out) nounwind, !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %database_size_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str3, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %matched_finished, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str2, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([15000 x i1]* %matched_out, [1 x i8]* @p_str8, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecInterface([15000 x i1]* %matched_out, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_4 = call i32 (...)* @_ssdm_op_SpecMemCore([64 x i8]* %database_in, [1 x i8]* @p_str7, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str7, i32 -1, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecInterface([64 x i8]* %database_in, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([64 x i8]* %contact_in, [1 x i8]* @p_str6, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str6, i32 -1, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecInterface([64 x i8]* %contact_in, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %contacts_size_load = load i32* @contacts_size, align 4
  %database_size_load = load i32* @database_size, align 4
  switch i32 %operation_read, label %20 [
    i32 0, label %1
    i32 1, label %7
    i32 2, label %13
    i32 3, label %18
    i32 4, label %19
  ]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %database_size_load) nounwind
  %tmp = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load, i32 7, i32 31)
  %icmp = icmp sgt i25 %tmp, 0
  br i1 %icmp, label %2, label %3

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1) nounwind
  br label %6

; <label>:3                                       ; preds = %1
  %tmp_127 = trunc i32 %contacts_size_load to i9
  %tmp_9_cast = call i15 @_ssdm_op_BitConcatenate.i15.i9.i6(i9 %tmp_127, i6 0)
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_i = phi i7 [ 0, %3 ], [ %i_2, %5 ]
  %exitcond_i = icmp eq i7 %i_i, -64
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i_2 = add i7 %i_i, 1
  br i1 %exitcond_i, label %_memcpy.exit, label %5

; <label>:5                                       ; preds = %4
  %tmp_i = zext i7 %i_i to i64
  %tmp_i_cast = zext i7 %i_i to i15
  %contact_in_addr = getelementptr [64 x i8]* %contact_in, i64 0, i64 %tmp_i
  %contact_in_load = load i8* %contact_in_addr, align 1
  %sum_i = add i15 %tmp_i_cast, %tmp_9_cast
  %sum_i_cast = sext i15 %sum_i to i64
  %contacts_addr = getelementptr [8192 x i8]* @contacts, i64 0, i64 %sum_i_cast
  store i8 %contact_in_load, i8* %contacts_addr, align 1
  br label %4

_memcpy.exit:                                     ; preds = %4
  %tmp_s = add nsw i32 %contacts_size_load, 1
  store i32 %tmp_s, i32* @contacts_size, align 4
  br label %6

; <label>:6                                       ; preds = %_memcpy.exit, %2
  %storemerge1 = phi i32 [ %tmp_s, %_memcpy.exit ], [ %contacts_size_load, %2 ]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %storemerge1) nounwind
  br label %21

; <label>:7                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind
  %tmp_7 = icmp sgt i32 %database_size_load, 14999
  br i1 %tmp_7, label %8, label %9

; <label>:8                                       ; preds = %7
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 2) nounwind
  br label %12

; <label>:9                                       ; preds = %7
  %tmp_128 = trunc i32 %database_size_load to i15
  %tmp_2_cast = call i21 @_ssdm_op_BitConcatenate.i21.i15.i6(i15 %tmp_128, i6 0)
  br label %10

; <label>:10                                      ; preds = %11, %9
  %i_i4 = phi i7 [ 0, %9 ], [ %i_3, %11 ]
  %exitcond_i5 = icmp eq i7 %i_i4, -64
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i_3 = add i7 %i_i4, 1
  br i1 %exitcond_i5, label %_memcpy.1.exit, label %11

; <label>:11                                      ; preds = %10
  %tmp_i6 = zext i7 %i_i4 to i64
  %tmp_i6_cast = zext i7 %i_i4 to i21
  %database_in_addr = getelementptr [64 x i8]* %database_in, i64 0, i64 %tmp_i6
  %database_in_load = load i8* %database_in_addr, align 1
  %sum_i9 = add i21 %tmp_i6_cast, %tmp_2_cast
  %sum_i9_cast = sext i21 %sum_i9 to i64
  %database_addr = getelementptr [960000 x i8]* @database, i64 0, i64 %sum_i9_cast
  store i8 %database_in_load, i8* %database_addr, align 1
  br label %10

_memcpy.1.exit:                                   ; preds = %10
  %tmp_3 = add nsw i32 %database_size_load, 1
  store i32 %tmp_3, i32* @database_size, align 4
  br label %12

; <label>:12                                      ; preds = %_memcpy.1.exit, %8
  %storemerge = phi i32 [ %tmp_3, %_memcpy.1.exit ], [ %database_size_load, %8 ]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %storemerge) nounwind
  br label %21

; <label>:13                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %database_size_load) nounwind
  br label %14

; <label>:14                                      ; preds = %15, %13
  %database_index = phi i14 [ 0, %13 ], [ %database_index_1, %15 ]
  %exitcond2 = icmp eq i14 %database_index, -1384
  %database_index_1 = add i14 %database_index, 1
  br i1 %exitcond2, label %.preheader.preheader, label %15

.preheader.preheader:                             ; preds = %14
  br label %.preheader

; <label>:15                                      ; preds = %14
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 15000, i64 15000, i64 15000) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  call fastcc void @match_db_contact(i14 %database_index) nounwind
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_5) nounwind
  br label %14

.preheader:                                       ; preds = %.preheader.preheader, %16
  %i = phi i14 [ %i_1, %16 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i14 %i, -1384
  %i_1 = add i14 %i, 1
  br i1 %exitcond, label %17, label %16

; <label>:16                                      ; preds = %.preheader
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 15000, i64 15000, i64 15000) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_4 = zext i14 %i to i64
  %results_addr = getelementptr inbounds [15000 x i1]* @results, i64 0, i64 %tmp_4
  %results_load = load i1* %results_addr, align 1
  %matched_out_addr = getelementptr [15000 x i1]* %matched_out, i64 0, i64 %tmp_4
  store i1 %results_load, i1* %matched_out_addr, align 1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_6) nounwind
  br label %.preheader

; <label>:17                                      ; preds = %.preheader
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 1) nounwind
  br label %21

; <label>:18                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind
  store i32 0, i32* @database_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 0) nounwind
  br label %21

; <label>:19                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0) nounwind
  store i32 0, i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %database_size_load) nounwind
  br label %21

; <label>:20                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %database_size_out, i32 %database_size_load) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %matched_finished, i32 0) nounwind
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3) nounwind
  br label %21

; <label>:21                                      ; preds = %20, %19, %18, %17, %12, %6
  ret void
}

define internal fastcc zeroext i1 @compare(i14 %db_index, i8 %contacts_index) readonly {
.preheader.preheader:
  %contacts_index_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %contacts_index)
  %db_index_read = call i14 @_ssdm_op_Read.ap_auto.i14(i14 %db_index)
  %tmp_129 = trunc i8 %contacts_index_read to i7
  %tmp = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_129, i6 0)
  %tmp_s = call i20 @_ssdm_op_BitConcatenate.i20.i14.i6(i14 %db_index_read, i6 0)
  %tmp_6 = zext i13 %tmp to i64
  %contacts_addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6
  %contacts_load = load i8* %contacts_addr, align 16
  %tmp_8 = zext i20 %tmp_s to i64
  %database_addr = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8
  %database_load = load i8* %database_addr, align 16
  %tmp_9 = icmp eq i8 %contacts_load, %database_load
  %tmp_5_s = or i13 %tmp, 1
  %tmp_6_1 = zext i13 %tmp_5_s to i64
  %contacts_addr_1 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_1
  %contacts_load_1 = load i8* %contacts_addr_1, align 1
  %tmp_7_s = or i20 %tmp_s, 1
  %tmp_8_1 = zext i20 %tmp_7_s to i64
  %database_addr_1 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_1
  %database_load_1 = load i8* %database_addr_1, align 1
  %tmp_9_1 = icmp eq i8 %contacts_load_1, %database_load_1
  %tmp_5_1 = or i13 %tmp, 2
  %tmp_6_2 = zext i13 %tmp_5_1 to i64
  %contacts_addr_2 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_2
  %contacts_load_2 = load i8* %contacts_addr_2, align 2
  %tmp_7_1 = or i20 %tmp_s, 2
  %tmp_8_2 = zext i20 %tmp_7_1 to i64
  %database_addr_2 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_2
  %database_load_2 = load i8* %database_addr_2, align 2
  %tmp_9_2 = icmp eq i8 %contacts_load_2, %database_load_2
  %tmp_5_2 = or i13 %tmp, 3
  %tmp_6_3 = zext i13 %tmp_5_2 to i64
  %contacts_addr_3 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_3
  %contacts_load_3 = load i8* %contacts_addr_3, align 1
  %tmp_7_2 = or i20 %tmp_s, 3
  %tmp_8_3 = zext i20 %tmp_7_2 to i64
  %database_addr_3 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_3
  %database_load_3 = load i8* %database_addr_3, align 1
  %tmp_9_3 = icmp eq i8 %contacts_load_3, %database_load_3
  %tmp_5_3 = or i13 %tmp, 4
  %tmp_6_4 = zext i13 %tmp_5_3 to i64
  %contacts_addr_4 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_4
  %contacts_load_4 = load i8* %contacts_addr_4, align 4
  %tmp_7_3 = or i20 %tmp_s, 4
  %tmp_8_4 = zext i20 %tmp_7_3 to i64
  %database_addr_4 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_4
  %database_load_4 = load i8* %database_addr_4, align 4
  %tmp_9_4 = icmp eq i8 %contacts_load_4, %database_load_4
  %tmp_5_4 = or i13 %tmp, 5
  %tmp_6_5 = zext i13 %tmp_5_4 to i64
  %contacts_addr_5 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_5
  %contacts_load_5 = load i8* %contacts_addr_5, align 1
  %tmp_7_4 = or i20 %tmp_s, 5
  %tmp_8_5 = zext i20 %tmp_7_4 to i64
  %database_addr_5 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_5
  %database_load_5 = load i8* %database_addr_5, align 1
  %tmp_9_5 = icmp eq i8 %contacts_load_5, %database_load_5
  %tmp_5_5 = or i13 %tmp, 6
  %tmp_6_6 = zext i13 %tmp_5_5 to i64
  %contacts_addr_6 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_6
  %contacts_load_6 = load i8* %contacts_addr_6, align 2
  %tmp_7_5 = or i20 %tmp_s, 6
  %tmp_8_6 = zext i20 %tmp_7_5 to i64
  %database_addr_6 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_6
  %database_load_6 = load i8* %database_addr_6, align 2
  %tmp_9_6 = icmp eq i8 %contacts_load_6, %database_load_6
  %tmp_5_6 = or i13 %tmp, 7
  %tmp_6_7 = zext i13 %tmp_5_6 to i64
  %contacts_addr_7 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_7
  %contacts_load_7 = load i8* %contacts_addr_7, align 1
  %tmp_7_6 = or i20 %tmp_s, 7
  %tmp_8_7 = zext i20 %tmp_7_6 to i64
  %database_addr_7 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_7
  %database_load_7 = load i8* %database_addr_7, align 1
  %tmp_9_7 = icmp eq i8 %contacts_load_7, %database_load_7
  %tmp_5_7 = or i13 %tmp, 8
  %tmp_6_8 = zext i13 %tmp_5_7 to i64
  %contacts_addr_8 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_8
  %contacts_load_8 = load i8* %contacts_addr_8, align 8
  %tmp_7_7 = or i20 %tmp_s, 8
  %tmp_8_8 = zext i20 %tmp_7_7 to i64
  %database_addr_8 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_8
  %database_load_8 = load i8* %database_addr_8, align 8
  %tmp_9_8 = icmp eq i8 %contacts_load_8, %database_load_8
  %tmp_5_8 = or i13 %tmp, 9
  %tmp_6_9 = zext i13 %tmp_5_8 to i64
  %contacts_addr_9 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_9
  %contacts_load_9 = load i8* %contacts_addr_9, align 1
  %tmp_7_8 = or i20 %tmp_s, 9
  %tmp_8_9 = zext i20 %tmp_7_8 to i64
  %database_addr_9 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_9
  %database_load_9 = load i8* %database_addr_9, align 1
  %tmp_9_9 = icmp eq i8 %contacts_load_9, %database_load_9
  %tmp_5_9 = or i13 %tmp, 10
  %tmp_6_s = zext i13 %tmp_5_9 to i64
  %contacts_addr_10 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_s
  %contacts_load_10 = load i8* %contacts_addr_10, align 2
  %tmp_7_9 = or i20 %tmp_s, 10
  %tmp_8_s = zext i20 %tmp_7_9 to i64
  %database_addr_10 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_s
  %database_load_10 = load i8* %database_addr_10, align 2
  %tmp_9_s = icmp eq i8 %contacts_load_10, %database_load_10
  %tmp_5_10 = or i13 %tmp, 11
  %tmp_6_10 = zext i13 %tmp_5_10 to i64
  %contacts_addr_11 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_10
  %contacts_load_11 = load i8* %contacts_addr_11, align 1
  %tmp_7_10 = or i20 %tmp_s, 11
  %tmp_8_10 = zext i20 %tmp_7_10 to i64
  %database_addr_11 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_10
  %database_load_11 = load i8* %database_addr_11, align 1
  %tmp_9_10 = icmp eq i8 %contacts_load_11, %database_load_11
  %tmp_5_11 = or i13 %tmp, 12
  %tmp_6_11 = zext i13 %tmp_5_11 to i64
  %contacts_addr_12 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_11
  %contacts_load_12 = load i8* %contacts_addr_12, align 4
  %tmp_7_11 = or i20 %tmp_s, 12
  %tmp_8_11 = zext i20 %tmp_7_11 to i64
  %database_addr_12 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_11
  %database_load_12 = load i8* %database_addr_12, align 4
  %tmp_9_11 = icmp eq i8 %contacts_load_12, %database_load_12
  %tmp_5_12 = or i13 %tmp, 13
  %tmp_6_12 = zext i13 %tmp_5_12 to i64
  %contacts_addr_13 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_12
  %contacts_load_13 = load i8* %contacts_addr_13, align 1
  %tmp_7_12 = or i20 %tmp_s, 13
  %tmp_8_12 = zext i20 %tmp_7_12 to i64
  %database_addr_13 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_12
  %database_load_13 = load i8* %database_addr_13, align 1
  %tmp_9_12 = icmp eq i8 %contacts_load_13, %database_load_13
  %tmp_5_13 = or i13 %tmp, 14
  %tmp_6_13 = zext i13 %tmp_5_13 to i64
  %contacts_addr_14 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_13
  %contacts_load_14 = load i8* %contacts_addr_14, align 2
  %tmp_7_13 = or i20 %tmp_s, 14
  %tmp_8_13 = zext i20 %tmp_7_13 to i64
  %database_addr_14 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_13
  %database_load_14 = load i8* %database_addr_14, align 2
  %tmp_9_13 = icmp eq i8 %contacts_load_14, %database_load_14
  %tmp_5_14 = or i13 %tmp, 15
  %tmp_6_14 = zext i13 %tmp_5_14 to i64
  %contacts_addr_15 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_14
  %contacts_load_15 = load i8* %contacts_addr_15, align 1
  %tmp_7_14 = or i20 %tmp_s, 15
  %tmp_8_14 = zext i20 %tmp_7_14 to i64
  %database_addr_15 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_14
  %database_load_15 = load i8* %database_addr_15, align 1
  %tmp_9_14 = icmp eq i8 %contacts_load_15, %database_load_15
  %tmp_5_15 = or i13 %tmp, 16
  %tmp_6_15 = zext i13 %tmp_5_15 to i64
  %contacts_addr_16 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_15
  %contacts_load_16 = load i8* %contacts_addr_16, align 16
  %tmp_7_15 = or i20 %tmp_s, 16
  %tmp_8_15 = zext i20 %tmp_7_15 to i64
  %database_addr_16 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_15
  %database_load_16 = load i8* %database_addr_16, align 16
  %tmp_9_15 = icmp eq i8 %contacts_load_16, %database_load_16
  %tmp_5_16 = or i13 %tmp, 17
  %tmp_6_16 = zext i13 %tmp_5_16 to i64
  %contacts_addr_17 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_16
  %contacts_load_17 = load i8* %contacts_addr_17, align 1
  %tmp_7_16 = or i20 %tmp_s, 17
  %tmp_8_16 = zext i20 %tmp_7_16 to i64
  %database_addr_17 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_16
  %database_load_17 = load i8* %database_addr_17, align 1
  %tmp_9_16 = icmp eq i8 %contacts_load_17, %database_load_17
  %tmp_5_17 = or i13 %tmp, 18
  %tmp_6_17 = zext i13 %tmp_5_17 to i64
  %contacts_addr_18 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_17
  %contacts_load_18 = load i8* %contacts_addr_18, align 2
  %tmp_7_17 = or i20 %tmp_s, 18
  %tmp_8_17 = zext i20 %tmp_7_17 to i64
  %database_addr_18 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_17
  %database_load_18 = load i8* %database_addr_18, align 2
  %tmp_9_17 = icmp eq i8 %contacts_load_18, %database_load_18
  %tmp_5_18 = or i13 %tmp, 19
  %tmp_6_18 = zext i13 %tmp_5_18 to i64
  %contacts_addr_19 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_18
  %contacts_load_19 = load i8* %contacts_addr_19, align 1
  %tmp_7_18 = or i20 %tmp_s, 19
  %tmp_8_18 = zext i20 %tmp_7_18 to i64
  %database_addr_19 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_18
  %database_load_19 = load i8* %database_addr_19, align 1
  %tmp_9_18 = icmp eq i8 %contacts_load_19, %database_load_19
  %tmp_5_19 = or i13 %tmp, 20
  %tmp_6_19 = zext i13 %tmp_5_19 to i64
  %contacts_addr_20 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_19
  %contacts_load_20 = load i8* %contacts_addr_20, align 4
  %tmp_7_19 = or i20 %tmp_s, 20
  %tmp_8_19 = zext i20 %tmp_7_19 to i64
  %database_addr_20 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_19
  %database_load_20 = load i8* %database_addr_20, align 4
  %tmp_9_19 = icmp eq i8 %contacts_load_20, %database_load_20
  %tmp_5_20 = or i13 %tmp, 21
  %tmp_6_20 = zext i13 %tmp_5_20 to i64
  %contacts_addr_21 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_20
  %contacts_load_21 = load i8* %contacts_addr_21, align 1
  %tmp_7_20 = or i20 %tmp_s, 21
  %tmp_8_20 = zext i20 %tmp_7_20 to i64
  %database_addr_21 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_20
  %database_load_21 = load i8* %database_addr_21, align 1
  %tmp_9_20 = icmp eq i8 %contacts_load_21, %database_load_21
  %tmp_5_21 = or i13 %tmp, 22
  %tmp_6_21 = zext i13 %tmp_5_21 to i64
  %contacts_addr_22 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_21
  %contacts_load_22 = load i8* %contacts_addr_22, align 2
  %tmp_7_21 = or i20 %tmp_s, 22
  %tmp_8_21 = zext i20 %tmp_7_21 to i64
  %database_addr_22 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_21
  %database_load_22 = load i8* %database_addr_22, align 2
  %tmp_9_21 = icmp eq i8 %contacts_load_22, %database_load_22
  %tmp_5_22 = or i13 %tmp, 23
  %tmp_6_22 = zext i13 %tmp_5_22 to i64
  %contacts_addr_23 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_22
  %contacts_load_23 = load i8* %contacts_addr_23, align 1
  %tmp_7_22 = or i20 %tmp_s, 23
  %tmp_8_22 = zext i20 %tmp_7_22 to i64
  %database_addr_23 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_22
  %database_load_23 = load i8* %database_addr_23, align 1
  %tmp_9_22 = icmp eq i8 %contacts_load_23, %database_load_23
  %tmp_5_23 = or i13 %tmp, 24
  %tmp_6_23 = zext i13 %tmp_5_23 to i64
  %contacts_addr_24 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_23
  %contacts_load_24 = load i8* %contacts_addr_24, align 8
  %tmp_7_23 = or i20 %tmp_s, 24
  %tmp_8_23 = zext i20 %tmp_7_23 to i64
  %database_addr_24 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_23
  %database_load_24 = load i8* %database_addr_24, align 8
  %tmp_9_23 = icmp eq i8 %contacts_load_24, %database_load_24
  %tmp_5_24 = or i13 %tmp, 25
  %tmp_6_24 = zext i13 %tmp_5_24 to i64
  %contacts_addr_25 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_24
  %contacts_load_25 = load i8* %contacts_addr_25, align 1
  %tmp_7_24 = or i20 %tmp_s, 25
  %tmp_8_24 = zext i20 %tmp_7_24 to i64
  %database_addr_25 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_24
  %database_load_25 = load i8* %database_addr_25, align 1
  %tmp_9_24 = icmp eq i8 %contacts_load_25, %database_load_25
  %tmp_5_25 = or i13 %tmp, 26
  %tmp_6_25 = zext i13 %tmp_5_25 to i64
  %contacts_addr_26 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_25
  %contacts_load_26 = load i8* %contacts_addr_26, align 2
  %tmp_7_25 = or i20 %tmp_s, 26
  %tmp_8_25 = zext i20 %tmp_7_25 to i64
  %database_addr_26 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_25
  %database_load_26 = load i8* %database_addr_26, align 2
  %tmp_9_25 = icmp eq i8 %contacts_load_26, %database_load_26
  %tmp_5_26 = or i13 %tmp, 27
  %tmp_6_26 = zext i13 %tmp_5_26 to i64
  %contacts_addr_27 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_26
  %contacts_load_27 = load i8* %contacts_addr_27, align 1
  %tmp_7_26 = or i20 %tmp_s, 27
  %tmp_8_26 = zext i20 %tmp_7_26 to i64
  %database_addr_27 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_26
  %database_load_27 = load i8* %database_addr_27, align 1
  %tmp_9_26 = icmp eq i8 %contacts_load_27, %database_load_27
  %tmp_5_27 = or i13 %tmp, 28
  %tmp_6_27 = zext i13 %tmp_5_27 to i64
  %contacts_addr_28 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_27
  %contacts_load_28 = load i8* %contacts_addr_28, align 4
  %tmp_7_27 = or i20 %tmp_s, 28
  %tmp_8_27 = zext i20 %tmp_7_27 to i64
  %database_addr_28 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_27
  %database_load_28 = load i8* %database_addr_28, align 4
  %tmp_9_27 = icmp eq i8 %contacts_load_28, %database_load_28
  %tmp_5_28 = or i13 %tmp, 29
  %tmp_6_28 = zext i13 %tmp_5_28 to i64
  %contacts_addr_29 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_28
  %contacts_load_29 = load i8* %contacts_addr_29, align 1
  %tmp_7_28 = or i20 %tmp_s, 29
  %tmp_8_28 = zext i20 %tmp_7_28 to i64
  %database_addr_29 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_28
  %database_load_29 = load i8* %database_addr_29, align 1
  %tmp_9_28 = icmp eq i8 %contacts_load_29, %database_load_29
  %tmp_5_29 = or i13 %tmp, 30
  %tmp_6_29 = zext i13 %tmp_5_29 to i64
  %contacts_addr_30 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_29
  %contacts_load_30 = load i8* %contacts_addr_30, align 2
  %tmp_7_29 = or i20 %tmp_s, 30
  %tmp_8_29 = zext i20 %tmp_7_29 to i64
  %database_addr_30 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_29
  %database_load_30 = load i8* %database_addr_30, align 2
  %tmp_9_29 = icmp eq i8 %contacts_load_30, %database_load_30
  %tmp_5_30 = or i13 %tmp, 31
  %tmp_6_30 = zext i13 %tmp_5_30 to i64
  %contacts_addr_31 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_30
  %contacts_load_31 = load i8* %contacts_addr_31, align 1
  %tmp_7_30 = or i20 %tmp_s, 31
  %tmp_8_30 = zext i20 %tmp_7_30 to i64
  %database_addr_31 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_30
  %database_load_31 = load i8* %database_addr_31, align 1
  %tmp_9_30 = icmp eq i8 %contacts_load_31, %database_load_31
  %tmp_5_31 = or i13 %tmp, 32
  %tmp_6_31 = zext i13 %tmp_5_31 to i64
  %contacts_addr_32 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_31
  %contacts_load_32 = load i8* %contacts_addr_32, align 16
  %tmp_7_31 = or i20 %tmp_s, 32
  %tmp_8_31 = zext i20 %tmp_7_31 to i64
  %database_addr_32 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_31
  %database_load_32 = load i8* %database_addr_32, align 16
  %tmp_9_31 = icmp eq i8 %contacts_load_32, %database_load_32
  %tmp_5_32 = or i13 %tmp, 33
  %tmp_6_32 = zext i13 %tmp_5_32 to i64
  %contacts_addr_33 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_32
  %contacts_load_33 = load i8* %contacts_addr_33, align 1
  %tmp_7_32 = or i20 %tmp_s, 33
  %tmp_8_32 = zext i20 %tmp_7_32 to i64
  %database_addr_33 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_32
  %database_load_33 = load i8* %database_addr_33, align 1
  %tmp_9_32 = icmp eq i8 %contacts_load_33, %database_load_33
  %tmp_5_33 = or i13 %tmp, 34
  %tmp_6_33 = zext i13 %tmp_5_33 to i64
  %contacts_addr_34 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_33
  %contacts_load_34 = load i8* %contacts_addr_34, align 2
  %tmp_7_33 = or i20 %tmp_s, 34
  %tmp_8_33 = zext i20 %tmp_7_33 to i64
  %database_addr_34 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_33
  %database_load_34 = load i8* %database_addr_34, align 2
  %tmp_9_33 = icmp eq i8 %contacts_load_34, %database_load_34
  %tmp_5_34 = or i13 %tmp, 35
  %tmp_6_34 = zext i13 %tmp_5_34 to i64
  %contacts_addr_35 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_34
  %contacts_load_35 = load i8* %contacts_addr_35, align 1
  %tmp_7_34 = or i20 %tmp_s, 35
  %tmp_8_34 = zext i20 %tmp_7_34 to i64
  %database_addr_35 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_34
  %database_load_35 = load i8* %database_addr_35, align 1
  %tmp_9_34 = icmp eq i8 %contacts_load_35, %database_load_35
  %tmp_5_35 = or i13 %tmp, 36
  %tmp_6_35 = zext i13 %tmp_5_35 to i64
  %contacts_addr_36 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_35
  %contacts_load_36 = load i8* %contacts_addr_36, align 4
  %tmp_7_35 = or i20 %tmp_s, 36
  %tmp_8_35 = zext i20 %tmp_7_35 to i64
  %database_addr_36 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_35
  %database_load_36 = load i8* %database_addr_36, align 4
  %tmp_9_35 = icmp eq i8 %contacts_load_36, %database_load_36
  %tmp_5_36 = or i13 %tmp, 37
  %tmp_6_36 = zext i13 %tmp_5_36 to i64
  %contacts_addr_37 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_36
  %contacts_load_37 = load i8* %contacts_addr_37, align 1
  %tmp_7_36 = or i20 %tmp_s, 37
  %tmp_8_36 = zext i20 %tmp_7_36 to i64
  %database_addr_37 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_36
  %database_load_37 = load i8* %database_addr_37, align 1
  %tmp_9_36 = icmp eq i8 %contacts_load_37, %database_load_37
  %tmp_5_37 = or i13 %tmp, 38
  %tmp_6_37 = zext i13 %tmp_5_37 to i64
  %contacts_addr_38 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_37
  %contacts_load_38 = load i8* %contacts_addr_38, align 2
  %tmp_7_37 = or i20 %tmp_s, 38
  %tmp_8_37 = zext i20 %tmp_7_37 to i64
  %database_addr_38 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_37
  %database_load_38 = load i8* %database_addr_38, align 2
  %tmp_9_37 = icmp eq i8 %contacts_load_38, %database_load_38
  %tmp_5_38 = or i13 %tmp, 39
  %tmp_6_38 = zext i13 %tmp_5_38 to i64
  %contacts_addr_39 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_38
  %contacts_load_39 = load i8* %contacts_addr_39, align 1
  %tmp_7_38 = or i20 %tmp_s, 39
  %tmp_8_38 = zext i20 %tmp_7_38 to i64
  %database_addr_39 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_38
  %database_load_39 = load i8* %database_addr_39, align 1
  %tmp_9_38 = icmp eq i8 %contacts_load_39, %database_load_39
  %tmp_5_39 = or i13 %tmp, 40
  %tmp_6_39 = zext i13 %tmp_5_39 to i64
  %contacts_addr_40 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_39
  %contacts_load_40 = load i8* %contacts_addr_40, align 8
  %tmp_7_39 = or i20 %tmp_s, 40
  %tmp_8_39 = zext i20 %tmp_7_39 to i64
  %database_addr_40 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_39
  %database_load_40 = load i8* %database_addr_40, align 8
  %tmp_9_39 = icmp eq i8 %contacts_load_40, %database_load_40
  %tmp_5_40 = or i13 %tmp, 41
  %tmp_6_40 = zext i13 %tmp_5_40 to i64
  %contacts_addr_41 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_40
  %contacts_load_41 = load i8* %contacts_addr_41, align 1
  %tmp_7_40 = or i20 %tmp_s, 41
  %tmp_8_40 = zext i20 %tmp_7_40 to i64
  %database_addr_41 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_40
  %database_load_41 = load i8* %database_addr_41, align 1
  %tmp_9_40 = icmp eq i8 %contacts_load_41, %database_load_41
  %tmp_5_41 = or i13 %tmp, 42
  %tmp_6_41 = zext i13 %tmp_5_41 to i64
  %contacts_addr_42 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_41
  %contacts_load_42 = load i8* %contacts_addr_42, align 2
  %tmp_7_41 = or i20 %tmp_s, 42
  %tmp_8_41 = zext i20 %tmp_7_41 to i64
  %database_addr_42 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_41
  %database_load_42 = load i8* %database_addr_42, align 2
  %tmp_9_41 = icmp eq i8 %contacts_load_42, %database_load_42
  %tmp_5_42 = or i13 %tmp, 43
  %tmp_6_42 = zext i13 %tmp_5_42 to i64
  %contacts_addr_43 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_42
  %contacts_load_43 = load i8* %contacts_addr_43, align 1
  %tmp_7_42 = or i20 %tmp_s, 43
  %tmp_8_42 = zext i20 %tmp_7_42 to i64
  %database_addr_43 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_42
  %database_load_43 = load i8* %database_addr_43, align 1
  %tmp_9_42 = icmp eq i8 %contacts_load_43, %database_load_43
  %tmp_5_43 = or i13 %tmp, 44
  %tmp_6_43 = zext i13 %tmp_5_43 to i64
  %contacts_addr_44 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_43
  %contacts_load_44 = load i8* %contacts_addr_44, align 4
  %tmp_7_43 = or i20 %tmp_s, 44
  %tmp_8_43 = zext i20 %tmp_7_43 to i64
  %database_addr_44 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_43
  %database_load_44 = load i8* %database_addr_44, align 4
  %tmp_9_43 = icmp eq i8 %contacts_load_44, %database_load_44
  %tmp_5_44 = or i13 %tmp, 45
  %tmp_6_44 = zext i13 %tmp_5_44 to i64
  %contacts_addr_45 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_44
  %contacts_load_45 = load i8* %contacts_addr_45, align 1
  %tmp_7_44 = or i20 %tmp_s, 45
  %tmp_8_44 = zext i20 %tmp_7_44 to i64
  %database_addr_45 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_44
  %database_load_45 = load i8* %database_addr_45, align 1
  %tmp_9_44 = icmp eq i8 %contacts_load_45, %database_load_45
  %tmp_5_45 = or i13 %tmp, 46
  %tmp_6_45 = zext i13 %tmp_5_45 to i64
  %contacts_addr_46 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_45
  %contacts_load_46 = load i8* %contacts_addr_46, align 2
  %tmp_7_45 = or i20 %tmp_s, 46
  %tmp_8_45 = zext i20 %tmp_7_45 to i64
  %database_addr_46 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_45
  %database_load_46 = load i8* %database_addr_46, align 2
  %tmp_9_45 = icmp eq i8 %contacts_load_46, %database_load_46
  %tmp_5_46 = or i13 %tmp, 47
  %tmp_6_46 = zext i13 %tmp_5_46 to i64
  %contacts_addr_47 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_46
  %contacts_load_47 = load i8* %contacts_addr_47, align 1
  %tmp_7_46 = or i20 %tmp_s, 47
  %tmp_8_46 = zext i20 %tmp_7_46 to i64
  %database_addr_47 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_46
  %database_load_47 = load i8* %database_addr_47, align 1
  %tmp_9_46 = icmp eq i8 %contacts_load_47, %database_load_47
  %tmp_5_47 = or i13 %tmp, 48
  %tmp_6_47 = zext i13 %tmp_5_47 to i64
  %contacts_addr_48 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_47
  %contacts_load_48 = load i8* %contacts_addr_48, align 16
  %tmp_7_47 = or i20 %tmp_s, 48
  %tmp_8_47 = zext i20 %tmp_7_47 to i64
  %database_addr_48 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_47
  %database_load_48 = load i8* %database_addr_48, align 16
  %tmp_9_47 = icmp eq i8 %contacts_load_48, %database_load_48
  %tmp_5_48 = or i13 %tmp, 49
  %tmp_6_48 = zext i13 %tmp_5_48 to i64
  %contacts_addr_49 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_48
  %contacts_load_49 = load i8* %contacts_addr_49, align 1
  %tmp_7_48 = or i20 %tmp_s, 49
  %tmp_8_48 = zext i20 %tmp_7_48 to i64
  %database_addr_49 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_48
  %database_load_49 = load i8* %database_addr_49, align 1
  %tmp_9_48 = icmp eq i8 %contacts_load_49, %database_load_49
  %tmp_5_49 = or i13 %tmp, 50
  %tmp_6_49 = zext i13 %tmp_5_49 to i64
  %contacts_addr_50 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_49
  %contacts_load_50 = load i8* %contacts_addr_50, align 2
  %tmp_7_49 = or i20 %tmp_s, 50
  %tmp_8_49 = zext i20 %tmp_7_49 to i64
  %database_addr_50 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_49
  %database_load_50 = load i8* %database_addr_50, align 2
  %tmp_9_49 = icmp eq i8 %contacts_load_50, %database_load_50
  %tmp_5_50 = or i13 %tmp, 51
  %tmp_6_50 = zext i13 %tmp_5_50 to i64
  %contacts_addr_51 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_50
  %contacts_load_51 = load i8* %contacts_addr_51, align 1
  %tmp_7_50 = or i20 %tmp_s, 51
  %tmp_8_50 = zext i20 %tmp_7_50 to i64
  %database_addr_51 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_50
  %database_load_51 = load i8* %database_addr_51, align 1
  %tmp_9_50 = icmp eq i8 %contacts_load_51, %database_load_51
  %tmp_5_51 = or i13 %tmp, 52
  %tmp_6_51 = zext i13 %tmp_5_51 to i64
  %contacts_addr_52 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_51
  %contacts_load_52 = load i8* %contacts_addr_52, align 4
  %tmp_7_51 = or i20 %tmp_s, 52
  %tmp_8_51 = zext i20 %tmp_7_51 to i64
  %database_addr_52 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_51
  %database_load_52 = load i8* %database_addr_52, align 4
  %tmp_9_51 = icmp eq i8 %contacts_load_52, %database_load_52
  %tmp_5_52 = or i13 %tmp, 53
  %tmp_6_52 = zext i13 %tmp_5_52 to i64
  %contacts_addr_53 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_52
  %contacts_load_53 = load i8* %contacts_addr_53, align 1
  %tmp_7_52 = or i20 %tmp_s, 53
  %tmp_8_52 = zext i20 %tmp_7_52 to i64
  %database_addr_53 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_52
  %database_load_53 = load i8* %database_addr_53, align 1
  %tmp_9_52 = icmp eq i8 %contacts_load_53, %database_load_53
  %tmp_5_53 = or i13 %tmp, 54
  %tmp_6_53 = zext i13 %tmp_5_53 to i64
  %contacts_addr_54 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_53
  %contacts_load_54 = load i8* %contacts_addr_54, align 2
  %tmp_7_53 = or i20 %tmp_s, 54
  %tmp_8_53 = zext i20 %tmp_7_53 to i64
  %database_addr_54 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_53
  %database_load_54 = load i8* %database_addr_54, align 2
  %tmp_9_53 = icmp eq i8 %contacts_load_54, %database_load_54
  %tmp_5_54 = or i13 %tmp, 55
  %tmp_6_54 = zext i13 %tmp_5_54 to i64
  %contacts_addr_55 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_54
  %contacts_load_55 = load i8* %contacts_addr_55, align 1
  %tmp_7_54 = or i20 %tmp_s, 55
  %tmp_8_54 = zext i20 %tmp_7_54 to i64
  %database_addr_55 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_54
  %database_load_55 = load i8* %database_addr_55, align 1
  %tmp_9_54 = icmp eq i8 %contacts_load_55, %database_load_55
  %tmp_5_55 = or i13 %tmp, 56
  %tmp_6_55 = zext i13 %tmp_5_55 to i64
  %contacts_addr_56 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_55
  %contacts_load_56 = load i8* %contacts_addr_56, align 8
  %tmp_7_55 = or i20 %tmp_s, 56
  %tmp_8_55 = zext i20 %tmp_7_55 to i64
  %database_addr_56 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_55
  %database_load_56 = load i8* %database_addr_56, align 8
  %tmp_9_55 = icmp eq i8 %contacts_load_56, %database_load_56
  %tmp_5_56 = or i13 %tmp, 57
  %tmp_6_56 = zext i13 %tmp_5_56 to i64
  %contacts_addr_57 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_56
  %contacts_load_57 = load i8* %contacts_addr_57, align 1
  %tmp_7_56 = or i20 %tmp_s, 57
  %tmp_8_56 = zext i20 %tmp_7_56 to i64
  %database_addr_57 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_56
  %database_load_57 = load i8* %database_addr_57, align 1
  %tmp_9_56 = icmp eq i8 %contacts_load_57, %database_load_57
  %tmp_5_57 = or i13 %tmp, 58
  %tmp_6_57 = zext i13 %tmp_5_57 to i64
  %contacts_addr_58 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_57
  %contacts_load_58 = load i8* %contacts_addr_58, align 2
  %tmp_7_57 = or i20 %tmp_s, 58
  %tmp_8_57 = zext i20 %tmp_7_57 to i64
  %database_addr_58 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_57
  %database_load_58 = load i8* %database_addr_58, align 2
  %tmp_9_57 = icmp eq i8 %contacts_load_58, %database_load_58
  %tmp_5_58 = or i13 %tmp, 59
  %tmp_6_58 = zext i13 %tmp_5_58 to i64
  %contacts_addr_59 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_58
  %contacts_load_59 = load i8* %contacts_addr_59, align 1
  %tmp_7_58 = or i20 %tmp_s, 59
  %tmp_8_58 = zext i20 %tmp_7_58 to i64
  %database_addr_59 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_58
  %database_load_59 = load i8* %database_addr_59, align 1
  %tmp_9_58 = icmp eq i8 %contacts_load_59, %database_load_59
  %tmp_5_59 = or i13 %tmp, 60
  %tmp_6_59 = zext i13 %tmp_5_59 to i64
  %contacts_addr_60 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_59
  %contacts_load_60 = load i8* %contacts_addr_60, align 4
  %tmp_7_59 = or i20 %tmp_s, 60
  %tmp_8_59 = zext i20 %tmp_7_59 to i64
  %database_addr_60 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_59
  %database_load_60 = load i8* %database_addr_60, align 4
  %tmp_9_59 = icmp eq i8 %contacts_load_60, %database_load_60
  %tmp_5_60 = or i13 %tmp, 61
  %tmp_6_60 = zext i13 %tmp_5_60 to i64
  %contacts_addr_61 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_60
  %contacts_load_61 = load i8* %contacts_addr_61, align 1
  %tmp_7_60 = or i20 %tmp_s, 61
  %tmp_8_60 = zext i20 %tmp_7_60 to i64
  %database_addr_61 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_60
  %database_load_61 = load i8* %database_addr_61, align 1
  %tmp_9_60 = icmp eq i8 %contacts_load_61, %database_load_61
  %tmp_5_61 = or i13 %tmp, 62
  %tmp_6_61 = zext i13 %tmp_5_61 to i64
  %contacts_addr_62 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_61
  %contacts_load_62 = load i8* %contacts_addr_62, align 2
  %tmp_7_61 = or i20 %tmp_s, 62
  %tmp_8_61 = zext i20 %tmp_7_61 to i64
  %database_addr_62 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_61
  %database_load_62 = load i8* %database_addr_62, align 2
  %tmp_9_61 = icmp eq i8 %contacts_load_62, %database_load_62
  %tmp_5_62 = or i13 %tmp, 63
  %tmp_6_62 = zext i13 %tmp_5_62 to i64
  %contacts_addr_63 = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_6_62
  %contacts_load_63 = load i8* %contacts_addr_63, align 1
  %tmp_7_62 = or i20 %tmp_s, 63
  %tmp_8_62 = zext i20 %tmp_7_62 to i64
  %database_addr_63 = getelementptr inbounds [960000 x i8]* @database, i64 0, i64 %tmp_8_62
  %database_load_63 = load i8* %database_addr_63, align 1
  %tmp_9_62 = icmp eq i8 %contacts_load_63, %database_load_63
  %tmp5 = and i1 %tmp_9, %tmp_9_1
  %tmp6 = and i1 %tmp_9_2, %tmp_9_3
  %tmp4 = and i1 %tmp6, %tmp5
  %tmp8 = and i1 %tmp_9_4, %tmp_9_5
  %tmp9 = and i1 %tmp_9_6, %tmp_9_7
  %tmp7 = and i1 %tmp9, %tmp8
  %tmp3 = and i1 %tmp7, %tmp4
  %tmp12 = and i1 %tmp_9_8, %tmp_9_9
  %tmp13 = and i1 %tmp_9_s, %tmp_9_10
  %tmp11 = and i1 %tmp13, %tmp12
  %tmp15 = and i1 %tmp_9_11, %tmp_9_12
  %tmp16 = and i1 %tmp_9_13, %tmp_9_14
  %tmp14 = and i1 %tmp16, %tmp15
  %tmp10 = and i1 %tmp14, %tmp11
  %tmp2 = and i1 %tmp10, %tmp3
  %tmp20 = and i1 %tmp_9_15, %tmp_9_16
  %tmp21 = and i1 %tmp_9_17, %tmp_9_18
  %tmp19 = and i1 %tmp21, %tmp20
  %tmp23 = and i1 %tmp_9_19, %tmp_9_20
  %tmp24 = and i1 %tmp_9_21, %tmp_9_22
  %tmp22 = and i1 %tmp24, %tmp23
  %tmp18 = and i1 %tmp22, %tmp19
  %tmp27 = and i1 %tmp_9_23, %tmp_9_24
  %tmp28 = and i1 %tmp_9_25, %tmp_9_26
  %tmp26 = and i1 %tmp28, %tmp27
  %tmp30 = and i1 %tmp_9_27, %tmp_9_28
  %tmp31 = and i1 %tmp_9_29, %tmp_9_30
  %tmp29 = and i1 %tmp31, %tmp30
  %tmp25 = and i1 %tmp29, %tmp26
  %tmp17 = and i1 %tmp25, %tmp18
  %tmp1 = and i1 %tmp17, %tmp2
  %tmp36 = and i1 %tmp_9_31, %tmp_9_32
  %tmp37 = and i1 %tmp_9_33, %tmp_9_34
  %tmp35 = and i1 %tmp37, %tmp36
  %tmp39 = and i1 %tmp_9_35, %tmp_9_36
  %tmp40 = and i1 %tmp_9_37, %tmp_9_38
  %tmp38 = and i1 %tmp40, %tmp39
  %tmp34 = and i1 %tmp38, %tmp35
  %tmp43 = and i1 %tmp_9_39, %tmp_9_40
  %tmp44 = and i1 %tmp_9_41, %tmp_9_42
  %tmp42 = and i1 %tmp44, %tmp43
  %tmp46 = and i1 %tmp_9_43, %tmp_9_44
  %tmp47 = and i1 %tmp_9_45, %tmp_9_46
  %tmp45 = and i1 %tmp47, %tmp46
  %tmp41 = and i1 %tmp45, %tmp42
  %tmp33 = and i1 %tmp41, %tmp34
  %tmp51 = and i1 %tmp_9_47, %tmp_9_48
  %tmp52 = and i1 %tmp_9_49, %tmp_9_50
  %tmp50 = and i1 %tmp52, %tmp51
  %tmp54 = and i1 %tmp_9_51, %tmp_9_52
  %tmp55 = and i1 %tmp_9_53, %tmp_9_54
  %tmp53 = and i1 %tmp55, %tmp54
  %tmp49 = and i1 %tmp53, %tmp50
  %tmp58 = and i1 %tmp_9_55, %tmp_9_56
  %tmp59 = and i1 %tmp_9_57, %tmp_9_58
  %tmp57 = and i1 %tmp59, %tmp58
  %tmp61 = and i1 %tmp_9_59, %tmp_9_60
  %tmp62 = and i1 %tmp_9_61, %tmp_9_62
  %tmp60 = and i1 %tmp62, %tmp61
  %tmp56 = and i1 %tmp60, %tmp57
  %tmp48 = and i1 %tmp56, %tmp49
  %tmp32 = and i1 %tmp48, %tmp33
  %found_1_s = and i1 %tmp32, %tmp1
  ret i1 %found_1_s
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

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
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

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i14 @_ssdm_op_Read.ap_auto.i14(i14) {
entry:
  ret i14 %0
}

declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_12 = trunc i32 %empty to i25
  ret i25 %empty_12
}

declare i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i21 @_ssdm_op_BitConcatenate.i21.i15.i6(i15, i6) nounwind readnone {
entry:
  %empty = zext i15 %0 to i21
  %empty_13 = zext i6 %1 to i21
  %empty_14 = shl i21 %empty, 6
  %empty_15 = or i21 %empty_14, %empty_13
  ret i21 %empty_15
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i14.i6(i14, i6) nounwind readnone {
entry:
  %empty = zext i14 %0 to i20
  %empty_16 = zext i6 %1 to i20
  %empty_17 = shl i20 %empty, 6
  %empty_18 = or i20 %empty_17, %empty_16
  ret i20 %empty_18
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i9.i6(i9, i6) nounwind readnone {
entry:
  %empty = zext i9 %0 to i15
  %empty_19 = zext i6 %1 to i15
  %empty_20 = shl i15 %empty, 6
  %empty_21 = or i15 %empty_20, %empty_19
  ret i15 %empty_21
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13
  %empty_22 = zext i6 %1 to i13
  %empty_23 = shl i13 %empty, 6
  %empty_24 = or i13 %empty_23, %empty_22
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
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"operation", metadata !29, metadata !"int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, i32 0}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 7, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"contact_in", metadata !35, metadata !"unsigned char", i32 0, i32 7}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 63, i32 1}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 7, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"database_in", metadata !35, metadata !"unsigned char", i32 0, i32 7}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"matched_out", metadata !45, metadata !"bool", i32 0, i32 0}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 14999, i32 1}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"matched_finished", metadata !51, metadata !"int", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, i32 1}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"error_out", metadata !51, metadata !"int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"database_size_out", metadata !51, metadata !"int", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"contacts_size_out", metadata !51, metadata !"int", i32 0, i32 31}
