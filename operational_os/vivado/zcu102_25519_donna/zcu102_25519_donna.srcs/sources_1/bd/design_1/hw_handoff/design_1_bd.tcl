
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu9eg-ffvb1156-2-i
   set_property BOARD_PART xilinx.com:zcu102:part0:3.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports

  # Create instance: curve25519_donna_0, and set properties
  set curve25519_donna_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:curve25519_donna:1.0 curve25519_donna_0 ]

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /curve25519_donna_0/s_axi_AXILiteS]

  # Create instance: ps8_0_axi_periph, and set properties
  set ps8_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps8_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $ps8_0_axi_periph

  # Create instance: rst_ps8_0_99M, and set properties
  set rst_ps8_0_99M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps8_0_99M ]

  # Create instance: zynq_ultra_ps_e_0, and set properties
  set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.0 zynq_ultra_ps_e_0 ]
  set_property -dict [ list \
CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} \
CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} \
CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} \
CONFIG.PSU__CAN1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__CAN1__PERIPHERAL__IO {MIO 24 .. 25} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__FREQMHZ {1200} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL} \
CONFIG.PSU__CRF_APB__APLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {1067} \
CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__FREQMHZ {600} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {APLL} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {VPLL} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__FREQMHZ {600} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {APLL} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__FREQMHZ {533.33} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__FREQMHZ {125} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__FREQMHZ {125} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__FREQMHZ {20} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__DDRC__BANK_ADDR_COUNT {2} \
CONFIG.PSU__DDRC__BG_ADDR_COUNT {2} \
CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL} \
CONFIG.PSU__DDRC__BUS_WIDTH {64 Bit} \
CONFIG.PSU__DDRC__CL {15} \
CONFIG.PSU__DDRC__CLOCK_STOP_EN {0} \
CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
CONFIG.PSU__DDRC__COMPONENTS {UDIMM} \
CONFIG.PSU__DDRC__CWL {14} \
CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {0} \
CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {0} \
CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {0} \
CONFIG.PSU__DDRC__DDR4_T_REF_MODE {0} \
CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {Normal (0-85)} \
CONFIG.PSU__DDRC__DEVICE_CAPACITY {4096 MBits} \
CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {0} \
CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
CONFIG.PSU__DDRC__DRAM_WIDTH {8 Bits} \
CONFIG.PSU__DDRC__ECC {Disabled} \
CONFIG.PSU__DDRC__FGRM {1X} \
CONFIG.PSU__DDRC__LP_ASR {manual normal} \
CONFIG.PSU__DDRC__MEMORY_TYPE {DDR 4} \
CONFIG.PSU__DDRC__PARITY_ENABLE {0} \
CONFIG.PSU__DDRC__PER_BANK_REFRESH {0} \
CONFIG.PSU__DDRC__PHY_DBI_MODE {0} \
CONFIG.PSU__DDRC__RANK_ADDR_COUNT {0} \
CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15} \
CONFIG.PSU__DDRC__SELF_REF_ABORT {0} \
CONFIG.PSU__DDRC__SPEED_BIN {DDR4_2133P} \
CONFIG.PSU__DDRC__STATIC_RD_MODE {0} \
CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} \
CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} \
CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} \
CONFIG.PSU__DDRC__T_FAW {30.0} \
CONFIG.PSU__DDRC__T_RAS_MIN {33} \
CONFIG.PSU__DDRC__T_RC {47.06} \
CONFIG.PSU__DDRC__T_RCD {15} \
CONFIG.PSU__DDRC__T_RP {15} \
CONFIG.PSU__DDRC__VREF {1} \
CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__DPAUX__PERIPHERAL__IO {MIO 27 .. 30} \
CONFIG.PSU__DP__LANE_SEL {Single Lower} \
CONFIG.PSU__DP__REF_CLK_FREQ {27} \
CONFIG.PSU__DP__REF_CLK_SEL {Ref Clk3} \
CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} \
CONFIG.PSU__ENET3__GRP_MDIO__IO {MIO 76 .. 77} \
CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__ENET3__PERIPHERAL__IO {MIO 64 .. 75} \
CONFIG.PSU__FPGA_PL0_ENABLE {1} \
CONFIG.PSU__GPIO0_MIO__IO {MIO 0 .. 25} \
CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__GPIO1_MIO__IO {MIO 26 .. 51} \
CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 14 .. 15} \
CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 16 .. 17} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC0_SEL {APB} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC1_SEL {APB} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC2_SEL {APB} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC3_SEL {APB} \
CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0} \
CONFIG.PSU__PCIE__BAR0_ENABLE {0} \
CONFIG.PSU__PCIE__CLASS_CODE_BASE {0x06} \
CONFIG.PSU__PCIE__CLASS_CODE_SUB {0x4} \
CONFIG.PSU__PCIE__CRS_SW_VISIBILITY {1} \
CONFIG.PSU__PCIE__DEVICE_ID {0xD021} \
CONFIG.PSU__PCIE__DEVICE_PORT_TYPE {Root Port} \
CONFIG.PSU__PCIE__LANE1__ENABLE {0} \
CONFIG.PSU__PCIE__LINK_SPEED {5.0 Gb/s} \
CONFIG.PSU__PCIE__MAXIMUM_LINK_WIDTH {x1} \
CONFIG.PSU__PCIE__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_IO {MIO 31} \
CONFIG.PSU__PCIE__REF_CLK_FREQ {100} \
CONFIG.PSU__PCIE__REF_CLK_SEL {Ref Clk0} \
CONFIG.PSU__PMU__GPI0__ENABLE {0} \
CONFIG.PSU__PMU__GPI1__ENABLE {0} \
CONFIG.PSU__PMU__GPI2__ENABLE {0} \
CONFIG.PSU__PMU__GPI3__ENABLE {0} \
CONFIG.PSU__PMU__GPI4__ENABLE {0} \
CONFIG.PSU__PMU__GPI5__ENABLE {0} \
CONFIG.PSU__PMU__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.333} \
CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {1} \
CONFIG.PSU__QSPI__GRP_FBCLK__IO {MIO 6} \
CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} \
CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__QSPI__PERIPHERAL__IO {MIO 0 .. 12} \
CONFIG.PSU__QSPI__PERIPHERAL__MODE {Dual Parallel} \
CONFIG.PSU__SATA__LANE1__ENABLE {1} \
CONFIG.PSU__SATA__LANE1__IO {GT Lane3} \
CONFIG.PSU__SATA__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SATA__REF_CLK_FREQ {125} \
CONFIG.PSU__SATA__REF_CLK_SEL {Ref Clk1} \
CONFIG.PSU__SD1__DATA_TRANSFER_MODE {8Bit} \
CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} \
CONFIG.PSU__SD1__GRP_POW__ENABLE {1} \
CONFIG.PSU__SD1__GRP_POW__IO {MIO 43} \
CONFIG.PSU__SD1__GRP_WP__ENABLE {1} \
CONFIG.PSU__SD1__GRP_WP__IO {MIO 44} \
CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 39 .. 51} \
CONFIG.PSU__SD1__SLOT_TYPE {SD 3.0} \
CONFIG.PSU__SWDT0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SWDT1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__TTC1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__TTC2__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 18 .. 19} \
CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 20 .. 21} \
CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__USB0__PERIPHERAL__IO {MIO 52 .. 63} \
CONFIG.PSU__USB0__REF_CLK_FREQ {26} \
CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk2} \
CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2} \
CONFIG.PSU__USE__IRQ0 {1} \
CONFIG.PSU__USE__M_AXI_GP0 {1} \
CONFIG.PSU__USE__M_AXI_GP1 {1} \
CONFIG.PSU__USE__M_AXI_GP2 {0} \
 ] $zynq_ultra_ps_e_0

  # Create interface connections
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M00_AXI [get_bd_intf_pins curve25519_donna_0/s_axi_AXILiteS] [get_bd_intf_pins ps8_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_M_AXI_HPM0_FPD [get_bd_intf_pins ps8_0_axi_periph/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD]

  # Create port connections
  connect_bd_net -net rst_ps8_0_99M_interconnect_aresetn [get_bd_pins ps8_0_axi_periph/ARESETN] [get_bd_pins rst_ps8_0_99M/interconnect_aresetn]
  connect_bd_net -net rst_ps8_0_99M_peripheral_aresetn [get_bd_pins curve25519_donna_0/ap_rst_n] [get_bd_pins ps8_0_axi_periph/M00_ARESETN] [get_bd_pins ps8_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps8_0_99M/peripheral_aresetn]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins curve25519_donna_0/ap_clk] [get_bd_pins ps8_0_axi_periph/ACLK] [get_bd_pins ps8_0_axi_periph/M00_ACLK] [get_bd_pins ps8_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps8_0_99M/slowest_sync_clk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm1_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn0 [get_bd_pins rst_ps8_0_99M/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0xA0000000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs curve25519_donna_0/s_axi_AXILiteS/Reg] SEG_curve25519_donna_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


