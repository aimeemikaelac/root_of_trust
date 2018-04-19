// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="contact_discovery,hls_ip_2017_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu9eg-ffvb1156-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.321000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=6,HLS_SYN_DSP=0,HLS_SYN_FF=792,HLS_SYN_LUT=1182}" *)

module contact_discovery (
        ap_clk,
        ap_rst_n,
        db_in_V_TDATA,
        db_in_V_TVALID,
        db_in_V_TREADY,
        results_out_V_TDATA,
        results_out_V_TVALID,
        results_out_V_TREADY,
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
        s_axi_AXILiteS_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;
parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 8;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input  [7:0] db_in_V_TDATA;
input   db_in_V_TVALID;
output   db_in_V_TREADY;
output  [31:0] results_out_V_TDATA;
output   results_out_V_TVALID;
input   results_out_V_TREADY;
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
output   interrupt;

reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] operation;
reg   [31:0] operation_preg;
wire    operation_ap_vld;
reg   [31:0] operation_in_sig;
reg    operation_ap_vld_preg;
reg    operation_ap_vld_in_sig;
wire   [5:0] contact_in_address0;
reg    contact_in_ce0;
wire   [7:0] contact_in_q0;
reg   [7:0] db_in_V_0_data_out;
wire    db_in_V_0_vld_in;
wire    db_in_V_0_vld_out;
wire    db_in_V_0_ack_in;
reg    db_in_V_0_ack_out;
reg   [7:0] db_in_V_0_payload_A;
reg   [7:0] db_in_V_0_payload_B;
reg    db_in_V_0_sel_rd;
reg    db_in_V_0_sel_wr;
wire    db_in_V_0_sel;
wire    db_in_V_0_load_A;
wire    db_in_V_0_load_B;
reg   [1:0] db_in_V_0_state;
wire    db_in_V_0_state_cmp_full;
wire   [31:0] db_size_in;
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
reg   [31:0] results_out_V_1_data_out;
reg    results_out_V_1_vld_in;
wire    results_out_V_1_vld_out;
wire    results_out_V_1_ack_in;
wire    results_out_V_1_ack_out;
reg   [31:0] results_out_V_1_payload_A;
reg   [31:0] results_out_V_1_payload_B;
reg    results_out_V_1_sel_rd;
reg    results_out_V_1_sel_wr;
wire    results_out_V_1_sel;
wire    results_out_V_1_load_A;
wire    results_out_V_1_load_B;
reg   [1:0] results_out_V_1_state;
wire    results_out_V_1_state_cmp_full;
reg   [31:0] contacts_size;
reg   [12:0] contacts_address0;
reg    contacts_ce0;
reg    contacts_we0;
wire   [7:0] contacts_q0;
reg    operation_blk_n;
reg    db_in_V_TDATA_blk_n;
wire    ap_CS_fsm_state5;
reg    results_out_V_TDATA_blk_n;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    ap_block_state1;
wire   [31:0] operation_read_read_fu_124_p2;
reg   [31:0] contacts_size_load_reg_362;
wire   [14:0] tmp_1_cast_fu_276_p3;
reg   [14:0] tmp_1_cast_reg_374;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_fu_267_p2;
wire   [31:0] database_index_1_fu_289_p2;
reg   [31:0] database_index_1_reg_382;
wire    ap_CS_fsm_state3;
wire   [6:0] i_4_fu_301_p2;
reg   [6:0] i_4_reg_390;
wire    ap_CS_fsm_state4;
wire   [31:0] tmp_4_fu_307_p1;
wire    grp_match_db_contact_fu_239_ap_done;
wire   [6:0] i_6_fu_318_p2;
reg   [6:0] i_6_reg_403;
wire    ap_CS_fsm_state8;
wire   [0:0] exitcond_i_fu_312_p2;
wire   [14:0] sum_i_fu_333_p2;
reg   [14:0] sum_i_reg_413;
wire   [31:0] tmp_2_fu_338_p2;
wire    grp_match_db_contact_fu_239_ap_start;
wire    grp_match_db_contact_fu_239_ap_idle;
wire    grp_match_db_contact_fu_239_ap_ready;
wire    grp_match_db_contact_fu_239_db_stream_V_read;
wire   [12:0] grp_match_db_contact_fu_239_contacts_address0;
wire    grp_match_db_contact_fu_239_contacts_ce0;
wire   [0:0] grp_match_db_contact_fu_239_ap_return;
reg   [31:0] database_index_reg_194;
reg   [6:0] i_reg_205;
wire    db_stream_V_full_n;
reg    db_stream_V_write;
reg    ap_block_state5;
wire   [0:0] exitcond4_fu_284_p2;
reg   [6:0] i_i_reg_216;
wire    ap_CS_fsm_state9;
reg   [31:0] storemerge_reg_227;
wire    ap_CS_fsm_state10;
reg    ap_reg_grp_match_db_contact_fu_239_ap_start;
wire   [0:0] exitcond_fu_295_p2;
wire   [7:0] db_stream_V_dout;
wire    db_stream_V_empty_n;
reg    db_stream_V_read;
wire   [63:0] tmp_i_fu_324_p1;
wire  signed [63:0] sum_i_cast_fu_349_p1;
wire    ap_CS_fsm_state11;
wire   [24:0] tmp_fu_258_p4;
wire   [8:0] tmp_13_fu_273_p1;
wire   [14:0] tmp_i_cast_fu_329_p1;
wire    ap_CS_fsm_state12;
reg    ap_block_state12;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 operation_preg = 32'd0;
#0 operation_ap_vld_preg = 1'b0;
#0 db_in_V_0_sel_rd = 1'b0;
#0 db_in_V_0_sel_wr = 1'b0;
#0 db_in_V_0_state = 2'd0;
#0 error_out_1_data_reg = 32'd0;
#0 error_out_1_vld_reg = 1'b0;
#0 contacts_size_out_1_data_reg = 32'd0;
#0 contacts_size_out_1_vld_reg = 1'b0;
#0 results_out_V_1_sel_rd = 1'b0;
#0 results_out_V_1_sel_wr = 1'b0;
#0 results_out_V_1_state = 2'd0;
#0 contacts_size = 32'd0;
#0 ap_reg_grp_match_db_contact_fu_239_ap_start = 1'b0;
end

