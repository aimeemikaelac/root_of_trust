//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
//Date        : Thu Apr 20 21:07:50 2017
//Host        : SchoolComputer running 64-bit Ubuntu 16.10
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=5,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=9,da_board_cnt=1,da_zynq_ultra_ps_e_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (SI5324_LOL,
    SI5324_RST,
    TX_CLK_N_OUT,
    TX_CLK_P_OUT,
    TX_HPD,
    TX_N_OUT,
    TX_P_OUT,
    TX_REFCLK_N_IN,
    TX_REFCLK_P_IN);
  input [0:0]SI5324_LOL;
  output [0:0]SI5324_RST;
  output TX_CLK_N_OUT;
  output TX_CLK_P_OUT;
  input TX_HPD;
  output [2:0]TX_N_OUT;
  output [2:0]TX_P_OUT;
  input TX_REFCLK_N_IN;
  input TX_REFCLK_P_IN;

  wire [0:0]Op1_1;
  wire TX_REFCLK_N_IN_1;
  wire TX_REFCLK_P_IN_1;
  wire hpd_1;
  wire [39:0]ps8_0_axi_periph_1_M00_AXI_ARADDR;
  wire ps8_0_axi_periph_1_M00_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_M00_AXI_AWADDR;
  wire ps8_0_axi_periph_1_M00_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_1_M00_AXI_BRESP;
  wire ps8_0_axi_periph_1_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_1_M00_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_1_M00_AXI_RRESP;
  wire ps8_0_axi_periph_1_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_1_M00_AXI_WDATA;
  wire ps8_0_axi_periph_1_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_1_M00_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_1_M01_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_1_M01_AXI_ARPROT;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_M01_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_1_M01_AXI_AWPROT;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_1_M01_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_1_M01_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_1_M01_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_1_M01_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_1_M01_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_1_M02_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_1_M02_AXI_ARPROT;
  wire ps8_0_axi_periph_1_M02_AXI_ARREADY;
  wire ps8_0_axi_periph_1_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_M02_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_1_M02_AXI_AWPROT;
  wire ps8_0_axi_periph_1_M02_AXI_AWREADY;
  wire ps8_0_axi_periph_1_M02_AXI_AWVALID;
  wire ps8_0_axi_periph_1_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_1_M02_AXI_BRESP;
  wire ps8_0_axi_periph_1_M02_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_1_M02_AXI_RDATA;
  wire ps8_0_axi_periph_1_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_1_M02_AXI_RRESP;
  wire ps8_0_axi_periph_1_M02_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_1_M02_AXI_WDATA;
  wire ps8_0_axi_periph_1_M02_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_1_M02_AXI_WSTRB;
  wire ps8_0_axi_periph_1_M02_AXI_WVALID;
  wire [0:0]rst_ps8_0_100M_interconnect_aresetn;
  wire [0:0]rst_ps8_0_100M_peripheral_aresetn;
  wire [0:0]util_vector_logic_0_Res;
  wire [39:0]v_hdmi_tx_ss_0_LINK_DATA0_OUT_TDATA;
  wire v_hdmi_tx_ss_0_LINK_DATA0_OUT_TVALID;
  wire [39:0]v_hdmi_tx_ss_0_LINK_DATA1_OUT_TDATA;
  wire v_hdmi_tx_ss_0_LINK_DATA1_OUT_TVALID;
  wire [39:0]v_hdmi_tx_ss_0_LINK_DATA2_OUT_TDATA;
  wire v_hdmi_tx_ss_0_LINK_DATA2_OUT_TVALID;
  wire [23:0]v_tpg_0_m_axis_video_TDATA;
  wire [0:0]v_tpg_0_m_axis_video_TLAST;
  wire v_tpg_0_m_axis_video_TREADY;
  wire [0:0]v_tpg_0_m_axis_video_TUSER;
  wire v_tpg_0_m_axis_video_TVALID;
  wire [2:0]vid_phy_controller_0_phy_txn_out;
  wire [2:0]vid_phy_controller_0_phy_txp_out;
  wire vid_phy_controller_0_tx_tmds_clk_n;
  wire vid_phy_controller_0_tx_tmds_clk_p;
  wire vid_phy_controller_0_tx_video_clk;
  wire vid_phy_controller_0_txoutclk;
  wire [1:0]vid_phy_controller_0_vid_phy_status_sb_tx_TDATA;
  wire vid_phy_controller_0_vid_phy_status_sb_tx_TVALID;
  wire [0:0]xlconstant_0_dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign Op1_1 = SI5324_LOL[0];
  assign SI5324_RST[0] = xlconstant_0_dout;
  assign TX_CLK_N_OUT = vid_phy_controller_0_tx_tmds_clk_n;
  assign TX_CLK_P_OUT = vid_phy_controller_0_tx_tmds_clk_p;
  assign TX_N_OUT[2:0] = vid_phy_controller_0_phy_txn_out;
  assign TX_P_OUT[2:0] = vid_phy_controller_0_phy_txp_out;
  assign TX_REFCLK_N_IN_1 = TX_REFCLK_N_IN;
  assign TX_REFCLK_P_IN_1 = TX_REFCLK_P_IN;
  assign hpd_1 = TX_HPD;
  design_1_ps8_0_axi_periph_1_0 ps8_0_axi_periph_1
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(rst_ps8_0_100M_interconnect_aresetn),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_100M_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_1_M00_AXI_ARADDR),
        .M00_AXI_arready(ps8_0_axi_periph_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps8_0_axi_periph_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_1_M00_AXI_AWADDR),
        .M00_AXI_awready(ps8_0_axi_periph_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps8_0_axi_periph_1_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_1_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_1_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_1_M00_AXI_RDATA),
        .M00_AXI_rready(ps8_0_axi_periph_1_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_1_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_1_M00_AXI_WDATA),
        .M00_AXI_wready(ps8_0_axi_periph_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps8_0_axi_periph_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps8_0_axi_periph_1_M00_AXI_WVALID),
        .M01_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M01_ARESETN(rst_ps8_0_100M_peripheral_aresetn),
        .M01_AXI_araddr(ps8_0_axi_periph_1_M01_AXI_ARADDR),
        .M01_AXI_arprot(ps8_0_axi_periph_1_M01_AXI_ARPROT),
        .M01_AXI_arready(ps8_0_axi_periph_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps8_0_axi_periph_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps8_0_axi_periph_1_M01_AXI_AWADDR),
        .M01_AXI_awprot(ps8_0_axi_periph_1_M01_AXI_AWPROT),
        .M01_AXI_awready(ps8_0_axi_periph_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps8_0_axi_periph_1_M01_AXI_AWVALID),
        .M01_AXI_bready(ps8_0_axi_periph_1_M01_AXI_BREADY),
        .M01_AXI_bresp(ps8_0_axi_periph_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps8_0_axi_periph_1_M01_AXI_BVALID),
        .M01_AXI_rdata(ps8_0_axi_periph_1_M01_AXI_RDATA),
        .M01_AXI_rready(ps8_0_axi_periph_1_M01_AXI_RREADY),
        .M01_AXI_rresp(ps8_0_axi_periph_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps8_0_axi_periph_1_M01_AXI_RVALID),
        .M01_AXI_wdata(ps8_0_axi_periph_1_M01_AXI_WDATA),
        .M01_AXI_wready(ps8_0_axi_periph_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps8_0_axi_periph_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps8_0_axi_periph_1_M01_AXI_WVALID),
        .M02_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M02_ARESETN(rst_ps8_0_100M_peripheral_aresetn),
        .M02_AXI_araddr(ps8_0_axi_periph_1_M02_AXI_ARADDR),
        .M02_AXI_arprot(ps8_0_axi_periph_1_M02_AXI_ARPROT),
        .M02_AXI_arready(ps8_0_axi_periph_1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps8_0_axi_periph_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps8_0_axi_periph_1_M02_AXI_AWADDR),
        .M02_AXI_awprot(ps8_0_axi_periph_1_M02_AXI_AWPROT),
        .M02_AXI_awready(ps8_0_axi_periph_1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps8_0_axi_periph_1_M02_AXI_AWVALID),
        .M02_AXI_bready(ps8_0_axi_periph_1_M02_AXI_BREADY),
        .M02_AXI_bresp(ps8_0_axi_periph_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps8_0_axi_periph_1_M02_AXI_BVALID),
        .M02_AXI_rdata(ps8_0_axi_periph_1_M02_AXI_RDATA),
        .M02_AXI_rready(ps8_0_axi_periph_1_M02_AXI_RREADY),
        .M02_AXI_rresp(ps8_0_axi_periph_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps8_0_axi_periph_1_M02_AXI_RVALID),
        .M02_AXI_wdata(ps8_0_axi_periph_1_M02_AXI_WDATA),
        .M02_AXI_wready(ps8_0_axi_periph_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(ps8_0_axi_periph_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(ps8_0_axi_periph_1_M02_AXI_WVALID),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_100M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID));
  design_1_rst_ps8_0_100M_0 rst_ps8_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(rst_ps8_0_100M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Op1_1),
        .Res(util_vector_logic_0_Res));
  design_1_v_hdmi_tx_ss_0_0 v_hdmi_tx_ss_0
       (.AUDIO_IN_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AUDIO_IN_tid({1'b0,1'b0,1'b0}),
        .AUDIO_IN_tvalid(1'b0),
        .DDC_OUT_scl_i(1'b0),
        .DDC_OUT_sda_i(1'b0),
        .LINK_DATA0_OUT_tdata(v_hdmi_tx_ss_0_LINK_DATA0_OUT_TDATA),
        .LINK_DATA0_OUT_tvalid(v_hdmi_tx_ss_0_LINK_DATA0_OUT_TVALID),
        .LINK_DATA1_OUT_tdata(v_hdmi_tx_ss_0_LINK_DATA1_OUT_TDATA),
        .LINK_DATA1_OUT_tvalid(v_hdmi_tx_ss_0_LINK_DATA1_OUT_TVALID),
        .LINK_DATA2_OUT_tdata(v_hdmi_tx_ss_0_LINK_DATA2_OUT_TDATA),
        .LINK_DATA2_OUT_tvalid(v_hdmi_tx_ss_0_LINK_DATA2_OUT_TVALID),
        .SB_STATUS_IN_tdata(vid_phy_controller_0_vid_phy_status_sb_tx_TDATA),
        .SB_STATUS_IN_tvalid(vid_phy_controller_0_vid_phy_status_sb_tx_TVALID),
        .S_AXI_CPU_IN_araddr(ps8_0_axi_periph_1_M01_AXI_ARADDR[16:0]),
        .S_AXI_CPU_IN_arprot(ps8_0_axi_periph_1_M01_AXI_ARPROT),
        .S_AXI_CPU_IN_arready(ps8_0_axi_periph_1_M01_AXI_ARREADY),
        .S_AXI_CPU_IN_arvalid(ps8_0_axi_periph_1_M01_AXI_ARVALID),
        .S_AXI_CPU_IN_awaddr(ps8_0_axi_periph_1_M01_AXI_AWADDR[16:0]),
        .S_AXI_CPU_IN_awprot(ps8_0_axi_periph_1_M01_AXI_AWPROT),
        .S_AXI_CPU_IN_awready(ps8_0_axi_periph_1_M01_AXI_AWREADY),
        .S_AXI_CPU_IN_awvalid(ps8_0_axi_periph_1_M01_AXI_AWVALID),
        .S_AXI_CPU_IN_bready(ps8_0_axi_periph_1_M01_AXI_BREADY),
        .S_AXI_CPU_IN_bresp(ps8_0_axi_periph_1_M01_AXI_BRESP),
        .S_AXI_CPU_IN_bvalid(ps8_0_axi_periph_1_M01_AXI_BVALID),
        .S_AXI_CPU_IN_rdata(ps8_0_axi_periph_1_M01_AXI_RDATA),
        .S_AXI_CPU_IN_rready(ps8_0_axi_periph_1_M01_AXI_RREADY),
        .S_AXI_CPU_IN_rresp(ps8_0_axi_periph_1_M01_AXI_RRESP),
        .S_AXI_CPU_IN_rvalid(ps8_0_axi_periph_1_M01_AXI_RVALID),
        .S_AXI_CPU_IN_wdata(ps8_0_axi_periph_1_M01_AXI_WDATA),
        .S_AXI_CPU_IN_wready(ps8_0_axi_periph_1_M01_AXI_WREADY),
        .S_AXI_CPU_IN_wstrb(ps8_0_axi_periph_1_M01_AXI_WSTRB),
        .S_AXI_CPU_IN_wvalid(ps8_0_axi_periph_1_M01_AXI_WVALID),
        .VIDEO_IN_tdata(v_tpg_0_m_axis_video_TDATA),
        .VIDEO_IN_tlast(v_tpg_0_m_axis_video_TLAST),
        .VIDEO_IN_tready(v_tpg_0_m_axis_video_TREADY),
        .VIDEO_IN_tuser(v_tpg_0_m_axis_video_TUSER),
        .VIDEO_IN_tvalid(v_tpg_0_m_axis_video_TVALID),
        .acr_cts({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .acr_n({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .acr_valid(1'b0),
        .fid(1'b0),
        .hpd(hpd_1),
        .link_clk(vid_phy_controller_0_txoutclk),
        .s_axi_cpu_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_cpu_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .s_axis_audio_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_audio_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .s_axis_video_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_video_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .video_clk(vid_phy_controller_0_tx_video_clk));
  design_1_v_tpg_0_0 v_tpg_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_100M_peripheral_aresetn),
        .m_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .m_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
        .m_axis_video_TUSER(v_tpg_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_tpg_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(ps8_0_axi_periph_1_M00_AXI_ARADDR[7:0]),
        .s_axi_CTRL_ARREADY(ps8_0_axi_periph_1_M00_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(ps8_0_axi_periph_1_M00_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(ps8_0_axi_periph_1_M00_AXI_AWADDR[7:0]),
        .s_axi_CTRL_AWREADY(ps8_0_axi_periph_1_M00_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(ps8_0_axi_periph_1_M00_AXI_AWVALID),
        .s_axi_CTRL_BREADY(ps8_0_axi_periph_1_M00_AXI_BREADY),
        .s_axi_CTRL_BRESP(ps8_0_axi_periph_1_M00_AXI_BRESP),
        .s_axi_CTRL_BVALID(ps8_0_axi_periph_1_M00_AXI_BVALID),
        .s_axi_CTRL_RDATA(ps8_0_axi_periph_1_M00_AXI_RDATA),
        .s_axi_CTRL_RREADY(ps8_0_axi_periph_1_M00_AXI_RREADY),
        .s_axi_CTRL_RRESP(ps8_0_axi_periph_1_M00_AXI_RRESP),
        .s_axi_CTRL_RVALID(ps8_0_axi_periph_1_M00_AXI_RVALID),
        .s_axi_CTRL_WDATA(ps8_0_axi_periph_1_M00_AXI_WDATA),
        .s_axi_CTRL_WREADY(ps8_0_axi_periph_1_M00_AXI_WREADY),
        .s_axi_CTRL_WSTRB(ps8_0_axi_periph_1_M00_AXI_WSTRB),
        .s_axi_CTRL_WVALID(ps8_0_axi_periph_1_M00_AXI_WVALID));
  design_1_vid_phy_controller_0_0 vid_phy_controller_0
       (.drpclk(zynq_ultra_ps_e_0_pl_clk0),
        .mgtrefclk0_pad_n_in(TX_REFCLK_N_IN_1),
        .mgtrefclk0_pad_p_in(TX_REFCLK_P_IN_1),
        .phy_txn_out(vid_phy_controller_0_phy_txn_out),
        .phy_txp_out(vid_phy_controller_0_phy_txp_out),
        .tx_refclk_rdy(util_vector_logic_0_Res),
        .tx_tmds_clk_n(vid_phy_controller_0_tx_tmds_clk_n),
        .tx_tmds_clk_p(vid_phy_controller_0_tx_tmds_clk_p),
        .tx_video_clk(vid_phy_controller_0_tx_video_clk),
        .txoutclk(vid_phy_controller_0_txoutclk),
        .vid_phy_axi4lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .vid_phy_axi4lite_araddr(ps8_0_axi_periph_1_M02_AXI_ARADDR[9:0]),
        .vid_phy_axi4lite_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .vid_phy_axi4lite_arprot(ps8_0_axi_periph_1_M02_AXI_ARPROT),
        .vid_phy_axi4lite_arready(ps8_0_axi_periph_1_M02_AXI_ARREADY),
        .vid_phy_axi4lite_arvalid(ps8_0_axi_periph_1_M02_AXI_ARVALID),
        .vid_phy_axi4lite_awaddr(ps8_0_axi_periph_1_M02_AXI_AWADDR[9:0]),
        .vid_phy_axi4lite_awprot(ps8_0_axi_periph_1_M02_AXI_AWPROT),
        .vid_phy_axi4lite_awready(ps8_0_axi_periph_1_M02_AXI_AWREADY),
        .vid_phy_axi4lite_awvalid(ps8_0_axi_periph_1_M02_AXI_AWVALID),
        .vid_phy_axi4lite_bready(ps8_0_axi_periph_1_M02_AXI_BREADY),
        .vid_phy_axi4lite_bresp(ps8_0_axi_periph_1_M02_AXI_BRESP),
        .vid_phy_axi4lite_bvalid(ps8_0_axi_periph_1_M02_AXI_BVALID),
        .vid_phy_axi4lite_rdata(ps8_0_axi_periph_1_M02_AXI_RDATA),
        .vid_phy_axi4lite_rready(ps8_0_axi_periph_1_M02_AXI_RREADY),
        .vid_phy_axi4lite_rresp(ps8_0_axi_periph_1_M02_AXI_RRESP),
        .vid_phy_axi4lite_rvalid(ps8_0_axi_periph_1_M02_AXI_RVALID),
        .vid_phy_axi4lite_wdata(ps8_0_axi_periph_1_M02_AXI_WDATA),
        .vid_phy_axi4lite_wready(ps8_0_axi_periph_1_M02_AXI_WREADY),
        .vid_phy_axi4lite_wstrb(ps8_0_axi_periph_1_M02_AXI_WSTRB),
        .vid_phy_axi4lite_wvalid(ps8_0_axi_periph_1_M02_AXI_WVALID),
        .vid_phy_sb_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .vid_phy_sb_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .vid_phy_status_sb_tx_tdata(vid_phy_controller_0_vid_phy_status_sb_tx_TDATA),
        .vid_phy_status_sb_tx_tready(1'b0),
        .vid_phy_status_sb_tx_tvalid(vid_phy_controller_0_vid_phy_status_sb_tx_TVALID),
        .vid_phy_tx_axi4s_aclk(vid_phy_controller_0_txoutclk),
        .vid_phy_tx_axi4s_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .vid_phy_tx_axi4s_ch0_tdata(v_hdmi_tx_ss_0_LINK_DATA0_OUT_TDATA),
        .vid_phy_tx_axi4s_ch0_tuser(1'b0),
        .vid_phy_tx_axi4s_ch0_tvalid(v_hdmi_tx_ss_0_LINK_DATA0_OUT_TVALID),
        .vid_phy_tx_axi4s_ch1_tdata(v_hdmi_tx_ss_0_LINK_DATA1_OUT_TDATA),
        .vid_phy_tx_axi4s_ch1_tuser(1'b0),
        .vid_phy_tx_axi4s_ch1_tvalid(v_hdmi_tx_ss_0_LINK_DATA1_OUT_TVALID),
        .vid_phy_tx_axi4s_ch2_tdata(v_hdmi_tx_ss_0_LINK_DATA2_OUT_TDATA),
        .vid_phy_tx_axi4s_ch2_tuser(1'b0),
        .vid_phy_tx_axi4s_ch2_tvalid(v_hdmi_tx_ss_0_LINK_DATA2_OUT_TVALID));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.aib_pmu_afifm_fpd_ack(1'b0),
        .aib_pmu_afifm_lpd_ack(1'b0),
        .emio_enet3_dma_tx_status_tog(1'b0),
        .emio_enet3_rx_w_overflow(1'b0),
        .emio_enet3_tx_r_control(1'b0),
        .emio_enet3_tx_r_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .emio_enet3_tx_r_data_rdy(1'b0),
        .emio_enet3_tx_r_eop(1'b1),
        .emio_enet3_tx_r_err(1'b0),
        .emio_enet3_tx_r_flushed(1'b0),
        .emio_enet3_tx_r_sop(1'b1),
        .emio_enet3_tx_r_underflow(1'b0),
        .emio_enet3_tx_r_valid(1'b0),
        .fmio_gem3_fifo_rx_clk_from_pl(1'b0),
        .fmio_gem3_fifo_tx_clk_from_pl(1'b0),
        .maxigp0_arready(1'b0),
        .maxigp0_awready(1'b0),
        .maxigp0_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_bresp({1'b0,1'b0}),
        .maxigp0_bvalid(1'b0),
        .maxigp0_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_rlast(1'b0),
        .maxigp0_rresp({1'b0,1'b0}),
        .maxigp0_rvalid(1'b0),
        .maxigp0_wready(1'b0),
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .pmu_error_from_pl({1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arburst({1'b0,1'b0}),
        .saxigp0_arcache({1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlock(1'b0),
        .saxigp0_arprot({1'b0,1'b0,1'b0}),
        .saxigp0_arqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arsize({1'b0,1'b0,1'b0}),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(1'b0),
        .saxigp0_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awburst({1'b0,1'b0}),
        .saxigp0_awcache({1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlock(1'b0),
        .saxigp0_awprot({1'b0,1'b0,1'b0}),
        .saxigp0_awqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awsize({1'b0,1'b0,1'b0}),
        .saxigp0_awuser(1'b0),
        .saxigp0_awvalid(1'b0),
        .saxigp0_bready(1'b0),
        .saxigp0_rready(1'b0),
        .saxigp0_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_wlast(1'b0),
        .saxigp0_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_wvalid(1'b0),
        .saxihpc0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule

module design_1_ps8_0_axi_periph_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_1_ARADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_ARREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_ARVALID;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_1_AWADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_AWREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_AWVALID;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_BREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_1_BRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_BVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_1_RDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_RREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_1_RRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_RVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_1_WDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_WREADY;
  wire [3:0]m00_couplers_to_ps8_0_axi_periph_1_WSTRB;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_WVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_1_ARADDR;
  wire [2:0]m01_couplers_to_ps8_0_axi_periph_1_ARPROT;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_ARREADY;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_ARVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_1_AWADDR;
  wire [2:0]m01_couplers_to_ps8_0_axi_periph_1_AWPROT;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_AWREADY;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_AWVALID;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_BREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_1_BRESP;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_BVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_1_RDATA;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_RREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_1_RRESP;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_RVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_1_WDATA;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_WREADY;
  wire [3:0]m01_couplers_to_ps8_0_axi_periph_1_WSTRB;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_WVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_1_ARADDR;
  wire [2:0]m02_couplers_to_ps8_0_axi_periph_1_ARPROT;
  wire m02_couplers_to_ps8_0_axi_periph_1_ARREADY;
  wire m02_couplers_to_ps8_0_axi_periph_1_ARVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_1_AWADDR;
  wire [2:0]m02_couplers_to_ps8_0_axi_periph_1_AWPROT;
  wire m02_couplers_to_ps8_0_axi_periph_1_AWREADY;
  wire m02_couplers_to_ps8_0_axi_periph_1_AWVALID;
  wire m02_couplers_to_ps8_0_axi_periph_1_BREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_1_BRESP;
  wire m02_couplers_to_ps8_0_axi_periph_1_BVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_1_RDATA;
  wire m02_couplers_to_ps8_0_axi_periph_1_RREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_1_RRESP;
  wire m02_couplers_to_ps8_0_axi_periph_1_RVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_1_WDATA;
  wire m02_couplers_to_ps8_0_axi_periph_1_WREADY;
  wire [3:0]m02_couplers_to_ps8_0_axi_periph_1_WSTRB;
  wire m02_couplers_to_ps8_0_axi_periph_1_WVALID;
  wire ps8_0_axi_periph_1_ACLK_net;
  wire ps8_0_axi_periph_1_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_1_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_1_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_1_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_1_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_1_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_1_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_1_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_1_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_1_to_s00_couplers_ARSIZE;
  wire ps8_0_axi_periph_1_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_1_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_1_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_1_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_1_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_1_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_1_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_1_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_1_to_s00_couplers_AWSIZE;
  wire ps8_0_axi_periph_1_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_BID;
  wire ps8_0_axi_periph_1_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_1_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_1_to_s00_couplers_BVALID;
  wire [127:0]ps8_0_axi_periph_1_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_RID;
  wire ps8_0_axi_periph_1_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_1_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_1_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_1_to_s00_couplers_RVALID;
  wire [127:0]ps8_0_axi_periph_1_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_1_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_1_to_s00_couplers_WREADY;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_1_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [8:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [8:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[39:0] = m00_couplers_to_ps8_0_axi_periph_1_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ps8_0_axi_periph_1_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_ps8_0_axi_periph_1_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ps8_0_axi_periph_1_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ps8_0_axi_periph_1_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ps8_0_axi_periph_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps8_0_axi_periph_1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps8_0_axi_periph_1_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ps8_0_axi_periph_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_ps8_0_axi_periph_1_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_ps8_0_axi_periph_1_ARPROT;
  assign M01_AXI_arvalid[0] = m01_couplers_to_ps8_0_axi_periph_1_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_ps8_0_axi_periph_1_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_ps8_0_axi_periph_1_AWPROT;
  assign M01_AXI_awvalid[0] = m01_couplers_to_ps8_0_axi_periph_1_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_ps8_0_axi_periph_1_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_ps8_0_axi_periph_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps8_0_axi_periph_1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps8_0_axi_periph_1_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_ps8_0_axi_periph_1_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_ps8_0_axi_periph_1_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_ps8_0_axi_periph_1_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_ps8_0_axi_periph_1_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_ps8_0_axi_periph_1_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_ps8_0_axi_periph_1_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_ps8_0_axi_periph_1_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ps8_0_axi_periph_1_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ps8_0_axi_periph_1_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps8_0_axi_periph_1_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ps8_0_axi_periph_1_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_ps8_0_axi_periph_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps8_0_axi_periph_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = ps8_0_axi_periph_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_1_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_1_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps8_0_axi_periph_1_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ps8_0_axi_periph_1_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ps8_0_axi_periph_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_1_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps8_0_axi_periph_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_1_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_1_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_1_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps8_0_axi_periph_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_1_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_ps8_0_axi_periph_1_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ps8_0_axi_periph_1_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ps8_0_axi_periph_1_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_1_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ps8_0_axi_periph_1_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps8_0_axi_periph_1_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_1_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ps8_0_axi_periph_1_WREADY = M02_AXI_wready;
  assign ps8_0_axi_periph_1_ACLK_net = ACLK;
  assign ps8_0_axi_periph_1_ARESETN_net = ARESETN;
  assign ps8_0_axi_periph_1_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_1_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_3USNGV m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ps8_0_axi_periph_1_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps8_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps8_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps8_0_axi_periph_1_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps8_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps8_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps8_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps8_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps8_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps8_0_axi_periph_1_RDATA),
        .M_AXI_rready(m00_couplers_to_ps8_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps8_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps8_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps8_0_axi_periph_1_WDATA),
        .M_AXI_wready(m00_couplers_to_ps8_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps8_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps8_0_axi_periph_1_WVALID),
        .S_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1QWM4OE m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ps8_0_axi_periph_1_ARADDR),
        .M_AXI_arprot(m01_couplers_to_ps8_0_axi_periph_1_ARPROT),
        .M_AXI_arready(m01_couplers_to_ps8_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps8_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps8_0_axi_periph_1_AWADDR),
        .M_AXI_awprot(m01_couplers_to_ps8_0_axi_periph_1_AWPROT),
        .M_AXI_awready(m01_couplers_to_ps8_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps8_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps8_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps8_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps8_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps8_0_axi_periph_1_RDATA),
        .M_AXI_rready(m01_couplers_to_ps8_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps8_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps8_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps8_0_axi_periph_1_WDATA),
        .M_AXI_wready(m01_couplers_to_ps8_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps8_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps8_0_axi_periph_1_WVALID),
        .S_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_29TYDO m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ps8_0_axi_periph_1_ARADDR),
        .M_AXI_arprot(m02_couplers_to_ps8_0_axi_periph_1_ARPROT),
        .M_AXI_arready(m02_couplers_to_ps8_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps8_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps8_0_axi_periph_1_AWADDR),
        .M_AXI_awprot(m02_couplers_to_ps8_0_axi_periph_1_AWPROT),
        .M_AXI_awready(m02_couplers_to_ps8_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps8_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps8_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps8_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps8_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps8_0_axi_periph_1_RDATA),
        .M_AXI_rready(m02_couplers_to_ps8_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps8_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps8_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps8_0_axi_periph_1_WDATA),
        .M_AXI_wready(m02_couplers_to_ps8_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps8_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps8_0_axi_periph_1_WVALID),
        .S_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_1VXTOR1 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps8_0_axi_periph_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_1_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_1_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_1_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_1_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_1_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_1_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_1_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_1_to_s00_couplers_WVALID));
  design_1_xbar_1 xbar
       (.aclk(ps8_0_axi_periph_1_ACLK_net),
        .aresetn(ps8_0_axi_periph_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_3USNGV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1QWM4OE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_29TYDO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1VXTOR1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_ds_ARADDR;
  wire [1:0]s00_couplers_to_auto_ds_ARBURST;
  wire [3:0]s00_couplers_to_auto_ds_ARCACHE;
  wire [15:0]s00_couplers_to_auto_ds_ARID;
  wire [7:0]s00_couplers_to_auto_ds_ARLEN;
  wire [0:0]s00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire [3:0]s00_couplers_to_auto_ds_ARQOS;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire [2:0]s00_couplers_to_auto_ds_ARSIZE;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [39:0]s00_couplers_to_auto_ds_AWADDR;
  wire [1:0]s00_couplers_to_auto_ds_AWBURST;
  wire [3:0]s00_couplers_to_auto_ds_AWCACHE;
  wire [15:0]s00_couplers_to_auto_ds_AWID;
  wire [7:0]s00_couplers_to_auto_ds_AWLEN;
  wire [0:0]s00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire [3:0]s00_couplers_to_auto_ds_AWQOS;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire [2:0]s00_couplers_to_auto_ds_AWSIZE;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire [15:0]s00_couplers_to_auto_ds_BID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [127:0]s00_couplers_to_auto_ds_RDATA;
  wire [15:0]s00_couplers_to_auto_ds_RID;
  wire s00_couplers_to_auto_ds_RLAST;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [127:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WLAST;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [15:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_ds_BID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s00_couplers_to_auto_ds_RID),
        .s_axi_rlast(s00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule
