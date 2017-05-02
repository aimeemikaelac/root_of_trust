// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module final (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        SHA256_m_tot_len_read,
        SHA256_m_len_read,
        SHA256_m_block_address0,
        SHA256_m_block_ce0,
        SHA256_m_block_we0,
        SHA256_m_block_d0,
        SHA256_m_block_q0,
        SHA256_m_block_address1,
        SHA256_m_block_ce1,
        SHA256_m_block_q1,
        SHA256_m_h_address0,
        SHA256_m_h_ce0,
        SHA256_m_h_we0,
        SHA256_m_h_d0,
        SHA256_m_h_q0,
        digest_address0,
        digest_ce0,
        digest_we0,
        digest_d0
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] SHA256_m_tot_len_read;
input  [31:0] SHA256_m_len_read;
output  [6:0] SHA256_m_block_address0;
output   SHA256_m_block_ce0;
output   SHA256_m_block_we0;
output  [7:0] SHA256_m_block_d0;
input  [7:0] SHA256_m_block_q0;
output  [6:0] SHA256_m_block_address1;
output   SHA256_m_block_ce1;
input  [7:0] SHA256_m_block_q1;
output  [2:0] SHA256_m_h_address0;
output   SHA256_m_h_ce0;
output   SHA256_m_h_we0;
output  [31:0] SHA256_m_h_d0;
input  [31:0] SHA256_m_h_q0;
output  [4:0] digest_address0;
output   digest_ce0;
output   digest_we0;
output  [7:0] digest_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] SHA256_m_block_address0;
reg SHA256_m_block_ce0;
reg SHA256_m_block_we0;
reg[7:0] SHA256_m_block_d0;
reg SHA256_m_block_ce1;
reg[2:0] SHA256_m_h_address0;
reg SHA256_m_h_ce0;
reg SHA256_m_h_we0;
reg[4:0] digest_address0;
reg digest_ce0;
reg digest_we0;
reg[7:0] digest_d0;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_s_fu_267_p2;
reg   [0:0] tmp_s_reg_547;
wire   [1:0] block_nb_fu_273_p3;
reg   [1:0] block_nb_reg_555;
wire   [28:0] tmp_84_fu_305_p2;
reg   [28:0] tmp_84_reg_560;
wire   [20:0] tmp_90_cast3_fu_311_p2;
reg   [20:0] tmp_90_cast3_reg_565;
wire   [12:0] tmp_90_cast_fu_317_p2;
reg   [12:0] tmp_90_cast_reg_570;
wire   [4:0] tmp_105_fu_323_p1;
reg   [4:0] tmp_105_reg_575;
wire   [4:0] tmp_106_fu_327_p1;
reg   [4:0] tmp_106_reg_580;
wire   [63:0] tmp_85_fu_339_p1;
reg   [63:0] tmp_85_reg_585;
wire   [8:0] tmp_107_fu_343_p1;
reg   [8:0] tmp_107_reg_590;
wire   [31:0] length_assign_fu_347_p2;
reg   [31:0] length_assign_reg_595;
wire   [31:0] i_3_fu_358_p2;
wire    ap_CS_fsm_state2;
wire   [4:0] tmp_86_fu_378_p2;
reg   [4:0] tmp_86_reg_608;
wire   [0:0] exitcond_i_fu_353_p2;
reg   [7:0] tmp_88_reg_613;
reg   [7:0] tmp_89_reg_618;
reg   [7:0] tmp_90_reg_623;
wire   [3:0] i_4_fu_455_p2;
reg   [3:0] i_4_reg_631;
wire    ap_CS_fsm_state9;
wire   [0:0] exitcond_fu_449_p2;
wire   [2:0] tmp_110_fu_466_p1;
reg   [2:0] tmp_110_reg_641;
wire   [4:0] tmp_92_fu_475_p3;
reg   [4:0] tmp_92_reg_646;
wire    ap_CS_fsm_state10;
reg   [7:0] tmp_94_reg_653;
reg   [7:0] tmp_95_reg_658;
reg   [7:0] tmp_96_reg_663;
wire    grp_transform_fu_252_ap_start;
wire    grp_transform_fu_252_ap_done;
wire    grp_transform_fu_252_ap_idle;
wire    grp_transform_fu_252_ap_ready;
wire   [2:0] grp_transform_fu_252_SHA256_m_h_address0;
wire    grp_transform_fu_252_SHA256_m_h_ce0;
wire    grp_transform_fu_252_SHA256_m_h_we0;
wire   [31:0] grp_transform_fu_252_SHA256_m_h_d0;
wire   [6:0] grp_transform_fu_252_message_address0;
wire    grp_transform_fu_252_message_ce0;
wire   [6:0] grp_transform_fu_252_message_address1;
wire    grp_transform_fu_252_message_ce1;
reg   [31:0] i_i_reg_230;
reg   [3:0] i_reg_241;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg    ap_reg_grp_transform_fu_252_ap_start;
wire    ap_CS_fsm_state7;
wire  signed [63:0] sum_i_cast_fu_373_p1;
wire   [63:0] p_sum1_cast_cast_fu_417_p3;
wire    ap_CS_fsm_state3;
wire   [63:0] p_sum3_cast_cast_fu_425_p3;
wire    ap_CS_fsm_state4;
wire   [63:0] p_sum5_cast_cast_fu_433_p3;
wire    ap_CS_fsm_state5;
wire   [63:0] p_sum6_cast_cast_fu_441_p3;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_91_fu_461_p1;
wire   [63:0] p_sum_cast_fu_488_p1;
wire   [63:0] p_sum2_cast_fu_528_p1;
wire    ap_CS_fsm_state11;
wire   [63:0] p_sum4_cast_fu_538_p1;
wire    ap_CS_fsm_state12;
wire   [63:0] tmp_93_fu_543_p1;
wire   [7:0] tmp_87_fu_409_p3;
wire   [7:0] tmp_109_fu_470_p1;
wire   [5:0] tmp_fu_263_p1;
wire   [28:0] tmp_99_fu_281_p1;
wire   [28:0] tmp_100_fu_285_p1;
wire   [20:0] tmp_103_fu_297_p1;
wire   [20:0] tmp_104_fu_301_p1;
wire   [12:0] tmp_101_fu_289_p1;
wire   [12:0] tmp_102_fu_293_p1;
wire   [31:0] pm_len_cast_cast_fu_331_p3;
wire   [8:0] tmp_108_fu_364_p1;
wire   [8:0] sum_i_fu_368_p2;
wire   [4:0] p_sum_fu_482_p2;
wire   [4:0] p_sum2_fu_523_p2;
wire   [4:0] p_sum4_fu_533_p2;
reg   [12:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
#0 ap_reg_grp_transform_fu_252_ap_start = 1'b0;
end

transform grp_transform_fu_252(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_transform_fu_252_ap_start),
    .ap_done(grp_transform_fu_252_ap_done),
    .ap_idle(grp_transform_fu_252_ap_idle),
    .ap_ready(grp_transform_fu_252_ap_ready),
    .SHA256_m_h_address0(grp_transform_fu_252_SHA256_m_h_address0),
    .SHA256_m_h_ce0(grp_transform_fu_252_SHA256_m_h_ce0),
    .SHA256_m_h_we0(grp_transform_fu_252_SHA256_m_h_we0),
    .SHA256_m_h_d0(grp_transform_fu_252_SHA256_m_h_d0),
    .SHA256_m_h_q0(SHA256_m_h_q0),
    .message_address0(grp_transform_fu_252_message_address0),
    .message_ce0(grp_transform_fu_252_message_ce0),
    .message_q0(SHA256_m_block_q0),
    .message_address1(grp_transform_fu_252_message_address1),
    .message_ce1(grp_transform_fu_252_message_ce1),
    .message_q1(SHA256_m_block_q1),
    .block_nb(block_nb_reg_555)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_transform_fu_252_ap_start <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_reg_grp_transform_fu_252_ap_start <= 1'b1;
        end else if ((1'b1 == grp_transform_fu_252_ap_ready)) begin
            ap_reg_grp_transform_fu_252_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd0))) begin
        i_i_reg_230 <= i_3_fu_358_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_i_reg_230 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i_reg_241 <= i_4_reg_631;
    end else if (((1'b1 == ap_CS_fsm_state8) & (grp_transform_fu_252_ap_done == 1'b1))) begin
        i_reg_241 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        block_nb_reg_555 <= block_nb_fu_273_p3;
        length_assign_reg_595 <= length_assign_fu_347_p2;
        tmp_105_reg_575 <= tmp_105_fu_323_p1;
        tmp_106_reg_580 <= tmp_106_fu_327_p1;
        tmp_107_reg_590 <= tmp_107_fu_343_p1;
        tmp_84_reg_560 <= tmp_84_fu_305_p2;
        tmp_85_reg_585[31 : 0] <= tmp_85_fu_339_p1[31 : 0];
        tmp_90_cast3_reg_565 <= tmp_90_cast3_fu_311_p2;
        tmp_90_cast_reg_570 <= tmp_90_cast_fu_317_p2;
        tmp_s_reg_547 <= tmp_s_fu_267_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_4_reg_631 <= i_4_fu_455_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (exitcond_fu_449_p2 == 1'd0))) begin
        tmp_110_reg_641 <= tmp_110_fu_466_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd1))) begin
        tmp_86_reg_608 <= tmp_86_fu_378_p2;
        tmp_88_reg_613 <= {{tmp_90_cast_reg_570[12:5]}};
        tmp_89_reg_618 <= {{tmp_90_cast3_reg_565[20:13]}};
        tmp_90_reg_623 <= {{tmp_84_reg_560[28:21]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_92_reg_646[4 : 2] <= tmp_92_fu_475_p3[4 : 2];
        tmp_94_reg_653 <= {{SHA256_m_h_q0[15:8]}};
        tmp_95_reg_658 <= {{SHA256_m_h_q0[23:16]}};
        tmp_96_reg_663 <= {{SHA256_m_h_q0[31:24]}};
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        SHA256_m_block_address0 = p_sum6_cast_cast_fu_441_p3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        SHA256_m_block_address0 = p_sum5_cast_cast_fu_433_p3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        SHA256_m_block_address0 = p_sum3_cast_cast_fu_425_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        SHA256_m_block_address0 = p_sum1_cast_cast_fu_417_p3;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd1))) begin
        SHA256_m_block_address0 = tmp_85_reg_585;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd0))) begin
        SHA256_m_block_address0 = sum_i_cast_fu_373_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        SHA256_m_block_address0 = grp_transform_fu_252_message_address0;
    end else begin
        SHA256_m_block_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd0)) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        SHA256_m_block_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        SHA256_m_block_ce0 = grp_transform_fu_252_message_ce0;
    end else begin
        SHA256_m_block_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SHA256_m_block_ce1 = grp_transform_fu_252_message_ce1;
    end else begin
        SHA256_m_block_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        SHA256_m_block_d0 = tmp_90_reg_623;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        SHA256_m_block_d0 = tmp_89_reg_618;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        SHA256_m_block_d0 = tmp_88_reg_613;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        SHA256_m_block_d0 = tmp_87_fu_409_p3;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd1))) begin
        SHA256_m_block_d0 = 8'd128;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd0))) begin
        SHA256_m_block_d0 = 8'd0;
    end else begin
        SHA256_m_block_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd0)) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        SHA256_m_block_we0 = 1'b1;
    end else begin
        SHA256_m_block_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        SHA256_m_h_address0 = tmp_91_fu_461_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        SHA256_m_h_address0 = grp_transform_fu_252_SHA256_m_h_address0;
    end else begin
        SHA256_m_h_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        SHA256_m_h_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        SHA256_m_h_ce0 = grp_transform_fu_252_SHA256_m_h_ce0;
    end else begin
        SHA256_m_h_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SHA256_m_h_we0 = grp_transform_fu_252_SHA256_m_h_we0;
    end else begin
        SHA256_m_h_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state9) & (1'd1 == exitcond_fu_449_p2)))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (1'd1 == exitcond_fu_449_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        digest_address0 = tmp_93_fu_543_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        digest_address0 = p_sum4_cast_fu_538_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        digest_address0 = p_sum2_cast_fu_528_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        digest_address0 = p_sum_cast_fu_488_p1;
    end else begin
        digest_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12))) begin
        digest_ce0 = 1'b1;
    end else begin
        digest_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        digest_d0 = tmp_96_reg_663;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        digest_d0 = tmp_95_reg_658;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        digest_d0 = tmp_94_reg_653;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        digest_d0 = tmp_109_fu_470_p1;
    end else begin
        digest_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12))) begin
        digest_we0 = 1'b1;
    end else begin
        digest_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_353_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_transform_fu_252_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (1'd1 == exitcond_fu_449_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign SHA256_m_block_address1 = grp_transform_fu_252_message_address1;

assign SHA256_m_h_d0 = grp_transform_fu_252_SHA256_m_h_d0;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign block_nb_fu_273_p3 = ((tmp_s_fu_267_p2[0:0] === 1'b1) ? 2'd2 : 2'd1);

assign exitcond_fu_449_p2 = ((i_reg_241 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond_i_fu_353_p2 = ((i_i_reg_230 == length_assign_reg_595) ? 1'b1 : 1'b0);

assign grp_transform_fu_252_ap_start = ap_reg_grp_transform_fu_252_ap_start;

assign i_3_fu_358_p2 = (i_i_reg_230 + 32'd1);

assign i_4_fu_455_p2 = (i_reg_241 + 4'd1);

assign length_assign_fu_347_p2 = (pm_len_cast_cast_fu_331_p3 - SHA256_m_len_read);

assign p_sum1_cast_cast_fu_417_p3 = ((tmp_s_reg_547[0:0] === 1'b1) ? 64'd127 : 64'd63);

assign p_sum2_cast_fu_528_p1 = p_sum2_fu_523_p2;

assign p_sum2_fu_523_p2 = (tmp_92_reg_646 | 5'd2);

assign p_sum3_cast_cast_fu_425_p3 = ((tmp_s_reg_547[0:0] === 1'b1) ? 64'd126 : 64'd62);

assign p_sum4_cast_fu_538_p1 = p_sum4_fu_533_p2;

assign p_sum4_fu_533_p2 = (tmp_92_reg_646 | 5'd1);

assign p_sum5_cast_cast_fu_433_p3 = ((tmp_s_reg_547[0:0] === 1'b1) ? 64'd125 : 64'd61);

assign p_sum6_cast_cast_fu_441_p3 = ((tmp_s_reg_547[0:0] === 1'b1) ? 64'd124 : 64'd60);

assign p_sum_cast_fu_488_p1 = p_sum_fu_482_p2;

assign p_sum_fu_482_p2 = (tmp_92_fu_475_p3 | 5'd3);

assign pm_len_cast_cast_fu_331_p3 = ((tmp_s_fu_267_p2[0:0] === 1'b1) ? 32'd128 : 32'd64);

assign sum_i_cast_fu_373_p1 = $signed(sum_i_fu_368_p2);

assign sum_i_fu_368_p2 = (tmp_108_fu_364_p1 + tmp_107_reg_590);

assign tmp_100_fu_285_p1 = SHA256_m_tot_len_read[28:0];

assign tmp_101_fu_289_p1 = SHA256_m_tot_len_read[12:0];

assign tmp_102_fu_293_p1 = SHA256_m_len_read[12:0];

assign tmp_103_fu_297_p1 = SHA256_m_tot_len_read[20:0];

assign tmp_104_fu_301_p1 = SHA256_m_len_read[20:0];

assign tmp_105_fu_323_p1 = SHA256_m_len_read[4:0];

assign tmp_106_fu_327_p1 = SHA256_m_tot_len_read[4:0];

assign tmp_107_fu_343_p1 = SHA256_m_len_read[8:0];

assign tmp_108_fu_364_p1 = i_i_reg_230[8:0];

assign tmp_109_fu_470_p1 = SHA256_m_h_q0[7:0];

assign tmp_110_fu_466_p1 = i_reg_241[2:0];

assign tmp_84_fu_305_p2 = (tmp_99_fu_281_p1 + tmp_100_fu_285_p1);

assign tmp_85_fu_339_p1 = SHA256_m_len_read;

assign tmp_86_fu_378_p2 = (tmp_106_reg_580 + tmp_105_reg_575);

assign tmp_87_fu_409_p3 = {{tmp_86_reg_608}, {3'd0}};

assign tmp_90_cast3_fu_311_p2 = (tmp_103_fu_297_p1 + tmp_104_fu_301_p1);

assign tmp_90_cast_fu_317_p2 = (tmp_101_fu_289_p1 + tmp_102_fu_293_p1);

assign tmp_91_fu_461_p1 = i_reg_241;

assign tmp_92_fu_475_p3 = {{tmp_110_reg_641}, {2'd0}};

assign tmp_93_fu_543_p1 = tmp_92_reg_646;

assign tmp_99_fu_281_p1 = SHA256_m_len_read[28:0];

assign tmp_fu_263_p1 = SHA256_m_len_read[5:0];

assign tmp_s_fu_267_p2 = ((tmp_fu_263_p1 > 6'd55) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_85_reg_585[63:32] <= 32'b00000000000000000000000000000000;
    tmp_92_reg_646[1:0] <= 2'b00;
end

endmodule //final
