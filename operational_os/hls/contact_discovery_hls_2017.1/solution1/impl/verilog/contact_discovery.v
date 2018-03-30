// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="contact_discovery,hls_ip_2017_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu9eg-ffvb1156-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.932500,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=455,HLS_SYN_LUT=838}" *)

module contact_discovery (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        contacts_in_V_TDATA,
        contacts_in_V_TVALID,
        contacts_in_V_TREADY,
        database_in_V_TDATA,
        database_in_V_TVALID,
        database_in_V_TREADY,
        matched_out_V_TDATA,
        matched_out_V_TVALID,
        matched_out_V_TREADY,
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] contacts_in_V_TDATA;
input   contacts_in_V_TVALID;
output   contacts_in_V_TREADY;
input  [7:0] database_in_V_TDATA;
input   database_in_V_TVALID;
output   database_in_V_TREADY;
output  [7:0] matched_out_V_TDATA;
output   matched_out_V_TVALID;
input   matched_out_V_TREADY;
input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg contacts_in_V_TREADY;
reg database_in_V_TREADY;

reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] operation;
reg   [31:0] operation_preg;
wire    operation_ap_vld;
reg    operation_ap_vld_preg;
wire    operation_ap_vld_in_sig;
reg   [7:0] matched_out_V_1_data_out;
reg    matched_out_V_1_vld_in;
wire    matched_out_V_1_vld_out;
wire    matched_out_V_1_ack_in;
wire    matched_out_V_1_ack_out;
reg   [7:0] matched_out_V_1_payload_A;
reg   [7:0] matched_out_V_1_payload_B;
reg    matched_out_V_1_sel_rd;
reg    matched_out_V_1_sel_wr;
wire    matched_out_V_1_sel;
wire    matched_out_V_1_load_A;
wire    matched_out_V_1_load_B;
reg   [1:0] matched_out_V_1_state;
wire    matched_out_V_1_state_cmp_full;
reg   [31:0] matched_finished_1_data_reg;
reg   [31:0] matched_finished_1_data_in;
reg    matched_finished_1_vld_reg;
reg    matched_finished_1_vld_in;
reg    matched_finished_1_ack_in;
reg   [31:0] error_out_1_data_reg;
reg   [31:0] error_out_1_data_in;
reg    error_out_1_vld_reg;
reg    error_out_1_vld_in;
reg    error_out_1_ack_in;
reg   [31:0] contacts_size_out_1_data_reg;
reg   [31:0] contacts_size_out_1_data_in;
reg    contacts_size_out_1_vld_reg;
reg    contacts_size_out_1_vld_in;
reg    contacts_size_out_1_ack_in;
reg   [31:0] contacts_size;
reg   [12:0] contacts_address0;
reg    contacts_ce0;
reg    contacts_we0;
reg   [7:0] contacts_d0;
wire   [7:0] contacts_q0;
reg   [5:0] current_database_ite_address0;
reg    current_database_ite_ce0;
reg    current_database_ite_we0;
wire   [7:0] current_database_ite_q0;
reg    operation_blk_n;
wire    ap_CS_fsm_state2;
reg    contacts_in_V_TDATA_blk_n;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state13;
wire   [0:0] exitcond9_fu_444_p2;
reg    database_in_V_TDATA_blk_n;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond8_fu_329_p2;
reg    matched_out_V_TDATA_blk_n;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond7_fu_346_p2;
wire    ap_CS_fsm_state10;
wire   [31:0] grp_read_fu_98_p2;
wire   [7:0] i_fu_318_p2;
wire    ap_CS_fsm_state4;
wire   [6:0] i_2_fu_335_p2;
reg    ap_block_state6;
wire   [7:0] i_5_fu_352_p2;
reg   [7:0] i_5_reg_512;
reg    ap_block_state7_io;
wire   [12:0] tmp_i_fu_362_p3;
reg   [12:0] tmp_i_reg_517;
wire   [7:0] cast_fu_370_p1;
wire   [6:0] i_6_fu_385_p2;
reg   [6:0] i_6_reg_530;
wire    ap_CS_fsm_state8;
wire   [0:0] exitcond_i_fu_379_p2;
wire   [0:0] found_fu_406_p2;
wire   [0:0] found_1_fu_418_p2;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_fu_434_p2;
wire    ap_CS_fsm_state12;
wire   [0:0] tmp_nbreadreq_fu_151_p3;
wire   [6:0] i_4_fu_450_p2;
reg    ap_block_state13;
wire   [31:0] tmp_9_fu_473_p2;
reg   [7:0] i_3_reg_217;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond_fu_312_p2;
reg   [6:0] i_1_reg_228;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_1_nbreadreq_fu_129_p3;
reg   [0:0] tmp_10_reg_239;
reg   [7:0] contact_index_assign_reg_251;
reg   [6:0] i_i_reg_262;
reg   [0:0] comp_reg_273;
reg   [6:0] i1_reg_285;
wire   [63:0] tmp_3_fu_324_p1;
wire   [63:0] tmp_7_fu_341_p1;
wire   [63:0] tmp_i_7_fu_391_p1;
wire   [63:0] tmp_13_i_fu_401_p1;
wire  signed [63:0] tmp_s_fu_468_p1;
wire   [6:0] tmp_11_fu_358_p1;
wire   [12:0] i_i_cast7_fu_375_p1;
wire   [12:0] tmp_12_i_fu_396_p2;
wire   [0:0] tmp_14_i_fu_412_p2;
wire   [24:0] tmp_2_fu_424_p4;
wire   [31:0] tmp_6_fu_456_p2;
wire   [31:0] i1_cast_fu_440_p1;
wire   [31:0] tmp_8_fu_462_p2;
wire    ap_CS_fsm_state11;
reg    ap_block_state11;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
#0 operation_preg = 32'd0;
#0 operation_ap_vld_preg = 1'b0;
#0 matched_out_V_1_sel_rd = 1'b0;
#0 matched_out_V_1_sel_wr = 1'b0;
#0 matched_out_V_1_state = 2'd0;
#0 matched_finished_1_data_reg = 32'd0;
#0 matched_finished_1_vld_reg = 1'b0;
#0 error_out_1_data_reg = 32'd0;
#0 error_out_1_vld_reg = 1'b0;
#0 contacts_size_out_1_data_reg = 32'd0;
#0 contacts_size_out_1_vld_reg = 1'b0;
#0 contacts_size = 32'd0;
end

