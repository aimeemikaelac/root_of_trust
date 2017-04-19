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


// IP VLNV: xilinx.com:ip:v_hdmi_tx_ss:2.0
// IP Revision: 3

(* X_CORE_INFO = "bd_8000,Vivado 2016.4" *)
(* CHECK_LICENSE_TYPE = "design_1_v_hdmi_tx_ss_0_0,bd_8000,{v_hdmi=hardware_evaluation}" *)
(* CORE_GENERATION_INFO = "design_1_v_hdmi_tx_ss_0_0,bd_8000,{x_ipProduct=Vivado 2016.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_hdmi_tx_ss,x_ipVersion=2.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,x_ipLicense=v_hdmi@2016.04(hardware_evaluation),Component_Name=design_1_v_hdmi_tx_ss_0_0,C_INCLUDE_HDCP_1_4=false,C_INCLUDE_HDCP_2_2=false,C_MAX_BITS_PER_COMPONENT=8,C_INPUT_PIXELS_PER_CLOCK=1,C_HYSTERESIS_LEVEL=12,C_ADDR_WIDTH=10,C_INCLUDE_LOW_RESO_VID=false,C_VID_INTERFACE=0,C_INCLUDE_YUV420_SUP=fal\
se,C_VALIDATION_ENABLE=false,C_HDMI_FAST_SWITCH=false,C_HPD_INVERT=false}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_v_hdmi_tx_ss_0_0 (
  s_axi_cpu_aclk,
  s_axi_cpu_aresetn,
  link_clk,
  s_axis_audio_aclk,
  s_axis_audio_aresetn,
  video_clk,
  acr_cts,
  acr_n,
  acr_valid,
  hpd,
  irq,
  fid,
  locked,
  s_axis_video_aclk,
  s_axis_video_aresetn,
  VIDEO_IN_tdata,
  VIDEO_IN_tlast,
  VIDEO_IN_tready,
  VIDEO_IN_tuser,
  VIDEO_IN_tvalid,
  SB_STATUS_IN_tdata,
  SB_STATUS_IN_tvalid,
  AUDIO_IN_tdata,
  AUDIO_IN_tid,
  AUDIO_IN_tready,
  AUDIO_IN_tvalid,
  S_AXI_CPU_IN_awaddr,
  S_AXI_CPU_IN_awprot,
  S_AXI_CPU_IN_awvalid,
  S_AXI_CPU_IN_awready,
  S_AXI_CPU_IN_wdata,
  S_AXI_CPU_IN_wstrb,
  S_AXI_CPU_IN_wvalid,
  S_AXI_CPU_IN_wready,
  S_AXI_CPU_IN_bresp,
  S_AXI_CPU_IN_bvalid,
  S_AXI_CPU_IN_bready,
  S_AXI_CPU_IN_araddr,
  S_AXI_CPU_IN_arprot,
  S_AXI_CPU_IN_arvalid,
  S_AXI_CPU_IN_arready,
  S_AXI_CPU_IN_rdata,
  S_AXI_CPU_IN_rresp,
  S_AXI_CPU_IN_rvalid,
  S_AXI_CPU_IN_rready,
  DDC_OUT_scl_i,
  DDC_OUT_scl_o,
  DDC_OUT_scl_t,
  DDC_OUT_sda_i,
  DDC_OUT_sda_o,
  DDC_OUT_sda_t,
  LINK_DATA0_OUT_tdata,
  LINK_DATA0_OUT_tvalid,
  LINK_DATA1_OUT_tdata,
  LINK_DATA1_OUT_tvalid,
  LINK_DATA2_OUT_tdata,
  LINK_DATA2_OUT_tvalid
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axi_cpu_aclk CLK" *)
input wire s_axi_cpu_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_cpu_aresetn RST" *)
input wire s_axi_cpu_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.link_clk CLK" *)
input wire link_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_audio_aclk CLK" *)
input wire s_axis_audio_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_audio_aresetn RST" *)
input wire s_axis_audio_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.video_clk CLK" *)
input wire video_clk;
input wire [19 : 0] acr_cts;
input wire [19 : 0] acr_n;
input wire acr_valid;
input wire hpd;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.irq INTERRUPT" *)
output wire irq;
input wire fid;
output wire locked;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_video_aclk CLK" *)
input wire s_axis_video_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_video_aresetn RST" *)
input wire s_axis_video_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TDATA" *)
input wire [23 : 0] VIDEO_IN_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TLAST" *)
input wire VIDEO_IN_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TREADY" *)
output wire VIDEO_IN_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TUSER" *)
input wire VIDEO_IN_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TVALID" *)
input wire VIDEO_IN_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *)
input wire [1 : 0] SB_STATUS_IN_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *)
input wire SB_STATUS_IN_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TDATA" *)
input wire [31 : 0] AUDIO_IN_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TID" *)
input wire [2 : 0] AUDIO_IN_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TREADY" *)
output wire AUDIO_IN_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TVALID" *)
input wire AUDIO_IN_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR" *)
input wire [16 : 0] S_AXI_CPU_IN_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT" *)
input wire [2 : 0] S_AXI_CPU_IN_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID" *)
input wire [0 : 0] S_AXI_CPU_IN_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY" *)
output wire [0 : 0] S_AXI_CPU_IN_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA" *)
input wire [31 : 0] S_AXI_CPU_IN_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB" *)
input wire [3 : 0] S_AXI_CPU_IN_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID" *)
input wire [0 : 0] S_AXI_CPU_IN_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY" *)
output wire [0 : 0] S_AXI_CPU_IN_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP" *)
output wire [1 : 0] S_AXI_CPU_IN_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID" *)
output wire [0 : 0] S_AXI_CPU_IN_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY" *)
input wire [0 : 0] S_AXI_CPU_IN_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR" *)
input wire [16 : 0] S_AXI_CPU_IN_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT" *)
input wire [2 : 0] S_AXI_CPU_IN_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID" *)
input wire [0 : 0] S_AXI_CPU_IN_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY" *)
output wire [0 : 0] S_AXI_CPU_IN_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA" *)
output wire [31 : 0] S_AXI_CPU_IN_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP" *)
output wire [1 : 0] S_AXI_CPU_IN_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID" *)
output wire [0 : 0] S_AXI_CPU_IN_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY" *)
input wire [0 : 0] S_AXI_CPU_IN_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I" *)
input wire DDC_OUT_scl_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O" *)
output wire DDC_OUT_scl_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T" *)
output wire DDC_OUT_scl_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I" *)
input wire DDC_OUT_sda_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O" *)
output wire DDC_OUT_sda_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T" *)
output wire DDC_OUT_sda_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TDATA" *)
output wire [39 : 0] LINK_DATA0_OUT_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TVALID" *)
output wire LINK_DATA0_OUT_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TDATA" *)
output wire [39 : 0] LINK_DATA1_OUT_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TVALID" *)
output wire LINK_DATA1_OUT_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TDATA" *)
output wire [39 : 0] LINK_DATA2_OUT_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TVALID" *)
output wire LINK_DATA2_OUT_tvalid;

  bd_8000 inst (
    .s_axi_cpu_aclk(s_axi_cpu_aclk),
    .s_axi_cpu_aresetn(s_axi_cpu_aresetn),
    .link_clk(link_clk),
    .s_axis_audio_aclk(s_axis_audio_aclk),
    .s_axis_audio_aresetn(s_axis_audio_aresetn),
    .video_clk(video_clk),
    .acr_cts(acr_cts),
    .acr_n(acr_n),
    .acr_valid(acr_valid),
    .hpd(hpd),
    .irq(irq),
    .fid(fid),
    .locked(locked),
    .s_axis_video_aclk(s_axis_video_aclk),
    .s_axis_video_aresetn(s_axis_video_aresetn),
    .VIDEO_IN_tdata(VIDEO_IN_tdata),
    .VIDEO_IN_tlast(VIDEO_IN_tlast),
    .VIDEO_IN_tready(VIDEO_IN_tready),
    .VIDEO_IN_tuser(VIDEO_IN_tuser),
    .VIDEO_IN_tvalid(VIDEO_IN_tvalid),
    .SB_STATUS_IN_tdata(SB_STATUS_IN_tdata),
    .SB_STATUS_IN_tvalid(SB_STATUS_IN_tvalid),
    .AUDIO_IN_tdata(AUDIO_IN_tdata),
    .AUDIO_IN_tid(AUDIO_IN_tid),
    .AUDIO_IN_tready(AUDIO_IN_tready),
    .AUDIO_IN_tvalid(AUDIO_IN_tvalid),
    .S_AXI_CPU_IN_awaddr(S_AXI_CPU_IN_awaddr),
    .S_AXI_CPU_IN_awprot(S_AXI_CPU_IN_awprot),
    .S_AXI_CPU_IN_awvalid(S_AXI_CPU_IN_awvalid),
    .S_AXI_CPU_IN_awready(S_AXI_CPU_IN_awready),
    .S_AXI_CPU_IN_wdata(S_AXI_CPU_IN_wdata),
    .S_AXI_CPU_IN_wstrb(S_AXI_CPU_IN_wstrb),
    .S_AXI_CPU_IN_wvalid(S_AXI_CPU_IN_wvalid),
    .S_AXI_CPU_IN_wready(S_AXI_CPU_IN_wready),
    .S_AXI_CPU_IN_bresp(S_AXI_CPU_IN_bresp),
    .S_AXI_CPU_IN_bvalid(S_AXI_CPU_IN_bvalid),
    .S_AXI_CPU_IN_bready(S_AXI_CPU_IN_bready),
    .S_AXI_CPU_IN_araddr(S_AXI_CPU_IN_araddr),
    .S_AXI_CPU_IN_arprot(S_AXI_CPU_IN_arprot),
    .S_AXI_CPU_IN_arvalid(S_AXI_CPU_IN_arvalid),
    .S_AXI_CPU_IN_arready(S_AXI_CPU_IN_arready),
    .S_AXI_CPU_IN_rdata(S_AXI_CPU_IN_rdata),
    .S_AXI_CPU_IN_rresp(S_AXI_CPU_IN_rresp),
    .S_AXI_CPU_IN_rvalid(S_AXI_CPU_IN_rvalid),
    .S_AXI_CPU_IN_rready(S_AXI_CPU_IN_rready),
    .DDC_OUT_scl_i(DDC_OUT_scl_i),
    .DDC_OUT_scl_o(DDC_OUT_scl_o),
    .DDC_OUT_scl_t(DDC_OUT_scl_t),
    .DDC_OUT_sda_i(DDC_OUT_sda_i),
    .DDC_OUT_sda_o(DDC_OUT_sda_o),
    .DDC_OUT_sda_t(DDC_OUT_sda_t),
    .LINK_DATA0_OUT_tdata(LINK_DATA0_OUT_tdata),
    .LINK_DATA0_OUT_tvalid(LINK_DATA0_OUT_tvalid),
    .LINK_DATA1_OUT_tdata(LINK_DATA1_OUT_tdata),
    .LINK_DATA1_OUT_tvalid(LINK_DATA1_OUT_tvalid),
    .LINK_DATA2_OUT_tdata(LINK_DATA2_OUT_tdata),
    .LINK_DATA2_OUT_tvalid(LINK_DATA2_OUT_tvalid)
  );
endmodule
