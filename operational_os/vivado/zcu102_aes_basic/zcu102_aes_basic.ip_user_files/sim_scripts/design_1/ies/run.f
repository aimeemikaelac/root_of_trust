-makelib ies/xil_defaultlib -sv \
  "/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "/scratch/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_sim_netlist.v" \
  "../../../bd/design_1/hdl/design_1.v" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_10 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps8_0_100M_0/sim/design_1_rst_ps8_0_100M_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/3cc9/hdl/verilog/aes.v" \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/3cc9/hdl/verilog/aes_sboxes_0.v" \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/3cc9/hdl/verilog/aes_basic.v" \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/3cc9/hdl/verilog/aes_basic_AXILiteS_s_axi.v" \
  "../../../bd/design_1/ip/design_1_aes_basic_0_1/sim/design_1_aes_basic_0_1.v" \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/49d8/hdl/verilog/secure_enclave.v" \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/49d8/hdl/verilog/secure_enclave_AXILiteS_s_axi.v" \
  "../../../bd/design_1/ip/design_1_secure_enclave_0_0/sim/design_1_secure_enclave_0_0.v" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_11 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_10 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_12 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib ies/axi_lite_ipif_v3_0_4 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/interrupt_control_v3_1_4 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_gpio_v2_0_13 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_11 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_clock_converter_v2_1_10 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/8479/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/axi_dwidth_converter_v2_1_11 \
  "../../../../zcu102_aes_basic.srcs/sources_1/bd/design_1/ipshared/a4c8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

