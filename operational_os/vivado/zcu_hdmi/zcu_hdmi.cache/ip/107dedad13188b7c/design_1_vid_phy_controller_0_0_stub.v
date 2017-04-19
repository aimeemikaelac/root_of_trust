// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Tue Apr 18 13:19:16 2017
// Host        : SchoolComputer running 64-bit Ubuntu 16.10
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vid_phy_controller_0_0_stub.v
// Design      : design_1_vid_phy_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-i-es2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "design_1_vid_phy_controller_0_0_top,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(tx_refclk_rdy, tx_tmds_clk, tx_video_clk, 
  tx_tmds_clk_p, tx_tmds_clk_n, mgtrefclk1_pad_p_in, mgtrefclk1_pad_n_in, phy_txn_out, 
  phy_txp_out, txoutclk, vid_phy_tx_axi4s_aclk, vid_phy_tx_axi4s_aresetn, 
  vid_phy_tx_axi4s_ch0_tdata, vid_phy_tx_axi4s_ch0_tuser, vid_phy_tx_axi4s_ch0_tvalid, 
  vid_phy_tx_axi4s_ch0_tready, vid_phy_tx_axi4s_ch1_tdata, vid_phy_tx_axi4s_ch1_tuser, 
  vid_phy_tx_axi4s_ch1_tvalid, vid_phy_tx_axi4s_ch1_tready, vid_phy_tx_axi4s_ch2_tdata, 
  vid_phy_tx_axi4s_ch2_tuser, vid_phy_tx_axi4s_ch2_tvalid, vid_phy_tx_axi4s_ch2_tready, 
  irq, vid_phy_sb_aclk, vid_phy_sb_aresetn, vid_phy_status_sb_tx_tdata, 
  vid_phy_status_sb_tx_tvalid, vid_phy_status_sb_tx_tready, vid_phy_axi4lite_awaddr, 
  vid_phy_axi4lite_awprot, vid_phy_axi4lite_awvalid, vid_phy_axi4lite_awready, 
  vid_phy_axi4lite_wdata, vid_phy_axi4lite_wstrb, vid_phy_axi4lite_wvalid, 
  vid_phy_axi4lite_wready, vid_phy_axi4lite_bresp, vid_phy_axi4lite_bvalid, 
  vid_phy_axi4lite_bready, vid_phy_axi4lite_araddr, vid_phy_axi4lite_arprot, 
  vid_phy_axi4lite_arvalid, vid_phy_axi4lite_arready, vid_phy_axi4lite_rdata, 
  vid_phy_axi4lite_rresp, vid_phy_axi4lite_rvalid, vid_phy_axi4lite_rready, 
  vid_phy_axi4lite_aclk, vid_phy_axi4lite_aresetn, drpclk)
