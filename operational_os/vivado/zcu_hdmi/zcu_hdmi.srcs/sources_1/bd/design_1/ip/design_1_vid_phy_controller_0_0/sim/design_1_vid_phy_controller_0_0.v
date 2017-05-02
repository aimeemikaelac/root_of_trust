// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:vid_phy_controller:2.0
// IP Revision: 4

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_vid_phy_controller_0_0 (
  tx_refclk_rdy,
  tx_tmds_clk,
  tx_video_clk,
  tx_tmds_clk_p,
  tx_tmds_clk_n,
  mgtrefclk0_pad_p_in,
  mgtrefclk0_pad_n_in,
  phy_txn_out,
  phy_txp_out,
  txoutclk,
  vid_phy_tx_axi4s_aclk,
  vid_phy_tx_axi4s_aresetn,
  vid_phy_tx_axi4s_ch0_tdata,
  vid_phy_tx_axi4s_ch0_tuser,
  vid_phy_tx_axi4s_ch0_tvalid,
  vid_phy_tx_axi4s_ch0_tready,
  vid_phy_tx_axi4s_ch1_tdata,
  vid_phy_tx_axi4s_ch1_tuser,
  vid_phy_tx_axi4s_ch1_tvalid,
  vid_phy_tx_axi4s_ch1_tready,
  vid_phy_tx_axi4s_ch2_tdata,
  vid_phy_tx_axi4s_ch2_tuser,
  vid_phy_tx_axi4s_ch2_tvalid,
  vid_phy_tx_axi4s_ch2_tready,
  irq,
  vid_phy_sb_aclk,
  vid_phy_sb_aresetn,
  vid_phy_status_sb_tx_tdata,
  vid_phy_status_sb_tx_tvalid,
  vid_phy_status_sb_tx_tready,
  vid_phy_axi4lite_awaddr,
  vid_phy_axi4lite_awprot,
  vid_phy_axi4lite_awvalid,
  vid_phy_axi4lite_awready,
  vid_phy_axi4lite_wdata,
  vid_phy_axi4lite_wstrb,
  vid_phy_axi4lite_wvalid,
  vid_phy_axi4lite_wready,
  vid_phy_axi4lite_bresp,
  vid_phy_axi4lite_bvalid,
  vid_phy_axi4lite_bready,
  vid_phy_axi4lite_araddr,
  vid_phy_axi4lite_arprot,
  vid_phy_axi4lite_arvalid,
  vid_phy_axi4lite_arready,
  vid_phy_axi4lite_rdata,
  vid_phy_axi4lite_rresp,
  vid_phy_axi4lite_rvalid,
  vid_phy_axi4lite_rready,
  vid_phy_axi4lite_aclk,
  vid_phy_axi4lite_aresetn,
  drpclk
);

