-makelib ies/xil_defaultlib -sv \
  "/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "/scratch/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0.v" \
-endlib
-makelib ies/microblaze_v10_0_2 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/796f/hdl/microblaze_v10_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \
-endlib
-makelib ies/axi_lite_ipif_v3_0_4 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/mdm_v3_2_9 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/359c/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_11 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps8_0_99M_0/sim/design_1_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib ies/lmb_v10_v3_0_9 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
  "../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \
-endlib
-makelib ies/lmb_bram_if_cntlr_v4_0_11 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/5376/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_6 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_12 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/fifo_generator_v13_1_4 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_4 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_4 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_11 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_13 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib ies/lib_pkg_v1_0_2 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies/lib_srl_fifo_v1_0_2 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies/axi_uartlite_v2_0_16 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/b362/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \
-endlib
-makelib ies/axi_intc_v4_1_9 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/a811/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_intc_0_0/sim/design_1_axi_intc_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_axi_uartlite_2_0/sim/design_1_axi_uartlite_2_0.vhd" \
-endlib
-makelib ies/interrupt_control_v3_1_4 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_gpio_v2_0_14 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/3b45/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_12 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/138d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_clock_converter_v2_1_11 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/c526/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_dwidth_converter_v2_1_12 \
  "../../../../zcu_microblaze_2.srcs/sources_1/bd/design_1/ipshared/fef9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/hdl/design_1.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