contact_discoveryeOg #(
    .DataWidth( 8 ),
    .AddressRange( 8192 ),
    .AddressWidth( 13 ))
contacts_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(contacts_address0),
    .ce0(contacts_ce0),
    .we0(contacts_we0),
    .d0(contact_in_q0),
    .q0(contacts_q0)
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
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .operation(operation),
    .operation_ap_vld(operation_ap_vld),
    .contact_in_address0(contact_in_address0),
    .contact_in_ce0(contact_in_ce0),
    .contact_in_q0(contact_in_q0),
    .db_size_in(db_size_in),
    .error_out(error_out_1_data_reg),
    .contacts_size_out(contacts_size_out_1_data_reg)
);

match_db_contact grp_match_db_contact_fu_239(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_match_db_contact_fu_239_ap_start),
    .ap_done(grp_match_db_contact_fu_239_ap_done),
    .ap_idle(grp_match_db_contact_fu_239_ap_idle),
    .ap_ready(grp_match_db_contact_fu_239_ap_ready),
    .db_stream_V_dout(db_stream_V_dout),
    .db_stream_V_empty_n(db_stream_V_empty_n),
    .db_stream_V_read(grp_match_db_contact_fu_239_db_stream_V_read),
    .contacts_address0(grp_match_db_contact_fu_239_contacts_address0),
    .contacts_ce0(grp_match_db_contact_fu_239_contacts_ce0),
    .contacts_q0(contacts_q0),
    .ap_return(grp_match_db_contact_fu_239_ap_return)
);

