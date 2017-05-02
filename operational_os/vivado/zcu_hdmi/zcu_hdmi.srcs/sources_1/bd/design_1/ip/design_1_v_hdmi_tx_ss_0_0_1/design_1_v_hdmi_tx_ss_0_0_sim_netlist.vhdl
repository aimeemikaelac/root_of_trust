-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Thu Apr 20 21:09:43 2017
-- Host        : SchoolComputer running 64-bit Ubuntu 16.10
-- Command     : write_vhdl -force -mode funcsim
--               /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/design_1_v_hdmi_tx_ss_0_0_sim_netlist.vhdl
-- Design      : design_1_v_hdmi_tx_ss_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-i-es2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_hdmi_tx_ss_0_0_bd_8000 is
  port (
    AUDIO_IN_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AUDIO_IN_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AUDIO_IN_tready : out STD_LOGIC;
    AUDIO_IN_tvalid : in STD_LOGIC;
    DDC_OUT_scl_i : in STD_LOGIC;
    DDC_OUT_scl_o : out STD_LOGIC;
    DDC_OUT_scl_t : out STD_LOGIC;
    DDC_OUT_sda_i : in STD_LOGIC;
    DDC_OUT_sda_o : out STD_LOGIC;
    DDC_OUT_sda_t : out STD_LOGIC;
    LINK_DATA0_OUT_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA0_OUT_tvalid : out STD_LOGIC;
    LINK_DATA1_OUT_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA1_OUT_tvalid : out STD_LOGIC;
    LINK_DATA2_OUT_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA2_OUT_tvalid : out STD_LOGIC;
    SB_STATUS_IN_tdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SB_STATUS_IN_tvalid : in STD_LOGIC;
    S_AXI_CPU_IN_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_CPU_IN_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_CPU_IN_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CPU_IN_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    VIDEO_IN_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    VIDEO_IN_tlast : in STD_LOGIC;
    VIDEO_IN_tready : out STD_LOGIC;
    VIDEO_IN_tuser : in STD_LOGIC;
    VIDEO_IN_tvalid : in STD_LOGIC;
    acr_cts : in STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : in STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : in STD_LOGIC;
    fid : in STD_LOGIC;
    hpd : in STD_LOGIC;
    irq : out STD_LOGIC;
    link_clk : in STD_LOGIC;
    locked : out STD_LOGIC;
    s_axi_cpu_aclk : in STD_LOGIC;
    s_axi_cpu_aresetn : in STD_LOGIC;
    s_axis_audio_aclk : in STD_LOGIC;
    s_axis_audio_aresetn : in STD_LOGIC;
    s_axis_video_aclk : in STD_LOGIC;
    s_axis_video_aresetn : in STD_LOGIC;
    video_clk : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1_v_hdmi_tx_ss_0_0_bd_8000 : entity is "design_1_v_hdmi_tx_ss_0_0.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_hdmi_tx_ss_0_0_bd_8000 : entity is "bd_8000";
end design_1_v_hdmi_tx_ss_0_0_bd_8000;

architecture STRUCTURE of design_1_v_hdmi_tx_ss_0_0_bd_8000 is
  component design_1_v_hdmi_tx_ss_0_0_bd_8000_axi_crossbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_v_hdmi_tx_ss_0_0_bd_8000_axi_crossbar_0;
  component design_1_v_hdmi_tx_ss_0_0_bd_8000_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_v_hdmi_tx_ss_0_0_bd_8000_util_vector_logic_0_0;
  component design_1_v_hdmi_tx_ss_0_0_bd_8000_v_axi4s_vid_out_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_v_hdmi_tx_ss_0_0_bd_8000_v_axi4s_vid_out_0;
  component design_1_v_hdmi_tx_ss_0_0_bd_8000_v_hdmi_tx_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axis_video_aclk : in STD_LOGIC;
    s_axis_video_aresetn_in : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    video_clk : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    video_vs : in STD_LOGIC;
    video_hs : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    video_de : in STD_LOGIC;
    s_axis_audio_aresetn : in STD_LOGIC;
    s_axis_audio_aclk : in STD_LOGIC;
    s_axis_audio_tready : out STD_LOGIC;
    s_axis_audio_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_audio_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_audio_tvalid : in STD_LOGIC;
    acr_cts : in STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : in STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : in STD_LOGIC;
    link_data0 : out STD_LOGIC_VECTOR ( 39 downto 0 );
    link_data1 : out STD_LOGIC_VECTOR ( 39 downto 0 );
    link_data2 : out STD_LOGIC_VECTOR ( 39 downto 0 );
    link_valid0 : out STD_LOGIC;
    link_valid1 : out STD_LOGIC;
    link_valid2 : out STD_LOGIC;
    hpd : in STD_LOGIC;
    s_axis_video_aresetn_out : out STD_LOGIC;
    video_reset : out STD_LOGIC;
    sb_status_data : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sb_status_valid : in STD_LOGIC;
    m_axis_hdcp_aresetn : out STD_LOGIC;
    m_axis_hdcp_aclk : out STD_LOGIC;
    m_axis_hdcp_aclken : out STD_LOGIC;
    m_axis_hdcp_tid : out STD_LOGIC;
    m_axis_hdcp_tuser : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_hdcp_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_hdcp_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_hdcp_tvalid : out STD_LOGIC;
    m_axis_hdcp_tlast : out STD_LOGIC;
    m_axis_hdcp_tready : in STD_LOGIC;
    s_axis_hdcp_tid : in STD_LOGIC;
    s_axis_hdcp_tuser : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_hdcp_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_hdcp_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_hdcp_tvalid : in STD_LOGIC;
    s_axis_hdcp_tlast : in STD_LOGIC;
    s_axis_hdcp_tready : out STD_LOGIC;
    ddc_scl_i : in STD_LOGIC;
    ddc_scl_o : out STD_LOGIC;
    ddc_scl_t : out STD_LOGIC;
    ddc_sda_i : in STD_LOGIC;
    ddc_sda_o : out STD_LOGIC;
    ddc_sda_t : out STD_LOGIC;
    irq : out STD_LOGIC
  );
  end component design_1_v_hdmi_tx_ss_0_0_bd_8000_v_hdmi_tx_0;
  component design_1_v_hdmi_tx_ss_0_0_bd_8000_v_tc_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    field_id_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    fsync_in : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_v_hdmi_tx_ss_0_0_bd_8000_v_tc_0;
  signal intf_net_axi_crossbar_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_crossbar_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_axi_crossbar_M00_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M00_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_crossbar_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_crossbar_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_axi_crossbar_M00_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M00_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_crossbar_M00_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_crossbar_M00_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_crossbar_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_crossbar_M00_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_crossbar_M00_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_crossbar_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_crossbar_M00_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_crossbar_M00_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_crossbar_M01_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_crossbar_M01_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_crossbar_M01_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_crossbar_M01_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_crossbar_M01_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal intf_net_axi_crossbar_M01_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_crossbar_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal intf_net_axi_crossbar_M01_AXI_WVALID : STD_LOGIC;
  signal intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO : STD_LOGIC;
  signal intf_net_v_axi4s_vid_out_vid_io_out_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_v_axi4s_vid_out_vid_io_out_HSYNC : STD_LOGIC;
  signal intf_net_v_axi4s_vid_out_vid_io_out_VSYNC : STD_LOGIC;
  signal intf_net_v_hdmi_tx_hdcp_out_TDATA : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal intf_net_v_hdmi_tx_hdcp_out_TID : STD_LOGIC;
  signal intf_net_v_hdmi_tx_hdcp_out_TLAST : STD_LOGIC;
  signal intf_net_v_hdmi_tx_hdcp_out_TREADY : STD_LOGIC;
  signal intf_net_v_hdmi_tx_hdcp_out_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_v_hdmi_tx_hdcp_out_TUSER : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_v_hdmi_tx_hdcp_out_TVALID : STD_LOGIC;
  signal intf_net_v_tc_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal intf_net_v_tc_vtiming_out_FIELD : STD_LOGIC;
  signal intf_net_v_tc_vtiming_out_HBLANK : STD_LOGIC;
  signal intf_net_v_tc_vtiming_out_HSYNC : STD_LOGIC;
  signal intf_net_v_tc_vtiming_out_VBLANK : STD_LOGIC;
  signal intf_net_v_tc_vtiming_out_VSYNC : STD_LOGIC;
  signal net_util_vector_logic_0_Res : STD_LOGIC;
  signal net_v_axi4s_vid_out_vtg_ce : STD_LOGIC;
  signal net_v_hdmi_tx_s_axis_video_aresetn_out : STD_LOGIC;
  signal net_v_hdmi_tx_video_reset : STD_LOGIC;
  signal NLW_axi_crossbar_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 33 downto 9 );
  signal NLW_axi_crossbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal NLW_axi_crossbar_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 33 downto 9 );
  signal NLW_axi_crossbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal NLW_v_axi4s_vid_out_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_vid_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_vid_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_vid_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_status_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_hdmi_tx_m_axis_hdcp_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_tx_m_axis_hdcp_aclken_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_tx_m_axis_hdcp_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_v_tc_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_v_tc_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_crossbar : label is "axi_crossbar_v2_1_12_axi_crossbar,Vivado 2016.4";
  attribute X_CORE_INFO of util_vector_logic_0 : label is "util_vector_logic,Vivado 2016.4";
  attribute X_CORE_INFO of v_axi4s_vid_out : label is "v_axi4s_vid_out_v4_0_5,Vivado 2016.4";
  attribute X_CORE_INFO of v_hdmi_tx : label is "v_hdmi_tx_v1_1_0,Vivado 2016.4";
  attribute X_CORE_INFO of v_tc : label is "v_tc,Vivado 2016.4";
