set moduleName fe_mul_2
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {fe_mul.2}
set C_modelType { int 320 }
set C_modelArgList {
	{ g_0_read int 32 regular  }
	{ g_1_read int 32 regular  }
	{ g_2_read int 32 regular  }
	{ g_3_read int 32 regular  }
	{ g_4_read int 32 regular  }
	{ g_5_read int 32 regular  }
	{ g_6_read int 32 regular  }
	{ g_7_read int 32 regular  }
	{ g_8_read int 32 regular  }
	{ g_9_read int 32 regular  }
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
	{ "Name" : "g_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_5_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_6_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_7_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_8_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g_9_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ g_0_read sc_in sc_lv 32 signal 0 } 
	{ g_1_read sc_in sc_lv 32 signal 1 } 
	{ g_2_read sc_in sc_lv 32 signal 2 } 
	{ g_3_read sc_in sc_lv 32 signal 3 } 
	{ g_4_read sc_in sc_lv 32 signal 4 } 
	{ g_5_read sc_in sc_lv 32 signal 5 } 
	{ g_6_read sc_in sc_lv 32 signal 6 } 
	{ g_7_read sc_in sc_lv 32 signal 7 } 
	{ g_8_read sc_in sc_lv 32 signal 8 } 
	{ g_9_read sc_in sc_lv 32 signal 9 } 
	{ f_0_read sc_in sc_lv 32 signal 10 } 
	{ f_1_read sc_in sc_lv 32 signal 11 } 
	{ f_2_read sc_in sc_lv 32 signal 12 } 
	{ f_3_read sc_in sc_lv 32 signal 13 } 
	{ f_4_read sc_in sc_lv 32 signal 14 } 
	{ f_5_read sc_in sc_lv 32 signal 15 } 
	{ f_6_read sc_in sc_lv 32 signal 16 } 
	{ f_7_read sc_in sc_lv 32 signal 17 } 
	{ f_8_read sc_in sc_lv 32 signal 18 } 
	{ f_9_read sc_in sc_lv 32 signal 19 } 
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
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "g_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_0_read", "role": "default" }} , 
 	{ "name": "g_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_1_read", "role": "default" }} , 
 	{ "name": "g_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_2_read", "role": "default" }} , 
 	{ "name": "g_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_3_read", "role": "default" }} , 
 	{ "name": "g_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_4_read", "role": "default" }} , 
 	{ "name": "g_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_5_read", "role": "default" }} , 
 	{ "name": "g_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_6_read", "role": "default" }} , 
 	{ "name": "g_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_7_read", "role": "default" }} , 
 	{ "name": "g_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_8_read", "role": "default" }} , 
 	{ "name": "g_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_9_read", "role": "default" }} , 
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
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		f_9_read {Type I LastRead 99 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "198", "Max" : "198"}
	, {"Name" : "Interval", "Min" : "198", "Max" : "198"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	g_0_read { ap_none {  { g_0_read in_data 0 32 } } }
	g_1_read { ap_none {  { g_1_read in_data 0 32 } } }
	g_2_read { ap_none {  { g_2_read in_data 0 32 } } }
	g_3_read { ap_none {  { g_3_read in_data 0 32 } } }
	g_4_read { ap_none {  { g_4_read in_data 0 32 } } }
	g_5_read { ap_none {  { g_5_read in_data 0 32 } } }
	g_6_read { ap_none {  { g_6_read in_data 0 32 } } }
	g_7_read { ap_none {  { g_7_read in_data 0 32 } } }
	g_8_read { ap_none {  { g_8_read in_data 0 32 } } }
	g_9_read { ap_none {  { g_9_read in_data 0 32 } } }
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
