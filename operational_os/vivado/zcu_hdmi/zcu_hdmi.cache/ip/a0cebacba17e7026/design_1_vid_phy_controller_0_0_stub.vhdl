-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Mon Apr 17 19:56:20 2017
-- Host        : SchoolComputer running 64-bit Ubuntu 16.10
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vid_phy_controller_0_0_stub.vhdl
-- Design      : design_1_vid_phy_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-i-es2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    tx_refclk_rdy : in STD_LOGIC;
    tx_tmds_clk : out STD_LOGIC;
    tx_video_clk : out STD_LOGIC;
    tx_tmds_clk_p : out STD_LOGIC;
    tx_tmds_clk_n : out STD_LOGIC;
    mgtrefclk1_pad_p_in : in STD_LOGIC;
    mgtrefclk1_pad_n_in : in STD_LOGIC;
    phy_txn_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    phy_txp_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    txoutclk : out STD_LOGIC;
    vid_phy_tx_axi4s_aclk : in STD_LOGIC;
    vid_phy_tx_axi4s_aresetn : in STD_LOGIC;
    vid_phy_tx_axi4s_ch0_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    vid_phy_tx_axi4s_ch0_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_phy_tx_axi4s_ch0_tvalid : in STD_LOGIC;
    vid_phy_tx_axi4s_ch0_tready : out STD_LOGIC;
    vid_phy_tx_axi4s_ch1_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    vid_phy_tx_axi4s_ch1_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_phy_tx_axi4s_ch1_tvalid : in STD_LOGIC;
    vid_phy_tx_axi4s_ch1_tready : out STD_LOGIC;
    vid_phy_tx_axi4s_ch2_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    vid_phy_tx_axi4s_ch2_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_phy_tx_axi4s_ch2_tvalid : in STD_LOGIC;
    vid_phy_tx_axi4s_ch2_tready : out STD_LOGIC;
    irq : out STD_LOGIC;
    vid_phy_sb_aclk : in STD_LOGIC;
    vid_phy_sb_aresetn : in STD_LOGIC;
    vid_phy_status_sb_tx_tdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vid_phy_status_sb_tx_tvalid : out STD_LOGIC;
    vid_phy_status_sb_tx_tready : in STD_LOGIC;
    vid_phy_axi4lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    vid_phy_axi4lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vid_phy_axi4lite_awvalid : in STD_LOGIC;
    vid_phy_axi4lite_awready : out STD_LOGIC;
    vid_phy_axi4lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    vid_phy_axi4lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vid_phy_axi4lite_wvalid : in STD_LOGIC;
    vid_phy_axi4lite_wready : out STD_LOGIC;
    vid_phy_axi4lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vid_phy_axi4lite_bvalid : out STD_LOGIC;
    vid_phy_axi4lite_bready : in STD_LOGIC;
    vid_phy_axi4lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    vid_phy_axi4lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vid_phy_axi4lite_arvalid : in STD_LOGIC;
    vid_phy_axi4lite_arready : out STD_LOGIC;
    vid_phy_axi4lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vid_phy_axi4lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vid_phy_axi4lite_rvalid : out STD_LOGIC;
    vid_phy_axi4lite_rready : in STD_LOGIC;
    vid_phy_axi4lite_aclk : in STD_LOGIC;
    vid_phy_axi4lite_aresetn : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "tx_refclk_rdy,tx_tmds_clk,tx_video_clk,tx_tmds_clk_p,tx_tmds_clk_n,mgtrefclk1_pad_p_in,mgtrefclk1_pad_n_in,phy_txn_out[2:0],phy_txp_out[2:0],txoutclk,vid_phy_tx_axi4s_aclk,vid_phy_tx_axi4s_aresetn,vid_phy_tx_axi4s_ch0_tdata[39:0],vid_phy_tx_axi4s_ch0_tuser[0:0],vid_phy_tx_axi4s_ch0_tvalid,vid_phy_tx_axi4s_ch0_tready,vid_phy_tx_axi4s_ch1_tdata[39:0],vid_phy_tx_axi4s_ch1_tuser[0:0],vid_phy_tx_axi4s_ch1_tvalid,vid_phy_tx_axi4s_ch1_tready,vid_phy_tx_axi4s_ch2_tdata[39:0],vid_phy_tx_axi4s_ch2_tuser[0:0],vid_phy_tx_axi4s_ch2_tvalid,vid_phy_tx_axi4s_ch2_tready,irq,vid_phy_sb_aclk,vid_phy_sb_aresetn,vid_phy_status_sb_tx_tdata[1:0],vid_phy_status_sb_tx_tvalid,vid_phy_status_sb_tx_tready,vid_phy_axi4lite_awaddr[9:0],vid_phy_axi4lite_awprot[2:0],vid_phy_axi4lite_awvalid,vid_phy_axi4lite_awready,vid_phy_axi4lite_wdata[31:0],vid_phy_axi4lite_wstrb[3:0],vid_phy_axi4lite_wvalid,vid_phy_axi4lite_wready,vid_phy_axi4lite_bresp[1:0],vid_phy_axi4lite_bvalid,vid_phy_axi4lite_bready,vid_phy_axi4lite_araddr[9:0],vid_phy_axi4lite_arprot[2:0],vid_phy_axi4lite_arvalid,vid_phy_axi4lite_arready,vid_phy_axi4lite_rdata[31:0],vid_phy_axi4lite_rresp[1:0],vid_phy_axi4lite_rvalid,vid_phy_axi4lite_rready,vid_phy_axi4lite_aclk,vid_phy_axi4lite_aresetn,drpclk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "design_1_vid_phy_controller_0_0_top,Vivado 2016.4";
begin
end;
