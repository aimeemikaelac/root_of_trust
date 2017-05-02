//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
//Date        : Thu Apr 20 21:07:50 2017
//Host        : SchoolComputer running 64-bit Ubuntu 16.10
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (SI5324_LOL,
    SI5324_RST,
    TX_CLK_N_OUT,
    TX_CLK_P_OUT,
    TX_HPD,
    TX_N_OUT,
    TX_P_OUT,
    TX_REFCLK_N_IN,
    TX_REFCLK_P_IN);
  input [0:0]SI5324_LOL;
  output [0:0]SI5324_RST;
  output TX_CLK_N_OUT;
  output TX_CLK_P_OUT;
  input TX_HPD;
  output [2:0]TX_N_OUT;
  output [2:0]TX_P_OUT;
  input TX_REFCLK_N_IN;
  input TX_REFCLK_P_IN;

  wire [0:0]SI5324_LOL;
  wire [0:0]SI5324_RST;
  wire TX_CLK_N_OUT;
  wire TX_CLK_P_OUT;
  wire TX_HPD;
  wire [2:0]TX_N_OUT;
  wire [2:0]TX_P_OUT;
  wire TX_REFCLK_N_IN;
  wire TX_REFCLK_P_IN;

  design_1 design_1_i
       (.SI5324_LOL(SI5324_LOL),
        .SI5324_RST(SI5324_RST),
        .TX_CLK_N_OUT(TX_CLK_N_OUT),
        .TX_CLK_P_OUT(TX_CLK_P_OUT),
        .TX_HPD(TX_HPD),
        .TX_N_OUT(TX_N_OUT),
        .TX_P_OUT(TX_P_OUT),
        .TX_REFCLK_N_IN(TX_REFCLK_N_IN),
        .TX_REFCLK_P_IN(TX_REFCLK_P_IN));
endmodule
