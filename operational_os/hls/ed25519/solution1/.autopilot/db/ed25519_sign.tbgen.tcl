set C_TypeInfoList {{ 
"ed25519_sign" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"signature": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }, {"microblaze_mem": [[], {"array": [ {"scalar": "unsigned char"}, [32768]]}] }, {"blocks_in": [[],"0"] }, {"public_key": [[], {"array": [ {"scalar": "unsigned char"}, [32]]}] }, {"private_key": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }],[],""], 
"0": [ "size_t", {"typedef": [[[], {"scalar": "long unsigned int"}],""]}]
}}
set moduleName ed25519_sign
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ed25519_sign}
set C_modelType { void 0 }
set C_modelArgList {
	{ signature int 8 regular {axi_slave 2}  }
	{ microblaze_mem int 8 regular {axi_master 0}  }
	{ blocks_in int 64 regular {axi_slave 0}  }
	{ public_key int 8 regular {axi_slave 0}  }
	{ private_key int 8 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "signature", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "signature","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}], "offset" : {"in":64, "out":64}, "offset_end" : {"in":127, "out":127}} , 
 	{ "Name" : "microblaze_mem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "microblaze_mem","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 32767,"step" : 1}]}]}]} , 
 	{ "Name" : "blocks_in", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "blocks_in","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":128}, "offset_end" : {"in":139}} , 
 	{ "Name" : "public_key", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "public_key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"in":160}, "offset_end" : {"in":191}} , 
 	{ "Name" : "private_key", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "private_key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}], "offset" : {"in":192}, "offset_end" : {"in":255}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_microblaze_mem_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_microblaze_mem_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_microblaze_mem_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_microblaze_mem_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_microblaze_mem_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_microblaze_mem_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_microblaze_mem_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_microblaze_mem_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_microblaze_mem_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_microblaze_mem_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_microblaze_mem_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_microblaze_mem_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_microblaze_mem_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_microblaze_mem_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_microblaze_mem_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_microblaze_mem_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_microblaze_mem_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_microblaze_mem_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_microblaze_mem_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_microblaze_mem_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_microblaze_mem_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_microblaze_mem_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_microblaze_mem_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_microblaze_mem_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_microblaze_mem_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_microblaze_mem_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_microblaze_mem_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_microblaze_mem_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_microblaze_mem_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_microblaze_mem_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_microblaze_mem_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_microblaze_mem_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_microblaze_mem_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_microblaze_mem_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"ed25519_sign","role":"start","value":"0","valid_bit":"0"},{"name":"ed25519_sign","role":"continue","value":"0","valid_bit":"4"},{"name":"ed25519_sign","role":"auto_start","value":"0","valid_bit":"7"},{"name":"signature","role":"data","value":"64"},{"name":"blocks_in","role":"data","value":"128"}, {"name":"blocks_in","role":"valid","value":"136","valid_bit":"0"},{"name":"public_key","role":"data","value":"160"},{"name":"private_key","role":"data","value":"192"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"ed25519_sign","role":"start","value":"0","valid_bit":"0"},{"name":"ed25519_sign","role":"done","value":"0","valid_bit":"1"},{"name":"ed25519_sign","role":"idle","value":"0","valid_bit":"2"},{"name":"ed25519_sign","role":"ready","value":"0","valid_bit":"3"},{"name":"ed25519_sign","role":"auto_start","value":"0","valid_bit":"7"},{"name":"signature","role":"data","value":"64"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_microblaze_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_microblaze_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_microblaze_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_microblaze_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWID" }} , 
 	{ "name": "m_axi_microblaze_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_microblaze_mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_microblaze_mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_microblaze_mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_microblaze_mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_microblaze_mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_microblaze_mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_microblaze_mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_microblaze_mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_microblaze_mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_microblaze_mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_microblaze_mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_microblaze_mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_microblaze_mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_microblaze_mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "WID" }} , 
 	{ "name": "m_axi_microblaze_mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_microblaze_mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_microblaze_mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_microblaze_mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_microblaze_mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARID" }} , 
 	{ "name": "m_axi_microblaze_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_microblaze_mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_microblaze_mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_microblaze_mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_microblaze_mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_microblaze_mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_microblaze_mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_microblaze_mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_microblaze_mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_microblaze_mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_microblaze_mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_microblaze_mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_microblaze_mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_microblaze_mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "RID" }} , 
 	{ "name": "m_axi_microblaze_mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_microblaze_mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_microblaze_mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_microblaze_mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_microblaze_mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_microblaze_mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "BID" }} , 
 	{ "name": "m_axi_microblaze_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "18", "24", "25", "53", "59", "69", "74", "84", "94", "97"],
		"CDFG" : "ed25519_sign",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_128_fu_510"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_128_fu_510"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_final_fu_511"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_final_fu_511"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_512"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_512"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_scalarmult_base_fu_579"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_invert_fu_646"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_fu_791"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sc_muladd_fu_962"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_2_fu_972"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_1_fu_984"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sc_reduce_fu_996"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sc_reduce_fu_996"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_tobytes_1_fu_1001"}],
		"Port" : [
			{"Name" : "signature", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_sc_muladd_fu_962", "Port" : "s"},
					{"ID" : "84", "SubInstance" : "grp_sha512_update_32_1_fu_984", "Port" : "in_r"},
					{"ID" : "97", "SubInstance" : "grp_fe_tobytes_1_fu_1001", "Port" : "s"}]},
			{"Name" : "microblaze_mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "microblaze_mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "microblaze_mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "blocks_in", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "blocks_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "public_key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_sha512_update_32_fu_791", "Port" : "in_r"}]},
			{"Name" : "private_key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_sc_muladd_fu_962", "Port" : "b"},
					{"ID" : "74", "SubInstance" : "grp_sha512_update_32_2_fu_972", "Port" : "in_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_sha512_update_32_fu_791", "Port" : "K"},
					{"ID" : "74", "SubInstance" : "grp_sha512_update_32_2_fu_972", "Port" : "K"},
					{"ID" : "8", "SubInstance" : "grp_sha512_update_128_fu_510", "Port" : "K"},
					{"ID" : "84", "SubInstance" : "grp_sha512_update_32_1_fu_984", "Port" : "K"},
					{"ID" : "18", "SubInstance" : "grp_sha512_final_fu_511", "Port" : "K"}]},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_ge_scalarmult_base_fu_579", "Port" : "base_yplusx"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_ge_scalarmult_base_fu_579", "Port" : "base_yminusx"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_ge_scalarmult_base_fu_579", "Port" : "base_xy2d"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ed25519_sign_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ed25519_sign_microblaze_mem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_buf_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hram_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_data_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510", "Parent" : "0", "Child" : ["9", "10", "14"],
		"CDFG" : "sha512_update_128",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_1_fu_342"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_354"}],
		"Port" : [
			{"Name" : "md_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sha512_compress_128_fu_354", "Port" : "md_state"},
					{"ID" : "10", "SubInstance" : "grp_sha512_compress_128_1_fu_342", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sha512_compress_128_1_fu_342", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sha512_compress_128_fu_354", "Port" : "K"},
					{"ID" : "10", "SubInstance" : "grp_sha512_compress_128_1_fu_342", "Port" : "K"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510.temp_buf_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510.grp_sha512_compress_128_1_fu_342", "Parent" : "8", "Child" : ["11", "12", "13"],
		"CDFG" : "sha512_compress_128_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_01_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510.grp_sha512_compress_128_1_fu_342.K_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510.grp_sha512_compress_128_1_fu_342.S_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510.grp_sha512_compress_128_1_fu_342.W_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510.grp_sha512_compress_128_fu_354", "Parent" : "8", "Child" : ["15", "16", "17"],
		"CDFG" : "sha512_compress_128",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510.grp_sha512_compress_128_fu_354.K_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510.grp_sha512_compress_128_fu_354.S_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_510.grp_sha512_compress_128_fu_354.W_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_511", "Parent" : "0", "Child" : ["19", "20"],
		"CDFG" : "sha512_final",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_468"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_468"}],
		"Port" : [
			{"Name" : "md_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_sha512_compress_128_fu_468", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_sha512_compress_128_fu_468", "Port" : "K"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_511.temp_buf_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_511.grp_sha512_compress_128_fu_468", "Parent" : "18", "Child" : ["21", "22", "23"],
		"CDFG" : "sha512_compress_128",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_511.grp_sha512_compress_128_fu_468.K_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_511.grp_sha512_compress_128_fu_468.S_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_511.grp_sha512_compress_128_fu_468.W_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_mul_fu_512", "Parent" : "0",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579", "Parent" : "0", "Child" : ["26", "27", "29", "34", "36", "37", "43"],
		"CDFG" : "ge_scalarmult_base",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p3_fu_1756"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p3_fu_1756"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p3_fu_1756"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1757"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1757"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1757"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1757"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p2_fu_1758"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p2_fu_1758"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p2_fu_1758"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_madd_fu_3257"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_madd_fu_3257"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_select_r_fu_3411"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_select_r_fu_3411"}],
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_select_r_fu_3411", "Port" : "base_yplusx"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_select_r_fu_3411", "Port" : "base_yminusx"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_select_r_fu_3411", "Port" : "base_xy2d"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.e_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_p1p1_to_p3_fu_1756", "Parent" : "25", "Child" : ["28"],
		"CDFG" : "ge_p1p1_to_p3",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_p1p1_to_p3_fu_1756.grp_fe_mul_fu_348", "Parent" : "27",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_p2_dbl_fu_1757", "Parent" : "25", "Child" : ["30", "31", "32", "33"],
		"CDFG" : "ge_p2_dbl",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_add_fu_402"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_add_fu_402"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sub_fu_495"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_545"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_545"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_545"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq2_fu_602"}],
		"Port" : [
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read142", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read243", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read344", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read445", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read546", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read647", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read748", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read849", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read950", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1051", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1152", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1253", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1354", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1455", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1556", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1657", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1758", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1859", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1960", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2040", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2141", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2242", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2343", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2444", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2545", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2646", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2747", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2848", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2949", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_p2_dbl_fu_1757.grp_fe_add_fu_402", "Parent" : "29",
		"CDFG" : "fe_add",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_p2_dbl_fu_1757.grp_fe_sub_fu_495", "Parent" : "29",
		"CDFG" : "fe_sub",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_p2_dbl_fu_1757.grp_fe_sq_fu_545", "Parent" : "29",
		"CDFG" : "fe_sq",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_p2_dbl_fu_1757.grp_fe_sq2_fu_602", "Parent" : "29",
		"CDFG" : "fe_sq2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_p1p1_to_p2_fu_1758", "Parent" : "25", "Child" : ["35"],
		"CDFG" : "ge_p1p1_to_p2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_p1p1_to_p2_fu_1758.grp_fe_mul_fu_348", "Parent" : "34",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_fe_copy_fu_3213", "Parent" : "25",
		"CDFG" : "fe_copy",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_madd_fu_3257", "Parent" : "25", "Child" : ["38", "39", "40", "41", "42"],
		"CDFG" : "ge_madd",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_add_fu_707"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_add_fu_707"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sub_fu_708"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sub_fu_708"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_867"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_1026"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_1309"}],
		"Port" : [
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read141", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read242", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read343", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read444", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read545", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read646", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read747", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read848", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read949", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1040", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1141", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1242", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1343", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1444", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1545", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1646", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1747", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1848", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1949", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2050", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2151", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2252", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2353", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2454", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2555", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2656", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2757", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2858", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2959", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3050", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3151", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3252", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3353", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3454", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3555", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3656", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3757", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3858", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3959", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4060", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_madd_fu_3257.grp_fe_add_fu_707", "Parent" : "37",
		"CDFG" : "fe_add",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_madd_fu_3257.grp_fe_sub_fu_708", "Parent" : "37",
		"CDFG" : "fe_sub",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_madd_fu_3257.grp_fe_mul_fu_867", "Parent" : "37",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_madd_fu_3257.grp_fe_mul_fu_1026", "Parent" : "37",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_ge_madd_fu_3257.grp_fe_mul_1_fu_1309", "Parent" : "37",
		"CDFG" : "fe_mul_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411", "Parent" : "25", "Child" : ["44", "49", "50", "51", "52"],
		"CDFG" : "select_r",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"}],
		"Port" : [
			{"Name" : "pos_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_cmov_fu_223", "Port" : "base_yplusx"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_cmov_fu_223", "Port" : "base_yminusx"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_cmov_fu_223", "Port" : "base_xy2d"}]}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411.grp_cmov_fu_223", "Parent" : "43", "Child" : ["45", "46", "47", "48"],
		"CDFG" : "cmov",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_cmov_fu_336"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_cmov_fu_336"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_cmov_fu_336"}],
		"Port" : [
			{"Name" : "t_yplusx_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_756", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_yplusx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_7561", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_yminusx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_7562", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_xy2d_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]}]},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411.grp_cmov_fu_223.base_yplusx_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411.grp_cmov_fu_223.base_yminusx_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411.grp_cmov_fu_223.base_xy2d_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411.grp_cmov_fu_223.grp_fe_cmov_fu_336", "Parent" : "44",
		"CDFG" : "fe_cmov",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_7562", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_xy2d_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411.grp_fe_copy_fu_455", "Parent" : "43",
		"CDFG" : "fe_copy",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411.call_ret_i_fe_cmov_1_fu_469", "Parent" : "43",
		"CDFG" : "fe_cmov_1",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411.call_ret33_i_fe_cmov_1_fu_494", "Parent" : "43",
		"CDFG" : "fe_cmov_1",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_579.grp_select_r_fu_3411.call_ret32_i_fe_cmov_1_fu_519", "Parent" : "43",
		"CDFG" : "fe_cmov_1",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_646", "Parent" : "0", "Child" : ["54", "55", "56", "57", "58"],
		"CDFG" : "fe_invert",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_2304"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_2684"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_2684"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_2684"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_2684"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"}],
		"Port" : [
			{"Name" : "z_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_646.grp_fe_mul_fu_2304", "Parent" : "53",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_646.grp_fe_sq_fu_2305", "Parent" : "53",
		"CDFG" : "fe_sq",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_646.grp_fe_mul_2_fu_2610", "Parent" : "53",
		"CDFG" : "fe_mul_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_646.grp_fe_mul_1_fu_2684", "Parent" : "53",
		"CDFG" : "fe_mul_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_646.grp_fe_sq_1_fu_2728", "Parent" : "53",
		"CDFG" : "fe_sq_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791", "Parent" : "0", "Child" : ["60", "61", "65"],
		"CDFG" : "sha512_update_32",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_32_1_fu_352"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_364"}],
		"Port" : [
			{"Name" : "md_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_sha512_compress_32_1_fu_352", "Port" : "md_state"},
					{"ID" : "65", "SubInstance" : "grp_sha512_compress_128_fu_364", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_sha512_compress_32_1_fu_352", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_sha512_compress_32_1_fu_352", "Port" : "K"},
					{"ID" : "65", "SubInstance" : "grp_sha512_compress_128_fu_364", "Port" : "K"}]}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791.temp_buf_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791.grp_sha512_compress_32_1_fu_352", "Parent" : "59", "Child" : ["62", "63", "64"],
		"CDFG" : "sha512_compress_32_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_01_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791.grp_sha512_compress_32_1_fu_352.K_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791.grp_sha512_compress_32_1_fu_352.S_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791.grp_sha512_compress_32_1_fu_352.W_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791.grp_sha512_compress_128_fu_364", "Parent" : "59", "Child" : ["66", "67", "68"],
		"CDFG" : "sha512_compress_128",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791.grp_sha512_compress_128_fu_364.K_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791.grp_sha512_compress_128_fu_364.S_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_791.grp_sha512_compress_128_fu_364.W_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_962", "Parent" : "0", "Child" : ["70", "71", "72", "73"],
		"CDFG" : "sc_muladd",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26265"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26273"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26273"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26273"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26273"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26273"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_26273"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26292"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26300"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26300"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26300"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26300"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26300"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_26300"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_load_4_fu_26265", "Port" : "in_r"},
					{"ID" : "72", "SubInstance" : "grp_load_3_fu_26292", "Port" : "in_r"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_load_4_fu_26265", "Port" : "in_r"},
					{"ID" : "72", "SubInstance" : "grp_load_3_fu_26292", "Port" : "in_r"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_load_3_fu_26300", "Port" : "in_r"},
					{"ID" : "71", "SubInstance" : "grp_load_4_fu_26273", "Port" : "in_r"}]}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_962.grp_load_4_fu_26265", "Parent" : "69",
		"CDFG" : "load_4",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_962.grp_load_4_fu_26273", "Parent" : "69",
		"CDFG" : "load_4",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_962.grp_load_3_fu_26292", "Parent" : "69",
		"CDFG" : "load_3",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_962.grp_load_3_fu_26300", "Parent" : "69",
		"CDFG" : "load_3",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972", "Parent" : "0", "Child" : ["75", "76", "80"],
		"CDFG" : "sha512_update_32_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_32_fu_374"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_386"}],
		"Port" : [
			{"Name" : "md_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_sha512_compress_32_fu_374", "Port" : "md_state"},
					{"ID" : "80", "SubInstance" : "grp_sha512_compress_128_fu_386", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_sha512_compress_32_fu_374", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_sha512_compress_32_fu_374", "Port" : "K"},
					{"ID" : "80", "SubInstance" : "grp_sha512_compress_128_fu_386", "Port" : "K"}]}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972.temp_buf_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972.grp_sha512_compress_32_fu_374", "Parent" : "74", "Child" : ["77", "78", "79"],
		"CDFG" : "sha512_compress_32",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972.grp_sha512_compress_32_fu_374.K_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972.grp_sha512_compress_32_fu_374.S_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972.grp_sha512_compress_32_fu_374.W_U", "Parent" : "76"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972.grp_sha512_compress_128_fu_386", "Parent" : "74", "Child" : ["81", "82", "83"],
		"CDFG" : "sha512_compress_128",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972.grp_sha512_compress_128_fu_386.K_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972.grp_sha512_compress_128_fu_386.S_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_972.grp_sha512_compress_128_fu_386.W_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984", "Parent" : "0", "Child" : ["85", "86", "90"],
		"CDFG" : "sha512_update_32_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_32_fu_352"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_364"}],
		"Port" : [
			{"Name" : "md_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_sha512_compress_32_fu_352", "Port" : "md_state"},
					{"ID" : "90", "SubInstance" : "grp_sha512_compress_128_fu_364", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_sha512_compress_32_fu_352", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_sha512_compress_32_fu_352", "Port" : "K"},
					{"ID" : "90", "SubInstance" : "grp_sha512_compress_128_fu_364", "Port" : "K"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984.temp_buf_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984.grp_sha512_compress_32_fu_352", "Parent" : "84", "Child" : ["87", "88", "89"],
		"CDFG" : "sha512_compress_32",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984.grp_sha512_compress_32_fu_352.K_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984.grp_sha512_compress_32_fu_352.S_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984.grp_sha512_compress_32_fu_352.W_U", "Parent" : "86"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984.grp_sha512_compress_128_fu_364", "Parent" : "84", "Child" : ["91", "92", "93"],
		"CDFG" : "sha512_compress_128",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984.grp_sha512_compress_128_fu_364.K_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984.grp_sha512_compress_128_fu_364.S_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_984.grp_sha512_compress_128_fu_364.W_U", "Parent" : "90"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sc_reduce_fu_996", "Parent" : "0", "Child" : ["95", "96"],
		"CDFG" : "sc_reduce",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9547"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9567"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_load_4_fu_9547", "Port" : "in_r"},
					{"ID" : "96", "SubInstance" : "grp_load_3_fu_9567", "Port" : "in_r"}]}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_reduce_fu_996.grp_load_4_fu_9547", "Parent" : "94",
		"CDFG" : "load_4",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_reduce_fu_996.grp_load_3_fu_9567", "Parent" : "94",
		"CDFG" : "load_3",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_tobytes_1_fu_1001", "Parent" : "0",
		"CDFG" : "fe_tobytes_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	ed25519_sign {
		signature {Type IO LastRead 24 FirstWrite -1}
		microblaze_mem {Type I LastRead 37 FirstWrite -1}
		blocks_in {Type I LastRead 5 FirstWrite -1}
		public_key {Type I LastRead 10 FirstWrite -1}
		private_key {Type I LastRead 10 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}
		base_yplusx {Type I LastRead -1 FirstWrite -1}
		base_yminusx {Type I LastRead -1 FirstWrite -1}
		base_xy2d {Type I LastRead -1 FirstWrite -1}}
	sha512_update_128 {
		md_length {Type IO LastRead 10 FirstWrite 3}
		md_state {Type IO LastRead 5 FirstWrite 6}
		md_curlen {Type IO LastRead 7 FirstWrite 6}
		md_buf {Type IO LastRead 7 FirstWrite 7}
		in_r {Type I LastRead 10 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128_1 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 10 FirstWrite -1}
		p_01_idx {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_final {
		md_length {Type IO LastRead 6 FirstWrite 0}
		md_state {Type IO LastRead 13 FirstWrite 6}
		md_curlen {Type IO LastRead 6 FirstWrite 0}
		md_buf {Type IO LastRead 10 FirstWrite 0}
		out_r {Type O LastRead -1 FirstWrite 14}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	ge_scalarmult_base {
		a {Type I LastRead 1 FirstWrite -1}
		base_yplusx {Type I LastRead -1 FirstWrite -1}
		base_yminusx {Type I LastRead -1 FirstWrite -1}
		base_xy2d {Type I LastRead -1 FirstWrite -1}}
	ge_p1p1_to_p3 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 1 FirstWrite -1}
		p_read11 {Type I LastRead 1 FirstWrite -1}
		p_read12 {Type I LastRead 1 FirstWrite -1}
		p_read13 {Type I LastRead 1 FirstWrite -1}
		p_read14 {Type I LastRead 1 FirstWrite -1}
		p_read15 {Type I LastRead 1 FirstWrite -1}
		p_read16 {Type I LastRead 1 FirstWrite -1}
		p_read17 {Type I LastRead 1 FirstWrite -1}
		p_read18 {Type I LastRead 1 FirstWrite -1}
		p_read19 {Type I LastRead 1 FirstWrite -1}
		p_read20 {Type I LastRead 1 FirstWrite -1}
		p_read21 {Type I LastRead 1 FirstWrite -1}
		p_read22 {Type I LastRead 1 FirstWrite -1}
		p_read23 {Type I LastRead 1 FirstWrite -1}
		p_read24 {Type I LastRead 1 FirstWrite -1}
		p_read25 {Type I LastRead 1 FirstWrite -1}
		p_read26 {Type I LastRead 1 FirstWrite -1}
		p_read27 {Type I LastRead 1 FirstWrite -1}
		p_read28 {Type I LastRead 1 FirstWrite -1}
		p_read29 {Type I LastRead 1 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	ge_p2_dbl {
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read142 {Type I LastRead 0 FirstWrite -1}
		p_read243 {Type I LastRead 0 FirstWrite -1}
		p_read344 {Type I LastRead 0 FirstWrite -1}
		p_read445 {Type I LastRead 0 FirstWrite -1}
		p_read546 {Type I LastRead 0 FirstWrite -1}
		p_read647 {Type I LastRead 0 FirstWrite -1}
		p_read748 {Type I LastRead 0 FirstWrite -1}
		p_read849 {Type I LastRead 0 FirstWrite -1}
		p_read950 {Type I LastRead 0 FirstWrite -1}
		p_read1051 {Type I LastRead 0 FirstWrite -1}
		p_read1152 {Type I LastRead 0 FirstWrite -1}
		p_read1253 {Type I LastRead 0 FirstWrite -1}
		p_read1354 {Type I LastRead 0 FirstWrite -1}
		p_read1455 {Type I LastRead 0 FirstWrite -1}
		p_read1556 {Type I LastRead 0 FirstWrite -1}
		p_read1657 {Type I LastRead 0 FirstWrite -1}
		p_read1758 {Type I LastRead 0 FirstWrite -1}
		p_read1859 {Type I LastRead 0 FirstWrite -1}
		p_read1960 {Type I LastRead 0 FirstWrite -1}
		p_read2040 {Type I LastRead 0 FirstWrite -1}
		p_read2141 {Type I LastRead 0 FirstWrite -1}
		p_read2242 {Type I LastRead 0 FirstWrite -1}
		p_read2343 {Type I LastRead 0 FirstWrite -1}
		p_read2444 {Type I LastRead 0 FirstWrite -1}
		p_read2545 {Type I LastRead 0 FirstWrite -1}
		p_read2646 {Type I LastRead 0 FirstWrite -1}
		p_read2747 {Type I LastRead 0 FirstWrite -1}
		p_read2848 {Type I LastRead 0 FirstWrite -1}
		p_read2949 {Type I LastRead 0 FirstWrite -1}}
	fe_add {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 1 FirstWrite -1}
		f_2_read {Type I LastRead 2 FirstWrite -1}
		f_3_read {Type I LastRead 3 FirstWrite -1}
		f_4_read {Type I LastRead 4 FirstWrite -1}
		f_5_read {Type I LastRead 5 FirstWrite -1}
		f_6_read {Type I LastRead 6 FirstWrite -1}
		f_7_read {Type I LastRead 7 FirstWrite -1}
		f_8_read {Type I LastRead 8 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g_0_read {Type I LastRead 0 FirstWrite -1}
		g_1_read {Type I LastRead 1 FirstWrite -1}
		g_2_read {Type I LastRead 2 FirstWrite -1}
		g_3_read {Type I LastRead 3 FirstWrite -1}
		g_4_read {Type I LastRead 4 FirstWrite -1}
		g_5_read {Type I LastRead 5 FirstWrite -1}
		g_6_read {Type I LastRead 6 FirstWrite -1}
		g_7_read {Type I LastRead 7 FirstWrite -1}
		g_8_read {Type I LastRead 8 FirstWrite -1}
		g_9_read {Type I LastRead 9 FirstWrite -1}}
	fe_sub {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 1 FirstWrite -1}
		f_2_read {Type I LastRead 2 FirstWrite -1}
		f_3_read {Type I LastRead 3 FirstWrite -1}
		f_4_read {Type I LastRead 4 FirstWrite -1}
		f_5_read {Type I LastRead 5 FirstWrite -1}
		f_6_read {Type I LastRead 6 FirstWrite -1}
		f_7_read {Type I LastRead 7 FirstWrite -1}
		f_8_read {Type I LastRead 8 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g_0_read {Type I LastRead 0 FirstWrite -1}
		g_1_read {Type I LastRead 1 FirstWrite -1}
		g_2_read {Type I LastRead 2 FirstWrite -1}
		g_3_read {Type I LastRead 3 FirstWrite -1}
		g_4_read {Type I LastRead 4 FirstWrite -1}
		g_5_read {Type I LastRead 5 FirstWrite -1}
		g_6_read {Type I LastRead 6 FirstWrite -1}
		g_7_read {Type I LastRead 7 FirstWrite -1}
		g_8_read {Type I LastRead 8 FirstWrite -1}
		g_9_read {Type I LastRead 9 FirstWrite -1}}
	fe_sq {
		f_0_read {Type I LastRead 5 FirstWrite -1}
		f_1_read {Type I LastRead 6 FirstWrite -1}
		f_2_read {Type I LastRead 7 FirstWrite -1}
		f_3_read {Type I LastRead 8 FirstWrite -1}
		f_4_read {Type I LastRead 9 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 1 FirstWrite -1}
		f_7_read {Type I LastRead 2 FirstWrite -1}
		f_8_read {Type I LastRead 3 FirstWrite -1}
		f_9_read {Type I LastRead 4 FirstWrite -1}}
	fe_sq2 {
		f_0_read {Type I LastRead 5 FirstWrite -1}
		f_1_read {Type I LastRead 6 FirstWrite -1}
		f_2_read {Type I LastRead 7 FirstWrite -1}
		f_3_read {Type I LastRead 8 FirstWrite -1}
		f_4_read {Type I LastRead 9 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 1 FirstWrite -1}
		f_7_read {Type I LastRead 2 FirstWrite -1}
		f_8_read {Type I LastRead 3 FirstWrite -1}
		f_9_read {Type I LastRead 4 FirstWrite -1}}
	ge_p1p1_to_p2 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 1 FirstWrite -1}
		p_read11 {Type I LastRead 1 FirstWrite -1}
		p_read12 {Type I LastRead 1 FirstWrite -1}
		p_read13 {Type I LastRead 1 FirstWrite -1}
		p_read14 {Type I LastRead 1 FirstWrite -1}
		p_read15 {Type I LastRead 1 FirstWrite -1}
		p_read16 {Type I LastRead 1 FirstWrite -1}
		p_read17 {Type I LastRead 1 FirstWrite -1}
		p_read18 {Type I LastRead 1 FirstWrite -1}
		p_read19 {Type I LastRead 1 FirstWrite -1}
		p_read20 {Type I LastRead 1 FirstWrite -1}
		p_read21 {Type I LastRead 1 FirstWrite -1}
		p_read22 {Type I LastRead 1 FirstWrite -1}
		p_read23 {Type I LastRead 1 FirstWrite -1}
		p_read24 {Type I LastRead 1 FirstWrite -1}
		p_read25 {Type I LastRead 1 FirstWrite -1}
		p_read26 {Type I LastRead 1 FirstWrite -1}
		p_read27 {Type I LastRead 1 FirstWrite -1}
		p_read28 {Type I LastRead 1 FirstWrite -1}
		p_read29 {Type I LastRead 1 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	fe_copy {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}}
	ge_madd {
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read141 {Type I LastRead 0 FirstWrite -1}
		p_read242 {Type I LastRead 0 FirstWrite -1}
		p_read343 {Type I LastRead 0 FirstWrite -1}
		p_read444 {Type I LastRead 0 FirstWrite -1}
		p_read545 {Type I LastRead 0 FirstWrite -1}
		p_read646 {Type I LastRead 0 FirstWrite -1}
		p_read747 {Type I LastRead 0 FirstWrite -1}
		p_read848 {Type I LastRead 0 FirstWrite -1}
		p_read949 {Type I LastRead 0 FirstWrite -1}
		p_read1040 {Type I LastRead 0 FirstWrite -1}
		p_read1141 {Type I LastRead 0 FirstWrite -1}
		p_read1242 {Type I LastRead 0 FirstWrite -1}
		p_read1343 {Type I LastRead 0 FirstWrite -1}
		p_read1444 {Type I LastRead 0 FirstWrite -1}
		p_read1545 {Type I LastRead 0 FirstWrite -1}
		p_read1646 {Type I LastRead 0 FirstWrite -1}
		p_read1747 {Type I LastRead 0 FirstWrite -1}
		p_read1848 {Type I LastRead 0 FirstWrite -1}
		p_read1949 {Type I LastRead 0 FirstWrite -1}
		p_read2050 {Type I LastRead 2 FirstWrite -1}
		p_read2151 {Type I LastRead 3 FirstWrite -1}
		p_read2252 {Type I LastRead 4 FirstWrite -1}
		p_read2353 {Type I LastRead 5 FirstWrite -1}
		p_read2454 {Type I LastRead 6 FirstWrite -1}
		p_read2555 {Type I LastRead 7 FirstWrite -1}
		p_read2656 {Type I LastRead 8 FirstWrite -1}
		p_read2757 {Type I LastRead 9 FirstWrite -1}
		p_read2858 {Type I LastRead 9 FirstWrite -1}
		p_read2959 {Type I LastRead 9 FirstWrite -1}
		p_read3050 {Type I LastRead 0 FirstWrite -1}
		p_read3151 {Type I LastRead 0 FirstWrite -1}
		p_read3252 {Type I LastRead 0 FirstWrite -1}
		p_read3353 {Type I LastRead 0 FirstWrite -1}
		p_read3454 {Type I LastRead 0 FirstWrite -1}
		p_read3555 {Type I LastRead 0 FirstWrite -1}
		p_read3656 {Type I LastRead 0 FirstWrite -1}
		p_read3757 {Type I LastRead 0 FirstWrite -1}
		p_read3858 {Type I LastRead 0 FirstWrite -1}
		p_read3959 {Type I LastRead 0 FirstWrite -1}
		p_read4060 {Type I LastRead 2 FirstWrite -1}
		p_read41 {Type I LastRead 2 FirstWrite -1}
		p_read42 {Type I LastRead 2 FirstWrite -1}
		p_read43 {Type I LastRead 2 FirstWrite -1}
		p_read44 {Type I LastRead 2 FirstWrite -1}
		p_read45 {Type I LastRead 2 FirstWrite -1}
		p_read46 {Type I LastRead 2 FirstWrite -1}
		p_read47 {Type I LastRead 2 FirstWrite -1}
		p_read48 {Type I LastRead 2 FirstWrite -1}
		p_read49 {Type I LastRead 2 FirstWrite -1}
		p_read50 {Type I LastRead 2 FirstWrite -1}
		p_read51 {Type I LastRead 2 FirstWrite -1}
		p_read52 {Type I LastRead 2 FirstWrite -1}
		p_read53 {Type I LastRead 2 FirstWrite -1}
		p_read54 {Type I LastRead 2 FirstWrite -1}
		p_read55 {Type I LastRead 2 FirstWrite -1}
		p_read56 {Type I LastRead 2 FirstWrite -1}
		p_read57 {Type I LastRead 2 FirstWrite -1}
		p_read58 {Type I LastRead 2 FirstWrite -1}
		p_read59 {Type I LastRead 2 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}}
	fe_add {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 1 FirstWrite -1}
		f_2_read {Type I LastRead 2 FirstWrite -1}
		f_3_read {Type I LastRead 3 FirstWrite -1}
		f_4_read {Type I LastRead 4 FirstWrite -1}
		f_5_read {Type I LastRead 5 FirstWrite -1}
		f_6_read {Type I LastRead 6 FirstWrite -1}
		f_7_read {Type I LastRead 7 FirstWrite -1}
		f_8_read {Type I LastRead 8 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g_0_read {Type I LastRead 0 FirstWrite -1}
		g_1_read {Type I LastRead 1 FirstWrite -1}
		g_2_read {Type I LastRead 2 FirstWrite -1}
		g_3_read {Type I LastRead 3 FirstWrite -1}
		g_4_read {Type I LastRead 4 FirstWrite -1}
		g_5_read {Type I LastRead 5 FirstWrite -1}
		g_6_read {Type I LastRead 6 FirstWrite -1}
		g_7_read {Type I LastRead 7 FirstWrite -1}
		g_8_read {Type I LastRead 8 FirstWrite -1}
		g_9_read {Type I LastRead 9 FirstWrite -1}}
	fe_sub {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 1 FirstWrite -1}
		f_2_read {Type I LastRead 2 FirstWrite -1}
		f_3_read {Type I LastRead 3 FirstWrite -1}
		f_4_read {Type I LastRead 4 FirstWrite -1}
		f_5_read {Type I LastRead 5 FirstWrite -1}
		f_6_read {Type I LastRead 6 FirstWrite -1}
		f_7_read {Type I LastRead 7 FirstWrite -1}
		f_8_read {Type I LastRead 8 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g_0_read {Type I LastRead 0 FirstWrite -1}
		g_1_read {Type I LastRead 1 FirstWrite -1}
		g_2_read {Type I LastRead 2 FirstWrite -1}
		g_3_read {Type I LastRead 3 FirstWrite -1}
		g_4_read {Type I LastRead 4 FirstWrite -1}
		g_5_read {Type I LastRead 5 FirstWrite -1}
		g_6_read {Type I LastRead 6 FirstWrite -1}
		g_7_read {Type I LastRead 7 FirstWrite -1}
		g_8_read {Type I LastRead 8 FirstWrite -1}
		g_9_read {Type I LastRead 9 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	fe_mul_1 {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	select_r {
		pos_r {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		base_yplusx {Type I LastRead -1 FirstWrite -1}
		base_yminusx {Type I LastRead -1 FirstWrite -1}
		base_xy2d {Type I LastRead -1 FirstWrite -1}}
	cmov {
		t_yplusx_0_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_1_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_2_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_3_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_4_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_5_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_6_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_7_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_8_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_9_read {Type I LastRead 0 FirstWrite -1}
		t_yminusx_0_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_1_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_2_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_3_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_4_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_5_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_6_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_7_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_8_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_9_read {Type I LastRead 1 FirstWrite -1}
		t_xy2d_0_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_1_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_2_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_3_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_4_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_5_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_6_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_7_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_8_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_9_read {Type I LastRead 2 FirstWrite -1}
		tmp_756 {Type I LastRead 0 FirstWrite -1}
		u_yplusx_offset {Type I LastRead 0 FirstWrite -1}
		tmp_7561 {Type I LastRead 1 FirstWrite -1}
		u_yminusx_offset {Type I LastRead 1 FirstWrite -1}
		tmp_7562 {Type I LastRead 2 FirstWrite -1}
		u_xy2d_offset {Type I LastRead 2 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		base_yplusx {Type I LastRead -1 FirstWrite -1}
		base_yminusx {Type I LastRead -1 FirstWrite -1}
		base_xy2d {Type I LastRead -1 FirstWrite -1}}
	fe_cmov {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 9 FirstWrite -1}
		f_2_read {Type I LastRead 9 FirstWrite -1}
		f_3_read {Type I LastRead 9 FirstWrite -1}
		f_4_read {Type I LastRead 9 FirstWrite -1}
		f_5_read {Type I LastRead 9 FirstWrite -1}
		f_6_read {Type I LastRead 9 FirstWrite -1}
		f_7_read {Type I LastRead 9 FirstWrite -1}
		f_8_read {Type I LastRead 9 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g {Type I LastRead 9 FirstWrite -1}
		tmp_7562 {Type I LastRead 0 FirstWrite -1}
		u_xy2d_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 9 FirstWrite -1}}
	fe_copy {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}}
	fe_cmov_1 {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fe_cmov_1 {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fe_cmov_1 {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fe_invert {
		z_0_read {Type I LastRead 0 FirstWrite -1}
		z_1_read {Type I LastRead 0 FirstWrite -1}
		z_2_read {Type I LastRead 0 FirstWrite -1}
		z_3_read {Type I LastRead 0 FirstWrite -1}
		z_4_read {Type I LastRead 0 FirstWrite -1}
		z_5_read {Type I LastRead 0 FirstWrite -1}
		z_6_read {Type I LastRead 0 FirstWrite -1}
		z_7_read {Type I LastRead 0 FirstWrite -1}
		z_8_read {Type I LastRead 0 FirstWrite -1}
		z_9_read {Type I LastRead 0 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	fe_sq {
		f_0_read {Type I LastRead 5 FirstWrite -1}
		f_1_read {Type I LastRead 6 FirstWrite -1}
		f_2_read {Type I LastRead 7 FirstWrite -1}
		f_3_read {Type I LastRead 8 FirstWrite -1}
		f_4_read {Type I LastRead 9 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 1 FirstWrite -1}
		f_7_read {Type I LastRead 2 FirstWrite -1}
		f_8_read {Type I LastRead 3 FirstWrite -1}
		f_9_read {Type I LastRead 4 FirstWrite -1}}
	fe_mul_2 {
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}}
	fe_mul_1 {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	fe_sq_1 {
		f_0_read {Type I LastRead 5 FirstWrite -1}
		f_1_read {Type I LastRead 6 FirstWrite -1}
		f_2_read {Type I LastRead 7 FirstWrite -1}
		f_3_read {Type I LastRead 8 FirstWrite -1}
		f_4_read {Type I LastRead 9 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 1 FirstWrite -1}
		f_7_read {Type I LastRead 2 FirstWrite -1}
		f_8_read {Type I LastRead 3 FirstWrite -1}
		f_9_read {Type I LastRead 4 FirstWrite -1}}
	sha512_update_32 {
		md_length {Type IO LastRead 10 FirstWrite 3}
		md_state {Type IO LastRead 5 FirstWrite 6}
		md_curlen {Type IO LastRead 7 FirstWrite 6}
		md_buf {Type IO LastRead 7 FirstWrite 7}
		in_r {Type I LastRead 10 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_32_1 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 10 FirstWrite -1}
		p_01_idx {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sc_muladd {
		s {Type O LastRead -1 FirstWrite 361}
		a {Type I LastRead 3 FirstWrite -1}
		b {Type I LastRead 3 FirstWrite -1}
		c {Type I LastRead 3 FirstWrite -1}}
	load_4 {
		in_r {Type I LastRead 3 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	load_4 {
		in_r {Type I LastRead 3 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	load_3 {
		in_r {Type I LastRead 2 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	load_3 {
		in_r {Type I LastRead 2 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	sha512_update_32_2 {
		md_length {Type IO LastRead 10 FirstWrite 4}
		md_state {Type IO LastRead 5 FirstWrite 6}
		md_curlen {Type IO LastRead 8 FirstWrite 6}
		md_buf {Type IO LastRead 7 FirstWrite 8}
		in_r {Type I LastRead 10 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_32 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 10 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_update_32_1 {
		md_length {Type IO LastRead 10 FirstWrite 3}
		md_state {Type IO LastRead 5 FirstWrite 6}
		md_curlen {Type IO LastRead 7 FirstWrite 6}
		md_buf {Type IO LastRead 7 FirstWrite 7}
		in_r {Type I LastRead 10 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_32 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 10 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sc_reduce {
		s {Type IO LastRead 3 FirstWrite -1}}
	load_4 {
		in_r {Type I LastRead 3 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	load_3 {
		in_r {Type I LastRead 2 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	fe_tobytes_1 {
		s {Type O LastRead -1 FirstWrite 12}
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 2 FirstWrite -1}
		p_read2 {Type I LastRead 3 FirstWrite -1}
		p_read3 {Type I LastRead 4 FirstWrite -1}
		p_read4 {Type I LastRead 5 FirstWrite -1}
		p_read5 {Type I LastRead 6 FirstWrite -1}
		p_read6 {Type I LastRead 7 FirstWrite -1}
		p_read7 {Type I LastRead 8 FirstWrite -1}
		p_read8 {Type I LastRead 9 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	microblaze_mem { m_axi {  { m_axi_microblaze_mem_AWVALID VALID 1 1 }  { m_axi_microblaze_mem_AWREADY READY 0 1 }  { m_axi_microblaze_mem_AWADDR ADDR 1 32 }  { m_axi_microblaze_mem_AWID ID 1 1 }  { m_axi_microblaze_mem_AWLEN LEN 1 8 }  { m_axi_microblaze_mem_AWSIZE SIZE 1 3 }  { m_axi_microblaze_mem_AWBURST BURST 1 2 }  { m_axi_microblaze_mem_AWLOCK LOCK 1 2 }  { m_axi_microblaze_mem_AWCACHE CACHE 1 4 }  { m_axi_microblaze_mem_AWPROT PROT 1 3 }  { m_axi_microblaze_mem_AWQOS QOS 1 4 }  { m_axi_microblaze_mem_AWREGION REGION 1 4 }  { m_axi_microblaze_mem_AWUSER USER 1 1 }  { m_axi_microblaze_mem_WVALID VALID 1 1 }  { m_axi_microblaze_mem_WREADY READY 0 1 }  { m_axi_microblaze_mem_WDATA DATA 1 32 }  { m_axi_microblaze_mem_WSTRB STRB 1 4 }  { m_axi_microblaze_mem_WLAST LAST 1 1 }  { m_axi_microblaze_mem_WID ID 1 1 }  { m_axi_microblaze_mem_WUSER USER 1 1 }  { m_axi_microblaze_mem_ARVALID VALID 1 1 }  { m_axi_microblaze_mem_ARREADY READY 0 1 }  { m_axi_microblaze_mem_ARADDR ADDR 1 32 }  { m_axi_microblaze_mem_ARID ID 1 1 }  { m_axi_microblaze_mem_ARLEN LEN 1 8 }  { m_axi_microblaze_mem_ARSIZE SIZE 1 3 }  { m_axi_microblaze_mem_ARBURST BURST 1 2 }  { m_axi_microblaze_mem_ARLOCK LOCK 1 2 }  { m_axi_microblaze_mem_ARCACHE CACHE 1 4 }  { m_axi_microblaze_mem_ARPROT PROT 1 3 }  { m_axi_microblaze_mem_ARQOS QOS 1 4 }  { m_axi_microblaze_mem_ARREGION REGION 1 4 }  { m_axi_microblaze_mem_ARUSER USER 1 1 }  { m_axi_microblaze_mem_RVALID VALID 0 1 }  { m_axi_microblaze_mem_RREADY READY 1 1 }  { m_axi_microblaze_mem_RDATA DATA 0 32 }  { m_axi_microblaze_mem_RLAST LAST 0 1 }  { m_axi_microblaze_mem_RID ID 0 1 }  { m_axi_microblaze_mem_RUSER USER 0 1 }  { m_axi_microblaze_mem_RRESP RESP 0 2 }  { m_axi_microblaze_mem_BVALID VALID 0 1 }  { m_axi_microblaze_mem_BREADY READY 1 1 }  { m_axi_microblaze_mem_BRESP RESP 0 2 }  { m_axi_microblaze_mem_BID ID 0 1 }  { m_axi_microblaze_mem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ microblaze_mem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ microblaze_mem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ microblaze_mem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