begin
axi_crossbar: component design_1_v_hdmi_tx_ss_0_0_bd_8000_axi_crossbar_0
     port map (
      aclk => s_axi_cpu_aclk,
      aresetn => s_axi_cpu_aresetn,
      m_axi_araddr(33 downto 26) => NLW_axi_crossbar_m_axi_araddr_UNCONNECTED(33 downto 26),
      m_axi_araddr(25 downto 17) => intf_net_axi_crossbar_M01_AXI_ARADDR(8 downto 0),
      m_axi_araddr(16 downto 9) => NLW_axi_crossbar_m_axi_araddr_UNCONNECTED(16 downto 9),
      m_axi_araddr(8 downto 0) => intf_net_axi_crossbar_M00_AXI_ARADDR(8 downto 0),
      m_axi_arprot(5 downto 3) => NLW_axi_crossbar_m_axi_arprot_UNCONNECTED(5 downto 3),
      m_axi_arprot(2 downto 0) => intf_net_axi_crossbar_M00_AXI_ARPROT(2 downto 0),
      m_axi_arready(1) => intf_net_axi_crossbar_M01_AXI_ARREADY,
      m_axi_arready(0) => intf_net_axi_crossbar_M00_AXI_ARREADY,
      m_axi_arvalid(1) => intf_net_axi_crossbar_M01_AXI_ARVALID,
      m_axi_arvalid(0) => intf_net_axi_crossbar_M00_AXI_ARVALID,
      m_axi_awaddr(33 downto 26) => NLW_axi_crossbar_m_axi_awaddr_UNCONNECTED(33 downto 26),
      m_axi_awaddr(25 downto 17) => intf_net_axi_crossbar_M01_AXI_AWADDR(8 downto 0),
      m_axi_awaddr(16 downto 9) => NLW_axi_crossbar_m_axi_awaddr_UNCONNECTED(16 downto 9),
      m_axi_awaddr(8 downto 0) => intf_net_axi_crossbar_M00_AXI_AWADDR(8 downto 0),
      m_axi_awprot(5 downto 3) => NLW_axi_crossbar_m_axi_awprot_UNCONNECTED(5 downto 3),
      m_axi_awprot(2 downto 0) => intf_net_axi_crossbar_M00_AXI_AWPROT(2 downto 0),
      m_axi_awready(1) => intf_net_axi_crossbar_M01_AXI_AWREADY,
      m_axi_awready(0) => intf_net_axi_crossbar_M00_AXI_AWREADY,
      m_axi_awvalid(1) => intf_net_axi_crossbar_M01_AXI_AWVALID,
      m_axi_awvalid(0) => intf_net_axi_crossbar_M00_AXI_AWVALID,
      m_axi_bready(1) => intf_net_axi_crossbar_M01_AXI_BREADY,
      m_axi_bready(0) => intf_net_axi_crossbar_M00_AXI_BREADY,
      m_axi_bresp(3 downto 2) => intf_net_axi_crossbar_M01_AXI_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => intf_net_axi_crossbar_M00_AXI_BRESP(1 downto 0),
      m_axi_bvalid(1) => intf_net_axi_crossbar_M01_AXI_BVALID,
      m_axi_bvalid(0) => intf_net_axi_crossbar_M00_AXI_BVALID,
      m_axi_rdata(63 downto 32) => intf_net_axi_crossbar_M01_AXI_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => intf_net_axi_crossbar_M00_AXI_RDATA(31 downto 0),
      m_axi_rready(1) => intf_net_axi_crossbar_M01_AXI_RREADY,
      m_axi_rready(0) => intf_net_axi_crossbar_M00_AXI_RREADY,
      m_axi_rresp(3 downto 2) => intf_net_axi_crossbar_M01_AXI_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => intf_net_axi_crossbar_M00_AXI_RRESP(1 downto 0),
      m_axi_rvalid(1) => intf_net_axi_crossbar_M01_AXI_RVALID,
      m_axi_rvalid(0) => intf_net_axi_crossbar_M00_AXI_RVALID,
      m_axi_wdata(63 downto 32) => intf_net_axi_crossbar_M01_AXI_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => intf_net_axi_crossbar_M00_AXI_WDATA(31 downto 0),
      m_axi_wready(1) => intf_net_axi_crossbar_M01_AXI_WREADY,
      m_axi_wready(0) => intf_net_axi_crossbar_M00_AXI_WREADY,
      m_axi_wstrb(7 downto 4) => intf_net_axi_crossbar_M01_AXI_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => intf_net_axi_crossbar_M00_AXI_WSTRB(3 downto 0),
      m_axi_wvalid(1) => intf_net_axi_crossbar_M01_AXI_WVALID,
      m_axi_wvalid(0) => intf_net_axi_crossbar_M00_AXI_WVALID,
      s_axi_araddr(16 downto 0) => S_AXI_CPU_IN_araddr(16 downto 0),
      s_axi_arprot(2 downto 0) => S_AXI_CPU_IN_arprot(2 downto 0),
      s_axi_arready(0) => S_AXI_CPU_IN_arready(0),
      s_axi_arvalid(0) => S_AXI_CPU_IN_arvalid(0),
      s_axi_awaddr(16 downto 0) => S_AXI_CPU_IN_awaddr(16 downto 0),
      s_axi_awprot(2 downto 0) => S_AXI_CPU_IN_awprot(2 downto 0),
      s_axi_awready(0) => S_AXI_CPU_IN_awready(0),
      s_axi_awvalid(0) => S_AXI_CPU_IN_awvalid(0),
      s_axi_bready(0) => S_AXI_CPU_IN_bready(0),
      s_axi_bresp(1 downto 0) => S_AXI_CPU_IN_bresp(1 downto 0),
      s_axi_bvalid(0) => S_AXI_CPU_IN_bvalid(0),
      s_axi_rdata(31 downto 0) => S_AXI_CPU_IN_rdata(31 downto 0),
      s_axi_rready(0) => S_AXI_CPU_IN_rready(0),
      s_axi_rresp(1 downto 0) => S_AXI_CPU_IN_rresp(1 downto 0),
      s_axi_rvalid(0) => S_AXI_CPU_IN_rvalid(0),
      s_axi_wdata(31 downto 0) => S_AXI_CPU_IN_wdata(31 downto 0),
      s_axi_wready(0) => S_AXI_CPU_IN_wready(0),
      s_axi_wstrb(3 downto 0) => S_AXI_CPU_IN_wstrb(3 downto 0),
      s_axi_wvalid(0) => S_AXI_CPU_IN_wvalid(0)
    );
