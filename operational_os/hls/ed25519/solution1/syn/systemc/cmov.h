// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _cmov_HH_
#define _cmov_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fe_cmov.h"
#include "cmov_base_yplusx.h"
#include "cmov_base_yminusx.h"
#include "cmov_base_xy2d.h"

namespace ap_rtl {

struct cmov : public sc_module {
    // Port declarations 73
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > t_yplusx_0_read;
    sc_in< sc_lv<32> > t_yplusx_1_read;
    sc_in< sc_lv<32> > t_yplusx_2_read;
    sc_in< sc_lv<32> > t_yplusx_3_read;
    sc_in< sc_lv<32> > t_yplusx_4_read;
    sc_in< sc_lv<32> > t_yplusx_5_read;
    sc_in< sc_lv<32> > t_yplusx_6_read;
    sc_in< sc_lv<32> > t_yplusx_7_read;
    sc_in< sc_lv<32> > t_yplusx_8_read;
    sc_in< sc_lv<32> > t_yplusx_9_read;
    sc_in< sc_lv<32> > t_yminusx_0_read;
    sc_in< sc_lv<32> > t_yminusx_1_read;
    sc_in< sc_lv<32> > t_yminusx_2_read;
    sc_in< sc_lv<32> > t_yminusx_3_read;
    sc_in< sc_lv<32> > t_yminusx_4_read;
    sc_in< sc_lv<32> > t_yminusx_5_read;
    sc_in< sc_lv<32> > t_yminusx_6_read;
    sc_in< sc_lv<32> > t_yminusx_7_read;
    sc_in< sc_lv<32> > t_yminusx_8_read;
    sc_in< sc_lv<32> > t_yminusx_9_read;
    sc_in< sc_lv<32> > t_xy2d_0_read;
    sc_in< sc_lv<32> > t_xy2d_1_read;
    sc_in< sc_lv<32> > t_xy2d_2_read;
    sc_in< sc_lv<32> > t_xy2d_3_read;
    sc_in< sc_lv<32> > t_xy2d_4_read;
    sc_in< sc_lv<32> > t_xy2d_5_read;
    sc_in< sc_lv<32> > t_xy2d_6_read;
    sc_in< sc_lv<32> > t_xy2d_7_read;
    sc_in< sc_lv<32> > t_xy2d_8_read;
    sc_in< sc_lv<32> > t_xy2d_9_read;
    sc_in< sc_lv<5> > tmp_756;
    sc_in< sc_lv<4> > u_yplusx_offset;
    sc_in< sc_lv<5> > tmp_7561;
    sc_in< sc_lv<4> > u_yminusx_offset;
    sc_in< sc_lv<5> > tmp_7562;
    sc_in< sc_lv<4> > u_xy2d_offset;
    sc_in< sc_lv<1> > b;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_out< sc_lv<32> > ap_return_3;
    sc_out< sc_lv<32> > ap_return_4;
    sc_out< sc_lv<32> > ap_return_5;
    sc_out< sc_lv<32> > ap_return_6;
    sc_out< sc_lv<32> > ap_return_7;
    sc_out< sc_lv<32> > ap_return_8;
    sc_out< sc_lv<32> > ap_return_9;
    sc_out< sc_lv<32> > ap_return_10;
    sc_out< sc_lv<32> > ap_return_11;
    sc_out< sc_lv<32> > ap_return_12;
    sc_out< sc_lv<32> > ap_return_13;
    sc_out< sc_lv<32> > ap_return_14;
    sc_out< sc_lv<32> > ap_return_15;
    sc_out< sc_lv<32> > ap_return_16;
    sc_out< sc_lv<32> > ap_return_17;
    sc_out< sc_lv<32> > ap_return_18;
    sc_out< sc_lv<32> > ap_return_19;
    sc_out< sc_lv<32> > ap_return_20;
    sc_out< sc_lv<32> > ap_return_21;
    sc_out< sc_lv<32> > ap_return_22;
    sc_out< sc_lv<32> > ap_return_23;
    sc_out< sc_lv<32> > ap_return_24;
    sc_out< sc_lv<32> > ap_return_25;
    sc_out< sc_lv<32> > ap_return_26;
    sc_out< sc_lv<32> > ap_return_27;
    sc_out< sc_lv<32> > ap_return_28;
    sc_out< sc_lv<32> > ap_return_29;


    // Module declarations
    cmov(sc_module_name name);
    SC_HAS_PROCESS(cmov);

    ~cmov();

    sc_trace_file* mVcdFile;

