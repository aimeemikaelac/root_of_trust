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
vlib msim/lib_pkg_v1_0_2
vlib msim/lib_fifo_v1_0_7
vlib msim/blk_mem_gen_v8_3_5
vlib msim/lib_bmg_v1_0_7
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_datamover_v5_1_13
vlib msim/axi_vdma_v6_2_10
vlib msim/v_tpg_v7_0_5
vlib msim/v_hdmi_tx_v1_1_0
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/v_tc_v6_1_10
vlib msim/v_vid_in_axi4s_v4_0_5
vlib msim/v_axi4s_vid_out_v4_0_5
vlib msim/util_vector_logic_v2_0
vlib msim/v_hdmi_rx_v1_1_0
vlib msim/hdcp_v1_0_1
vlib msim/axi_timer_v2_0_13
vlib msim/axi_clock_converter_v2_1_10
vlib msim/v_axi4s_remap_v1_0_2
vlib msim/interrupt_control_v3_1_4
vlib msim/axi_gpio_v2_0_13
vlib msim/axi_protocol_converter_v2_1_11
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
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_7 msim/lib_fifo_v1_0_7
vmap blk_mem_gen_v8_3_5 msim/blk_mem_gen_v8_3_5
vmap lib_bmg_v1_0_7 msim/lib_bmg_v1_0_7
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_13 msim/axi_datamover_v5_1_13
vmap axi_vdma_v6_2_10 msim/axi_vdma_v6_2_10
vmap v_tpg_v7_0_5 msim/v_tpg_v7_0_5
vmap v_hdmi_tx_v1_1_0 msim/v_hdmi_tx_v1_1_0
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_10 msim/v_tc_v6_1_10
vmap v_vid_in_axi4s_v4_0_5 msim/v_vid_in_axi4s_v4_0_5
vmap v_axi4s_vid_out_v4_0_5 msim/v_axi4s_vid_out_v4_0_5
vmap util_vector_logic_v2_0 msim/util_vector_logic_v2_0
vmap v_hdmi_rx_v1_1_0 msim/v_hdmi_rx_v1_1_0
vmap hdcp_v1_0_1 msim/hdcp_v1_0_1
vmap axi_timer_v2_0_13 msim/axi_timer_v2_0_13
vmap axi_clock_converter_v2_1_10 msim/axi_clock_converter_v2_1_10
vmap v_axi4s_remap_v1_0_2 msim/v_axi4s_remap_v1_0_2
vmap interrupt_control_v3_1_4 msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_13 msim/axi_gpio_v2_0_13
vmap axi_protocol_converter_v2_1_11 msim/axi_protocol_converter_v2_1_11
vmap axi_dwidth_converter_v2_1_11 msim/axi_dwidth_converter_v2_1_11

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/scratch/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_sim_netlist.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps8_0_100M_0/sim/design_1_rst_ps8_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_7 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/5ab6/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_3_5 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vcom -work lib_bmg_v1_0_7 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/38e8/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_13 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/bf41/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_2_10 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.v" \

vcom -work axi_vdma_v6_2_10 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vlog -work v_tpg_v7_0_5 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/v_tpg_v7_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../bd/design_1/ip/design_1_v_tpg_0_0/sim/design_1_v_tpg_0_0.v" \

vlog -work v_hdmi_tx_v1_1_0 -64 -incr -sv "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7739/hdl/v_hdmi_tx_v1_1_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_0/sim/bd_8000_v_hdmi_tx_0.sv" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_10 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/d9f8/hdl/v_tc_v6_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_1/sim/bd_8000_v_tc_0.vhd" \

vlog -work v_vid_in_axi4s_v4_0_5 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/3c71/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_5 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/1923/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_2/sim/bd_8000_v_axi4s_vid_out_0.v" \

vcom -work util_vector_logic_v2_0 -64 -93 \
"../../../bd/design_1/ipshared/1d19/hdl/util_vector_logic.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_3/sim/bd_8000_util_vector_logic_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_4/sim/bd_8000_axi_crossbar_0.v" \
"../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/hdl/bd_8000.v" \

vlog -work v_hdmi_rx_v1_1_0 -64 -incr -sv "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/303f/hdl/v_hdmi_rx_v1_1_rfs.sv" \

vlog -work hdcp_v1_0_1 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/hdcp_v1_0_rfs.v" \

vcom -work axi_timer_v2_0_13 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/3edf/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vlog -work axi_clock_converter_v2_1_10 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/8479/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work v_axi4s_remap_v1_0_2 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/5b39/hdl/v_axi4s_remap_v1_0_rfs.v" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_13 -64 -93 \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../bd/design_1/ipshared/e147/xlconstant.v" \
"../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/sim/design_1_v_hdmi_tx_ss_0_0.v" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vlog -work axi_protocol_converter_v2_1_11 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_11 -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/a4c8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_rx_hdcp" "+incdir+../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/dport_tx_hdcp" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib "glbl.v"

