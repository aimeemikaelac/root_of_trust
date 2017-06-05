// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "crypto_sign_ed25519_16.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic crypto_sign_ed25519_16::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic crypto_sign_ed25519_16::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<9> crypto_sign_ed25519_16::ap_ST_fsm_state1 = "1";
const sc_lv<9> crypto_sign_ed25519_16::ap_ST_fsm_state2 = "10";
const sc_lv<9> crypto_sign_ed25519_16::ap_ST_fsm_state3 = "100";
const sc_lv<9> crypto_sign_ed25519_16::ap_ST_fsm_state4 = "1000";
const sc_lv<9> crypto_sign_ed25519_16::ap_ST_fsm_state5 = "10000";
const sc_lv<9> crypto_sign_ed25519_16::ap_ST_fsm_state6 = "100000";
const sc_lv<9> crypto_sign_ed25519_16::ap_ST_fsm_state7 = "1000000";
const sc_lv<9> crypto_sign_ed25519_16::ap_ST_fsm_state8 = "10000000";
const sc_lv<9> crypto_sign_ed25519_16::ap_ST_fsm_state9 = "100000000";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_1 = "1";
const sc_lv<1> crypto_sign_ed25519_16::ap_const_lv1_0 = "0";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_3 = "11";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_5 = "101";
const sc_lv<1> crypto_sign_ed25519_16::ap_const_lv1_1 = "1";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_6 = "110";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_7 = "111";
const sc_lv<6> crypto_sign_ed25519_16::ap_const_lv6_0 = "000000";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_2 = "10";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_4 = "100";
const sc_lv<5> crypto_sign_ed25519_16::ap_const_lv5_0 = "00000";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_8 = "1000";
const sc_lv<6> crypto_sign_ed25519_16::ap_const_lv6_20 = "100000";
const sc_lv<6> crypto_sign_ed25519_16::ap_const_lv6_1 = "1";
const sc_lv<5> crypto_sign_ed25519_16::ap_const_lv5_1F = "11111";
const sc_lv<5> crypto_sign_ed25519_16::ap_const_lv5_1 = "1";
const sc_lv<32> crypto_sign_ed25519_16::ap_const_lv32_1F = "11111";
const sc_lv<2> crypto_sign_ed25519_16::ap_const_lv2_3 = "11";
const sc_lv<2> crypto_sign_ed25519_16::ap_const_lv2_0 = "00";
const bool crypto_sign_ed25519_16::ap_const_boolean_1 = true;

