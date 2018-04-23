// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _contact_discovery_HH_
#define _contact_discovery_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "match_db_contact.h"
#include "contact_discoverybkb.h"
#include "contact_discovery_AXILiteS_s_axi.h"
#include "contact_discovery_db_mem_V_m_axi.h"

namespace ap_rtl {

template<unsigned int C_M_AXI_DB_MEM_V_ADDR_WIDTH = 64,
         unsigned int C_M_AXI_DB_MEM_V_ID_WIDTH = 1,
         unsigned int C_M_AXI_DB_MEM_V_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_DB_MEM_V_DATA_WIDTH = 512,
         unsigned int C_M_AXI_DB_MEM_V_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_DB_MEM_V_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_DB_MEM_V_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_DB_MEM_V_BUSER_WIDTH = 1,
         unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 7,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct contact_discovery : public sc_module {
    // Port declarations 69
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > m_axi_db_mem_V_AWVALID;
    sc_in< sc_logic > m_axi_db_mem_V_AWREADY;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_ADDR_WIDTH> > m_axi_db_mem_V_AWADDR;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_ID_WIDTH> > m_axi_db_mem_V_AWID;
    sc_out< sc_lv<8> > m_axi_db_mem_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_db_mem_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_db_mem_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_db_mem_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_db_mem_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_db_mem_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_db_mem_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_db_mem_V_AWREGION;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_AWUSER_WIDTH> > m_axi_db_mem_V_AWUSER;
    sc_out< sc_logic > m_axi_db_mem_V_WVALID;
    sc_in< sc_logic > m_axi_db_mem_V_WREADY;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_DATA_WIDTH> > m_axi_db_mem_V_WDATA;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_DATA_WIDTH/8> > m_axi_db_mem_V_WSTRB;
    sc_out< sc_logic > m_axi_db_mem_V_WLAST;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_ID_WIDTH> > m_axi_db_mem_V_WID;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_WUSER_WIDTH> > m_axi_db_mem_V_WUSER;
    sc_out< sc_logic > m_axi_db_mem_V_ARVALID;
    sc_in< sc_logic > m_axi_db_mem_V_ARREADY;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_ADDR_WIDTH> > m_axi_db_mem_V_ARADDR;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_ID_WIDTH> > m_axi_db_mem_V_ARID;
    sc_out< sc_lv<8> > m_axi_db_mem_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_db_mem_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_db_mem_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_db_mem_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_db_mem_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_db_mem_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_db_mem_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_db_mem_V_ARREGION;
    sc_out< sc_uint<C_M_AXI_DB_MEM_V_ARUSER_WIDTH> > m_axi_db_mem_V_ARUSER;
    sc_in< sc_logic > m_axi_db_mem_V_RVALID;
    sc_out< sc_logic > m_axi_db_mem_V_RREADY;
    sc_in< sc_uint<C_M_AXI_DB_MEM_V_DATA_WIDTH> > m_axi_db_mem_V_RDATA;
    sc_in< sc_logic > m_axi_db_mem_V_RLAST;
    sc_in< sc_uint<C_M_AXI_DB_MEM_V_ID_WIDTH> > m_axi_db_mem_V_RID;
    sc_in< sc_uint<C_M_AXI_DB_MEM_V_RUSER_WIDTH> > m_axi_db_mem_V_RUSER;
    sc_in< sc_lv<2> > m_axi_db_mem_V_RRESP;
    sc_in< sc_logic > m_axi_db_mem_V_BVALID;
    sc_out< sc_logic > m_axi_db_mem_V_BREADY;
    sc_in< sc_lv<2> > m_axi_db_mem_V_BRESP;
    sc_in< sc_uint<C_M_AXI_DB_MEM_V_ID_WIDTH> > m_axi_db_mem_V_BID;
    sc_in< sc_uint<C_M_AXI_DB_MEM_V_BUSER_WIDTH> > m_axi_db_mem_V_BUSER;
    sc_in< sc_lv<64> > offset;
    sc_out< sc_lv<8> > results_out_V_TDATA;
    sc_out< sc_logic > results_out_V_TVALID;
    sc_in< sc_logic > results_out_V_TREADY;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_logic > ap_var_for_const6;
    sc_signal< sc_lv<32> > ap_var_for_const8;
    sc_signal< sc_lv<1> > ap_var_for_const1;
    sc_signal< sc_lv<2> > ap_var_for_const4;
    sc_signal< sc_lv<32> > ap_var_for_const2;
    sc_signal< sc_lv<3> > ap_var_for_const3;
    sc_signal< sc_lv<4> > ap_var_for_const5;
    sc_signal< sc_lv<64> > ap_var_for_const7;
    sc_signal< sc_lv<512> > ap_var_for_const9;


    // Module declarations
    contact_discovery(sc_module_name name);
    SC_HAS_PROCESS(contact_discovery);

    ~contact_discovery();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    contact_discoverybkb* contacts_V_U;
    contact_discovery_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* contact_discovery_AXILiteS_s_axi_U;
    contact_discovery_db_mem_V_m_axi<512,64,5,16,16,4,16,C_M_AXI_DB_MEM_V_ID_WIDTH,C_M_AXI_DB_MEM_V_ADDR_WIDTH,C_M_AXI_DB_MEM_V_DATA_WIDTH,C_M_AXI_DB_MEM_V_AWUSER_WIDTH,C_M_AXI_DB_MEM_V_ARUSER_WIDTH,C_M_AXI_DB_MEM_V_WUSER_WIDTH,C_M_AXI_DB_MEM_V_RUSER_WIDTH,C_M_AXI_DB_MEM_V_BUSER_WIDTH,C_M_AXI_DB_MEM_V_TARGET_ADDR,C_M_AXI_DB_MEM_V_USER_VALUE,C_M_AXI_DB_MEM_V_PROT_VALUE,C_M_AXI_DB_MEM_V_CACHE_VALUE>* contact_discovery_db_mem_V_m_axi_U;
    match_db_contact* grp_match_db_contact_fu_186;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<23> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > operation;
    sc_signal< sc_lv<32> > operation_preg;
    sc_signal< sc_logic > operation_ap_vld;
    sc_signal< sc_lv<32> > operation_in_sig;
    sc_signal< sc_logic > operation_ap_vld_preg;
    sc_signal< sc_logic > operation_ap_vld_in_sig;
    sc_signal< sc_lv<512> > contact_in_V;
    sc_signal< sc_lv<32> > db_size_in;
    sc_signal< sc_lv<32> > error_out_1_data_reg;
    sc_signal< sc_lv<32> > error_out_1_data_in;
    sc_signal< sc_logic > error_out_1_vld_reg;
    sc_signal< sc_logic > error_out_1_vld_in;
    sc_signal< sc_logic > error_out_1_ack_in;
    sc_signal< sc_lv<32> > contacts_size_out_1_data_reg;
    sc_signal< sc_lv<32> > contacts_size_out_1_data_in;
    sc_signal< sc_logic > contacts_size_out_1_vld_reg;
    sc_signal< sc_logic > contacts_size_out_1_vld_in;
    sc_signal< sc_logic > contacts_size_out_1_ack_in;
    sc_signal< sc_lv<8> > results_out_V_1_data_in;
    sc_signal< sc_lv<8> > results_out_V_1_data_out;
    sc_signal< sc_logic > results_out_V_1_vld_in;
    sc_signal< sc_logic > results_out_V_1_vld_out;
    sc_signal< sc_logic > results_out_V_1_ack_in;
    sc_signal< sc_logic > results_out_V_1_ack_out;
    sc_signal< sc_lv<8> > results_out_V_1_payload_A;
    sc_signal< sc_lv<8> > results_out_V_1_payload_B;
    sc_signal< sc_logic > results_out_V_1_sel_rd;
    sc_signal< sc_logic > results_out_V_1_sel_wr;
    sc_signal< sc_logic > results_out_V_1_sel;
    sc_signal< sc_logic > results_out_V_1_load_A;
    sc_signal< sc_logic > results_out_V_1_load_B;
    sc_signal< sc_lv<2> > results_out_V_1_state;
    sc_signal< sc_logic > results_out_V_1_state_cmp_full;
    sc_signal< sc_lv<32> > contacts_size;
    sc_signal< sc_lv<7> > contacts_V_address0;
    sc_signal< sc_logic > contacts_V_ce0;
    sc_signal< sc_logic > contacts_V_we0;
    sc_signal< sc_lv<512> > contacts_V_q0;
    sc_signal< sc_logic > operation_blk_n;
    sc_signal< sc_logic > db_mem_V_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > db_mem_V_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > results_out_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > db_mem_V_AWREADY;
    sc_signal< sc_logic > db_mem_V_WREADY;
    sc_signal< sc_logic > db_mem_V_ARVALID;
    sc_signal< sc_logic > db_mem_V_ARREADY;
    sc_signal< sc_lv<64> > db_mem_V_ARADDR;
    sc_signal< sc_logic > db_mem_V_RVALID;
    sc_signal< sc_logic > db_mem_V_RREADY;
    sc_signal< sc_lv<512> > db_mem_V_RDATA;
    sc_signal< sc_logic > db_mem_V_RLAST;
    sc_signal< sc_lv<1> > db_mem_V_RID;
    sc_signal< sc_lv<1> > db_mem_V_RUSER;
    sc_signal< sc_lv<2> > db_mem_V_RRESP;
    sc_signal< sc_logic > db_mem_V_BVALID;
    sc_signal< sc_lv<2> > db_mem_V_BRESP;
    sc_signal< sc_lv<1> > db_mem_V_BID;
    sc_signal< sc_lv<1> > db_mem_V_BUSER;
    sc_signal< sc_lv<512> > reg_193;
    sc_signal< sc_logic > grp_match_db_contact_fu_186_ap_done;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<512> > contact_in_V_read_reg_358;
    sc_signal< sc_lv<32> > operation_read_read_fu_108_p2;
    sc_signal< sc_lv<32> > contacts_size_load_reg_367;
    sc_signal< sc_lv<25> > tmp_1_fu_209_p1;
    sc_signal< sc_lv<25> > tmp_1_reg_376;
    sc_signal< sc_lv<32> > tmp_5_fu_232_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_fu_222_p2;
    sc_signal< sc_lv<25> > tmp_7_fu_248_p1;
    sc_signal< sc_lv<25> > tmp_7_reg_395;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > tmp_6_fu_243_p2;
    sc_signal< sc_lv<25> > sum_fu_252_p2;
    sc_signal< sc_lv<25> > sum_reg_402;
    sc_signal< sc_lv<32> > database_index_1_fu_257_p2;
    sc_signal< sc_lv<32> > database_index_1_reg_407;
    sc_signal< sc_logic > ap_sig_ioackin_db_mem_V_ARREADY;
    sc_signal< sc_lv<25> > sum2_fu_278_p2;
    sc_signal< sc_lv<25> > sum2_reg_418;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<25> > sum4_fu_298_p2;
    sc_signal< sc_lv<25> > sum4_reg_429;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<25> > sum6_fu_308_p2;
    sc_signal< sc_lv<25> > sum6_reg_434;
    sc_signal< sc_lv<8> > tmp_2_fu_333_p1;
    sc_signal< sc_lv<8> > tmp_8_fu_338_p1;
    sc_signal< sc_lv<8> > tmp_10_fu_343_p1;
    sc_signal< sc_lv<8> > tmp_12_fu_348_p1;
    sc_signal< sc_logic > grp_match_db_contact_fu_186_ap_start;
    sc_signal< sc_logic > grp_match_db_contact_fu_186_ap_idle;
    sc_signal< sc_logic > grp_match_db_contact_fu_186_ap_ready;
    sc_signal< sc_lv<7> > grp_match_db_contact_fu_186_contacts_V_address0;
    sc_signal< sc_logic > grp_match_db_contact_fu_186_contacts_V_ce0;
    sc_signal< sc_lv<1> > grp_match_db_contact_fu_186_ap_return;
    sc_signal< sc_lv<32> > database_index_reg_163;
    sc_signal< sc_lv<32> > storemerge_reg_174;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_reg_grp_match_db_contact_fu_186_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > tmp_4_fu_228_p1;
    sc_signal< sc_lv<64> > sum_cast_fu_263_p1;
    sc_signal< sc_lv<64> > sum2_cast_fu_283_p1;
    sc_signal< sc_lv<64> > sum4_cast_fu_313_p1;
    sc_signal< sc_lv<64> > sum6_cast_fu_323_p1;
    sc_signal< sc_logic > ap_reg_ioackin_db_mem_V_ARREADY;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<25> > tmp_fu_213_p4;
    sc_signal< sc_lv<25> > tmp3_fu_273_p2;
    sc_signal< sc_lv<25> > tmp9_fu_293_p2;
    sc_signal< sc_lv<25> > tmp11_fu_303_p2;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< bool > ap_block_state23;
    sc_signal< sc_lv<23> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<23> ap_ST_fsm_state1;
    static const sc_lv<23> ap_ST_fsm_state2;
    static const sc_lv<23> ap_ST_fsm_state3;
    static const sc_lv<23> ap_ST_fsm_state4;
    static const sc_lv<23> ap_ST_fsm_state5;
    static const sc_lv<23> ap_ST_fsm_state6;
    static const sc_lv<23> ap_ST_fsm_state7;
    static const sc_lv<23> ap_ST_fsm_state8;
    static const sc_lv<23> ap_ST_fsm_state9;
    static const sc_lv<23> ap_ST_fsm_state10;
    static const sc_lv<23> ap_ST_fsm_state11;
    static const sc_lv<23> ap_ST_fsm_state12;
    static const sc_lv<23> ap_ST_fsm_state13;
    static const sc_lv<23> ap_ST_fsm_state14;
    static const sc_lv<23> ap_ST_fsm_state15;
    static const sc_lv<23> ap_ST_fsm_state16;
    static const sc_lv<23> ap_ST_fsm_state17;
    static const sc_lv<23> ap_ST_fsm_state18;
    static const sc_lv<23> ap_ST_fsm_state19;
    static const sc_lv<23> ap_ST_fsm_state20;
    static const sc_lv<23> ap_ST_fsm_state21;
    static const sc_lv<23> ap_ST_fsm_state22;
    static const sc_lv<23> ap_ST_fsm_state23;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_M_AXI_DB_MEM_V_TARGET_ADDR;
    static const int C_M_AXI_DB_MEM_V_USER_VALUE;
    static const int C_M_AXI_DB_MEM_V_PROT_VALUE;
    static const int C_M_AXI_DB_MEM_V_CACHE_VALUE;
    static const int C_M_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<25> ap_const_lv25_0;
    static const sc_lv<25> ap_const_lv25_1;
    static const sc_lv<25> ap_const_lv25_2;
    static const sc_lv<25> ap_const_lv25_3;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<512> ap_const_lv512_lc_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const8();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const7();
    void thread_ap_var_for_const9();
    void thread_ap_clk_no_reset_();
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
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_state1();
    void thread_ap_block_state23();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_ioackin_db_mem_V_ARREADY();
    void thread_contacts_V_address0();
    void thread_contacts_V_ce0();
    void thread_contacts_V_we0();
    void thread_contacts_size_out_1_ack_in();
    void thread_contacts_size_out_1_data_in();
    void thread_contacts_size_out_1_vld_in();
    void thread_database_index_1_fu_257_p2();
    void thread_db_mem_V_ARADDR();
    void thread_db_mem_V_ARVALID();
    void thread_db_mem_V_RREADY();
    void thread_db_mem_V_blk_n_AR();
    void thread_db_mem_V_blk_n_R();
    void thread_error_out_1_ack_in();
    void thread_error_out_1_data_in();
    void thread_error_out_1_vld_in();
    void thread_grp_match_db_contact_fu_186_ap_start();
    void thread_icmp_fu_222_p2();
    void thread_operation_ap_vld_in_sig();
    void thread_operation_blk_n();
    void thread_operation_in_sig();
    void thread_operation_read_read_fu_108_p2();
    void thread_results_out_V_1_ack_in();
    void thread_results_out_V_1_ack_out();
    void thread_results_out_V_1_data_in();
    void thread_results_out_V_1_data_out();
    void thread_results_out_V_1_load_A();
    void thread_results_out_V_1_load_B();
    void thread_results_out_V_1_sel();
    void thread_results_out_V_1_state_cmp_full();
    void thread_results_out_V_1_vld_in();
    void thread_results_out_V_1_vld_out();
    void thread_results_out_V_TDATA();
    void thread_results_out_V_TDATA_blk_n();
    void thread_results_out_V_TVALID();
    void thread_sum2_cast_fu_283_p1();
    void thread_sum2_fu_278_p2();
    void thread_sum4_cast_fu_313_p1();
    void thread_sum4_fu_298_p2();
    void thread_sum6_cast_fu_323_p1();
    void thread_sum6_fu_308_p2();
    void thread_sum_cast_fu_263_p1();
    void thread_sum_fu_252_p2();
    void thread_tmp11_fu_303_p2();
    void thread_tmp3_fu_273_p2();
    void thread_tmp9_fu_293_p2();
    void thread_tmp_10_fu_343_p1();
    void thread_tmp_12_fu_348_p1();
    void thread_tmp_1_fu_209_p1();
    void thread_tmp_2_fu_333_p1();
    void thread_tmp_4_fu_228_p1();
    void thread_tmp_5_fu_232_p2();
    void thread_tmp_6_fu_243_p2();
    void thread_tmp_7_fu_248_p1();
    void thread_tmp_8_fu_338_p1();
    void thread_tmp_fu_213_p4();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