input wire tx_refclk_rdy;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_tmds_clk CLK" *)
output wire tx_tmds_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_video_clk CLK" *)
output wire tx_video_clk;
output wire tx_tmds_clk_p;
output wire tx_tmds_clk_n;
input wire mgtrefclk0_pad_p_in;
input wire mgtrefclk0_pad_n_in;
output wire [2 : 0] phy_txn_out;
output wire [2 : 0] phy_txp_out;
output wire txoutclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_phy_tx_axi4s_CLK CLK" *)
input wire vid_phy_tx_axi4s_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_phy_tx_axi4s_RST RST" *)
input wire vid_phy_tx_axi4s_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TDATA" *)
input wire [39 : 0] vid_phy_tx_axi4s_ch0_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TUSER" *)
input wire [0 : 0] vid_phy_tx_axi4s_ch0_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TVALID" *)
input wire vid_phy_tx_axi4s_ch0_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TREADY" *)
output wire vid_phy_tx_axi4s_ch0_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TDATA" *)
input wire [39 : 0] vid_phy_tx_axi4s_ch1_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TUSER" *)
input wire [0 : 0] vid_phy_tx_axi4s_ch1_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TVALID" *)
input wire vid_phy_tx_axi4s_ch1_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TREADY" *)
output wire vid_phy_tx_axi4s_ch1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TDATA" *)
input wire [39 : 0] vid_phy_tx_axi4s_ch2_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TUSER" *)
input wire [0 : 0] vid_phy_tx_axi4s_ch2_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TVALID" *)
input wire vid_phy_tx_axi4s_ch2_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TREADY" *)
output wire vid_phy_tx_axi4s_ch2_tready;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT" *)
output wire irq;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_phy_sb_CLK CLK" *)
input wire vid_phy_sb_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_phy_sb_RST RST" *)
input wire vid_phy_sb_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx TDATA" *)
output wire [1 : 0] vid_phy_status_sb_tx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx TVALID" *)
output wire vid_phy_status_sb_tx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx TREADY" *)
input wire vid_phy_status_sb_tx_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWADDR" *)
input wire [9 : 0] vid_phy_axi4lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWPROT" *)
input wire [2 : 0] vid_phy_axi4lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWVALID" *)
input wire vid_phy_axi4lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWREADY" *)
output wire vid_phy_axi4lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WDATA" *)
input wire [31 : 0] vid_phy_axi4lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WSTRB" *)
input wire [3 : 0] vid_phy_axi4lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WVALID" *)
input wire vid_phy_axi4lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WREADY" *)
output wire vid_phy_axi4lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite BRESP" *)
output wire [1 : 0] vid_phy_axi4lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite BVALID" *)
output wire vid_phy_axi4lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite BREADY" *)
input wire vid_phy_axi4lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARADDR" *)
input wire [9 : 0] vid_phy_axi4lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARPROT" *)
input wire [2 : 0] vid_phy_axi4lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARVALID" *)
input wire vid_phy_axi4lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARREADY" *)
output wire vid_phy_axi4lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RDATA" *)
output wire [31 : 0] vid_phy_axi4lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RRESP" *)
output wire [1 : 0] vid_phy_axi4lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RVALID" *)
output wire vid_phy_axi4lite_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RREADY" *)
input wire vid_phy_axi4lite_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_phy_axi4lite_CLK CLK" *)
input wire vid_phy_axi4lite_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_phy_axi4lite_RST RST" *)
input wire vid_phy_axi4lite_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 drpclk CLK" *)
input wire drpclk;

  design_1_vid_phy_controller_0_0_top #(
    .C_COMPONENT_NAME("design_1_vid_phy_controller_0_0"),
    .C_FAMILY("zynquplus"),
    .C_DEVICE("xczu9eg"),
    .C_SILICON_REVISION("0"),
    .C_SPEEDGRADE("-2"),
    .C_SupportLevel(1),
    .C_TransceiverControl(1'B0),
    .c_sub_core_name("design_1_vid_phy_controller_0_0_gtwrapper"),
    .C_Tx_Protocol(1),  // Tx Protocol
    .C_Rx_Protocol(3),  // Rx Protocol
    .C_Tx_No_Of_Channels(3),  // No Of Tx Channels
    .C_Rx_No_Of_Channels(3),  // No Of Rx Channels
    .C_TX_PLL_SELECTION(0),  // Tx PLL Selection
    .C_TX_REFCLK_SEL(0),  // Tx Ref Clk Selection
    .C_RX_PLL_SELECTION(6),  // Rx PLL Selection
    .C_RX_REFCLK_SEL(1),  // Rx Ref Clk Selection
    .C_NIDRU_REFCLK_SEL(0),  // Ni DRU Ref Clk Selection
    .C_vid_phy_tx_axi4s_ch_TDATA_WIDTH(40),  // Tx Data Width
    .C_vid_phy_tx_axi4s_ch_INT_TDATA_WIDTH(40),  // Tx Int Data Width
    .C_vid_phy_tx_axi4s_ch_TUSER_WIDTH(1),  // Tx Data Width
    .C_vid_phy_rx_axi4s_ch_TDATA_WIDTH(40),  // Rx Data Width
    .C_vid_phy_rx_axi4s_ch_INT_TDATA_WIDTH(40),  // Rx Int Data Width
    .C_vid_phy_rx_axi4s_ch_TUSER_WIDTH(1),  // Rx Data Width
    .C_vid_phy_control_sb_tx_TDATA_WIDTH(1),  // Tx Control Data Width
    .C_vid_phy_status_sb_tx_TDATA_WIDTH(2),  // Tx Status Data Width
    .C_vid_phy_control_sb_rx_TDATA_WIDTH(1),  // Rx Control Data Width
    .C_vid_phy_status_sb_rx_TDATA_WIDTH(1),  // Rx Status Data Width
    .C_vid_phy_axi4lite_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_vid_phy_axi4lite_ADDR_WIDTH(10),  // Width of S_AXI address bus
    .C_NIDRU(0),  // Include NIDRU
    .Tx_Buffer_Bypass(1),  // Bypass TX Buffer
    .C_INPUT_PIXELS_PER_CLOCK(2),  // Number of pixels per clock
    .C_Hdmi_Fast_Switch(1)  // HDMI Fast Switching
  ) inst (
    .tx_refclk_rdy(tx_refclk_rdy),
    .tx_tmds_clk(tx_tmds_clk),
    .tx_video_clk(tx_video_clk),
    .tx_tmds_clk_p(tx_tmds_clk_p),
    .tx_tmds_clk_n(tx_tmds_clk_n),
    .rx_tmds_clk(),
    .rx_video_clk(),
    .rx_tmds_clk_p(),
    .rx_tmds_clk_n(),
    .mgtrefclk0_pad_p_in(mgtrefclk0_pad_p_in),
    .mgtrefclk0_pad_n_in(mgtrefclk0_pad_n_in),
    .mgtrefclk1_pad_p_in(1'B0),
    .mgtrefclk1_pad_n_in(1'B0),
    .mgtrefclk0_in(1'B0),
    .mgtrefclk1_in(1'B0),
    .mgtrefclk0_odiv2_in(1'B0),
    .mgtrefclk1_odiv2_in(1'B0),
    .gtnorthrefclk0_in(1'B0),
    .gtnorthrefclk0_odiv2_in(1'B0),
    .gtnorthrefclk1_in(1'B0),
    .gtnorthrefclk1_odiv2_in(1'B0),
    .gtsouthrefclk0_in(1'B0),
    .gtsouthrefclk0_odiv2_in(1'B0),
    .gtsouthrefclk1_in(1'B0),
    .gtsouthrefclk1_odiv2_in(1'B0),
    .gtnorthrefclk00_in(1'B0),
    .gtnorthrefclk01_in(1'B0),
    .gtnorthrefclk10_in(1'B0),
    .gtnorthrefclk11_in(1'B0),
    .gtsouthrefclk00_in(1'B0),
    .gtsouthrefclk01_in(1'B0),
    .gtsouthrefclk10_in(1'B0),
    .gtsouthrefclk11_in(1'B0),
    .gteastrefclk0_in(1'B0),
    .gteastrefclk1_in(1'B0),
    .gtwestrefclk0_in(1'B0),
    .gtwestrefclk1_in(1'B0),
    .txrefclk_ceb(),
    .rxrefclk_ceb(),
    .phy_rxn_in(3'B1),
    .phy_rxp_in(3'B0),
    .phy_txn_out(phy_txn_out),
    .phy_txp_out(phy_txp_out),
    .rxoutclk(),
    .txoutclk(txoutclk),
    .vid_phy_tx_axi4s_aclk(vid_phy_tx_axi4s_aclk),
    .vid_phy_tx_axi4s_aresetn(vid_phy_tx_axi4s_aresetn),
    .vid_phy_tx_axi4s_ch0_tdata(vid_phy_tx_axi4s_ch0_tdata),
    .vid_phy_tx_axi4s_ch0_tuser(vid_phy_tx_axi4s_ch0_tuser),
    .vid_phy_tx_axi4s_ch0_tvalid(vid_phy_tx_axi4s_ch0_tvalid),
    .vid_phy_tx_axi4s_ch0_tready(vid_phy_tx_axi4s_ch0_tready),
    .vid_phy_tx_axi4s_ch1_tdata(vid_phy_tx_axi4s_ch1_tdata),
    .vid_phy_tx_axi4s_ch1_tuser(vid_phy_tx_axi4s_ch1_tuser),
    .vid_phy_tx_axi4s_ch1_tvalid(vid_phy_tx_axi4s_ch1_tvalid),
    .vid_phy_tx_axi4s_ch1_tready(vid_phy_tx_axi4s_ch1_tready),
    .vid_phy_tx_axi4s_ch2_tdata(vid_phy_tx_axi4s_ch2_tdata),
    .vid_phy_tx_axi4s_ch2_tuser(vid_phy_tx_axi4s_ch2_tuser),
    .vid_phy_tx_axi4s_ch2_tvalid(vid_phy_tx_axi4s_ch2_tvalid),
    .vid_phy_tx_axi4s_ch2_tready(vid_phy_tx_axi4s_ch2_tready),
    .vid_phy_tx_axi4s_ch3_tdata(40'B0),
    .vid_phy_tx_axi4s_ch3_tuser(1'B0),
    .vid_phy_tx_axi4s_ch3_tvalid(1'B0),
    .vid_phy_tx_axi4s_ch3_tready(),
    .vid_phy_rx_axi4s_ch0_tdata(),
    .vid_phy_rx_axi4s_ch0_tuser(),
    .vid_phy_rx_axi4s_ch0_tvalid(),
    .vid_phy_rx_axi4s_ch0_tready(1'B0),
    .vid_phy_rx_axi4s_aclk(1'B0),
    .vid_phy_rx_axi4s_aresetn(1'B1),
    .vid_phy_rx_axi4s_ch1_tdata(),
    .vid_phy_rx_axi4s_ch1_tuser(),
    .vid_phy_rx_axi4s_ch1_tvalid(),
    .vid_phy_rx_axi4s_ch1_tready(1'B0),
    .vid_phy_rx_axi4s_ch2_tdata(),
    .vid_phy_rx_axi4s_ch2_tuser(),
    .vid_phy_rx_axi4s_ch2_tvalid(),
    .vid_phy_rx_axi4s_ch2_tready(1'B0),
    .vid_phy_rx_axi4s_ch3_tdata(),
    .vid_phy_rx_axi4s_ch3_tuser(),
    .vid_phy_rx_axi4s_ch3_tvalid(),
    .vid_phy_rx_axi4s_ch3_tready(1'B0),
    .irq(irq),
    .vid_phy_control_sb_tx_tdata(1'B0),
    .vid_phy_control_sb_tx_tvalid(1'B0),
    .vid_phy_control_sb_tx_tready(),
    .vid_phy_sb_aclk(vid_phy_sb_aclk),
    .vid_phy_sb_aresetn(vid_phy_sb_aresetn),
    .vid_phy_status_sb_tx_tdata(vid_phy_status_sb_tx_tdata),
    .vid_phy_status_sb_tx_tvalid(vid_phy_status_sb_tx_tvalid),
    .vid_phy_status_sb_tx_tready(vid_phy_status_sb_tx_tready),
    .vid_phy_control_sb_rx_tdata(1'B0),
    .vid_phy_control_sb_rx_tvalid(1'B0),
    .vid_phy_control_sb_rx_tready(),
    .vid_phy_status_sb_rx_tdata(),
    .vid_phy_status_sb_rx_tvalid(),
    .vid_phy_status_sb_rx_tready(1'B0),
    .vid_phy_axi4lite_awaddr(vid_phy_axi4lite_awaddr),
    .vid_phy_axi4lite_awprot(vid_phy_axi4lite_awprot),
    .vid_phy_axi4lite_awvalid(vid_phy_axi4lite_awvalid),
    .vid_phy_axi4lite_awready(vid_phy_axi4lite_awready),
    .vid_phy_axi4lite_wdata(vid_phy_axi4lite_wdata),
    .vid_phy_axi4lite_wstrb(vid_phy_axi4lite_wstrb),
    .vid_phy_axi4lite_wvalid(vid_phy_axi4lite_wvalid),
    .vid_phy_axi4lite_wready(vid_phy_axi4lite_wready),
    .vid_phy_axi4lite_bresp(vid_phy_axi4lite_bresp),
    .vid_phy_axi4lite_bvalid(vid_phy_axi4lite_bvalid),
    .vid_phy_axi4lite_bready(vid_phy_axi4lite_bready),
    .vid_phy_axi4lite_araddr(vid_phy_axi4lite_araddr),
    .vid_phy_axi4lite_arprot(vid_phy_axi4lite_arprot),
    .vid_phy_axi4lite_arvalid(vid_phy_axi4lite_arvalid),
    .vid_phy_axi4lite_arready(vid_phy_axi4lite_arready),
    .vid_phy_axi4lite_rdata(vid_phy_axi4lite_rdata),
    .vid_phy_axi4lite_rresp(vid_phy_axi4lite_rresp),
    .vid_phy_axi4lite_rvalid(vid_phy_axi4lite_rvalid),
    .vid_phy_axi4lite_rready(vid_phy_axi4lite_rready),
    .vid_phy_axi4lite_aclk(vid_phy_axi4lite_aclk),
    .vid_phy_axi4lite_aresetn(vid_phy_axi4lite_aresetn),
    .drpclk(drpclk)
  );
endmodule
