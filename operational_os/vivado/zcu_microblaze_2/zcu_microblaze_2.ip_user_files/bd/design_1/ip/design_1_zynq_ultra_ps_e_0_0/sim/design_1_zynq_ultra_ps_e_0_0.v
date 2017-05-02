
//MODULE DECLARATION
module design_1_zynq_ultra_ps_e_0_0(
      maxihpm0_fpd_aclk,
      maxigp0_awid,
      maxigp0_awaddr,
      maxigp0_awlen,
      maxigp0_awsize,
      maxigp0_awburst,
      maxigp0_awlock,
      maxigp0_awcache,
      maxigp0_awprot,
      maxigp0_awvalid,
      maxigp0_awuser,
      maxigp0_awready,
      maxigp0_wdata,
      maxigp0_wstrb,
      maxigp0_wlast,
      maxigp0_wvalid,
      maxigp0_wready,
      maxigp0_bid,
      maxigp0_bresp,
      maxigp0_bvalid,
      maxigp0_bready,
      maxigp0_arid,
      maxigp0_araddr,
      maxigp0_arlen,
      maxigp0_arsize,
      maxigp0_arburst,
      maxigp0_arlock,
      maxigp0_arcache,
      maxigp0_arprot,
      maxigp0_arvalid,
      maxigp0_aruser,
      maxigp0_arready,
      maxigp0_rid,
      maxigp0_rdata,
      maxigp0_rresp,
      maxigp0_rlast,
      maxigp0_rvalid,
      maxigp0_rready,
      maxigp0_awqos,
      maxigp0_arqos,
      maxihpm1_fpd_aclk,
      maxigp1_awid,
      maxigp1_awaddr,
      maxigp1_awlen,
      maxigp1_awsize,
      maxigp1_awburst,
      maxigp1_awlock,
      maxigp1_awcache,
      maxigp1_awprot,
      maxigp1_awvalid,
      maxigp1_awuser,
      maxigp1_awready,
      maxigp1_wdata,
      maxigp1_wstrb,
      maxigp1_wlast,
      maxigp1_wvalid,
      maxigp1_wready,
      maxigp1_bid,
      maxigp1_bresp,
      maxigp1_bvalid,
      maxigp1_bready,
      maxigp1_arid,
      maxigp1_araddr,
      maxigp1_arlen,
      maxigp1_arsize,
      maxigp1_arburst,
      maxigp1_arlock,
      maxigp1_arcache,
      maxigp1_arprot,
      maxigp1_arvalid,
      maxigp1_aruser,
      maxigp1_arready,
      maxigp1_rid,
      maxigp1_rdata,
      maxigp1_rresp,
      maxigp1_rlast,
      maxigp1_rvalid,
      maxigp1_rready,
      maxigp1_awqos,
      maxigp1_arqos,
      pl_ps_irq0,
      pl_resetn0,
      pl_clk0
);

//INPUT AND OUTPUT PORTS

    input maxihpm0_fpd_aclk;
    output [15:0] maxigp0_awid;
    output [39:0] maxigp0_awaddr;
    output [7:0] maxigp0_awlen;
    output [2:0] maxigp0_awsize;
    output [1:0] maxigp0_awburst;
    output maxigp0_awlock;
    output [3:0] maxigp0_awcache;
    output [2:0] maxigp0_awprot;
    output maxigp0_awvalid;
    output [15:0] maxigp0_awuser;
    input maxigp0_awready;
    output [127:0] maxigp0_wdata;
    output [15:0] maxigp0_wstrb;
    output maxigp0_wlast;
    output maxigp0_wvalid;
    input maxigp0_wready;
    input [15:0] maxigp0_bid;
    input [1:0] maxigp0_bresp;
    input maxigp0_bvalid;
    output maxigp0_bready;
    output [15:0] maxigp0_arid;
    output [39:0] maxigp0_araddr;
    output [7:0] maxigp0_arlen;
    output [2:0] maxigp0_arsize;
    output [1:0] maxigp0_arburst;
    output maxigp0_arlock;
    output [3:0] maxigp0_arcache;
    output [2:0] maxigp0_arprot;
    output maxigp0_arvalid;
    output [15:0] maxigp0_aruser;
    input maxigp0_arready;
    input [15:0] maxigp0_rid;
    input [127:0] maxigp0_rdata;
    input [1:0] maxigp0_rresp;
    input maxigp0_rlast;
    input maxigp0_rvalid;
    output maxigp0_rready;
    output [3:0] maxigp0_awqos;
    output [3:0] maxigp0_arqos;
    input maxihpm1_fpd_aclk;
    output [15:0] maxigp1_awid;
    output [39:0] maxigp1_awaddr;
    output [7:0] maxigp1_awlen;
    output [2:0] maxigp1_awsize;
    output [1:0] maxigp1_awburst;
    output maxigp1_awlock;
    output [3:0] maxigp1_awcache;
    output [2:0] maxigp1_awprot;
    output maxigp1_awvalid;
    output [15:0] maxigp1_awuser;
    input maxigp1_awready;
    output [127:0] maxigp1_wdata;
    output [15:0] maxigp1_wstrb;
    output maxigp1_wlast;
    output maxigp1_wvalid;
    input maxigp1_wready;
    input [15:0] maxigp1_bid;
    input [1:0] maxigp1_bresp;
    input maxigp1_bvalid;
    output maxigp1_bready;
    output [15:0] maxigp1_arid;
    output [39:0] maxigp1_araddr;
    output [7:0] maxigp1_arlen;
    output [2:0] maxigp1_arsize;
    output [1:0] maxigp1_arburst;
    output maxigp1_arlock;
    output [3:0] maxigp1_arcache;
    output [2:0] maxigp1_arprot;
    output maxigp1_arvalid;
    output [15:0] maxigp1_aruser;
    input maxigp1_arready;
    input [15:0] maxigp1_rid;
    input [127:0] maxigp1_rdata;
    input [1:0] maxigp1_rresp;
    input maxigp1_rlast;
    input maxigp1_rvalid;
    output maxigp1_rready;
    output [3:0] maxigp1_awqos;
    output [3:0] maxigp1_arqos;
    input [0:0] pl_ps_irq0;
    output pl_resetn0;
    output pl_clk0;

//REG DECLARATIONS

    reg  [15:0] maxigp0_awid;
    reg  [39:0] maxigp0_awaddr;
    reg  [7:0] maxigp0_awlen;
    reg  [2:0] maxigp0_awsize;
    reg  [1:0] maxigp0_awburst;
    reg  maxigp0_awlock;
    reg  [3:0] maxigp0_awcache;
    reg  [2:0] maxigp0_awprot;
    reg  maxigp0_awvalid;
    reg  [15:0] maxigp0_awuser;
    reg  [127:0] maxigp0_wdata;
    reg  [15:0] maxigp0_wstrb;
    reg  maxigp0_wlast;
    reg  maxigp0_wvalid;
    reg  maxigp0_bready;
    reg  [15:0] maxigp0_arid;
    reg  [39:0] maxigp0_araddr;
    reg  [7:0] maxigp0_arlen;
    reg  [2:0] maxigp0_arsize;
    reg  [1:0] maxigp0_arburst;
    reg  maxigp0_arlock;
    reg  [3:0] maxigp0_arcache;
    reg  [2:0] maxigp0_arprot;
    reg  maxigp0_arvalid;
    reg  [15:0] maxigp0_aruser;
    reg  maxigp0_rready;
    reg  [3:0] maxigp0_awqos;
    reg  [3:0] maxigp0_arqos;
    reg  [15:0] maxigp1_awid;
    reg  [39:0] maxigp1_awaddr;
    reg  [7:0] maxigp1_awlen;
    reg  [2:0] maxigp1_awsize;
    reg  [1:0] maxigp1_awburst;
    reg  maxigp1_awlock;
    reg  [3:0] maxigp1_awcache;
    reg  [2:0] maxigp1_awprot;
    reg  maxigp1_awvalid;
    reg  [15:0] maxigp1_awuser;
    reg  [127:0] maxigp1_wdata;
    reg  [15:0] maxigp1_wstrb;
    reg  maxigp1_wlast;
    reg  maxigp1_wvalid;
    reg  maxigp1_bready;
    reg  [15:0] maxigp1_arid;
    reg  [39:0] maxigp1_araddr;
    reg  [7:0] maxigp1_arlen;
    reg  [2:0] maxigp1_arsize;
    reg  [1:0] maxigp1_arburst;
    reg  maxigp1_arlock;
    reg  [3:0] maxigp1_arcache;
    reg  [2:0] maxigp1_arprot;
    reg  maxigp1_arvalid;
    reg  [15:0] maxigp1_aruser;
    reg  maxigp1_rready;
    reg  [3:0] maxigp1_awqos;
    reg  [3:0] maxigp1_arqos;
    reg  pl_resetn0;
    reg  pl_clk0;

initial
 begin


   $display("WARNING: Zynq UltraScale IP doesn't support simulation");
     end
endmodule
