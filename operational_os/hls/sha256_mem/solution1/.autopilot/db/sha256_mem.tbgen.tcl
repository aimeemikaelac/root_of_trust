set C_TypeInfoList {{ 
"sha256_mem" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"mem": [[], {"array": [ {"scalar": "unsigned char"}, [131072]]}] }, {"message_addr": [[], {"scalar": "unsigned int"}] }, {"num_blocks": [[], {"scalar": "unsigned int"}] }, {"digest_out": [[], {"array": [ {"scalar": "unsigned char"}, [32]]}] }, {"digest_valid": [[],{ "pointer":  {"scalar": "bool"}}] }],[],""]
}}
set moduleName sha256_mem
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sha256_mem}
set C_modelType { void 0 }
set C_modelArgList {
	{ mem int 8 regular {axi_master 0}  }
	{ message_addr int 32 regular {axi_slave 0}  }
	{ num_blocks int 32 regular {axi_slave 0}  }
	{ digest_out int 8 regular {array 32 { 0 0 } 0 1 }  }
	{ digest_valid int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "mem","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 131071,"step" : 1}]}]}]} , 
 	{ "Name" : "message_addr", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "message_addr","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "num_blocks", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num_blocks","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "digest_out", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "digest_out","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "digest_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "digest_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 77
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_mem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_mem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_mem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_mem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_BUSER sc_in sc_lv 1 signal 0 } 
	{ digest_out_address0 sc_out sc_lv 5 signal 3 } 
	{ digest_out_ce0 sc_out sc_logic 1 signal 3 } 
	{ digest_out_we0 sc_out sc_logic 1 signal 3 } 
	{ digest_out_d0 sc_out sc_lv 8 signal 3 } 
	{ digest_out_address1 sc_out sc_lv 5 signal 3 } 
	{ digest_out_ce1 sc_out sc_logic 1 signal 3 } 
	{ digest_out_we1 sc_out sc_logic 1 signal 3 } 
	{ digest_out_d1 sc_out sc_lv 8 signal 3 } 
	{ digest_valid sc_out sc_logic 1 signal 4 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"message_addr","role":"data","value":"16"}, {"name":"message_addr","role":"valid","value":"20","valid_bit":"0"},{"name":"num_blocks","role":"data","value":"24"}, {"name":"num_blocks","role":"valid","value":"28","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWID" }} , 
 	{ "name": "m_axi_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WID" }} , 
 	{ "name": "m_axi_mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARID" }} , 
 	{ "name": "m_axi_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RID" }} , 
 	{ "name": "m_axi_mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BID" }} , 
 	{ "name": "m_axi_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BUSER" }} , 
 	{ "name": "digest_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest_out", "role": "address0" }} , 
 	{ "name": "digest_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest_out", "role": "ce0" }} , 
 	{ "name": "digest_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest_out", "role": "we0" }} , 
 	{ "name": "digest_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest_out", "role": "d0" }} , 
 	{ "name": "digest_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest_out", "role": "address1" }} , 
 	{ "name": "digest_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest_out", "role": "ce1" }} , 
 	{ "name": "digest_out_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest_out", "role": "we1" }} , 
 	{ "name": "digest_out_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest_out", "role": "d1" }} , 
 	{ "name": "digest_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest_valid", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "15"],
		"CDFG" : "sha256_mem",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_311"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_final_fu_324"}],
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "message_addr", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "message_addr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_blocks", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "num_blocks_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "digest_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_final_fu_324", "Port" : "digest"}]},
			{"Name" : "digest_valid", "Type" : "None", "Direction" : "O"},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_update_fu_311", "Port" : "SHA256_sha256_k"},
					{"ID" : "15", "SubInstance" : "grp_final_fu_324", "Port" : "SHA256_sha256_k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_mem_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_mem_mem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_buffer_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipher_m_block_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipher_m_h_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_311", "Parent" : "0", "Child" : ["7", "11"],
		"CDFG" : "update",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_transform_1_fu_152"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_transform_fu_164"}],
		"Port" : [
			{"Name" : "SHA256_m_tot_len_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_m_len_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_m_block", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_transform_fu_164", "Port" : "message"}]},
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_transform_1_fu_152", "Port" : "SHA256_m_h"},
					{"ID" : "11", "SubInstance" : "grp_transform_fu_164", "Port" : "SHA256_m_h"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_transform_1_fu_152", "Port" : "message"}]},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_transform_1_fu_152", "Port" : "SHA256_sha256_k"},
					{"ID" : "11", "SubInstance" : "grp_transform_fu_164", "Port" : "SHA256_sha256_k"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_311.grp_transform_1_fu_152", "Parent" : "6", "Child" : ["8", "9", "10"],
		"CDFG" : "transform_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_nb", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_311.grp_transform_1_fu_152.SHA256_sha256_k_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_311.grp_transform_1_fu_152.w_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_311.grp_transform_1_fu_152.wv_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_311.grp_transform_fu_164", "Parent" : "6", "Child" : ["12", "13", "14"],
		"CDFG" : "transform",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_nb", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_311.grp_transform_fu_164.SHA256_sha256_k_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_311.grp_transform_fu_164.w_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_311.grp_transform_fu_164.wv_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_324", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "final",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_transform_fu_247"}],
		"Port" : [
			{"Name" : "SHA256_m_tot_len_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_m_len_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_m_block", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_transform_fu_247", "Port" : "message"}]},
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_transform_fu_247", "Port" : "SHA256_m_h"}]},
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_transform_fu_247", "Port" : "SHA256_sha256_k"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_324.grp_transform_fu_247", "Parent" : "15", "Child" : ["17", "18", "19"],
		"CDFG" : "transform",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_nb", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_324.grp_transform_fu_247.SHA256_sha256_k_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_324.grp_transform_fu_247.w_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_324.grp_transform_fu_247.wv_U", "Parent" : "16"}]}


set ArgLastReadFirstWriteLatency {
	sha256_mem {
		mem {Type I LastRead 13 FirstWrite -1}
		message_addr {Type I LastRead 3 FirstWrite -1}
		num_blocks {Type I LastRead 3 FirstWrite -1}
		digest_out {Type O LastRead -1 FirstWrite 9}
		digest_valid {Type O LastRead -1 FirstWrite 5}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
	update {
		SHA256_m_tot_len_read {Type I LastRead 0 FirstWrite -1}
		SHA256_m_len_read {Type I LastRead 0 FirstWrite -1}
		SHA256_m_block {Type IO LastRead 4 FirstWrite -1}
		SHA256_m_h {Type IO LastRead 6 FirstWrite 7}
		message {Type I LastRead 5 FirstWrite -1}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
	transform_1 {
		SHA256_m_h {Type IO LastRead 6 FirstWrite 7}
		message {Type I LastRead 4 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		block_nb {Type I LastRead 0 FirstWrite -1}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
	transform {
		SHA256_m_h {Type IO LastRead 6 FirstWrite 7}
		message {Type I LastRead 4 FirstWrite -1}
		block_nb {Type I LastRead 0 FirstWrite -1}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
	final {
		SHA256_m_tot_len_read {Type I LastRead 0 FirstWrite -1}
		SHA256_m_len_read {Type I LastRead 0 FirstWrite -1}
		SHA256_m_block {Type IO LastRead 4 FirstWrite -1}
		SHA256_m_h {Type IO LastRead 8 FirstWrite 7}
		digest {Type O LastRead -1 FirstWrite 9}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
	transform {
		SHA256_m_h {Type IO LastRead 6 FirstWrite 7}
		message {Type I LastRead 4 FirstWrite -1}
		block_nb {Type I LastRead 0 FirstWrite -1}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mem { m_axi {  { m_axi_mem_AWVALID VALID 1 1 }  { m_axi_mem_AWREADY READY 0 1 }  { m_axi_mem_AWADDR ADDR 1 32 }  { m_axi_mem_AWID ID 1 1 }  { m_axi_mem_AWLEN LEN 1 8 }  { m_axi_mem_AWSIZE SIZE 1 3 }  { m_axi_mem_AWBURST BURST 1 2 }  { m_axi_mem_AWLOCK LOCK 1 2 }  { m_axi_mem_AWCACHE CACHE 1 4 }  { m_axi_mem_AWPROT PROT 1 3 }  { m_axi_mem_AWQOS QOS 1 4 }  { m_axi_mem_AWREGION REGION 1 4 }  { m_axi_mem_AWUSER USER 1 1 }  { m_axi_mem_WVALID VALID 1 1 }  { m_axi_mem_WREADY READY 0 1 }  { m_axi_mem_WDATA DATA 1 32 }  { m_axi_mem_WSTRB STRB 1 4 }  { m_axi_mem_WLAST LAST 1 1 }  { m_axi_mem_WID ID 1 1 }  { m_axi_mem_WUSER USER 1 1 }  { m_axi_mem_ARVALID VALID 1 1 }  { m_axi_mem_ARREADY READY 0 1 }  { m_axi_mem_ARADDR ADDR 1 32 }  { m_axi_mem_ARID ID 1 1 }  { m_axi_mem_ARLEN LEN 1 8 }  { m_axi_mem_ARSIZE SIZE 1 3 }  { m_axi_mem_ARBURST BURST 1 2 }  { m_axi_mem_ARLOCK LOCK 1 2 }  { m_axi_mem_ARCACHE CACHE 1 4 }  { m_axi_mem_ARPROT PROT 1 3 }  { m_axi_mem_ARQOS QOS 1 4 }  { m_axi_mem_ARREGION REGION 1 4 }  { m_axi_mem_ARUSER USER 1 1 }  { m_axi_mem_RVALID VALID 0 1 }  { m_axi_mem_RREADY READY 1 1 }  { m_axi_mem_RDATA DATA 0 32 }  { m_axi_mem_RLAST LAST 0 1 }  { m_axi_mem_RID ID 0 1 }  { m_axi_mem_RUSER USER 0 1 }  { m_axi_mem_RRESP RESP 0 2 }  { m_axi_mem_BVALID VALID 0 1 }  { m_axi_mem_BREADY READY 1 1 }  { m_axi_mem_BRESP RESP 0 2 }  { m_axi_mem_BID ID 0 1 }  { m_axi_mem_BUSER USER 0 1 } } }
	digest_out { ap_memory {  { digest_out_address0 mem_address 1 5 }  { digest_out_ce0 mem_ce 1 1 }  { digest_out_we0 mem_we 1 1 }  { digest_out_d0 mem_din 1 8 }  { digest_out_address1 mem_address 1 5 }  { digest_out_ce1 mem_ce 1 1 }  { digest_out_we1 mem_we 1 1 }  { digest_out_d1 mem_din 1 8 } } }
	digest_valid { ap_none {  { digest_valid out_data 1 1 } } }
}

set busDeadlockParameterList { 
	{ mem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ mem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ mem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
