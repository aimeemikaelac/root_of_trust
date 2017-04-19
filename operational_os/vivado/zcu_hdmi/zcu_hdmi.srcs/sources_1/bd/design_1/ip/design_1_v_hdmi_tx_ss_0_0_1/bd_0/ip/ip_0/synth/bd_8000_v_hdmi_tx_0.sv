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


// IP VLNV: xilinx.com:ip:v_hdmi_tx:1.1
// IP Revision: 0

(* X_CORE_INFO = "v_hdmi_tx_v1_1_0,Vivado 2016.4" *)
(* CHECK_LICENSE_TYPE = "bd_8000_v_hdmi_tx_0,v_hdmi_tx_v1_1_0,{v_hdmi=hardware_evaluation}" *)
(* CORE_GENERATION_INFO = "bd_8000_v_hdmi_tx_0,v_hdmi_tx_v1_1_0,{x_ipProduct=Vivado 2016.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_hdmi_tx,x_ipVersion=1.1,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,x_ipLicense=v_hdmi@2016.04(hardware_evaluation),C_S_AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=9,C_BITS_PER_COMPONENT=8,C_PIXELS_PER_CLOCK=1,C_SIM_SPEEDUP=FALSE}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_8000_v_hdmi_tx_0 (
  s_axi_aclk,
  s_axi_aresetn,
  s_axis_video_aclk,
  s_axis_video_aresetn_in,
  s_axi_awaddr,
  s_axi_awprot,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_araddr,
  s_axi_arprot,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  video_clk,
  link_clk,
  video_vs,
  video_hs,
  video_data,
  video_de,
  s_axis_audio_aresetn,
  s_axis_audio_aclk,
  s_axis_audio_tready,
  s_axis_audio_tid,
  s_axis_audio_tdata,
  s_axis_audio_tvalid,
  acr_cts,
  acr_n,
  acr_valid,
  link_data0,
  link_data1,
  link_data2,
  link_valid0,
  link_valid1,
  link_valid2,
  hpd,
  s_axis_video_aresetn_out,
  video_reset,
  sb_status_data,
  sb_status_valid,
  m_axis_hdcp_aresetn,
  m_axis_hdcp_aclk,
  m_axis_hdcp_aclken,
  m_axis_hdcp_tid,
  m_axis_hdcp_tuser,
  m_axis_hdcp_tdata,
  m_axis_hdcp_tstrb,
  m_axis_hdcp_tvalid,
  m_axis_hdcp_tlast,
  m_axis_hdcp_tready,
  s_axis_hdcp_tid,
  s_axis_hdcp_tuser,
  s_axis_hdcp_tdata,
  s_axis_hdcp_tstrb,
  s_axis_hdcp_tvalid,
  s_axis_hdcp_tlast,
  s_axis_hdcp_tready,
  ddc_scl_i,
  ddc_scl_o,
  ddc_scl_t,
  ddc_sda_i,
  ddc_sda_o,
  ddc_sda_t,
  irq
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXIS_VIDEO_ACLK CLK" *)
input wire s_axis_video_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXIS_VIDEO_ARESETN_IN RST" *)
input wire s_axis_video_aresetn_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [8 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [8 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 VIDEO_CLK CLK" *)
input wire video_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 LINK_CLK CLK" *)
input wire link_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_IN VSYNC" *)
input wire video_vs;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_IN HSYNC" *)
input wire video_hs;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_IN DATA" *)
input wire [23 : 0] video_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_IN ACTIVE_VIDEO" *)
input wire video_de;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AUD_AXI_RST RST" *)
input wire s_axis_audio_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AUD_AXI_CLK CLK" *)
input wire s_axis_audio_aclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TREADY" *)
output wire s_axis_audio_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TID" *)
input wire [2 : 0] s_axis_audio_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TDATA" *)
input wire [31 : 0] s_axis_audio_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TVALID" *)
input wire s_axis_audio_tvalid;
input wire [19 : 0] acr_cts;
input wire [19 : 0] acr_n;
input wire acr_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TDATA" *)
output wire [39 : 0] link_data0;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TDATA" *)
output wire [39 : 0] link_data1;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TDATA" *)
output wire [39 : 0] link_data2;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TVALID" *)
output wire link_valid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TVALID" *)
output wire link_valid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TVALID" *)
output wire link_valid2;
input wire hpd;
output wire s_axis_video_aresetn_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 VIDEO_RESET RST" *)
output wire video_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *)
input wire [1 : 0] sb_status_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *)
input wire sb_status_valid;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 HDCP_AXI_RST RST" *)
output wire m_axis_hdcp_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HDCP_AXI_CLK CLK" *)
output wire m_axis_hdcp_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 HDCP_AXI_CKE CE" *)
output wire m_axis_hdcp_aclken;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TID" *)
output wire m_axis_hdcp_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TUSER" *)
output wire [31 : 0] m_axis_hdcp_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TDATA" *)
output wire [95 : 0] m_axis_hdcp_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TSTRB" *)
output wire [3 : 0] m_axis_hdcp_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TVALID" *)
output wire m_axis_hdcp_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TLAST" *)
output wire m_axis_hdcp_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TREADY" *)
input wire m_axis_hdcp_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TID" *)
input wire s_axis_hdcp_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TUSER" *)
input wire [31 : 0] s_axis_hdcp_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TDATA" *)
input wire [95 : 0] s_axis_hdcp_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TSTRB" *)
input wire [3 : 0] s_axis_hdcp_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TVALID" *)
input wire s_axis_hdcp_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TLAST" *)
input wire s_axis_hdcp_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TREADY" *)
output wire s_axis_hdcp_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I" *)
input wire ddc_scl_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O" *)
output wire ddc_scl_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T" *)
output wire ddc_scl_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I" *)
input wire ddc_sda_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O" *)
output wire ddc_sda_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T" *)
output wire ddc_sda_t;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IRQ_SIGNAL_INTERRUPT INTERRUPT" *)
output wire irq;

  v_hdmi_tx_v1_1_0 #(
    .C_S_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S_AXI_ADDR_WIDTH(9),  // Width of S_AXI address bus
    .C_BITS_PER_COMPONENT(8),
    .C_PIXELS_PER_CLOCK(1),
    .C_SIM_SPEEDUP("FALSE")
  ) inst (
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .s_axis_video_aclk(s_axis_video_aclk),
    .s_axis_video_aresetn_in(s_axis_video_aresetn_in),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .video_clk(video_clk),
    .link_clk(link_clk),
    .video_vs(video_vs),
    .video_hs(video_hs),
    .video_data(video_data),
    .video_de(video_de),
    .s_axis_audio_aresetn(s_axis_audio_aresetn),
    .s_axis_audio_aclk(s_axis_audio_aclk),
    .s_axis_audio_tready(s_axis_audio_tready),
    .s_axis_audio_tid(s_axis_audio_tid),
    .s_axis_audio_tdata(s_axis_audio_tdata),
    .s_axis_audio_tvalid(s_axis_audio_tvalid),
    .acr_cts(acr_cts),
    .acr_n(acr_n),
    .acr_valid(acr_valid),
    .link_data0(link_data0),
    .link_data1(link_data1),
    .link_data2(link_data2),
    .link_valid0(link_valid0),
    .link_valid1(link_valid1),
    .link_valid2(link_valid2),
    .hpd(hpd),
    .s_axis_video_aresetn_out(s_axis_video_aresetn_out),
    .video_reset(video_reset),
    .sb_status_data(sb_status_data),
    .sb_status_valid(sb_status_valid),
    .m_axis_hdcp_aresetn(m_axis_hdcp_aresetn),
    .m_axis_hdcp_aclk(m_axis_hdcp_aclk),
    .m_axis_hdcp_aclken(m_axis_hdcp_aclken),
    .m_axis_hdcp_tid(m_axis_hdcp_tid),
    .m_axis_hdcp_tuser(m_axis_hdcp_tuser),
    .m_axis_hdcp_tdata(m_axis_hdcp_tdata),
    .m_axis_hdcp_tstrb(m_axis_hdcp_tstrb),
    .m_axis_hdcp_tvalid(m_axis_hdcp_tvalid),
    .m_axis_hdcp_tlast(m_axis_hdcp_tlast),
    .m_axis_hdcp_tready(m_axis_hdcp_tready),
    .s_axis_hdcp_tid(s_axis_hdcp_tid),
    .s_axis_hdcp_tuser(s_axis_hdcp_tuser),
    .s_axis_hdcp_tdata(s_axis_hdcp_tdata),
    .s_axis_hdcp_tstrb(s_axis_hdcp_tstrb),
    .s_axis_hdcp_tvalid(s_axis_hdcp_tvalid),
    .s_axis_hdcp_tlast(s_axis_hdcp_tlast),
    .s_axis_hdcp_tready(s_axis_hdcp_tready),
    .ddc_scl_i(ddc_scl_i),
    .ddc_scl_o(ddc_scl_o),
    .ddc_scl_t(ddc_scl_t),
    .ddc_sda_i(ddc_sda_i),
    .ddc_sda_o(ddc_sda_o),
    .ddc_sda_t(ddc_sda_t),
    .irq(irq)
  );
endmodule
