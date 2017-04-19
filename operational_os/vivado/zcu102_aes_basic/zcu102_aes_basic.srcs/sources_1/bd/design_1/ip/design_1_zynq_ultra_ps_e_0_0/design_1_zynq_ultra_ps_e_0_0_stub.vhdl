-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Sun Mar  5 19:47:09 2017
-- Host        : SchoolComputer running 64-bit Ubuntu 16.10
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_zynq_ultra_ps_e_0_0 -prefix
--               design_1_zynq_ultra_ps_e_0_0_ design_1_zynq_ultra_ps_e_0_0_stub.vhdl
-- Design      : design_1_zynq_ultra_ps_e_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-i-es2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_zynq_ultra_ps_e_0_0 is
  Port ( 
    maxihpm0_fpd_aclk : in STD_LOGIC;
    maxigp0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_awlock : out STD_LOGIC;
    maxigp0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awvalid : out STD_LOGIC;
    maxigp0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awready : in STD_LOGIC;
    maxigp0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_wlast : out STD_LOGIC;
    maxigp0_wvalid : out STD_LOGIC;
    maxigp0_wready : in STD_LOGIC;
    maxigp0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_bvalid : in STD_LOGIC;
    maxigp0_bready : out STD_LOGIC;
    maxigp0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_arlock : out STD_LOGIC;
    maxigp0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arvalid : out STD_LOGIC;
    maxigp0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_arready : in STD_LOGIC;
    maxigp0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_rlast : in STD_LOGIC;
    maxigp0_rvalid : in STD_LOGIC;
    maxigp0_rready : out STD_LOGIC;
    maxigp0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxihpm1_fpd_aclk : in STD_LOGIC;
    maxigp1_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp1_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_awlock : out STD_LOGIC;
    maxigp1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_awvalid : out STD_LOGIC;
    maxigp1_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_awready : in STD_LOGIC;
    maxigp1_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp1_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_wlast : out STD_LOGIC;
    maxigp1_wvalid : out STD_LOGIC;
    maxigp1_wready : in STD_LOGIC;
    maxigp1_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_bvalid : in STD_LOGIC;
    maxigp1_bready : out STD_LOGIC;
    maxigp1_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp1_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_arlock : out STD_LOGIC;
    maxigp1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_arvalid : out STD_LOGIC;
    maxigp1_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_arready : in STD_LOGIC;
    maxigp1_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_rlast : in STD_LOGIC;
    maxigp1_rvalid : in STD_LOGIC;
    maxigp1_rready : out STD_LOGIC;
    maxigp1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    emio_enet3_tx_r_data_rdy : in STD_LOGIC;
    emio_enet3_tx_r_rd : out STD_LOGIC;
    emio_enet3_tx_r_valid : in STD_LOGIC;
    emio_enet3_tx_r_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    emio_enet3_tx_r_sop : in STD_LOGIC;
    emio_enet3_tx_r_eop : in STD_LOGIC;
    emio_enet3_tx_r_err : in STD_LOGIC;
    emio_enet3_tx_r_underflow : in STD_LOGIC;
    emio_enet3_tx_r_flushed : in STD_LOGIC;
    emio_enet3_tx_r_control : in STD_LOGIC;
    emio_enet3_dma_tx_end_tog : out STD_LOGIC;
    emio_enet3_dma_tx_status_tog : in STD_LOGIC;
    emio_enet3_tx_r_status : out STD_LOGIC_VECTOR ( 3 downto 0 );
    emio_enet3_rx_w_wr : out STD_LOGIC;
    emio_enet3_rx_w_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    emio_enet3_rx_w_sop : out STD_LOGIC;
    emio_enet3_rx_w_eop : out STD_LOGIC;
    emio_enet3_rx_w_status : out STD_LOGIC_VECTOR ( 44 downto 0 );
    emio_enet3_rx_w_err : out STD_LOGIC;
    emio_enet3_rx_w_overflow : in STD_LOGIC;
    emio_enet3_rx_w_flush : out STD_LOGIC;
    emio_enet3_tx_r_fixed_lat : out STD_LOGIC;
    fmio_gem3_fifo_tx_clk_to_pl_bufg : out STD_LOGIC;
    fmio_gem3_fifo_rx_clk_to_pl_bufg : out STD_LOGIC;
    fmio_gem3_fifo_tx_clk_from_pl : in STD_LOGIC;
    fmio_gem3_fifo_rx_clk_from_pl : in STD_LOGIC;
    emio_enet3_tx_sof : out STD_LOGIC;
    emio_enet3_sync_frame_tx : out STD_LOGIC;
    emio_enet3_delay_req_tx : out STD_LOGIC;
    emio_enet3_pdelay_req_tx : out STD_LOGIC;
    emio_enet3_pdelay_resp_tx : out STD_LOGIC;
    emio_enet3_rx_sof : out STD_LOGIC;
    emio_enet3_sync_frame_rx : out STD_LOGIC;
    emio_enet3_delay_req_rx : out STD_LOGIC;
    emio_enet3_pdelay_req_rx : out STD_LOGIC;
    emio_enet3_pdelay_resp_rx : out STD_LOGIC;
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_resetn0 : out STD_LOGIC;
    aib_pmu_afifm_fpd_ack : in STD_LOGIC;
    aib_pmu_afifm_lpd_ack : in STD_LOGIC;
    pmu_aib_afifm_fpd_req : out STD_LOGIC;
    pmu_aib_afifm_lpd_req : out STD_LOGIC;
    pmu_error_from_pl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pmu_error_to_pl : out STD_LOGIC_VECTOR ( 46 downto 0 );
    pl_clk0 : out STD_LOGIC;
    ps_pl_irq_pl_ipi : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_zynq_ultra_ps_e_0_0;

architecture stub of design_1_zynq_ultra_ps_e_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "maxihpm0_fpd_aclk,maxigp0_awid[15:0],maxigp0_awaddr[39:0],maxigp0_awlen[7:0],maxigp0_awsize[2:0],maxigp0_awburst[1:0],maxigp0_awlock,maxigp0_awcache[3:0],maxigp0_awprot[2:0],maxigp0_awvalid,maxigp0_awuser[15:0],maxigp0_awready,maxigp0_wdata[127:0],maxigp0_wstrb[15:0],maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid[15:0],maxigp0_bresp[1:0],maxigp0_bvalid,maxigp0_bready,maxigp0_arid[15:0],maxigp0_araddr[39:0],maxigp0_arlen[7:0],maxigp0_arsize[2:0],maxigp0_arburst[1:0],maxigp0_arlock,maxigp0_arcache[3:0],maxigp0_arprot[2:0],maxigp0_arvalid,maxigp0_aruser[15:0],maxigp0_arready,maxigp0_rid[15:0],maxigp0_rdata[127:0],maxigp0_rresp[1:0],maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos[3:0],maxigp0_arqos[3:0],maxihpm1_fpd_aclk,maxigp1_awid[15:0],maxigp1_awaddr[39:0],maxigp1_awlen[7:0],maxigp1_awsize[2:0],maxigp1_awburst[1:0],maxigp1_awlock,maxigp1_awcache[3:0],maxigp1_awprot[2:0],maxigp1_awvalid,maxigp1_awuser[15:0],maxigp1_awready,maxigp1_wdata[127:0],maxigp1_wstrb[15:0],maxigp1_wlast,maxigp1_wvalid,maxigp1_wready,maxigp1_bid[15:0],maxigp1_bresp[1:0],maxigp1_bvalid,maxigp1_bready,maxigp1_arid[15:0],maxigp1_araddr[39:0],maxigp1_arlen[7:0],maxigp1_arsize[2:0],maxigp1_arburst[1:0],maxigp1_arlock,maxigp1_arcache[3:0],maxigp1_arprot[2:0],maxigp1_arvalid,maxigp1_aruser[15:0],maxigp1_arready,maxigp1_rid[15:0],maxigp1_rdata[127:0],maxigp1_rresp[1:0],maxigp1_rlast,maxigp1_rvalid,maxigp1_rready,maxigp1_awqos[3:0],maxigp1_arqos[3:0],emio_enet3_tx_r_data_rdy,emio_enet3_tx_r_rd,emio_enet3_tx_r_valid,emio_enet3_tx_r_data[7:0],emio_enet3_tx_r_sop,emio_enet3_tx_r_eop,emio_enet3_tx_r_err,emio_enet3_tx_r_underflow,emio_enet3_tx_r_flushed,emio_enet3_tx_r_control,emio_enet3_dma_tx_end_tog,emio_enet3_dma_tx_status_tog,emio_enet3_tx_r_status[3:0],emio_enet3_rx_w_wr,emio_enet3_rx_w_data[7:0],emio_enet3_rx_w_sop,emio_enet3_rx_w_eop,emio_enet3_rx_w_status[44:0],emio_enet3_rx_w_err,emio_enet3_rx_w_overflow,emio_enet3_rx_w_flush,emio_enet3_tx_r_fixed_lat,fmio_gem3_fifo_tx_clk_to_pl_bufg,fmio_gem3_fifo_rx_clk_to_pl_bufg,fmio_gem3_fifo_tx_clk_from_pl,fmio_gem3_fifo_rx_clk_from_pl,emio_enet3_tx_sof,emio_enet3_sync_frame_tx,emio_enet3_delay_req_tx,emio_enet3_pdelay_req_tx,emio_enet3_pdelay_resp_tx,emio_enet3_rx_sof,emio_enet3_sync_frame_rx,emio_enet3_delay_req_rx,emio_enet3_pdelay_req_rx,emio_enet3_pdelay_resp_rx,pl_ps_irq0[0:0],pl_resetn0,aib_pmu_afifm_fpd_ack,aib_pmu_afifm_lpd_ack,pmu_aib_afifm_fpd_req,pmu_aib_afifm_lpd_req,pmu_error_from_pl[3:0],pmu_error_to_pl[46:0],pl_clk0,ps_pl_irq_pl_ipi[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "zynq_ultra_ps_e_v2_0_1_zynq_ultra_ps_e,Vivado 2016.4";
begin
end;
