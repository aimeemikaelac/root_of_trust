// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Thu Apr 20 21:09:43 2017
// Host        : SchoolComputer running 64-bit Ubuntu 16.10
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_v_hdmi_tx_ss_0_0_sim_netlist.v
// Design      : design_1_v_hdmi_tx_ss_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-i-es2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "design_1_v_hdmi_tx_ss_0_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000
   (AUDIO_IN_tdata,
    AUDIO_IN_tid,
    AUDIO_IN_tready,
    AUDIO_IN_tvalid,
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
    LINK_DATA2_OUT_tvalid,
    SB_STATUS_IN_tdata,
    SB_STATUS_IN_tvalid,
    S_AXI_CPU_IN_araddr,
    S_AXI_CPU_IN_arprot,
    S_AXI_CPU_IN_arready,
    S_AXI_CPU_IN_arvalid,
    S_AXI_CPU_IN_awaddr,
    S_AXI_CPU_IN_awprot,
    S_AXI_CPU_IN_awready,
    S_AXI_CPU_IN_awvalid,
    S_AXI_CPU_IN_bready,
    S_AXI_CPU_IN_bresp,
    S_AXI_CPU_IN_bvalid,
    S_AXI_CPU_IN_rdata,
    S_AXI_CPU_IN_rready,
    S_AXI_CPU_IN_rresp,
    S_AXI_CPU_IN_rvalid,
    S_AXI_CPU_IN_wdata,
    S_AXI_CPU_IN_wready,
    S_AXI_CPU_IN_wstrb,
    S_AXI_CPU_IN_wvalid,
    VIDEO_IN_tdata,
    VIDEO_IN_tlast,
    VIDEO_IN_tready,
    VIDEO_IN_tuser,
    VIDEO_IN_tvalid,
    acr_cts,
    acr_n,
    acr_valid,
    fid,
    hpd,
    irq,
    link_clk,
    locked,
    s_axi_cpu_aclk,
    s_axi_cpu_aresetn,
    s_axis_audio_aclk,
    s_axis_audio_aresetn,
    s_axis_video_aclk,
    s_axis_video_aresetn,
    video_clk);
  input [31:0]AUDIO_IN_tdata;
  input [2:0]AUDIO_IN_tid;
  output AUDIO_IN_tready;
  input AUDIO_IN_tvalid;
  input DDC_OUT_scl_i;
  output DDC_OUT_scl_o;
  output DDC_OUT_scl_t;
  input DDC_OUT_sda_i;
  output DDC_OUT_sda_o;
  output DDC_OUT_sda_t;
  output [39:0]LINK_DATA0_OUT_tdata;
  output LINK_DATA0_OUT_tvalid;
  output [39:0]LINK_DATA1_OUT_tdata;
  output LINK_DATA1_OUT_tvalid;
  output [39:0]LINK_DATA2_OUT_tdata;
  output LINK_DATA2_OUT_tvalid;
  input [1:0]SB_STATUS_IN_tdata;
  input SB_STATUS_IN_tvalid;
  input [16:0]S_AXI_CPU_IN_araddr;
  input [2:0]S_AXI_CPU_IN_arprot;
  output [0:0]S_AXI_CPU_IN_arready;
  input [0:0]S_AXI_CPU_IN_arvalid;
  input [16:0]S_AXI_CPU_IN_awaddr;
  input [2:0]S_AXI_CPU_IN_awprot;
  output [0:0]S_AXI_CPU_IN_awready;
  input [0:0]S_AXI_CPU_IN_awvalid;
  input [0:0]S_AXI_CPU_IN_bready;
  output [1:0]S_AXI_CPU_IN_bresp;
  output [0:0]S_AXI_CPU_IN_bvalid;
  output [31:0]S_AXI_CPU_IN_rdata;
  input [0:0]S_AXI_CPU_IN_rready;
  output [1:0]S_AXI_CPU_IN_rresp;
  output [0:0]S_AXI_CPU_IN_rvalid;
  input [31:0]S_AXI_CPU_IN_wdata;
  output [0:0]S_AXI_CPU_IN_wready;
  input [3:0]S_AXI_CPU_IN_wstrb;
  input [0:0]S_AXI_CPU_IN_wvalid;
  input [23:0]VIDEO_IN_tdata;
  input VIDEO_IN_tlast;
  output VIDEO_IN_tready;
  input VIDEO_IN_tuser;
  input VIDEO_IN_tvalid;
  input [19:0]acr_cts;
  input [19:0]acr_n;
  input acr_valid;
  input fid;
  input hpd;
  output irq;
  input link_clk;
  output locked;
  input s_axi_cpu_aclk;
  input s_axi_cpu_aresetn;
  input s_axis_audio_aclk;
  input s_axis_audio_aresetn;
  input s_axis_video_aclk;
  input s_axis_video_aresetn;
  input video_clk;

  wire [31:0]AUDIO_IN_tdata;
  wire [2:0]AUDIO_IN_tid;
  wire AUDIO_IN_tready;
  wire AUDIO_IN_tvalid;
  wire DDC_OUT_scl_i;
  wire DDC_OUT_scl_o;
  wire DDC_OUT_scl_t;
  wire DDC_OUT_sda_i;
  wire DDC_OUT_sda_o;
  wire DDC_OUT_sda_t;
  wire [39:0]LINK_DATA0_OUT_tdata;
  wire LINK_DATA0_OUT_tvalid;
  wire [39:0]LINK_DATA1_OUT_tdata;
  wire LINK_DATA1_OUT_tvalid;
  wire [39:0]LINK_DATA2_OUT_tdata;
  wire LINK_DATA2_OUT_tvalid;
  wire [1:0]SB_STATUS_IN_tdata;
  wire SB_STATUS_IN_tvalid;
  wire [16:0]S_AXI_CPU_IN_araddr;
  wire [2:0]S_AXI_CPU_IN_arprot;
  wire [0:0]S_AXI_CPU_IN_arready;
  wire [0:0]S_AXI_CPU_IN_arvalid;
  wire [16:0]S_AXI_CPU_IN_awaddr;
  wire [2:0]S_AXI_CPU_IN_awprot;
  wire [0:0]S_AXI_CPU_IN_awready;
  wire [0:0]S_AXI_CPU_IN_awvalid;
  wire [0:0]S_AXI_CPU_IN_bready;
  wire [1:0]S_AXI_CPU_IN_bresp;
  wire [0:0]S_AXI_CPU_IN_bvalid;
  wire [31:0]S_AXI_CPU_IN_rdata;
  wire [0:0]S_AXI_CPU_IN_rready;
  wire [1:0]S_AXI_CPU_IN_rresp;
  wire [0:0]S_AXI_CPU_IN_rvalid;
  wire [31:0]S_AXI_CPU_IN_wdata;
  wire [0:0]S_AXI_CPU_IN_wready;
  wire [3:0]S_AXI_CPU_IN_wstrb;
  wire [0:0]S_AXI_CPU_IN_wvalid;
  wire [23:0]VIDEO_IN_tdata;
  wire VIDEO_IN_tlast;
  wire VIDEO_IN_tready;
  wire VIDEO_IN_tuser;
  wire VIDEO_IN_tvalid;
  wire [19:0]acr_cts;
  wire [19:0]acr_n;
  wire acr_valid;
  wire fid;
  wire hpd;
  wire [8:0]intf_net_axi_crossbar_M00_AXI_ARADDR;
  wire [2:0]intf_net_axi_crossbar_M00_AXI_ARPROT;
  wire intf_net_axi_crossbar_M00_AXI_ARREADY;
  wire intf_net_axi_crossbar_M00_AXI_ARVALID;
  wire [8:0]intf_net_axi_crossbar_M00_AXI_AWADDR;
  wire [2:0]intf_net_axi_crossbar_M00_AXI_AWPROT;
  wire intf_net_axi_crossbar_M00_AXI_AWREADY;
  wire intf_net_axi_crossbar_M00_AXI_AWVALID;
  wire intf_net_axi_crossbar_M00_AXI_BREADY;
  wire [1:0]intf_net_axi_crossbar_M00_AXI_BRESP;
  wire intf_net_axi_crossbar_M00_AXI_BVALID;
  wire [31:0]intf_net_axi_crossbar_M00_AXI_RDATA;
  wire intf_net_axi_crossbar_M00_AXI_RREADY;
  wire [1:0]intf_net_axi_crossbar_M00_AXI_RRESP;
  wire intf_net_axi_crossbar_M00_AXI_RVALID;
  wire [31:0]intf_net_axi_crossbar_M00_AXI_WDATA;
  wire intf_net_axi_crossbar_M00_AXI_WREADY;
  wire [3:0]intf_net_axi_crossbar_M00_AXI_WSTRB;
  wire intf_net_axi_crossbar_M00_AXI_WVALID;
  wire [8:0]intf_net_axi_crossbar_M01_AXI_ARADDR;
  wire intf_net_axi_crossbar_M01_AXI_ARREADY;
  wire intf_net_axi_crossbar_M01_AXI_ARVALID;
  wire [8:0]intf_net_axi_crossbar_M01_AXI_AWADDR;
  wire intf_net_axi_crossbar_M01_AXI_AWREADY;
  wire intf_net_axi_crossbar_M01_AXI_AWVALID;
  wire intf_net_axi_crossbar_M01_AXI_BREADY;
  wire [1:0]intf_net_axi_crossbar_M01_AXI_BRESP;
  wire intf_net_axi_crossbar_M01_AXI_BVALID;
  wire [31:0]intf_net_axi_crossbar_M01_AXI_RDATA;
  wire intf_net_axi_crossbar_M01_AXI_RREADY;
  wire [1:0]intf_net_axi_crossbar_M01_AXI_RRESP;
  wire intf_net_axi_crossbar_M01_AXI_RVALID;
  wire [63:32]intf_net_axi_crossbar_M01_AXI_WDATA;
  wire intf_net_axi_crossbar_M01_AXI_WREADY;
  wire [7:4]intf_net_axi_crossbar_M01_AXI_WSTRB;
  wire intf_net_axi_crossbar_M01_AXI_WVALID;
  wire intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO;
  wire [23:0]intf_net_v_axi4s_vid_out_vid_io_out_DATA;
  wire intf_net_v_axi4s_vid_out_vid_io_out_HSYNC;
  wire intf_net_v_axi4s_vid_out_vid_io_out_VSYNC;
  wire [95:0]intf_net_v_hdmi_tx_hdcp_out_TDATA;
  wire intf_net_v_hdmi_tx_hdcp_out_TID;
  wire intf_net_v_hdmi_tx_hdcp_out_TLAST;
  wire intf_net_v_hdmi_tx_hdcp_out_TREADY;
  wire [3:0]intf_net_v_hdmi_tx_hdcp_out_TSTRB;
  wire [31:0]intf_net_v_hdmi_tx_hdcp_out_TUSER;
  wire intf_net_v_hdmi_tx_hdcp_out_TVALID;
  wire intf_net_v_tc_vtiming_out_ACTIVE_VIDEO;
  wire intf_net_v_tc_vtiming_out_FIELD;
  wire intf_net_v_tc_vtiming_out_HBLANK;
  wire intf_net_v_tc_vtiming_out_HSYNC;
  wire intf_net_v_tc_vtiming_out_VBLANK;
  wire intf_net_v_tc_vtiming_out_VSYNC;
  wire irq;
  wire link_clk;
  wire locked;
  wire net_util_vector_logic_0_Res;
  wire net_v_axi4s_vid_out_vtg_ce;
  wire net_v_hdmi_tx_s_axis_video_aresetn_out;
  wire net_v_hdmi_tx_video_reset;
  wire s_axi_cpu_aclk;
  wire s_axi_cpu_aresetn;
  wire s_axis_audio_aclk;
  wire s_axis_audio_aresetn;
  wire s_axis_video_aclk;
  wire s_axis_video_aresetn;
  wire video_clk;
  wire [33:9]NLW_axi_crossbar_m_axi_araddr_UNCONNECTED;
  wire [5:3]NLW_axi_crossbar_m_axi_arprot_UNCONNECTED;
  wire [33:9]NLW_axi_crossbar_m_axi_awaddr_UNCONNECTED;
  wire [5:3]NLW_axi_crossbar_m_axi_awprot_UNCONNECTED;
  wire NLW_v_axi4s_vid_out_overflow_UNCONNECTED;
  wire NLW_v_axi4s_vid_out_underflow_UNCONNECTED;
  wire NLW_v_axi4s_vid_out_vid_field_id_UNCONNECTED;
  wire NLW_v_axi4s_vid_out_vid_hblank_UNCONNECTED;
  wire NLW_v_axi4s_vid_out_vid_vblank_UNCONNECTED;
  wire [31:0]NLW_v_axi4s_vid_out_status_UNCONNECTED;
  wire NLW_v_hdmi_tx_m_axis_hdcp_aclk_UNCONNECTED;
  wire NLW_v_hdmi_tx_m_axis_hdcp_aclken_UNCONNECTED;
  wire NLW_v_hdmi_tx_m_axis_hdcp_aresetn_UNCONNECTED;
  wire NLW_v_tc_irq_UNCONNECTED;
  wire [0:0]NLW_v_tc_fsync_out_UNCONNECTED;

  (* X_CORE_INFO = "axi_crossbar_v2_1_12_axi_crossbar,Vivado 2016.4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_axi_crossbar_0 axi_crossbar
       (.aclk(s_axi_cpu_aclk),
        .aresetn(s_axi_cpu_aresetn),
        .m_axi_araddr({NLW_axi_crossbar_m_axi_araddr_UNCONNECTED[33:26],intf_net_axi_crossbar_M01_AXI_ARADDR,NLW_axi_crossbar_m_axi_araddr_UNCONNECTED[16:9],intf_net_axi_crossbar_M00_AXI_ARADDR}),
        .m_axi_arprot({NLW_axi_crossbar_m_axi_arprot_UNCONNECTED[5:3],intf_net_axi_crossbar_M00_AXI_ARPROT}),
        .m_axi_arready({intf_net_axi_crossbar_M01_AXI_ARREADY,intf_net_axi_crossbar_M00_AXI_ARREADY}),
        .m_axi_arvalid({intf_net_axi_crossbar_M01_AXI_ARVALID,intf_net_axi_crossbar_M00_AXI_ARVALID}),
        .m_axi_awaddr({NLW_axi_crossbar_m_axi_awaddr_UNCONNECTED[33:26],intf_net_axi_crossbar_M01_AXI_AWADDR,NLW_axi_crossbar_m_axi_awaddr_UNCONNECTED[16:9],intf_net_axi_crossbar_M00_AXI_AWADDR}),
        .m_axi_awprot({NLW_axi_crossbar_m_axi_awprot_UNCONNECTED[5:3],intf_net_axi_crossbar_M00_AXI_AWPROT}),
        .m_axi_awready({intf_net_axi_crossbar_M01_AXI_AWREADY,intf_net_axi_crossbar_M00_AXI_AWREADY}),
        .m_axi_awvalid({intf_net_axi_crossbar_M01_AXI_AWVALID,intf_net_axi_crossbar_M00_AXI_AWVALID}),
        .m_axi_bready({intf_net_axi_crossbar_M01_AXI_BREADY,intf_net_axi_crossbar_M00_AXI_BREADY}),
        .m_axi_bresp({intf_net_axi_crossbar_M01_AXI_BRESP,intf_net_axi_crossbar_M00_AXI_BRESP}),
        .m_axi_bvalid({intf_net_axi_crossbar_M01_AXI_BVALID,intf_net_axi_crossbar_M00_AXI_BVALID}),
        .m_axi_rdata({intf_net_axi_crossbar_M01_AXI_RDATA,intf_net_axi_crossbar_M00_AXI_RDATA}),
        .m_axi_rready({intf_net_axi_crossbar_M01_AXI_RREADY,intf_net_axi_crossbar_M00_AXI_RREADY}),
        .m_axi_rresp({intf_net_axi_crossbar_M01_AXI_RRESP,intf_net_axi_crossbar_M00_AXI_RRESP}),
        .m_axi_rvalid({intf_net_axi_crossbar_M01_AXI_RVALID,intf_net_axi_crossbar_M00_AXI_RVALID}),
        .m_axi_wdata({intf_net_axi_crossbar_M01_AXI_WDATA,intf_net_axi_crossbar_M00_AXI_WDATA}),
        .m_axi_wready({intf_net_axi_crossbar_M01_AXI_WREADY,intf_net_axi_crossbar_M00_AXI_WREADY}),
        .m_axi_wstrb({intf_net_axi_crossbar_M01_AXI_WSTRB,intf_net_axi_crossbar_M00_AXI_WSTRB}),
        .m_axi_wvalid({intf_net_axi_crossbar_M01_AXI_WVALID,intf_net_axi_crossbar_M00_AXI_WVALID}),
        .s_axi_araddr(S_AXI_CPU_IN_araddr),
        .s_axi_arprot(S_AXI_CPU_IN_arprot),
        .s_axi_arready(S_AXI_CPU_IN_arready),
        .s_axi_arvalid(S_AXI_CPU_IN_arvalid),
        .s_axi_awaddr(S_AXI_CPU_IN_awaddr),
        .s_axi_awprot(S_AXI_CPU_IN_awprot),
        .s_axi_awready(S_AXI_CPU_IN_awready),
        .s_axi_awvalid(S_AXI_CPU_IN_awvalid),
        .s_axi_bready(S_AXI_CPU_IN_bready),
        .s_axi_bresp(S_AXI_CPU_IN_bresp),
        .s_axi_bvalid(S_AXI_CPU_IN_bvalid),
        .s_axi_rdata(S_AXI_CPU_IN_rdata),
        .s_axi_rready(S_AXI_CPU_IN_rready),
        .s_axi_rresp(S_AXI_CPU_IN_rresp),
        .s_axi_rvalid(S_AXI_CPU_IN_rvalid),
        .s_axi_wdata(S_AXI_CPU_IN_wdata),
        .s_axi_wready(S_AXI_CPU_IN_wready),
        .s_axi_wstrb(S_AXI_CPU_IN_wstrb),
        .s_axi_wvalid(S_AXI_CPU_IN_wvalid));
  (* X_CORE_INFO = "util_vector_logic,Vivado 2016.4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(net_v_hdmi_tx_video_reset),
        .Res(net_util_vector_logic_0_Res));
  (* X_CORE_INFO = "v_axi4s_vid_out_v4_0_5,Vivado 2016.4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_v_axi4s_vid_out_0 v_axi4s_vid_out
       (.aclk(s_axis_video_aclk),
        .aclken(1'b1),
        .aresetn(net_v_hdmi_tx_s_axis_video_aresetn_out),
        .fid(fid),
        .locked(locked),
        .overflow(NLW_v_axi4s_vid_out_overflow_UNCONNECTED),
        .s_axis_video_tdata(VIDEO_IN_tdata),
        .s_axis_video_tlast(VIDEO_IN_tlast),
        .s_axis_video_tready(VIDEO_IN_tready),
        .s_axis_video_tuser(VIDEO_IN_tuser),
        .s_axis_video_tvalid(VIDEO_IN_tvalid),
        .status(NLW_v_axi4s_vid_out_status_UNCONNECTED[31:0]),
        .underflow(NLW_v_axi4s_vid_out_underflow_UNCONNECTED),
        .vid_active_video(intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO),
        .vid_data(intf_net_v_axi4s_vid_out_vid_io_out_DATA),
        .vid_field_id(NLW_v_axi4s_vid_out_vid_field_id_UNCONNECTED),
        .vid_hblank(NLW_v_axi4s_vid_out_vid_hblank_UNCONNECTED),
        .vid_hsync(intf_net_v_axi4s_vid_out_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_io_out_clk(video_clk),
        .vid_io_out_reset(net_v_hdmi_tx_video_reset),
        .vid_vblank(NLW_v_axi4s_vid_out_vid_vblank_UNCONNECTED),
        .vid_vsync(intf_net_v_axi4s_vid_out_vid_io_out_VSYNC),
        .vtg_active_video(intf_net_v_tc_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(net_v_axi4s_vid_out_vtg_ce),
        .vtg_field_id(intf_net_v_tc_vtiming_out_FIELD),
        .vtg_hblank(intf_net_v_tc_vtiming_out_HBLANK),
        .vtg_hsync(intf_net_v_tc_vtiming_out_HSYNC),
        .vtg_vblank(intf_net_v_tc_vtiming_out_VBLANK),
        .vtg_vsync(intf_net_v_tc_vtiming_out_VSYNC));
  (* X_CORE_INFO = "v_hdmi_tx_v1_1_0,Vivado 2016.4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_v_hdmi_tx_0 v_hdmi_tx
       (.acr_cts(acr_cts),
        .acr_n(acr_n),
        .acr_valid(acr_valid),
        .ddc_scl_i(DDC_OUT_scl_i),
        .ddc_scl_o(DDC_OUT_scl_o),
        .ddc_scl_t(DDC_OUT_scl_t),
        .ddc_sda_i(DDC_OUT_sda_i),
        .ddc_sda_o(DDC_OUT_sda_o),
        .ddc_sda_t(DDC_OUT_sda_t),
        .hpd(hpd),
        .irq(irq),
        .link_clk(link_clk),
        .link_data0(LINK_DATA0_OUT_tdata),
        .link_data1(LINK_DATA1_OUT_tdata),
        .link_data2(LINK_DATA2_OUT_tdata),
        .link_valid0(LINK_DATA0_OUT_tvalid),
        .link_valid1(LINK_DATA1_OUT_tvalid),
        .link_valid2(LINK_DATA2_OUT_tvalid),
        .m_axis_hdcp_aclk(NLW_v_hdmi_tx_m_axis_hdcp_aclk_UNCONNECTED),
        .m_axis_hdcp_aclken(NLW_v_hdmi_tx_m_axis_hdcp_aclken_UNCONNECTED),
        .m_axis_hdcp_aresetn(NLW_v_hdmi_tx_m_axis_hdcp_aresetn_UNCONNECTED),
        .m_axis_hdcp_tdata(intf_net_v_hdmi_tx_hdcp_out_TDATA),
        .m_axis_hdcp_tid(intf_net_v_hdmi_tx_hdcp_out_TID),
        .m_axis_hdcp_tlast(intf_net_v_hdmi_tx_hdcp_out_TLAST),
        .m_axis_hdcp_tready(intf_net_v_hdmi_tx_hdcp_out_TREADY),
        .m_axis_hdcp_tstrb(intf_net_v_hdmi_tx_hdcp_out_TSTRB),
        .m_axis_hdcp_tuser(intf_net_v_hdmi_tx_hdcp_out_TUSER),
        .m_axis_hdcp_tvalid(intf_net_v_hdmi_tx_hdcp_out_TVALID),
        .s_axi_aclk(s_axi_cpu_aclk),
        .s_axi_araddr(intf_net_axi_crossbar_M00_AXI_ARADDR),
        .s_axi_aresetn(s_axi_cpu_aresetn),
        .s_axi_arprot(intf_net_axi_crossbar_M00_AXI_ARPROT),
        .s_axi_arready(intf_net_axi_crossbar_M00_AXI_ARREADY),
        .s_axi_arvalid(intf_net_axi_crossbar_M00_AXI_ARVALID),
        .s_axi_awaddr(intf_net_axi_crossbar_M00_AXI_AWADDR),
        .s_axi_awprot(intf_net_axi_crossbar_M00_AXI_AWPROT),
        .s_axi_awready(intf_net_axi_crossbar_M00_AXI_AWREADY),
        .s_axi_awvalid(intf_net_axi_crossbar_M00_AXI_AWVALID),
        .s_axi_bready(intf_net_axi_crossbar_M00_AXI_BREADY),
        .s_axi_bresp(intf_net_axi_crossbar_M00_AXI_BRESP),
        .s_axi_bvalid(intf_net_axi_crossbar_M00_AXI_BVALID),
        .s_axi_rdata(intf_net_axi_crossbar_M00_AXI_RDATA),
        .s_axi_rready(intf_net_axi_crossbar_M00_AXI_RREADY),
        .s_axi_rresp(intf_net_axi_crossbar_M00_AXI_RRESP),
        .s_axi_rvalid(intf_net_axi_crossbar_M00_AXI_RVALID),
        .s_axi_wdata(intf_net_axi_crossbar_M00_AXI_WDATA),
        .s_axi_wready(intf_net_axi_crossbar_M00_AXI_WREADY),
        .s_axi_wstrb(intf_net_axi_crossbar_M00_AXI_WSTRB),
        .s_axi_wvalid(intf_net_axi_crossbar_M00_AXI_WVALID),
        .s_axis_audio_aclk(s_axis_audio_aclk),
        .s_axis_audio_aresetn(s_axis_audio_aresetn),
        .s_axis_audio_tdata(AUDIO_IN_tdata),
        .s_axis_audio_tid(AUDIO_IN_tid),
        .s_axis_audio_tready(AUDIO_IN_tready),
        .s_axis_audio_tvalid(AUDIO_IN_tvalid),
        .s_axis_hdcp_tdata(intf_net_v_hdmi_tx_hdcp_out_TDATA),
        .s_axis_hdcp_tid(intf_net_v_hdmi_tx_hdcp_out_TID),
        .s_axis_hdcp_tlast(intf_net_v_hdmi_tx_hdcp_out_TLAST),
        .s_axis_hdcp_tready(intf_net_v_hdmi_tx_hdcp_out_TREADY),
        .s_axis_hdcp_tstrb(intf_net_v_hdmi_tx_hdcp_out_TSTRB),
        .s_axis_hdcp_tuser(intf_net_v_hdmi_tx_hdcp_out_TUSER),
        .s_axis_hdcp_tvalid(intf_net_v_hdmi_tx_hdcp_out_TVALID),
        .s_axis_video_aclk(s_axis_video_aclk),
        .s_axis_video_aresetn_in(s_axis_video_aresetn),
        .s_axis_video_aresetn_out(net_v_hdmi_tx_s_axis_video_aresetn_out),
        .sb_status_data(SB_STATUS_IN_tdata),
        .sb_status_valid(SB_STATUS_IN_tvalid),
        .video_clk(video_clk),
        .video_data(intf_net_v_axi4s_vid_out_vid_io_out_DATA),
        .video_de(intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO),
        .video_hs(intf_net_v_axi4s_vid_out_vid_io_out_HSYNC),
        .video_reset(net_v_hdmi_tx_video_reset),
        .video_vs(intf_net_v_axi4s_vid_out_vid_io_out_VSYNC));
  (* X_CORE_INFO = "v_tc,Vivado 2016.4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_v_tc_0 v_tc
       (.active_video_out(intf_net_v_tc_vtiming_out_ACTIVE_VIDEO),
        .clk(video_clk),
        .clken(1'b1),
        .field_id_out(intf_net_v_tc_vtiming_out_FIELD),
        .fsync_in(1'b0),
        .fsync_out(NLW_v_tc_fsync_out_UNCONNECTED[0]),
        .gen_clken(net_v_axi4s_vid_out_vtg_ce),
        .hblank_out(intf_net_v_tc_vtiming_out_HBLANK),
        .hsync_out(intf_net_v_tc_vtiming_out_HSYNC),
        .irq(NLW_v_tc_irq_UNCONNECTED),
        .resetn(net_util_vector_logic_0_Res),
        .s_axi_aclk(s_axi_cpu_aclk),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(intf_net_axi_crossbar_M01_AXI_ARADDR),
        .s_axi_aresetn(s_axi_cpu_aresetn),
        .s_axi_arready(intf_net_axi_crossbar_M01_AXI_ARREADY),
        .s_axi_arvalid(intf_net_axi_crossbar_M01_AXI_ARVALID),
        .s_axi_awaddr(intf_net_axi_crossbar_M01_AXI_AWADDR),
        .s_axi_awready(intf_net_axi_crossbar_M01_AXI_AWREADY),
        .s_axi_awvalid(intf_net_axi_crossbar_M01_AXI_AWVALID),
        .s_axi_bready(intf_net_axi_crossbar_M01_AXI_BREADY),
        .s_axi_bresp(intf_net_axi_crossbar_M01_AXI_BRESP),
        .s_axi_bvalid(intf_net_axi_crossbar_M01_AXI_BVALID),
        .s_axi_rdata(intf_net_axi_crossbar_M01_AXI_RDATA),
        .s_axi_rready(intf_net_axi_crossbar_M01_AXI_RREADY),
        .s_axi_rresp(intf_net_axi_crossbar_M01_AXI_RRESP),
        .s_axi_rvalid(intf_net_axi_crossbar_M01_AXI_RVALID),
        .s_axi_wdata(intf_net_axi_crossbar_M01_AXI_WDATA),
        .s_axi_wready(intf_net_axi_crossbar_M01_AXI_WREADY),
        .s_axi_wstrb(intf_net_axi_crossbar_M01_AXI_WSTRB),
        .s_axi_wvalid(intf_net_axi_crossbar_M01_AXI_WVALID),
        .vblank_out(intf_net_v_tc_vtiming_out_VBLANK),
        .vsync_out(intf_net_v_tc_vtiming_out_VSYNC));
endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_12_axi_crossbar,Vivado 2016.4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_axi_crossbar_0
   (aclk,
    aresetn,
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
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [16:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [16:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [33:0]m_axi_awaddr;
  output [5:0]m_axi_awprot;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [33:0]m_axi_araddr;
  output [5:0]m_axi_arprot;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;


endmodule

(* X_CORE_INFO = "util_vector_logic,Vivado 2016.4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_util_vector_logic_0_0
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;


endmodule

(* X_CORE_INFO = "v_axi4s_vid_out_v4_0_5,Vivado 2016.4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_v_axi4s_vid_out_0
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_clk,
    vid_io_out_ce,
    vid_io_out_reset,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    locked,
    overflow,
    underflow,
    status);
  input aclk;
  input aclken;
  input aresetn;
  input [23:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  output s_axis_video_tready;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  input fid;
  input vid_io_out_clk;
  input vid_io_out_ce;
  input vid_io_out_reset;
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output [23:0]vid_data;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_vblank;
  input vtg_hblank;
  input vtg_active_video;
  input vtg_field_id;
  output vtg_ce;
  output locked;
  output overflow;
  output underflow;
  output [31:0]status;


endmodule

(* X_CORE_INFO = "v_hdmi_tx_v1_1_0,Vivado 2016.4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_v_hdmi_tx_0
   (s_axi_aclk,
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
    irq);
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axis_video_aclk;
  input s_axis_video_aresetn_in;
  input [8:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input video_clk;
  input link_clk;
  input video_vs;
  input video_hs;
  input [23:0]video_data;
  input video_de;
  input s_axis_audio_aresetn;
  input s_axis_audio_aclk;
  output s_axis_audio_tready;
  input [2:0]s_axis_audio_tid;
  input [31:0]s_axis_audio_tdata;
  input s_axis_audio_tvalid;
  input [19:0]acr_cts;
  input [19:0]acr_n;
  input acr_valid;
  output [39:0]link_data0;
  output [39:0]link_data1;
  output [39:0]link_data2;
  output link_valid0;
  output link_valid1;
  output link_valid2;
  input hpd;
  output s_axis_video_aresetn_out;
  output video_reset;
  input [1:0]sb_status_data;
  input sb_status_valid;
  output m_axis_hdcp_aresetn;
  output m_axis_hdcp_aclk;
  output m_axis_hdcp_aclken;
  output m_axis_hdcp_tid;
  output [31:0]m_axis_hdcp_tuser;
  output [95:0]m_axis_hdcp_tdata;
  output [3:0]m_axis_hdcp_tstrb;
  output m_axis_hdcp_tvalid;
  output m_axis_hdcp_tlast;
  input m_axis_hdcp_tready;
  input s_axis_hdcp_tid;
  input [31:0]s_axis_hdcp_tuser;
  input [95:0]s_axis_hdcp_tdata;
  input [3:0]s_axis_hdcp_tstrb;
  input s_axis_hdcp_tvalid;
  input s_axis_hdcp_tlast;
  output s_axis_hdcp_tready;
  input ddc_scl_i;
  output ddc_scl_o;
  output ddc_scl_t;
  input ddc_sda_i;
  output ddc_sda_o;
  output ddc_sda_t;
  output irq;


endmodule

(* X_CORE_INFO = "v_tc,Vivado 2016.4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000_v_tc_0
   (clk,
    clken,
    s_axi_aclk,
    s_axi_aclken,
    gen_clken,
    field_id_out,
    hsync_out,
    hblank_out,
    vsync_out,
    vblank_out,
    active_video_out,
    resetn,
    s_axi_aresetn,
    s_axi_awaddr,
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
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    irq,
    fsync_in,
    fsync_out);
  input clk;
  input clken;
  input s_axi_aclk;
  input s_axi_aclken;
  input gen_clken;
  output field_id_out;
  output hsync_out;
  output hblank_out;
  output vsync_out;
  output vblank_out;
  output active_video_out;
  input resetn;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output irq;
  input fsync_in;
  output [0:0]fsync_out;


endmodule

(* CHECK_LICENSE_TYPE = "design_1_v_hdmi_tx_ss_0_0,bd_8000,{v_hdmi=hardware_evaluation}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_8000,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_cpu_aclk,
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
    LINK_DATA2_OUT_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axi_cpu_aclk CLK" *) input s_axi_cpu_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_cpu_aresetn RST" *) input s_axi_cpu_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.link_clk CLK" *) input link_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_audio_aclk CLK" *) input s_axis_audio_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_audio_aresetn RST" *) input s_axis_audio_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.video_clk CLK" *) input video_clk;
  input [19:0]acr_cts;
  input [19:0]acr_n;
  input acr_valid;
  input hpd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.irq INTERRUPT" *) output irq;
  input fid;
  output locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_video_aclk CLK" *) input s_axis_video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_video_aresetn RST" *) input s_axis_video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TDATA" *) input [23:0]VIDEO_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TLAST" *) input VIDEO_IN_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TREADY" *) output VIDEO_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TUSER" *) input VIDEO_IN_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TVALID" *) input VIDEO_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *) input [1:0]SB_STATUS_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *) input SB_STATUS_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TDATA" *) input [31:0]AUDIO_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TID" *) input [2:0]AUDIO_IN_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TREADY" *) output AUDIO_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TVALID" *) input AUDIO_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR" *) input [16:0]S_AXI_CPU_IN_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT" *) input [2:0]S_AXI_CPU_IN_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID" *) input [0:0]S_AXI_CPU_IN_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY" *) output [0:0]S_AXI_CPU_IN_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA" *) input [31:0]S_AXI_CPU_IN_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB" *) input [3:0]S_AXI_CPU_IN_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID" *) input [0:0]S_AXI_CPU_IN_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY" *) output [0:0]S_AXI_CPU_IN_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP" *) output [1:0]S_AXI_CPU_IN_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID" *) output [0:0]S_AXI_CPU_IN_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY" *) input [0:0]S_AXI_CPU_IN_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR" *) input [16:0]S_AXI_CPU_IN_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT" *) input [2:0]S_AXI_CPU_IN_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID" *) input [0:0]S_AXI_CPU_IN_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY" *) output [0:0]S_AXI_CPU_IN_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA" *) output [31:0]S_AXI_CPU_IN_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP" *) output [1:0]S_AXI_CPU_IN_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID" *) output [0:0]S_AXI_CPU_IN_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY" *) input [0:0]S_AXI_CPU_IN_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I" *) input DDC_OUT_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O" *) output DDC_OUT_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T" *) output DDC_OUT_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I" *) input DDC_OUT_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O" *) output DDC_OUT_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T" *) output DDC_OUT_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TDATA" *) output [39:0]LINK_DATA0_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TVALID" *) output LINK_DATA0_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TDATA" *) output [39:0]LINK_DATA1_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TVALID" *) output LINK_DATA1_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TDATA" *) output [39:0]LINK_DATA2_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TVALID" *) output LINK_DATA2_OUT_tvalid;

  wire [31:0]AUDIO_IN_tdata;
  wire [2:0]AUDIO_IN_tid;
  wire AUDIO_IN_tready;
  wire AUDIO_IN_tvalid;
  wire DDC_OUT_scl_i;
  wire DDC_OUT_scl_o;
  wire DDC_OUT_scl_t;
  wire DDC_OUT_sda_i;
  wire DDC_OUT_sda_o;
  wire DDC_OUT_sda_t;
  wire [39:0]LINK_DATA0_OUT_tdata;
  wire LINK_DATA0_OUT_tvalid;
  wire [39:0]LINK_DATA1_OUT_tdata;
  wire LINK_DATA1_OUT_tvalid;
  wire [39:0]LINK_DATA2_OUT_tdata;
  wire LINK_DATA2_OUT_tvalid;
  wire [1:0]SB_STATUS_IN_tdata;
  wire SB_STATUS_IN_tvalid;
  wire [16:0]S_AXI_CPU_IN_araddr;
  wire [2:0]S_AXI_CPU_IN_arprot;
  wire [0:0]S_AXI_CPU_IN_arready;
  wire [0:0]S_AXI_CPU_IN_arvalid;
  wire [16:0]S_AXI_CPU_IN_awaddr;
  wire [2:0]S_AXI_CPU_IN_awprot;
  wire [0:0]S_AXI_CPU_IN_awready;
  wire [0:0]S_AXI_CPU_IN_awvalid;
  wire [0:0]S_AXI_CPU_IN_bready;
  wire [1:0]S_AXI_CPU_IN_bresp;
  wire [0:0]S_AXI_CPU_IN_bvalid;
  wire [31:0]S_AXI_CPU_IN_rdata;
  wire [0:0]S_AXI_CPU_IN_rready;
  wire [1:0]S_AXI_CPU_IN_rresp;
  wire [0:0]S_AXI_CPU_IN_rvalid;
  wire [31:0]S_AXI_CPU_IN_wdata;
  wire [0:0]S_AXI_CPU_IN_wready;
  wire [3:0]S_AXI_CPU_IN_wstrb;
  wire [0:0]S_AXI_CPU_IN_wvalid;
  wire [23:0]VIDEO_IN_tdata;
  wire VIDEO_IN_tlast;
  wire VIDEO_IN_tready;
  wire VIDEO_IN_tuser;
  wire VIDEO_IN_tvalid;
  wire [19:0]acr_cts;
  wire [19:0]acr_n;
  wire acr_valid;
  wire fid;
  wire hpd;
  wire irq;
  wire link_clk;
  wire locked;
  wire s_axi_cpu_aclk;
  wire s_axi_cpu_aresetn;
  wire s_axis_audio_aclk;
  wire s_axis_audio_aresetn;
  wire s_axis_video_aclk;
  wire s_axis_video_aresetn;
  wire video_clk;

  (* HW_HANDOFF = "design_1_v_hdmi_tx_ss_0_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8000 inst
       (.AUDIO_IN_tdata(AUDIO_IN_tdata),
        .AUDIO_IN_tid(AUDIO_IN_tid),
        .AUDIO_IN_tready(AUDIO_IN_tready),
        .AUDIO_IN_tvalid(AUDIO_IN_tvalid),
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
        .LINK_DATA2_OUT_tvalid(LINK_DATA2_OUT_tvalid),
        .SB_STATUS_IN_tdata(SB_STATUS_IN_tdata),
        .SB_STATUS_IN_tvalid(SB_STATUS_IN_tvalid),
        .S_AXI_CPU_IN_araddr(S_AXI_CPU_IN_araddr),
        .S_AXI_CPU_IN_arprot(S_AXI_CPU_IN_arprot),
        .S_AXI_CPU_IN_arready(S_AXI_CPU_IN_arready),
        .S_AXI_CPU_IN_arvalid(S_AXI_CPU_IN_arvalid),
        .S_AXI_CPU_IN_awaddr(S_AXI_CPU_IN_awaddr),
        .S_AXI_CPU_IN_awprot(S_AXI_CPU_IN_awprot),
        .S_AXI_CPU_IN_awready(S_AXI_CPU_IN_awready),
        .S_AXI_CPU_IN_awvalid(S_AXI_CPU_IN_awvalid),
        .S_AXI_CPU_IN_bready(S_AXI_CPU_IN_bready),
        .S_AXI_CPU_IN_bresp(S_AXI_CPU_IN_bresp),
        .S_AXI_CPU_IN_bvalid(S_AXI_CPU_IN_bvalid),
        .S_AXI_CPU_IN_rdata(S_AXI_CPU_IN_rdata),
        .S_AXI_CPU_IN_rready(S_AXI_CPU_IN_rready),
        .S_AXI_CPU_IN_rresp(S_AXI_CPU_IN_rresp),
        .S_AXI_CPU_IN_rvalid(S_AXI_CPU_IN_rvalid),
        .S_AXI_CPU_IN_wdata(S_AXI_CPU_IN_wdata),
        .S_AXI_CPU_IN_wready(S_AXI_CPU_IN_wready),
        .S_AXI_CPU_IN_wstrb(S_AXI_CPU_IN_wstrb),
        .S_AXI_CPU_IN_wvalid(S_AXI_CPU_IN_wvalid),
        .VIDEO_IN_tdata(VIDEO_IN_tdata),
        .VIDEO_IN_tlast(VIDEO_IN_tlast),
        .VIDEO_IN_tready(VIDEO_IN_tready),
        .VIDEO_IN_tuser(VIDEO_IN_tuser),
        .VIDEO_IN_tvalid(VIDEO_IN_tvalid),
        .acr_cts(acr_cts),
        .acr_n(acr_n),
        .acr_valid(acr_valid),
        .fid(fid),
        .hpd(hpd),
        .irq(irq),
        .link_clk(link_clk),
        .locked(locked),
        .s_axi_cpu_aclk(s_axi_cpu_aclk),
        .s_axi_cpu_aresetn(s_axi_cpu_aresetn),
        .s_axis_audio_aclk(s_axis_audio_aclk),
        .s_axis_audio_aresetn(s_axis_audio_aresetn),
        .s_axis_video_aclk(s_axis_video_aclk),
        .s_axis_video_aresetn(s_axis_video_aresetn),
        .video_clk(video_clk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
