#set_property  -dict {PACKAGE_PIN  T29} [get_ports LINK_DATA0_OUT]
#set_property  -dict {PACKAGE_PIN  R31} [get_ports LINK_DATA1_OUT]
#set_property  -dict {PACKAGE_PIN  V17   IOSTANDARD LVCMOS33} [get_ports hdmi_hsync]
#set_property  -dict {PACKAGE_PIN  U16   IOSTANDARD LVCMOS33} [get_ports hdmi_data_e]
#set_property  -dict {PACKAGE_PIN  Y13   IOSTANDARD LVCMOS33} [get_ports hdmi_data[0]]
#set_property  -dict {PACKAGE_PIN  AA13  IOSTANDARD LVCMOS33} [get_ports hdmi_data[1]]
#set_property  -dict {PACKAGE_PIN  AA14  IOSTANDARD LVCMOS33} [get_ports hdmi_data[2]]
#set_property  -dict {PACKAGE_PIN  Y14   IOSTANDARD LVCMOS33} [get_ports hdmi_data[3]]
#set_property  -dict {PACKAGE_PIN  AB15  IOSTANDARD LVCMOS33} [get_ports hdmi_data[4]]
#set_property  -dict {PACKAGE_PIN  AB16  IOSTANDARD LVCMOS33} [get_ports hdmi_data[5]]
#set_property  -dict {PACKAGE_PIN  AA16  IOSTANDARD LVCMOS33} [get_ports hdmi_data[6]]
#set_property  -dict {PACKAGE_PIN  AB17  IOSTANDARD LVCMOS33} [get_ports hdmi_data[7]]
#set_property  -dict {PACKAGE_PIN  AA17  IOSTANDARD LVCMOS33} [get_ports hdmi_data[8]]
#set_property  -dict {PACKAGE_PIN  Y15   IOSTANDARD LVCMOS33} [get_ports hdmi_data[9]]
#set_property  -dict {PACKAGE_PIN  W13   IOSTANDARD LVCMOS33} [get_ports hdmi_data[10]]
#set_property  -dict {PACKAGE_PIN  W15   IOSTANDARD LVCMOS33} [get_ports hdmi_data[11]]
#set_property  -dict {PACKAGE_PIN  V15   IOSTANDARD LVCMOS33} [get_ports hdmi_data[12]]
#set_property  -dict {PACKAGE_PIN  U17   IOSTANDARD LVCMOS33} [get_ports hdmi_data[13]]
#set_property  -dict {PACKAGE_PIN  V14   IOSTANDARD LVCMOS33} [get_ports hdmi_data[14]]
#set_property  -dict {PACKAGE_PIN  V13   IOSTANDARD LVCMOS33} [get_ports hdmi_data[15]]
#set_property IOSTANDARD LVCMOS15 [get_ports txoutclk]

set_property IOSTANDARD LVDS [get_ports TX_CLK_P_OUT]
set_property PACKAGE_PIN AF6 [get_ports TX_CLK_P_OUT]

set_property IOSTANDARD LVDS [get_ports TX_CLK_N_OUT]
set_property PACKAGE_PIN AG6 [get_ports TX_CLK_N_OUT]

set_property PACKAGE_PIN T29 [get_ports {TX_P_OUT[0]}]
set_property PACKAGE_PIN T30 [get_ports {TX_N_OUT[0]}]

set_property PACKAGE_PIN R31 [get_ports {TX_P_OUT[1]}]
set_property PACKAGE_PIN R32 [get_ports {TX_N_OUT[1]}]

set_property PACKAGE_PIN P29 [get_ports {TX_P_OUT[2]}]
set_property PACKAGE_PIN P30 [get_ports {TX_N_OUT[2]}]

set_property PACKAGE_PIN J12 [get_ports {SI5324_RST[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SI5324_RST[0]}]

set_property PACKAGE_PIN H12 [get_ports {SI5324_LOL[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SI5324_LOL[0]}]

set_property PACKAGE_PIN R27 [get_ports TX_REFCLK_P_IN]
#set_property IOSTANDARD LVDS [get_ports TX_REFCLK_P_IN]

set_property PACKAGE_PIN R28 [get_ports TX_REFCLK_N_IN]
#set_property IOSTANDARD LVDS [get_ports TX_REFCLK_N_IN]

set_property PACKAGE_PIN B16 [get_ports TX_HPD]
set_property IOSTANDARD LVCMOS33 [get_ports TX_HPD]

#set_property IOSTANDARD LVCMOS15 [get_ports tx_tdms_clk]
#set_property IOSTANDARD LVCMOS15 [get_ports tx_video_clk]