contact_discoverybkb #(
    .DataWidth( 8 ),
    .AddressRange( 8192 ),
    .AddressWidth( 13 ))
contacts_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(contacts_address0),
    .ce0(contacts_ce0),
    .we0(contacts_we0),
    .d0(contacts_d0),
    .q0(contacts_q0)
);

contact_discoverycud #(
    .DataWidth( 8 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
current_database_ite_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(current_database_ite_address0),
    .ce0(current_database_ite_ce0),
    .we0(current_database_ite_we0),
    .d0(database_in_V_TDATA),
    .q0(current_database_ite_q0)
);

contact_discovery_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
contact_discovery_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .operation(operation),
    .operation_ap_vld(operation_ap_vld),
    .matched_finished(matched_finished_1_data_reg),
    .error_out(error_out_1_data_reg),
    .contacts_size_out(contacts_size_out_1_data_reg)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        matched_out_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == matched_out_V_1_ack_out) & (1'b1 == matched_out_V_1_vld_out))) begin
            matched_out_V_1_sel_rd <= ~matched_out_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        matched_out_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == matched_out_V_1_vld_in) & (1'b1 == matched_out_V_1_ack_in))) begin
            matched_out_V_1_sel_wr <= ~matched_out_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        matched_out_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == matched_out_V_1_vld_in) & (1'b1 == matched_out_V_1_ack_out) & (matched_out_V_1_state == 2'd3)) | ((1'b0 == matched_out_V_1_vld_in) & (matched_out_V_1_state == 2'd2)))) begin
            matched_out_V_1_state <= 2'd2;
        end else if ((((1'b1 == matched_out_V_1_vld_in) & (1'b0 == matched_out_V_1_ack_out) & (matched_out_V_1_state == 2'd3)) | ((1'b0 == matched_out_V_1_ack_out) & (matched_out_V_1_state == 2'd1)))) begin
            matched_out_V_1_state <= 2'd1;
        end else if ((((1'b1 == matched_out_V_1_vld_in) & (matched_out_V_1_state == 2'd2)) | ((1'b1 == matched_out_V_1_ack_out) & (matched_out_V_1_state == 2'd1)) | ((matched_out_V_1_state == 2'd3) & ~((1'b1 == matched_out_V_1_vld_in) & (1'b0 == matched_out_V_1_ack_out)) & ~((1'b0 == matched_out_V_1_vld_in) & (1'b1 == matched_out_V_1_ack_out))))) begin
            matched_out_V_1_state <= 2'd3;
        end else begin
            matched_out_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        operation_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == operation_ap_vld) & ~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)))) begin
            operation_ap_vld_preg <= operation_ap_vld;
        end else if (((1'b1 == ap_CS_fsm_state11) & ~((1'b0 == matched_out_V_1_ack_in) | (1'b0 == matched_finished_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in)))) begin
            operation_ap_vld_preg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        operation_preg <= 32'd0;
    end else begin
        if (((1'b1 == operation_ap_vld) & ~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)))) begin
            operation_preg <= operation;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        comp_reg_273 <= found_1_fu_418_p2;
    end else if (((1'b1 == ap_CS_fsm_state7) & (ap_block_state7_io == 1'b0) & (1'd0 == exitcond7_fu_346_p2))) begin
        comp_reg_273 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & ~((1'd0 == exitcond8_fu_329_p2) & (1'b0 == database_in_V_TVALID)) & (1'd1 == exitcond8_fu_329_p2))) begin
        contact_index_assign_reg_251 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (1'd1 == exitcond_i_fu_379_p2))) begin
        contact_index_assign_reg_251 <= i_5_reg_512;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID)) & (1'd1 == exitcond9_fu_444_p2))) begin
        contacts_size <= tmp_9_fu_473_p2;
    end else if (((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (grp_read_fu_98_p2 == 32'd2))) begin
        contacts_size <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (1'd1 == tmp_nbreadreq_fu_151_p3) & (1'd0 == icmp_fu_434_p2))) begin
        i1_reg_285 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) & (1'd0 == exitcond9_fu_444_p2) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID)))) begin
        i1_reg_285 <= i_4_fu_450_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == tmp_1_nbreadreq_fu_129_p3))) begin
        i_1_reg_228 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'd0 == exitcond8_fu_329_p2) & ~((1'd0 == exitcond8_fu_329_p2) & (1'b0 == database_in_V_TVALID)))) begin
        i_1_reg_228 <= i_2_fu_335_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_312_p2))) begin
        i_3_reg_217 <= i_fu_318_p2;
    end else if (((grp_read_fu_98_p2 == 32'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        i_3_reg_217 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_i_reg_262 <= i_6_reg_530;
    end else if (((1'b1 == ap_CS_fsm_state7) & (ap_block_state7_io == 1'b0) & (1'd0 == exitcond7_fu_346_p2))) begin
        i_i_reg_262 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & ~((1'd0 == exitcond8_fu_329_p2) & (1'b0 == database_in_V_TVALID)) & (1'd1 == exitcond8_fu_329_p2))) begin
        tmp_10_reg_239 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (1'd1 == exitcond_i_fu_379_p2))) begin
        tmp_10_reg_239 <= found_fu_406_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == contacts_size_out_1_vld_in) & (1'b0 == contacts_size_out_1_vld_reg)) | (~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == contacts_size_out_1_vld_in) & (1'b1 == contacts_size_out_1_vld_reg) & (1'b1 == 1'b1)))) begin
        contacts_size_out_1_data_reg <= contacts_size_out_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if (((~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == error_out_1_vld_in) & (1'b0 == error_out_1_vld_reg)) | (~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == error_out_1_vld_in) & (1'b1 == error_out_1_vld_reg) & (1'b1 == 1'b1)))) begin
        error_out_1_data_reg <= error_out_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (ap_block_state7_io == 1'b0))) begin
        i_5_reg_512 <= i_5_fu_352_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_6_reg_530 <= i_6_fu_385_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == matched_finished_1_vld_in) & (1'b0 == matched_finished_1_vld_reg)) | (~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == matched_finished_1_vld_in) & (1'b1 == matched_finished_1_vld_reg) & (1'b1 == 1'b1)))) begin
        matched_finished_1_data_reg <= matched_finished_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == matched_out_V_1_load_A)) begin
        matched_out_V_1_payload_A <= cast_fu_370_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == matched_out_V_1_load_B)) begin
        matched_out_V_1_payload_B <= cast_fu_370_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (ap_block_state7_io == 1'b0) & (1'd0 == exitcond7_fu_346_p2))) begin
        tmp_i_reg_517[12 : 6] <= tmp_i_fu_362_p3[12 : 6];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & ~((1'b0 == matched_out_V_1_ack_in) | (1'b0 == matched_finished_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & ~((1'b0 == matched_out_V_1_ack_in) | (1'b0 == matched_finished_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        contacts_address0 = tmp_s_fu_468_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        contacts_address0 = tmp_13_i_fu_401_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        contacts_address0 = tmp_3_fu_324_p1;
    end else begin
        contacts_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_state13) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID))))) begin
        contacts_ce0 = 1'b1;
    end else begin
        contacts_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        contacts_d0 = contacts_in_V_TDATA;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        contacts_d0 = 8'd0;
    end else begin
        contacts_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | ((1'b1 == ap_CS_fsm_state13) & (1'd0 == exitcond9_fu_444_p2)))) begin
        contacts_in_V_TDATA_blk_n = contacts_in_V_TVALID;
    end else begin
        contacts_in_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state13) & (1'd0 == exitcond9_fu_444_p2) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID))) | ((1'b1 == ap_CS_fsm_state15) & (contacts_in_V_TVALID == 1'b1)))) begin
        contacts_in_V_TREADY = 1'b1;
    end else begin
        contacts_in_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == contacts_size_out_1_vld_reg) | ((1'b1 == contacts_size_out_1_vld_reg) & (1'b1 == 1'b1)))) begin
        contacts_size_out_1_ack_in = 1'b1;
    end else begin
        contacts_size_out_1_ack_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID)) & (1'd1 == exitcond9_fu_444_p2))) begin
        contacts_size_out_1_data_in = tmp_9_fu_473_p2;
    end else if ((((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd1 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd0 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & ~(32'd0 == grp_read_fu_98_p2) & ~(32'd1 == grp_read_fu_98_p2) & ~(grp_read_fu_98_p2 == 32'd2)))) begin
        contacts_size_out_1_data_in = contacts_size;
    end else if (((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (grp_read_fu_98_p2 == 32'd2))) begin
        contacts_size_out_1_data_in = 32'd0;
    end else begin
        contacts_size_out_1_data_in = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd1 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd0 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & ~(32'd0 == grp_read_fu_98_p2) & ~(32'd1 == grp_read_fu_98_p2) & ~(grp_read_fu_98_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state13) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID)) & (1'd1 == exitcond9_fu_444_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (grp_read_fu_98_p2 == 32'd2)))) begin
        contacts_size_out_1_vld_in = 1'b1;
    end else begin
        contacts_size_out_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_312_p2)) | ((1'b1 == ap_CS_fsm_state13) & (1'd0 == exitcond9_fu_444_p2) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID))))) begin
        contacts_we0 = 1'b1;
    end else begin
        contacts_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        current_database_ite_address0 = tmp_i_7_fu_391_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        current_database_ite_address0 = tmp_7_fu_341_p1;
    end else begin
        current_database_ite_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & ~((1'd0 == exitcond8_fu_329_p2) & (1'b0 == database_in_V_TVALID))) | (1'b1 == ap_CS_fsm_state8))) begin
        current_database_ite_ce0 = 1'b1;
    end else begin
        current_database_ite_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd0 == exitcond8_fu_329_p2) & ~((1'd0 == exitcond8_fu_329_p2) & (1'b0 == database_in_V_TVALID)))) begin
        current_database_ite_we0 = 1'b1;
    end else begin
        current_database_ite_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd0 == exitcond8_fu_329_p2))) begin
        database_in_V_TDATA_blk_n = database_in_V_TVALID;
    end else begin
        database_in_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd0 == exitcond8_fu_329_p2) & ~((1'd0 == exitcond8_fu_329_p2) & (1'b0 == database_in_V_TVALID)))) begin
        database_in_V_TREADY = 1'b1;
    end else begin
        database_in_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == error_out_1_vld_reg) | ((1'b1 == error_out_1_vld_reg) & (1'b1 == 1'b1)))) begin
        error_out_1_ack_in = 1'b1;
    end else begin
        error_out_1_ack_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (1'd1 == tmp_nbreadreq_fu_151_p3) & (1'd1 == icmp_fu_434_p2))) begin
        error_out_1_data_in = 32'd1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & ~(32'd0 == grp_read_fu_98_p2) & ~(32'd1 == grp_read_fu_98_p2) & ~(grp_read_fu_98_p2 == 32'd2))) begin
        error_out_1_data_in = 32'd3;
    end else if ((((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd1 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd0 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state13) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID)) & (1'd1 == exitcond9_fu_444_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (grp_read_fu_98_p2 == 32'd2)))) begin
        error_out_1_data_in = 32'd0;
    end else begin
        error_out_1_data_in = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd1 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd0 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & ~(32'd0 == grp_read_fu_98_p2) & ~(32'd1 == grp_read_fu_98_p2) & ~(grp_read_fu_98_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state13) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID)) & (1'd1 == exitcond9_fu_444_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (grp_read_fu_98_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state12) & (1'd1 == tmp_nbreadreq_fu_151_p3) & (1'd1 == icmp_fu_434_p2)))) begin
        error_out_1_vld_in = 1'b1;
    end else begin
        error_out_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == matched_finished_1_vld_reg) | ((1'b1 == matched_finished_1_vld_reg) & (1'b1 == 1'b1)))) begin
        matched_finished_1_ack_in = 1'b1;
    end else begin
        matched_finished_1_ack_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == tmp_1_nbreadreq_fu_129_p3))) begin
        matched_finished_1_data_in = 32'd1;
    end else if ((((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd0 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & ~(32'd0 == grp_read_fu_98_p2) & ~(32'd1 == grp_read_fu_98_p2) & ~(grp_read_fu_98_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (grp_read_fu_98_p2 == 32'd2)))) begin
        matched_finished_1_data_in = 32'd0;
    end else begin
        matched_finished_1_data_in = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (32'd0 == grp_read_fu_98_p2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & ~(32'd0 == grp_read_fu_98_p2) & ~(32'd1 == grp_read_fu_98_p2) & ~(grp_read_fu_98_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1) & (grp_read_fu_98_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state5) & (1'd0 == tmp_1_nbreadreq_fu_129_p3)))) begin
        matched_finished_1_vld_in = 1'b1;
    end else begin
        matched_finished_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == matched_out_V_1_sel)) begin
        matched_out_V_1_data_out = matched_out_V_1_payload_B;
    end else begin
        matched_out_V_1_data_out = matched_out_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond7_fu_346_p2) & (ap_block_state7_io == 1'b0))) begin
        matched_out_V_1_vld_in = 1'b1;
    end else begin
        matched_out_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond7_fu_346_p2)) | (1'b1 == ap_CS_fsm_state10))) begin
        matched_out_V_TDATA_blk_n = matched_out_V_1_state[1'd1];
    end else begin
        matched_out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        operation_blk_n = 1'b0;
    end else begin
        operation_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (operation_ap_vld_in_sig == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~(32'd0 == grp_read_fu_98_p2) & ~(32'd1 == grp_read_fu_98_p2) & ~(grp_read_fu_98_p2 == 32'd2) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else if (((32'd0 == grp_read_fu_98_p2) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else if (((32'd1 == grp_read_fu_98_p2) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == exitcond_fu_312_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == tmp_1_nbreadreq_fu_129_p3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & ~((1'd0 == exitcond8_fu_329_p2) & (1'b0 == database_in_V_TVALID)) & (1'd1 == exitcond8_fu_329_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else if (((1'b1 == ap_CS_fsm_state6) & (1'd0 == exitcond8_fu_329_p2) & ~((1'd0 == exitcond8_fu_329_p2) & (1'b0 == database_in_V_TVALID)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (ap_block_state7_io == 1'b0) & (1'd0 == exitcond7_fu_346_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond7_fu_346_p2) & (ap_block_state7_io == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (1'd1 == exitcond_i_fu_379_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (matched_out_V_1_ack_in == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & ~((1'b0 == matched_out_V_1_ack_in) | (1'b0 == matched_finished_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (1'd0 == tmp_nbreadreq_fu_151_p3))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else if (((1'b1 == ap_CS_fsm_state12) & (1'd1 == tmp_nbreadreq_fu_151_p3) & (1'd0 == icmp_fu_434_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (1'd0 == exitcond9_fu_444_p2) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID)))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else if (((1'b1 == ap_CS_fsm_state13) & ~((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID)) & (1'd1 == exitcond9_fu_444_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (contacts_in_V_TVALID == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state11 = ((1'b0 == matched_out_V_1_ack_in) | (1'b0 == matched_finished_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in));
end

always @ (*) begin
    ap_block_state13 = ((1'd0 == exitcond9_fu_444_p2) & (1'b0 == contacts_in_V_TVALID));
end

always @ (*) begin
    ap_block_state6 = ((1'd0 == exitcond8_fu_329_p2) & (1'b0 == database_in_V_TVALID));
end

always @ (*) begin
    ap_block_state7_io = ((1'd1 == exitcond7_fu_346_p2) & (1'b0 == matched_out_V_1_ack_in));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign cast_fu_370_p1 = tmp_10_reg_239;

assign exitcond7_fu_346_p2 = ((contact_index_assign_reg_251 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond8_fu_329_p2 = ((i_1_reg_228 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond9_fu_444_p2 = ((i1_reg_285 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_fu_312_p2 = ((i_3_reg_217 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond_i_fu_379_p2 = ((i_i_reg_262 == 7'd64) ? 1'b1 : 1'b0);

assign found_1_fu_418_p2 = (tmp_14_i_fu_412_p2 & comp_reg_273);

assign found_fu_406_p2 = (comp_reg_273 | tmp_10_reg_239);

assign grp_read_fu_98_p2 = operation_preg;

assign i1_cast_fu_440_p1 = i1_reg_285;

assign i_2_fu_335_p2 = (i_1_reg_228 + 7'd1);

assign i_4_fu_450_p2 = (i1_reg_285 + 7'd1);

assign i_5_fu_352_p2 = (contact_index_assign_reg_251 + 8'd1);

assign i_6_fu_385_p2 = (i_i_reg_262 + 7'd1);

assign i_fu_318_p2 = (i_3_reg_217 + 8'd1);

assign i_i_cast7_fu_375_p1 = i_i_reg_262;

assign icmp_fu_434_p2 = (($signed(tmp_2_fu_424_p4) > $signed(25'd0)) ? 1'b1 : 1'b0);

assign matched_out_V_1_ack_in = matched_out_V_1_state[1'd1];

assign matched_out_V_1_ack_out = matched_out_V_TREADY;

assign matched_out_V_1_load_A = (matched_out_V_1_state_cmp_full & ~matched_out_V_1_sel_wr);

assign matched_out_V_1_load_B = (matched_out_V_1_sel_wr & matched_out_V_1_state_cmp_full);

assign matched_out_V_1_sel = matched_out_V_1_sel_rd;

assign matched_out_V_1_state_cmp_full = ((matched_out_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign matched_out_V_1_vld_out = matched_out_V_1_state[1'd0];

assign matched_out_V_TDATA = matched_out_V_1_data_out;

assign matched_out_V_TVALID = matched_out_V_1_state[1'd0];

assign operation_ap_vld_in_sig = operation_ap_vld_preg;

assign tmp_11_fu_358_p1 = contact_index_assign_reg_251[6:0];

assign tmp_12_i_fu_396_p2 = (i_i_cast7_fu_375_p1 + tmp_i_reg_517);

assign tmp_13_i_fu_401_p1 = tmp_12_i_fu_396_p2;

assign tmp_14_i_fu_412_p2 = ((current_database_ite_q0 == contacts_q0) ? 1'b1 : 1'b0);

assign tmp_1_nbreadreq_fu_129_p3 = database_in_V_TVALID;

assign tmp_2_fu_424_p4 = {{contacts_size[31:7]}};

assign tmp_3_fu_324_p1 = i_3_reg_217;

assign tmp_6_fu_456_p2 = contacts_size << 32'd6;

assign tmp_7_fu_341_p1 = i_1_reg_228;

assign tmp_8_fu_462_p2 = (tmp_6_fu_456_p2 + i1_cast_fu_440_p1);

assign tmp_9_fu_473_p2 = (contacts_size + 32'd1);

assign tmp_i_7_fu_391_p1 = i_i_reg_262;

assign tmp_i_fu_362_p3 = {{tmp_11_fu_358_p1}, {6'd0}};

assign tmp_nbreadreq_fu_151_p3 = contacts_in_V_TVALID;

assign tmp_s_fu_468_p1 = $signed(tmp_8_fu_462_p2);

always @ (posedge ap_clk) begin
    tmp_i_reg_517[5:0] <= 6'b000000;
end

endmodule //contact_discovery
