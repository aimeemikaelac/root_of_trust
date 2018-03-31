set C_TypeInfoList {{ 
"contact_discovery" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"operation": [[], {"scalar": "int"}] }, {"contact_in": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }, {"database_in": [[], {"array": [ {"scalar": "unsigned char"}, [64]]}] }, {"matched_out": [[], {"array": [ {"scalar": "bool"}, [7500]]}] }, {"matched_finished": [[],{ "pointer":  {"scalar": "int"}}] }, {"error_out": [[],{ "pointer":  {"scalar": "int"}}] }, {"database_size_out": [[],{ "pointer":  {"scalar": "int"}}] }, {"contacts_size_out": [[],{ "pointer":  {"scalar": "int"}}] }],[],""]
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
	{ contact_in int 8 regular {axi_slave 0}  }
	{ database_in int 8 regular {axi_slave 0}  }
	{ matched_out int 1 regular {axi_slave 1}  }
	{ matched_finished int 32 regular {axi_slave 1}  }
	{ error_out int 32 regular {axi_slave 1}  }
	{ database_size_out int 32 regular {axi_slave 1}  }
	{ contacts_size_out int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "operation", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "operation","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "contact_in", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "contact_in","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}], "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "database_in", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "database_in","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}], "offset" : {"in":128}, "offset_end" : {"in":191}} , 
 	{ "Name" : "matched_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "matched_out","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 7499,"step" : 1}]}]}], "offset" : {"out":8192}, "offset_end" : {"out":16383}} , 
 	{ "Name" : "matched_finished", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "matched_finished","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":16384}, "offset_end" : {"out":16391}} , 
 	{ "Name" : "error_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "error_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":16392}, "offset_end" : {"out":16399}} , 
 	{ "Name" : "database_size_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "database_size_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":16400}, "offset_end" : {"out":16407}} , 
 	{ "Name" : "contacts_size_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "contacts_size_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":16408}, "offset_end" : {"out":16415}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 15 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 15 signal -1 } 
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
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"contact_discovery","role":"start","value":"0","valid_bit":"0"},{"name":"contact_discovery","role":"continue","value":"0","valid_bit":"4"},{"name":"contact_discovery","role":"auto_start","value":"0","valid_bit":"7"},{"name":"operation","role":"data","value":"16"}, {"name":"operation","role":"valid","value":"20","valid_bit":"0"},{"name":"contact_in","role":"data","value":"64"},{"name":"database_in","role":"data","value":"128"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"contact_discovery","role":"start","value":"0","valid_bit":"0"},{"name":"contact_discovery","role":"done","value":"0","valid_bit":"1"},{"name":"contact_discovery","role":"idle","value":"0","valid_bit":"2"},{"name":"contact_discovery","role":"ready","value":"0","valid_bit":"3"},{"name":"contact_discovery","role":"auto_start","value":"0","valid_bit":"7"},{"name":"matched_out","role":"data","value":"8192"},{"name":"matched_finished","role":"data","value":"16384"},{"name":"error_out","role":"data","value":"16392"},{"name":"database_size_out","role":"data","value":"16400"},{"name":"contacts_size_out","role":"data","value":"16408"}] },
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
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "contact_discovery",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_match_db_contact_fu_302"}],
		"Port" : [
			{"Name" : "operation", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "operation_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contact_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "database_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matched_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matched_finished", "Type" : "None", "Direction" : "O"},
			{"Name" : "error_out", "Type" : "None", "Direction" : "O"},
			{"Name" : "database_size_out", "Type" : "None", "Direction" : "O"},
			{"Name" : "contacts_size_out", "Type" : "None", "Direction" : "O"},
			{"Name" : "contacts_size", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "database_size", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "contacts", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_match_db_contact_fu_302", "Port" : "contacts"}]},
			{"Name" : "database", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_match_db_contact_fu_302", "Port" : "database"}]},
			{"Name" : "results", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_match_db_contact_fu_302", "Port" : "results"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contacts_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.database_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.results_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contact_discovery_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_match_db_contact_fu_302", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "match_db_contact",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "database_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_compare_fu_288", "Port" : "contacts"}]},
			{"Name" : "database", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_compare_fu_288", "Port" : "database"}]},
			{"Name" : "results", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_match_db_contact_fu_302.grp_compare_fu_288", "Parent" : "5",
		"CDFG" : "compare",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "db_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "database", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	contact_discovery {
		operation {Type I LastRead 0 FirstWrite -1}
		contact_in {Type I LastRead 2 FirstWrite -1}
		database_in {Type I LastRead 2 FirstWrite -1}
		matched_out {Type O LastRead -1 FirstWrite 4}
		matched_finished {Type O LastRead -1 FirstWrite 0}
		error_out {Type O LastRead -1 FirstWrite 0}
		database_size_out {Type O LastRead -1 FirstWrite 0}
		contacts_size_out {Type O LastRead -1 FirstWrite 0}
		contacts_size {Type IO LastRead -1 FirstWrite -1}
		database_size {Type IO LastRead -1 FirstWrite -1}
		contacts {Type IO LastRead -1 FirstWrite -1}
		database {Type IO LastRead -1 FirstWrite -1}
		results {Type IO LastRead -1 FirstWrite -1}}
	match_db_contact {
		database_index {Type I LastRead 0 FirstWrite -1}
		contacts {Type I LastRead 32 FirstWrite -1}
		database {Type I LastRead 32 FirstWrite -1}
		results {Type O LastRead -1 FirstWrite 4223}}
	compare {
		db_index {Type I LastRead 0 FirstWrite -1}
		contacts_index {Type I LastRead 0 FirstWrite -1}
		contacts {Type I LastRead 32 FirstWrite -1}
		database {Type I LastRead 32 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "31695005"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "31695006"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
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
