proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xczu9eg-ffvb1156-2-i-es2
  set_property board_part xilinx.com:zcu102:part0:2.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.cache/wt [current_project]
  set_property parent.project_path /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.xpr [current_project]
  set_property ip_repo_paths /home/michael/xilinx_workspace/hdmi_pattern_generator [current_project]
  set_property ip_output_repo /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.runs/synth_1/design_1_wrapper.dcp
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/design_1_v_tpg_0_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/design_1_v_tpg_0_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/design_1_v_hdmi_tx_ss_0_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/design_1_v_hdmi_tx_ss_0_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_0/bd_8000_v_hdmi_tx_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_0/bd_8000_v_hdmi_tx_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_1/bd_8000_v_tc_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_1/bd_8000_v_tc_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_2/bd_8000_v_axi4s_vid_out_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_2/bd_8000_v_axi4s_vid_out_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_3/bd_8000_util_vector_logic_0_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_3/bd_8000_util_vector_logic_0_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_4/bd_8000_axi_crossbar_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_4/bd_8000_axi_crossbar_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/design_1_vid_phy_controller_0_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/design_1_vid_phy_controller_0_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_util_vector_logic_0_0/design_1_util_vector_logic_0_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_util_vector_logic_0_0/design_1_util_vector_logic_0_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_xlconstant_0_0/design_1_xlconstant_0_0.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_xlconstant_0_0/design_1_xlconstant_0_0.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1.dcp]
  add_files -quiet /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1.dcp
  set_property netlist_only true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1.dcp]
  read_xdc -ref design_1_zynq_ultra_ps_e_0_0 -cells inst /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0.xdc
  set_property processing_order EARLY [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_rst_ps8_0_100M_0 -cells U0 /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0_board.xdc]
  read_xdc -ref design_1_rst_ps8_0_100M_0 -cells U0 /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0.xdc
  set_property processing_order EARLY [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0.xdc]
  read_xdc -ref design_1_vid_phy_controller_0_0 -cells inst /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/vid_phy_controller_xdc.xdc
  set_property processing_order EARLY [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/vid_phy_controller_xdc.xdc]
  read_xdc -ref design_1_vid_phy_controller_0_0_gtwrapper -cells inst /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/ip_0/synth/design_1_vid_phy_controller_0_0_gtwrapper.xdc
  set_property processing_order EARLY [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/ip_0/synth/design_1_vid_phy_controller_0_0_gtwrapper.xdc]
  read_xdc /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/constrs_1/new/zcu_contraints.xdc
  read_xdc -ref design_1_v_tpg_0_0 -cells inst /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/design_1_v_tpg_0_0.xdc
  set_property processing_order LATE [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/design_1_v_tpg_0_0.xdc]
  read_xdc -ref bd_8000_v_hdmi_tx_0 -cells inst /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_0/bd_8000_v_hdmi_tx_0_core.xdc
  set_property processing_order LATE [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_0/bd_8000_v_hdmi_tx_0_core.xdc]
  read_xdc -ref bd_8000_v_tc_0 -cells U0 /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_1/bd_8000_v_tc_0_clocks.xdc
  set_property processing_order LATE [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_1/bd_8000_v_tc_0_clocks.xdc]
  read_xdc -ref bd_8000_v_axi4s_vid_out_0 -cells inst /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_2/bd_8000_v_axi4s_vid_out_0_clocks.xdc
  set_property processing_order LATE [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_2/bd_8000_v_axi4s_vid_out_0_clocks.xdc]
  read_xdc -ref design_1_vid_phy_controller_0_0 -cells inst /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/design_1_vid_phy_controller_0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/design_1_vid_phy_controller_0_0_clocks.xdc]
  read_xdc -ref design_1_auto_ds_1 -cells inst /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1_clocks.xdc
  set_property processing_order LATE [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1_clocks.xdc]
  link_design -top design_1_wrapper -part xczu9eg-ffvb1156-2-i-es2
  write_hwdef -file design_1_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force design_1_wrapper_opt.dcp
  catch { report_drc -file design_1_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force design_1_wrapper_placed.dcp
  catch { report_io -file design_1_wrapper_io_placed.rpt }
  catch { report_utilization -file design_1_wrapper_utilization_placed.rpt -pb design_1_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file design_1_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force design_1_wrapper_routed.dcp
  catch { report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx }
  catch { report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -rpx design_1_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -rpx design_1_wrapper_timing_summary_routed.rpx }
  catch { report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx }
  catch { report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb }
  catch { report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force design_1_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force design_1_wrapper.mmi }
  write_bitstream -force -no_partial_bitfile design_1_wrapper.bit 
  catch { write_sysdef -hwdef design_1_wrapper.hwdef -bitfile design_1_wrapper.bit -meminfo design_1_wrapper.mmi -file design_1_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

