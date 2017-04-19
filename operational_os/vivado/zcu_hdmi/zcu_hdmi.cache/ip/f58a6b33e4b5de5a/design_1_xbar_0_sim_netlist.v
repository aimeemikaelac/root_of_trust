// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Mon Apr 17 19:54:51 2017
// Host        : SchoolComputer running 64-bit Ubuntu 16.10
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xbar_0_sim_netlist.v
// Design      : design_1_xbar_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-i-es2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_addr_arbiter_sasd
   (SR,
    D,
    \gen_axilite.s_axi_rvalid_i_reg ,
    E,
    \m_payload_i_reg[0] ,
    \gen_axilite.s_axi_bvalid_i_reg ,
    \m_ready_d_reg[1] ,
    \m_ready_d_reg[0] ,
    s_axi_awready,
    \m_atarget_hot_reg[2] ,
    \m_atarget_enc_reg[0] ,
    \m_axi_arprot[2] ,
    \m_ready_d_reg[1]_0 ,
    m_axi_arvalid,
    p_2_in,
    \m_ready_d_reg[2] ,
    p_0_out__0,
    m_axi_bready,
    aa_wvalid,
    m_axi_wvalid,
    m_axi_wdata,
    m_axi_wstrb,
    s_axi_arready,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_rvalid,
    m_axi_awvalid,
    \gen_axilite.s_axi_bvalid_i_reg_0 ,
    aclk,
    \m_payload_i_reg[0]_0 ,
    aa_awready,
    aresetn_d,
    Q,
    s_axi_rready,
    sr_rvalid,
    \m_ready_d_reg[2]_0 ,
    s_axi_arvalid,
    mi_arready_mux,
    \m_atarget_hot_reg[2]_0 ,
    \m_payload_i_reg[0]_1 ,
    aa_bvalid,
    m_axi_bvalid,
    m_atarget_enc,
    s_axi_bready,
    aa_wready,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arprot,
    s_axi_awprot,
    s_axi_awvalid,
    mi_awready_mux,
    mi_wready,
    mi_bvalid);
  output [0:0]SR;
  output [0:0]D;
  output \gen_axilite.s_axi_rvalid_i_reg ;
  output [0:0]E;
  output \m_payload_i_reg[0] ;
  output \gen_axilite.s_axi_bvalid_i_reg ;
  output \m_ready_d_reg[1] ;
  output \m_ready_d_reg[0] ;
  output [1:0]s_axi_awready;
  output [2:0]\m_atarget_hot_reg[2] ;
  output \m_atarget_enc_reg[0] ;
  output [42:0]\m_axi_arprot[2] ;
  output [1:0]\m_ready_d_reg[1]_0 ;
  output [1:0]m_axi_arvalid;
  output p_2_in;
  output [2:0]\m_ready_d_reg[2] ;
  output [1:0]p_0_out__0;
  output [1:0]m_axi_bready;
  output aa_wvalid;
  output [1:0]m_axi_wvalid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [1:0]s_axi_arready;
  output [1:0]s_axi_wready;
  output [1:0]s_axi_bvalid;
  output [1:0]s_axi_rvalid;
  output [1:0]m_axi_awvalid;
  output \gen_axilite.s_axi_bvalid_i_reg_0 ;
  input aclk;
  input \m_payload_i_reg[0]_0 ;
  input aa_awready;
  input aresetn_d;
  input [1:0]Q;
  input [1:0]s_axi_rready;
  input sr_rvalid;
  input [2:0]\m_ready_d_reg[2]_0 ;
  input [1:0]s_axi_arvalid;
  input mi_arready_mux;
  input [2:0]\m_atarget_hot_reg[2]_0 ;
  input [0:0]\m_payload_i_reg[0]_1 ;
  input aa_bvalid;
  input [1:0]m_axi_bvalid;
  input [1:0]m_atarget_enc;
  input [1:0]s_axi_bready;
  input aa_wready;
  input [1:0]m_axi_wready;
  input [1:0]s_axi_wvalid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input [79:0]s_axi_araddr;
  input [79:0]s_axi_awaddr;
  input [5:0]s_axi_arprot;
  input [5:0]s_axi_awprot;
  input [1:0]s_axi_awvalid;
  input mi_awready_mux;
  input [0:0]mi_wready;
  input [0:0]mi_bvalid;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_awready;
  wire aa_bvalid;
  wire aa_grant_any;
  wire aa_grant_enc;
  wire [1:0]aa_grant_hot;
  wire aa_grant_rnw;
  wire aa_wready;
  wire aa_wvalid;
  wire aclk;
  wire [56:1]amesg_mux;
  wire aresetn_d;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ;
  wire \gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__4 ;
  wire \gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__4 ;
  wire \gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_5 ;
  wire \gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_6 ;
  wire \gen_arbiter.any_grant_i_1_n_0 ;
  wire \gen_arbiter.any_grant_i_2_n_0 ;
  wire \gen_arbiter.grant_rnw_i_1_n_0 ;
  wire \gen_arbiter.last_rr_hot[0]_i_1_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire \gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ;
  wire \gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ;
  wire \gen_arbiter.m_grant_hot_i[1]_i_1_n_0 ;
  wire \gen_arbiter.m_grant_hot_i[1]_i_6_n_0 ;
  wire \gen_arbiter.m_grant_hot_i[1]_i_7_n_0 ;
  wire \gen_arbiter.m_valid_i_i_1_n_0 ;
  wire \gen_arbiter.s_ready_i[1]_i_1_n_0 ;
  wire \gen_axilite.s_axi_bvalid_i_reg ;
  wire \gen_axilite.s_axi_bvalid_i_reg_0 ;
  wire \gen_axilite.s_axi_rvalid_i_reg ;
  wire [1:0]m_atarget_enc;
  wire \m_atarget_enc_reg[0] ;
  wire [2:0]\m_atarget_hot_reg[2] ;
  wire [2:0]\m_atarget_hot_reg[2]_0 ;
  wire [42:0]\m_axi_arprot[2] ;
  wire [1:0]m_axi_arvalid;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [1:0]m_axi_bvalid;
  wire [31:0]m_axi_wdata;
  wire [1:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire \m_payload_i_reg[0] ;
  wire \m_payload_i_reg[0]_0 ;
  wire [0:0]\m_payload_i_reg[0]_1 ;
  wire \m_ready_d_reg[0] ;
  wire \m_ready_d_reg[1] ;
  wire [1:0]\m_ready_d_reg[1]_0 ;
  wire [2:0]\m_ready_d_reg[2] ;
  wire [2:0]\m_ready_d_reg[2]_0 ;
  wire m_valid_i;
  wire mi_arready_mux;
  wire mi_awready_mux;
  wire [0:0]mi_bvalid;
  wire [0:0]mi_wready;
  wire p_0_in;
  wire [1:0]p_0_out__0;
  wire p_2_in;
  wire p_2_in_0;
  wire p_3_in;
  wire [128:73]s_amesg;
  wire \s_arvalid_reg[0]_i_1_n_0 ;
  wire \s_arvalid_reg[1]_i_1_n_0 ;
  wire \s_arvalid_reg[1]_i_2_n_0 ;
  wire \s_arvalid_reg_reg_n_0_[0] ;
  wire \s_arvalid_reg_reg_n_0_[1] ;
  wire [1:0]s_awvalid_reg;
  wire [1:0]s_awvalid_reg0;
  wire [79:0]s_axi_araddr;
  wire [5:0]s_axi_arprot;
  wire [1:0]s_axi_arready;
  wire [1:0]s_axi_arvalid;
  wire [79:0]s_axi_awaddr;
  wire [5:0]s_axi_awprot;
  wire [1:0]s_axi_awready;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [1:0]s_axi_bvalid;
  wire [1:0]s_axi_rready;
  wire [1:0]s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [1:0]s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;
  wire [1:0]s_ready_i;
  wire sr_rvalid;
  wire target_mi_enc;

  LUT6 #(
    .INIT(64'h0808088888880888)) 
    \gen_arbiter.any_grant_i_1 
       (.I0(\gen_arbiter.any_grant_i_2_n_0 ),
        .I1(aresetn_d),
        .I2(m_valid_i),
        .I3(aa_awready),
        .I4(aa_grant_rnw),
        .I5(\m_payload_i_reg[0]_0 ),
        .O(\gen_arbiter.any_grant_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF54)) 
    \gen_arbiter.any_grant_i_2 
       (.I0(m_valid_i),
        .I1(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .I2(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .I3(aa_grant_any),
        .O(\gen_arbiter.any_grant_i_2_n_0 ));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1_n_0 ),
        .Q(aa_grant_any),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \gen_arbiter.grant_rnw_i_1 
       (.I0(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .I1(s_axi_arvalid[1]),
        .I2(s_awvalid_reg[1]),
        .I3(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .I4(s_axi_arvalid[0]),
        .I5(s_awvalid_reg[0]),
        .O(\gen_arbiter.grant_rnw_i_1_n_0 ));
  FDRE \gen_arbiter.grant_rnw_reg 
       (.C(aclk),
        .CE(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .D(\gen_arbiter.grant_rnw_i_1_n_0 ),
        .Q(aa_grant_rnw),
        .R(SR));
  LUT6 #(
    .INIT(64'hEEEEEEEE000000E0)) 
    \gen_arbiter.last_rr_hot[0]_i_1 
       (.I0(s_axi_arvalid[0]),
        .I1(s_axi_awvalid[0]),
        .I2(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I3(s_axi_arvalid[1]),
        .I4(s_axi_awvalid[1]),
        .I5(p_2_in_0),
        .O(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .D(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SR));
  FDSE \gen_arbiter.last_rr_hot_reg[1] 
       (.C(aclk),
        .CE(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .D(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .Q(p_2_in_0),
        .S(SR));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[10]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_awaddr[9]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[82]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[10]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[10]_i_2 
       (.I0(s_axi_araddr[49]),
        .I1(s_axi_awaddr[49]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[82]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[11]_i_1 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_awaddr[10]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[83]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[11]_i_2 
       (.I0(s_axi_araddr[50]),
        .I1(s_axi_awaddr[50]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[83]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[12]_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(s_axi_awaddr[11]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[84]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[12]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[12]_i_2 
       (.I0(s_axi_araddr[51]),
        .I1(s_axi_awaddr[51]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[84]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[13]_i_1 
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_awaddr[12]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[85]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[13]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[13]_i_2 
       (.I0(s_axi_araddr[52]),
        .I1(s_axi_awaddr[52]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[85]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[14]_i_1 
       (.I0(s_axi_araddr[13]),
        .I1(s_axi_awaddr[13]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[86]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[14]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[14]_i_2 
       (.I0(s_axi_araddr[53]),
        .I1(s_axi_awaddr[53]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[86]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[15]_i_1 
       (.I0(s_axi_araddr[14]),
        .I1(s_axi_awaddr[14]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[87]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[15]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[15]_i_2 
       (.I0(s_axi_araddr[54]),
        .I1(s_axi_awaddr[54]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[87]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[16]_i_1 
       (.I0(s_axi_araddr[15]),
        .I1(s_axi_awaddr[15]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[88]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[16]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[16]_i_2 
       (.I0(s_axi_araddr[55]),
        .I1(s_axi_awaddr[55]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[88]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[17]_i_1 
       (.I0(s_axi_araddr[16]),
        .I1(s_axi_awaddr[16]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[89]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[17]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[17]_i_2 
       (.I0(s_axi_araddr[56]),
        .I1(s_axi_awaddr[56]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[89]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[18]_i_1 
       (.I0(s_axi_araddr[17]),
        .I1(s_axi_awaddr[17]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[90]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[18]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[18]_i_2 
       (.I0(s_axi_araddr[57]),
        .I1(s_axi_awaddr[57]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[90]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[19]_i_1 
       (.I0(s_axi_araddr[18]),
        .I1(s_axi_awaddr[18]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[91]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[19]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[19]_i_2 
       (.I0(s_axi_araddr[58]),
        .I1(s_axi_awaddr[58]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[91]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[1]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[73]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[1]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[1]_i_2 
       (.I0(s_axi_araddr[40]),
        .I1(s_axi_awaddr[40]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[73]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[20]_i_1 
       (.I0(s_axi_araddr[19]),
        .I1(s_axi_awaddr[19]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[92]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[20]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[20]_i_2 
       (.I0(s_axi_araddr[59]),
        .I1(s_axi_awaddr[59]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[92]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[21]_i_1 
       (.I0(s_axi_araddr[20]),
        .I1(s_axi_awaddr[20]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[93]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[21]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[21]_i_2 
       (.I0(s_axi_araddr[60]),
        .I1(s_axi_awaddr[60]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[93]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[22]_i_1 
       (.I0(s_axi_araddr[21]),
        .I1(s_axi_awaddr[21]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[94]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[22]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[22]_i_2 
       (.I0(s_axi_araddr[61]),
        .I1(s_axi_awaddr[61]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[94]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[23]_i_1 
       (.I0(s_axi_araddr[22]),
        .I1(s_axi_awaddr[22]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[95]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[23]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[23]_i_2 
       (.I0(s_axi_araddr[62]),
        .I1(s_axi_awaddr[62]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[95]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[24]_i_1 
       (.I0(s_axi_araddr[23]),
        .I1(s_axi_awaddr[23]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[96]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[24]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[24]_i_2 
       (.I0(s_axi_araddr[63]),
        .I1(s_axi_awaddr[63]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[96]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[25]_i_1 
       (.I0(s_axi_araddr[24]),
        .I1(s_axi_awaddr[24]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[97]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[25]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[25]_i_2 
       (.I0(s_axi_araddr[64]),
        .I1(s_axi_awaddr[64]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[97]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[26]_i_1 
       (.I0(s_axi_araddr[25]),
        .I1(s_axi_awaddr[25]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[98]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[26]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[26]_i_2 
       (.I0(s_axi_araddr[65]),
        .I1(s_axi_awaddr[65]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[98]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[27]_i_1 
       (.I0(s_axi_araddr[26]),
        .I1(s_axi_awaddr[26]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[99]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[27]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[27]_i_2 
       (.I0(s_axi_araddr[66]),
        .I1(s_axi_awaddr[66]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[99]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[28]_i_1 
       (.I0(s_axi_araddr[27]),
        .I1(s_axi_awaddr[27]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[100]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[28]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[28]_i_2 
       (.I0(s_axi_araddr[67]),
        .I1(s_axi_awaddr[67]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[100]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[29]_i_1 
       (.I0(s_axi_araddr[28]),
        .I1(s_axi_awaddr[28]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[101]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[29]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[29]_i_2 
       (.I0(s_axi_araddr[68]),
        .I1(s_axi_awaddr[68]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[101]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[2]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[74]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[2]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[2]_i_2 
       (.I0(s_axi_araddr[41]),
        .I1(s_axi_awaddr[41]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[74]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[30]_i_1 
       (.I0(s_axi_araddr[29]),
        .I1(s_axi_awaddr[29]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[102]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[30]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[30]_i_2 
       (.I0(s_axi_araddr[69]),
        .I1(s_axi_awaddr[69]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[102]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[31]_i_1 
       (.I0(s_axi_araddr[30]),
        .I1(s_axi_awaddr[30]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[103]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[31]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[31]_i_2 
       (.I0(s_axi_araddr[70]),
        .I1(s_axi_awaddr[70]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[103]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[32]_i_1 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_awaddr[31]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[104]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[32]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[32]_i_2 
       (.I0(s_axi_araddr[71]),
        .I1(s_axi_awaddr[71]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[104]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[33]_i_1 
       (.I0(s_axi_araddr[32]),
        .I1(s_axi_awaddr[32]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[105]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[33]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[33]_i_2 
       (.I0(s_axi_araddr[72]),
        .I1(s_axi_awaddr[72]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[105]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[34]_i_1 
       (.I0(s_axi_araddr[33]),
        .I1(s_axi_awaddr[33]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[106]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[34]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[34]_i_2 
       (.I0(s_axi_araddr[73]),
        .I1(s_axi_awaddr[73]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[106]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[35]_i_1 
       (.I0(s_axi_araddr[34]),
        .I1(s_axi_awaddr[34]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[107]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[35]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[35]_i_2 
       (.I0(s_axi_araddr[74]),
        .I1(s_axi_awaddr[74]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[107]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[36]_i_1 
       (.I0(s_axi_araddr[35]),
        .I1(s_axi_awaddr[35]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[108]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[36]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[36]_i_2 
       (.I0(s_axi_araddr[75]),
        .I1(s_axi_awaddr[75]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[108]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[37]_i_1 
       (.I0(s_axi_araddr[36]),
        .I1(s_axi_awaddr[36]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[109]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[37]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[37]_i_2 
       (.I0(s_axi_araddr[76]),
        .I1(s_axi_awaddr[76]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[109]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[38]_i_1 
       (.I0(s_axi_araddr[37]),
        .I1(s_axi_awaddr[37]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[110]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[38]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[38]_i_2 
       (.I0(s_axi_araddr[77]),
        .I1(s_axi_awaddr[77]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[110]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[39]_i_1 
       (.I0(s_axi_araddr[38]),
        .I1(s_axi_awaddr[38]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[111]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[39]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[39]_i_2 
       (.I0(s_axi_araddr[78]),
        .I1(s_axi_awaddr[78]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[111]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[3]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[75]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[3]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[3]_i_2 
       (.I0(s_axi_araddr[42]),
        .I1(s_axi_awaddr[42]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[75]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_amesg_i[40]_i_1 
       (.I0(aresetn_d),
        .O(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_amesg_i[40]_i_2 
       (.I0(aa_grant_any),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[40]_i_3 
       (.I0(s_axi_araddr[39]),
        .I1(s_axi_awaddr[39]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[112]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[40]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[40]_i_4 
       (.I0(s_axi_araddr[79]),
        .I1(s_axi_awaddr[79]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[112]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[4]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[76]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[4]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[4]_i_2 
       (.I0(s_axi_araddr[43]),
        .I1(s_axi_awaddr[43]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[76]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[54]_i_1 
       (.I0(s_axi_arprot[0]),
        .I1(s_axi_awprot[0]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[126]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[54]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[54]_i_2 
       (.I0(s_axi_arprot[3]),
        .I1(s_axi_awprot[3]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[126]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[55]_i_1 
       (.I0(s_axi_arprot[1]),
        .I1(s_axi_awprot[1]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[127]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[55]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[55]_i_2 
       (.I0(s_axi_arprot[4]),
        .I1(s_axi_awprot[4]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[127]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[56]_i_1 
       (.I0(s_axi_arprot[2]),
        .I1(s_axi_awprot[2]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[128]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[56]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[56]_i_2 
       (.I0(s_axi_arprot[5]),
        .I1(s_axi_awprot[5]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[128]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[5]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[77]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[5]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[5]_i_2 
       (.I0(s_axi_araddr[44]),
        .I1(s_axi_awaddr[44]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[77]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[6]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[78]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[6]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[6]_i_2 
       (.I0(s_axi_araddr[45]),
        .I1(s_axi_awaddr[45]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[78]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[7]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[79]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[7]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[7]_i_2 
       (.I0(s_axi_araddr[46]),
        .I1(s_axi_awaddr[46]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[79]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[8]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_awaddr[7]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[80]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[8]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[8]_i_2 
       (.I0(s_axi_araddr[47]),
        .I1(s_axi_awaddr[47]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[80]));
  LUT6 #(
    .INIT(64'hFFFF0000CCACCCAC)) 
    \gen_arbiter.m_amesg_i[9]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_awaddr[8]),
        .I2(s_axi_arvalid[0]),
        .I3(s_awvalid_reg[0]),
        .I4(s_amesg[81]),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .O(amesg_mux[9]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \gen_arbiter.m_amesg_i[9]_i_2 
       (.I0(s_axi_araddr[48]),
        .I1(s_axi_awaddr[48]),
        .I2(s_axi_arvalid[1]),
        .I3(s_awvalid_reg[1]),
        .O(s_amesg[81]));
  FDRE \gen_arbiter.m_amesg_i_reg[10] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[10]),
        .Q(\m_axi_arprot[2] [9]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[11] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[11]),
        .Q(\m_axi_arprot[2] [10]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[12] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[12]),
        .Q(\m_axi_arprot[2] [11]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[13] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[13]),
        .Q(\m_axi_arprot[2] [12]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[14] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[14]),
        .Q(\m_axi_arprot[2] [13]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[15] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[15]),
        .Q(\m_axi_arprot[2] [14]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[16] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[16]),
        .Q(\m_axi_arprot[2] [15]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[17] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[17]),
        .Q(\m_axi_arprot[2] [16]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[18] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[18]),
        .Q(\m_axi_arprot[2] [17]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[19] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[19]),
        .Q(\m_axi_arprot[2] [18]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[1]),
        .Q(\m_axi_arprot[2] [0]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[20] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[20]),
        .Q(\m_axi_arprot[2] [19]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[21] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[21]),
        .Q(\m_axi_arprot[2] [20]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[22] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[22]),
        .Q(\m_axi_arprot[2] [21]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[23] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[23]),
        .Q(\m_axi_arprot[2] [22]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[24] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[24]),
        .Q(\m_axi_arprot[2] [23]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[25] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[25]),
        .Q(\m_axi_arprot[2] [24]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[26] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[26]),
        .Q(\m_axi_arprot[2] [25]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[27] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[27]),
        .Q(\m_axi_arprot[2] [26]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[28] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[28]),
        .Q(\m_axi_arprot[2] [27]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[29] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[29]),
        .Q(\m_axi_arprot[2] [28]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[2]),
        .Q(\m_axi_arprot[2] [1]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[30] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[30]),
        .Q(\m_axi_arprot[2] [29]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[31] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[31]),
        .Q(\m_axi_arprot[2] [30]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[32] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[32]),
        .Q(\m_axi_arprot[2] [31]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[33] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[33]),
        .Q(\m_axi_arprot[2] [32]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[34] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[34]),
        .Q(\m_axi_arprot[2] [33]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[35] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[35]),
        .Q(\m_axi_arprot[2] [34]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[36] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[36]),
        .Q(\m_axi_arprot[2] [35]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[37] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[37]),
        .Q(\m_axi_arprot[2] [36]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[38] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[38]),
        .Q(\m_axi_arprot[2] [37]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[39] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[39]),
        .Q(\m_axi_arprot[2] [38]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[3]),
        .Q(\m_axi_arprot[2] [2]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[40] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[40]),
        .Q(\m_axi_arprot[2] [39]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[4]),
        .Q(\m_axi_arprot[2] [3]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[54] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[54]),
        .Q(\m_axi_arprot[2] [40]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[55] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[55]),
        .Q(\m_axi_arprot[2] [41]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[56] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[56]),
        .Q(\m_axi_arprot[2] [42]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[5]),
        .Q(\m_axi_arprot[2] [4]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[6]),
        .Q(\m_axi_arprot[2] [5]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[7]),
        .Q(\m_axi_arprot[2] [6]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[8] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[8]),
        .Q(\m_axi_arprot[2] [7]),
        .R(SR));
  FDRE \gen_arbiter.m_amesg_i_reg[9] 
       (.C(aclk),
        .CE(p_0_in),
        .D(amesg_mux[9]),
        .Q(\m_axi_arprot[2] [8]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0054)) 
    \gen_arbiter.m_grant_enc_i[0]_i_1 
       (.I0(m_valid_i),
        .I1(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .I2(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .I3(aa_grant_any),
        .O(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE000000E0)) 
    \gen_arbiter.m_grant_enc_i[0]_i_2 
       (.I0(s_axi_arvalid[1]),
        .I1(s_axi_awvalid[1]),
        .I2(p_2_in_0),
        .I3(s_axi_arvalid[0]),
        .I4(s_axi_awvalid[0]),
        .I5(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ));
  FDRE \gen_arbiter.m_grant_enc_i_reg[0] 
       (.C(aclk),
        .CE(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .D(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .Q(aa_grant_enc),
        .R(SR));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \gen_arbiter.m_grant_hot_i[1]_i_1 
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(aa_grant_rnw),
        .I2(aa_awready),
        .I3(m_valid_i),
        .I4(aresetn_d),
        .O(\gen_arbiter.m_grant_hot_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A8A0A8000000000)) 
    \gen_arbiter.m_grant_hot_i[1]_i_4 
       (.I0(aa_wvalid),
        .I1(m_axi_wready[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(m_axi_wready[0]),
        .I5(\gen_arbiter.m_grant_hot_i[1]_i_6_n_0 ),
        .O(p_0_out__0[1]));
  LUT6 #(
    .INIT(64'h0A8A0A8000000000)) 
    \gen_arbiter.m_grant_hot_i[1]_i_5 
       (.I0(p_3_in),
        .I1(m_axi_bvalid[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(m_axi_bvalid[0]),
        .I5(\gen_arbiter.m_grant_hot_i[1]_i_7_n_0 ),
        .O(p_0_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04040004)) 
    \gen_arbiter.m_grant_hot_i[1]_i_6 
       (.I0(\m_ready_d_reg[2]_0 [1]),
        .I1(m_valid_i),
        .I2(aa_grant_rnw),
        .I3(m_atarget_enc[1]),
        .I4(mi_wready),
        .O(\gen_arbiter.m_grant_hot_i[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04040004)) 
    \gen_arbiter.m_grant_hot_i[1]_i_7 
       (.I0(\m_ready_d_reg[2]_0 [0]),
        .I1(m_valid_i),
        .I2(aa_grant_rnw),
        .I3(m_atarget_enc[1]),
        .I4(mi_bvalid),
        .O(\gen_arbiter.m_grant_hot_i[1]_i_7_n_0 ));
  FDRE \gen_arbiter.m_grant_hot_i_reg[0] 
       (.C(aclk),
        .CE(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .D(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .Q(aa_grant_hot[0]),
        .R(\gen_arbiter.m_grant_hot_i[1]_i_1_n_0 ));
  FDRE \gen_arbiter.m_grant_hot_i_reg[1] 
       (.C(aclk),
        .CE(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .D(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .Q(aa_grant_hot[1]),
        .R(\gen_arbiter.m_grant_hot_i[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    \gen_arbiter.m_valid_i_i_1 
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(aa_grant_rnw),
        .I2(aa_awready),
        .I3(m_valid_i),
        .I4(aa_grant_any),
        .O(\gen_arbiter.m_valid_i_i_1_n_0 ));
  FDRE \gen_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_i_1_n_0 ),
        .Q(m_valid_i),
        .R(SR));
  LUT3 #(
    .INIT(8'hBF)) 
    \gen_arbiter.s_ready_i[1]_i_1 
       (.I0(m_valid_i),
        .I1(aresetn_d),
        .I2(aa_grant_any),
        .O(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  FDRE \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aa_grant_hot[0]),
        .Q(s_ready_i[0]),
        .R(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  FDRE \gen_arbiter.s_ready_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(aa_grant_hot[1]),
        .Q(s_ready_i[1]),
        .R(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7C4C4C4C4C4C4C4C)) 
    \gen_axilite.s_axi_bvalid_i_i_1 
       (.I0(p_3_in),
        .I1(mi_bvalid),
        .I2(\m_atarget_hot_reg[2]_0 [2]),
        .I3(aa_wvalid),
        .I4(\gen_axilite.s_axi_bvalid_i_reg ),
        .I5(mi_wready),
        .O(\gen_axilite.s_axi_bvalid_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_axilite.s_axi_bvalid_i_i_2 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(\m_ready_d_reg[2]_0 [2]),
        .O(\gen_axilite.s_axi_bvalid_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \gen_axilite.s_axi_rvalid_i_i_2 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(Q[1]),
        .O(\gen_axilite.s_axi_rvalid_i_reg ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_atarget_enc[0]_i_1 
       (.I0(target_mi_enc),
        .I1(aresetn_d),
        .O(\m_atarget_enc_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_atarget_enc[1]_i_1 
       (.I0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .I1(target_mi_enc),
        .O(D));
  LUT2 #(
    .INIT(4'h8)) 
    \m_atarget_hot[0]_i_1 
       (.I0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .I1(aa_grant_any),
        .O(\m_atarget_hot_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_atarget_hot[1]_i_1 
       (.I0(aa_grant_any),
        .I1(target_mi_enc),
        .O(\m_atarget_hot_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \m_atarget_hot[2]_i_1 
       (.I0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .I1(target_mi_enc),
        .I2(aa_grant_any),
        .O(\m_atarget_hot_reg[2] [2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \m_atarget_hot[2]_i_2 
       (.I0(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_5 ),
        .I1(\gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I2(\gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__4 ),
        .I3(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_6 ),
        .O(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_atarget_hot[2]_i_3 
       (.I0(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_5 ),
        .I1(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I2(\m_axi_arprot[2] [15]),
        .I3(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__4 ),
        .I4(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_6 ),
        .O(target_mi_enc));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \m_atarget_hot[2]_i_4 
       (.I0(\m_axi_arprot[2] [32]),
        .I1(\m_axi_arprot[2] [30]),
        .I2(\m_axi_arprot[2] [33]),
        .I3(\m_axi_arprot[2] [28]),
        .I4(\m_axi_arprot[2] [29]),
        .I5(\m_axi_arprot[2] [31]),
        .O(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_5 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_atarget_hot[2]_i_5 
       (.I0(\m_axi_arprot[2] [20]),
        .I1(\m_axi_arprot[2] [19]),
        .I2(\m_axi_arprot[2] [21]),
        .I3(\m_axi_arprot[2] [16]),
        .I4(\m_axi_arprot[2] [17]),
        .I5(\m_axi_arprot[2] [18]),
        .O(\gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_atarget_hot[2]_i_6 
       (.I0(\m_axi_arprot[2] [26]),
        .I1(\m_axi_arprot[2] [25]),
        .I2(\m_axi_arprot[2] [27]),
        .I3(\m_axi_arprot[2] [22]),
        .I4(\m_axi_arprot[2] [23]),
        .I5(\m_axi_arprot[2] [24]),
        .O(\gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__4 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_atarget_hot[2]_i_7 
       (.I0(\m_axi_arprot[2] [38]),
        .I1(\m_axi_arprot[2] [37]),
        .I2(\m_axi_arprot[2] [39]),
        .I3(\m_axi_arprot[2] [34]),
        .I4(\m_axi_arprot[2] [35]),
        .I5(\m_axi_arprot[2] [36]),
        .O(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_6 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_atarget_hot[2]_i_8 
       (.I0(\m_axi_arprot[2] [19]),
        .I1(\m_axi_arprot[2] [21]),
        .I2(\m_axi_arprot[2] [20]),
        .I3(\m_axi_arprot[2] [18]),
        .I4(\m_axi_arprot[2] [16]),
        .I5(\m_axi_arprot[2] [17]),
        .O(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_atarget_hot[2]_i_9 
       (.I0(\m_axi_arprot[2] [25]),
        .I1(\m_axi_arprot[2] [27]),
        .I2(\m_axi_arprot[2] [26]),
        .I3(\m_axi_arprot[2] [24]),
        .I4(\m_axi_arprot[2] [22]),
        .I5(\m_axi_arprot[2] [23]),
        .O(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__4 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \m_axi_arvalid[0]_INST_0 
       (.I0(\m_atarget_hot_reg[2]_0 [0]),
        .I1(Q[1]),
        .I2(m_valid_i),
        .I3(aa_grant_rnw),
        .O(m_axi_arvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \m_axi_arvalid[1]_INST_0 
       (.I0(\m_atarget_hot_reg[2]_0 [1]),
        .I1(Q[1]),
        .I2(m_valid_i),
        .I3(aa_grant_rnw),
        .O(m_axi_arvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \m_axi_awvalid[0]_INST_0 
       (.I0(\m_atarget_hot_reg[2]_0 [0]),
        .I1(\m_ready_d_reg[2]_0 [2]),
        .I2(m_valid_i),
        .I3(aa_grant_rnw),
        .O(m_axi_awvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \m_axi_awvalid[1]_INST_0 
       (.I0(\m_atarget_hot_reg[2]_0 [1]),
        .I1(\m_ready_d_reg[2]_0 [2]),
        .I2(m_valid_i),
        .I3(aa_grant_rnw),
        .O(m_axi_awvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_bready[0]_INST_0 
       (.I0(\m_atarget_hot_reg[2]_0 [0]),
        .I1(p_3_in),
        .O(m_axi_bready[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_bready[1]_INST_0 
       (.I0(\m_atarget_hot_reg[2]_0 [1]),
        .I1(p_3_in),
        .O(m_axi_bready[1]));
  LUT6 #(
    .INIT(64'h0000000000B80000)) 
    \m_axi_bready[1]_INST_0_i_1 
       (.I0(s_axi_bready[1]),
        .I1(aa_grant_enc),
        .I2(s_axi_bready[0]),
        .I3(\m_ready_d_reg[2]_0 [0]),
        .I4(m_valid_i),
        .I5(aa_grant_rnw),
        .O(p_3_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[0]_INST_0 
       (.I0(s_axi_wdata[0]),
        .I1(s_axi_wdata[32]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[10]_INST_0 
       (.I0(s_axi_wdata[10]),
        .I1(s_axi_wdata[42]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[11]_INST_0 
       (.I0(s_axi_wdata[11]),
        .I1(s_axi_wdata[43]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[12]_INST_0 
       (.I0(s_axi_wdata[12]),
        .I1(s_axi_wdata[44]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[13]_INST_0 
       (.I0(s_axi_wdata[13]),
        .I1(s_axi_wdata[45]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[14]_INST_0 
       (.I0(s_axi_wdata[14]),
        .I1(s_axi_wdata[46]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[15]_INST_0 
       (.I0(s_axi_wdata[15]),
        .I1(s_axi_wdata[47]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[16]_INST_0 
       (.I0(s_axi_wdata[16]),
        .I1(s_axi_wdata[48]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[17]_INST_0 
       (.I0(s_axi_wdata[17]),
        .I1(s_axi_wdata[49]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[18]_INST_0 
       (.I0(s_axi_wdata[18]),
        .I1(s_axi_wdata[50]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[19]_INST_0 
       (.I0(s_axi_wdata[19]),
        .I1(s_axi_wdata[51]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[1]_INST_0 
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wdata[33]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[20]_INST_0 
       (.I0(s_axi_wdata[20]),
        .I1(s_axi_wdata[52]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[21]_INST_0 
       (.I0(s_axi_wdata[21]),
        .I1(s_axi_wdata[53]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[22]_INST_0 
       (.I0(s_axi_wdata[22]),
        .I1(s_axi_wdata[54]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[23]_INST_0 
       (.I0(s_axi_wdata[23]),
        .I1(s_axi_wdata[55]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[24]_INST_0 
       (.I0(s_axi_wdata[24]),
        .I1(s_axi_wdata[56]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[25]_INST_0 
       (.I0(s_axi_wdata[25]),
        .I1(s_axi_wdata[57]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[26]_INST_0 
       (.I0(s_axi_wdata[26]),
        .I1(s_axi_wdata[58]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[27]_INST_0 
       (.I0(s_axi_wdata[27]),
        .I1(s_axi_wdata[59]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[28]_INST_0 
       (.I0(s_axi_wdata[28]),
        .I1(s_axi_wdata[60]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[29]_INST_0 
       (.I0(s_axi_wdata[29]),
        .I1(s_axi_wdata[61]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[2]_INST_0 
       (.I0(s_axi_wdata[2]),
        .I1(s_axi_wdata[34]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[30]_INST_0 
       (.I0(s_axi_wdata[30]),
        .I1(s_axi_wdata[62]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[31]_INST_0 
       (.I0(s_axi_wdata[31]),
        .I1(s_axi_wdata[63]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[3]_INST_0 
       (.I0(s_axi_wdata[3]),
        .I1(s_axi_wdata[35]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[4]_INST_0 
       (.I0(s_axi_wdata[4]),
        .I1(s_axi_wdata[36]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[5]_INST_0 
       (.I0(s_axi_wdata[5]),
        .I1(s_axi_wdata[37]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[6]_INST_0 
       (.I0(s_axi_wdata[6]),
        .I1(s_axi_wdata[38]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[7]_INST_0 
       (.I0(s_axi_wdata[7]),
        .I1(s_axi_wdata[39]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[8]_INST_0 
       (.I0(s_axi_wdata[8]),
        .I1(s_axi_wdata[40]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wdata[9]_INST_0 
       (.I0(s_axi_wdata[9]),
        .I1(s_axi_wdata[41]),
        .I2(aa_grant_enc),
        .O(m_axi_wdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(s_axi_wstrb[0]),
        .I1(s_axi_wstrb[4]),
        .I2(aa_grant_enc),
        .O(m_axi_wstrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(s_axi_wstrb[1]),
        .I1(s_axi_wstrb[5]),
        .I2(aa_grant_enc),
        .O(m_axi_wstrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(s_axi_wstrb[2]),
        .I1(s_axi_wstrb[6]),
        .I2(aa_grant_enc),
        .O(m_axi_wstrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(s_axi_wstrb[3]),
        .I1(s_axi_wstrb[7]),
        .I2(aa_grant_enc),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_wvalid[0]_INST_0 
       (.I0(\m_atarget_hot_reg[2]_0 [0]),
        .I1(aa_wvalid),
        .O(m_axi_wvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_wvalid[1]_INST_0 
       (.I0(\m_atarget_hot_reg[2]_0 [1]),
        .I1(aa_wvalid),
        .O(m_axi_wvalid[1]));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \m_axi_wvalid[1]_INST_0_i_1 
       (.I0(\m_ready_d_reg[2]_0 [1]),
        .I1(m_valid_i),
        .I2(aa_grant_rnw),
        .I3(s_axi_wvalid[0]),
        .I4(aa_grant_enc),
        .I5(s_axi_wvalid[1]),
        .O(aa_wvalid));
  LUT5 #(
    .INIT(32'hA808FFFF)) 
    \m_payload_i[34]_i_1 
       (.I0(\m_payload_i_reg[0] ),
        .I1(s_axi_rready[0]),
        .I2(aa_grant_enc),
        .I3(s_axi_rready[1]),
        .I4(sr_rvalid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_payload_i[34]_i_3 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(Q[0]),
        .O(\m_payload_i_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \m_ready_d[0]_i_1 
       (.I0(\m_payload_i_reg[0]_1 ),
        .I1(p_2_in),
        .I2(sr_rvalid),
        .I3(aa_grant_rnw),
        .I4(m_valid_i),
        .I5(Q[0]),
        .O(\m_ready_d_reg[1]_0 [0]));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \m_ready_d[0]_i_1__0 
       (.I0(p_3_in),
        .I1(aa_bvalid),
        .I2(aa_grant_rnw),
        .I3(m_valid_i),
        .I4(\m_ready_d_reg[2]_0 [0]),
        .O(\m_ready_d_reg[2] [0]));
  LUT6 #(
    .INIT(64'h00B8000000000000)) 
    \m_ready_d[0]_i_2 
       (.I0(s_axi_rready[1]),
        .I1(aa_grant_enc),
        .I2(s_axi_rready[0]),
        .I3(Q[0]),
        .I4(m_valid_i),
        .I5(aa_grant_rnw),
        .O(p_2_in));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \m_ready_d[1]_i_1 
       (.I0(aa_wvalid),
        .I1(aa_wready),
        .I2(aa_grant_rnw),
        .I3(m_valid_i),
        .I4(\m_ready_d_reg[2]_0 [1]),
        .O(\m_ready_d_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \m_ready_d[1]_i_2 
       (.I0(mi_arready_mux),
        .I1(aa_grant_rnw),
        .I2(m_valid_i),
        .I3(Q[1]),
        .O(\m_ready_d_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \m_ready_d[2]_i_2 
       (.I0(mi_awready_mux),
        .I1(aa_grant_rnw),
        .I2(m_valid_i),
        .I3(\m_ready_d_reg[2]_0 [2]),
        .O(\m_ready_d_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_arvalid_reg[0]_i_1 
       (.I0(s_axi_arvalid[0]),
        .I1(s_awvalid_reg[0]),
        .O(\s_arvalid_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \s_arvalid_reg[1]_i_1 
       (.I0(s_ready_i[0]),
        .I1(s_ready_i[1]),
        .I2(aresetn_d),
        .O(\s_arvalid_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_arvalid_reg[1]_i_2 
       (.I0(s_axi_arvalid[1]),
        .I1(s_awvalid_reg[1]),
        .O(\s_arvalid_reg[1]_i_2_n_0 ));
  FDRE \s_arvalid_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arvalid_reg[0]_i_1_n_0 ),
        .Q(\s_arvalid_reg_reg_n_0_[0] ),
        .R(\s_arvalid_reg[1]_i_1_n_0 ));
  FDRE \s_arvalid_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arvalid_reg[1]_i_2_n_0 ),
        .Q(\s_arvalid_reg_reg_n_0_[1] ),
        .R(\s_arvalid_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \s_awvalid_reg[0]_i_1 
       (.I0(\s_arvalid_reg_reg_n_0_[0] ),
        .I1(s_awvalid_reg[0]),
        .I2(s_axi_arvalid[0]),
        .I3(s_axi_awvalid[0]),
        .O(s_awvalid_reg0[0]));
  LUT4 #(
    .INIT(16'h4500)) 
    \s_awvalid_reg[1]_i_1 
       (.I0(\s_arvalid_reg_reg_n_0_[1] ),
        .I1(s_awvalid_reg[1]),
        .I2(s_axi_arvalid[1]),
        .I3(s_axi_awvalid[1]),
        .O(s_awvalid_reg0[1]));
  FDRE \s_awvalid_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_awvalid_reg0[0]),
        .Q(s_awvalid_reg[0]),
        .R(\s_arvalid_reg[1]_i_1_n_0 ));
  FDRE \s_awvalid_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_awvalid_reg0[1]),
        .Q(s_awvalid_reg[1]),
        .R(\s_arvalid_reg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arready[0]_INST_0 
       (.I0(s_ready_i[0]),
        .I1(aa_grant_rnw),
        .O(s_axi_arready[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arready[1]_INST_0 
       (.I0(s_ready_i[1]),
        .I1(aa_grant_rnw),
        .O(s_axi_arready[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_awready[0]_INST_0 
       (.I0(s_ready_i[0]),
        .I1(aa_grant_rnw),
        .O(s_axi_awready[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_awready[1]_INST_0 
       (.I0(s_ready_i[1]),
        .I1(aa_grant_rnw),
        .O(s_axi_awready[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_bvalid[0]_INST_0 
       (.I0(aa_grant_hot[0]),
        .I1(aa_bvalid),
        .O(s_axi_bvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_bvalid[1]_INST_0 
       (.I0(aa_grant_hot[1]),
        .I1(aa_bvalid),
        .O(s_axi_bvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_axi_bvalid[1]_INST_0_i_2 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(\m_ready_d_reg[2]_0 [0]),
        .O(\m_ready_d_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rvalid[0]_INST_0 
       (.I0(aa_grant_hot[0]),
        .I1(sr_rvalid),
        .O(s_axi_rvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rvalid[1]_INST_0 
       (.I0(aa_grant_hot[1]),
        .I1(sr_rvalid),
        .O(s_axi_rvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[0]_INST_0 
       (.I0(aa_grant_hot[0]),
        .I1(aa_wready),
        .O(s_axi_wready[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[1]_INST_0 
       (.I0(aa_grant_hot[1]),
        .I1(aa_wready),
        .O(s_axi_wready[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_axi_wready[1]_INST_0_i_2 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(\m_ready_d_reg[2]_0 [1]),
        .O(\m_ready_d_reg[1] ));
endmodule

(* C_AXI_ADDR_WIDTH = "40" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_CONNECTIVITY_MODE = "0" *) (* C_DEBUG = "1" *) 
(* C_FAMILY = "zynquplus" *) (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000000111100000000000000000000000000010000" *) (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000101011111111111110000000000000000000000000000000000000000000000010100000000000000000000000000000" *) 
(* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000001100000000000000000000000000000011" *) (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_WRITE_CONNECTIVITY = "64'b0000000000000000000000000000001100000000000000000000000000000011" *) (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) (* C_NUM_ADDR_RANGES = "1" *) 
(* C_NUM_MASTER_SLOTS = "2" *) (* C_NUM_SLAVE_SLOTS = "2" *) (* C_R_REGISTER = "1" *) 
(* C_S_AXI_ARB_PRIORITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_BASE_ID = "64'b0000000000000000000000000000000100000000000000000000000000000000" *) (* C_S_AXI_READ_ACCEPTANCE = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
(* C_S_AXI_SINGLE_THREAD = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) (* C_S_AXI_THREAD_ID_WIDTH = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_WRITE_ACCEPTANCE = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_ADDR_DECODE = "1" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b010" *) 
(* P_FAMILY = "rtl" *) (* P_INCR = "2'b01" *) (* P_LEN = "8" *) 
(* P_LOCK = "1" *) (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* P_M_AXI_SUPPORTS_READ = "2'b11" *) 
(* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) (* P_RANGE_CHECK = "1" *) 
(* P_S_AXI_BASE_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_HIGH_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_SUPPORTS_READ = "2'b11" *) 
(* P_S_AXI_SUPPORTS_WRITE = "2'b11" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_axi_crossbar
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [1:0]s_axi_awid;
  input [79:0]s_axi_awaddr;
  input [15:0]s_axi_awlen;
  input [5:0]s_axi_awsize;
  input [3:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [7:0]s_axi_awcache;
  input [5:0]s_axi_awprot;
  input [7:0]s_axi_awqos;
  input [1:0]s_axi_awuser;
  input [1:0]s_axi_awvalid;
  output [1:0]s_axi_awready;
  input [1:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input [1:0]s_axi_wlast;
  input [1:0]s_axi_wuser;
  input [1:0]s_axi_wvalid;
  output [1:0]s_axi_wready;
  output [1:0]s_axi_bid;
  output [3:0]s_axi_bresp;
  output [1:0]s_axi_buser;
  output [1:0]s_axi_bvalid;
  input [1:0]s_axi_bready;
  input [1:0]s_axi_arid;
  input [79:0]s_axi_araddr;
  input [15:0]s_axi_arlen;
  input [5:0]s_axi_arsize;
  input [3:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [7:0]s_axi_arcache;
  input [5:0]s_axi_arprot;
  input [7:0]s_axi_arqos;
  input [1:0]s_axi_aruser;
  input [1:0]s_axi_arvalid;
  output [1:0]s_axi_arready;
  output [1:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [3:0]s_axi_rresp;
  output [1:0]s_axi_rlast;
  output [1:0]s_axi_ruser;
  output [1:0]s_axi_rvalid;
  input [1:0]s_axi_rready;
  output [1:0]m_axi_awid;
  output [79:0]m_axi_awaddr;
  output [15:0]m_axi_awlen;
  output [5:0]m_axi_awsize;
  output [3:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [7:0]m_axi_awcache;
  output [5:0]m_axi_awprot;
  output [7:0]m_axi_awregion;
  output [7:0]m_axi_awqos;
  output [1:0]m_axi_awuser;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [1:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wlast;
  output [1:0]m_axi_wuser;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [1:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_buser;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [1:0]m_axi_arid;
  output [79:0]m_axi_araddr;
  output [15:0]m_axi_arlen;
  output [5:0]m_axi_arsize;
  output [3:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [7:0]m_axi_arcache;
  output [5:0]m_axi_arprot;
  output [7:0]m_axi_arregion;
  output [7:0]m_axi_arqos;
  output [1:0]m_axi_aruser;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rlast;
  input [1:0]m_axi_ruser;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [14:0]\^m_axi_araddr ;
  wire [2:0]\^m_axi_arprot ;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_arvalid;
  wire [79:55]\^m_axi_awaddr ;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [63:32]\^m_axi_wdata ;
  wire [1:0]m_axi_wready;
  wire [7:4]\^m_axi_wstrb ;
  wire [1:0]m_axi_wvalid;
  wire [79:0]s_axi_araddr;
  wire [5:0]s_axi_arprot;
  wire [1:0]s_axi_arready;
  wire [1:0]s_axi_arvalid;
  wire [79:0]s_axi_awaddr;
  wire [5:0]s_axi_awprot;
  wire [1:0]s_axi_awready;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [3:2]\^s_axi_bresp ;
  wire [1:0]s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire [1:0]s_axi_rready;
  wire [1:0]\^s_axi_rresp ;
  wire [1:0]s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [1:0]s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;

  assign m_axi_araddr[79:55] = \^m_axi_awaddr [79:55];
  assign m_axi_araddr[54:40] = \^m_axi_araddr [14:0];
  assign m_axi_araddr[39:15] = \^m_axi_awaddr [79:55];
  assign m_axi_araddr[14:0] = \^m_axi_araddr [14:0];
  assign m_axi_arburst[3] = \<const0> ;
  assign m_axi_arburst[2] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[7] = \<const0> ;
  assign m_axi_arcache[6] = \<const0> ;
  assign m_axi_arcache[5] = \<const0> ;
  assign m_axi_arcache[4] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[15] = \<const0> ;
  assign m_axi_arlen[14] = \<const0> ;
  assign m_axi_arlen[13] = \<const0> ;
  assign m_axi_arlen[12] = \<const0> ;
  assign m_axi_arlen[11] = \<const0> ;
  assign m_axi_arlen[10] = \<const0> ;
  assign m_axi_arlen[9] = \<const0> ;
  assign m_axi_arlen[8] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[5:3] = \^m_axi_arprot [2:0];
  assign m_axi_arprot[2:0] = \^m_axi_arprot [2:0];
  assign m_axi_arqos[7] = \<const0> ;
  assign m_axi_arqos[6] = \<const0> ;
  assign m_axi_arqos[5] = \<const0> ;
  assign m_axi_arqos[4] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[7] = \<const0> ;
  assign m_axi_arregion[6] = \<const0> ;
  assign m_axi_arregion[5] = \<const0> ;
  assign m_axi_arregion[4] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[5] = \<const0> ;
  assign m_axi_arsize[4] = \<const0> ;
  assign m_axi_arsize[3] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[79:55] = \^m_axi_awaddr [79:55];
  assign m_axi_awaddr[54:40] = \^m_axi_araddr [14:0];
  assign m_axi_awaddr[39:15] = \^m_axi_awaddr [79:55];
  assign m_axi_awaddr[14:0] = \^m_axi_araddr [14:0];
  assign m_axi_awburst[3] = \<const0> ;
  assign m_axi_awburst[2] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[7] = \<const0> ;
  assign m_axi_awcache[6] = \<const0> ;
  assign m_axi_awcache[5] = \<const0> ;
  assign m_axi_awcache[4] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[15] = \<const0> ;
  assign m_axi_awlen[14] = \<const0> ;
  assign m_axi_awlen[13] = \<const0> ;
  assign m_axi_awlen[12] = \<const0> ;
  assign m_axi_awlen[11] = \<const0> ;
  assign m_axi_awlen[10] = \<const0> ;
  assign m_axi_awlen[9] = \<const0> ;
  assign m_axi_awlen[8] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[5:3] = \^m_axi_arprot [2:0];
  assign m_axi_awprot[2:0] = \^m_axi_arprot [2:0];
  assign m_axi_awqos[7] = \<const0> ;
  assign m_axi_awqos[6] = \<const0> ;
  assign m_axi_awqos[5] = \<const0> ;
  assign m_axi_awqos[4] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[7] = \<const0> ;
  assign m_axi_awregion[6] = \<const0> ;
  assign m_axi_awregion[5] = \<const0> ;
  assign m_axi_awregion[4] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[5] = \<const0> ;
  assign m_axi_awsize[4] = \<const0> ;
  assign m_axi_awsize[3] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wdata[63:32] = \^m_axi_wdata [63:32];
  assign m_axi_wdata[31:0] = \^m_axi_wdata [63:32];
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast[1] = \<const0> ;
  assign m_axi_wlast[0] = \<const0> ;
  assign m_axi_wstrb[7:4] = \^m_axi_wstrb [7:4];
  assign m_axi_wstrb[3:0] = \^m_axi_wstrb [7:4];
  assign m_axi_wuser[1] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[3:2] = \^s_axi_bresp [3:2];
  assign s_axi_bresp[1:0] = \^s_axi_bresp [3:2];
  assign s_axi_buser[1] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rdata[63:32] = \^s_axi_rdata [31:0];
  assign s_axi_rdata[31:0] = \^s_axi_rdata [31:0];
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast[1] = \<const0> ;
  assign s_axi_rlast[0] = \<const0> ;
  assign s_axi_rresp[3:2] = \^s_axi_rresp [1:0];
  assign s_axi_rresp[1:0] = \^s_axi_rresp [1:0];
  assign s_axi_ruser[1] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_crossbar_sasd \gen_sasd.crossbar_sasd_0 
       (.Q({\^m_axi_arprot ,\^m_axi_awaddr ,\^m_axi_araddr }),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(\^m_axi_wdata ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(\^m_axi_wstrb ),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_axi_rdata[31] ({\^s_axi_rdata ,\^s_axi_rresp }),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_crossbar_sasd
   (s_axi_awready,
    Q,
    \s_axi_rdata[31] ,
    m_axi_arvalid,
    m_axi_bready,
    s_axi_bresp,
    m_axi_wvalid,
    m_axi_wdata,
    m_axi_wstrb,
    s_axi_arready,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_rvalid,
    m_axi_awvalid,
    m_axi_rready,
    s_axi_rready,
    s_axi_arvalid,
    aresetn,
    aclk,
    m_axi_arready,
    m_axi_rvalid,
    m_axi_bvalid,
    s_axi_bready,
    m_axi_rresp,
    m_axi_rdata,
    m_axi_bresp,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arprot,
    s_axi_awprot,
    s_axi_awvalid,
    m_axi_awready);
  output [1:0]s_axi_awready;
  output [42:0]Q;
  output [33:0]\s_axi_rdata[31] ;
  output [1:0]m_axi_arvalid;
  output [1:0]m_axi_bready;
  output [1:0]s_axi_bresp;
  output [1:0]m_axi_wvalid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [1:0]s_axi_arready;
  output [1:0]s_axi_wready;
  output [1:0]s_axi_bvalid;
  output [1:0]s_axi_rvalid;
  output [1:0]m_axi_awvalid;
  output [1:0]m_axi_rready;
  input [1:0]s_axi_rready;
  input [1:0]s_axi_arvalid;
  input aresetn;
  input aclk;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_rvalid;
  input [1:0]m_axi_bvalid;
  input [1:0]s_axi_bready;
  input [3:0]m_axi_rresp;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_wready;
  input [1:0]s_axi_wvalid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input [79:0]s_axi_araddr;
  input [79:0]s_axi_awaddr;
  input [5:0]s_axi_arprot;
  input [5:0]s_axi_awprot;
  input [1:0]s_axi_awvalid;
  input [1:0]m_axi_awready;

  wire [42:0]Q;
  wire aa_awready;
  wire aa_bvalid;
  wire aa_rready;
  wire aa_rvalid;
  wire aa_wready;
  wire aa_wvalid;
  wire aclk;
  wire addr_arbiter_inst_n_1;
  wire addr_arbiter_inst_n_118;
  wire addr_arbiter_inst_n_13;
  wire addr_arbiter_inst_n_2;
  wire addr_arbiter_inst_n_3;
  wire addr_arbiter_inst_n_4;
  wire addr_arbiter_inst_n_5;
  wire addr_arbiter_inst_n_6;
  wire addr_arbiter_inst_n_7;
  wire aresetn;
  wire aresetn_d;
  wire [1:0]m_atarget_enc;
  wire [2:0]m_atarget_hot;
  wire [2:0]m_atarget_hot0;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_arvalid;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire [1:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [1:0]m_ready_d;
  wire [2:0]m_ready_d0;
  wire [1:0]m_ready_d0_0;
  wire [2:0]m_ready_d_1;
  wire mi_arready_mux;
  wire mi_awready_mux;
  wire [2:2]mi_bvalid;
  wire [2:2]mi_wready;
  wire [1:0]p_0_out__0;
  wire p_2_in;
  wire reg_slice_r_n_2;
  wire reg_slice_r_n_3;
  wire reg_slice_r_n_38;
  wire reset;
  wire [79:0]s_axi_araddr;
  wire [5:0]s_axi_arprot;
  wire [1:0]s_axi_arready;
  wire [1:0]s_axi_arvalid;
  wire [79:0]s_axi_awaddr;
  wire [5:0]s_axi_awprot;
  wire [1:0]s_axi_awready;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [1:0]s_axi_bvalid;
  wire [33:0]\s_axi_rdata[31] ;
  wire [1:0]s_axi_rready;
  wire [1:0]s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [1:0]s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;
  wire sr_rvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_addr_arbiter_sasd addr_arbiter_inst
       (.D(addr_arbiter_inst_n_1),
        .E(addr_arbiter_inst_n_3),
        .Q(m_ready_d),
        .SR(reset),
        .aa_awready(aa_awready),
        .aa_bvalid(aa_bvalid),
        .aa_wready(aa_wready),
        .aa_wvalid(aa_wvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_axilite.s_axi_bvalid_i_reg (addr_arbiter_inst_n_5),
        .\gen_axilite.s_axi_bvalid_i_reg_0 (addr_arbiter_inst_n_118),
        .\gen_axilite.s_axi_rvalid_i_reg (addr_arbiter_inst_n_2),
        .m_atarget_enc(m_atarget_enc),
        .\m_atarget_enc_reg[0] (addr_arbiter_inst_n_13),
        .\m_atarget_hot_reg[2] (m_atarget_hot0),
        .\m_atarget_hot_reg[2]_0 (m_atarget_hot),
        .\m_axi_arprot[2] (Q),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_payload_i_reg[0] (addr_arbiter_inst_n_4),
        .\m_payload_i_reg[0]_0 (reg_slice_r_n_3),
        .\m_payload_i_reg[0]_1 (reg_slice_r_n_38),
        .\m_ready_d_reg[0] (addr_arbiter_inst_n_7),
        .\m_ready_d_reg[1] (addr_arbiter_inst_n_6),
        .\m_ready_d_reg[1]_0 (m_ready_d0_0),
        .\m_ready_d_reg[2] (m_ready_d0),
        .\m_ready_d_reg[2]_0 (m_ready_d_1),
        .mi_arready_mux(mi_arready_mux),
        .mi_awready_mux(mi_awready_mux),
        .mi_bvalid(mi_bvalid),
        .mi_wready(mi_wready),
        .p_0_out__0(p_0_out__0),
        .p_2_in(p_2_in),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sr_rvalid(sr_rvalid));
  FDRE #(
    .INIT(1'b0)) 
    aresetn_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_d),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_decerr_slave \gen_decerr.decerr_slave_inst 
       (.Q(m_atarget_hot[2]),
        .SR(reset),
        .aa_bvalid(aa_bvalid),
        .aa_rready(aa_rready),
        .aa_rvalid(aa_rvalid),
        .aa_wready(aa_wready),
        .aa_wvalid(aa_wvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.grant_rnw_reg (addr_arbiter_inst_n_2),
        .\gen_arbiter.grant_rnw_reg_0 (addr_arbiter_inst_n_4),
        .\gen_arbiter.grant_rnw_reg_1 (addr_arbiter_inst_n_5),
        .\gen_arbiter.grant_rnw_reg_2 (addr_arbiter_inst_n_6),
        .\gen_arbiter.grant_rnw_reg_3 (addr_arbiter_inst_n_7),
        .\gen_axilite.s_axi_bvalid_i_reg_0 (addr_arbiter_inst_n_118),
        .m_atarget_enc(m_atarget_enc),
        .m_axi_arready(m_axi_arready),
        .m_axi_awready(m_axi_awready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .mi_arready_mux(mi_arready_mux),
        .mi_awready_mux(mi_awready_mux),
        .mi_bvalid(mi_bvalid),
        .mi_wready(mi_wready));
  FDRE \m_atarget_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_inst_n_13),
        .Q(m_atarget_enc[0]),
        .R(1'b0));
  FDRE \m_atarget_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_inst_n_1),
        .Q(m_atarget_enc[1]),
        .R(reset));
  FDRE \m_atarget_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_atarget_hot0[0]),
        .Q(m_atarget_hot[0]),
        .R(reset));
  FDRE \m_atarget_hot_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_atarget_hot0[1]),
        .Q(m_atarget_hot[1]),
        .R(reset));
  FDRE \m_atarget_hot_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_atarget_hot0[2]),
        .Q(m_atarget_hot[2]),
        .R(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice reg_slice_r
       (.E(addr_arbiter_inst_n_3),
        .Q({\s_axi_rdata[31] ,reg_slice_r_n_38}),
        .SR(reg_slice_r_n_2),
        .aa_rready(aa_rready),
        .aa_rvalid(aa_rvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .aresetn_d_reg(reset),
        .m_atarget_enc(m_atarget_enc),
        .\m_atarget_hot_reg[1] (m_atarget_hot[1:0]),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .\m_ready_d_reg[0] (reg_slice_r_n_3),
        .\m_ready_d_reg[1] (m_ready_d),
        .mi_arready_mux(mi_arready_mux),
        .p_2_in(p_2_in),
        .sr_rvalid(sr_rvalid));
  LUT4 #(
    .INIT(16'h7632)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_atarget_enc[1]),
        .I1(m_atarget_enc[0]),
        .I2(m_axi_bresp[0]),
        .I3(m_axi_bresp[2]),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'h7632)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(m_atarget_enc[1]),
        .I1(m_atarget_enc[0]),
        .I2(m_axi_bresp[1]),
        .I3(m_axi_bresp[3]),
        .O(s_axi_bresp[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_splitter__parameterized0 splitter_ar
       (.D(m_ready_d0_0),
        .Q(m_ready_d),
        .SR(reg_slice_r_n_2),
        .aclk(aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_splitter splitter_aw
       (.D(m_ready_d0),
        .Q(m_ready_d_1),
        .aa_awready(aa_awready),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .mi_awready_mux(mi_awready_mux),
        .p_0_out__0(p_0_out__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_decerr_slave
   (mi_bvalid,
    mi_wready,
    mi_arready_mux,
    aa_rvalid,
    mi_awready_mux,
    aa_wready,
    aa_bvalid,
    SR,
    \gen_axilite.s_axi_bvalid_i_reg_0 ,
    aclk,
    \gen_arbiter.grant_rnw_reg ,
    m_axi_arready,
    m_atarget_enc,
    \gen_arbiter.grant_rnw_reg_0 ,
    m_axi_rvalid,
    \gen_arbiter.grant_rnw_reg_1 ,
    m_axi_awready,
    \gen_arbiter.grant_rnw_reg_2 ,
    m_axi_wready,
    \gen_arbiter.grant_rnw_reg_3 ,
    m_axi_bvalid,
    aa_rready,
    Q,
    aresetn_d,
    aa_wvalid);
  output [0:0]mi_bvalid;
  output [0:0]mi_wready;
  output mi_arready_mux;
  output aa_rvalid;
  output mi_awready_mux;
  output aa_wready;
  output aa_bvalid;
  input [0:0]SR;
  input \gen_axilite.s_axi_bvalid_i_reg_0 ;
  input aclk;
  input \gen_arbiter.grant_rnw_reg ;
  input [1:0]m_axi_arready;
  input [1:0]m_atarget_enc;
  input \gen_arbiter.grant_rnw_reg_0 ;
  input [1:0]m_axi_rvalid;
  input \gen_arbiter.grant_rnw_reg_1 ;
  input [1:0]m_axi_awready;
  input \gen_arbiter.grant_rnw_reg_2 ;
  input [1:0]m_axi_wready;
  input \gen_arbiter.grant_rnw_reg_3 ;
  input [1:0]m_axi_bvalid;
  input aa_rready;
  input [0:0]Q;
  input aresetn_d;
  input aa_wvalid;

  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_bvalid;
  wire aa_rready;
  wire aa_rvalid;
  wire aa_wready;
  wire aa_wvalid;
  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.grant_rnw_reg ;
  wire \gen_arbiter.grant_rnw_reg_0 ;
  wire \gen_arbiter.grant_rnw_reg_1 ;
  wire \gen_arbiter.grant_rnw_reg_2 ;
  wire \gen_arbiter.grant_rnw_reg_3 ;
  wire \gen_axilite.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axilite.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axilite.s_axi_bvalid_i_reg_0 ;
  wire \gen_axilite.s_axi_rvalid_i_i_1_n_0 ;
  wire [1:0]m_atarget_enc;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_bvalid;
  wire [1:0]m_axi_rvalid;
  wire [1:0]m_axi_wready;
  wire [2:2]mi_arready;
  wire mi_arready_mux;
  wire mi_awready_mux;
  wire [0:0]mi_bvalid;
  wire [2:2]mi_rvalid;
  wire [0:0]mi_wready;

  LUT5 #(
    .INIT(32'h88882AAA)) 
    \gen_axilite.s_axi_arready_i_i_1 
       (.I0(aresetn_d),
        .I1(mi_arready),
        .I2(Q),
        .I3(\gen_arbiter.grant_rnw_reg ),
        .I4(mi_rvalid),
        .O(\gen_axilite.s_axi_arready_i_i_1_n_0 ));
  FDRE \gen_axilite.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.s_axi_arready_i_i_1_n_0 ),
        .Q(mi_arready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \gen_axilite.s_axi_awready_i_i_1 
       (.I0(mi_bvalid),
        .I1(\gen_arbiter.grant_rnw_reg_1 ),
        .I2(aa_wvalid),
        .I3(Q),
        .I4(mi_wready),
        .O(\gen_axilite.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_axilite.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.s_axi_awready_i_i_1_n_0 ),
        .Q(mi_wready),
        .R(SR));
  FDRE \gen_axilite.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.s_axi_bvalid_i_reg_0 ),
        .Q(mi_bvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'h74CC44CC)) 
    \gen_axilite.s_axi_rvalid_i_i_1 
       (.I0(aa_rready),
        .I1(mi_rvalid),
        .I2(\gen_arbiter.grant_rnw_reg ),
        .I3(Q),
        .I4(mi_arready),
        .O(\gen_axilite.s_axi_rvalid_i_i_1_n_0 ));
  FDRE \gen_axilite.s_axi_rvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.s_axi_rvalid_i_i_1_n_0 ),
        .Q(mi_rvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h00CC88C0000088C0)) 
    \m_ready_d[1]_i_3 
       (.I0(mi_arready),
        .I1(\gen_arbiter.grant_rnw_reg ),
        .I2(m_axi_arready[0]),
        .I3(m_atarget_enc[1]),
        .I4(m_atarget_enc[0]),
        .I5(m_axi_arready[1]),
        .O(mi_arready_mux));
  LUT6 #(
    .INIT(64'h00CC88C0000088C0)) 
    \m_ready_d[2]_i_3 
       (.I0(mi_wready),
        .I1(\gen_arbiter.grant_rnw_reg_1 ),
        .I2(m_axi_awready[0]),
        .I3(m_atarget_enc[1]),
        .I4(m_atarget_enc[0]),
        .I5(m_axi_awready[1]),
        .O(mi_awready_mux));
  LUT6 #(
    .INIT(64'h00CC88C0000088C0)) 
    m_valid_i_i_2
       (.I0(mi_rvalid),
        .I1(\gen_arbiter.grant_rnw_reg_0 ),
        .I2(m_axi_rvalid[0]),
        .I3(m_atarget_enc[1]),
        .I4(m_atarget_enc[0]),
        .I5(m_axi_rvalid[1]),
        .O(aa_rvalid));
  LUT6 #(
    .INIT(64'h00CC88C0000088C0)) 
    \s_axi_bvalid[1]_INST_0_i_1 
       (.I0(mi_bvalid),
        .I1(\gen_arbiter.grant_rnw_reg_3 ),
        .I2(m_axi_bvalid[0]),
        .I3(m_atarget_enc[1]),
        .I4(m_atarget_enc[0]),
        .I5(m_axi_bvalid[1]),
        .O(aa_bvalid));
  LUT6 #(
    .INIT(64'h00CC88C0000088C0)) 
    \s_axi_wready[1]_INST_0_i_1 
       (.I0(mi_wready),
        .I1(\gen_arbiter.grant_rnw_reg_2 ),
        .I2(m_axi_wready[0]),
        .I3(m_atarget_enc[1]),
        .I4(m_atarget_enc[0]),
        .I5(m_axi_wready[1]),
        .O(aa_wready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_splitter
   (aa_awready,
    Q,
    aresetn_d,
    p_0_out__0,
    mi_awready_mux,
    D,
    aclk);
  output aa_awready;
  output [2:0]Q;
  input aresetn_d;
  input [1:0]p_0_out__0;
  input mi_awready_mux;
  input [2:0]D;
  input aclk;

  wire [2:0]D;
  wire [2:0]Q;
  wire aa_awready;
  wire aclk;
  wire aresetn_d;
  wire \m_ready_d[2]_i_1_n_0 ;
  wire mi_awready_mux;
  wire [1:0]p_0_out__0;

  LUT6 #(
    .INIT(64'hEEE0EEE0EEE00000)) 
    \gen_arbiter.m_grant_hot_i[1]_i_3 
       (.I0(p_0_out__0[1]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(mi_awready_mux),
        .I4(Q[0]),
        .I5(p_0_out__0[0]),
        .O(aa_awready));
  LUT2 #(
    .INIT(4'hB)) 
    \m_ready_d[2]_i_1 
       (.I0(aa_awready),
        .I1(aresetn_d),
        .O(\m_ready_d[2]_i_1_n_0 ));
  FDRE \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(\m_ready_d[2]_i_1_n_0 ));
  FDRE \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(\m_ready_d[2]_i_1_n_0 ));
  FDRE \m_ready_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(\m_ready_d[2]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_12_splitter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_splitter__parameterized0
   (Q,
    SR,
    D,
    aclk);
  output [1:0]Q;
  input [0:0]SR;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;

  FDRE \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_11_axic_register_slice
   (sr_rvalid,
    aa_rready,
    SR,
    \m_ready_d_reg[0] ,
    Q,
    m_axi_rready,
    aclk,
    aresetn_d,
    p_2_in,
    \m_ready_d_reg[1] ,
    mi_arready_mux,
    aa_rvalid,
    E,
    m_atarget_enc,
    m_axi_rresp,
    m_axi_rdata,
    \m_atarget_hot_reg[1] ,
    aresetn_d_reg);
  output sr_rvalid;
  output aa_rready;
  output [0:0]SR;
  output \m_ready_d_reg[0] ;
  output [34:0]Q;
  output [1:0]m_axi_rready;
  input aclk;
  input aresetn_d;
  input p_2_in;
  input [1:0]\m_ready_d_reg[1] ;
  input mi_arready_mux;
  input aa_rvalid;
  input [0:0]E;
  input [1:0]m_atarget_enc;
  input [3:0]m_axi_rresp;
  input [63:0]m_axi_rdata;
  input [1:0]\m_atarget_hot_reg[1] ;
  input [0:0]aresetn_d_reg;

  wire [0:0]E;
  wire [34:0]Q;
  wire [0:0]SR;
  wire [34:0]aa_rmesg;
  wire aa_rready;
  wire aa_rvalid;
  wire aclk;
  wire aresetn_d;
  wire [0:0]aresetn_d_reg;
  wire \aresetn_d_reg_n_0_[0] ;
  wire \aresetn_d_reg_n_0_[1] ;
  wire [1:0]m_atarget_enc;
  wire [1:0]\m_atarget_hot_reg[1] ;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire \m_ready_d_reg[0] ;
  wire [1:0]\m_ready_d_reg[1] ;
  wire m_valid_i_i_1_n_0;
  wire mi_arready_mux;
  wire p_2_in;
  wire s_ready_i_i_1_n_0;
  wire [34:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire sr_rvalid;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(aresetn_d_reg));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg_n_0_[0] ),
        .Q(\aresetn_d_reg_n_0_[1] ),
        .R(aresetn_d_reg));
  LUT6 #(
    .INIT(64'hFF80FF80FF800000)) 
    \gen_arbiter.m_grant_hot_i[1]_i_2 
       (.I0(Q[0]),
        .I1(p_2_in),
        .I2(sr_rvalid),
        .I3(\m_ready_d_reg[1] [0]),
        .I4(mi_arready_mux),
        .I5(\m_ready_d_reg[1] [1]),
        .O(\m_ready_d_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_rready[0]_INST_0 
       (.I0(\m_atarget_hot_reg[1] [0]),
        .I1(aa_rready),
        .O(m_axi_rready[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_rready[1]_INST_0 
       (.I0(\m_atarget_hot_reg[1] [1]),
        .I1(aa_rready),
        .O(m_axi_rready[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h77F0)) 
    \m_payload_i[0]_i_1 
       (.I0(m_atarget_enc[0]),
        .I1(m_atarget_enc[1]),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .I3(aa_rready),
        .O(skid_buffer[0]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[10]_i_1 
       (.I0(m_axi_rdata[39]),
        .I1(m_axi_rdata[7]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[10] ),
        .I5(aa_rready),
        .O(skid_buffer[10]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[11]_i_1 
       (.I0(m_axi_rdata[40]),
        .I1(m_axi_rdata[8]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[11] ),
        .I5(aa_rready),
        .O(skid_buffer[11]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[12]_i_1 
       (.I0(m_axi_rdata[41]),
        .I1(m_axi_rdata[9]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[12] ),
        .I5(aa_rready),
        .O(skid_buffer[12]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[13]_i_1 
       (.I0(m_axi_rdata[42]),
        .I1(m_axi_rdata[10]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[13] ),
        .I5(aa_rready),
        .O(skid_buffer[13]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[14]_i_1 
       (.I0(m_axi_rdata[43]),
        .I1(m_axi_rdata[11]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[14] ),
        .I5(aa_rready),
        .O(skid_buffer[14]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[15]_i_1 
       (.I0(m_axi_rdata[44]),
        .I1(m_axi_rdata[12]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[15] ),
        .I5(aa_rready),
        .O(skid_buffer[15]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[16]_i_1 
       (.I0(m_axi_rdata[45]),
        .I1(m_axi_rdata[13]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[16] ),
        .I5(aa_rready),
        .O(skid_buffer[16]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[17]_i_1 
       (.I0(m_axi_rdata[46]),
        .I1(m_axi_rdata[14]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[17] ),
        .I5(aa_rready),
        .O(skid_buffer[17]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[18]_i_1 
       (.I0(m_axi_rdata[47]),
        .I1(m_axi_rdata[15]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[18] ),
        .I5(aa_rready),
        .O(skid_buffer[18]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[19]_i_1 
       (.I0(m_axi_rdata[48]),
        .I1(m_axi_rdata[16]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[19] ),
        .I5(aa_rready),
        .O(skid_buffer[19]));
  LUT6 #(
    .INIT(64'h76327632FFFF0000)) 
    \m_payload_i[1]_i_1 
       (.I0(m_atarget_enc[1]),
        .I1(m_atarget_enc[0]),
        .I2(m_axi_rresp[0]),
        .I3(m_axi_rresp[2]),
        .I4(\skid_buffer_reg_n_0_[1] ),
        .I5(aa_rready),
        .O(skid_buffer[1]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[20]_i_1 
       (.I0(m_axi_rdata[49]),
        .I1(m_axi_rdata[17]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[20] ),
        .I5(aa_rready),
        .O(skid_buffer[20]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[21]_i_1 
       (.I0(m_axi_rdata[50]),
        .I1(m_axi_rdata[18]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[21] ),
        .I5(aa_rready),
        .O(skid_buffer[21]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[22]_i_1 
       (.I0(m_axi_rdata[51]),
        .I1(m_axi_rdata[19]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[22] ),
        .I5(aa_rready),
        .O(skid_buffer[22]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[23]_i_1 
       (.I0(m_axi_rdata[52]),
        .I1(m_axi_rdata[20]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[23] ),
        .I5(aa_rready),
        .O(skid_buffer[23]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[24]_i_1 
       (.I0(m_axi_rdata[53]),
        .I1(m_axi_rdata[21]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[24] ),
        .I5(aa_rready),
        .O(skid_buffer[24]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[25]_i_1 
       (.I0(m_axi_rdata[54]),
        .I1(m_axi_rdata[22]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[25] ),
        .I5(aa_rready),
        .O(skid_buffer[25]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[26]_i_1 
       (.I0(m_axi_rdata[55]),
        .I1(m_axi_rdata[23]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[26] ),
        .I5(aa_rready),
        .O(skid_buffer[26]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[27]_i_1 
       (.I0(m_axi_rdata[56]),
        .I1(m_axi_rdata[24]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[27] ),
        .I5(aa_rready),
        .O(skid_buffer[27]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[28]_i_1 
       (.I0(m_axi_rdata[57]),
        .I1(m_axi_rdata[25]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[28] ),
        .I5(aa_rready),
        .O(skid_buffer[28]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[29]_i_1 
       (.I0(m_axi_rdata[58]),
        .I1(m_axi_rdata[26]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[29] ),
        .I5(aa_rready),
        .O(skid_buffer[29]));
  LUT6 #(
    .INIT(64'h76327632FFFF0000)) 
    \m_payload_i[2]_i_1 
       (.I0(m_atarget_enc[1]),
        .I1(m_atarget_enc[0]),
        .I2(m_axi_rresp[1]),
        .I3(m_axi_rresp[3]),
        .I4(\skid_buffer_reg_n_0_[2] ),
        .I5(aa_rready),
        .O(skid_buffer[2]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[30]_i_1 
       (.I0(m_axi_rdata[59]),
        .I1(m_axi_rdata[27]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[30] ),
        .I5(aa_rready),
        .O(skid_buffer[30]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[31]_i_1 
       (.I0(m_axi_rdata[60]),
        .I1(m_axi_rdata[28]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[31] ),
        .I5(aa_rready),
        .O(skid_buffer[31]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[32]_i_1 
       (.I0(m_axi_rdata[61]),
        .I1(m_axi_rdata[29]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[32] ),
        .I5(aa_rready),
        .O(skid_buffer[32]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[33]_i_1 
       (.I0(m_axi_rdata[62]),
        .I1(m_axi_rdata[30]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[33] ),
        .I5(aa_rready),
        .O(skid_buffer[33]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[34]_i_2 
       (.I0(m_axi_rdata[63]),
        .I1(m_axi_rdata[31]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[34] ),
        .I5(aa_rready),
        .O(skid_buffer[34]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[3]_i_1 
       (.I0(m_axi_rdata[32]),
        .I1(m_axi_rdata[0]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[3] ),
        .I5(aa_rready),
        .O(skid_buffer[3]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[4]_i_1 
       (.I0(m_axi_rdata[33]),
        .I1(m_axi_rdata[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[4] ),
        .I5(aa_rready),
        .O(skid_buffer[4]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[5]_i_1 
       (.I0(m_axi_rdata[34]),
        .I1(m_axi_rdata[2]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[5] ),
        .I5(aa_rready),
        .O(skid_buffer[5]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[6]_i_1 
       (.I0(m_axi_rdata[35]),
        .I1(m_axi_rdata[3]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[6] ),
        .I5(aa_rready),
        .O(skid_buffer[6]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[7]_i_1 
       (.I0(m_axi_rdata[36]),
        .I1(m_axi_rdata[4]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[7] ),
        .I5(aa_rready),
        .O(skid_buffer[7]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[8]_i_1 
       (.I0(m_axi_rdata[37]),
        .I1(m_axi_rdata[5]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[8] ),
        .I5(aa_rready),
        .O(skid_buffer[8]));
  LUT6 #(
    .INIT(64'h00AC00ACFFFF0000)) 
    \m_payload_i[9]_i_1 
       (.I0(m_axi_rdata[38]),
        .I1(m_axi_rdata[6]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(\skid_buffer_reg_n_0_[9] ),
        .I5(aa_rready),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \m_ready_d[1]_i_1__0 
       (.I0(\m_ready_d_reg[0] ),
        .I1(aresetn_d),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    m_valid_i_i_1
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .I1(aa_rvalid),
        .I2(E),
        .I3(aa_rready),
        .O(m_valid_i_i_1_n_0));
  FDRE m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(sr_rvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(aa_rready),
        .I2(aa_rvalid),
        .I3(E),
        .O(s_ready_i_i_1_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(aa_rready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \skid_buffer[0]_i_1 
       (.I0(m_atarget_enc[0]),
        .I1(m_atarget_enc[1]),
        .O(aa_rmesg[0]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[10]_i_1 
       (.I0(m_axi_rdata[39]),
        .I1(m_axi_rdata[7]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[10]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[11]_i_1 
       (.I0(m_axi_rdata[40]),
        .I1(m_axi_rdata[8]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[11]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[12]_i_1 
       (.I0(m_axi_rdata[41]),
        .I1(m_axi_rdata[9]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[12]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[13]_i_1 
       (.I0(m_axi_rdata[42]),
        .I1(m_axi_rdata[10]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[13]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[14]_i_1 
       (.I0(m_axi_rdata[43]),
        .I1(m_axi_rdata[11]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[14]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[15]_i_1 
       (.I0(m_axi_rdata[44]),
        .I1(m_axi_rdata[12]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[15]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[16]_i_1 
       (.I0(m_axi_rdata[45]),
        .I1(m_axi_rdata[13]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[16]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[17]_i_1 
       (.I0(m_axi_rdata[46]),
        .I1(m_axi_rdata[14]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[17]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[18]_i_1 
       (.I0(m_axi_rdata[47]),
        .I1(m_axi_rdata[15]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[18]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[19]_i_1 
       (.I0(m_axi_rdata[48]),
        .I1(m_axi_rdata[16]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[19]));
  LUT4 #(
    .INIT(16'h7632)) 
    \skid_buffer[1]_i_1 
       (.I0(m_atarget_enc[1]),
        .I1(m_atarget_enc[0]),
        .I2(m_axi_rresp[0]),
        .I3(m_axi_rresp[2]),
        .O(aa_rmesg[1]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[20]_i_1 
       (.I0(m_axi_rdata[49]),
        .I1(m_axi_rdata[17]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[20]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[21]_i_1 
       (.I0(m_axi_rdata[50]),
        .I1(m_axi_rdata[18]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[21]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[22]_i_1 
       (.I0(m_axi_rdata[51]),
        .I1(m_axi_rdata[19]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[22]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[23]_i_1 
       (.I0(m_axi_rdata[52]),
        .I1(m_axi_rdata[20]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[23]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[24]_i_1 
       (.I0(m_axi_rdata[53]),
        .I1(m_axi_rdata[21]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[24]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[25]_i_1 
       (.I0(m_axi_rdata[54]),
        .I1(m_axi_rdata[22]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[25]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[26]_i_1 
       (.I0(m_axi_rdata[55]),
        .I1(m_axi_rdata[23]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[26]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[27]_i_1 
       (.I0(m_axi_rdata[56]),
        .I1(m_axi_rdata[24]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[27]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[28]_i_1 
       (.I0(m_axi_rdata[57]),
        .I1(m_axi_rdata[25]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[28]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[29]_i_1 
       (.I0(m_axi_rdata[58]),
        .I1(m_axi_rdata[26]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[29]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7632)) 
    \skid_buffer[2]_i_1 
       (.I0(m_atarget_enc[1]),
        .I1(m_atarget_enc[0]),
        .I2(m_axi_rresp[1]),
        .I3(m_axi_rresp[3]),
        .O(aa_rmesg[2]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[30]_i_1 
       (.I0(m_axi_rdata[59]),
        .I1(m_axi_rdata[27]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[30]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[31]_i_1 
       (.I0(m_axi_rdata[60]),
        .I1(m_axi_rdata[28]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[31]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[32]_i_1 
       (.I0(m_axi_rdata[61]),
        .I1(m_axi_rdata[29]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[32]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[33]_i_1 
       (.I0(m_axi_rdata[62]),
        .I1(m_axi_rdata[30]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[33]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[34]_i_1 
       (.I0(m_axi_rdata[63]),
        .I1(m_axi_rdata[31]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[34]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[3]_i_1 
       (.I0(m_axi_rdata[32]),
        .I1(m_axi_rdata[0]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[3]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[4]_i_1 
       (.I0(m_axi_rdata[33]),
        .I1(m_axi_rdata[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[4]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[5]_i_1 
       (.I0(m_axi_rdata[34]),
        .I1(m_axi_rdata[2]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[5]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[6]_i_1 
       (.I0(m_axi_rdata[35]),
        .I1(m_axi_rdata[3]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[6]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[7]_i_1 
       (.I0(m_axi_rdata[36]),
        .I1(m_axi_rdata[4]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[7]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[8]_i_1 
       (.I0(m_axi_rdata[37]),
        .I1(m_axi_rdata[5]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[8]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \skid_buffer[9]_i_1 
       (.I0(m_axi_rdata[38]),
        .I1(m_axi_rdata[6]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(aa_rmesg[9]));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[32]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[33]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[34]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(aa_rready),
        .D(aa_rmesg[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xbar_0,axi_crossbar_v2_1_12_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_12_axi_crossbar,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [39:0] [39:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [39:0] [79:40]" *) input [79:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3]" *) input [5:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1]" *) input [1:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1]" *) output [1:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [31:0] [63:32]" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [3:0] [7:4]" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1]" *) input [1:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1]" *) output [1:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2]" *) output [3:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1]" *) output [1:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1]" *) input [1:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [39:0] [39:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [39:0] [79:40]" *) input [79:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3]" *) input [5:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1]" *) input [1:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1]" *) output [1:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [31:0] [63:32]" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2]" *) output [3:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1]" *) output [1:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1]" *) input [1:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [39:0] [39:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [39:0] [79:40]" *) output [79:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3]" *) output [5:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1]" *) output [1:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1]" *) input [1:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32]" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4]" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1]" *) output [1:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1]" *) input [1:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2]" *) input [3:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1]" *) input [1:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1]" *) output [1:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [39:0] [39:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [39:0] [79:40]" *) output [79:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3]" *) output [5:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1]" *) output [1:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1]" *) input [1:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32]" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2]" *) input [3:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1]" *) input [1:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1]" *) output [1:0]m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [79:0]m_axi_araddr;
  wire [5:0]m_axi_arprot;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_arvalid;
  wire [79:0]m_axi_awaddr;
  wire [5:0]m_axi_awprot;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire [1:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [79:0]s_axi_araddr;
  wire [5:0]s_axi_arprot;
  wire [1:0]s_axi_arready;
  wire [1:0]s_axi_arvalid;
  wire [79:0]s_axi_awaddr;
  wire [5:0]s_axi_awprot;
  wire [1:0]s_axi_awready;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [3:0]s_axi_bresp;
  wire [1:0]s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire [1:0]s_axi_rready;
  wire [3:0]s_axi_rresp;
  wire [1:0]s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [1:0]s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;
  wire [3:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "40" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CONNECTIVITY_MODE = "0" *) 
  (* C_DEBUG = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000000111100000000000000000000000000010000" *) 
  (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000101011111111111110000000000000000000000000000000000000000000000010100000000000000000000000000000" *) 
  (* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000001100000000000000000000000000000011" *) 
  (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_WRITE_CONNECTIVITY = "64'b0000000000000000000000000000001100000000000000000000000000000011" *) 
  (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_NUM_ADDR_RANGES = "1" *) 
  (* C_NUM_MASTER_SLOTS = "2" *) 
  (* C_NUM_SLAVE_SLOTS = "2" *) 
  (* C_R_REGISTER = "1" *) 
  (* C_S_AXI_ARB_PRIORITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_BASE_ID = "64'b0000000000000000000000000000000100000000000000000000000000000000" *) 
  (* C_S_AXI_READ_ACCEPTANCE = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_S_AXI_SINGLE_THREAD = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_S_AXI_THREAD_ID_WIDTH = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_WRITE_ACCEPTANCE = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ADDR_DECODE = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_FAMILY = "rtl" *) 
  (* P_INCR = "2'b01" *) 
  (* P_LEN = "8" *) 
  (* P_LOCK = "1" *) 
  (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_M_AXI_SUPPORTS_READ = "2'b11" *) 
  (* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) 
  (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
  (* P_RANGE_CHECK = "1" *) 
  (* P_S_AXI_BASE_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_HIGH_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_SUPPORTS_READ = "2'b11" *) 
  (* P_S_AXI_SUPPORTS_WRITE = "2'b11" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_12_axi_crossbar inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[3:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[7:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[1:0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[15:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[7:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[7:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[5:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[1:0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[3:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[7:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[1:0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[15:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[7:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[7:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[5:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[1:0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid({1'b0,1'b0}),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser({1'b0,1'b0}),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid({1'b0,1'b0}),
        .m_axi_rlast({1'b1,1'b1}),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser({1'b0,1'b0}),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[1:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED[1:0]),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[1:0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aruser({1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awuser({1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[1:0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[1:0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED[1:0]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0}),
        .s_axi_wlast({1'b1,1'b1}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser({1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
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
