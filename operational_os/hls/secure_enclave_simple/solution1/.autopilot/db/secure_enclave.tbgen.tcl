set C_TypeInfoList {{ 
"secure_enclave" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"secure_storage_in": [[], {"array": ["0", [2]]}] }, {"pin_attempt": [[],"0"] }, {"secure_storage_out": [[], {"array": ["0", [2]]}] }, {"key_out": [[],{ "pointer": "0"}] }, {"counter_in": [[], {"scalar": "unsigned int"}] }, {"increment_counter": [[],{ "pointer":  {"scalar": "int"}}] }, {"reset_counter": [[],{ "pointer":  {"scalar": "int"}}] }],[],""], 
"0": [ "ap_uint<128>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 128}}]],""]}}]
}}
set moduleName secure_enclave
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {secure_enclave}
set C_modelType { int 32 }
set C_modelArgList {
	{ secure_storage_in_V int 128 regular {axi_slave 0}  }
	{ pin_attempt_V int 128 regular {axi_slave 0}  }
	{ secure_storage_out_V int 128 unused {axi_slave 3}  }
	{ key_out_V int 128 regular {pointer 1}  }
	{ counter_in int 32 regular {axi_slave 0}  }
	{ increment_counter int 32 regular {axi_slave 1}  }
	{ reset_counter int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "secure_storage_in_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "secure_storage_in.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}], "offset" : {"in":32}, "offset_end" : {"in":63}} , 
 	{ "Name" : "pin_attempt_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "pin_attempt.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":83}} , 
 	{ "Name" : "secure_storage_out_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 128, "direction" : "NONE", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "secure_storage_out.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}], "offset" : {"in":96}, "offset_end" : {"in":127}} , 
 	{ "Name" : "key_out_V", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "key_out.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "counter_in", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "counter_in","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "increment_counter", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "increment_counter","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":136}, "offset_end" : {"out":143}} , 
 	{ "Name" : "reset_counter", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "reset_counter","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":144}, "offset_end" : {"out":151}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ key_out_V sc_out sc_lv 128 signal 3 } 
	{ key_out_V_ap_vld sc_out sc_logic 1 outvld 3 } 
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
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"secure_enclave","role":"start","value":"0","valid_bit":"0"},{"name":"secure_enclave","role":"continue","value":"0","valid_bit":"4"},{"name":"secure_enclave","role":"auto_start","value":"0","valid_bit":"7"},{"name":"secure_storage_in_V","role":"data","value":"32"},{"name":"pin_attempt_V","role":"data","value":"64"}, {"name":"pin_attempt_V","role":"valid","value":"80","valid_bit":"0"},{"name":"secure_storage_out_V","role":"data","value":"96"},{"name":"counter_in","role":"data","value":"128"}, {"name":"counter_in","role":"valid","value":"132","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"secure_enclave","role":"start","value":"0","valid_bit":"0"},{"name":"secure_enclave","role":"done","value":"0","valid_bit":"1"},{"name":"secure_enclave","role":"idle","value":"0","valid_bit":"2"},{"name":"secure_enclave","role":"ready","value":"0","valid_bit":"3"},{"name":"secure_enclave","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"},{"name":"secure_storage_out_V","role":"data","value":"96"},{"name":"increment_counter","role":"data","value":"136"}, {"name":"increment_counter","role":"valid","value":"140","valid_bit":"0"},{"name":"reset_counter","role":"data","value":"144"}, {"name":"reset_counter","role":"valid","value":"148","valid_bit":"0"}] },
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
 	{ "name": "key_out_V", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "key_out_V", "role": "default" }} , 
 	{ "name": "key_out_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "key_out_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "secure_enclave",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "secure_storage_in_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "pin_attempt_V", "Type" : "Vld", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "pin_attempt_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "secure_storage_out_V", "Type" : "Memory", "Direction" : "X"},
		{"Name" : "key_out_V", "Type" : "OVld", "Direction" : "O"},
		{"Name" : "counter_in", "Type" : "Vld", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "counter_in_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "increment_counter", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "reset_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secure_enclave_AXILiteS_s_axi_U", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set Spec2ImplPortList { 
	key_out_V { ap_ovld {  { key_out_V out_data 1 128 }  { key_out_V_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