util_vector_logic_0: component design_1_v_hdmi_tx_ss_0_0_bd_8000_util_vector_logic_0_0
     port map (
      Op1(0) => net_v_hdmi_tx_video_reset,
      Res(0) => net_util_vector_logic_0_Res
    );
v_axi4s_vid_out: component design_1_v_hdmi_tx_ss_0_0_bd_8000_v_axi4s_vid_out_0
     port map (
      aclk => s_axis_video_aclk,
      aclken => '1',
      aresetn => net_v_hdmi_tx_s_axis_video_aresetn_out,
      fid => fid,
      locked => locked,
      overflow => NLW_v_axi4s_vid_out_overflow_UNCONNECTED,
      s_axis_video_tdata(23 downto 0) => VIDEO_IN_tdata(23 downto 0),
      s_axis_video_tlast => VIDEO_IN_tlast,
      s_axis_video_tready => VIDEO_IN_tready,
      s_axis_video_tuser => VIDEO_IN_tuser,
      s_axis_video_tvalid => VIDEO_IN_tvalid,
      status(31 downto 0) => NLW_v_axi4s_vid_out_status_UNCONNECTED(31 downto 0),
      underflow => NLW_v_axi4s_vid_out_underflow_UNCONNECTED,
      vid_active_video => intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO,
      vid_data(23 downto 0) => intf_net_v_axi4s_vid_out_vid_io_out_DATA(23 downto 0),
      vid_field_id => NLW_v_axi4s_vid_out_vid_field_id_UNCONNECTED,
      vid_hblank => NLW_v_axi4s_vid_out_vid_hblank_UNCONNECTED,
      vid_hsync => intf_net_v_axi4s_vid_out_vid_io_out_HSYNC,
      vid_io_out_ce => '1',
      vid_io_out_clk => video_clk,
      vid_io_out_reset => net_v_hdmi_tx_video_reset,
      vid_vblank => NLW_v_axi4s_vid_out_vid_vblank_UNCONNECTED,
      vid_vsync => intf_net_v_axi4s_vid_out_vid_io_out_VSYNC,
      vtg_active_video => intf_net_v_tc_vtiming_out_ACTIVE_VIDEO,
      vtg_ce => net_v_axi4s_vid_out_vtg_ce,
      vtg_field_id => intf_net_v_tc_vtiming_out_FIELD,
      vtg_hblank => intf_net_v_tc_vtiming_out_HBLANK,
      vtg_hsync => intf_net_v_tc_vtiming_out_HSYNC,
      vtg_vblank => intf_net_v_tc_vtiming_out_VBLANK,
      vtg_vsync => intf_net_v_tc_vtiming_out_VSYNC
    );
