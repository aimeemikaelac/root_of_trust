set C_TypeInfoList {{ 
"filesystem_encrypt" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"buffer": [[], {"array": ["0", [32768]]}] }, {"iv": [[],"0"] }, {"key": [[],"0"] }, {"length": [[], {"scalar": "unsigned int"}] }],[],""], 
"0": [ "ap_uint<128>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 128}}]],""]}}]
}}
set moduleName filesystem_encrypt
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {filesystem_encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_V int 128 regular {axi_master 2}  }
	{ iv_V int 128 regular {axi_slave 0}  }
	{ key_V int 128 regular  }
	{ length_r int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_V", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "buffer.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 32767,"step" : 1}]}]}]} , 
 	{ "Name" : "iv_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "iv.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":35}} , 
 	{ "Name" : "key_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "key.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "length_r", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "length","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":36}, "offset_end" : {"in":43}} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_buffer_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_buffer_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_buffer_V_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_buffer_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_buffer_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_buffer_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_buffer_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_buffer_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_buffer_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_buffer_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_buffer_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_buffer_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_WDATA sc_out sc_lv 128 signal 0 } 
	{ m_axi_buffer_V_WSTRB sc_out sc_lv 16 signal 0 } 
	{ m_axi_buffer_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_buffer_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_buffer_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_buffer_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_buffer_V_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_buffer_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_buffer_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_buffer_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_buffer_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_buffer_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_buffer_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_buffer_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_buffer_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_buffer_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_RDATA sc_in sc_lv 128 signal 0 } 
	{ m_axi_buffer_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_buffer_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_buffer_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_buffer_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_buffer_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_buffer_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_buffer_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ key_V sc_in sc_lv 128 signal 2 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"iv_V","role":"data","value":"16"},{"name":"length_r","role":"data","value":"36"}, {"name":"length_r","role":"valid","value":"40","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[] },
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
 	{ "name": "m_axi_buffer_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_buffer_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_buffer_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_buffer_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWID" }} , 
 	{ "name": "m_axi_buffer_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_buffer_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_buffer_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_buffer_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_buffer_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_buffer_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_buffer_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_buffer_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_buffer_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_buffer_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_buffer_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_buffer_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "buffer_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_buffer_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buffer_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_buffer_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_buffer_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "WID" }} , 
 	{ "name": "m_axi_buffer_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_buffer_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_buffer_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_buffer_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_buffer_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARID" }} , 
 	{ "name": "m_axi_buffer_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_buffer_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_buffer_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_buffer_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_buffer_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_buffer_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_buffer_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_buffer_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_buffer_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_buffer_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_buffer_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_buffer_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "buffer_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_buffer_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_buffer_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "RID" }} , 
 	{ "name": "m_axi_buffer_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_buffer_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_buffer_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_buffer_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_buffer_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_buffer_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "BID" }} , 
 	{ "name": "m_axi_buffer_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "BUSER" }} , 
 	{ "name": "key_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "key_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "filesystem_encrypt",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buffer_V", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "buffer_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "buffer_V_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "buffer_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "buffer_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "buffer_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "iv_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "length_r", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "length_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sboxes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_aestest_fu_744", "Port" : "sboxes"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filesystem_encrypt_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filesystem_encrypt_buffer_V_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_temp_out_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aestest_fu_744", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "aestest",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "inptext_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sboxes", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aestest_fu_744.sboxes_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	filesystem_encrypt {
		buffer_V {Type IO LastRead 74 FirstWrite 42}
		iv_V {Type I LastRead 0 FirstWrite -1}
		key_V {Type I LastRead 0 FirstWrite -1}
		length_r {Type I LastRead 0 FirstWrite -1}
		sboxes {Type I LastRead -1 FirstWrite -1}}
	aestest {
		inptext_V_read {Type I LastRead 0 FirstWrite -1}
		key_V_read {Type I LastRead 0 FirstWrite -1}
		sboxes {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "78850", "Max" : "78850"}
	, {"Name" : "Interval", "Min" : "78851", "Max" : "78851"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buffer_V { m_axi {  { m_axi_buffer_V_AWVALID VALID 1 1 }  { m_axi_buffer_V_AWREADY READY 0 1 }  { m_axi_buffer_V_AWADDR ADDR 1 32 }  { m_axi_buffer_V_AWID ID 1 1 }  { m_axi_buffer_V_AWLEN LEN 1 8 }  { m_axi_buffer_V_AWSIZE SIZE 1 3 }  { m_axi_buffer_V_AWBURST BURST 1 2 }  { m_axi_buffer_V_AWLOCK LOCK 1 2 }  { m_axi_buffer_V_AWCACHE CACHE 1 4 }  { m_axi_buffer_V_AWPROT PROT 1 3 }  { m_axi_buffer_V_AWQOS QOS 1 4 }  { m_axi_buffer_V_AWREGION REGION 1 4 }  { m_axi_buffer_V_AWUSER USER 1 1 }  { m_axi_buffer_V_WVALID VALID 1 1 }  { m_axi_buffer_V_WREADY READY 0 1 }  { m_axi_buffer_V_WDATA DATA 1 128 }  { m_axi_buffer_V_WSTRB STRB 1 16 }  { m_axi_buffer_V_WLAST LAST 1 1 }  { m_axi_buffer_V_WID ID 1 1 }  { m_axi_buffer_V_WUSER USER 1 1 }  { m_axi_buffer_V_ARVALID VALID 1 1 }  { m_axi_buffer_V_ARREADY READY 0 1 }  { m_axi_buffer_V_ARADDR ADDR 1 32 }  { m_axi_buffer_V_ARID ID 1 1 }  { m_axi_buffer_V_ARLEN LEN 1 8 }  { m_axi_buffer_V_ARSIZE SIZE 1 3 }  { m_axi_buffer_V_ARBURST BURST 1 2 }  { m_axi_buffer_V_ARLOCK LOCK 1 2 }  { m_axi_buffer_V_ARCACHE CACHE 1 4 }  { m_axi_buffer_V_ARPROT PROT 1 3 }  { m_axi_buffer_V_ARQOS QOS 1 4 }  { m_axi_buffer_V_ARREGION REGION 1 4 }  { m_axi_buffer_V_ARUSER USER 1 1 }  { m_axi_buffer_V_RVALID VALID 0 1 }  { m_axi_buffer_V_RREADY READY 1 1 }  { m_axi_buffer_V_RDATA DATA 0 128 }  { m_axi_buffer_V_RLAST LAST 0 1 }  { m_axi_buffer_V_RID ID 0 1 }  { m_axi_buffer_V_RUSER USER 0 1 }  { m_axi_buffer_V_RRESP RESP 0 2 }  { m_axi_buffer_V_BVALID VALID 0 1 }  { m_axi_buffer_V_BREADY READY 1 1 }  { m_axi_buffer_V_BRESP RESP 0 2 }  { m_axi_buffer_V_BID ID 0 1 }  { m_axi_buffer_V_BUSER USER 0 1 } } }
	key_V { ap_none {  { key_V in_data 0 128 } } }
}

set busDeadlockParameterList { 
	{ buffer_V { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ buffer_V 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ buffer_V 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