/* synthesis syn_black_box black_box_pad_pin="tx_refclk_rdy,tx_tmds_clk,tx_video_clk,tx_tmds_clk_p,tx_tmds_clk_n,mgtrefclk1_pad_p_in,mgtrefclk1_pad_n_in,phy_txn_out[2:0],phy_txp_out[2:0],txoutclk,vid_phy_tx_axi4s_aclk,vid_phy_tx_axi4s_aresetn,vid_phy_tx_axi4s_ch0_tdata[39:0],vid_phy_tx_axi4s_ch0_tuser[0:0],vid_phy_tx_axi4s_ch0_tvalid,vid_phy_tx_axi4s_ch0_tready,vid_phy_tx_axi4s_ch1_tdata[39:0],vid_phy_tx_axi4s_ch1_tuser[0:0],vid_phy_tx_axi4s_ch1_tvalid,vid_phy_tx_axi4s_ch1_tready,vid_phy_tx_axi4s_ch2_tdata[39:0],vid_phy_tx_axi4s_ch2_tuser[0:0],vid_phy_tx_axi4s_ch2_tvalid,vid_phy_tx_axi4s_ch2_tready,irq,vid_phy_sb_aclk,vid_phy_sb_aresetn,vid_phy_status_sb_tx_tdata[1:0],vid_phy_status_sb_tx_tvalid,vid_phy_status_sb_tx_tready,vid_phy_axi4lite_awaddr[9:0],vid_phy_axi4lite_awprot[2:0],vid_phy_axi4lite_awvalid,vid_phy_axi4lite_awready,vid_phy_axi4lite_wdata[31:0],vid_phy_axi4lite_wstrb[3:0],vid_phy_axi4lite_wvalid,vid_phy_axi4lite_wready,vid_phy_axi4lite_bresp[1:0],vid_phy_axi4lite_bvalid,vid_phy_axi4lite_bready,vid_phy_axi4lite_araddr[9:0],vid_phy_axi4lite_arprot[2:0],vid_phy_axi4lite_arvalid,vid_phy_axi4lite_arready,vid_phy_axi4lite_rdata[31:0],vid_phy_axi4lite_rresp[1:0],vid_phy_axi4lite_rvalid,vid_phy_axi4lite_rready,vid_phy_axi4lite_aclk,vid_phy_axi4lite_aresetn,drpclk" */;
  input tx_refclk_rdy;
  output tx_tmds_clk;
  output tx_video_clk;
  output tx_tmds_clk_p;
  output tx_tmds_clk_n;
  input mgtrefclk1_pad_p_in;
  input mgtrefclk1_pad_n_in;
  output [2:0]phy_txn_out;
  output [2:0]phy_txp_out;
  output txoutclk;
  input vid_phy_tx_axi4s_aclk;
  input vid_phy_tx_axi4s_aresetn;
  input [39:0]vid_phy_tx_axi4s_ch0_tdata;
  input [0:0]vid_phy_tx_axi4s_ch0_tuser;
  input vid_phy_tx_axi4s_ch0_tvalid;
  output vid_phy_tx_axi4s_ch0_tready;
  input [39:0]vid_phy_tx_axi4s_ch1_tdata;
  input [0:0]vid_phy_tx_axi4s_ch1_tuser;
  input vid_phy_tx_axi4s_ch1_tvalid;
  output vid_phy_tx_axi4s_ch1_tready;
  input [39:0]vid_phy_tx_axi4s_ch2_tdata;
  input [0:0]vid_phy_tx_axi4s_ch2_tuser;
  input vid_phy_tx_axi4s_ch2_tvalid;
  output vid_phy_tx_axi4s_ch2_tready;
  output irq;
  input vid_phy_sb_aclk;
  input vid_phy_sb_aresetn;
  output [1:0]vid_phy_status_sb_tx_tdata;
  output vid_phy_status_sb_tx_tvalid;
  input vid_phy_status_sb_tx_tready;
  input [9:0]vid_phy_axi4lite_awaddr;
  input [2:0]vid_phy_axi4lite_awprot;
  input vid_phy_axi4lite_awvalid;
  output vid_phy_axi4lite_awready;
  input [31:0]vid_phy_axi4lite_wdata;
  input [3:0]vid_phy_axi4lite_wstrb;
  input vid_phy_axi4lite_wvalid;
  output vid_phy_axi4lite_wready;
  output [1:0]vid_phy_axi4lite_bresp;
  output vid_phy_axi4lite_bvalid;
  input vid_phy_axi4lite_bready;
  input [9:0]vid_phy_axi4lite_araddr;
  input [2:0]vid_phy_axi4lite_arprot;
  input vid_phy_axi4lite_arvalid;
  output vid_phy_axi4lite_arready;
  output [31:0]vid_phy_axi4lite_rdata;
  output [1:0]vid_phy_axi4lite_rresp;
  output vid_phy_axi4lite_rvalid;
  input vid_phy_axi4lite_rready;
  input vid_phy_axi4lite_aclk;
  input vid_phy_axi4lite_aresetn;
  input drpclk;
endmodule