v_hdmi_tx: component design_1_v_hdmi_tx_ss_0_0_bd_8000_v_hdmi_tx_0
     port map (
      acr_cts(19 downto 0) => acr_cts(19 downto 0),
      acr_n(19 downto 0) => acr_n(19 downto 0),
      acr_valid => acr_valid,
      ddc_scl_i => DDC_OUT_scl_i,
      ddc_scl_o => DDC_OUT_scl_o,
      ddc_scl_t => DDC_OUT_scl_t,
      ddc_sda_i => DDC_OUT_sda_i,
      ddc_sda_o => DDC_OUT_sda_o,
      ddc_sda_t => DDC_OUT_sda_t,
      hpd => hpd,
      irq => irq,
      link_clk => link_clk,
      link_data0(39 downto 0) => LINK_DATA0_OUT_tdata(39 downto 0),
      link_data1(39 downto 0) => LINK_DATA1_OUT_tdata(39 downto 0),
      link_data2(39 downto 0) => LINK_DATA2_OUT_tdata(39 downto 0),
      link_valid0 => LINK_DATA0_OUT_tvalid,
      link_valid1 => LINK_DATA1_OUT_tvalid,
      link_valid2 => LINK_DATA2_OUT_tvalid,
      m_axis_hdcp_aclk => NLW_v_hdmi_tx_m_axis_hdcp_aclk_UNCONNECTED,
      m_axis_hdcp_aclken => NLW_v_hdmi_tx_m_axis_hdcp_aclken_UNCONNECTED,
      m_axis_hdcp_aresetn => NLW_v_hdmi_tx_m_axis_hdcp_aresetn_UNCONNECTED,
      m_axis_hdcp_tdata(95 downto 0) => intf_net_v_hdmi_tx_hdcp_out_TDATA(95 downto 0),
      m_axis_hdcp_tid => intf_net_v_hdmi_tx_hdcp_out_TID,
      m_axis_hdcp_tlast => intf_net_v_hdmi_tx_hdcp_out_TLAST,
      m_axis_hdcp_tready => intf_net_v_hdmi_tx_hdcp_out_TREADY,
      m_axis_hdcp_tstrb(3 downto 0) => intf_net_v_hdmi_tx_hdcp_out_TSTRB(3 downto 0),
      m_axis_hdcp_tuser(31 downto 0) => intf_net_v_hdmi_tx_hdcp_out_TUSER(31 downto 0),
      m_axis_hdcp_tvalid => intf_net_v_hdmi_tx_hdcp_out_TVALID,
      s_axi_aclk => s_axi_cpu_aclk,
      s_axi_araddr(8 downto 0) => intf_net_axi_crossbar_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => s_axi_cpu_aresetn,
      s_axi_arprot(2 downto 0) => intf_net_axi_crossbar_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => intf_net_axi_crossbar_M00_AXI_ARREADY,
      s_axi_arvalid => intf_net_axi_crossbar_M00_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => intf_net_axi_crossbar_M00_AXI_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => intf_net_axi_crossbar_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => intf_net_axi_crossbar_M00_AXI_AWREADY,
      s_axi_awvalid => intf_net_axi_crossbar_M00_AXI_AWVALID,
      s_axi_bready => intf_net_axi_crossbar_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => intf_net_axi_crossbar_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => intf_net_axi_crossbar_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => intf_net_axi_crossbar_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => intf_net_axi_crossbar_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => intf_net_axi_crossbar_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => intf_net_axi_crossbar_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => intf_net_axi_crossbar_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => intf_net_axi_crossbar_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => intf_net_axi_crossbar_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => intf_net_axi_crossbar_M00_AXI_WVALID,
      s_axis_audio_aclk => s_axis_audio_aclk,
      s_axis_audio_aresetn => s_axis_audio_aresetn,
      s_axis_audio_tdata(31 downto 0) => AUDIO_IN_tdata(31 downto 0),
      s_axis_audio_tid(2 downto 0) => AUDIO_IN_tid(2 downto 0),
      s_axis_audio_tready => AUDIO_IN_tready,
      s_axis_audio_tvalid => AUDIO_IN_tvalid,
      s_axis_hdcp_tdata(95 downto 0) => intf_net_v_hdmi_tx_hdcp_out_TDATA(95 downto 0),
      s_axis_hdcp_tid => intf_net_v_hdmi_tx_hdcp_out_TID,
      s_axis_hdcp_tlast => intf_net_v_hdmi_tx_hdcp_out_TLAST,
      s_axis_hdcp_tready => intf_net_v_hdmi_tx_hdcp_out_TREADY,
      s_axis_hdcp_tstrb(3 downto 0) => intf_net_v_hdmi_tx_hdcp_out_TSTRB(3 downto 0),
      s_axis_hdcp_tuser(31 downto 0) => intf_net_v_hdmi_tx_hdcp_out_TUSER(31 downto 0),
      s_axis_hdcp_tvalid => intf_net_v_hdmi_tx_hdcp_out_TVALID,
      s_axis_video_aclk => s_axis_video_aclk,
      s_axis_video_aresetn_in => s_axis_video_aresetn,
      s_axis_video_aresetn_out => net_v_hdmi_tx_s_axis_video_aresetn_out,
      sb_status_data(1 downto 0) => SB_STATUS_IN_tdata(1 downto 0),
      sb_status_valid => SB_STATUS_IN_tvalid,
      video_clk => video_clk,
      video_data(23 downto 0) => intf_net_v_axi4s_vid_out_vid_io_out_DATA(23 downto 0),
      video_de => intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO,
      video_hs => intf_net_v_axi4s_vid_out_vid_io_out_HSYNC,
      video_reset => net_v_hdmi_tx_video_reset,
      video_vs => intf_net_v_axi4s_vid_out_vid_io_out_VSYNC
    );
