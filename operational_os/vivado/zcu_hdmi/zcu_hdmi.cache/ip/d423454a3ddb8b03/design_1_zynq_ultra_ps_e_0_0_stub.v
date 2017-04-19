// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Sun Apr 16 16:46:38 2017
// Host        : SchoolComputer running 64-bit Ubuntu 16.10
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_zynq_ultra_ps_e_0_0_stub.v
// Design      : design_1_zynq_ultra_ps_e_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-i-es2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "zynq_ultra_ps_e_v2_0_1_zynq_ultra_ps_e,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(maxihpm0_fpd_aclk, maxigp0_awid, 
  maxigp0_awaddr, maxigp0_awlen, maxigp0_awsize, maxigp0_awburst, maxigp0_awlock, 
  maxigp0_awcache, maxigp0_awprot, maxigp0_awvalid, maxigp0_awuser, maxigp0_awready, 
  maxigp0_wdata, maxigp0_wstrb, maxigp0_wlast, maxigp0_wvalid, maxigp0_wready, maxigp0_bid, 
  maxigp0_bresp, maxigp0_bvalid, maxigp0_bready, maxigp0_arid, maxigp0_araddr, maxigp0_arlen, 
  maxigp0_arsize, maxigp0_arburst, maxigp0_arlock, maxigp0_arcache, maxigp0_arprot, 
  maxigp0_arvalid, maxigp0_aruser, maxigp0_arready, maxigp0_rid, maxigp0_rdata, 
  maxigp0_rresp, maxigp0_rlast, maxigp0_rvalid, maxigp0_rready, maxigp0_awqos, maxigp0_arqos, 
  maxihpm1_fpd_aclk, maxigp1_awid, maxigp1_awaddr, maxigp1_awlen, maxigp1_awsize, 
  maxigp1_awburst, maxigp1_awlock, maxigp1_awcache, maxigp1_awprot, maxigp1_awvalid, 
  maxigp1_awuser, maxigp1_awready, maxigp1_wdata, maxigp1_wstrb, maxigp1_wlast, 
  maxigp1_wvalid, maxigp1_wready, maxigp1_bid, maxigp1_bresp, maxigp1_bvalid, maxigp1_bready, 
  maxigp1_arid, maxigp1_araddr, maxigp1_arlen, maxigp1_arsize, maxigp1_arburst, 
  maxigp1_arlock, maxigp1_arcache, maxigp1_arprot, maxigp1_arvalid, maxigp1_aruser, 
  maxigp1_arready, maxigp1_rid, maxigp1_rdata, maxigp1_rresp, maxigp1_rlast, maxigp1_rvalid, 
  maxigp1_rready, maxigp1_awqos, maxigp1_arqos, saxihp0_fpd_aclk, saxigp2_aruser, 
  saxigp2_awuser, saxigp2_awid, saxigp2_awaddr, saxigp2_awlen, saxigp2_awsize, 
  saxigp2_awburst, saxigp2_awlock, saxigp2_awcache, saxigp2_awprot, saxigp2_awvalid, 
  saxigp2_awready, saxigp2_wdata, saxigp2_wstrb, saxigp2_wlast, saxigp2_wvalid, 
  saxigp2_wready, saxigp2_bid, saxigp2_bresp, saxigp2_bvalid, saxigp2_bready, saxigp2_arid, 
  saxigp2_araddr, saxigp2_arlen, saxigp2_arsize, saxigp2_arburst, saxigp2_arlock, 
  saxigp2_arcache, saxigp2_arprot, saxigp2_arvalid, saxigp2_arready, saxigp2_rid, 
  saxigp2_rdata, saxigp2_rresp, saxigp2_rlast, saxigp2_rvalid, saxigp2_rready, saxigp2_awqos, 
  saxigp2_arqos, emio_enet3_tx_r_data_rdy, emio_enet3_tx_r_rd, emio_enet3_tx_r_valid, 
  emio_enet3_tx_r_data, emio_enet3_tx_r_sop, emio_enet3_tx_r_eop, emio_enet3_tx_r_err, 
  emio_enet3_tx_r_underflow, emio_enet3_tx_r_flushed, emio_enet3_tx_r_control, 
  emio_enet3_dma_tx_end_tog, emio_enet3_dma_tx_status_tog, emio_enet3_tx_r_status, 
  emio_enet3_rx_w_wr, emio_enet3_rx_w_data, emio_enet3_rx_w_sop, emio_enet3_rx_w_eop, 
  emio_enet3_rx_w_status, emio_enet3_rx_w_err, emio_enet3_rx_w_overflow, 
  emio_enet3_rx_w_flush, emio_enet3_tx_r_fixed_lat, fmio_gem3_fifo_tx_clk_to_pl_bufg, 
  fmio_gem3_fifo_rx_clk_to_pl_bufg, fmio_gem3_fifo_tx_clk_from_pl, 
  fmio_gem3_fifo_rx_clk_from_pl, emio_enet3_tx_sof, emio_enet3_sync_frame_tx, 
  emio_enet3_delay_req_tx, emio_enet3_pdelay_req_tx, emio_enet3_pdelay_resp_tx, 
  emio_enet3_rx_sof, emio_enet3_sync_frame_rx, emio_enet3_delay_req_rx, 
  emio_enet3_pdelay_req_rx, emio_enet3_pdelay_resp_rx, pl_ps_irq0, pl_resetn0, 
  aib_pmu_afifm_fpd_ack, aib_pmu_afifm_lpd_ack, pmu_aib_afifm_fpd_req, 
  pmu_aib_afifm_lpd_req, pmu_error_from_pl, pmu_error_to_pl, pl_clk0, pl_clk1, 
  ps_pl_irq_pl_ipi)
