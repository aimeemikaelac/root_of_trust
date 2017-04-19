// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Sun Apr 16 16:46:16 2017
// Host        : SchoolComputer running 64-bit Ubuntu 16.10
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_clk_wiz_0_0_stub.v
// Design      : design_1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-i-es2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(hdmi_async, hdmi_link, hdmi_video, 
  hdmi_video_async, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="hdmi_async,hdmi_link,hdmi_video,hdmi_video_async,reset,locked,clk_in1" */;
  output hdmi_async;
  output hdmi_link;
  output hdmi_video;
  output hdmi_video_async;
  input reset;
  output locked;
  input clk_in1;
endmodule
