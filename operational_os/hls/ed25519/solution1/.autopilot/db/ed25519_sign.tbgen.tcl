set C_TypeInfoList {{ 
"ed25519_sign" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"signature": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }, {"microblaze_mem": [[], {"array": [ {"scalar": "unsigned char"}, [32768]]}] }, {"blocks_in": [[],"0"] }, {"offset": [[],"0"] }, {"start": [[], {"scalar": "bool"}] }, {"public_key": [[], {"array": [ {"scalar": "unsigned char"}, [32]]}] }, {"private_key": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }],[],""], 
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
	{ signature int 8 regular {array 64 { 2 1 } 1 1 }  }
	{ microblaze_mem int 8 regular {axi_master 0}  }
	{ blocks_in int 64 regular  }
	{ offset int 64 regular  }
	{ start uint 1 regular  }
	{ public_key int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ private_key int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "signature","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "microblaze_mem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "microblaze_mem","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 32767,"step" : 1}]}]}]} , 
 	{ "Name" : "blocks_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "blocks_in","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "offset","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "start", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "start","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "public_key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "public_key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "private_key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "private_key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ signature_address0 sc_out sc_lv 6 signal 0 } 
	{ signature_ce0 sc_out sc_logic 1 signal 0 } 
	{ signature_we0 sc_out sc_logic 1 signal 0 } 
	{ signature_d0 sc_out sc_lv 8 signal 0 } 
	{ signature_q0 sc_in sc_lv 8 signal 0 } 
	{ signature_address1 sc_out sc_lv 6 signal 0 } 
	{ signature_ce1 sc_out sc_logic 1 signal 0 } 
	{ signature_q1 sc_in sc_lv 8 signal 0 } 
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
	{ blocks_in sc_in sc_lv 64 signal 2 } 
	{ blocks_in_ap_vld sc_in sc_logic 1 invld 2 } 
	{ offset sc_in sc_lv 64 signal 3 } 
	{ offset_ap_vld sc_in sc_logic 1 invld 3 } 
	{ start sc_in sc_logic 1 signal 4 } 
	{ public_key_address0 sc_out sc_lv 5 signal 5 } 
	{ public_key_ce0 sc_out sc_logic 1 signal 5 } 
	{ public_key_q0 sc_in sc_lv 8 signal 5 } 
	{ public_key_address1 sc_out sc_lv 5 signal 5 } 
	{ public_key_ce1 sc_out sc_logic 1 signal 5 } 
	{ public_key_q1 sc_in sc_lv 8 signal 5 } 
	{ private_key_address0 sc_out sc_lv 6 signal 6 } 
	{ private_key_ce0 sc_out sc_logic 1 signal 6 } 
	{ private_key_q0 sc_in sc_lv 8 signal 6 } 
	{ private_key_address1 sc_out sc_lv 6 signal 6 } 
	{ private_key_ce1 sc_out sc_logic 1 signal 6 } 
	{ private_key_q1 sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "we0" }} , 
 	{ "name": "signature_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "d0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
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
 	{ "name": "m_axi_microblaze_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "microblaze_mem", "role": "BUSER" }} , 
 	{ "name": "blocks_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "blocks_in", "role": "default" }} , 
 	{ "name": "blocks_in_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "blocks_in", "role": "ap_vld" }} , 
 	{ "name": "offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "offset", "role": "default" }} , 
 	{ "name": "offset_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "offset", "role": "ap_vld" }} , 
 	{ "name": "start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start", "role": "default" }} , 
 	{ "name": "public_key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "public_key", "role": "address0" }} , 
 	{ "name": "public_key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "public_key", "role": "ce0" }} , 
 	{ "name": "public_key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "public_key", "role": "q0" }} , 
 	{ "name": "public_key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "public_key", "role": "address1" }} , 
 	{ "name": "public_key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "public_key", "role": "ce1" }} , 
 	{ "name": "public_key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "public_key", "role": "q1" }} , 
 	{ "name": "private_key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "private_key", "role": "address0" }} , 
 	{ "name": "private_key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "private_key", "role": "ce0" }} , 
 	{ "name": "private_key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "private_key", "role": "q0" }} , 
 	{ "name": "private_key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "private_key", "role": "address1" }} , 
 	{ "name": "private_key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "private_key", "role": "ce1" }} , 
 	{ "name": "private_key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "private_key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "17", "23", "24", "52", "58", "68", "73", "83", "93", "96"],
		"CDFG" : "ed25519_sign",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_128_fu_517"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_128_fu_517"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_final_fu_518"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_final_fu_518"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_519"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_519"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_scalarmult_base_fu_586"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_invert_fu_653"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_fu_798"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sc_muladd_fu_969"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_2_fu_979"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_1_fu_991"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sc_reduce_fu_1003"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sc_reduce_fu_1003"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_tobytes_1_fu_1008"}],
		"Port" : [
			{"Name" : "signature", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_sc_muladd_fu_969", "Port" : "s"},
					{"ID" : "96", "SubInstance" : "grp_fe_tobytes_1_fu_1008", "Port" : "s"},
					{"ID" : "83", "SubInstance" : "grp_sha512_update_32_1_fu_991", "Port" : "in_r"}]},
			{"Name" : "microblaze_mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "microblaze_mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "microblaze_mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "blocks_in", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "blocks_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "offset", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "start", "Type" : "None", "Direction" : "I"},
			{"Name" : "public_key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_sha512_update_32_fu_798", "Port" : "in_r"}]},
			{"Name" : "private_key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_sc_muladd_fu_969", "Port" : "b"},
					{"ID" : "73", "SubInstance" : "grp_sha512_update_32_2_fu_979", "Port" : "in_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_sha512_update_32_2_fu_979", "Port" : "K"},
					{"ID" : "17", "SubInstance" : "grp_sha512_final_fu_518", "Port" : "K"},
					{"ID" : "58", "SubInstance" : "grp_sha512_update_32_fu_798", "Port" : "K"},
					{"ID" : "7", "SubInstance" : "grp_sha512_update_128_fu_517", "Port" : "K"},
					{"ID" : "83", "SubInstance" : "grp_sha512_update_32_1_fu_991", "Port" : "K"}]},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_ge_scalarmult_base_fu_586", "Port" : "base_yplusx"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_ge_scalarmult_base_fu_586", "Port" : "base_yminusx"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_ge_scalarmult_base_fu_586", "Port" : "base_xy2d"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ed25519_sign_microblaze_mem_m_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_state_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_buf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hram_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_data_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517", "Parent" : "0", "Child" : ["8", "9", "13"],
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
					{"ID" : "9", "SubInstance" : "grp_sha512_compress_128_1_fu_342", "Port" : "md_state"},
					{"ID" : "13", "SubInstance" : "grp_sha512_compress_128_fu_354", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_sha512_compress_128_1_fu_342", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_sha512_compress_128_1_fu_342", "Port" : "K"},
					{"ID" : "13", "SubInstance" : "grp_sha512_compress_128_fu_354", "Port" : "K"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517.temp_buf_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517.grp_sha512_compress_128_1_fu_342", "Parent" : "7", "Child" : ["10", "11", "12"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517.grp_sha512_compress_128_1_fu_342.K_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517.grp_sha512_compress_128_1_fu_342.S_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517.grp_sha512_compress_128_1_fu_342.W_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517.grp_sha512_compress_128_fu_354", "Parent" : "7", "Child" : ["14", "15", "16"],
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517.grp_sha512_compress_128_fu_354.K_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517.grp_sha512_compress_128_fu_354.S_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_517.grp_sha512_compress_128_fu_354.W_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_518", "Parent" : "0", "Child" : ["18", "19"],
		"CDFG" : "sha512_final",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_463"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_463"}],
		"Port" : [
			{"Name" : "md_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_sha512_compress_128_fu_463", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_sha512_compress_128_fu_463", "Port" : "K"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_518.temp_buf_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_518.grp_sha512_compress_128_fu_463", "Parent" : "17", "Child" : ["20", "21", "22"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_518.grp_sha512_compress_128_fu_463.K_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_518.grp_sha512_compress_128_fu_463.S_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_518.grp_sha512_compress_128_fu_463.W_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_mul_fu_519", "Parent" : "0",
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
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586", "Parent" : "0", "Child" : ["25", "26", "28", "33", "35", "36", "42"],
		"CDFG" : "ge_scalarmult_base",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p3_fu_1747"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p3_fu_1747"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p3_fu_1747"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1748"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1748"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1748"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1748"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p2_fu_1749"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p2_fu_1749"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p2_fu_1749"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_madd_fu_3248"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_madd_fu_3248"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_select_r_fu_3402"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_select_r_fu_3402"}],
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_select_r_fu_3402", "Port" : "base_yplusx"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_select_r_fu_3402", "Port" : "base_yminusx"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_select_r_fu_3402", "Port" : "base_xy2d"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.e_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_p1p1_to_p3_fu_1747", "Parent" : "24", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_p1p1_to_p3_fu_1747.grp_fe_mul_fu_348", "Parent" : "26",
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
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_p2_dbl_fu_1748", "Parent" : "24", "Child" : ["29", "30", "31", "32"],
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_p2_dbl_fu_1748.grp_fe_add_fu_402", "Parent" : "28",
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
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_p2_dbl_fu_1748.grp_fe_sub_fu_495", "Parent" : "28",
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_p2_dbl_fu_1748.grp_fe_sq_fu_545", "Parent" : "28",
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_p2_dbl_fu_1748.grp_fe_sq2_fu_602", "Parent" : "28",
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
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_p1p1_to_p2_fu_1749", "Parent" : "24", "Child" : ["34"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_p1p1_to_p2_fu_1749.grp_fe_mul_fu_348", "Parent" : "33",
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
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_fe_copy_fu_3204", "Parent" : "24",
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_madd_fu_3248", "Parent" : "24", "Child" : ["37", "38", "39", "40", "41"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_1026"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_1309"}],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_madd_fu_3248.grp_fe_add_fu_707", "Parent" : "36",
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
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_madd_fu_3248.grp_fe_sub_fu_708", "Parent" : "36",
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
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_madd_fu_3248.grp_fe_mul_fu_867", "Parent" : "36",
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
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_madd_fu_3248.grp_fe_mul_fu_1026", "Parent" : "36",
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
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_ge_madd_fu_3248.grp_fe_mul_1_fu_1309", "Parent" : "36",
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
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402", "Parent" : "24", "Child" : ["43", "48", "49", "50", "51"],
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
					{"ID" : "43", "SubInstance" : "grp_cmov_fu_223", "Port" : "base_yplusx"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_cmov_fu_223", "Port" : "base_yminusx"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_cmov_fu_223", "Port" : "base_xy2d"}]}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402.grp_cmov_fu_223", "Parent" : "42", "Child" : ["44", "45", "46", "47"],
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
					{"ID" : "47", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]}]},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402.grp_cmov_fu_223.base_yplusx_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402.grp_cmov_fu_223.base_yminusx_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402.grp_cmov_fu_223.base_xy2d_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402.grp_cmov_fu_223.grp_fe_cmov_fu_336", "Parent" : "43",
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402.grp_fe_copy_fu_455", "Parent" : "42",
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
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402.call_ret_i_fe_cmov_1_fu_469", "Parent" : "42",
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
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402.call_ret33_i_fe_cmov_1_fu_494", "Parent" : "42",
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
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ge_scalarmult_base_fu_586.grp_select_r_fu_3402.call_ret32_i_fe_cmov_1_fu_519", "Parent" : "42",
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
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_653", "Parent" : "0", "Child" : ["53", "54", "55", "56", "57"],
		"CDFG" : "fe_invert",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_2304"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_2305"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_2_fu_2610"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_2684"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_2684"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_2684"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_2684"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_1_fu_2728"}],
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
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_653.grp_fe_mul_fu_2304", "Parent" : "52",
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
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_653.grp_fe_sq_fu_2305", "Parent" : "52",
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
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_653.grp_fe_mul_2_fu_2610", "Parent" : "52",
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
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_653.grp_fe_mul_1_fu_2684", "Parent" : "52",
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
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fe_invert_fu_653.grp_fe_sq_1_fu_2728", "Parent" : "52",
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
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798", "Parent" : "0", "Child" : ["59", "60", "64"],
		"CDFG" : "sha512_update_32",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_32_1_fu_344"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_356"}],
		"Port" : [
			{"Name" : "md_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_sha512_compress_32_1_fu_344", "Port" : "md_state"},
					{"ID" : "64", "SubInstance" : "grp_sha512_compress_128_fu_356", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_sha512_compress_32_1_fu_344", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_sha512_compress_32_1_fu_344", "Port" : "K"},
					{"ID" : "64", "SubInstance" : "grp_sha512_compress_128_fu_356", "Port" : "K"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798.temp_buf_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798.grp_sha512_compress_32_1_fu_344", "Parent" : "58", "Child" : ["61", "62", "63"],
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
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798.grp_sha512_compress_32_1_fu_344.K_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798.grp_sha512_compress_32_1_fu_344.S_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798.grp_sha512_compress_32_1_fu_344.W_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798.grp_sha512_compress_128_fu_356", "Parent" : "58", "Child" : ["65", "66", "67"],
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
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798.grp_sha512_compress_128_fu_356.K_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798.grp_sha512_compress_128_fu_356.S_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_798.grp_sha512_compress_128_fu_356.W_U", "Parent" : "64"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_969", "Parent" : "0", "Child" : ["69", "70", "71", "72"],
		"CDFG" : "sc_muladd",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30183"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30191"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30191"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30191"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30191"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30191"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30191"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30210"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30218"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30218"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30218"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30218"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30218"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30218"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_load_4_fu_30183", "Port" : "in_r"},
					{"ID" : "71", "SubInstance" : "grp_load_3_fu_30210", "Port" : "in_r"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_load_4_fu_30183", "Port" : "in_r"},
					{"ID" : "71", "SubInstance" : "grp_load_3_fu_30210", "Port" : "in_r"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_load_3_fu_30218", "Port" : "in_r"},
					{"ID" : "70", "SubInstance" : "grp_load_4_fu_30191", "Port" : "in_r"}]}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_969.grp_load_4_fu_30183", "Parent" : "68",
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
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_969.grp_load_4_fu_30191", "Parent" : "68",
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
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_969.grp_load_3_fu_30210", "Parent" : "68",
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
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_muladd_fu_969.grp_load_3_fu_30218", "Parent" : "68",
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
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979", "Parent" : "0", "Child" : ["74", "75", "79"],
		"CDFG" : "sha512_update_32_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_32_fu_366"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_378"}],
		"Port" : [
			{"Name" : "md_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_sha512_compress_32_fu_366", "Port" : "md_state"},
					{"ID" : "79", "SubInstance" : "grp_sha512_compress_128_fu_378", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_sha512_compress_32_fu_366", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_sha512_compress_32_fu_366", "Port" : "K"},
					{"ID" : "79", "SubInstance" : "grp_sha512_compress_128_fu_378", "Port" : "K"}]}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979.temp_buf_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979.grp_sha512_compress_32_fu_366", "Parent" : "73", "Child" : ["76", "77", "78"],
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
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979.grp_sha512_compress_32_fu_366.K_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979.grp_sha512_compress_32_fu_366.S_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979.grp_sha512_compress_32_fu_366.W_U", "Parent" : "75"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979.grp_sha512_compress_128_fu_378", "Parent" : "73", "Child" : ["80", "81", "82"],
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
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979.grp_sha512_compress_128_fu_378.K_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979.grp_sha512_compress_128_fu_378.S_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_2_fu_979.grp_sha512_compress_128_fu_378.W_U", "Parent" : "79"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991", "Parent" : "0", "Child" : ["84", "85", "89"],
		"CDFG" : "sha512_update_32_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_32_fu_344"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_356"}],
		"Port" : [
			{"Name" : "md_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_sha512_compress_32_fu_344", "Port" : "md_state"},
					{"ID" : "89", "SubInstance" : "grp_sha512_compress_128_fu_356", "Port" : "md_state"}]},
			{"Name" : "md_curlen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_sha512_compress_32_fu_344", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_sha512_compress_32_fu_344", "Port" : "K"},
					{"ID" : "89", "SubInstance" : "grp_sha512_compress_128_fu_356", "Port" : "K"}]}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991.temp_buf_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991.grp_sha512_compress_32_fu_344", "Parent" : "83", "Child" : ["86", "87", "88"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991.grp_sha512_compress_32_fu_344.K_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991.grp_sha512_compress_32_fu_344.S_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991.grp_sha512_compress_32_fu_344.W_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991.grp_sha512_compress_128_fu_356", "Parent" : "83", "Child" : ["90", "91", "92"],
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
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991.grp_sha512_compress_128_fu_356.K_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991.grp_sha512_compress_128_fu_356.S_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_991.grp_sha512_compress_128_fu_356.W_U", "Parent" : "89"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sc_reduce_fu_1003", "Parent" : "0", "Child" : ["94", "95"],
		"CDFG" : "sc_reduce",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_9584"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_9604"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_load_3_fu_9604", "Port" : "in_r"},
					{"ID" : "94", "SubInstance" : "grp_load_4_fu_9584", "Port" : "in_r"}]}]},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_reduce_fu_1003.grp_load_4_fu_9584", "Parent" : "93",
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
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sc_reduce_fu_1003.grp_load_3_fu_9604", "Parent" : "93",
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
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_tobytes_1_fu_1008", "Parent" : "0",
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
		blocks_in {Type I LastRead 0 FirstWrite -1}
		offset {Type I LastRead 0 FirstWrite -1}
		start {Type I LastRead 0 FirstWrite -1}
		public_key {Type I LastRead 11 FirstWrite -1}
		private_key {Type I LastRead 11 FirstWrite -1}
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
		p_read2050 {Type I LastRead 1 FirstWrite -1}
		p_read2151 {Type I LastRead 2 FirstWrite -1}
		p_read2252 {Type I LastRead 3 FirstWrite -1}
		p_read2353 {Type I LastRead 4 FirstWrite -1}
		p_read2454 {Type I LastRead 5 FirstWrite -1}
		p_read2555 {Type I LastRead 6 FirstWrite -1}
		p_read2656 {Type I LastRead 7 FirstWrite -1}
		p_read2757 {Type I LastRead 8 FirstWrite -1}
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
		p_read4060 {Type I LastRead 1 FirstWrite -1}
		p_read41 {Type I LastRead 1 FirstWrite -1}
		p_read42 {Type I LastRead 1 FirstWrite -1}
		p_read43 {Type I LastRead 1 FirstWrite -1}
		p_read44 {Type I LastRead 1 FirstWrite -1}
		p_read45 {Type I LastRead 1 FirstWrite -1}
		p_read46 {Type I LastRead 1 FirstWrite -1}
		p_read47 {Type I LastRead 1 FirstWrite -1}
		p_read48 {Type I LastRead 1 FirstWrite -1}
		p_read49 {Type I LastRead 1 FirstWrite -1}
		p_read50 {Type I LastRead 1 FirstWrite -1}
		p_read51 {Type I LastRead 1 FirstWrite -1}
		p_read52 {Type I LastRead 1 FirstWrite -1}
		p_read53 {Type I LastRead 1 FirstWrite -1}
		p_read54 {Type I LastRead 1 FirstWrite -1}
		p_read55 {Type I LastRead 1 FirstWrite -1}
		p_read56 {Type I LastRead 1 FirstWrite -1}
		p_read57 {Type I LastRead 1 FirstWrite -1}
		p_read58 {Type I LastRead 1 FirstWrite -1}
		p_read59 {Type I LastRead 1 FirstWrite -1}
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
		in_r {Type I LastRead 11 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_32_1 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 11 FirstWrite -1}
		p_01_idx {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sc_muladd {
		s {Type O LastRead -1 FirstWrite 359}
		a {Type I LastRead 2 FirstWrite -1}
		b {Type I LastRead 2 FirstWrite -1}
		c {Type I LastRead 2 FirstWrite -1}}
	load_4 {
		in_r {Type I LastRead 2 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	load_4 {
		in_r {Type I LastRead 2 FirstWrite -1}
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
		in_r {Type I LastRead 11 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_32 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 11 FirstWrite -1}
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
		in_r {Type I LastRead 11 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_32 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 11 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sc_reduce {
		s {Type IO LastRead 2 FirstWrite -1}}
	load_4 {
		in_r {Type I LastRead 2 FirstWrite -1}
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
	signature { ap_memory {  { signature_address0 mem_address 1 6 }  { signature_ce0 mem_ce 1 1 }  { signature_we0 mem_we 1 1 }  { signature_d0 mem_din 1 8 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 6 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	microblaze_mem { m_axi {  { m_axi_microblaze_mem_AWVALID VALID 1 1 }  { m_axi_microblaze_mem_AWREADY READY 0 1 }  { m_axi_microblaze_mem_AWADDR ADDR 1 32 }  { m_axi_microblaze_mem_AWID ID 1 1 }  { m_axi_microblaze_mem_AWLEN LEN 1 8 }  { m_axi_microblaze_mem_AWSIZE SIZE 1 3 }  { m_axi_microblaze_mem_AWBURST BURST 1 2 }  { m_axi_microblaze_mem_AWLOCK LOCK 1 2 }  { m_axi_microblaze_mem_AWCACHE CACHE 1 4 }  { m_axi_microblaze_mem_AWPROT PROT 1 3 }  { m_axi_microblaze_mem_AWQOS QOS 1 4 }  { m_axi_microblaze_mem_AWREGION REGION 1 4 }  { m_axi_microblaze_mem_AWUSER USER 1 1 }  { m_axi_microblaze_mem_WVALID VALID 1 1 }  { m_axi_microblaze_mem_WREADY READY 0 1 }  { m_axi_microblaze_mem_WDATA DATA 1 32 }  { m_axi_microblaze_mem_WSTRB STRB 1 4 }  { m_axi_microblaze_mem_WLAST LAST 1 1 }  { m_axi_microblaze_mem_WID ID 1 1 }  { m_axi_microblaze_mem_WUSER USER 1 1 }  { m_axi_microblaze_mem_ARVALID VALID 1 1 }  { m_axi_microblaze_mem_ARREADY READY 0 1 }  { m_axi_microblaze_mem_ARADDR ADDR 1 32 }  { m_axi_microblaze_mem_ARID ID 1 1 }  { m_axi_microblaze_mem_ARLEN LEN 1 8 }  { m_axi_microblaze_mem_ARSIZE SIZE 1 3 }  { m_axi_microblaze_mem_ARBURST BURST 1 2 }  { m_axi_microblaze_mem_ARLOCK LOCK 1 2 }  { m_axi_microblaze_mem_ARCACHE CACHE 1 4 }  { m_axi_microblaze_mem_ARPROT PROT 1 3 }  { m_axi_microblaze_mem_ARQOS QOS 1 4 }  { m_axi_microblaze_mem_ARREGION REGION 1 4 }  { m_axi_microblaze_mem_ARUSER USER 1 1 }  { m_axi_microblaze_mem_RVALID VALID 0 1 }  { m_axi_microblaze_mem_RREADY READY 1 1 }  { m_axi_microblaze_mem_RDATA DATA 0 32 }  { m_axi_microblaze_mem_RLAST LAST 0 1 }  { m_axi_microblaze_mem_RID ID 0 1 }  { m_axi_microblaze_mem_RUSER USER 0 1 }  { m_axi_microblaze_mem_RRESP RESP 0 2 }  { m_axi_microblaze_mem_BVALID VALID 0 1 }  { m_axi_microblaze_mem_BREADY READY 1 1 }  { m_axi_microblaze_mem_BRESP RESP 0 2 }  { m_axi_microblaze_mem_BID ID 0 1 }  { m_axi_microblaze_mem_BUSER USER 0 1 } } }
	blocks_in { ap_vld {  { blocks_in in_data 0 64 }  { blocks_in_ap_vld in_vld 0 1 } } }
	offset { ap_vld {  { offset in_data 0 64 }  { offset_ap_vld in_vld 0 1 } } }
	start { ap_none {  { start in_data 0 1 } } }
	public_key { ap_memory {  { public_key_address0 mem_address 1 5 }  { public_key_ce0 mem_ce 1 1 }  { public_key_q0 mem_dout 0 8 }  { public_key_address1 mem_address 1 5 }  { public_key_ce1 mem_ce 1 1 }  { public_key_q1 mem_dout 0 8 } } }
	private_key { ap_memory {  { private_key_address0 mem_address 1 6 }  { private_key_ce0 mem_ce 1 1 }  { private_key_q0 mem_dout 0 8 }  { private_key_address1 mem_address 1 6 }  { private_key_ce1 mem_ce 1 1 }  { private_key_q1 mem_dout 0 8 } } }
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
