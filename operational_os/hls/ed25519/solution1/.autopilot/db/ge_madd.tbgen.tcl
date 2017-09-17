set moduleName ge_madd
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ge_madd}
set C_modelType { int 1280 }
set C_modelArgList {
	{ p_read40 int 32 regular  }
	{ p_read141 int 32 regular  }
	{ p_read242 int 32 regular  }
	{ p_read343 int 32 regular  }
	{ p_read444 int 32 regular  }
	{ p_read545 int 32 regular  }
	{ p_read646 int 32 regular  }
	{ p_read747 int 32 regular  }
	{ p_read848 int 32 regular  }
	{ p_read949 int 32 regular  }
	{ p_read1040 int 32 regular  }
	{ p_read1141 int 32 regular  }
	{ p_read1242 int 32 regular  }
	{ p_read1343 int 32 regular  }
	{ p_read1444 int 32 regular  }
	{ p_read1545 int 32 regular  }
	{ p_read1646 int 32 regular  }
	{ p_read1747 int 32 regular  }
	{ p_read1848 int 32 regular  }
	{ p_read1949 int 32 regular  }
	{ p_read2050 int 32 regular  }
	{ p_read2151 int 32 regular  }
	{ p_read2252 int 32 regular  }
	{ p_read2353 int 32 regular  }
	{ p_read2454 int 32 regular  }
	{ p_read2555 int 32 regular  }
	{ p_read2656 int 32 regular  }
	{ p_read2757 int 32 regular  }
	{ p_read2858 int 32 regular  }
	{ p_read2959 int 32 regular  }
	{ p_read3050 int 32 regular  }
	{ p_read3151 int 32 regular  }
	{ p_read3252 int 32 regular  }
	{ p_read3353 int 32 regular  }
	{ p_read3454 int 32 regular  }
	{ p_read3555 int 32 regular  }
	{ p_read3656 int 32 regular  }
	{ p_read3757 int 32 regular  }
	{ p_read3858 int 32 regular  }
	{ p_read3959 int 32 regular  }
	{ p_read4060 int 32 regular  }
	{ p_read41 int 32 regular  }
	{ p_read42 int 32 regular  }
	{ p_read43 int 32 regular  }
	{ p_read44 int 32 regular  }
	{ p_read45 int 32 regular  }
	{ p_read46 int 32 regular  }
	{ p_read47 int 32 regular  }
	{ p_read48 int 32 regular  }
	{ p_read49 int 32 regular  }
	{ p_read50 int 32 regular  }
	{ p_read51 int 32 regular  }
	{ p_read52 int 32 regular  }
	{ p_read53 int 32 regular  }
	{ p_read54 int 32 regular  }
	{ p_read55 int 32 regular  }
	{ p_read56 int 32 regular  }
	{ p_read57 int 32 regular  }
	{ p_read58 int 32 regular  }
	{ p_read59 int 32 regular  }
	{ p_read60 int 32 regular  }
	{ p_read61 int 32 regular  }
	{ p_read62 int 32 regular  }
	{ p_read63 int 32 regular  }
	{ p_read64 int 32 regular  }
	{ p_read65 int 32 regular  }
	{ p_read66 int 32 regular  }
	{ p_read67 int 32 regular  }
	{ p_read68 int 32 regular  }
	{ p_read69 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read40", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read141", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read242", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read343", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read444", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read545", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read646", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read747", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read848", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read949", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1040", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1141", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1242", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1343", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1444", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1545", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1646", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1747", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1848", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1949", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2050", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2151", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2252", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2353", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2454", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2555", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2656", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2757", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2858", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2959", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3050", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3151", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3252", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3353", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3454", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3555", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3656", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3757", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3858", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3959", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4060", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read49", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read50", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read51", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read52", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read53", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read54", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read55", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read56", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read57", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read58", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read59", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read60", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read61", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read62", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read63", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read64", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read65", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read67", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read68", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read69", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1280} ]}
# RTL Port declarations: 
set portNum 116
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read40 sc_in sc_lv 32 signal 0 } 
	{ p_read141 sc_in sc_lv 32 signal 1 } 
	{ p_read242 sc_in sc_lv 32 signal 2 } 
	{ p_read343 sc_in sc_lv 32 signal 3 } 
	{ p_read444 sc_in sc_lv 32 signal 4 } 
	{ p_read545 sc_in sc_lv 32 signal 5 } 
	{ p_read646 sc_in sc_lv 32 signal 6 } 
	{ p_read747 sc_in sc_lv 32 signal 7 } 
	{ p_read848 sc_in sc_lv 32 signal 8 } 
	{ p_read949 sc_in sc_lv 32 signal 9 } 
	{ p_read1040 sc_in sc_lv 32 signal 10 } 
	{ p_read1141 sc_in sc_lv 32 signal 11 } 
	{ p_read1242 sc_in sc_lv 32 signal 12 } 
	{ p_read1343 sc_in sc_lv 32 signal 13 } 
	{ p_read1444 sc_in sc_lv 32 signal 14 } 
	{ p_read1545 sc_in sc_lv 32 signal 15 } 
	{ p_read1646 sc_in sc_lv 32 signal 16 } 
	{ p_read1747 sc_in sc_lv 32 signal 17 } 
	{ p_read1848 sc_in sc_lv 32 signal 18 } 
	{ p_read1949 sc_in sc_lv 32 signal 19 } 
	{ p_read2050 sc_in sc_lv 32 signal 20 } 
	{ p_read2151 sc_in sc_lv 32 signal 21 } 
	{ p_read2252 sc_in sc_lv 32 signal 22 } 
	{ p_read2353 sc_in sc_lv 32 signal 23 } 
	{ p_read2454 sc_in sc_lv 32 signal 24 } 
	{ p_read2555 sc_in sc_lv 32 signal 25 } 
	{ p_read2656 sc_in sc_lv 32 signal 26 } 
	{ p_read2757 sc_in sc_lv 32 signal 27 } 
	{ p_read2858 sc_in sc_lv 32 signal 28 } 
	{ p_read2959 sc_in sc_lv 32 signal 29 } 
	{ p_read3050 sc_in sc_lv 32 signal 30 } 
	{ p_read3151 sc_in sc_lv 32 signal 31 } 
	{ p_read3252 sc_in sc_lv 32 signal 32 } 
	{ p_read3353 sc_in sc_lv 32 signal 33 } 
	{ p_read3454 sc_in sc_lv 32 signal 34 } 
	{ p_read3555 sc_in sc_lv 32 signal 35 } 
	{ p_read3656 sc_in sc_lv 32 signal 36 } 
	{ p_read3757 sc_in sc_lv 32 signal 37 } 
	{ p_read3858 sc_in sc_lv 32 signal 38 } 
	{ p_read3959 sc_in sc_lv 32 signal 39 } 
	{ p_read4060 sc_in sc_lv 32 signal 40 } 
	{ p_read41 sc_in sc_lv 32 signal 41 } 
	{ p_read42 sc_in sc_lv 32 signal 42 } 
	{ p_read43 sc_in sc_lv 32 signal 43 } 
	{ p_read44 sc_in sc_lv 32 signal 44 } 
	{ p_read45 sc_in sc_lv 32 signal 45 } 
	{ p_read46 sc_in sc_lv 32 signal 46 } 
	{ p_read47 sc_in sc_lv 32 signal 47 } 
	{ p_read48 sc_in sc_lv 32 signal 48 } 
	{ p_read49 sc_in sc_lv 32 signal 49 } 
	{ p_read50 sc_in sc_lv 32 signal 50 } 
	{ p_read51 sc_in sc_lv 32 signal 51 } 
	{ p_read52 sc_in sc_lv 32 signal 52 } 
	{ p_read53 sc_in sc_lv 32 signal 53 } 
	{ p_read54 sc_in sc_lv 32 signal 54 } 
	{ p_read55 sc_in sc_lv 32 signal 55 } 
	{ p_read56 sc_in sc_lv 32 signal 56 } 
	{ p_read57 sc_in sc_lv 32 signal 57 } 
	{ p_read58 sc_in sc_lv 32 signal 58 } 
	{ p_read59 sc_in sc_lv 32 signal 59 } 
	{ p_read60 sc_in sc_lv 32 signal 60 } 
	{ p_read61 sc_in sc_lv 32 signal 61 } 
	{ p_read62 sc_in sc_lv 32 signal 62 } 
	{ p_read63 sc_in sc_lv 32 signal 63 } 
	{ p_read64 sc_in sc_lv 32 signal 64 } 
	{ p_read65 sc_in sc_lv 32 signal 65 } 
	{ p_read66 sc_in sc_lv 32 signal 66 } 
	{ p_read67 sc_in sc_lv 32 signal 67 } 
	{ p_read68 sc_in sc_lv 32 signal 68 } 
	{ p_read69 sc_in sc_lv 32 signal 69 } 
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
 	{ "name": "p_read40", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read40", "role": "default" }} , 
 	{ "name": "p_read141", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read141", "role": "default" }} , 
 	{ "name": "p_read242", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read242", "role": "default" }} , 
 	{ "name": "p_read343", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read343", "role": "default" }} , 
 	{ "name": "p_read444", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read444", "role": "default" }} , 
 	{ "name": "p_read545", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read545", "role": "default" }} , 
 	{ "name": "p_read646", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read646", "role": "default" }} , 
 	{ "name": "p_read747", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read747", "role": "default" }} , 
 	{ "name": "p_read848", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read848", "role": "default" }} , 
 	{ "name": "p_read949", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read949", "role": "default" }} , 
 	{ "name": "p_read1040", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1040", "role": "default" }} , 
 	{ "name": "p_read1141", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1141", "role": "default" }} , 
 	{ "name": "p_read1242", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1242", "role": "default" }} , 
 	{ "name": "p_read1343", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1343", "role": "default" }} , 
 	{ "name": "p_read1444", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1444", "role": "default" }} , 
 	{ "name": "p_read1545", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1545", "role": "default" }} , 
 	{ "name": "p_read1646", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1646", "role": "default" }} , 
 	{ "name": "p_read1747", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1747", "role": "default" }} , 
 	{ "name": "p_read1848", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1848", "role": "default" }} , 
 	{ "name": "p_read1949", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1949", "role": "default" }} , 
 	{ "name": "p_read2050", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2050", "role": "default" }} , 
 	{ "name": "p_read2151", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2151", "role": "default" }} , 
 	{ "name": "p_read2252", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2252", "role": "default" }} , 
 	{ "name": "p_read2353", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2353", "role": "default" }} , 
 	{ "name": "p_read2454", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2454", "role": "default" }} , 
 	{ "name": "p_read2555", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2555", "role": "default" }} , 
 	{ "name": "p_read2656", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2656", "role": "default" }} , 
 	{ "name": "p_read2757", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2757", "role": "default" }} , 
 	{ "name": "p_read2858", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2858", "role": "default" }} , 
 	{ "name": "p_read2959", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2959", "role": "default" }} , 
 	{ "name": "p_read3050", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3050", "role": "default" }} , 
 	{ "name": "p_read3151", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3151", "role": "default" }} , 
 	{ "name": "p_read3252", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3252", "role": "default" }} , 
 	{ "name": "p_read3353", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3353", "role": "default" }} , 
 	{ "name": "p_read3454", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3454", "role": "default" }} , 
 	{ "name": "p_read3555", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3555", "role": "default" }} , 
 	{ "name": "p_read3656", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3656", "role": "default" }} , 
 	{ "name": "p_read3757", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3757", "role": "default" }} , 
 	{ "name": "p_read3858", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3858", "role": "default" }} , 
 	{ "name": "p_read3959", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3959", "role": "default" }} , 
 	{ "name": "p_read4060", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4060", "role": "default" }} , 
 	{ "name": "p_read41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read41", "role": "default" }} , 
 	{ "name": "p_read42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read42", "role": "default" }} , 
 	{ "name": "p_read43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read43", "role": "default" }} , 
 	{ "name": "p_read44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read44", "role": "default" }} , 
 	{ "name": "p_read45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read45", "role": "default" }} , 
 	{ "name": "p_read46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read46", "role": "default" }} , 
 	{ "name": "p_read47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read47", "role": "default" }} , 
 	{ "name": "p_read48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read48", "role": "default" }} , 
 	{ "name": "p_read49", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read49", "role": "default" }} , 
 	{ "name": "p_read50", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read50", "role": "default" }} , 
 	{ "name": "p_read51", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read51", "role": "default" }} , 
 	{ "name": "p_read52", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read52", "role": "default" }} , 
 	{ "name": "p_read53", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read53", "role": "default" }} , 
 	{ "name": "p_read54", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read54", "role": "default" }} , 
 	{ "name": "p_read55", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read55", "role": "default" }} , 
 	{ "name": "p_read56", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read56", "role": "default" }} , 
 	{ "name": "p_read57", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read57", "role": "default" }} , 
 	{ "name": "p_read58", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read58", "role": "default" }} , 
 	{ "name": "p_read59", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read59", "role": "default" }} , 
 	{ "name": "p_read60", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read60", "role": "default" }} , 
 	{ "name": "p_read61", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read61", "role": "default" }} , 
 	{ "name": "p_read62", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read62", "role": "default" }} , 
 	{ "name": "p_read63", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read63", "role": "default" }} , 
 	{ "name": "p_read64", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read64", "role": "default" }} , 
 	{ "name": "p_read65", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read65", "role": "default" }} , 
 	{ "name": "p_read66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read66", "role": "default" }} , 
 	{ "name": "p_read67", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read67", "role": "default" }} , 
 	{ "name": "p_read68", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read68", "role": "default" }} , 
 	{ "name": "p_read69", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read69", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_1026"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_1309"}],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_add_fu_707", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_sub_fu_708", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_mul_fu_867", "Parent" : "0",
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
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_mul_fu_1026", "Parent" : "0",
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
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_mul_1_fu_1309", "Parent" : "0",
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
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		p_read2050 {Type I LastRead 2 FirstWrite -1}
		p_read2151 {Type I LastRead 3 FirstWrite -1}
		p_read2252 {Type I LastRead 4 FirstWrite -1}
		p_read2353 {Type I LastRead 5 FirstWrite -1}
		p_read2454 {Type I LastRead 6 FirstWrite -1}
		p_read2555 {Type I LastRead 7 FirstWrite -1}
		p_read2656 {Type I LastRead 8 FirstWrite -1}
		p_read2757 {Type I LastRead 9 FirstWrite -1}
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
		p_read4060 {Type I LastRead 2 FirstWrite -1}
		p_read41 {Type I LastRead 2 FirstWrite -1}
		p_read42 {Type I LastRead 2 FirstWrite -1}
		p_read43 {Type I LastRead 2 FirstWrite -1}
		p_read44 {Type I LastRead 2 FirstWrite -1}
		p_read45 {Type I LastRead 2 FirstWrite -1}
		p_read46 {Type I LastRead 2 FirstWrite -1}
		p_read47 {Type I LastRead 2 FirstWrite -1}
		p_read48 {Type I LastRead 2 FirstWrite -1}
		p_read49 {Type I LastRead 2 FirstWrite -1}
		p_read50 {Type I LastRead 2 FirstWrite -1}
		p_read51 {Type I LastRead 2 FirstWrite -1}
		p_read52 {Type I LastRead 2 FirstWrite -1}
		p_read53 {Type I LastRead 2 FirstWrite -1}
		p_read54 {Type I LastRead 2 FirstWrite -1}
		p_read55 {Type I LastRead 2 FirstWrite -1}
		p_read56 {Type I LastRead 2 FirstWrite -1}
		p_read57 {Type I LastRead 2 FirstWrite -1}
		p_read58 {Type I LastRead 2 FirstWrite -1}
		p_read59 {Type I LastRead 2 FirstWrite -1}
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
		g_9_read {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "417", "Max" : "417"}
	, {"Name" : "Interval", "Min" : "417", "Max" : "417"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read40 { ap_none {  { p_read40 in_data 0 32 } } }
	p_read141 { ap_none {  { p_read141 in_data 0 32 } } }
	p_read242 { ap_none {  { p_read242 in_data 0 32 } } }
	p_read343 { ap_none {  { p_read343 in_data 0 32 } } }
	p_read444 { ap_none {  { p_read444 in_data 0 32 } } }
	p_read545 { ap_none {  { p_read545 in_data 0 32 } } }
	p_read646 { ap_none {  { p_read646 in_data 0 32 } } }
	p_read747 { ap_none {  { p_read747 in_data 0 32 } } }
	p_read848 { ap_none {  { p_read848 in_data 0 32 } } }
	p_read949 { ap_none {  { p_read949 in_data 0 32 } } }
	p_read1040 { ap_none {  { p_read1040 in_data 0 32 } } }
	p_read1141 { ap_none {  { p_read1141 in_data 0 32 } } }
	p_read1242 { ap_none {  { p_read1242 in_data 0 32 } } }
	p_read1343 { ap_none {  { p_read1343 in_data 0 32 } } }
	p_read1444 { ap_none {  { p_read1444 in_data 0 32 } } }
	p_read1545 { ap_none {  { p_read1545 in_data 0 32 } } }
	p_read1646 { ap_none {  { p_read1646 in_data 0 32 } } }
	p_read1747 { ap_none {  { p_read1747 in_data 0 32 } } }
	p_read1848 { ap_none {  { p_read1848 in_data 0 32 } } }
	p_read1949 { ap_none {  { p_read1949 in_data 0 32 } } }
	p_read2050 { ap_none {  { p_read2050 in_data 0 32 } } }
	p_read2151 { ap_none {  { p_read2151 in_data 0 32 } } }
	p_read2252 { ap_none {  { p_read2252 in_data 0 32 } } }
	p_read2353 { ap_none {  { p_read2353 in_data 0 32 } } }
	p_read2454 { ap_none {  { p_read2454 in_data 0 32 } } }
	p_read2555 { ap_none {  { p_read2555 in_data 0 32 } } }
	p_read2656 { ap_none {  { p_read2656 in_data 0 32 } } }
	p_read2757 { ap_none {  { p_read2757 in_data 0 32 } } }
	p_read2858 { ap_none {  { p_read2858 in_data 0 32 } } }
	p_read2959 { ap_none {  { p_read2959 in_data 0 32 } } }
	p_read3050 { ap_none {  { p_read3050 in_data 0 32 } } }
	p_read3151 { ap_none {  { p_read3151 in_data 0 32 } } }
	p_read3252 { ap_none {  { p_read3252 in_data 0 32 } } }
	p_read3353 { ap_none {  { p_read3353 in_data 0 32 } } }
	p_read3454 { ap_none {  { p_read3454 in_data 0 32 } } }
	p_read3555 { ap_none {  { p_read3555 in_data 0 32 } } }
	p_read3656 { ap_none {  { p_read3656 in_data 0 32 } } }
	p_read3757 { ap_none {  { p_read3757 in_data 0 32 } } }
	p_read3858 { ap_none {  { p_read3858 in_data 0 32 } } }
	p_read3959 { ap_none {  { p_read3959 in_data 0 32 } } }
	p_read4060 { ap_none {  { p_read4060 in_data 0 32 } } }
	p_read41 { ap_none {  { p_read41 in_data 0 32 } } }
	p_read42 { ap_none {  { p_read42 in_data 0 32 } } }
	p_read43 { ap_none {  { p_read43 in_data 0 32 } } }
	p_read44 { ap_none {  { p_read44 in_data 0 32 } } }
	p_read45 { ap_none {  { p_read45 in_data 0 32 } } }
	p_read46 { ap_none {  { p_read46 in_data 0 32 } } }
	p_read47 { ap_none {  { p_read47 in_data 0 32 } } }
	p_read48 { ap_none {  { p_read48 in_data 0 32 } } }
	p_read49 { ap_none {  { p_read49 in_data 0 32 } } }
	p_read50 { ap_none {  { p_read50 in_data 0 32 } } }
	p_read51 { ap_none {  { p_read51 in_data 0 32 } } }
	p_read52 { ap_none {  { p_read52 in_data 0 32 } } }
	p_read53 { ap_none {  { p_read53 in_data 0 32 } } }
	p_read54 { ap_none {  { p_read54 in_data 0 32 } } }
	p_read55 { ap_none {  { p_read55 in_data 0 32 } } }
	p_read56 { ap_none {  { p_read56 in_data 0 32 } } }
	p_read57 { ap_none {  { p_read57 in_data 0 32 } } }
	p_read58 { ap_none {  { p_read58 in_data 0 32 } } }
	p_read59 { ap_none {  { p_read59 in_data 0 32 } } }
	p_read60 { ap_none {  { p_read60 in_data 0 32 } } }
	p_read61 { ap_none {  { p_read61 in_data 0 32 } } }
	p_read62 { ap_none {  { p_read62 in_data 0 32 } } }
	p_read63 { ap_none {  { p_read63 in_data 0 32 } } }
	p_read64 { ap_none {  { p_read64 in_data 0 32 } } }
	p_read65 { ap_none {  { p_read65 in_data 0 32 } } }
	p_read66 { ap_none {  { p_read66 in_data 0 32 } } }
	p_read67 { ap_none {  { p_read67 in_data 0 32 } } }
	p_read68 { ap_none {  { p_read68 in_data 0 32 } } }
	p_read69 { ap_none {  { p_read69 in_data 0 32 } } }
}
