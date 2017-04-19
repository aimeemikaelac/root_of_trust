onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_11 -L fifo_generator_v13_1_3 -L axi_data_fifo_v2_1_10 -L axi_crossbar_v2_1_12 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_7 -L blk_mem_gen_v8_3_5 -L lib_bmg_v1_0_7 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_13 -L axi_vdma_v6_2_10 -L v_tpg_v7_0_5 -L v_hdmi_tx_v1_1_0 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_1_10 -L v_vid_in_axi4s_v4_0_5 -L v_axi4s_vid_out_v4_0_5 -L util_vector_logic_v2_0 -L v_hdmi_rx_v1_1_0 -L hdcp_v1_0_1 -L axi_timer_v2_0_13 -L axi_clock_converter_v2_1_10 -L v_axi4s_remap_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_13 -L axi_protocol_converter_v2_1_11 -L axi_dwidth_converter_v2_1_11 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
