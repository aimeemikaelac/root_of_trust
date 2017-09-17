set moduleName cmov
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {cmov}
set C_modelType { int 960 }
set C_modelArgList {
	{ t_yplusx_0_read int 32 regular  }
	{ t_yplusx_1_read int 32 regular  }
	{ t_yplusx_2_read int 32 regular  }
	{ t_yplusx_3_read int 32 regular  }
	{ t_yplusx_4_read int 32 regular  }
	{ t_yplusx_5_read int 32 regular  }
	{ t_yplusx_6_read int 32 regular  }
	{ t_yplusx_7_read int 32 regular  }
	{ t_yplusx_8_read int 32 regular  }
	{ t_yplusx_9_read int 32 regular  }
	{ t_yminusx_0_read int 32 regular  }
	{ t_yminusx_1_read int 32 regular  }
	{ t_yminusx_2_read int 32 regular  }
	{ t_yminusx_3_read int 32 regular  }
	{ t_yminusx_4_read int 32 regular  }
	{ t_yminusx_5_read int 32 regular  }
	{ t_yminusx_6_read int 32 regular  }
	{ t_yminusx_7_read int 32 regular  }
	{ t_yminusx_8_read int 32 regular  }
	{ t_yminusx_9_read int 32 regular  }
	{ t_xy2d_0_read int 32 regular  }
	{ t_xy2d_1_read int 32 regular  }
	{ t_xy2d_2_read int 32 regular  }
	{ t_xy2d_3_read int 32 regular  }
	{ t_xy2d_4_read int 32 regular  }
	{ t_xy2d_5_read int 32 regular  }
	{ t_xy2d_6_read int 32 regular  }
	{ t_xy2d_7_read int 32 regular  }
	{ t_xy2d_8_read int 32 regular  }
	{ t_xy2d_9_read int 32 regular  }
	{ tmp_756 int 5 regular  }
	{ u_yplusx_offset int 4 regular  }
	{ tmp_7561 int 5 regular  }
	{ u_yminusx_offset int 4 regular  }
	{ tmp_7562 int 5 regular  }
	{ u_xy2d_offset int 4 regular  }
	{ b int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t_yplusx_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yplusx_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yplusx_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yplusx_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yplusx_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yplusx_5_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yplusx_6_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yplusx_7_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yplusx_8_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yplusx_9_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_5_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_6_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_7_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_8_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_yminusx_9_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_5_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_6_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_7_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_8_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_xy2d_9_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_756", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "u_yplusx_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_7561", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "u_yminusx_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_7562", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "u_xy2d_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 960} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_yplusx_0_read sc_in sc_lv 32 signal 0 } 
	{ t_yplusx_1_read sc_in sc_lv 32 signal 1 } 
	{ t_yplusx_2_read sc_in sc_lv 32 signal 2 } 
	{ t_yplusx_3_read sc_in sc_lv 32 signal 3 } 
	{ t_yplusx_4_read sc_in sc_lv 32 signal 4 } 
	{ t_yplusx_5_read sc_in sc_lv 32 signal 5 } 
	{ t_yplusx_6_read sc_in sc_lv 32 signal 6 } 
	{ t_yplusx_7_read sc_in sc_lv 32 signal 7 } 
	{ t_yplusx_8_read sc_in sc_lv 32 signal 8 } 
	{ t_yplusx_9_read sc_in sc_lv 32 signal 9 } 
	{ t_yminusx_0_read sc_in sc_lv 32 signal 10 } 
	{ t_yminusx_1_read sc_in sc_lv 32 signal 11 } 
	{ t_yminusx_2_read sc_in sc_lv 32 signal 12 } 
	{ t_yminusx_3_read sc_in sc_lv 32 signal 13 } 
	{ t_yminusx_4_read sc_in sc_lv 32 signal 14 } 
	{ t_yminusx_5_read sc_in sc_lv 32 signal 15 } 
	{ t_yminusx_6_read sc_in sc_lv 32 signal 16 } 
	{ t_yminusx_7_read sc_in sc_lv 32 signal 17 } 
	{ t_yminusx_8_read sc_in sc_lv 32 signal 18 } 
	{ t_yminusx_9_read sc_in sc_lv 32 signal 19 } 
	{ t_xy2d_0_read sc_in sc_lv 32 signal 20 } 
	{ t_xy2d_1_read sc_in sc_lv 32 signal 21 } 
	{ t_xy2d_2_read sc_in sc_lv 32 signal 22 } 
	{ t_xy2d_3_read sc_in sc_lv 32 signal 23 } 
	{ t_xy2d_4_read sc_in sc_lv 32 signal 24 } 
	{ t_xy2d_5_read sc_in sc_lv 32 signal 25 } 
	{ t_xy2d_6_read sc_in sc_lv 32 signal 26 } 
	{ t_xy2d_7_read sc_in sc_lv 32 signal 27 } 
	{ t_xy2d_8_read sc_in sc_lv 32 signal 28 } 
	{ t_xy2d_9_read sc_in sc_lv 32 signal 29 } 
	{ tmp_756 sc_in sc_lv 5 signal 30 } 
	{ u_yplusx_offset sc_in sc_lv 4 signal 31 } 
	{ tmp_7561 sc_in sc_lv 5 signal 32 } 
	{ u_yminusx_offset sc_in sc_lv 4 signal 33 } 
	{ tmp_7562 sc_in sc_lv 5 signal 34 } 
	{ u_xy2d_offset sc_in sc_lv 4 signal 35 } 
	{ b sc_in sc_lv 1 signal 36 } 
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
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_yplusx_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_0_read", "role": "default" }} , 
 	{ "name": "t_yplusx_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_1_read", "role": "default" }} , 
 	{ "name": "t_yplusx_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_2_read", "role": "default" }} , 
 	{ "name": "t_yplusx_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_3_read", "role": "default" }} , 
 	{ "name": "t_yplusx_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_4_read", "role": "default" }} , 
 	{ "name": "t_yplusx_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_5_read", "role": "default" }} , 
 	{ "name": "t_yplusx_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_6_read", "role": "default" }} , 
 	{ "name": "t_yplusx_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_7_read", "role": "default" }} , 
 	{ "name": "t_yplusx_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_8_read", "role": "default" }} , 
 	{ "name": "t_yplusx_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yplusx_9_read", "role": "default" }} , 
 	{ "name": "t_yminusx_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_0_read", "role": "default" }} , 
 	{ "name": "t_yminusx_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_1_read", "role": "default" }} , 
 	{ "name": "t_yminusx_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_2_read", "role": "default" }} , 
 	{ "name": "t_yminusx_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_3_read", "role": "default" }} , 
 	{ "name": "t_yminusx_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_4_read", "role": "default" }} , 
 	{ "name": "t_yminusx_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_5_read", "role": "default" }} , 
 	{ "name": "t_yminusx_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_6_read", "role": "default" }} , 
 	{ "name": "t_yminusx_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_7_read", "role": "default" }} , 
 	{ "name": "t_yminusx_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_8_read", "role": "default" }} , 
 	{ "name": "t_yminusx_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_yminusx_9_read", "role": "default" }} , 
 	{ "name": "t_xy2d_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_0_read", "role": "default" }} , 
 	{ "name": "t_xy2d_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_1_read", "role": "default" }} , 
 	{ "name": "t_xy2d_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_2_read", "role": "default" }} , 
 	{ "name": "t_xy2d_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_3_read", "role": "default" }} , 
 	{ "name": "t_xy2d_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_4_read", "role": "default" }} , 
 	{ "name": "t_xy2d_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_5_read", "role": "default" }} , 
 	{ "name": "t_xy2d_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_6_read", "role": "default" }} , 
 	{ "name": "t_xy2d_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_7_read", "role": "default" }} , 
 	{ "name": "t_xy2d_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_8_read", "role": "default" }} , 
 	{ "name": "t_xy2d_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_xy2d_9_read", "role": "default" }} , 
 	{ "name": "tmp_756", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp_756", "role": "default" }} , 
 	{ "name": "u_yplusx_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_yplusx_offset", "role": "default" }} , 
 	{ "name": "tmp_7561", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp_7561", "role": "default" }} , 
 	{ "name": "u_yminusx_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_yminusx_offset", "role": "default" }} , 
 	{ "name": "tmp_7562", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp_7562", "role": "default" }} , 
 	{ "name": "u_xy2d_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_xy2d_offset", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
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
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "cmov",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_cmov_fu_336"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_cmov_fu_336"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_cmov_fu_336"}],
		"Port" : [
			{"Name" : "t_yplusx_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_756", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_yplusx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_7561", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_yminusx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_7562", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_xy2d_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.base_yplusx_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.base_yminusx_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.base_xy2d_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_cmov_fu_336", "Parent" : "0",
		"CDFG" : "fe_cmov",
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
			{"Name" : "g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_7562", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_xy2d_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	cmov {
		t_yplusx_0_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_1_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_2_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_3_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_4_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_5_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_6_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_7_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_8_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_9_read {Type I LastRead 0 FirstWrite -1}
		t_yminusx_0_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_1_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_2_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_3_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_4_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_5_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_6_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_7_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_8_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_9_read {Type I LastRead 1 FirstWrite -1}
		t_xy2d_0_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_1_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_2_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_3_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_4_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_5_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_6_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_7_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_8_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_9_read {Type I LastRead 2 FirstWrite -1}
		tmp_756 {Type I LastRead 0 FirstWrite -1}
		u_yplusx_offset {Type I LastRead 0 FirstWrite -1}
		tmp_7561 {Type I LastRead 1 FirstWrite -1}
		u_yminusx_offset {Type I LastRead 1 FirstWrite -1}
		tmp_7562 {Type I LastRead 2 FirstWrite -1}
		u_xy2d_offset {Type I LastRead 2 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		base_yplusx {Type I LastRead -1 FirstWrite -1}
		base_yminusx {Type I LastRead -1 FirstWrite -1}
		base_xy2d {Type I LastRead -1 FirstWrite -1}}
	fe_cmov {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 9 FirstWrite -1}
		f_2_read {Type I LastRead 9 FirstWrite -1}
		f_3_read {Type I LastRead 9 FirstWrite -1}
		f_4_read {Type I LastRead 9 FirstWrite -1}
		f_5_read {Type I LastRead 9 FirstWrite -1}
		f_6_read {Type I LastRead 9 FirstWrite -1}
		f_7_read {Type I LastRead 9 FirstWrite -1}
		f_8_read {Type I LastRead 9 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g {Type I LastRead 9 FirstWrite -1}
		tmp_7562 {Type I LastRead 0 FirstWrite -1}
		u_xy2d_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t_yplusx_0_read { ap_none {  { t_yplusx_0_read in_data 0 32 } } }
	t_yplusx_1_read { ap_none {  { t_yplusx_1_read in_data 0 32 } } }
	t_yplusx_2_read { ap_none {  { t_yplusx_2_read in_data 0 32 } } }
	t_yplusx_3_read { ap_none {  { t_yplusx_3_read in_data 0 32 } } }
	t_yplusx_4_read { ap_none {  { t_yplusx_4_read in_data 0 32 } } }
	t_yplusx_5_read { ap_none {  { t_yplusx_5_read in_data 0 32 } } }
	t_yplusx_6_read { ap_none {  { t_yplusx_6_read in_data 0 32 } } }
	t_yplusx_7_read { ap_none {  { t_yplusx_7_read in_data 0 32 } } }
	t_yplusx_8_read { ap_none {  { t_yplusx_8_read in_data 0 32 } } }
	t_yplusx_9_read { ap_none {  { t_yplusx_9_read in_data 0 32 } } }
	t_yminusx_0_read { ap_none {  { t_yminusx_0_read in_data 0 32 } } }
	t_yminusx_1_read { ap_none {  { t_yminusx_1_read in_data 0 32 } } }
	t_yminusx_2_read { ap_none {  { t_yminusx_2_read in_data 0 32 } } }
	t_yminusx_3_read { ap_none {  { t_yminusx_3_read in_data 0 32 } } }
	t_yminusx_4_read { ap_none {  { t_yminusx_4_read in_data 0 32 } } }
	t_yminusx_5_read { ap_none {  { t_yminusx_5_read in_data 0 32 } } }
	t_yminusx_6_read { ap_none {  { t_yminusx_6_read in_data 0 32 } } }
	t_yminusx_7_read { ap_none {  { t_yminusx_7_read in_data 0 32 } } }
	t_yminusx_8_read { ap_none {  { t_yminusx_8_read in_data 0 32 } } }
	t_yminusx_9_read { ap_none {  { t_yminusx_9_read in_data 0 32 } } }
	t_xy2d_0_read { ap_none {  { t_xy2d_0_read in_data 0 32 } } }
	t_xy2d_1_read { ap_none {  { t_xy2d_1_read in_data 0 32 } } }
	t_xy2d_2_read { ap_none {  { t_xy2d_2_read in_data 0 32 } } }
	t_xy2d_3_read { ap_none {  { t_xy2d_3_read in_data 0 32 } } }
	t_xy2d_4_read { ap_none {  { t_xy2d_4_read in_data 0 32 } } }
	t_xy2d_5_read { ap_none {  { t_xy2d_5_read in_data 0 32 } } }
	t_xy2d_6_read { ap_none {  { t_xy2d_6_read in_data 0 32 } } }
	t_xy2d_7_read { ap_none {  { t_xy2d_7_read in_data 0 32 } } }
	t_xy2d_8_read { ap_none {  { t_xy2d_8_read in_data 0 32 } } }
	t_xy2d_9_read { ap_none {  { t_xy2d_9_read in_data 0 32 } } }
	tmp_756 { ap_none {  { tmp_756 in_data 0 5 } } }
	u_yplusx_offset { ap_none {  { u_yplusx_offset in_data 0 4 } } }
	tmp_7561 { ap_none {  { tmp_7561 in_data 0 5 } } }
	u_yminusx_offset { ap_none {  { u_yminusx_offset in_data 0 4 } } }
	tmp_7562 { ap_none {  { tmp_7562 in_data 0 5 } } }
	u_xy2d_offset { ap_none {  { u_xy2d_offset in_data 0 4 } } }
	b { ap_none {  { b in_data 0 1 } } }
}