    cmov_base_yplusx* base_yplusx_U;
    cmov_base_yminusx* base_yminusx_U;
    cmov_base_xy2d* base_xy2d_U;
    fe_cmov* grp_fe_cmov_fu_336;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > base_yplusx_ce0;
    sc_signal< sc_lv<32> > base_yplusx_q0;
    sc_signal< sc_logic > base_yplusx_ce1;
    sc_signal< sc_lv<32> > base_yplusx_q1;
    sc_signal< sc_logic > base_yminusx_ce0;
    sc_signal< sc_lv<32> > base_yminusx_q0;
    sc_signal< sc_logic > base_yminusx_ce1;
    sc_signal< sc_lv<32> > base_yminusx_q1;
    sc_signal< sc_logic > base_xy2d_ce0;
    sc_signal< sc_lv<32> > base_xy2d_q0;
    sc_signal< sc_logic > base_xy2d_ce1;
    sc_signal< sc_lv<32> > base_xy2d_q1;
    sc_signal< sc_lv<1> > b_read_reg_670;
    sc_signal< sc_lv<5> > tmp_756_read_reg_675;
    sc_signal< sc_lv<32> > t_yplusx_9_read_1_reg_680;
    sc_signal< sc_lv<32> > t_yplusx_8_read_1_reg_685;
    sc_signal< sc_lv<32> > t_yplusx_7_read_1_reg_690;
    sc_signal< sc_lv<32> > t_yplusx_6_read_1_reg_695;
    sc_signal< sc_lv<32> > t_yplusx_5_read_1_reg_700;
    sc_signal< sc_lv<32> > t_yplusx_4_read_1_reg_705;
    sc_signal< sc_lv<32> > t_yplusx_3_read_1_reg_710;
    sc_signal< sc_lv<32> > t_yplusx_2_read_1_reg_715;
    sc_signal< sc_lv<32> > t_yplusx_1_read_1_reg_720;
    sc_signal< sc_lv<32> > t_yplusx_0_read_1_reg_725;
    sc_signal< sc_lv<3> > tmp_fu_495_p1;
    sc_signal< sc_lv<3> > tmp_reg_730;
    sc_signal< sc_lv<5> > tmp_7561_read_reg_735;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_fe_cmov_fu_336_ap_done;
    sc_signal< sc_lv<32> > t_yminusx_9_read_1_reg_740;
    sc_signal< sc_lv<32> > t_yminusx_8_read_1_reg_745;
    sc_signal< sc_lv<32> > t_yminusx_7_read_1_reg_750;
    sc_signal< sc_lv<32> > t_yminusx_6_read_1_reg_755;
    sc_signal< sc_lv<32> > t_yminusx_5_read_1_reg_760;
    sc_signal< sc_lv<32> > t_yminusx_4_read_1_reg_765;
    sc_signal< sc_lv<32> > t_yminusx_3_read_1_reg_770;
    sc_signal< sc_lv<32> > t_yminusx_2_read_1_reg_775;
    sc_signal< sc_lv<32> > t_yminusx_1_read_1_reg_780;
    sc_signal< sc_lv<32> > t_yminusx_0_read_1_reg_785;
    sc_signal< sc_lv<32> > t_yplusx_reg_790;
    sc_signal< sc_lv<32> > t_yplusx_1_reg_795;
    sc_signal< sc_lv<32> > t_yplusx_2_reg_800;
    sc_signal< sc_lv<32> > t_yplusx_3_reg_805;
    sc_signal< sc_lv<32> > t_yplusx_4_reg_810;
    sc_signal< sc_lv<32> > t_yplusx_5_reg_815;
    sc_signal< sc_lv<32> > t_yplusx_6_reg_820;
    sc_signal< sc_lv<32> > t_yplusx_7_reg_825;
    sc_signal< sc_lv<32> > t_yplusx_8_reg_830;
    sc_signal< sc_lv<32> > t_yplusx_9_reg_835;
    sc_signal< sc_lv<3> > tmp_1727_fu_500_p1;
    sc_signal< sc_lv<3> > tmp_1727_reg_840;
    sc_signal< sc_lv<5> > tmp_7562_read_reg_845;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > t_xy2d_9_read_1_reg_850;
    sc_signal< sc_lv<32> > t_xy2d_8_read_1_reg_855;
    sc_signal< sc_lv<32> > t_xy2d_7_read_1_reg_860;
    sc_signal< sc_lv<32> > t_xy2d_6_read_1_reg_865;
    sc_signal< sc_lv<32> > t_xy2d_5_read_1_reg_870;
    sc_signal< sc_lv<32> > t_xy2d_4_read_1_reg_875;
    sc_signal< sc_lv<32> > t_xy2d_3_read_1_reg_880;
    sc_signal< sc_lv<32> > t_xy2d_2_read_1_reg_885;
    sc_signal< sc_lv<32> > t_xy2d_1_read_1_reg_890;
    sc_signal< sc_lv<32> > t_xy2d_0_read_1_reg_895;
    sc_signal< sc_lv<32> > t_yminusx_reg_900;
    sc_signal< sc_lv<32> > t_yminusx_1_reg_905;
    sc_signal< sc_lv<32> > t_yminusx_2_reg_910;
    sc_signal< sc_lv<32> > t_yminusx_3_reg_915;
    sc_signal< sc_lv<32> > t_yminusx_4_reg_920;
    sc_signal< sc_lv<32> > t_yminusx_5_reg_925;
    sc_signal< sc_lv<32> > t_yminusx_6_reg_930;
    sc_signal< sc_lv<32> > t_yminusx_7_reg_935;
    sc_signal< sc_lv<32> > t_yminusx_8_reg_940;
    sc_signal< sc_lv<32> > t_yminusx_9_reg_945;
    sc_signal< sc_lv<3> > tmp_1728_fu_505_p1;
    sc_signal< sc_lv<3> > tmp_1728_reg_950;
    sc_signal< sc_logic > grp_fe_cmov_fu_336_ap_start;
    sc_signal< sc_logic > grp_fe_cmov_fu_336_ap_idle;
    sc_signal< sc_logic > grp_fe_cmov_fu_336_ap_ready;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_0_read;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_1_read;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_2_read;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_3_read;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_4_read;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_5_read;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_6_read;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_7_read;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_8_read;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_f_9_read;
    sc_signal< sc_lv<12> > grp_fe_cmov_fu_336_g_address0;
    sc_signal< sc_logic > grp_fe_cmov_fu_336_g_ce0;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_g_q0;
    sc_signal< sc_lv<12> > grp_fe_cmov_fu_336_g_address1;
    sc_signal< sc_logic > grp_fe_cmov_fu_336_g_ce1;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_g_q1;
    sc_signal< sc_lv<5> > grp_fe_cmov_fu_336_tmp_7562;
    sc_signal< sc_lv<3> > grp_fe_cmov_fu_336_u_xy2d_offset;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_0;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_1;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_2;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_3;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_4;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_5;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_6;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_7;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_8;
    sc_signal< sc_lv<32> > grp_fe_cmov_fu_336_ap_return_9;
    sc_signal< sc_logic > ap_reg_grp_fe_cmov_fu_336_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<32> > ap_return_2_preg;
    sc_signal< sc_lv<32> > ap_return_3_preg;
    sc_signal< sc_lv<32> > ap_return_4_preg;
    sc_signal< sc_lv<32> > ap_return_5_preg;
    sc_signal< sc_lv<32> > ap_return_6_preg;
    sc_signal< sc_lv<32> > ap_return_7_preg;
    sc_signal< sc_lv<32> > ap_return_8_preg;
    sc_signal< sc_lv<32> > ap_return_9_preg;
    sc_signal< sc_lv<32> > ap_return_10_preg;
    sc_signal< sc_lv<32> > ap_return_11_preg;
    sc_signal< sc_lv<32> > ap_return_12_preg;
    sc_signal< sc_lv<32> > ap_return_13_preg;
    sc_signal< sc_lv<32> > ap_return_14_preg;
    sc_signal< sc_lv<32> > ap_return_15_preg;
    sc_signal< sc_lv<32> > ap_return_16_preg;
    sc_signal< sc_lv<32> > ap_return_17_preg;
    sc_signal< sc_lv<32> > ap_return_18_preg;
    sc_signal< sc_lv<32> > ap_return_19_preg;
    sc_signal< sc_lv<32> > ap_return_20_preg;
    sc_signal< sc_lv<32> > ap_return_21_preg;
    sc_signal< sc_lv<32> > ap_return_22_preg;
    sc_signal< sc_lv<32> > ap_return_23_preg;
    sc_signal< sc_lv<32> > ap_return_24_preg;
    sc_signal< sc_lv<32> > ap_return_25_preg;
    sc_signal< sc_lv<32> > ap_return_26_preg;
    sc_signal< sc_lv<32> > ap_return_27_preg;
    sc_signal< sc_lv<32> > ap_return_28_preg;
    sc_signal< sc_lv<32> > ap_return_29_preg;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_base_xy2d_ce0();
    void thread_base_xy2d_ce1();
    void thread_base_yminusx_ce0();
    void thread_base_yminusx_ce1();
    void thread_base_yplusx_ce0();
    void thread_base_yplusx_ce1();
    void thread_grp_fe_cmov_fu_336_ap_start();
    void thread_grp_fe_cmov_fu_336_f_0_read();
    void thread_grp_fe_cmov_fu_336_f_1_read();
    void thread_grp_fe_cmov_fu_336_f_2_read();
    void thread_grp_fe_cmov_fu_336_f_3_read();
    void thread_grp_fe_cmov_fu_336_f_4_read();
    void thread_grp_fe_cmov_fu_336_f_5_read();
    void thread_grp_fe_cmov_fu_336_f_6_read();
    void thread_grp_fe_cmov_fu_336_f_7_read();
    void thread_grp_fe_cmov_fu_336_f_8_read();
    void thread_grp_fe_cmov_fu_336_f_9_read();
    void thread_grp_fe_cmov_fu_336_g_q0();
    void thread_grp_fe_cmov_fu_336_g_q1();
    void thread_grp_fe_cmov_fu_336_tmp_7562();
    void thread_grp_fe_cmov_fu_336_u_xy2d_offset();
    void thread_tmp_1727_fu_500_p1();
    void thread_tmp_1728_fu_505_p1();
    void thread_tmp_fu_495_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
