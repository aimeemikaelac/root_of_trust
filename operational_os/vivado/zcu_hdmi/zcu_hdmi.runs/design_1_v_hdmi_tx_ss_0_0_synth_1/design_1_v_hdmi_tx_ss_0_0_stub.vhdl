-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Tue Apr 18 21:57:05 2017
-- Host        : SchoolComputer running 64-bit Ubuntu 16.10
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_v_hdmi_tx_ss_0_0_stub.vhdl
-- Design      : design_1_v_hdmi_tx_ss_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-i-es2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_cpu_aclk,s_axi_cpu_aresetn,link_clk,s_axis_audio_aclk,s_axis_audio_aresetn,video_clk,acr_cts[19:0],acr_n[19:0],acr_valid,hpd,irq,fid,locked,s_axis_video_aclk,s_axis_video_aresetn,VIDEO_IN_tdata[23:0],VIDEO_IN_tlast,VIDEO_IN_tready,VIDEO_IN_tuser,VIDEO_IN_tvalid,SB_STATUS_IN_tdata[1:0],SB_STATUS_IN_tvalid,AUDIO_IN_tdata[31:0],AUDIO_IN_tid[2:0],AUDIO_IN_tready,AUDIO_IN_tvalid,S_AXI_CPU_IN_awaddr[16:0],S_AXI_CPU_IN_awprot[2:0],S_AXI_CPU_IN_awvalid[0:0],S_AXI_CPU_IN_awready[0:0],S_AXI_CPU_IN_wdata[31:0],S_AXI_CPU_IN_wstrb[3:0],S_AXI_CPU_IN_wvalid[0:0],S_AXI_CPU_IN_wready[0:0],S_AXI_CPU_IN_bresp[1:0],S_AXI_CPU_IN_bvalid[0:0],S_AXI_CPU_IN_bready[0:0],S_AXI_CPU_IN_araddr[16:0],S_AXI_CPU_IN_arprot[2:0],S_AXI_CPU_IN_arvalid[0:0],S_AXI_CPU_IN_arready[0:0],S_AXI_CPU_IN_rdata[31:0],S_AXI_CPU_IN_rresp[1:0],S_AXI_CPU_IN_rvalid[0:0],S_AXI_CPU_IN_rready[0:0],DDC_OUT_scl_i,DDC_OUT_scl_o,DDC_OUT_scl_t,DDC_OUT_sda_i,DDC_OUT_sda_o,DDC_OUT_sda_t,LINK_DATA0_OUT_tdata[39:0],LINK_DATA0_OUT_tvalid,LINK_DATA1_OUT_tdata[39:0],LINK_DATA1_OUT_tvalid,LINK_DATA2_OUT_tdata[39:0],LINK_DATA2_OUT_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_8000,Vivado 2016.4";
begin
end;
