
###
# HDMI TX constraints
###


# FIFO DPRAM
# For the set max delay command the source is the clock pin and the destination is the register. 
# For readability it is allowed to select a register as source as well.   
# However due to an issue in Vivado 2014.2 this doesn't work for the DPRAM cells (inferred registers) 
set_max_delay 15 -from [get_pins -hier -filter name=~*/aclk_dpram_reg*/*/CLK] -to [get_cells -hier -filter name=~*/bclk_dout_reg*] -datapath_only

## 
# False paths
##

# PIO
set_false_path -from [get_cells -hierarchical -filter name=~*/PIO_INST/clk_pio_out_reg*]

#FOR EVAL LIC TIMING VIOLATION
set_false_path -to [get_cells  -hierarchical -filter name=~*/VRST_INST/XPM_ASYNC_INST/arststages_ff_reg*]
