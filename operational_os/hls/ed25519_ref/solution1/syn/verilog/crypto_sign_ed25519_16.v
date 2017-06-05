// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module crypto_sign_ed25519_16 (
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
        r_v_q0,
        r_v_address1,
        r_v_ce1,
        r_v_we1,
        r_v_d1,
        r_v_q1,
        y_v_address0,
        y_v_ce0,
        y_v_q0
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

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
output  [4:0] r_v_address1;
output   r_v_ce1;
output   r_v_we1;
output  [31:0] r_v_d1;
input  [31:0] r_v_q1;
output  [4:0] y_v_address0;
output   y_v_ce0;
input  [31:0] y_v_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] r_v_address0;
reg r_v_ce0;
reg r_v_we0;
reg[31:0] r_v_d0;
reg[4:0] r_v_address1;
reg r_v_ce1;
reg r_v_we1;
reg y_v_ce0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] m_address0;
reg    m_ce0;
wire   [7:0] m_q0;
wire   [5:0] i_49_fu_205_p2;
reg   [5:0] i_49_reg_396;
wire    ap_CS_fsm_state2;
reg   [4:0] r_v_addr_reg_401;
wire   [0:0] exitcond1_fu_199_p2;
wire   [4:0] i_50_fu_230_p2;
reg   [4:0] i_50_reg_414;
wire    ap_CS_fsm_state4;
reg   [4:0] r_v_addr_18_reg_419;
wire   [0:0] exitcond_fu_224_p2;
reg   [4:0] r_v_addr_19_reg_424;
wire   [5:0] i_51_fu_282_p2;
reg   [5:0] i_51_reg_438;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_i_fu_288_p1;
reg   [63:0] tmp_i_reg_443;
wire   [0:0] exitcond2_i_fu_276_p2;
wire  signed [31:0] mask_cast_fu_297_p1;
reg  signed [31:0] mask_cast_reg_458;
wire   [0:0] tmp_783_fu_321_p3;
wire    ap_CS_fsm_state7;
wire   [5:0] i_52_fu_359_p2;
reg   [5:0] i_52_reg_471;
wire    ap_CS_fsm_state8;
reg   [4:0] r_v_addr_21_reg_476;
wire   [0:0] exitcond_i_fu_353_p2;
reg   [4:0] t_address0;
reg    t_ce0;
reg    t_we0;
wire   [7:0] t_d0;
wire   [7:0] t_q0;
reg   [5:0] i_reg_143;
wire    ap_CS_fsm_state3;
reg   [4:0] i_1_reg_154;
wire    ap_CS_fsm_state5;
reg   [0:0] pb_i_reg_165;
reg   [5:0] i_i_reg_177;
reg   [5:0] i_1_i_reg_188;
wire    ap_CS_fsm_state9;
wire   [63:0] tmp_fu_211_p1;
wire   [63:0] tmp_779_fu_236_p1;
wire   [63:0] tmp_780_fu_241_p1;
wire   [63:0] tmp_764_i_fu_365_p1;
reg   [1:0] mask_fu_50;
wire   [1:0] phitmp_i_cast_cast_fu_340_p3;
wire   [31:0] tmp_s_fu_217_p2;
wire   [31:0] tmp_852_cast_fu_271_p1;
wire   [31:0] tmp_768_i_fu_386_p2;
wire   [23:0] carry_fu_250_p4;
wire   [31:0] carry_1_fu_260_p1;
wire   [7:0] tmp_782_fu_246_p1;
wire   [7:0] pb_i_cast1_fu_301_p1;
wire   [7:0] pb_fu_305_p2;
wire   [31:0] pb_4_cast_fu_311_p1;
wire   [31:0] x_3_fu_315_p2;
wire   [0:0] phitmp_i_fu_334_p2;
wire   [31:0] tmp_765_i_fu_371_p1;
wire   [31:0] tmp_766_i_fu_375_p2;
wire   [31:0] tmp_767_i_fu_381_p2;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
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
    if (((1'b1 == ap_CS_fsm_state6) & (exitcond2_i_fu_276_p2 == 1'd1))) begin
        i_1_i_reg_188 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        i_1_i_reg_188 <= i_52_reg_471;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_199_p2 == 1'd1))) begin
        i_1_reg_154 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_1_reg_154 <= i_50_reg_414;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_224_p2 == 1'd1))) begin
        i_i_reg_177 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i_i_reg_177 <= i_51_reg_438;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_143 <= i_49_reg_396;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_143 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_224_p2 == 1'd1))) begin
        pb_i_reg_165 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        pb_i_reg_165 <= x_3_fu_315_p2[32'd31];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_49_reg_396 <= i_49_fu_205_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_50_reg_414 <= i_50_fu_230_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_51_reg_438 <= i_51_fu_282_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_52_reg_471 <= i_52_fu_359_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (exitcond2_i_fu_276_p2 == 1'd1))) begin
        mask_cast_reg_458 <= mask_cast_fu_297_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        mask_fu_50 <= phitmp_i_cast_cast_fu_340_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_224_p2))) begin
        r_v_addr_18_reg_419 <= tmp_779_fu_236_p1;
        r_v_addr_19_reg_424 <= tmp_780_fu_241_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (1'd0 == exitcond_i_fu_353_p2))) begin
        r_v_addr_21_reg_476 <= tmp_764_i_fu_365_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_199_p2 == 1'd0))) begin
        r_v_addr_reg_401 <= tmp_fu_211_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd0 == exitcond2_i_fu_276_p2))) begin
        tmp_i_reg_443[5 : 0] <= tmp_i_fu_288_p1[5 : 0];
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state8) & (1'd1 == exitcond_i_fu_353_p2)))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (1'd1 == exitcond_i_fu_353_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m_ce0 = 1'b1;
    end else begin
        m_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        r_v_address0 = r_v_addr_21_reg_476;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        r_v_address0 = r_v_addr_18_reg_419;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        r_v_address0 = tmp_779_fu_236_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        r_v_address0 = r_v_addr_reg_401;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        r_v_address0 = tmp_fu_211_p1;
    end else begin
        r_v_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        r_v_address1 = tmp_764_i_fu_365_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        r_v_address1 = tmp_i_fu_288_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        r_v_address1 = r_v_addr_19_reg_424;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        r_v_address1 = tmp_780_fu_241_p1;
    end else begin
        r_v_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state9))) begin
        r_v_ce0 = 1'b1;
    end else begin
        r_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5))) begin
        r_v_ce1 = 1'b1;
    end else begin
        r_v_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        r_v_d0 = tmp_768_i_fu_386_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        r_v_d0 = tmp_852_cast_fu_271_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        r_v_d0 = tmp_s_fu_217_p2;
    end else begin
        r_v_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state9))) begin
        r_v_we0 = 1'b1;
    end else begin
        r_v_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        r_v_we1 = 1'b1;
    end else begin
        r_v_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        t_address0 = tmp_764_i_fu_365_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        t_address0 = tmp_i_reg_443;
    end else begin
        t_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8))) begin
        t_ce0 = 1'b1;
    end else begin
        t_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        t_we0 = 1'b1;
    end else begin
        t_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y_v_ce0 = 1'b1;
    end else begin
        y_v_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_199_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_224_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (exitcond2_i_fu_276_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (1'd1 == exitcond_i_fu_353_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
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

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign carry_1_fu_260_p1 = carry_fu_250_p4;

assign carry_fu_250_p4 = {{r_v_q0[31:8]}};

assign exitcond1_fu_199_p2 = ((i_reg_143 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond2_i_fu_276_p2 = ((i_i_reg_177 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond_fu_224_p2 = ((i_1_reg_154 == 5'd31) ? 1'b1 : 1'b0);

assign exitcond_i_fu_353_p2 = ((i_1_i_reg_188 == 6'd32) ? 1'b1 : 1'b0);

assign i_49_fu_205_p2 = (i_reg_143 + 6'd1);

assign i_50_fu_230_p2 = (i_1_reg_154 + 5'd1);

assign i_51_fu_282_p2 = (i_i_reg_177 + 6'd1);

assign i_52_fu_359_p2 = (i_1_i_reg_188 + 6'd1);

assign m_address0 = tmp_i_fu_288_p1;

assign mask_cast_fu_297_p1 = $signed(mask_fu_50);

assign pb_4_cast_fu_311_p1 = pb_fu_305_p2;

assign pb_fu_305_p2 = (m_q0 + pb_i_cast1_fu_301_p1);

assign pb_i_cast1_fu_301_p1 = pb_i_reg_165;

assign phitmp_i_cast_cast_fu_340_p3 = ((phitmp_i_fu_334_p2[0:0] === 1'b1) ? 2'd3 : 2'd0);

assign phitmp_i_fu_334_p2 = (tmp_783_fu_321_p3 ^ 1'd1);

assign r_v_d1 = (carry_1_fu_260_p1 + r_v_q1);

assign t_d0 = x_3_fu_315_p2[7:0];

assign tmp_764_i_fu_365_p1 = i_1_i_reg_188;

assign tmp_765_i_fu_371_p1 = t_q0;

assign tmp_766_i_fu_375_p2 = (r_v_q1 ^ tmp_765_i_fu_371_p1);

assign tmp_767_i_fu_381_p2 = (tmp_766_i_fu_375_p2 & mask_cast_reg_458);

assign tmp_768_i_fu_386_p2 = (r_v_q1 ^ tmp_767_i_fu_381_p2);

assign tmp_779_fu_236_p1 = i_1_reg_154;

assign tmp_780_fu_241_p1 = i_50_fu_230_p2;

assign tmp_782_fu_246_p1 = r_v_q0[7:0];

assign tmp_783_fu_321_p3 = x_3_fu_315_p2[32'd31];

assign tmp_852_cast_fu_271_p1 = tmp_782_fu_246_p1;

assign tmp_fu_211_p1 = i_reg_143;

assign tmp_i_fu_288_p1 = i_i_reg_177;

assign tmp_s_fu_217_p2 = (r_v_q0 + y_v_q0);

assign x_3_fu_315_p2 = (r_v_q1 - pb_4_cast_fu_311_p1);

assign y_v_address0 = tmp_fu_211_p1;

always @ (posedge ap_clk) begin
    tmp_i_reg_443[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //crypto_sign_ed25519_16