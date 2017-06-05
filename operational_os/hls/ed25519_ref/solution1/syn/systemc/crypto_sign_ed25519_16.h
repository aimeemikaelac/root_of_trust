// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _crypto_sign_ed25519_16_HH_
#define _crypto_sign_ed25519_16_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "reduce_add_sub_m.h"
#include "reduce_add_sub_t.h"

namespace ap_rtl {

struct crypto_sign_ed25519_16 : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > r_v_address0;
    sc_out< sc_logic > r_v_ce0;
    sc_out< sc_logic > r_v_we0;
    sc_out< sc_lv<32> > r_v_d0;
    sc_in< sc_lv<32> > r_v_q0;
    sc_out< sc_lv<5> > r_v_address1;
    sc_out< sc_logic > r_v_ce1;
    sc_out< sc_logic > r_v_we1;
    sc_out< sc_lv<32> > r_v_d1;
    sc_in< sc_lv<32> > r_v_q1;
    sc_out< sc_lv<5> > y_v_address0;
    sc_out< sc_logic > y_v_ce0;
    sc_in< sc_lv<32> > y_v_q0;


    // Module declarations
    crypto_sign_ed25519_16(sc_module_name name);
    SC_HAS_PROCESS(crypto_sign_ed25519_16);

    ~crypto_sign_ed25519_16();

    sc_trace_file* mVcdFile;

    reduce_add_sub_m* m_U;
    reduce_add_sub_t* t_U;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > m_address0;
    sc_signal< sc_logic > m_ce0;
    sc_signal< sc_lv<8> > m_q0;
    sc_signal< sc_lv<6> > i_49_fu_205_p2;
    sc_signal< sc_lv<6> > i_49_reg_396;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<5> > r_v_addr_reg_401;
    sc_signal< sc_lv<1> > exitcond1_fu_199_p2;
    sc_signal< sc_lv<5> > i_50_fu_230_p2;
    sc_signal< sc_lv<5> > i_50_reg_414;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > r_v_addr_18_reg_419;
    sc_signal< sc_lv<1> > exitcond_fu_224_p2;
    sc_signal< sc_lv<5> > r_v_addr_19_reg_424;
    sc_signal< sc_lv<6> > i_51_fu_282_p2;
    sc_signal< sc_lv<6> > i_51_reg_438;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > tmp_i_fu_288_p1;
    sc_signal< sc_lv<64> > tmp_i_reg_443;
    sc_signal< sc_lv<1> > exitcond2_i_fu_276_p2;
    sc_signal< sc_lv<32> > mask_cast_fu_297_p1;
    sc_signal< sc_lv<32> > mask_cast_reg_458;
    sc_signal< sc_lv<1> > tmp_783_fu_321_p3;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<6> > i_52_fu_359_p2;
    sc_signal< sc_lv<6> > i_52_reg_471;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > r_v_addr_21_reg_476;
    sc_signal< sc_lv<1> > exitcond_i_fu_353_p2;
    sc_signal< sc_lv<5> > t_address0;
    sc_signal< sc_logic > t_ce0;
    sc_signal< sc_logic > t_we0;
    sc_signal< sc_lv<8> > t_d0;
    sc_signal< sc_lv<8> > t_q0;
    sc_signal< sc_lv<6> > i_reg_143;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > i_1_reg_154;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > pb_i_reg_165;
    sc_signal< sc_lv<6> > i_i_reg_177;
    sc_signal< sc_lv<6> > i_1_i_reg_188;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > tmp_fu_211_p1;
    sc_signal< sc_lv<64> > tmp_779_fu_236_p1;
    sc_signal< sc_lv<64> > tmp_780_fu_241_p1;
    sc_signal< sc_lv<64> > tmp_764_i_fu_365_p1;
    sc_signal< sc_lv<2> > mask_fu_50;
    sc_signal< sc_lv<2> > phitmp_i_cast_cast_fu_340_p3;
    sc_signal< sc_lv<32> > tmp_s_fu_217_p2;
    sc_signal< sc_lv<32> > tmp_852_cast_fu_271_p1;
    sc_signal< sc_lv<32> > tmp_768_i_fu_386_p2;
    sc_signal< sc_lv<24> > carry_fu_250_p4;
    sc_signal< sc_lv<32> > carry_1_fu_260_p1;
    sc_signal< sc_lv<8> > tmp_782_fu_246_p1;
    sc_signal< sc_lv<8> > pb_i_cast1_fu_301_p1;
    sc_signal< sc_lv<8> > pb_fu_305_p2;
    sc_signal< sc_lv<32> > pb_4_cast_fu_311_p1;
    sc_signal< sc_lv<32> > x_3_fu_315_p2;
    sc_signal< sc_lv<1> > phitmp_i_fu_334_p2;
    sc_signal< sc_lv<32> > tmp_765_i_fu_371_p1;
    sc_signal< sc_lv<32> > tmp_766_i_fu_375_p2;
    sc_signal< sc_lv<32> > tmp_767_i_fu_381_p2;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
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
    void thread_carry_1_fu_260_p1();
    void thread_carry_fu_250_p4();
    void thread_exitcond1_fu_199_p2();
    void thread_exitcond2_i_fu_276_p2();
    void thread_exitcond_fu_224_p2();
    void thread_exitcond_i_fu_353_p2();
    void thread_i_49_fu_205_p2();
    void thread_i_50_fu_230_p2();
    void thread_i_51_fu_282_p2();
    void thread_i_52_fu_359_p2();
    void thread_m_address0();
    void thread_m_ce0();
    void thread_mask_cast_fu_297_p1();
    void thread_pb_4_cast_fu_311_p1();
    void thread_pb_fu_305_p2();
    void thread_pb_i_cast1_fu_301_p1();
    void thread_phitmp_i_cast_cast_fu_340_p3();
    void thread_phitmp_i_fu_334_p2();
    void thread_r_v_address0();
    void thread_r_v_address1();
    void thread_r_v_ce0();
    void thread_r_v_ce1();
    void thread_r_v_d0();
    void thread_r_v_d1();
    void thread_r_v_we0();
    void thread_r_v_we1();
    void thread_t_address0();
    void thread_t_ce0();
    void thread_t_d0();
    void thread_t_we0();
    void thread_tmp_764_i_fu_365_p1();
    void thread_tmp_765_i_fu_371_p1();
    void thread_tmp_766_i_fu_375_p2();
    void thread_tmp_767_i_fu_381_p2();
    void thread_tmp_768_i_fu_386_p2();
    void thread_tmp_779_fu_236_p1();
    void thread_tmp_780_fu_241_p1();
    void thread_tmp_782_fu_246_p1();
    void thread_tmp_783_fu_321_p3();
    void thread_tmp_852_cast_fu_271_p1();
    void thread_tmp_fu_211_p1();
    void thread_tmp_i_fu_288_p1();
    void thread_tmp_s_fu_217_p2();
    void thread_x_3_fu_315_p2();
    void thread_y_v_address0();
    void thread_y_v_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif