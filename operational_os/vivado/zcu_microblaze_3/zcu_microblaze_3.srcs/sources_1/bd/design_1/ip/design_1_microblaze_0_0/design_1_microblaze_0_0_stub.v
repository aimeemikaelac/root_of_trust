// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Thu May  4 14:55:05 2017
// Host        : SchoolComputer running 64-bit Ubuntu 16.10
// Command     : write_verilog -force -mode synth_stub
//               /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_3/zcu_microblaze_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_stub.v
// Design      : design_1_microblaze_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MicroBlaze,Vivado 2017.1" *)
module design_1_microblaze_0_0(Clk, Reset, Interrupt, Interrupt_Address, 
  Interrupt_Ack, Instr_Addr, Instr, IFetch, I_AS, IReady, IWAIT, ICE, IUE, M_AXI_IP_AWADDR, 
  M_AXI_IP_AWPROT, M_AXI_IP_AWVALID, M_AXI_IP_AWREADY, M_AXI_IP_WDATA, M_AXI_IP_WSTRB, 
  M_AXI_IP_WVALID, M_AXI_IP_WREADY, M_AXI_IP_BRESP, M_AXI_IP_BVALID, M_AXI_IP_BREADY, 
  M_AXI_IP_ARADDR, M_AXI_IP_ARPROT, M_AXI_IP_ARVALID, M_AXI_IP_ARREADY, M_AXI_IP_RDATA, 
  M_AXI_IP_RRESP, M_AXI_IP_RVALID, M_AXI_IP_RREADY, Data_Addr, Data_Read, Data_Write, D_AS, 
  Read_Strobe, Write_Strobe, DReady, DWait, DCE, DUE, Byte_Enable, M_AXI_DP_AWADDR, 
  M_AXI_DP_AWPROT, M_AXI_DP_AWVALID, M_AXI_DP_AWREADY, M_AXI_DP_WDATA, M_AXI_DP_WSTRB, 
  M_AXI_DP_WVALID, M_AXI_DP_WREADY, M_AXI_DP_BRESP, M_AXI_DP_BVALID, M_AXI_DP_BREADY, 
  M_AXI_DP_ARADDR, M_AXI_DP_ARPROT, M_AXI_DP_ARVALID, M_AXI_DP_ARREADY, M_AXI_DP_RDATA, 
  M_AXI_DP_RRESP, M_AXI_DP_RVALID, M_AXI_DP_RREADY)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,Interrupt,Interrupt_Address[0:31],Interrupt_Ack[0:1],Instr_Addr[0:31],Instr[0:31],IFetch,I_AS,IReady,IWAIT,ICE,IUE,M_AXI_IP_AWADDR[31:0],M_AXI_IP_AWPROT[2:0],M_AXI_IP_AWVALID,M_AXI_IP_AWREADY,M_AXI_IP_WDATA[31:0],M_AXI_IP_WSTRB[3:0],M_AXI_IP_WVALID,M_AXI_IP_WREADY,M_AXI_IP_BRESP[1:0],M_AXI_IP_BVALID,M_AXI_IP_BREADY,M_AXI_IP_ARADDR[31:0],M_AXI_IP_ARPROT[2:0],M_AXI_IP_ARVALID,M_AXI_IP_ARREADY,M_AXI_IP_RDATA[31:0],M_AXI_IP_RRESP[1:0],M_AXI_IP_RVALID,M_AXI_IP_RREADY,Data_Addr[0:35],Data_Read[0:31],Data_Write[0:31],D_AS,Read_Strobe,Write_Strobe,DReady,DWait,DCE,DUE,Byte_Enable[0:3],M_AXI_DP_AWADDR[35:0],M_AXI_DP_AWPROT[2:0],M_AXI_DP_AWVALID,M_AXI_DP_AWREADY,M_AXI_DP_WDATA[31:0],M_AXI_DP_WSTRB[3:0],M_AXI_DP_WVALID,M_AXI_DP_WREADY,M_AXI_DP_BRESP[1:0],M_AXI_DP_BVALID,M_AXI_DP_BREADY,M_AXI_DP_ARADDR[35:0],M_AXI_DP_ARPROT[2:0],M_AXI_DP_ARVALID,M_AXI_DP_ARREADY,M_AXI_DP_RDATA[31:0],M_AXI_DP_RRESP[1:0],M_AXI_DP_RVALID,M_AXI_DP_RREADY" */;
  input Clk;
  input Reset;
  input Interrupt;
  input [0:31]Interrupt_Address;
  output [0:1]Interrupt_Ack;
  output [0:31]Instr_Addr;
  input [0:31]Instr;
  output IFetch;
  output I_AS;
  input IReady;
  input IWAIT;
  input ICE;
  input IUE;
  output [31:0]M_AXI_IP_AWADDR;
  output [2:0]M_AXI_IP_AWPROT;
  output M_AXI_IP_AWVALID;
  input M_AXI_IP_AWREADY;
  output [31:0]M_AXI_IP_WDATA;
  output [3:0]M_AXI_IP_WSTRB;
  output M_AXI_IP_WVALID;
  input M_AXI_IP_WREADY;
  input [1:0]M_AXI_IP_BRESP;
  input M_AXI_IP_BVALID;
  output M_AXI_IP_BREADY;
  output [31:0]M_AXI_IP_ARADDR;
  output [2:0]M_AXI_IP_ARPROT;
  output M_AXI_IP_ARVALID;
  input M_AXI_IP_ARREADY;
  input [31:0]M_AXI_IP_RDATA;
  input [1:0]M_AXI_IP_RRESP;
  input M_AXI_IP_RVALID;
  output M_AXI_IP_RREADY;
  output [0:35]Data_Addr;
  input [0:31]Data_Read;
  output [0:31]Data_Write;
  output D_AS;
  output Read_Strobe;
  output Write_Strobe;
  input DReady;
  input DWait;
  input DCE;
  input DUE;
  output [0:3]Byte_Enable;
  output [35:0]M_AXI_DP_AWADDR;
  output [2:0]M_AXI_DP_AWPROT;
  output M_AXI_DP_AWVALID;
  input M_AXI_DP_AWREADY;
  output [31:0]M_AXI_DP_WDATA;
  output [3:0]M_AXI_DP_WSTRB;
  output M_AXI_DP_WVALID;
  input M_AXI_DP_WREADY;
  input [1:0]M_AXI_DP_BRESP;
  input M_AXI_DP_BVALID;
  output M_AXI_DP_BREADY;
  output [35:0]M_AXI_DP_ARADDR;
  output [2:0]M_AXI_DP_ARPROT;
  output M_AXI_DP_ARVALID;
  input M_AXI_DP_ARREADY;
  input [31:0]M_AXI_DP_RDATA;
  input [1:0]M_AXI_DP_RRESP;
  input M_AXI_DP_RVALID;
  output M_AXI_DP_RREADY;
endmodule
