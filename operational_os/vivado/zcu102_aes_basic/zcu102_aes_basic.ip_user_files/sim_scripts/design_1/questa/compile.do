vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/fifo_generator_v13_1_3
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_crossbar_v2_1_12
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/interrupt_control_v3_1_4
vlib msim/axi_gpio_v2_0_13
vlib msim/axi_protocol_converter_v2_1_11
vlib msim/axi_clock_converter_v2_1_10
vlib msim/blk_mem_gen_v8_3_5
vlib msim/axi_dwidth_converter_v2_1_11

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 msim/axi_crossbar_v2_1_12
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_13 msim/axi_gpio_v2_0_13
vmap axi_protocol_converter_v2_1_11 msim/axi_protocol_converter_v2_1_11
vmap axi_clock_converter_v2_1_10 msim/axi_clock_converter_v2_1_10
vmap blk_mem_gen_v8_3_5 msim/blk_mem_gen_v8_3_5
vmap axi_dwidth_converter_v2_1_11 msim/axi_dwidth_converter_v2_1_11

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/scratch/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_sim_netlist.v" \
"../../../bd/design_1/hdl/design_1.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps8_0_100M_0/sim/design_1_rst_ps8_0_100M_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/3cc9/hdl/verilog/aes.v" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/3cc9/hdl/verilog/aes_sboxes_0.v" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/3cc9/hdl/verilog/aes_basic.v" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/3cc9/hdl/verilog/aes_basic_AXILiteS_s_axi.v" \
"../../../bd/design_1/ip/design_1_aes_basic_0_1/sim/design_1_aes_basic_0_1.v" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/49d8/hdl/verilog/secure_enclave.v" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/49d8/hdl/verilog/secure_enclave_AXILiteS_s_axi.v" \
"../../../bd/design_1/ip/design_1_secure_enclave_0_0/sim/design_1_secure_enclave_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_13 -64 -93 \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_11 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_10 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/8479/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_3_5 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work axi_dwidth_converter_v2_1_11 -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/a4c8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work xil_defaultlib "glbl.v"

