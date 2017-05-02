// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _transform_HH_
#define _transform_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "transform_SHA256_bkb.h"
#include "transform_w.h"
#include "transform_wv.h"

namespace ap_rtl {

struct transform : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > SHA256_m_h_address0;
    sc_out< sc_logic > SHA256_m_h_ce0;
    sc_out< sc_logic > SHA256_m_h_we0;
    sc_out< sc_lv<32> > SHA256_m_h_d0;
    sc_in< sc_lv<32> > SHA256_m_h_q0;
    sc_out< sc_lv<7> > message_address0;
    sc_out< sc_logic > message_ce0;
    sc_in< sc_lv<8> > message_q0;
    sc_out< sc_lv<7> > message_address1;
    sc_out< sc_logic > message_ce1;
    sc_in< sc_lv<8> > message_q1;
    sc_in< sc_lv<2> > block_nb;


    // Module declarations
    transform(sc_module_name name);
    SC_HAS_PROCESS(transform);

    ~transform();

    sc_trace_file* mVcdFile;

    transform_SHA256_bkb* SHA256_sha256_k_U;
    transform_w* w_U;
    transform_wv* wv_U;
    sc_signal< sc_lv<20> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > SHA256_sha256_k_address0;
    sc_signal< sc_logic > SHA256_sha256_k_ce0;
    sc_signal< sc_lv<32> > SHA256_sha256_k_q0;
    sc_signal< sc_lv<32> > wv_q0;
    sc_signal< sc_lv<32> > reg_445;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > wv_q1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<2> > i_2_fu_457_p2;
    sc_signal< sc_lv<2> > i_2_reg_1110;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<5> > j_5_fu_469_p2;
    sc_signal< sc_lv<5> > j_5_reg_1118;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<7> > sub_block_0_sum_fu_483_p4;
    sc_signal< sc_lv<7> > sub_block_0_sum_reg_1123;
    sc_signal< sc_lv<1> > exitcond1_fu_463_p2;
    sc_signal< sc_lv<8> > message_load_reg_1139;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > message_load_1_reg_1144;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > exitcond9_fu_545_p2;
    sc_signal< sc_lv<32> > w_q0;
    sc_signal< sc_lv<32> > w_load_reg_1172;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > w_q1;
    sc_signal< sc_lv<32> > w_load_1_reg_1181;
    sc_signal< sc_lv<7> > j_6_fu_753_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > j_7_fu_765_p2;
    sc_signal< sc_lv<4> > j_7_reg_1204;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > tmp_51_fu_771_p1;
    sc_signal< sc_lv<64> > tmp_51_reg_1209;
    sc_signal< sc_lv<1> > exitcond8_fu_759_p2;
    sc_signal< sc_lv<7> > j_8_fu_782_p2;
    sc_signal< sc_lv<7> > j_8_reg_1222;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > wv_load_1_reg_1227;
    sc_signal< sc_lv<32> > tmp_62_fu_860_p2;
    sc_signal< sc_lv<32> > tmp_62_reg_1234;
    sc_signal< sc_lv<32> > wv_load_3_reg_1249;
    sc_signal< sc_lv<32> > t1_fu_911_p2;
    sc_signal< sc_lv<32> > t1_reg_1254;
    sc_signal< sc_lv<32> > wv_load_4_reg_1260;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > tmp_75_fu_989_p2;
    sc_signal< sc_lv<32> > tmp_75_reg_1266;
    sc_signal< sc_lv<32> > wv_load_5_reg_1271;
    sc_signal< sc_lv<32> > tmp_80_fu_1016_p2;
    sc_signal< sc_lv<32> > tmp_80_reg_1278;
    sc_signal< sc_lv<32> > tmp_81_fu_1026_p2;
    sc_signal< sc_lv<32> > tmp_81_reg_1283;
    sc_signal< sc_lv<4> > j_9_fu_1037_p2;
    sc_signal< sc_lv<4> > j_9_reg_1291;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<1> > exitcond_fu_1031_p2;
    sc_signal< sc_lv<3> > SHA256_m_h_addr_1_reg_1301;
    sc_signal< sc_lv<6> > w_address0;
    sc_signal< sc_logic > w_ce0;
    sc_signal< sc_logic > w_we0;
    sc_signal< sc_lv<32> > w_d0;
    sc_signal< sc_lv<6> > w_address1;
    sc_signal< sc_logic > w_ce1;
    sc_signal< sc_logic > w_we1;
    sc_signal< sc_lv<32> > w_d1;
    sc_signal< sc_lv<3> > wv_address0;
    sc_signal< sc_logic > wv_ce0;
    sc_signal< sc_logic > wv_we0;
    sc_signal< sc_lv<32> > wv_d0;
    sc_signal< sc_lv<3> > wv_address1;
    sc_signal< sc_logic > wv_ce1;
    sc_signal< sc_logic > wv_we1;
    sc_signal< sc_lv<32> > wv_d1;
    sc_signal< sc_lv<2> > i_reg_375;
    sc_signal< sc_lv<5> > j_reg_387;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond2_fu_452_p2;
    sc_signal< sc_lv<7> > j_1_reg_399;
    sc_signal< sc_lv<4> > j_2_reg_411;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<7> > j_3_reg_422;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<4> > j_4_reg_434;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<1> > exitcond7_fu_776_p2;
    sc_signal< sc_lv<64> > p_sum1_cast_fu_499_p1;
    sc_signal< sc_lv<64> > p_sum3_cast_fu_510_p1;
    sc_signal< sc_lv<64> > p_sum5_cast_fu_524_p1;
    sc_signal< sc_lv<64> > sub_block_0_sum_cast_fu_515_p1;
    sc_signal< sc_lv<64> > tmp_20_fu_540_p1;
    sc_signal< sc_lv<64> > tmp_22_fu_557_p1;
    sc_signal< sc_lv<64> > tmp_33_fu_568_p1;
    sc_signal< sc_lv<64> > tmp_35_fu_579_p1;
    sc_signal< sc_lv<64> > tmp_46_fu_590_p1;
    sc_signal< sc_lv<64> > tmp_50_fu_748_p1;
    sc_signal< sc_lv<64> > tmp_66_fu_866_p1;
    sc_signal< sc_lv<64> > tmp_82_fu_1043_p1;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<1> > tmp_71_fu_479_p1;
    sc_signal< sc_lv<4> > tmp_fu_475_p1;
    sc_signal< sc_lv<7> > p_sum1_fu_493_p2;
    sc_signal< sc_lv<7> > p_sum3_fu_504_p2;
    sc_signal< sc_lv<7> > p_sum5_fu_519_p2;
    sc_signal< sc_lv<7> > tmp_21_fu_551_p2;
    sc_signal< sc_lv<7> > tmp_32_fu_562_p2;
    sc_signal< sc_lv<7> > tmp_34_fu_573_p2;
    sc_signal< sc_lv<7> > tmp_45_fu_584_p2;
    sc_signal< sc_lv<17> > tmp_74_fu_604_p1;
    sc_signal< sc_lv<15> > tmp_23_fu_595_p4;
    sc_signal< sc_lv<19> > tmp_84_fu_624_p1;
    sc_signal< sc_lv<13> > tmp_26_fu_615_p4;
    sc_signal< sc_lv<22> > tmp_29_fu_635_p4;
    sc_signal< sc_lv<32> > tmp_85_fu_644_p1;
    sc_signal< sc_lv<32> > tmp_28_fu_627_p3;
    sc_signal< sc_lv<32> > tmp1_fu_648_p2;
    sc_signal< sc_lv<32> > tmp_25_fu_607_p3;
    sc_signal< sc_lv<7> > tmp_86_fu_670_p1;
    sc_signal< sc_lv<25> > tmp_36_fu_660_p4;
    sc_signal< sc_lv<18> > tmp_87_fu_692_p1;
    sc_signal< sc_lv<14> > tmp_39_fu_682_p4;
    sc_signal< sc_lv<29> > tmp_42_fu_704_p4;
    sc_signal< sc_lv<32> > tmp_88_fu_714_p1;
    sc_signal< sc_lv<32> > tmp_41_fu_696_p3;
    sc_signal< sc_lv<32> > tmp2_fu_718_p2;
    sc_signal< sc_lv<32> > tmp_38_fu_674_p3;
    sc_signal< sc_lv<32> > tmp_31_fu_654_p2;
    sc_signal< sc_lv<32> > tmp_44_fu_724_p2;
    sc_signal< sc_lv<32> > tmp4_fu_735_p2;
    sc_signal< sc_lv<32> > tmp3_fu_730_p2;
    sc_signal< sc_lv<6> > tmp_89_fu_798_p1;
    sc_signal< sc_lv<26> > tmp_52_fu_788_p4;
    sc_signal< sc_lv<11> > tmp_90_fu_820_p1;
    sc_signal< sc_lv<21> > tmp_55_fu_810_p4;
    sc_signal< sc_lv<25> > tmp_91_fu_842_p1;
    sc_signal< sc_lv<7> > tmp_58_fu_832_p4;
    sc_signal< sc_lv<32> > tmp_60_fu_846_p3;
    sc_signal< sc_lv<32> > tmp_57_fu_824_p3;
    sc_signal< sc_lv<32> > tmp5_fu_854_p2;
    sc_signal< sc_lv<32> > tmp_54_fu_802_p3;
    sc_signal< sc_lv<32> > tmp_64_fu_877_p2;
    sc_signal< sc_lv<32> > tmp_s_fu_882_p2;
    sc_signal< sc_lv<32> > tmp_63_fu_872_p2;
    sc_signal< sc_lv<32> > tmp_65_fu_888_p2;
    sc_signal< sc_lv<32> > tmp10_fu_900_p2;
    sc_signal< sc_lv<32> > tmp9_fu_905_p2;
    sc_signal< sc_lv<32> > tmp8_fu_894_p2;
    sc_signal< sc_lv<2> > tmp_92_fu_927_p1;
    sc_signal< sc_lv<30> > tmp_67_fu_917_p4;
    sc_signal< sc_lv<13> > tmp_93_fu_949_p1;
    sc_signal< sc_lv<19> > tmp_69_fu_939_p4;
    sc_signal< sc_lv<22> > tmp_94_fu_971_p1;
    sc_signal< sc_lv<10> > tmp_72_fu_961_p4;
    sc_signal< sc_lv<32> > tmp_73_fu_975_p3;
    sc_signal< sc_lv<32> > tmp_70_fu_953_p3;
    sc_signal< sc_lv<32> > tmp11_fu_983_p2;
    sc_signal< sc_lv<32> > tmp_68_fu_931_p3;
    sc_signal< sc_lv<32> > tmp_77_fu_1000_p2;
    sc_signal< sc_lv<32> > tmp_78_fu_1005_p2;
    sc_signal< sc_lv<32> > tmp_76_fu_995_p2;
    sc_signal< sc_lv<32> > tmp_79_fu_1010_p2;
    sc_signal< sc_lv<32> > tmp12_fu_1021_p2;
    sc_signal< sc_lv<20> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<20> ap_ST_fsm_state1;
    static const sc_lv<20> ap_ST_fsm_state2;
    static const sc_lv<20> ap_ST_fsm_state3;
    static const sc_lv<20> ap_ST_fsm_state4;
    static const sc_lv<20> ap_ST_fsm_state5;
    static const sc_lv<20> ap_ST_fsm_state6;
    static const sc_lv<20> ap_ST_fsm_state7;
    static const sc_lv<20> ap_ST_fsm_state8;
    static const sc_lv<20> ap_ST_fsm_state9;
    static const sc_lv<20> ap_ST_fsm_state10;
    static const sc_lv<20> ap_ST_fsm_state11;
    static const sc_lv<20> ap_ST_fsm_state12;
    static const sc_lv<20> ap_ST_fsm_state13;
    static const sc_lv<20> ap_ST_fsm_state14;
    static const sc_lv<20> ap_ST_fsm_state15;
    static const sc_lv<20> ap_ST_fsm_state16;
    static const sc_lv<20> ap_ST_fsm_state17;
    static const sc_lv<20> ap_ST_fsm_state18;
    static const sc_lv<20> ap_ST_fsm_state19;
    static const sc_lv<20> ap_ST_fsm_state20;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<7> ap_const_lv7_10;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<7> ap_const_lv7_3;
    static const sc_lv<7> ap_const_lv7_2;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_7E;
    static const sc_lv<7> ap_const_lv7_79;
    static const sc_lv<7> ap_const_lv7_71;
    static const sc_lv<7> ap_const_lv7_70;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_16;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_SHA256_m_h_address0();
    void thread_SHA256_m_h_ce0();
    void thread_SHA256_m_h_d0();
    void thread_SHA256_m_h_we0();
    void thread_SHA256_sha256_k_address0();
    void thread_SHA256_sha256_k_ce0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond1_fu_463_p2();
    void thread_exitcond2_fu_452_p2();
    void thread_exitcond7_fu_776_p2();
    void thread_exitcond8_fu_759_p2();
    void thread_exitcond9_fu_545_p2();
    void thread_exitcond_fu_1031_p2();
    void thread_i_2_fu_457_p2();
    void thread_j_5_fu_469_p2();
    void thread_j_6_fu_753_p2();
    void thread_j_7_fu_765_p2();
    void thread_j_8_fu_782_p2();
    void thread_j_9_fu_1037_p2();
    void thread_message_address0();
    void thread_message_address1();
    void thread_message_ce0();
    void thread_message_ce1();
    void thread_p_sum1_cast_fu_499_p1();
    void thread_p_sum1_fu_493_p2();
    void thread_p_sum3_cast_fu_510_p1();
    void thread_p_sum3_fu_504_p2();
    void thread_p_sum5_cast_fu_524_p1();
    void thread_p_sum5_fu_519_p2();
    void thread_sub_block_0_sum_cast_fu_515_p1();
    void thread_sub_block_0_sum_fu_483_p4();
    void thread_t1_fu_911_p2();
    void thread_tmp10_fu_900_p2();
    void thread_tmp11_fu_983_p2();
    void thread_tmp12_fu_1021_p2();
    void thread_tmp1_fu_648_p2();
    void thread_tmp2_fu_718_p2();
    void thread_tmp3_fu_730_p2();
    void thread_tmp4_fu_735_p2();
    void thread_tmp5_fu_854_p2();
    void thread_tmp8_fu_894_p2();
    void thread_tmp9_fu_905_p2();
    void thread_tmp_20_fu_540_p1();
    void thread_tmp_21_fu_551_p2();
    void thread_tmp_22_fu_557_p1();
    void thread_tmp_23_fu_595_p4();
    void thread_tmp_25_fu_607_p3();
    void thread_tmp_26_fu_615_p4();
    void thread_tmp_28_fu_627_p3();
    void thread_tmp_29_fu_635_p4();
    void thread_tmp_31_fu_654_p2();
    void thread_tmp_32_fu_562_p2();
    void thread_tmp_33_fu_568_p1();
    void thread_tmp_34_fu_573_p2();
    void thread_tmp_35_fu_579_p1();
    void thread_tmp_36_fu_660_p4();
    void thread_tmp_38_fu_674_p3();
    void thread_tmp_39_fu_682_p4();
    void thread_tmp_41_fu_696_p3();
    void thread_tmp_42_fu_704_p4();
    void thread_tmp_44_fu_724_p2();
    void thread_tmp_45_fu_584_p2();
    void thread_tmp_46_fu_590_p1();
    void thread_tmp_50_fu_748_p1();
    void thread_tmp_51_fu_771_p1();
    void thread_tmp_52_fu_788_p4();
    void thread_tmp_54_fu_802_p3();
    void thread_tmp_55_fu_810_p4();
    void thread_tmp_57_fu_824_p3();
    void thread_tmp_58_fu_832_p4();
    void thread_tmp_60_fu_846_p3();
    void thread_tmp_62_fu_860_p2();
    void thread_tmp_63_fu_872_p2();
    void thread_tmp_64_fu_877_p2();
    void thread_tmp_65_fu_888_p2();
    void thread_tmp_66_fu_866_p1();
    void thread_tmp_67_fu_917_p4();
    void thread_tmp_68_fu_931_p3();
    void thread_tmp_69_fu_939_p4();
    void thread_tmp_70_fu_953_p3();
    void thread_tmp_71_fu_479_p1();
    void thread_tmp_72_fu_961_p4();
    void thread_tmp_73_fu_975_p3();
    void thread_tmp_74_fu_604_p1();
    void thread_tmp_75_fu_989_p2();
    void thread_tmp_76_fu_995_p2();
    void thread_tmp_77_fu_1000_p2();
    void thread_tmp_78_fu_1005_p2();
    void thread_tmp_79_fu_1010_p2();
    void thread_tmp_80_fu_1016_p2();
    void thread_tmp_81_fu_1026_p2();
    void thread_tmp_82_fu_1043_p1();
    void thread_tmp_84_fu_624_p1();
    void thread_tmp_85_fu_644_p1();
    void thread_tmp_86_fu_670_p1();
    void thread_tmp_87_fu_692_p1();
    void thread_tmp_88_fu_714_p1();
    void thread_tmp_89_fu_798_p1();
    void thread_tmp_90_fu_820_p1();
    void thread_tmp_91_fu_842_p1();
    void thread_tmp_92_fu_927_p1();
    void thread_tmp_93_fu_949_p1();
    void thread_tmp_94_fu_971_p1();
    void thread_tmp_fu_475_p1();
    void thread_tmp_s_fu_882_p2();
    void thread_w_address0();
    void thread_w_address1();
    void thread_w_ce0();
    void thread_w_ce1();
    void thread_w_d0();
    void thread_w_d1();
    void thread_w_we0();
    void thread_w_we1();
    void thread_wv_address0();
    void thread_wv_address1();
    void thread_wv_ce0();
    void thread_wv_ce1();
    void thread_wv_d0();
    void thread_wv_d1();
    void thread_wv_we0();
    void thread_wv_we1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