v_tc: component design_1_v_hdmi_tx_ss_0_0_bd_8000_v_tc_0
     port map (
      active_video_out => intf_net_v_tc_vtiming_out_ACTIVE_VIDEO,
      clk => video_clk,
      clken => '1',
      field_id_out => intf_net_v_tc_vtiming_out_FIELD,
      fsync_in => '0',
      fsync_out(0) => NLW_v_tc_fsync_out_UNCONNECTED(0),
      gen_clken => net_v_axi4s_vid_out_vtg_ce,
      hblank_out => intf_net_v_tc_vtiming_out_HBLANK,
      hsync_out => intf_net_v_tc_vtiming_out_HSYNC,
      irq => NLW_v_tc_irq_UNCONNECTED,
      resetn => net_util_vector_logic_0_Res,
      s_axi_aclk => s_axi_cpu_aclk,
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => intf_net_axi_crossbar_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => s_axi_cpu_aresetn,
      s_axi_arready => intf_net_axi_crossbar_M01_AXI_ARREADY,
      s_axi_arvalid => intf_net_axi_crossbar_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => intf_net_axi_crossbar_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => intf_net_axi_crossbar_M01_AXI_AWREADY,
      s_axi_awvalid => intf_net_axi_crossbar_M01_AXI_AWVALID,
      s_axi_bready => intf_net_axi_crossbar_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => intf_net_axi_crossbar_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => intf_net_axi_crossbar_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => intf_net_axi_crossbar_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => intf_net_axi_crossbar_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => intf_net_axi_crossbar_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => intf_net_axi_crossbar_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => intf_net_axi_crossbar_M01_AXI_WDATA(63 downto 32),
      s_axi_wready => intf_net_axi_crossbar_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => intf_net_axi_crossbar_M01_AXI_WSTRB(7 downto 4),
      s_axi_wvalid => intf_net_axi_crossbar_M01_AXI_WVALID,
      vblank_out => intf_net_v_tc_vtiming_out_VBLANK,
      vsync_out => intf_net_v_tc_vtiming_out_VSYNC
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_hdmi_tx_ss_0_0 is
  port (
    s_axi_cpu_aclk : in STD_LOGIC;
    s_axi_cpu_aresetn : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    s_axis_audio_aclk : in STD_LOGIC;
    s_axis_audio_aresetn : in STD_LOGIC;
    video_clk : in STD_LOGIC;
    acr_cts : in STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : in STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : in STD_LOGIC;
    hpd : in STD_LOGIC;
    irq : out STD_LOGIC;
    fid : in STD_LOGIC;
    locked : out STD_LOGIC;
    s_axis_video_aclk : in STD_LOGIC;
    s_axis_video_aresetn : in STD_LOGIC;
    VIDEO_IN_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    VIDEO_IN_tlast : in STD_LOGIC;
    VIDEO_IN_tready : out STD_LOGIC;
    VIDEO_IN_tuser : in STD_LOGIC;
    VIDEO_IN_tvalid : in STD_LOGIC;
    SB_STATUS_IN_tdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SB_STATUS_IN_tvalid : in STD_LOGIC;
    AUDIO_IN_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AUDIO_IN_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AUDIO_IN_tready : out STD_LOGIC;
    AUDIO_IN_tvalid : in STD_LOGIC;
    S_AXI_CPU_IN_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_CPU_IN_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CPU_IN_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_CPU_IN_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    DDC_OUT_scl_i : in STD_LOGIC;
    DDC_OUT_scl_o : out STD_LOGIC;
    DDC_OUT_scl_t : out STD_LOGIC;
    DDC_OUT_sda_i : in STD_LOGIC;
    DDC_OUT_sda_o : out STD_LOGIC;
    DDC_OUT_sda_t : out STD_LOGIC;
    LINK_DATA0_OUT_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA0_OUT_tvalid : out STD_LOGIC;
    LINK_DATA1_OUT_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA1_OUT_tvalid : out STD_LOGIC;
    LINK_DATA2_OUT_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA2_OUT_tvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_v_hdmi_tx_ss_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_v_hdmi_tx_ss_0_0 : entity is "design_1_v_hdmi_tx_ss_0_0,bd_8000,{v_hdmi=hardware_evaluation}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_v_hdmi_tx_ss_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_v_hdmi_tx_ss_0_0 : entity is "bd_8000,Vivado 2016.4";
end design_1_v_hdmi_tx_ss_0_0;

architecture STRUCTURE of design_1_v_hdmi_tx_ss_0_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "design_1_v_hdmi_tx_ss_0_0.hwdef";
begin
inst: entity work.design_1_v_hdmi_tx_ss_0_0_bd_8000
     port map (
      AUDIO_IN_tdata(31 downto 0) => AUDIO_IN_tdata(31 downto 0),
      AUDIO_IN_tid(2 downto 0) => AUDIO_IN_tid(2 downto 0),
      AUDIO_IN_tready => AUDIO_IN_tready,
      AUDIO_IN_tvalid => AUDIO_IN_tvalid,
      DDC_OUT_scl_i => DDC_OUT_scl_i,
      DDC_OUT_scl_o => DDC_OUT_scl_o,
      DDC_OUT_scl_t => DDC_OUT_scl_t,
      DDC_OUT_sda_i => DDC_OUT_sda_i,
      DDC_OUT_sda_o => DDC_OUT_sda_o,
      DDC_OUT_sda_t => DDC_OUT_sda_t,
      LINK_DATA0_OUT_tdata(39 downto 0) => LINK_DATA0_OUT_tdata(39 downto 0),
      LINK_DATA0_OUT_tvalid => LINK_DATA0_OUT_tvalid,
      LINK_DATA1_OUT_tdata(39 downto 0) => LINK_DATA1_OUT_tdata(39 downto 0),
      LINK_DATA1_OUT_tvalid => LINK_DATA1_OUT_tvalid,
      LINK_DATA2_OUT_tdata(39 downto 0) => LINK_DATA2_OUT_tdata(39 downto 0),
      LINK_DATA2_OUT_tvalid => LINK_DATA2_OUT_tvalid,
      SB_STATUS_IN_tdata(1 downto 0) => SB_STATUS_IN_tdata(1 downto 0),
      SB_STATUS_IN_tvalid => SB_STATUS_IN_tvalid,
      S_AXI_CPU_IN_araddr(16 downto 0) => S_AXI_CPU_IN_araddr(16 downto 0),
      S_AXI_CPU_IN_arprot(2 downto 0) => S_AXI_CPU_IN_arprot(2 downto 0),
      S_AXI_CPU_IN_arready(0) => S_AXI_CPU_IN_arready(0),
      S_AXI_CPU_IN_arvalid(0) => S_AXI_CPU_IN_arvalid(0),
      S_AXI_CPU_IN_awaddr(16 downto 0) => S_AXI_CPU_IN_awaddr(16 downto 0),
      S_AXI_CPU_IN_awprot(2 downto 0) => S_AXI_CPU_IN_awprot(2 downto 0),
      S_AXI_CPU_IN_awready(0) => S_AXI_CPU_IN_awready(0),
      S_AXI_CPU_IN_awvalid(0) => S_AXI_CPU_IN_awvalid(0),
      S_AXI_CPU_IN_bready(0) => S_AXI_CPU_IN_bready(0),
      S_AXI_CPU_IN_bresp(1 downto 0) => S_AXI_CPU_IN_bresp(1 downto 0),
      S_AXI_CPU_IN_bvalid(0) => S_AXI_CPU_IN_bvalid(0),
      S_AXI_CPU_IN_rdata(31 downto 0) => S_AXI_CPU_IN_rdata(31 downto 0),
      S_AXI_CPU_IN_rready(0) => S_AXI_CPU_IN_rready(0),
      S_AXI_CPU_IN_rresp(1 downto 0) => S_AXI_CPU_IN_rresp(1 downto 0),
      S_AXI_CPU_IN_rvalid(0) => S_AXI_CPU_IN_rvalid(0),
      S_AXI_CPU_IN_wdata(31 downto 0) => S_AXI_CPU_IN_wdata(31 downto 0),
      S_AXI_CPU_IN_wready(0) => S_AXI_CPU_IN_wready(0),
      S_AXI_CPU_IN_wstrb(3 downto 0) => S_AXI_CPU_IN_wstrb(3 downto 0),
      S_AXI_CPU_IN_wvalid(0) => S_AXI_CPU_IN_wvalid(0),
      VIDEO_IN_tdata(23 downto 0) => VIDEO_IN_tdata(23 downto 0),
      VIDEO_IN_tlast => VIDEO_IN_tlast,
      VIDEO_IN_tready => VIDEO_IN_tready,
      VIDEO_IN_tuser => VIDEO_IN_tuser,
      VIDEO_IN_tvalid => VIDEO_IN_tvalid,
      acr_cts(19 downto 0) => acr_cts(19 downto 0),
      acr_n(19 downto 0) => acr_n(19 downto 0),
      acr_valid => acr_valid,
      fid => fid,
      hpd => hpd,
      irq => irq,
      link_clk => link_clk,
      locked => locked,
      s_axi_cpu_aclk => s_axi_cpu_aclk,
      s_axi_cpu_aresetn => s_axi_cpu_aresetn,
      s_axis_audio_aclk => s_axis_audio_aclk,
      s_axis_audio_aresetn => s_axis_audio_aresetn,
      s_axis_video_aclk => s_axis_video_aclk,
      s_axis_video_aresetn => s_axis_video_aresetn,
      video_clk => video_clk
    );
end STRUCTURE;
