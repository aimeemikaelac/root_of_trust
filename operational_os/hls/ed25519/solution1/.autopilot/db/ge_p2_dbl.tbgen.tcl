set moduleName ge_p2_dbl
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ge_p2_dbl}
set C_modelType { int 1280 }
set C_modelArgList {
	{ p_read41 int 32 regular  }
	{ p_read142 int 32 regular  }
	{ p_read243 int 32 regular  }
	{ p_read344 int 32 regular  }
	{ p_read445 int 32 regular  }
	{ p_read546 int 32 regular  }
	{ p_read647 int 32 regular  }
	{ p_read748 int 32 regular  }
	{ p_read849 int 32 regular  }
	{ p_read950 int 32 regular  }
	{ p_read1051 int 32 regular  }
	{ p_read1152 int 32 regular  }
	{ p_read1253 int 32 regular  }
	{ p_read1354 int 32 regular  }
	{ p_read1455 int 32 regular  }
	{ p_read1556 int 32 regular  }
	{ p_read1657 int 32 regular  }
	{ p_read1758 int 32 regular  }
	{ p_read1859 int 32 regular  }
	{ p_read1960 int 32 regular  }
	{ p_read2040 int 32 regular  }
	{ p_read2141 int 32 regular  }
	{ p_read2242 int 32 regular  }
	{ p_read2343 int 32 regular  }
	{ p_read2444 int 32 regular  }
	{ p_read2545 int 32 regular  }
	{ p_read2646 int 32 regular  }
	{ p_read2747 int 32 regular  }
	{ p_read2848 int 32 regular  }
	{ p_read2949 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read142", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read243", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read344", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read445", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read546", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read647", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read748", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read849", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read950", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1051", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1152", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1253", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1354", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1455", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1556", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1657", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1758", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1859", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1960", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2040", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2141", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2242", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2343", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2444", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2545", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2646", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2747", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2848", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2949", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1280} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read41 sc_in sc_lv 32 signal 0 } 
	{ p_read142 sc_in sc_lv 32 signal 1 } 
	{ p_read243 sc_in sc_lv 32 signal 2 } 
	{ p_read344 sc_in sc_lv 32 signal 3 } 
	{ p_read445 sc_in sc_lv 32 signal 4 } 
	{ p_read546 sc_in sc_lv 32 signal 5 } 
	{ p_read647 sc_in sc_lv 32 signal 6 } 
	{ p_read748 sc_in sc_lv 32 signal 7 } 
	{ p_read849 sc_in sc_lv 32 signal 8 } 
	{ p_read950 sc_in sc_lv 32 signal 9 } 
	{ p_read1051 sc_in sc_lv 32 signal 10 } 
	{ p_read1152 sc_in sc_lv 32 signal 11 } 
	{ p_read1253 sc_in sc_lv 32 signal 12 } 
	{ p_read1354 sc_in sc_lv 32 signal 13 } 
	{ p_read1455 sc_in sc_lv 32 signal 14 } 
	{ p_read1556 sc_in sc_lv 32 signal 15 } 
	{ p_read1657 sc_in sc_lv 32 signal 16 } 
	{ p_read1758 sc_in sc_lv 32 signal 17 } 
	{ p_read1859 sc_in sc_lv 32 signal 18 } 
	{ p_read1960 sc_in sc_lv 32 signal 19 } 
	{ p_read2040 sc_in sc_lv 32 signal 20 } 
	{ p_read2141 sc_in sc_lv 32 signal 21 } 
	{ p_read2242 sc_in sc_lv 32 signal 22 } 
	{ p_read2343 sc_in sc_lv 32 signal 23 } 
	{ p_read2444 sc_in sc_lv 32 signal 24 } 
	{ p_read2545 sc_in sc_lv 32 signal 25 } 
	{ p_read2646 sc_in sc_lv 32 signal 26 } 
	{ p_read2747 sc_in sc_lv 32 signal 27 } 
	{ p_read2848 sc_in sc_lv 32 signal 28 } 
	{ p_read2949 sc_in sc_lv 32 signal 29 } 
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
	{ ap_return_10 sc_out sc_lv 32 signal -1 } 
	{ ap_return_11 sc_out sc_lv 32 signal -1 } 
	{ ap_return_12 sc_out sc_lv 32 signal -1 } 
	{ ap_return_13 sc_out sc_lv 32 signal -1 } 
	{ ap_return_14 sc_out sc_lv 32 signal -1 } 
	{ ap_return_15 sc_out sc_lv 32 signal -1 } 
	{ ap_return_16 sc_out sc_lv 32 signal -1 } 
	{ ap_return_17 sc_out sc_lv 32 signal -1 } 
	{ ap_return_18 sc_out sc_lv 32 signal -1 } 
	{ ap_return_19 sc_out sc_lv 32 signal -1 } 
	{ ap_return_20 sc_out sc_lv 32 signal -1 } 
	{ ap_return_21 sc_out sc_lv 32 signal -1 } 
	{ ap_return_22 sc_out sc_lv 32 signal -1 } 
	{ ap_return_23 sc_out sc_lv 32 signal -1 } 
	{ ap_return_24 sc_out sc_lv 32 signal -1 } 
	{ ap_return_25 sc_out sc_lv 32 signal -1 } 
	{ ap_return_26 sc_out sc_lv 32 signal -1 } 
	{ ap_return_27 sc_out sc_lv 32 signal -1 } 
	{ ap_return_28 sc_out sc_lv 32 signal -1 } 
	{ ap_return_29 sc_out sc_lv 32 signal -1 } 
	{ ap_return_30 sc_out sc_lv 32 signal -1 } 
	{ ap_return_31 sc_out sc_lv 32 signal -1 } 
	{ ap_return_32 sc_out sc_lv 32 signal -1 } 
	{ ap_return_33 sc_out sc_lv 32 signal -1 } 
	{ ap_return_34 sc_out sc_lv 32 signal -1 } 
	{ ap_return_35 sc_out sc_lv 32 signal -1 } 
	{ ap_return_36 sc_out sc_lv 32 signal -1 } 
	{ ap_return_37 sc_out sc_lv 32 signal -1 } 
	{ ap_return_38 sc_out sc_lv 32 signal -1 } 
	{ ap_return_39 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read41", "role": "default" }} , 
 	{ "name": "p_read142", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read142", "role": "default" }} , 
 	{ "name": "p_read243", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read243", "role": "default" }} , 
 	{ "name": "p_read344", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read344", "role": "default" }} , 
 	{ "name": "p_read445", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read445", "role": "default" }} , 
 	{ "name": "p_read546", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read546", "role": "default" }} , 
 	{ "name": "p_read647", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read647", "role": "default" }} , 
 	{ "name": "p_read748", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read748", "role": "default" }} , 
 	{ "name": "p_read849", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read849", "role": "default" }} , 
 	{ "name": "p_read950", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read950", "role": "default" }} , 
 	{ "name": "p_read1051", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1051", "role": "default" }} , 
 	{ "name": "p_read1152", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1152", "role": "default" }} , 
 	{ "name": "p_read1253", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1253", "role": "default" }} , 
 	{ "name": "p_read1354", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1354", "role": "default" }} , 
 	{ "name": "p_read1455", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1455", "role": "default" }} , 
 	{ "name": "p_read1556", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1556", "role": "default" }} , 
 	{ "name": "p_read1657", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1657", "role": "default" }} , 
 	{ "name": "p_read1758", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1758", "role": "default" }} , 
 	{ "name": "p_read1859", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1859", "role": "default" }} , 
 	{ "name": "p_read1960", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1960", "role": "default" }} , 
 	{ "name": "p_read2040", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2040", "role": "default" }} , 
 	{ "name": "p_read2141", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2141", "role": "default" }} , 
 	{ "name": "p_read2242", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2242", "role": "default" }} , 
 	{ "name": "p_read2343", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2343", "role": "default" }} , 
 	{ "name": "p_read2444", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2444", "role": "default" }} , 
 	{ "name": "p_read2545", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2545", "role": "default" }} , 
 	{ "name": "p_read2646", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2646", "role": "default" }} , 
 	{ "name": "p_read2747", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2747", "role": "default" }} , 
 	{ "name": "p_read2848", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2848", "role": "default" }} , 
 	{ "name": "p_read2949", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2949", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }} , 
 	{ "name": "ap_return_38", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_38", "role": "default" }} , 
 	{ "name": "ap_return_39", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_39", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_add_fu_402", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_sub_fu_495", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_sq_fu_545", "Parent" : "0",
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
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_sq2_fu_602", "Parent" : "0",
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
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		f_9_read {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "414", "Max" : "414"}
	, {"Name" : "Interval", "Min" : "414", "Max" : "414"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read41 { ap_none {  { p_read41 in_data 0 32 } } }
	p_read142 { ap_none {  { p_read142 in_data 0 32 } } }
	p_read243 { ap_none {  { p_read243 in_data 0 32 } } }
	p_read344 { ap_none {  { p_read344 in_data 0 32 } } }
	p_read445 { ap_none {  { p_read445 in_data 0 32 } } }
	p_read546 { ap_none {  { p_read546 in_data 0 32 } } }
	p_read647 { ap_none {  { p_read647 in_data 0 32 } } }
	p_read748 { ap_none {  { p_read748 in_data 0 32 } } }
	p_read849 { ap_none {  { p_read849 in_data 0 32 } } }
	p_read950 { ap_none {  { p_read950 in_data 0 32 } } }
	p_read1051 { ap_none {  { p_read1051 in_data 0 32 } } }
	p_read1152 { ap_none {  { p_read1152 in_data 0 32 } } }
	p_read1253 { ap_none {  { p_read1253 in_data 0 32 } } }
	p_read1354 { ap_none {  { p_read1354 in_data 0 32 } } }
	p_read1455 { ap_none {  { p_read1455 in_data 0 32 } } }
	p_read1556 { ap_none {  { p_read1556 in_data 0 32 } } }
	p_read1657 { ap_none {  { p_read1657 in_data 0 32 } } }
	p_read1758 { ap_none {  { p_read1758 in_data 0 32 } } }
	p_read1859 { ap_none {  { p_read1859 in_data 0 32 } } }
	p_read1960 { ap_none {  { p_read1960 in_data 0 32 } } }
	p_read2040 { ap_none {  { p_read2040 in_data 0 32 } } }
	p_read2141 { ap_none {  { p_read2141 in_data 0 32 } } }
	p_read2242 { ap_none {  { p_read2242 in_data 0 32 } } }
	p_read2343 { ap_none {  { p_read2343 in_data 0 32 } } }
	p_read2444 { ap_none {  { p_read2444 in_data 0 32 } } }
	p_read2545 { ap_none {  { p_read2545 in_data 0 32 } } }
	p_read2646 { ap_none {  { p_read2646 in_data 0 32 } } }
	p_read2747 { ap_none {  { p_read2747 in_data 0 32 } } }
	p_read2848 { ap_none {  { p_read2848 in_data 0 32 } } }
	p_read2949 { ap_none {  { p_read2949 in_data 0 32 } } }
}
