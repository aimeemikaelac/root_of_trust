set C_TypeInfoList {{ 
"contact_discovery" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"operation": [[], {"scalar": "int"}] }, {"contacts_in": [[], {"reference": "0"}] }, {"database_in": [[], {"reference": "0"}] }, {"matched_out": [[], {"reference": "1"}] }, {"matched_finished": [[],{ "pointer":  {"scalar": "int"}}] }, {"error_out": [[],{ "pointer":  {"scalar": "int"}}] }, {"contacts_size_out": [[],{ "pointer":  {"scalar": "int"}}] }],[],""], 
"0": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"2"]}}], 
"1": [ "stream<bool>", {"hls_type": {"stream": [[[[], {"scalar": "bool"}]],"2"]}}],
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
	{ contacts_in_V int 8 regular {axi_s 0 volatile  { contacts_in_V Data } }  }
	{ database_in_V int 8 regular {axi_s 0 volatile  { database_in_V Data } }  }
	{ matched_out_V int 8 regular {axi_s 1 volatile  { matched_out_V Data } }  }
	{ matched_finished int 32 regular {axi_slave 1}  }
	{ error_out int 32 regular {axi_slave 1}  }
	{ contacts_size_out int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "operation", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "operation","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "contacts_in_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "contacts_in.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "database_in_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "database_in.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "matched_out_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "matched_out.V","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "matched_finished", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "matched_finished","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":24}, "offset_end" : {"out":31}} , 
 	{ "Name" : "error_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "error_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":32}, "offset_end" : {"out":39}} , 
 	{ "Name" : "contacts_size_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "contacts_size_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":40}, "offset_end" : {"out":47}} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ contacts_in_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ contacts_in_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ contacts_in_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ database_in_V_TDATA sc_in sc_lv 8 signal 2 } 
	{ database_in_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ database_in_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ matched_out_V_TDATA sc_out sc_lv 8 signal 3 } 
	{ matched_out_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ matched_out_V_TREADY sc_in sc_logic 1 outacc 3 } 
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
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"contact_discovery","role":"start","value":"0","valid_bit":"0"},{"name":"contact_discovery","role":"continue","value":"0","valid_bit":"4"},{"name":"contact_discovery","role":"auto_start","value":"0","valid_bit":"7"},{"name":"operation","role":"data","value":"16"}, {"name":"operation","role":"valid","value":"20","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"contact_discovery","role":"start","value":"0","valid_bit":"0"},{"name":"contact_discovery","role":"done","value":"0","valid_bit":"1"},{"name":"contact_discovery","role":"idle","value":"0","valid_bit":"2"},{"name":"contact_discovery","role":"ready","value":"0","valid_bit":"3"},{"name":"contact_discovery","role":"auto_start","value":"0","valid_bit":"7"},{"name":"matched_finished","role":"data","value":"24"},{"name":"error_out","role":"data","value":"32"},{"name":"contacts_size_out","role":"data","value":"40"}] },
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
 	{ "name": "contacts_in_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "contacts_in_V", "role": "TDATA" }} , 
 	{ "name": "contacts_in_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "contacts_in_V", "role": "TVALID" }} , 
 	{ "name": "contacts_in_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "contacts_in_V", "role": "TREADY" }} , 
 	{ "name": "database_in_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "database_in_V", "role": "TDATA" }} , 
 	{ "name": "database_in_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "database_in_V", "role": "TVALID" }} , 
 	{ "name": "database_in_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "database_in_V", "role": "TREADY" }} , 
 	{ "name": "matched_out_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "matched_out_V", "role": "TDATA" }} , 
 	{ "name": "matched_out_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "matched_out_V", "role": "TVALID" }} , 
 	{ "name": "matched_out_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "matched_out_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
			{"Name" : "contacts_in_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "contacts_in_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "database_in_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "database_in_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "matched_out_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "matched_out_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "matched_finished", "Type" : "None", "Direction" : "O"},
			{"Name" : "error_out", "Type" : "None", "Direction" : "O"},
			{"Name" : "contacts_size_out", "Type" : "None", "Direction" : "O"},
			{"Name" : "contacts_size", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "contacts", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "current_database_ite", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contacts_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_database_ite_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contact_discovery_AXILiteS_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	contact_discovery {
		operation {Type I LastRead 0 FirstWrite -1}
		contacts_in_V {Type I LastRead 4 FirstWrite -1}
		database_in_V {Type I LastRead 4 FirstWrite -1}
		matched_out_V {Type O LastRead -1 FirstWrite 5}
		matched_finished {Type O LastRead -1 FirstWrite 1}
		error_out {Type O LastRead -1 FirstWrite 1}
		contacts_size_out {Type O LastRead -1 FirstWrite 1}
		contacts_size {Type IO LastRead -1 FirstWrite -1}
		contacts {Type IO LastRead -1 FirstWrite -1}
		current_database_ite {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	contacts_in_V { axis {  { contacts_in_V_TDATA in_data 0 8 }  { contacts_in_V_TVALID in_vld 0 1 }  { contacts_in_V_TREADY in_acc 1 1 } } }
	database_in_V { axis {  { database_in_V_TDATA in_data 0 8 }  { database_in_V_TVALID in_vld 0 1 }  { database_in_V_TREADY in_acc 1 1 } } }
	matched_out_V { axis {  { matched_out_V_TDATA out_data 1 8 }  { matched_out_V_TVALID out_vld 1 1 }  { matched_out_V_TREADY out_acc 0 1 } } }
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
