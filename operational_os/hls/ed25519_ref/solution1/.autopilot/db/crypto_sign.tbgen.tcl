set C_TypeInfoList {{ 
"crypto_sign" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"mem": [[], {"array": [ {"scalar": "unsigned char"}, [32768]]}] }, {"num_blocks": [[], {"scalar": "unsigned int"}] }, {"sk": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }, {"signature_out": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }],[],""]
}}
set moduleName crypto_sign
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {crypto_sign}
set C_modelType { int 32 }
set C_modelArgList {
	{ mem int 8 regular {axi_master 0}  }
	{ num_blocks int 32 regular {axi_slave 0}  }
	{ sk int 8 regular {axi_slave 0}  }
	{ signature_out int 8 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "mem","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 32767,"step" : 1}]}]}]} , 
 	{ "Name" : "num_blocks", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num_blocks","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "sk", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}], "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "signature_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "signature_out","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}], "offset" : {"out":128}, "offset_end" : {"out":191}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
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
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"crypto_sign","role":"start","value":"0","valid_bit":"0"},{"name":"crypto_sign","role":"continue","value":"0","valid_bit":"4"},{"name":"crypto_sign","role":"auto_start","value":"0","valid_bit":"7"},{"name":"num_blocks","role":"data","value":"24"},{"name":"sk","role":"data","value":"64"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"crypto_sign","role":"start","value":"0","valid_bit":"0"},{"name":"crypto_sign","role":"done","value":"0","valid_bit":"1"},{"name":"crypto_sign","role":"idle","value":"0","valid_bit":"2"},{"name":"crypto_sign","role":"ready","value":"0","valid_bit":"3"},{"name":"crypto_sign","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"},{"name":"signature_out","role":"data","value":"128"}] },
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
 	{ "name": "m_axi_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "35", "41", "51", "52", "62", "109", "120", "129", "146", "149", "152", "155"],
		"CDFG" : "crypto_sign",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_init_fu_653"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_init_fu_653"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_init_fu_653"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_fu_671"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_final_fu_693"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_final_fu_693"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_final_fu_693"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_128_fu_731"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_128_fu_731"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memmove_fu_766"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_1_fu_781"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_1_fu_781"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_update_32_1_fu_781"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_13_fu_797"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_15_fu_812"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_barrett_reduce_fu_822"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_barrett_reduce_fu_822"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_barrett_reduce_fu_822"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_19_fu_832"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_9_fu_838"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_20_fu_844"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_849"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_849"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_16_fu_856"}],
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "num_blocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_sha512_update_32_fu_671", "Port" : "in_r"}]},
			{"Name" : "signature_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sha512_update_32_1_fu_781", "Port" : "K"},
					{"ID" : "35", "SubInstance" : "grp_sha512_final_fu_693", "Port" : "K"},
					{"ID" : "41", "SubInstance" : "grp_sha512_update_128_fu_731", "Port" : "K"},
					{"ID" : "25", "SubInstance" : "grp_sha512_update_32_fu_671", "Port" : "K"}]},
			{"Name" : "mu", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_crypto_sign_ed25519_15_fu_812", "Port" : "mu"},
					{"ID" : "120", "SubInstance" : "grp_barrett_reduce_fu_822", "Port" : "mu"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_crypto_sign_ed25519_15_fu_812", "Port" : "m"},
					{"ID" : "120", "SubInstance" : "grp_barrett_reduce_fu_822", "Port" : "m"},
					{"ID" : "155", "SubInstance" : "grp_crypto_sign_ed25519_16_fu_856", "Port" : "m"}]},
			{"Name" : "ge25519_base_multipl_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_crypto_sign_ed25519_13_fu_797", "Port" : "ge25519_base_multipl_1"}]},
			{"Name" : "ge25519_base_multipl", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_crypto_sign_ed25519_13_fu_797", "Port" : "ge25519_base_multipl"}]},
			{"Name" : "ge25519_ec2d_v", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_crypto_sign_ed25519_13_fu_797", "Port" : "ge25519_ec2d_v"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_11_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_10_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tx_v_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ty_v_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zi_v_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pk_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.az_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nonce_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hram_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.signature_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_buf_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sck_v_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scs_v_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scsk_v_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ger_x_v_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ger_y_v_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ger_z_v_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ger_t_v_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_state_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_buf_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_init_fu_653", "Parent" : "0",
		"CDFG" : "sha512_init",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671", "Parent" : "0", "Child" : ["26", "27", "31"],
		"CDFG" : "sha512_update_32",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_32_fu_289"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_300"}],
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_sha512_compress_32_fu_289", "Port" : "md_state"},
					{"ID" : "31", "SubInstance" : "grp_sha512_compress_128_fu_300", "Port" : "md_state"}]},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_sha512_compress_32_fu_289", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_sha512_compress_32_fu_289", "Port" : "K"},
					{"ID" : "31", "SubInstance" : "grp_sha512_compress_128_fu_300", "Port" : "K"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671.temp_buf_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671.grp_sha512_compress_32_fu_289", "Parent" : "25", "Child" : ["28", "29", "30"],
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671.grp_sha512_compress_32_fu_289.K_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671.grp_sha512_compress_32_fu_289.S_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671.grp_sha512_compress_32_fu_289.W_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671.grp_sha512_compress_128_fu_300", "Parent" : "25", "Child" : ["32", "33", "34"],
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671.grp_sha512_compress_128_fu_300.K_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671.grp_sha512_compress_128_fu_300.S_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_fu_671.grp_sha512_compress_128_fu_300.W_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_693", "Parent" : "0", "Child" : ["36", "37"],
		"CDFG" : "sha512_final",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_636"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_636"}],
		"Port" : [
			{"Name" : "md_length_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_sha512_compress_128_fu_636", "Port" : "md_state"}]},
			{"Name" : "md_curlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_sha512_compress_128_fu_636", "Port" : "K"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_693.temp_buf_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_693.grp_sha512_compress_128_fu_636", "Parent" : "35", "Child" : ["38", "39", "40"],
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
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_693.grp_sha512_compress_128_fu_636.K_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_693.grp_sha512_compress_128_fu_636.S_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_final_fu_693.grp_sha512_compress_128_fu_636.W_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731", "Parent" : "0", "Child" : ["42", "43", "47"],
		"CDFG" : "sha512_update_128",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_306"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_1_fu_362"}],
		"Port" : [
			{"Name" : "md_length_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_sha512_compress_128_fu_306", "Port" : "md_state"},
					{"ID" : "47", "SubInstance" : "grp_sha512_compress_128_1_fu_362", "Port" : "md_state"}]},
			{"Name" : "md_curlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_sha512_compress_128_1_fu_362", "Port" : "buf_r"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_sha512_compress_128_fu_306", "Port" : "K"},
					{"ID" : "47", "SubInstance" : "grp_sha512_compress_128_1_fu_362", "Port" : "K"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731.temp_buf_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731.grp_sha512_compress_128_fu_306", "Parent" : "41", "Child" : ["44", "45", "46"],
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
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731.grp_sha512_compress_128_fu_306.K_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731.grp_sha512_compress_128_fu_306.S_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731.grp_sha512_compress_128_fu_306.W_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731.grp_sha512_compress_128_1_fu_362", "Parent" : "41", "Child" : ["48", "49", "50"],
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731.grp_sha512_compress_128_1_fu_362.K_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731.grp_sha512_compress_128_1_fu_362.S_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_128_fu_731.grp_sha512_compress_128_1_fu_362.W_U", "Parent" : "47"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_memmove_fu_766", "Parent" : "0",
		"CDFG" : "p_memmove",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781", "Parent" : "0", "Child" : ["53", "54", "58"],
		"CDFG" : "sha512_update_32_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_32_fu_351"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_363"}],
		"Port" : [
			{"Name" : "md_length_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_sha512_compress_32_fu_351", "Port" : "md_state"},
					{"ID" : "58", "SubInstance" : "grp_sha512_compress_128_fu_363", "Port" : "md_state"}]},
			{"Name" : "md_curlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_sha512_compress_32_fu_351", "Port" : "buf_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_sha512_compress_32_fu_351", "Port" : "K"},
					{"ID" : "58", "SubInstance" : "grp_sha512_compress_128_fu_363", "Port" : "K"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781.temp_buf_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781.grp_sha512_compress_32_fu_351", "Parent" : "52", "Child" : ["55", "56", "57"],
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781.grp_sha512_compress_32_fu_351.K_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781.grp_sha512_compress_32_fu_351.S_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781.grp_sha512_compress_32_fu_351.W_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781.grp_sha512_compress_128_fu_363", "Parent" : "52", "Child" : ["59", "60", "61"],
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781.grp_sha512_compress_128_fu_363.K_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781.grp_sha512_compress_128_fu_363.S_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha512_update_32_1_fu_781.grp_sha512_compress_128_fu_363.W_U", "Parent" : "58"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797", "Parent" : "0", "Child" : ["63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "89", "92", "95", "98", "101", "104", "105", "107"],
		"CDFG" : "crypto_sign_ed25519_13",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_choose_t_fu_1365"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_choose_t_fu_1365"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1394"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_17_fu_1402"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_17_fu_1402"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_17_fu_1408"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_14_fu_1424"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_11_fu_1440"}],
		"Port" : [
			{"Name" : "r_x_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415", "Port" : "y_v"},
					{"ID" : "105", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431", "Port" : "y_v"},
					{"ID" : "89", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380", "Port" : "r_v"}]},
			{"Name" : "r_y_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415", "Port" : "x_v"},
					{"ID" : "105", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431", "Port" : "x_v"},
					{"ID" : "89", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380", "Port" : "r_v"}]},
			{"Name" : "r_z_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380", "Port" : "r_v"},
					{"ID" : "107", "SubInstance" : "grp_crypto_sign_ed25519_11_fu_1440", "Port" : "x_v"}]},
			{"Name" : "r_t_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380", "Port" : "x_v"},
					{"ID" : "92", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1394", "Port" : "r_v"}]},
			{"Name" : "s_v", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_crypto_sign_ed25519_14_fu_1424", "Port" : "s_v"}]},
			{"Name" : "ge25519_base_multipl_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_choose_t_fu_1365", "Port" : "ge25519_base_multipl_1"}]},
			{"Name" : "ge25519_base_multipl", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_choose_t_fu_1365", "Port" : "ge25519_base_multipl"}]},
			{"Name" : "ge25519_ec2d_v", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_crypto_sign_ed25519_17_fu_1408", "Port" : "y_v"}]}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.ge25519_ec2d_v_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.a_v_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.b_v_U", "Parent" : "62"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.t1_v_U", "Parent" : "62"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.t2_v_U", "Parent" : "62"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.c_v_U", "Parent" : "62"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.d_v_U", "Parent" : "62"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.e_v_U", "Parent" : "62"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.f_v_U", "Parent" : "62"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.g_v_U", "Parent" : "62"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.h_v_U", "Parent" : "62"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.qt_v_U", "Parent" : "62"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.b_U", "Parent" : "62"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.t_x_v_U", "Parent" : "62"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.t_y_v_U", "Parent" : "62"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.r_temp_x_v_U", "Parent" : "62"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.r_temp_y_v_U", "Parent" : "62"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_choose_t_fu_1365", "Parent" : "62", "Child" : ["81", "82", "83", "84", "85", "88"],
		"CDFG" : "choose_t",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_7_fu_1424"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"}],
		"Port" : [
			{"Name" : "t_x_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "r_x_v"}]},
			{"Name" : "t_y_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "r_y_v"}]},
			{"Name" : "pos_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "ge25519_base_multipl_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "p_x_v"}]},
			{"Name" : "ge25519_base_multipl", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "p_y_v"}]}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_choose_t_fu_1365.ge25519_base_multipl_1_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_choose_t_fu_1365.ge25519_base_multipl_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_choose_t_fu_1365.t_v_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_choose_t_fu_1365.v_v_U", "Parent" : "80"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_choose_t_fu_1365.grp_crypto_sign_ed25519_7_fu_1424", "Parent" : "80", "Child" : ["86", "87"],
		"CDFG" : "crypto_sign_ed25519_7",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_choose_t_fu_1365.grp_crypto_sign_ed25519_7_fu_1424.t_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_choose_t_fu_1365.grp_crypto_sign_ed25519_7_fu_1424.crypto_sign_mac_mpcA_U51", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_choose_t_fu_1365.grp_cmov_aff_fu_1430", "Parent" : "80",
		"CDFG" : "cmov_aff",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_x_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "r_y_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_919", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_9191", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_18_fu_1380", "Parent" : "62", "Child" : ["90", "91"],
		"CDFG" : "crypto_sign_ed25519_18",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_18_fu_1380.t_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_18_fu_1380.crypto_sign_mac_mpcA_x_U63", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_18_fu_1394", "Parent" : "62", "Child" : ["93", "94"],
		"CDFG" : "crypto_sign_ed25519_18",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_18_fu_1394.t_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_18_fu_1394.crypto_sign_mac_mpcA_x_U63", "Parent" : "92"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_17_fu_1402", "Parent" : "62", "Child" : ["96", "97"],
		"CDFG" : "crypto_sign_ed25519_17",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_17_fu_1402.t_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_17_fu_1402.crypto_sign_mac_mpcA_x_U76", "Parent" : "95"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_17_fu_1408", "Parent" : "62", "Child" : ["99", "100"],
		"CDFG" : "crypto_sign_ed25519_17",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_17_fu_1408.t_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_17_fu_1408.crypto_sign_mac_mpcA_x_U76", "Parent" : "98"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_8_fu_1415", "Parent" : "62", "Child" : ["102", "103"],
		"CDFG" : "crypto_sign_ed25519_8",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_8_fu_1415.t_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_8_fu_1415.crypto_sign_mac_mpcA_x_U68", "Parent" : "101"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_14_fu_1424", "Parent" : "62",
		"CDFG" : "crypto_sign_ed25519_14",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_12_fu_1431", "Parent" : "62", "Child" : ["106"],
		"CDFG" : "crypto_sign_ed25519_12",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_12_fu_1431.crypto_sign_mac_mpcA_x_U72", "Parent" : "105"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_11_fu_1440", "Parent" : "62", "Child" : ["108"],
		"CDFG" : "crypto_sign_ed25519_11",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_13_fu_797.grp_crypto_sign_ed25519_11_fu_1440.crypto_sign_mac_mpcA_x_U79", "Parent" : "107"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812", "Parent" : "0", "Child" : ["110", "111"],
		"CDFG" : "crypto_sign_ed25519_15",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_barrett_reduce_fu_153"}],
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_barrett_reduce_fu_153", "Port" : "r_v"}]},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mu", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_barrett_reduce_fu_153", "Port" : "mu"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_barrett_reduce_fu_153", "Port" : "m"}]}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.t_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.grp_barrett_reduce_fu_153", "Parent" : "109", "Child" : ["112", "113", "114", "115", "116", "117"],
		"CDFG" : "barrett_reduce",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reduce_add_sub_fu_355"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reduce_add_sub_fu_355"}],
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_reduce_add_sub_fu_355", "Port" : "r_v"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mu", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_reduce_add_sub_fu_355", "Port" : "m"}]}]},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.grp_barrett_reduce_fu_153.mu_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.grp_barrett_reduce_fu_153.m_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.grp_barrett_reduce_fu_153.q2_U", "Parent" : "111"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.grp_barrett_reduce_fu_153.r1_U", "Parent" : "111"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.grp_barrett_reduce_fu_153.r2_U", "Parent" : "111"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.grp_barrett_reduce_fu_153.grp_reduce_add_sub_fu_355", "Parent" : "111", "Child" : ["118", "119"],
		"CDFG" : "reduce_add_sub",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.grp_barrett_reduce_fu_153.grp_reduce_add_sub_fu_355.m_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_15_fu_812.grp_barrett_reduce_fu_153.grp_reduce_add_sub_fu_355.t_U", "Parent" : "117"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_822", "Parent" : "0", "Child" : ["121", "122", "123", "124", "125", "126"],
		"CDFG" : "barrett_reduce",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reduce_add_sub_fu_355"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reduce_add_sub_fu_355"}],
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_reduce_add_sub_fu_355", "Port" : "r_v"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mu", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_reduce_add_sub_fu_355", "Port" : "m"}]}]},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_822.mu_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_822.m_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_822.q2_U", "Parent" : "120"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_822.r1_U", "Parent" : "120"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_822.r2_U", "Parent" : "120"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_822.grp_reduce_add_sub_fu_355", "Parent" : "120", "Child" : ["127", "128"],
		"CDFG" : "reduce_add_sub",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_822.grp_reduce_add_sub_fu_355.m_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_822.grp_reduce_add_sub_fu_355.t_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832", "Parent" : "0", "Child" : ["130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "143"],
		"CDFG" : "crypto_sign_ed25519_19",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"}],
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150", "Port" : "r_v"}]},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150", "Port" : "y_v"},
					{"ID" : "140", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142", "Port" : "x_v"}]}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.z2_v_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.z9_v_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.z11_v_U", "Parent" : "129"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.z2_5_0_v_U", "Parent" : "129"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.z2_10_0_v_U", "Parent" : "129"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.z2_20_0_v_U", "Parent" : "129"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.z2_50_0_v_U", "Parent" : "129"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.z2_100_0_v_U", "Parent" : "129"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.t0_v_U", "Parent" : "129"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.t1_v_U", "Parent" : "129"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.grp_crypto_sign_ed25519_10_fu_142", "Parent" : "129", "Child" : ["141", "142"],
		"CDFG" : "crypto_sign_ed25519_10",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.grp_crypto_sign_ed25519_10_fu_142.t_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.grp_crypto_sign_ed25519_10_fu_142.crypto_sign_mac_mpcA_x_U89", "Parent" : "140"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.grp_crypto_sign_ed25519_18_fu_150", "Parent" : "129", "Child" : ["144", "145"],
		"CDFG" : "crypto_sign_ed25519_18",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.grp_crypto_sign_ed25519_18_fu_150.t_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_19_fu_832.grp_crypto_sign_ed25519_18_fu_150.crypto_sign_mac_mpcA_x_U63", "Parent" : "143"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_9_fu_838", "Parent" : "0", "Child" : ["147", "148"],
		"CDFG" : "crypto_sign_ed25519_9",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_21_fu_682"}],
		"Port" : [
			{"Name" : "r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_9_fu_838.y_v_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_9_fu_838.grp_crypto_sign_ed25519_21_fu_682", "Parent" : "146",
		"CDFG" : "crypto_sign_ed25519_21",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_20_fu_844", "Parent" : "0", "Child" : ["150", "151"],
		"CDFG" : "crypto_sign_ed25519_20",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_21_fu_632"}],
		"Port" : [
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_20_fu_844.t_v_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_20_fu_844.grp_crypto_sign_ed25519_21_fu_632", "Parent" : "149",
		"CDFG" : "crypto_sign_ed25519_21",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_849", "Parent" : "0", "Child" : ["153", "154"],
		"CDFG" : "crypto_sign_ed25519_18",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_849.t_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_849.crypto_sign_mac_mpcA_x_U63", "Parent" : "152"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_16_fu_856", "Parent" : "0", "Child" : ["156", "157"],
		"CDFG" : "crypto_sign_ed25519_16",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_16_fu_856.m_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_16_fu_856.t_U", "Parent" : "155"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign {
		mem {Type I LastRead 43 FirstWrite -1}
		num_blocks {Type I LastRead 0 FirstWrite -1}
		sk {Type I LastRead 10 FirstWrite -1}
		signature_out {Type O LastRead -1 FirstWrite 49}
		K {Type I LastRead -1 FirstWrite -1}
		mu {Type I LastRead -1 FirstWrite -1}
		m {Type I LastRead -1 FirstWrite -1}
		ge25519_base_multipl_1 {Type I LastRead -1 FirstWrite -1}
		ge25519_base_multipl {Type I LastRead -1 FirstWrite -1}
		ge25519_ec2d_v {Type I LastRead -1 FirstWrite -1}}
	sha512_init {
		md_state {Type O LastRead -1 FirstWrite 0}}
	sha512_update_32 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		md_buf {Type IO LastRead 8 FirstWrite 7}
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
	sha512_final {
		md_length_read {Type I LastRead 0 FirstWrite -1}
		md_state {Type IO LastRead 19 FirstWrite 6}
		md_curlen_read {Type I LastRead 0 FirstWrite -1}
		md_buf {Type IO LastRead 16 FirstWrite 7}
		out_r {Type O LastRead -1 FirstWrite 20}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_update_128 {
		md_length_read {Type I LastRead 0 FirstWrite -1}
		md_state {Type IO LastRead 5 FirstWrite 6}
		md_curlen_read {Type I LastRead 0 FirstWrite -1}
		md_buf {Type IO LastRead 8 FirstWrite 7}
		in_r {Type I LastRead 10 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128_1 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 10 FirstWrite -1}
		p_01_idx {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	p_memmove {
		dst {Type O LastRead -1 FirstWrite 2}
		src {Type I LastRead 1 FirstWrite -1}}
	sha512_update_32_1 {
		md_length_read {Type I LastRead 0 FirstWrite -1}
		md_state {Type IO LastRead 5 FirstWrite 6}
		md_curlen_read {Type I LastRead 0 FirstWrite -1}
		md_buf {Type IO LastRead 8 FirstWrite 8}
		in_r {Type I LastRead 10 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}
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
	crypto_sign_ed25519_13 {
		r_x_v {Type IO LastRead 16 FirstWrite -1}
		r_y_v {Type IO LastRead 16 FirstWrite -1}
		r_z_v {Type IO LastRead 8 FirstWrite -1}
		r_t_v {Type IO LastRead 8 FirstWrite -1}
		s_v {Type I LastRead 3 FirstWrite -1}
		ge25519_base_multipl_1 {Type I LastRead -1 FirstWrite -1}
		ge25519_base_multipl {Type I LastRead -1 FirstWrite -1}
		ge25519_ec2d_v {Type I LastRead -1 FirstWrite -1}}
	choose_t {
		t_x_v {Type IO LastRead 28 FirstWrite 1}
		t_y_v {Type IO LastRead 2 FirstWrite 1}
		pos_r {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 17 FirstWrite -1}
		ge25519_base_multipl_1 {Type I LastRead -1 FirstWrite -1}
		ge25519_base_multipl {Type I LastRead -1 FirstWrite -1}}
	crypto_sign_ed25519_7 {
		r_v {Type IO LastRead 7 FirstWrite 4}
		y_v {Type I LastRead 3 FirstWrite -1}}
	cmov_aff {
		r_x_v {Type IO LastRead 1 FirstWrite 2}
		r_y_v {Type IO LastRead 2 FirstWrite 3}
		p_x_v {Type I LastRead 1 FirstWrite -1}
		tmp_919 {Type I LastRead 0 FirstWrite -1}
		p_y_v {Type I LastRead 2 FirstWrite -1}
		tmp_9191 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	crypto_sign_ed25519_18 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 2 FirstWrite -1}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_18 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 2 FirstWrite -1}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_17 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_17 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_8 {
		r_v {Type IO LastRead 7 FirstWrite 4}
		x_v {Type I LastRead 2 FirstWrite -1}
		y_v {Type I LastRead 3 FirstWrite -1}}
	crypto_sign_ed25519_14 {
		r {Type IO LastRead 6 FirstWrite 2}
		s_v {Type I LastRead 3 FirstWrite -1}}
	crypto_sign_ed25519_12 {
		r_v {Type IO LastRead 5 FirstWrite 2}
		x_v {Type I LastRead 1 FirstWrite -1}
		y_v {Type I LastRead 1 FirstWrite -1}}
	crypto_sign_ed25519_11 {
		r_v {Type IO LastRead 5 FirstWrite 2}
		x_v {Type I LastRead 1 FirstWrite -1}}
	crypto_sign_ed25519_15 {
		r_v {Type IO LastRead 2 FirstWrite 3}
		y_v {Type I LastRead 4 FirstWrite -1}
		mu {Type I LastRead -1 FirstWrite -1}
		m {Type I LastRead -1 FirstWrite -1}}
	barrett_reduce {
		r_v {Type IO LastRead 2 FirstWrite 3}
		x {Type I LastRead 6 FirstWrite -1}
		mu {Type I LastRead -1 FirstWrite -1}
		m {Type I LastRead -1 FirstWrite -1}}
	reduce_add_sub {
		r_v {Type IO LastRead 2 FirstWrite 3}
		m {Type I LastRead -1 FirstWrite -1}}
	barrett_reduce {
		r_v {Type IO LastRead 2 FirstWrite 3}
		x {Type I LastRead 6 FirstWrite -1}
		mu {Type I LastRead -1 FirstWrite -1}
		m {Type I LastRead -1 FirstWrite -1}}
	reduce_add_sub {
		r_v {Type IO LastRead 2 FirstWrite 3}
		m {Type I LastRead -1 FirstWrite -1}}
	crypto_sign_ed25519_19 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_10 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_18 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 2 FirstWrite -1}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_9 {
		r {Type O LastRead -1 FirstWrite 20}
		x_v {Type I LastRead 16 FirstWrite -1}}
	crypto_sign_ed25519_21 {
		r_v {Type IO LastRead 5 FirstWrite 3}}
	crypto_sign_ed25519_20 {
		x_v {Type I LastRead 16 FirstWrite -1}}
	crypto_sign_ed25519_21 {
		r_v {Type IO LastRead 5 FirstWrite 3}}
	crypto_sign_ed25519_18 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 2 FirstWrite -1}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_16 {
		r_v {Type IO LastRead 5 FirstWrite 2}
		y_v {Type I LastRead 1 FirstWrite -1}
		m {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mem { m_axi {  { m_axi_mem_AWVALID VALID 1 1 }  { m_axi_mem_AWREADY READY 0 1 }  { m_axi_mem_AWADDR ADDR 1 32 }  { m_axi_mem_AWID ID 1 1 }  { m_axi_mem_AWLEN LEN 1 8 }  { m_axi_mem_AWSIZE SIZE 1 3 }  { m_axi_mem_AWBURST BURST 1 2 }  { m_axi_mem_AWLOCK LOCK 1 2 }  { m_axi_mem_AWCACHE CACHE 1 4 }  { m_axi_mem_AWPROT PROT 1 3 }  { m_axi_mem_AWQOS QOS 1 4 }  { m_axi_mem_AWREGION REGION 1 4 }  { m_axi_mem_AWUSER USER 1 1 }  { m_axi_mem_WVALID VALID 1 1 }  { m_axi_mem_WREADY READY 0 1 }  { m_axi_mem_WDATA DATA 1 32 }  { m_axi_mem_WSTRB STRB 1 4 }  { m_axi_mem_WLAST LAST 1 1 }  { m_axi_mem_WID ID 1 1 }  { m_axi_mem_WUSER USER 1 1 }  { m_axi_mem_ARVALID VALID 1 1 }  { m_axi_mem_ARREADY READY 0 1 }  { m_axi_mem_ARADDR ADDR 1 32 }  { m_axi_mem_ARID ID 1 1 }  { m_axi_mem_ARLEN LEN 1 8 }  { m_axi_mem_ARSIZE SIZE 1 3 }  { m_axi_mem_ARBURST BURST 1 2 }  { m_axi_mem_ARLOCK LOCK 1 2 }  { m_axi_mem_ARCACHE CACHE 1 4 }  { m_axi_mem_ARPROT PROT 1 3 }  { m_axi_mem_ARQOS QOS 1 4 }  { m_axi_mem_ARREGION REGION 1 4 }  { m_axi_mem_ARUSER USER 1 1 }  { m_axi_mem_RVALID VALID 0 1 }  { m_axi_mem_RREADY READY 1 1 }  { m_axi_mem_RDATA DATA 0 32 }  { m_axi_mem_RLAST LAST 0 1 }  { m_axi_mem_RID ID 0 1 }  { m_axi_mem_RUSER USER 0 1 }  { m_axi_mem_RRESP RESP 0 2 }  { m_axi_mem_BVALID VALID 0 1 }  { m_axi_mem_BREADY READY 1 1 }  { m_axi_mem_BRESP RESP 0 2 }  { m_axi_mem_BID ID 0 1 }  { m_axi_mem_BUSER USER 0 1 } } }
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
