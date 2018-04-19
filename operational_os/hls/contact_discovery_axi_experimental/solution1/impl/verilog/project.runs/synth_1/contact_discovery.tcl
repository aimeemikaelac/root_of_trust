# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xczu9eg-ffvb1156-1-i

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/project.cache/wt [current_project]
set_property parent.project_path /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/contact_discovery.v
  /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/contact_discovery_AXILiteS_s_axi.v
  /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/contact_discoveryeOg.v
  /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/fifo_w8_d128_A.v
  /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/fifo_w8_d128_A_x.v
  /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/match_db_contact.v
  /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/match_db_contact_bkb.v
  /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/match_db_contact_cud.v
  /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/match_db_contact_dEe.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/contact_discovery.xdc
set_property used_in_implementation false [get_files /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/impl/verilog/contact_discovery.xdc]


synth_design -top contact_discovery -part xczu9eg-ffvb1156-1-i -no_iobuf -mode out_of_context


write_checkpoint -force -noxdef contact_discovery.dcp

catch { report_utilization -file contact_discovery_utilization_synth.rpt -pb contact_discovery_utilization_synth.pb }