crypto_sign_ed25519_16::crypto_sign_ed25519_16(sc_module_name name) : sc_module(name), mVcdFile(0) {
    m_U = new reduce_add_sub_m("m_U");
    m_U->clk(ap_clk);
    m_U->reset(ap_rst);
    m_U->address0(m_address0);
    m_U->ce0(m_ce0);
    m_U->q0(m_q0);
    t_U = new reduce_add_sub_t("t_U");
    t_U->clk(ap_clk);
    t_U->reset(ap_rst);
    t_U->address0(t_address0);
    t_U->ce0(t_ce0);
    t_U->we0(t_we0);
    t_U->d0(t_d0);
    t_U->q0(t_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( exitcond_i_fu_353_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( exitcond_i_fu_353_p2 );

    SC_METHOD(thread_carry_1_fu_260_p1);
    sensitive << ( carry_fu_250_p4 );

    SC_METHOD(thread_carry_fu_250_p4);
    sensitive << ( r_v_q0 );

    SC_METHOD(thread_exitcond1_fu_199_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_143 );

    SC_METHOD(thread_exitcond2_i_fu_276_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( i_i_reg_177 );

    SC_METHOD(thread_exitcond_fu_224_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( i_1_reg_154 );

    SC_METHOD(thread_exitcond_i_fu_353_p2);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( i_1_i_reg_188 );

    SC_METHOD(thread_i_49_fu_205_p2);
    sensitive << ( i_reg_143 );

    SC_METHOD(thread_i_50_fu_230_p2);
    sensitive << ( i_1_reg_154 );

    SC_METHOD(thread_i_51_fu_282_p2);
    sensitive << ( i_i_reg_177 );

    SC_METHOD(thread_i_52_fu_359_p2);
    sensitive << ( i_1_i_reg_188 );

    SC_METHOD(thread_m_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_i_fu_288_p1 );

    SC_METHOD(thread_m_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_mask_cast_fu_297_p1);
    sensitive << ( mask_fu_50 );

    SC_METHOD(thread_pb_4_cast_fu_311_p1);
    sensitive << ( pb_fu_305_p2 );

    SC_METHOD(thread_pb_fu_305_p2);
    sensitive << ( m_q0 );
    sensitive << ( pb_i_cast1_fu_301_p1 );

    SC_METHOD(thread_pb_i_cast1_fu_301_p1);
    sensitive << ( pb_i_reg_165 );

    SC_METHOD(thread_phitmp_i_cast_cast_fu_340_p3);
    sensitive << ( phitmp_i_fu_334_p2 );

    SC_METHOD(thread_phitmp_i_fu_334_p2);
    sensitive << ( tmp_783_fu_321_p3 );

    SC_METHOD(thread_r_v_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( r_v_addr_reg_401 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( r_v_addr_18_reg_419 );
    sensitive << ( r_v_addr_21_reg_476 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( tmp_fu_211_p1 );
    sensitive << ( tmp_779_fu_236_p1 );

    SC_METHOD(thread_r_v_address1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( r_v_addr_19_reg_424 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_i_fu_288_p1 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_780_fu_241_p1 );
    sensitive << ( tmp_764_i_fu_365_p1 );

    SC_METHOD(thread_r_v_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state9 );

    SC_METHOD(thread_r_v_ce1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_r_v_d0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( tmp_s_fu_217_p2 );
    sensitive << ( tmp_852_cast_fu_271_p1 );
    sensitive << ( tmp_768_i_fu_386_p2 );

    SC_METHOD(thread_r_v_d1);
    sensitive << ( r_v_q1 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( carry_1_fu_260_p1 );

    SC_METHOD(thread_r_v_we0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state9 );

    SC_METHOD(thread_r_v_we1);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_t_address0);
    sensitive << ( tmp_i_reg_443 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( tmp_764_i_fu_365_p1 );

    SC_METHOD(thread_t_ce0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_t_d0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( x_3_fu_315_p2 );

    SC_METHOD(thread_t_we0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_tmp_764_i_fu_365_p1);
    sensitive << ( i_1_i_reg_188 );

    SC_METHOD(thread_tmp_765_i_fu_371_p1);
    sensitive << ( t_q0 );

    SC_METHOD(thread_tmp_766_i_fu_375_p2);
    sensitive << ( r_v_q1 );
    sensitive << ( tmp_765_i_fu_371_p1 );

    SC_METHOD(thread_tmp_767_i_fu_381_p2);
    sensitive << ( mask_cast_reg_458 );
    sensitive << ( tmp_766_i_fu_375_p2 );

    SC_METHOD(thread_tmp_768_i_fu_386_p2);
    sensitive << ( r_v_q1 );
    sensitive << ( tmp_767_i_fu_381_p2 );

    SC_METHOD(thread_tmp_779_fu_236_p1);
    sensitive << ( i_1_reg_154 );

    SC_METHOD(thread_tmp_780_fu_241_p1);
    sensitive << ( i_50_fu_230_p2 );

    SC_METHOD(thread_tmp_782_fu_246_p1);
    sensitive << ( r_v_q0 );

    SC_METHOD(thread_tmp_783_fu_321_p3);
    sensitive << ( x_3_fu_315_p2 );

    SC_METHOD(thread_tmp_852_cast_fu_271_p1);
    sensitive << ( tmp_782_fu_246_p1 );

    SC_METHOD(thread_tmp_fu_211_p1);
    sensitive << ( i_reg_143 );

    SC_METHOD(thread_tmp_i_fu_288_p1);
    sensitive << ( i_i_reg_177 );

    SC_METHOD(thread_tmp_s_fu_217_p2);
    sensitive << ( r_v_q0 );
    sensitive << ( y_v_q0 );

    SC_METHOD(thread_x_3_fu_315_p2);
    sensitive << ( r_v_q1 );
    sensitive << ( pb_4_cast_fu_311_p1 );

    SC_METHOD(thread_y_v_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_211_p1 );

    SC_METHOD(thread_y_v_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_199_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_224_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( exitcond2_i_fu_276_p2 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( exitcond_i_fu_353_p2 );

    ap_CS_fsm = "000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "crypto_sign_ed25519_16_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, r_v_address0, "(port)r_v_address0");
    sc_trace(mVcdFile, r_v_ce0, "(port)r_v_ce0");
    sc_trace(mVcdFile, r_v_we0, "(port)r_v_we0");
    sc_trace(mVcdFile, r_v_d0, "(port)r_v_d0");
    sc_trace(mVcdFile, r_v_q0, "(port)r_v_q0");
    sc_trace(mVcdFile, r_v_address1, "(port)r_v_address1");
    sc_trace(mVcdFile, r_v_ce1, "(port)r_v_ce1");
    sc_trace(mVcdFile, r_v_we1, "(port)r_v_we1");
    sc_trace(mVcdFile, r_v_d1, "(port)r_v_d1");
    sc_trace(mVcdFile, r_v_q1, "(port)r_v_q1");
    sc_trace(mVcdFile, y_v_address0, "(port)y_v_address0");
    sc_trace(mVcdFile, y_v_ce0, "(port)y_v_ce0");
    sc_trace(mVcdFile, y_v_q0, "(port)y_v_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, m_address0, "m_address0");
    sc_trace(mVcdFile, m_ce0, "m_ce0");
    sc_trace(mVcdFile, m_q0, "m_q0");
    sc_trace(mVcdFile, i_49_fu_205_p2, "i_49_fu_205_p2");
    sc_trace(mVcdFile, i_49_reg_396, "i_49_reg_396");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, r_v_addr_reg_401, "r_v_addr_reg_401");
    sc_trace(mVcdFile, exitcond1_fu_199_p2, "exitcond1_fu_199_p2");
    sc_trace(mVcdFile, i_50_fu_230_p2, "i_50_fu_230_p2");
    sc_trace(mVcdFile, i_50_reg_414, "i_50_reg_414");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, r_v_addr_18_reg_419, "r_v_addr_18_reg_419");
    sc_trace(mVcdFile, exitcond_fu_224_p2, "exitcond_fu_224_p2");
    sc_trace(mVcdFile, r_v_addr_19_reg_424, "r_v_addr_19_reg_424");
    sc_trace(mVcdFile, i_51_fu_282_p2, "i_51_fu_282_p2");
    sc_trace(mVcdFile, i_51_reg_438, "i_51_reg_438");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_i_fu_288_p1, "tmp_i_fu_288_p1");
    sc_trace(mVcdFile, tmp_i_reg_443, "tmp_i_reg_443");
    sc_trace(mVcdFile, exitcond2_i_fu_276_p2, "exitcond2_i_fu_276_p2");
    sc_trace(mVcdFile, mask_cast_fu_297_p1, "mask_cast_fu_297_p1");
    sc_trace(mVcdFile, mask_cast_reg_458, "mask_cast_reg_458");
    sc_trace(mVcdFile, tmp_783_fu_321_p3, "tmp_783_fu_321_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, i_52_fu_359_p2, "i_52_fu_359_p2");
    sc_trace(mVcdFile, i_52_reg_471, "i_52_reg_471");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, r_v_addr_21_reg_476, "r_v_addr_21_reg_476");
    sc_trace(mVcdFile, exitcond_i_fu_353_p2, "exitcond_i_fu_353_p2");
    sc_trace(mVcdFile, t_address0, "t_address0");
    sc_trace(mVcdFile, t_ce0, "t_ce0");
    sc_trace(mVcdFile, t_we0, "t_we0");
    sc_trace(mVcdFile, t_d0, "t_d0");
    sc_trace(mVcdFile, t_q0, "t_q0");
    sc_trace(mVcdFile, i_reg_143, "i_reg_143");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, i_1_reg_154, "i_1_reg_154");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, pb_i_reg_165, "pb_i_reg_165");
    sc_trace(mVcdFile, i_i_reg_177, "i_i_reg_177");
    sc_trace(mVcdFile, i_1_i_reg_188, "i_1_i_reg_188");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, tmp_fu_211_p1, "tmp_fu_211_p1");
    sc_trace(mVcdFile, tmp_779_fu_236_p1, "tmp_779_fu_236_p1");
    sc_trace(mVcdFile, tmp_780_fu_241_p1, "tmp_780_fu_241_p1");
    sc_trace(mVcdFile, tmp_764_i_fu_365_p1, "tmp_764_i_fu_365_p1");
    sc_trace(mVcdFile, mask_fu_50, "mask_fu_50");
    sc_trace(mVcdFile, phitmp_i_cast_cast_fu_340_p3, "phitmp_i_cast_cast_fu_340_p3");
    sc_trace(mVcdFile, tmp_s_fu_217_p2, "tmp_s_fu_217_p2");
    sc_trace(mVcdFile, tmp_852_cast_fu_271_p1, "tmp_852_cast_fu_271_p1");
    sc_trace(mVcdFile, tmp_768_i_fu_386_p2, "tmp_768_i_fu_386_p2");
    sc_trace(mVcdFile, carry_fu_250_p4, "carry_fu_250_p4");
    sc_trace(mVcdFile, carry_1_fu_260_p1, "carry_1_fu_260_p1");
    sc_trace(mVcdFile, tmp_782_fu_246_p1, "tmp_782_fu_246_p1");
    sc_trace(mVcdFile, pb_i_cast1_fu_301_p1, "pb_i_cast1_fu_301_p1");
    sc_trace(mVcdFile, pb_fu_305_p2, "pb_fu_305_p2");
    sc_trace(mVcdFile, pb_4_cast_fu_311_p1, "pb_4_cast_fu_311_p1");
    sc_trace(mVcdFile, x_3_fu_315_p2, "x_3_fu_315_p2");
    sc_trace(mVcdFile, phitmp_i_fu_334_p2, "phitmp_i_fu_334_p2");
    sc_trace(mVcdFile, tmp_765_i_fu_371_p1, "tmp_765_i_fu_371_p1");
    sc_trace(mVcdFile, tmp_766_i_fu_375_p2, "tmp_766_i_fu_375_p2");
    sc_trace(mVcdFile, tmp_767_i_fu_381_p2, "tmp_767_i_fu_381_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

crypto_sign_ed25519_16::~crypto_sign_ed25519_16() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete m_U;
    delete t_U;
}

void crypto_sign_ed25519_16::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(exitcond2_i_fu_276_p2.read(), ap_const_lv1_1))) {
        i_1_i_reg_188 = ap_const_lv6_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        i_1_i_reg_188 = i_52_reg_471.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_199_p2.read(), ap_const_lv1_1))) {
        i_1_reg_154 = ap_const_lv5_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i_1_reg_154 = i_50_reg_414.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_224_p2.read(), ap_const_lv1_1))) {
        i_i_reg_177 = ap_const_lv6_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        i_i_reg_177 = i_51_reg_438.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_reg_143 = i_49_reg_396.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_143 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_224_p2.read(), ap_const_lv1_1))) {
        pb_i_reg_165 = ap_const_lv1_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        pb_i_reg_165 = x_3_fu_315_p2.read().range(31, 31);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_49_reg_396 = i_49_fu_205_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_50_reg_414 = i_50_fu_230_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i_51_reg_438 = i_51_fu_282_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        i_52_reg_471 = i_52_fu_359_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(exitcond2_i_fu_276_p2.read(), ap_const_lv1_1))) {
        mask_cast_reg_458 = mask_cast_fu_297_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        mask_fu_50 = phitmp_i_cast_cast_fu_340_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_224_p2.read()))) {
        r_v_addr_18_reg_419 =  (sc_lv<5>) (tmp_779_fu_236_p1.read());
        r_v_addr_19_reg_424 =  (sc_lv<5>) (tmp_780_fu_241_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_fu_353_p2.read()))) {
        r_v_addr_21_reg_476 =  (sc_lv<5>) (tmp_764_i_fu_365_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond1_fu_199_p2.read(), ap_const_lv1_0))) {
        r_v_addr_reg_401 =  (sc_lv<5>) (tmp_fu_211_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_i_fu_276_p2.read()))) {
        tmp_i_reg_443 = tmp_i_fu_288_p1.read();
    }
}