fifo_w8_d128_A_x db_stream_V_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(db_in_V_0_data_out),
    .if_full_n(db_stream_V_full_n),
    .if_write(db_stream_V_write),
    .if_dout(db_stream_V_dout),
    .if_empty_n(db_stream_V_empty_n),
    .if_read(db_stream_V_read)
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
        ap_reg_grp_match_db_contact_fu_239_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == exitcond_fu_295_p2))) begin
            ap_reg_grp_match_db_contact_fu_239_ap_start <= 1'b1;
        end else if ((1'b1 == grp_match_db_contact_fu_239_ap_ready)) begin
            ap_reg_grp_match_db_contact_fu_239_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        db_in_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == db_in_V_0_ack_out) & (1'b1 == db_in_V_0_vld_out))) begin
            db_in_V_0_sel_rd <= ~db_in_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        db_in_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == db_in_V_0_vld_in) & (1'b1 == db_in_V_0_ack_in))) begin
            db_in_V_0_sel_wr <= ~db_in_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        db_in_V_0_state <= 2'd0;
    end else begin
        if ((((1'b0 == db_in_V_0_vld_in) & (1'b1 == db_in_V_0_ack_out) & (db_in_V_0_state == 2'd3)) | ((1'b0 == db_in_V_0_vld_in) & (db_in_V_0_state == 2'd2)))) begin
            db_in_V_0_state <= 2'd2;
        end else if ((((1'b1 == db_in_V_0_vld_in) & (1'b0 == db_in_V_0_ack_out) & (db_in_V_0_state == 2'd3)) | ((1'b0 == db_in_V_0_ack_out) & (db_in_V_0_state == 2'd1)))) begin
            db_in_V_0_state <= 2'd1;
        end else if ((((1'b1 == db_in_V_0_vld_in) & (db_in_V_0_state == 2'd2)) | ((1'b1 == db_in_V_0_ack_out) & (db_in_V_0_state == 2'd1)) | ((db_in_V_0_state == 2'd3) & ~((1'b1 == db_in_V_0_vld_in) & (1'b0 == db_in_V_0_ack_out)) & ~((1'b0 == db_in_V_0_vld_in) & (1'b1 == db_in_V_0_ack_out))))) begin
            db_in_V_0_state <= 2'd3;
        end else begin
            db_in_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        operation_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state12) & ~((1'b0 == results_out_V_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in)))) begin
            operation_ap_vld_preg <= 1'b0;
        end else if (((1'b1 == operation_ap_vld) & ~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)))) begin
            operation_ap_vld_preg <= operation_ap_vld;
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
    if (ap_rst_n_inv == 1'b1) begin
        results_out_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == results_out_V_1_ack_out) & (1'b1 == results_out_V_1_vld_out))) begin
            results_out_V_1_sel_rd <= ~results_out_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        results_out_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == results_out_V_1_vld_in) & (1'b1 == results_out_V_1_ack_in))) begin
            results_out_V_1_sel_wr <= ~results_out_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        results_out_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == results_out_V_1_vld_in) & (1'b1 == results_out_V_1_ack_out) & (2'd3 == results_out_V_1_state)) | ((1'b0 == results_out_V_1_vld_in) & (2'd2 == results_out_V_1_state)))) begin
            results_out_V_1_state <= 2'd2;
        end else if ((((1'b1 == results_out_V_1_vld_in) & (1'b0 == results_out_V_1_ack_out) & (2'd3 == results_out_V_1_state)) | ((1'b0 == results_out_V_1_ack_out) & (2'd1 == results_out_V_1_state)))) begin
            results_out_V_1_state <= 2'd1;
        end else if ((((1'b1 == results_out_V_1_vld_in) & (2'd2 == results_out_V_1_state)) | ((1'b1 == results_out_V_1_ack_out) & (2'd1 == results_out_V_1_state)) | ((2'd3 == results_out_V_1_state) & ~((1'b1 == results_out_V_1_vld_in) & (1'b0 == results_out_V_1_ack_out)) & ~((1'b0 == results_out_V_1_vld_in) & (1'b1 == results_out_V_1_ack_out))))) begin
            results_out_V_1_state <= 2'd3;
        end else begin
            results_out_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (1'd1 == exitcond_i_fu_312_p2))) begin
        contacts_size <= tmp_2_fu_338_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (operation_read_read_fu_124_p2 == 32'd2))) begin
        contacts_size <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (results_out_V_1_ack_in == 1'b1))) begin
        database_index_reg_194 <= database_index_1_reg_382;
    end else if (((1'b1 == ap_CS_fsm_state2) & (operation_read_read_fu_124_p2 == 32'd1))) begin
        database_index_reg_194 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_i_reg_216 <= i_6_reg_403;
    end else if (((1'b1 == ap_CS_fsm_state2) & (32'd0 == operation_read_read_fu_124_p2) & (1'd0 == icmp_fu_267_p2))) begin
        i_i_reg_216 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond4_fu_284_p2))) begin
        i_reg_205 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~((1'b0 == db_in_V_0_vld_out) | (1'b0 == db_stream_V_full_n)))) begin
        i_reg_205 <= i_4_reg_390;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        storemerge_reg_227 <= contacts_size_load_reg_362;
    end else if (((1'b1 == ap_CS_fsm_state8) & (1'd1 == exitcond_i_fu_312_p2))) begin
        storemerge_reg_227 <= tmp_2_fu_338_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)))) begin
        contacts_size_load_reg_362 <= contacts_size;
    end
end

always @ (posedge ap_clk) begin
    if (((~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == contacts_size_out_1_vld_in) & (1'b0 == contacts_size_out_1_vld_reg)) | (~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == contacts_size_out_1_vld_in) & (1'b1 == contacts_size_out_1_vld_reg) & (1'b1 == 1'b1)))) begin
        contacts_size_out_1_data_reg <= contacts_size_out_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        database_index_1_reg_382 <= database_index_1_fu_289_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == db_in_V_0_load_A)) begin
        db_in_V_0_payload_A <= db_in_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == db_in_V_0_load_B)) begin
        db_in_V_0_payload_B <= db_in_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == error_out_1_vld_in) & (1'b0 == error_out_1_vld_reg)) | (~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) & (1'b1 == error_out_1_vld_in) & (1'b1 == error_out_1_vld_reg) & (1'b1 == 1'b1)))) begin
        error_out_1_data_reg <= error_out_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_4_reg_390 <= i_4_fu_301_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_6_reg_403 <= i_6_fu_318_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == results_out_V_1_load_A)) begin
        results_out_V_1_payload_A <= tmp_4_fu_307_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == results_out_V_1_load_B)) begin
        results_out_V_1_payload_B <= tmp_4_fu_307_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (1'd0 == exitcond_i_fu_312_p2))) begin
        sum_i_reg_413 <= sum_i_fu_333_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (32'd0 == operation_read_read_fu_124_p2) & (1'd0 == icmp_fu_267_p2))) begin
        tmp_1_cast_reg_374[14 : 6] <= tmp_1_cast_fu_276_p3[14 : 6];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & ~((1'b0 == results_out_V_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in)))) begin
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
    if (((1'b1 == ap_CS_fsm_state12) & ~((1'b0 == results_out_V_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        contact_in_ce0 = 1'b1;
    end else begin
        contact_in_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        contacts_address0 = sum_i_cast_fu_349_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        contacts_address0 = grp_match_db_contact_fu_239_contacts_address0;
    end else begin
        contacts_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        contacts_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        contacts_ce0 = grp_match_db_contact_fu_239_contacts_ce0;
    end else begin
        contacts_ce0 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state11)) begin
        contacts_size_out_1_data_in = storemerge_reg_227;
    end else if ((((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (operation_read_read_fu_124_p2 == 32'd1)) | ((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & ~(32'd0 == operation_read_read_fu_124_p2) & ~(operation_read_read_fu_124_p2 == 32'd1) & ~(operation_read_read_fu_124_p2 == 32'd2)))) begin
        contacts_size_out_1_data_in = contacts_size;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (operation_read_read_fu_124_p2 == 32'd2))) begin
        contacts_size_out_1_data_in = 32'd0;
    end else begin
        contacts_size_out_1_data_in = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (operation_read_read_fu_124_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (operation_read_read_fu_124_p2 == 32'd1)) | ((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & ~(32'd0 == operation_read_read_fu_124_p2) & ~(operation_read_read_fu_124_p2 == 32'd1) & ~(operation_read_read_fu_124_p2 == 32'd2)) | (1'b1 == ap_CS_fsm_state11))) begin
        contacts_size_out_1_vld_in = 1'b1;
    end else begin
        contacts_size_out_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        contacts_we0 = 1'b1;
    end else begin
        contacts_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~((1'b0 == db_in_V_0_vld_out) | (1'b0 == db_stream_V_full_n)))) begin
        db_in_V_0_ack_out = 1'b1;
    end else begin
        db_in_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == db_in_V_0_sel)) begin
        db_in_V_0_data_out = db_in_V_0_payload_B;
    end else begin
        db_in_V_0_data_out = db_in_V_0_payload_A;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        db_in_V_TDATA_blk_n = db_in_V_0_state[1'd0];
    end else begin
        db_in_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        db_stream_V_read = grp_match_db_contact_fu_239_db_stream_V_read;
    end else begin
        db_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~((1'b0 == db_in_V_0_vld_out) | (1'b0 == db_stream_V_full_n)))) begin
        db_stream_V_write = 1'b1;
    end else begin
        db_stream_V_write = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state2) & (32'd0 == operation_read_read_fu_124_p2) & (1'd1 == icmp_fu_267_p2))) begin
        error_out_1_data_in = 32'd1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & ~(32'd0 == operation_read_read_fu_124_p2) & ~(operation_read_read_fu_124_p2 == 32'd1) & ~(operation_read_read_fu_124_p2 == 32'd2))) begin
        error_out_1_data_in = 32'd3;
    end else if ((((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (operation_read_read_fu_124_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (operation_read_read_fu_124_p2 == 32'd1)) | ((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (32'd0 == operation_read_read_fu_124_p2)))) begin
        error_out_1_data_in = 32'd0;
    end else begin
        error_out_1_data_in = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (operation_read_read_fu_124_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (operation_read_read_fu_124_p2 == 32'd1)) | ((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & (32'd0 == operation_read_read_fu_124_p2)) | ((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)) & ~(32'd0 == operation_read_read_fu_124_p2) & ~(operation_read_read_fu_124_p2 == 32'd1) & ~(operation_read_read_fu_124_p2 == 32'd2)) | ((1'b1 == ap_CS_fsm_state2) & (32'd0 == operation_read_read_fu_124_p2) & (1'd1 == icmp_fu_267_p2)))) begin
        error_out_1_vld_in = 1'b1;
    end else begin
        error_out_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == operation_ap_vld)) begin
        operation_ap_vld_in_sig = operation_ap_vld;
    end else begin
        operation_ap_vld_in_sig = operation_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        operation_blk_n = operation_ap_vld;
    end else begin
        operation_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == operation_ap_vld)) begin
        operation_in_sig = operation;
    end else begin
        operation_in_sig = operation_preg;
    end
