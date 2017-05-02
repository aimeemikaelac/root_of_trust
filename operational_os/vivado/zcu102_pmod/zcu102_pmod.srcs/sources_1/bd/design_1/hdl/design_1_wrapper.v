//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
//Date        : Tue Apr 25 02:16:01 2017
//Host        : SchoolComputer running 64-bit Ubuntu 16.10
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (SERIAL_CLK_EN,
    SERIAL_CLK_LED,
    SERIAL_CLK_OUT,
    SERIAL_DATA_EN,
    SERIAL_DATA_LED,
    SERIAL_DATA_LINE_IN,
    SERIAL_DATA_LINE_OUT);
  output SERIAL_CLK_EN;
  output SERIAL_CLK_LED;
  output SERIAL_CLK_OUT;
  output SERIAL_DATA_EN;
  output SERIAL_DATA_LED;
  input SERIAL_DATA_LINE_IN;
  output SERIAL_DATA_LINE_OUT;

  wire SERIAL_CLK_EN;
  wire SERIAL_CLK_LED;
  wire SERIAL_CLK_OUT;
  wire SERIAL_DATA_EN;
  wire SERIAL_DATA_LED;
  wire SERIAL_DATA_LINE_IN;
  wire SERIAL_DATA_LINE_OUT;

  design_1 design_1_i
       (.SERIAL_CLK_EN(SERIAL_CLK_EN),
        .SERIAL_CLK_LED(SERIAL_CLK_LED),
        .SERIAL_CLK_OUT(SERIAL_CLK_OUT),
        .SERIAL_DATA_EN(SERIAL_DATA_EN),
        .SERIAL_DATA_LED(SERIAL_DATA_LED),
        .SERIAL_DATA_LINE_IN(SERIAL_DATA_LINE_IN),
        .SERIAL_DATA_LINE_OUT(SERIAL_DATA_LINE_OUT));
endmodule
