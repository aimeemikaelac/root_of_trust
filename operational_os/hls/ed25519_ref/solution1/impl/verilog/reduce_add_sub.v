// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module reduce_add_sub (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        r_v_address0,
        r_v_ce0,
        r_v_we0,
        r_v_d0,
        r_v_q0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] r_v_address0;
output   r_v_ce0;
output   r_v_we0;
output  [31:0] r_v_d0;
input  [31:0] r_v_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] r_v_address0;
reg r_v_ce0;
reg r_v_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] m_address0;
reg    m_ce0;
wire   [7:0] m_q0;
wire   [5:0] i_20_fu_130_p2;
reg   [5:0] i_20_reg_250;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_fu_136_p1;
reg   [63:0] tmp_reg_255;
wire   [0:0] exitcond2_fu_124_p2;
wire  signed [31:0] mask_cast_fu_145_p1;
reg  signed [31:0] mask_cast_reg_270;
wire   [0:0] tmp_756_fu_169_p3;
wire    ap_CS_fsm_state3;
wire   [5:0] i_21_fu_207_p2;
reg   [5:0] i_21_reg_283;
wire    ap_CS_fsm_state4;
reg   [4:0] r_v_addr_1_reg_288;
wire   [0:0] exitcond_fu_201_p2;
reg   [4:0] t_address0;
reg    t_ce0;
reg    t_we0;
wire   [7:0] t_d0;
wire   [7:0] t_q0;
reg   [0:0] pb_reg_90;
reg   [5:0] i_reg_102;
reg   [5:0] i_1_reg_113;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_s_fu_213_p1;
reg   [1:0] mask_fu_32;
wire   [1:0] phitmp_cast_cast_fu_188_p3;
wire   [7:0] pb_cast1_fu_149_p1;
wire   [7:0] pb_1_fu_153_p2;
wire   [31:0] pb_3_cast_fu_159_p1;
wire   [31:0] x_1_fu_163_p2;
wire   [0:0] phitmp_fu_182_p2;
wire   [31:0] tmp_738_fu_219_p1;
wire   [31:0] tmp_739_fu_223_p2;
wire   [31:0] tmp_740_fu_229_p2;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

reduce_add_sub_m #(
    .DataWidth( 8 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
m_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(m_address0),
    .ce0(m_ce0),
    .q0(m_q0)
);

reduce_add_sub_t #(
    .DataWidth( 8 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
t_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(t_address0),
    .ce0(t_ce0),
    .we0(t_we0),
    .d0(t_d0),
    .q0(t_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_124_p2 == 1'd1))) begin
        i_1_reg_113 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_1_reg_113 <= i_21_reg_283;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_102 <= i_20_reg_250;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_102 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        pb_reg_90 <= x_1_fu_163_p2[32'd31];
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        pb_reg_90 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_20_reg_250 <= i_20_fu_130_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_21_reg_283 <= i_21_fu_207_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_124_p2 == 1'd1))) begin
        mask_cast_reg_270 <= mask_cast_fu_145_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mask_fu_32 <= phitmp_cast_cast_fu_188_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_201_p2))) begin
        r_v_addr_1_reg_288 <= tmp_s_fu_213_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_124_p2 == 1'd0))) begin
        tmp_reg_255[5 : 0] <= tmp_fu_136_p1[5 : 0];
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state4) & (1'd1 == exitcond_fu_201_p2)))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == exitcond_fu_201_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        m_ce0 = 1'b1;
    end else begin
        m_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        r_v_address0 = r_v_addr_1_reg_288;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        r_v_address0 = tmp_s_fu_213_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        r_v_address0 = tmp_fu_136_p1;
    end else begin
        r_v_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5))) begin
        r_v_ce0 = 1'b1;
    end else begin
        r_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        r_v_we0 = 1'b1;
    end else begin
        r_v_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        t_address0 = tmp_s_fu_213_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        t_address0 = tmp_reg_255;
    end else begin
        t_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        t_ce0 = 1'b1;
    end else begin
        t_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        t_we0 = 1'b1;
    end else begin
        t_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_124_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == exitcond_fu_201_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign exitcond2_fu_124_p2 = ((i_reg_102 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond_fu_201_p2 = ((i_1_reg_113 == 6'd32) ? 1'b1 : 1'b0);

assign i_20_fu_130_p2 = (i_reg_102 + 6'd1);

assign i_21_fu_207_p2 = (i_1_reg_113 + 6'd1);

assign m_address0 = tmp_fu_136_p1;

assign mask_cast_fu_145_p1 = $signed(mask_fu_32);

assign pb_1_fu_153_p2 = (m_q0 + pb_cast1_fu_149_p1);

assign pb_3_cast_fu_159_p1 = pb_1_fu_153_p2;

assign pb_cast1_fu_149_p1 = pb_reg_90;

assign phitmp_cast_cast_fu_188_p3 = ((phitmp_fu_182_p2[0:0] === 1'b1) ? 2'd3 : 2'd0);

assign phitmp_fu_182_p2 = (tmp_756_fu_169_p3 ^ 1'd1);

assign r_v_d0 = (r_v_q0 ^ tmp_740_fu_229_p2);

assign t_d0 = x_1_fu_163_p2[7:0];

assign tmp_738_fu_219_p1 = t_q0;

assign tmp_739_fu_223_p2 = (r_v_q0 ^ tmp_738_fu_219_p1);

assign tmp_740_fu_229_p2 = (tmp_739_fu_223_p2 & mask_cast_reg_270);

assign tmp_756_fu_169_p3 = x_1_fu_163_p2[32'd31];

assign tmp_fu_136_p1 = i_reg_102;

assign tmp_s_fu_213_p1 = i_1_reg_113;

assign x_1_fu_163_p2 = (r_v_q0 - pb_3_cast_fu_159_p1);

always @ (posedge ap_clk) begin
    tmp_reg_255[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //reduce_add_sub