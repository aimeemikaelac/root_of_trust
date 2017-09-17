set moduleName fe_copy
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {fe_copy}
set C_modelType { int 320 }
set C_modelArgList {
	{ f_0_read int 32 regular  }
	{ f_1_read int 32 regular  }
	{ f_2_read int 32 regular  }
	{ f_3_read int 32 regular  }
	{ f_4_read int 32 regular  }
	{ f_5_read int 32 regular  }
	{ f_6_read int 32 regular  }
	{ f_7_read int 32 regular  }
	{ f_8_read int 32 regular  }
	{ f_9_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "f_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f_5_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f_6_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f_7_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f_8_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f_9_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 320} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ f_0_read sc_in sc_lv 32 signal 0 } 
	{ f_1_read sc_in sc_lv 32 signal 1 } 
	{ f_2_read sc_in sc_lv 32 signal 2 } 
	{ f_3_read sc_in sc_lv 32 signal 3 } 
	{ f_4_read sc_in sc_lv 32 signal 4 } 
	{ f_5_read sc_in sc_lv 32 signal 5 } 
	{ f_6_read sc_in sc_lv 32 signal 6 } 
	{ f_7_read sc_in sc_lv 32 signal 7 } 
	{ f_8_read sc_in sc_lv 32 signal 8 } 
	{ f_9_read sc_in sc_lv 32 signal 9 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
	{ ap_return_8 sc_out sc_lv 32 signal -1 } 
	{ ap_return_9 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "f_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_0_read", "role": "default" }} , 
 	{ "name": "f_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_1_read", "role": "default" }} , 
 	{ "name": "f_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_2_read", "role": "default" }} , 
 	{ "name": "f_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_3_read", "role": "default" }} , 
 	{ "name": "f_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_4_read", "role": "default" }} , 
 	{ "name": "f_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_5_read", "role": "default" }} , 
 	{ "name": "f_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_6_read", "role": "default" }} , 
 	{ "name": "f_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_7_read", "role": "default" }} , 
 	{ "name": "f_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_8_read", "role": "default" }} , 
 	{ "name": "f_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_9_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		f_9_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	f_0_read { ap_none {  { f_0_read in_data 0 32 } } }
	f_1_read { ap_none {  { f_1_read in_data 0 32 } } }
	f_2_read { ap_none {  { f_2_read in_data 0 32 } } }
	f_3_read { ap_none {  { f_3_read in_data 0 32 } } }
	f_4_read { ap_none {  { f_4_read in_data 0 32 } } }
	f_5_read { ap_none {  { f_5_read in_data 0 32 } } }
	f_6_read { ap_none {  { f_6_read in_data 0 32 } } }
	f_7_read { ap_none {  { f_7_read in_data 0 32 } } }
	f_8_read { ap_none {  { f_8_read in_data 0 32 } } }
	f_9_read { ap_none {  { f_9_read in_data 0 32 } } }
}
