//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
//Date        : Tue Apr 25 02:16:01 2017
//Host        : SchoolComputer running 64-bit Ubuntu 16.10
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_board_cnt=1,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (SERIAL_CLK_EN,
    SERIAL_CLK_LED,
    SERIAL_CLK_OUT,
    SERIAL_DATA_EN,
    SERIAL_DATA_LED,
    SERIAL_DATA_LINE_IN,
    SERIAL_DATA_LINE_OUT);
  output SERIAL_CLK_EN;
  output SERIAL_CLK_LED;
  output SERIAL_CLK_OUT;
  output SERIAL_DATA_EN;
  output SERIAL_DATA_LED;
  input SERIAL_DATA_LINE_IN;
  output SERIAL_DATA_LINE_OUT;

  wire axi_iic_0_scl_o;
  wire axi_iic_0_scl_t;
  wire axi_iic_0_sda_o;
  wire axi_iic_0_sda_t;
  wire [39:0]ps8_0_axi_periph_1_M00_AXI_ARADDR;
  wire ps8_0_axi_periph_1_M00_AXI_ARREADY;
  wire ps8_0_axi_periph_1_M00_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_M00_AXI_AWADDR;
  wire ps8_0_axi_periph_1_M00_AXI_AWREADY;
  wire ps8_0_axi_periph_1_M00_AXI_AWVALID;
  wire ps8_0_axi_periph_1_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_1_M00_AXI_BRESP;
  wire ps8_0_axi_periph_1_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_1_M00_AXI_RDATA;
  wire ps8_0_axi_periph_1_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_1_M00_AXI_RRESP;
  wire ps8_0_axi_periph_1_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_1_M00_AXI_WDATA;
  wire ps8_0_axi_periph_1_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_1_M00_AXI_WSTRB;
  wire ps8_0_axi_periph_1_M00_AXI_WVALID;
  wire [0:0]rst_ps8_0_99M_interconnect_aresetn;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire sda_i_1;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
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

  assign SERIAL_CLK_EN = axi_iic_0_scl_t;
  assign SERIAL_CLK_LED = axi_iic_0_scl_o;
  assign SERIAL_CLK_OUT = axi_iic_0_scl_o;
  assign SERIAL_DATA_EN = axi_iic_0_sda_t;
  assign SERIAL_DATA_LED = axi_iic_0_sda_o;
  assign SERIAL_DATA_LINE_OUT = axi_iic_0_sda_o;
  assign sda_i_1 = SERIAL_DATA_LINE_IN;
  design_1_axi_iic_0_0 axi_iic_0
       (.s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_1_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_1_M00_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_1_M00_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_1_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_1_M00_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_1_M00_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_1_M00_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_1_M00_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_1_M00_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_1_M00_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_1_M00_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_1_M00_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_1_M00_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_1_M00_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_1_M00_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_1_M00_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_1_M00_AXI_WVALID),
        .scl_i(axi_iic_0_scl_o),
        .scl_o(axi_iic_0_scl_o),
        .scl_t(axi_iic_0_scl_t),
        .sda_i(sda_i_1),
        .sda_o(axi_iic_0_sda_o),
        .sda_t(axi_iic_0_sda_t));
  design_1_ps8_0_axi_periph_0 ps8_0_axi_periph
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(rst_ps8_0_99M_interconnect_aresetn),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M00_AXI_arready(1'b0),
        .M00_AXI_awready(1'b0),
        .M00_AXI_bresp({1'b0,1'b0}),
        .M00_AXI_bvalid(1'b0),
        .M00_AXI_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M00_AXI_rresp({1'b0,1'b0}),
        .M00_AXI_rvalid(1'b0),
        .M00_AXI_wready(1'b0),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID));
  design_1_ps8_0_axi_periph_1_0 ps8_0_axi_periph_1
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(rst_ps8_0_99M_interconnect_aresetn),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
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
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
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
  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(rst_ps8_0_99M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
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
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule

module design_1_ps8_0_axi_periph_0
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
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
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

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [127:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire s00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire s00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire s00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire s00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire s00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire s00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire s00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_BRESP;
  wire s00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_ps8_0_axi_periph_RDATA;
  wire s00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_RRESP;
  wire s00_couplers_to_ps8_0_axi_periph_RVALID;
  wire s00_couplers_to_ps8_0_axi_periph_WDATA;
  wire s00_couplers_to_ps8_0_axi_periph_WREADY;
  wire s00_couplers_to_ps8_0_axi_periph_WSTRB;
  wire s00_couplers_to_ps8_0_axi_periph_WVALID;

  assign M00_AXI_araddr[39] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[38] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[37] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[36] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[35] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[34] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[33] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[32] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[31] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[30] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[29] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[28] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[27] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[26] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[25] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[24] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[23] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[22] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[21] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[20] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[19] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[18] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[17] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[16] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[15] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[14] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[13] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[12] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[11] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[10] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[9] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[8] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[7] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[6] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[5] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[4] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[3] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[2] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[1] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_araddr[0] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[38] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[37] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[36] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[35] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[34] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[33] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[32] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[31] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[30] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[29] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[28] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[27] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[26] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[25] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[24] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[23] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[22] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[21] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[20] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[19] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[18] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[17] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[16] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[15] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[14] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[13] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[12] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[11] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[10] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[9] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[8] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[7] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[6] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[5] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[4] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[3] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[2] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[1] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awaddr[0] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[30] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[29] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[28] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[27] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[26] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[25] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[24] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[23] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[22] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[21] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[20] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[19] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[18] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[17] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[16] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[15] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[14] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[13] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[12] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[11] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[10] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[9] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[8] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[7] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[6] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[5] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[4] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[3] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[2] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[1] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wdata[0] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3] = s00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wstrb[2] = s00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wstrb[1] = s00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wstrb[0] = s00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[14] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[13] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[12] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[11] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[10] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[9] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[8] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[7] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[6] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[5] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[4] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[3] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[2] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[1] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bid[0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bresp[0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[126] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[125] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[124] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[123] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[122] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[121] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[120] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[119] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[118] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[117] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[116] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[115] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[114] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[113] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[112] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[111] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[110] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[109] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[108] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[107] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[106] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[105] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[104] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[103] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[102] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[101] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[100] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[99] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[98] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[97] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[96] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[95] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[94] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[93] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[92] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[91] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[90] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[89] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[88] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[87] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[86] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[85] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[84] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[83] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[82] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[81] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[80] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[79] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[78] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[77] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[76] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[75] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[74] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[73] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[72] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[71] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[70] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[69] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[68] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[67] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[66] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[65] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[64] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[63] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[62] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[61] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[60] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[59] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[58] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[57] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[56] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[55] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[54] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[53] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[52] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[51] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[50] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[49] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[48] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[47] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[46] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[45] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[44] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[43] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[42] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[41] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[40] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[39] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[38] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[37] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[36] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[35] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[34] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[33] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[32] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[31] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[30] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[29] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[28] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[27] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[26] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[25] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[24] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[23] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[22] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[21] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[20] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[19] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[18] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[17] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[16] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[15] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[14] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[13] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[12] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[11] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[10] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[9] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[8] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[7] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[6] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[5] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[4] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[3] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[2] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[1] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rdata[0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[14] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[13] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[12] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[11] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[10] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[9] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[8] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[7] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[6] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[5] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[4] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[3] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[2] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[1] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rid[0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rresp[0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign ps8_0_axi_periph_ACLK_net = M00_ACLK;
  assign ps8_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_1A7ZMW4 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bid(1'b0),
        .M_AXI_bready(s00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_ps8_0_axi_periph_BRESP[0]),
        .M_AXI_bvalid(s00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_ps8_0_axi_periph_RDATA[0]),
        .M_AXI_rid(1'b0),
        .M_AXI_rlast(1'b0),
        .M_AXI_rready(s00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_ps8_0_axi_periph_RRESP[0]),
        .M_AXI_rvalid(s00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR[0]),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST[0]),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE[0]),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID[0]),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN[0]),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT[0]),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS[0]),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE[0]),
        .S_AXI_aruser(1'b0),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR[0]),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST[0]),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE[0]),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID[0]),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN[0]),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT[0]),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS[0]),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE[0]),
        .S_AXI_awuser(1'b0),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA[0]),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB[0]),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
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
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
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

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
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
  wire [39:0]s00_couplers_to_ps8_0_axi_periph_1_ARADDR;
  wire s00_couplers_to_ps8_0_axi_periph_1_ARREADY;
  wire s00_couplers_to_ps8_0_axi_periph_1_ARVALID;
  wire [39:0]s00_couplers_to_ps8_0_axi_periph_1_AWADDR;
  wire s00_couplers_to_ps8_0_axi_periph_1_AWREADY;
  wire s00_couplers_to_ps8_0_axi_periph_1_AWVALID;
  wire s00_couplers_to_ps8_0_axi_periph_1_BREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_1_BRESP;
  wire s00_couplers_to_ps8_0_axi_periph_1_BVALID;
  wire [31:0]s00_couplers_to_ps8_0_axi_periph_1_RDATA;
  wire s00_couplers_to_ps8_0_axi_periph_1_RREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_1_RRESP;
  wire s00_couplers_to_ps8_0_axi_periph_1_RVALID;
  wire [31:0]s00_couplers_to_ps8_0_axi_periph_1_WDATA;
  wire s00_couplers_to_ps8_0_axi_periph_1_WREADY;
  wire [3:0]s00_couplers_to_ps8_0_axi_periph_1_WSTRB;
  wire s00_couplers_to_ps8_0_axi_periph_1_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_ps8_0_axi_periph_1_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_ps8_0_axi_periph_1_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_ps8_0_axi_periph_1_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_ps8_0_axi_periph_1_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ps8_0_axi_periph_1_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ps8_0_axi_periph_1_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_ps8_0_axi_periph_1_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_ps8_0_axi_periph_1_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ps8_0_axi_periph_1_WVALID;
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
  assign ps8_0_axi_periph_1_ACLK_net = M00_ACLK;
  assign ps8_0_axi_periph_1_ARESETN_net = M00_ARESETN;
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
  assign s00_couplers_to_ps8_0_axi_periph_1_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ps8_0_axi_periph_1_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ps8_0_axi_periph_1_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_1_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ps8_0_axi_periph_1_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ps8_0_axi_periph_1_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_1_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ps8_0_axi_periph_1_WREADY = M00_AXI_wready;
  s00_couplers_imp_1VXTOR1 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ps8_0_axi_periph_1_ARADDR),
        .M_AXI_arready(s00_couplers_to_ps8_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_ps8_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ps8_0_axi_periph_1_AWADDR),
        .M_AXI_awready(s00_couplers_to_ps8_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_ps8_0_axi_periph_1_AWVALID),
        .M_AXI_bready(s00_couplers_to_ps8_0_axi_periph_1_BREADY),
        .M_AXI_bresp(s00_couplers_to_ps8_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(s00_couplers_to_ps8_0_axi_periph_1_BVALID),
        .M_AXI_rdata(s00_couplers_to_ps8_0_axi_periph_1_RDATA),
        .M_AXI_rready(s00_couplers_to_ps8_0_axi_periph_1_RREADY),
        .M_AXI_rresp(s00_couplers_to_ps8_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(s00_couplers_to_ps8_0_axi_periph_1_RVALID),
        .M_AXI_wdata(s00_couplers_to_ps8_0_axi_periph_1_WDATA),
        .M_AXI_wready(s00_couplers_to_ps8_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ps8_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ps8_0_axi_periph_1_WVALID),
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
endmodule

module s00_couplers_imp_1A7ZMW4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
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
    S_AXI_aruser,
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
    S_AXI_awuser,
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
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arsize;
  output M_AXI_aruser;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awsize;
  output M_AXI_awuser;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arsize;
  input S_AXI_aruser;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awsize;
  input S_AXI_awuser;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire s00_couplers_to_s00_couplers_ARADDR;
  wire s00_couplers_to_s00_couplers_ARBURST;
  wire s00_couplers_to_s00_couplers_ARCACHE;
  wire s00_couplers_to_s00_couplers_ARID;
  wire s00_couplers_to_s00_couplers_ARLEN;
  wire s00_couplers_to_s00_couplers_ARLOCK;
  wire s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARSIZE;
  wire s00_couplers_to_s00_couplers_ARUSER;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire s00_couplers_to_s00_couplers_AWADDR;
  wire s00_couplers_to_s00_couplers_AWBURST;
  wire s00_couplers_to_s00_couplers_AWCACHE;
  wire s00_couplers_to_s00_couplers_AWID;
  wire s00_couplers_to_s00_couplers_AWLEN;
  wire s00_couplers_to_s00_couplers_AWLOCK;
  wire s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWSIZE;
  wire s00_couplers_to_s00_couplers_AWUSER;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RID;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser = s00_couplers_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr;
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst;
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache;
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid;
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen;
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot;
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos;
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize;
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr;
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst;
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache;
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid;
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen;
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot;
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos;
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize;
  assign s00_couplers_to_s00_couplers_AWUSER = S_AXI_awuser;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp;
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata;
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid;
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp;
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata;
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb;
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1VXTOR1
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
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
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
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
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
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
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
  design_1_auto_ds_0 auto_ds
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
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
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