/* synthesis syn_black_box black_box_pad_pin="maxihpm0_fpd_aclk,maxigp0_awid[15:0],maxigp0_awaddr[39:0],maxigp0_awlen[7:0],maxigp0_awsize[2:0],maxigp0_awburst[1:0],maxigp0_awlock,maxigp0_awcache[3:0],maxigp0_awprot[2:0],maxigp0_awvalid,maxigp0_awuser[15:0],maxigp0_awready,maxigp0_wdata[127:0],maxigp0_wstrb[15:0],maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid[15:0],maxigp0_bresp[1:0],maxigp0_bvalid,maxigp0_bready,maxigp0_arid[15:0],maxigp0_araddr[39:0],maxigp0_arlen[7:0],maxigp0_arsize[2:0],maxigp0_arburst[1:0],maxigp0_arlock,maxigp0_arcache[3:0],maxigp0_arprot[2:0],maxigp0_arvalid,maxigp0_aruser[15:0],maxigp0_arready,maxigp0_rid[15:0],maxigp0_rdata[127:0],maxigp0_rresp[1:0],maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos[3:0],maxigp0_arqos[3:0],maxihpm1_fpd_aclk,maxigp1_awid[15:0],maxigp1_awaddr[39:0],maxigp1_awlen[7:0],maxigp1_awsize[2:0],maxigp1_awburst[1:0],maxigp1_awlock,maxigp1_awcache[3:0],maxigp1_awprot[2:0],maxigp1_awvalid,maxigp1_awuser[15:0],maxigp1_awready,maxigp1_wdata[127:0],maxigp1_wstrb[15:0],maxigp1_wlast,maxigp1_wvalid,maxigp1_wready,maxigp1_bid[15:0],maxigp1_bresp[1:0],maxigp1_bvalid,maxigp1_bready,maxigp1_arid[15:0],maxigp1_araddr[39:0],maxigp1_arlen[7:0],maxigp1_arsize[2:0],maxigp1_arburst[1:0],maxigp1_arlock,maxigp1_arcache[3:0],maxigp1_arprot[2:0],maxigp1_arvalid,maxigp1_aruser[15:0],maxigp1_arready,maxigp1_rid[15:0],maxigp1_rdata[127:0],maxigp1_rresp[1:0],maxigp1_rlast,maxigp1_rvalid,maxigp1_rready,maxigp1_awqos[3:0],maxigp1_arqos[3:0],saxihp0_fpd_aclk,saxigp2_aruser,saxigp2_awuser,saxigp2_awid[5:0],saxigp2_awaddr[48:0],saxigp2_awlen[7:0],saxigp2_awsize[2:0],saxigp2_awburst[1:0],saxigp2_awlock,saxigp2_awcache[3:0],saxigp2_awprot[2:0],saxigp2_awvalid,saxigp2_awready,saxigp2_wdata[127:0],saxigp2_wstrb[15:0],saxigp2_wlast,saxigp2_wvalid,saxigp2_wready,saxigp2_bid[5:0],saxigp2_bresp[1:0],saxigp2_bvalid,saxigp2_bready,saxigp2_arid[5:0],saxigp2_araddr[48:0],saxigp2_arlen[7:0],saxigp2_arsize[2:0],saxigp2_arburst[1:0],saxigp2_arlock,saxigp2_arcache[3:0],saxigp2_arprot[2:0],saxigp2_arvalid,saxigp2_arready,saxigp2_rid[5:0],saxigp2_rdata[127:0],saxigp2_rresp[1:0],saxigp2_rlast,saxigp2_rvalid,saxigp2_rready,saxigp2_awqos[3:0],saxigp2_arqos[3:0],emio_enet3_tx_r_data_rdy,emio_enet3_tx_r_rd,emio_enet3_tx_r_valid,emio_enet3_tx_r_data[7:0],emio_enet3_tx_r_sop,emio_enet3_tx_r_eop,emio_enet3_tx_r_err,emio_enet3_tx_r_underflow,emio_enet3_tx_r_flushed,emio_enet3_tx_r_control,emio_enet3_dma_tx_end_tog,emio_enet3_dma_tx_status_tog,emio_enet3_tx_r_status[3:0],emio_enet3_rx_w_wr,emio_enet3_rx_w_data[7:0],emio_enet3_rx_w_sop,emio_enet3_rx_w_eop,emio_enet3_rx_w_status[44:0],emio_enet3_rx_w_err,emio_enet3_rx_w_overflow,emio_enet3_rx_w_flush,emio_enet3_tx_r_fixed_lat,fmio_gem3_fifo_tx_clk_to_pl_bufg,fmio_gem3_fifo_rx_clk_to_pl_bufg,fmio_gem3_fifo_tx_clk_from_pl,fmio_gem3_fifo_rx_clk_from_pl,emio_enet3_tx_sof,emio_enet3_sync_frame_tx,emio_enet3_delay_req_tx,emio_enet3_pdelay_req_tx,emio_enet3_pdelay_resp_tx,emio_enet3_rx_sof,emio_enet3_sync_frame_rx,emio_enet3_delay_req_rx,emio_enet3_pdelay_req_rx,emio_enet3_pdelay_resp_rx,pl_ps_irq0[0:0],pl_resetn0,aib_pmu_afifm_fpd_ack,aib_pmu_afifm_lpd_ack,pmu_aib_afifm_fpd_req,pmu_aib_afifm_lpd_req,pmu_error_from_pl[3:0],pmu_error_to_pl[46:0],pl_clk0,pl_clk1,ps_pl_irq_pl_ipi[3:0]" */;
  input maxihpm0_fpd_aclk;
  output [15:0]maxigp0_awid;
  output [39:0]maxigp0_awaddr;
  output [7:0]maxigp0_awlen;
  output [2:0]maxigp0_awsize;
  output [1:0]maxigp0_awburst;
  output maxigp0_awlock;
  output [3:0]maxigp0_awcache;
  output [2:0]maxigp0_awprot;
  output maxigp0_awvalid;
  output [15:0]maxigp0_awuser;
  input maxigp0_awready;
  output [127:0]maxigp0_wdata;
  output [15:0]maxigp0_wstrb;
  output maxigp0_wlast;
  output maxigp0_wvalid;
  input maxigp0_wready;
  input [15:0]maxigp0_bid;
  input [1:0]maxigp0_bresp;
  input maxigp0_bvalid;
  output maxigp0_bready;
  output [15:0]maxigp0_arid;
  output [39:0]maxigp0_araddr;
  output [7:0]maxigp0_arlen;
  output [2:0]maxigp0_arsize;
  output [1:0]maxigp0_arburst;
  output maxigp0_arlock;
  output [3:0]maxigp0_arcache;
  output [2:0]maxigp0_arprot;
  output maxigp0_arvalid;
  output [15:0]maxigp0_aruser;
  input maxigp0_arready;
  input [15:0]maxigp0_rid;
  input [127:0]maxigp0_rdata;
  input [1:0]maxigp0_rresp;
  input maxigp0_rlast;
  input maxigp0_rvalid;
  output maxigp0_rready;
  output [3:0]maxigp0_awqos;
  output [3:0]maxigp0_arqos;
  input maxihpm1_fpd_aclk;
  output [15:0]maxigp1_awid;
  output [39:0]maxigp1_awaddr;
  output [7:0]maxigp1_awlen;
  output [2:0]maxigp1_awsize;
  output [1:0]maxigp1_awburst;
  output maxigp1_awlock;
  output [3:0]maxigp1_awcache;
  output [2:0]maxigp1_awprot;
  output maxigp1_awvalid;
  output [15:0]maxigp1_awuser;
  input maxigp1_awready;
  output [127:0]maxigp1_wdata;
  output [15:0]maxigp1_wstrb;
  output maxigp1_wlast;
  output maxigp1_wvalid;
  input maxigp1_wready;
  input [15:0]maxigp1_bid;
  input [1:0]maxigp1_bresp;
  input maxigp1_bvalid;
  output maxigp1_bready;
  output [15:0]maxigp1_arid;
  output [39:0]maxigp1_araddr;
  output [7:0]maxigp1_arlen;
  output [2:0]maxigp1_arsize;
  output [1:0]maxigp1_arburst;
  output maxigp1_arlock;
  output [3:0]maxigp1_arcache;
  output [2:0]maxigp1_arprot;
  output maxigp1_arvalid;
  output [15:0]maxigp1_aruser;
  input maxigp1_arready;
  input [15:0]maxigp1_rid;
  input [127:0]maxigp1_rdata;
  input [1:0]maxigp1_rresp;
  input maxigp1_rlast;
  input maxigp1_rvalid;
  output maxigp1_rready;
  output [3:0]maxigp1_awqos;
  output [3:0]maxigp1_arqos;
  input saxihp0_fpd_aclk;
  input saxigp2_aruser;
  input saxigp2_awuser;
  input [5:0]saxigp2_awid;
  input [48:0]saxigp2_awaddr;
  input [7:0]saxigp2_awlen;
  input [2:0]saxigp2_awsize;
  input [1:0]saxigp2_awburst;
  input saxigp2_awlock;
  input [3:0]saxigp2_awcache;
  input [2:0]saxigp2_awprot;
  input saxigp2_awvalid;
  output saxigp2_awready;
  input [127:0]saxigp2_wdata;
  input [15:0]saxigp2_wstrb;
  input saxigp2_wlast;
  input saxigp2_wvalid;
  output saxigp2_wready;
  output [5:0]saxigp2_bid;
  output [1:0]saxigp2_bresp;
  output saxigp2_bvalid;
  input saxigp2_bready;
  input [5:0]saxigp2_arid;
  input [48:0]saxigp2_araddr;
  input [7:0]saxigp2_arlen;
  input [2:0]saxigp2_arsize;
  input [1:0]saxigp2_arburst;
  input saxigp2_arlock;
  input [3:0]saxigp2_arcache;
  input [2:0]saxigp2_arprot;
  input saxigp2_arvalid;
  output saxigp2_arready;
  output [5:0]saxigp2_rid;
  output [127:0]saxigp2_rdata;
  output [1:0]saxigp2_rresp;
  output saxigp2_rlast;
  output saxigp2_rvalid;
  input saxigp2_rready;
  input [3:0]saxigp2_awqos;
  input [3:0]saxigp2_arqos;
  input emio_enet3_tx_r_data_rdy;
  output emio_enet3_tx_r_rd;
  input emio_enet3_tx_r_valid;
  input [7:0]emio_enet3_tx_r_data;
  input emio_enet3_tx_r_sop;
  input emio_enet3_tx_r_eop;
  input emio_enet3_tx_r_err;
  input emio_enet3_tx_r_underflow;
  input emio_enet3_tx_r_flushed;
  input emio_enet3_tx_r_control;
  output emio_enet3_dma_tx_end_tog;
  input emio_enet3_dma_tx_status_tog;
  output [3:0]emio_enet3_tx_r_status;
  output emio_enet3_rx_w_wr;
  output [7:0]emio_enet3_rx_w_data;
  output emio_enet3_rx_w_sop;
  output emio_enet3_rx_w_eop;
  output [44:0]emio_enet3_rx_w_status;
  output emio_enet3_rx_w_err;
  input emio_enet3_rx_w_overflow;
  output emio_enet3_rx_w_flush;
  output emio_enet3_tx_r_fixed_lat;
  output fmio_gem3_fifo_tx_clk_to_pl_bufg;
  output fmio_gem3_fifo_rx_clk_to_pl_bufg;
  input fmio_gem3_fifo_tx_clk_from_pl;
  input fmio_gem3_fifo_rx_clk_from_pl;
  output emio_enet3_tx_sof;
  output emio_enet3_sync_frame_tx;
  output emio_enet3_delay_req_tx;
  output emio_enet3_pdelay_req_tx;
  output emio_enet3_pdelay_resp_tx;
  output emio_enet3_rx_sof;
  output emio_enet3_sync_frame_rx;
  output emio_enet3_delay_req_rx;
  output emio_enet3_pdelay_req_rx;
  output emio_enet3_pdelay_resp_rx;
  input [0:0]pl_ps_irq0;
  output pl_resetn0;
  input aib_pmu_afifm_fpd_ack;
  input aib_pmu_afifm_lpd_ack;
  output pmu_aib_afifm_fpd_req;
  output pmu_aib_afifm_lpd_req;
  input [3:0]pmu_error_from_pl;
  output [46:0]pmu_error_to_pl;
  output pl_clk0;
  output pl_clk1;
  output [3:0]ps_pl_irq_pl_ipi;
endmodule