end

always @ (*) begin
    if ((1'b1 == results_out_V_1_sel)) begin
        results_out_V_1_data_out = results_out_V_1_payload_B;
    end else begin
        results_out_V_1_data_out = results_out_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ~((1'b0 == results_out_V_1_ack_in) | (1'b0 == grp_match_db_contact_fu_239_ap_done)))) begin
        results_out_V_1_vld_in = 1'b1;
    end else begin
        results_out_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7))) begin
        results_out_V_TDATA_blk_n = results_out_V_1_state[1'd1];
    end else begin
        results_out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig)))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (32'd0 == operation_read_read_fu_124_p2) & (1'd0 == icmp_fu_267_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if (((1'b1 == ap_CS_fsm_state2) & (32'd0 == operation_read_read_fu_124_p2) & (1'd1 == icmp_fu_267_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if (((1'b1 == ap_CS_fsm_state2) & (operation_read_read_fu_124_p2 == 32'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == exitcond4_fu_284_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == exitcond_fu_295_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & ~((1'b0 == db_in_V_0_vld_out) | (1'b0 == db_stream_V_full_n)))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & ~((1'b0 == results_out_V_1_ack_in) | (1'b0 == grp_match_db_contact_fu_239_ap_done)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (results_out_V_1_ack_in == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (1'd1 == exitcond_i_fu_312_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & ~((1'b0 == results_out_V_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
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

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (1'b0 == operation_ap_vld_in_sig));
end

always @ (*) begin
    ap_block_state12 = ((1'b0 == results_out_V_1_ack_in) | (1'b0 == error_out_1_ack_in) | (1'b0 == contacts_size_out_1_ack_in));
end

always @ (*) begin
    ap_block_state5 = ((1'b0 == db_in_V_0_vld_out) | (1'b0 == db_stream_V_full_n));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign contact_in_address0 = tmp_i_fu_324_p1;

assign database_index_1_fu_289_p2 = (database_index_reg_194 + 32'd1);

assign db_in_V_0_ack_in = db_in_V_0_state[1'd1];

assign db_in_V_0_load_A = (db_in_V_0_state_cmp_full & ~db_in_V_0_sel_wr);

assign db_in_V_0_load_B = (db_in_V_0_sel_wr & db_in_V_0_state_cmp_full);

assign db_in_V_0_sel = db_in_V_0_sel_rd;

assign db_in_V_0_state_cmp_full = ((db_in_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign db_in_V_0_vld_in = db_in_V_TVALID;

assign db_in_V_0_vld_out = db_in_V_0_state[1'd0];

assign db_in_V_TREADY = db_in_V_0_state[1'd1];

assign exitcond4_fu_284_p2 = ((database_index_reg_194 == db_size_in) ? 1'b1 : 1'b0);

assign exitcond_fu_295_p2 = ((i_reg_205 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_i_fu_312_p2 = ((i_i_reg_216 == 7'd64) ? 1'b1 : 1'b0);

assign grp_match_db_contact_fu_239_ap_start = ap_reg_grp_match_db_contact_fu_239_ap_start;

assign i_4_fu_301_p2 = (i_reg_205 + 7'd1);

assign i_6_fu_318_p2 = (i_i_reg_216 + 7'd1);

assign icmp_fu_267_p2 = (($signed(tmp_fu_258_p4) > $signed(25'd0)) ? 1'b1 : 1'b0);

assign operation_read_read_fu_124_p2 = operation_in_sig;

assign results_out_V_1_ack_in = results_out_V_1_state[1'd1];

assign results_out_V_1_ack_out = results_out_V_TREADY;

assign results_out_V_1_load_A = (results_out_V_1_state_cmp_full & ~results_out_V_1_sel_wr);

assign results_out_V_1_load_B = (results_out_V_1_sel_wr & results_out_V_1_state_cmp_full);

assign results_out_V_1_sel = results_out_V_1_sel_rd;

assign results_out_V_1_state_cmp_full = ((results_out_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign results_out_V_1_vld_out = results_out_V_1_state[1'd0];

assign results_out_V_TDATA = results_out_V_1_data_out;

assign results_out_V_TVALID = results_out_V_1_state[1'd0];

assign sum_i_cast_fu_349_p1 = $signed(sum_i_reg_413);

assign sum_i_fu_333_p2 = (tmp_i_cast_fu_329_p1 + tmp_1_cast_reg_374);

assign tmp_13_fu_273_p1 = contacts_size_load_reg_362[8:0];

assign tmp_1_cast_fu_276_p3 = {{tmp_13_fu_273_p1}, {6'd0}};

assign tmp_2_fu_338_p2 = (contacts_size_load_reg_362 + 32'd1);

assign tmp_4_fu_307_p1 = grp_match_db_contact_fu_239_ap_return;

assign tmp_fu_258_p4 = {{contacts_size_load_reg_362[31:7]}};

assign tmp_i_cast_fu_329_p1 = i_i_reg_216;

assign tmp_i_fu_324_p1 = i_i_reg_216;

always @ (posedge ap_clk) begin
    tmp_1_cast_reg_374[5:0] <= 6'b000000;
end

endmodule //contact_discovery