void crypto_sign_ed25519_16::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void crypto_sign_ed25519_16::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void crypto_sign_ed25519_16::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void crypto_sign_ed25519_16::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void crypto_sign_ed25519_16::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void crypto_sign_ed25519_16::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void crypto_sign_ed25519_16::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void crypto_sign_ed25519_16::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void crypto_sign_ed25519_16::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void crypto_sign_ed25519_16::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_fu_353_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_fu_353_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_carry_1_fu_260_p1() {
    carry_1_fu_260_p1 = esl_zext<32,24>(carry_fu_250_p4.read());
}

void crypto_sign_ed25519_16::thread_carry_fu_250_p4() {
    carry_fu_250_p4 = r_v_q0.read().range(31, 8);
}

void crypto_sign_ed25519_16::thread_exitcond1_fu_199_p2() {
    exitcond1_fu_199_p2 = (!i_reg_143.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_143.read() == ap_const_lv6_20);
}

void crypto_sign_ed25519_16::thread_exitcond2_i_fu_276_p2() {
    exitcond2_i_fu_276_p2 = (!i_i_reg_177.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(i_i_reg_177.read() == ap_const_lv6_20);
}

void crypto_sign_ed25519_16::thread_exitcond_fu_224_p2() {
    exitcond_fu_224_p2 = (!i_1_reg_154.read().is_01() || !ap_const_lv5_1F.is_01())? sc_lv<1>(): sc_lv<1>(i_1_reg_154.read() == ap_const_lv5_1F);
}

void crypto_sign_ed25519_16::thread_exitcond_i_fu_353_p2() {
    exitcond_i_fu_353_p2 = (!i_1_i_reg_188.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(i_1_i_reg_188.read() == ap_const_lv6_20);
}

void crypto_sign_ed25519_16::thread_i_49_fu_205_p2() {
    i_49_fu_205_p2 = (!i_reg_143.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_reg_143.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void crypto_sign_ed25519_16::thread_i_50_fu_230_p2() {
    i_50_fu_230_p2 = (!i_1_reg_154.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(i_1_reg_154.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void crypto_sign_ed25519_16::thread_i_51_fu_282_p2() {
    i_51_fu_282_p2 = (!i_i_reg_177.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_i_reg_177.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void crypto_sign_ed25519_16::thread_i_52_fu_359_p2() {
    i_52_fu_359_p2 = (!i_1_i_reg_188.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_1_i_reg_188.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void crypto_sign_ed25519_16::thread_m_address0() {
    m_address0 =  (sc_lv<5>) (tmp_i_fu_288_p1.read());
}

void crypto_sign_ed25519_16::thread_m_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        m_ce0 = ap_const_logic_1;
    } else {
        m_ce0 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_mask_cast_fu_297_p1() {
    mask_cast_fu_297_p1 = esl_sext<32,2>(mask_fu_50.read());
}

void crypto_sign_ed25519_16::thread_pb_4_cast_fu_311_p1() {
    pb_4_cast_fu_311_p1 = esl_zext<32,8>(pb_fu_305_p2.read());
}

void crypto_sign_ed25519_16::thread_pb_fu_305_p2() {
    pb_fu_305_p2 = (!m_q0.read().is_01() || !pb_i_cast1_fu_301_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(m_q0.read()) + sc_biguint<8>(pb_i_cast1_fu_301_p1.read()));
}

void crypto_sign_ed25519_16::thread_pb_i_cast1_fu_301_p1() {
    pb_i_cast1_fu_301_p1 = esl_zext<8,1>(pb_i_reg_165.read());
}

void crypto_sign_ed25519_16::thread_phitmp_i_cast_cast_fu_340_p3() {
    phitmp_i_cast_cast_fu_340_p3 = (!phitmp_i_fu_334_p2.read()[0].is_01())? sc_lv<2>(): ((phitmp_i_fu_334_p2.read()[0].to_bool())? ap_const_lv2_3: ap_const_lv2_0);
}

void crypto_sign_ed25519_16::thread_phitmp_i_fu_334_p2() {
    phitmp_i_fu_334_p2 = (tmp_783_fu_321_p3.read() ^ ap_const_lv1_1);
}

void crypto_sign_ed25519_16::thread_r_v_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        r_v_address0 = r_v_addr_21_reg_476.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        r_v_address0 = r_v_addr_18_reg_419.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        r_v_address0 =  (sc_lv<5>) (tmp_779_fu_236_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        r_v_address0 = r_v_addr_reg_401.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        r_v_address0 =  (sc_lv<5>) (tmp_fu_211_p1.read());
    } else {
        r_v_address0 = "XXXXX";
    }
}

void crypto_sign_ed25519_16::thread_r_v_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        r_v_address1 =  (sc_lv<5>) (tmp_764_i_fu_365_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        r_v_address1 =  (sc_lv<5>) (tmp_i_fu_288_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        r_v_address1 = r_v_addr_19_reg_424.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        r_v_address1 =  (sc_lv<5>) (tmp_780_fu_241_p1.read());
    } else {
        r_v_address1 = "XXXXX";
    }
}

void crypto_sign_ed25519_16::thread_r_v_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()))) {
        r_v_ce0 = ap_const_logic_1;
    } else {
        r_v_ce0 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_r_v_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        r_v_ce1 = ap_const_logic_1;
    } else {
        r_v_ce1 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_r_v_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        r_v_d0 = tmp_768_i_fu_386_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        r_v_d0 = tmp_852_cast_fu_271_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        r_v_d0 = tmp_s_fu_217_p2.read();
    } else {
        r_v_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void crypto_sign_ed25519_16::thread_r_v_d1() {
    r_v_d1 = (!carry_1_fu_260_p1.read().is_01() || !r_v_q1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(carry_1_fu_260_p1.read()) + sc_biguint<32>(r_v_q1.read()));
}

void crypto_sign_ed25519_16::thread_r_v_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()))) {
        r_v_we0 = ap_const_logic_1;
    } else {
        r_v_we0 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_r_v_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        r_v_we1 = ap_const_logic_1;
    } else {
        r_v_we1 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_t_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        t_address0 =  (sc_lv<5>) (tmp_764_i_fu_365_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        t_address0 =  (sc_lv<5>) (tmp_i_reg_443.read());
    } else {
        t_address0 = "XXXXX";
    }
}

void crypto_sign_ed25519_16::thread_t_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        t_ce0 = ap_const_logic_1;
    } else {
        t_ce0 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_t_d0() {
    t_d0 = x_3_fu_315_p2.read().range(8-1, 0);
}

void crypto_sign_ed25519_16::thread_t_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        t_we0 = ap_const_logic_1;
    } else {
        t_we0 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_tmp_764_i_fu_365_p1() {
    tmp_764_i_fu_365_p1 = esl_zext<64,6>(i_1_i_reg_188.read());
}

void crypto_sign_ed25519_16::thread_tmp_765_i_fu_371_p1() {
    tmp_765_i_fu_371_p1 = esl_zext<32,8>(t_q0.read());
}

void crypto_sign_ed25519_16::thread_tmp_766_i_fu_375_p2() {
    tmp_766_i_fu_375_p2 = (r_v_q1.read() ^ tmp_765_i_fu_371_p1.read());
}

void crypto_sign_ed25519_16::thread_tmp_767_i_fu_381_p2() {
    tmp_767_i_fu_381_p2 = (tmp_766_i_fu_375_p2.read() & mask_cast_reg_458.read());
}

void crypto_sign_ed25519_16::thread_tmp_768_i_fu_386_p2() {
    tmp_768_i_fu_386_p2 = (r_v_q1.read() ^ tmp_767_i_fu_381_p2.read());
}

void crypto_sign_ed25519_16::thread_tmp_779_fu_236_p1() {
    tmp_779_fu_236_p1 = esl_zext<64,5>(i_1_reg_154.read());
}

void crypto_sign_ed25519_16::thread_tmp_780_fu_241_p1() {
    tmp_780_fu_241_p1 = esl_zext<64,5>(i_50_fu_230_p2.read());
}

void crypto_sign_ed25519_16::thread_tmp_782_fu_246_p1() {
    tmp_782_fu_246_p1 = r_v_q0.read().range(8-1, 0);
}

void crypto_sign_ed25519_16::thread_tmp_783_fu_321_p3() {
    tmp_783_fu_321_p3 = x_3_fu_315_p2.read().range(31, 31);
}

void crypto_sign_ed25519_16::thread_tmp_852_cast_fu_271_p1() {
    tmp_852_cast_fu_271_p1 = esl_zext<32,8>(tmp_782_fu_246_p1.read());
}

void crypto_sign_ed25519_16::thread_tmp_fu_211_p1() {
    tmp_fu_211_p1 = esl_zext<64,6>(i_reg_143.read());
}

void crypto_sign_ed25519_16::thread_tmp_i_fu_288_p1() {
    tmp_i_fu_288_p1 = esl_zext<64,6>(i_i_reg_177.read());
}

void crypto_sign_ed25519_16::thread_tmp_s_fu_217_p2() {
    tmp_s_fu_217_p2 = (!r_v_q0.read().is_01() || !y_v_q0.read().is_01())? sc_lv<32>(): (sc_biguint<32>(r_v_q0.read()) + sc_biguint<32>(y_v_q0.read()));
}

void crypto_sign_ed25519_16::thread_x_3_fu_315_p2() {
    x_3_fu_315_p2 = (!r_v_q1.read().is_01() || !pb_4_cast_fu_311_p1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(r_v_q1.read()) - sc_biguint<32>(pb_4_cast_fu_311_p1.read()));
}

void crypto_sign_ed25519_16::thread_y_v_address0() {
    y_v_address0 =  (sc_lv<5>) (tmp_fu_211_p1.read());
}

void crypto_sign_ed25519_16::thread_y_v_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        y_v_ce0 = ap_const_logic_1;
    } else {
        y_v_ce0 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_16::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond1_fu_199_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_224_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(exitcond2_i_fu_276_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state8;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 128 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_fu_353_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state9;
            }
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<9>) ("XXXXXXXXX");
            break;
    }
}

}
