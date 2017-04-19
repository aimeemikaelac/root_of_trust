
# This constraints file contains default clock frequencies to be used during out-of-context flows such as
# OOC Synthesis and Hierarchical Designs. For best results the frequencies should be modified
# to match the target frequencies. 
# This constraints file is not used in normal top-down synthesis (the default flow of Vivado)

create_clock -name s_axi_cpu_aclk -period 10.0 [get_ports s_axi_cpu_aclk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports s_axi_cpu_aclk]

create_clock -name s_axis_audio_aclk -period 10.0 [get_ports s_axis_audio_aclk]
set_property HD.CLK_SRC BUFGCTRL_X0Y1 [get_ports s_axis_audio_aclk]

create_clock -name link_clk -period 6.734 [get_ports link_clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y2 [get_ports link_clk]

# for PPC 1 Video Clk is 297 MHz
create_clock -name video_clk -period 3.367 [get_ports video_clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y3 [get_ports video_clk]

create_clock -name s_axis_video_aclk -period 3.333 [get_ports s_axis_video_aclk]
set_property HD.CLK_SRC BUFGCTRL_X0Y4 [get_ports s_axis_video_aclk]



