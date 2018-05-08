set C_TypeInfoList {{ 
"contact_discovery" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"operation": [[], {"scalar": "int"}] }, {"contact_in": [[],"0"] }, {"db_mem": [[], {"array": ["0", [8388608]]}] }, {"offset": [[], {"scalar": "long long unsigned int"}] }, {"db_size_in": [[], {"scalar": "unsigned int"}] }, {"error_out": [[],{ "pointer":  {"scalar": "int"}}] }, {"contacts_size_out": [[],{ "pointer":  {"scalar": "int"}}] }, {"results_out": [[], {"reference": "1"}] }, {"current_offset": [[],{ "pointer":  {"scalar": "long long unsigned int"}}] }],[],""], 
"1": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"2"]}}], 
"0": [ "hash", {"typedef": [[[],"3"],""]}], 
"3": [ "ap_uint<512>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 512}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName contact_discovery
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {contact_discovery}
set C_modelType { void 0 }
set C_modelArgList {
	{ operation int 32 regular {axi_slave 0}  }
	{ contact_in_V int 512 regular {axi_slave 0}  }
	{ db_mem_V int 512 regular {axi_master 0}  }
	{ offset int 64 regular {axi_slave 0}  }
	{ db_size_in int 32 regular {axi_slave 0}  }
	{ error_out int 32 regular {axi_slave 1}  }
	{ contacts_size_out int 32 regular {axi_slave 1}  }
	{ results_out_V int 8 regular {axi_s 1 volatile  { results_out_V Data } }  }
	{ current_offset int 64 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "operation", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "operation","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "contact_in_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "contact_in.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":91}} , 
 	{ "Name" : "db_mem_V", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "db_mem.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 8388607,"step" : 1}]}]}]} , 
 	{ "Name" : "offset", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "offset","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":92}, "offset_end" : {"in":103}} , 
 	{ "Name" : "db_size_in", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "db_size_in","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "error_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "error_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":112}, "offset_end" : {"out":119}} , 
 	{ "Name" : "contacts_size_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "contacts_size_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":120}, "offset_end" : {"out":127}} , 
 	{ "Name" : "results_out_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "results_out.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "current_offset", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "current_offset","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":128}, "offset_end" : {"out":139}} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_db_mem_V_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_db_mem_V_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_db_mem_V_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_db_mem_V_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_db_mem_V_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_db_mem_V_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_db_mem_V_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_db_mem_V_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_db_mem_V_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_db_mem_V_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_db_mem_V_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_db_mem_V_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_db_mem_V_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_db_mem_V_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_db_mem_V_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_db_mem_V_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_db_mem_V_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_db_mem_V_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_db_mem_V_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_db_mem_V_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_db_mem_V_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_db_mem_V_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_db_mem_V_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_db_mem_V_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_db_mem_V_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_db_mem_V_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_db_mem_V_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_db_mem_V_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_db_mem_V_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_db_mem_V_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_db_mem_V_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_db_mem_V_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_db_mem_V_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_db_mem_V_BUSER sc_in sc_lv 1 signal 2 } 
	{ results_out_V_TDATA sc_out sc_lv 8 signal 7 } 
	{ results_out_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ results_out_V_TREADY sc_in sc_logic 1 outacc 7 } 
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
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"contact_discovery","role":"start","value":"0","valid_bit":"0"},{"name":"contact_discovery","role":"continue","value":"0","valid_bit":"4"},{"name":"contact_discovery","role":"auto_start","value":"0","valid_bit":"7"},{"name":"operation","role":"data","value":"16"}, {"name":"operation","role":"valid","value":"20","valid_bit":"0"},{"name":"contact_in_V","role":"data","value":"24"},{"name":"offset","role":"data","value":"92"},{"name":"db_size_in","role":"data","value":"104"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"contact_discovery","role":"start","value":"0","valid_bit":"0"},{"name":"contact_discovery","role":"done","value":"0","valid_bit":"1"},{"name":"contact_discovery","role":"idle","value":"0","valid_bit":"2"},{"name":"contact_discovery","role":"ready","value":"0","valid_bit":"3"},{"name":"contact_discovery","role":"auto_start","value":"0","valid_bit":"7"},{"name":"error_out","role":"data","value":"112"},{"name":"contacts_size_out","role":"data","value":"120"},{"name":"current_offset","role":"data","value":"128"}] },
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
 	{ "name": "m_axi_db_mem_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_db_mem_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_db_mem_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_db_mem_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWID" }} , 
 	{ "name": "m_axi_db_mem_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_db_mem_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_db_mem_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_db_mem_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_db_mem_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_db_mem_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_db_mem_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_db_mem_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_db_mem_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_db_mem_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_db_mem_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_db_mem_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "db_mem_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_db_mem_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "db_mem_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_db_mem_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_db_mem_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "WID" }} , 
 	{ "name": "m_axi_db_mem_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_db_mem_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_db_mem_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_db_mem_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_db_mem_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARID" }} , 
 	{ "name": "m_axi_db_mem_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_db_mem_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_db_mem_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_db_mem_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_db_mem_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_db_mem_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_db_mem_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_db_mem_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_db_mem_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_db_mem_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_db_mem_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_db_mem_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "db_mem_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_db_mem_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_db_mem_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "RID" }} , 
 	{ "name": "m_axi_db_mem_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_db_mem_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "db_mem_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_db_mem_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_db_mem_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_db_mem_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "db_mem_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_db_mem_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "BID" }} , 
 	{ "name": "m_axi_db_mem_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "db_mem_V", "role": "BUSER" }} , 
 	{ "name": "results_out_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "results_out_V", "role": "TDATA" }} , 
 	{ "name": "results_out_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "results_out_V", "role": "TVALID" }} , 
 	{ "name": "results_out_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "results_out_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "contact_discovery",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "operation", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "operation_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contact_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "db_mem_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "db_mem_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "db_mem_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "db_size_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "error_out", "Type" : "None", "Direction" : "O"},
			{"Name" : "contacts_size_out", "Type" : "None", "Direction" : "O"},
			{"Name" : "results_out_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "results_out_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "current_offset", "Type" : "None", "Direction" : "O"},
			{"Name" : "contacts_size", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "contacts_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_match_db_contact_fu_316", "Port" : "contacts_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contacts_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contact_discovery_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contact_discovery_db_mem_V_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_match_db_contact_fu_316", "Parent" : "0",
		"CDFG" : "match_db_contact",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "db_item_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	contact_discovery {
		operation {Type I LastRead 0 FirstWrite -1}
		contact_in_V {Type I LastRead 0 FirstWrite -1}
		db_mem_V {Type I LastRead 76 FirstWrite -1}
		offset {Type I LastRead 0 FirstWrite -1}
		db_size_in {Type I LastRead 0 FirstWrite -1}
		error_out {Type O LastRead -1 FirstWrite 0}
		contacts_size_out {Type O LastRead -1 FirstWrite 0}
		results_out_V {Type O LastRead -1 FirstWrite 75}
		current_offset {Type O LastRead -1 FirstWrite 76}
		contacts_size {Type IO LastRead -1 FirstWrite -1}
		contacts_V {Type IO LastRead -1 FirstWrite -1}}
	match_db_contact {
		db_item_V {Type I LastRead 1 FirstWrite -1}
		contacts_V {Type I LastRead 64 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	db_mem_V { m_axi {  { m_axi_db_mem_V_AWVALID VALID 1 1 }  { m_axi_db_mem_V_AWREADY READY 0 1 }  { m_axi_db_mem_V_AWADDR ADDR 1 64 }  { m_axi_db_mem_V_AWID ID 1 1 }  { m_axi_db_mem_V_AWLEN LEN 1 8 }  { m_axi_db_mem_V_AWSIZE SIZE 1 3 }  { m_axi_db_mem_V_AWBURST BURST 1 2 }  { m_axi_db_mem_V_AWLOCK LOCK 1 2 }  { m_axi_db_mem_V_AWCACHE CACHE 1 4 }  { m_axi_db_mem_V_AWPROT PROT 1 3 }  { m_axi_db_mem_V_AWQOS QOS 1 4 }  { m_axi_db_mem_V_AWREGION REGION 1 4 }  { m_axi_db_mem_V_AWUSER USER 1 1 }  { m_axi_db_mem_V_WVALID VALID 1 1 }  { m_axi_db_mem_V_WREADY READY 0 1 }  { m_axi_db_mem_V_WDATA DATA 1 512 }  { m_axi_db_mem_V_WSTRB STRB 1 64 }  { m_axi_db_mem_V_WLAST LAST 1 1 }  { m_axi_db_mem_V_WID ID 1 1 }  { m_axi_db_mem_V_WUSER USER 1 1 }  { m_axi_db_mem_V_ARVALID VALID 1 1 }  { m_axi_db_mem_V_ARREADY READY 0 1 }  { m_axi_db_mem_V_ARADDR ADDR 1 64 }  { m_axi_db_mem_V_ARID ID 1 1 }  { m_axi_db_mem_V_ARLEN LEN 1 8 }  { m_axi_db_mem_V_ARSIZE SIZE 1 3 }  { m_axi_db_mem_V_ARBURST BURST 1 2 }  { m_axi_db_mem_V_ARLOCK LOCK 1 2 }  { m_axi_db_mem_V_ARCACHE CACHE 1 4 }  { m_axi_db_mem_V_ARPROT PROT 1 3 }  { m_axi_db_mem_V_ARQOS QOS 1 4 }  { m_axi_db_mem_V_ARREGION REGION 1 4 }  { m_axi_db_mem_V_ARUSER USER 1 1 }  { m_axi_db_mem_V_RVALID VALID 0 1 }  { m_axi_db_mem_V_RREADY READY 1 1 }  { m_axi_db_mem_V_RDATA DATA 0 512 }  { m_axi_db_mem_V_RLAST LAST 0 1 }  { m_axi_db_mem_V_RID ID 0 1 }  { m_axi_db_mem_V_RUSER USER 0 1 }  { m_axi_db_mem_V_RRESP RESP 0 2 }  { m_axi_db_mem_V_BVALID VALID 0 1 }  { m_axi_db_mem_V_BREADY READY 1 1 }  { m_axi_db_mem_V_BRESP RESP 0 2 }  { m_axi_db_mem_V_BID ID 0 1 }  { m_axi_db_mem_V_BUSER USER 0 1 } } }
	results_out_V { axis {  { results_out_V_TDATA out_data 1 8 }  { results_out_V_TVALID out_vld 1 1 }  { results_out_V_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
	{ db_mem_V { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 4 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ db_mem_V 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ db_mem_V 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
