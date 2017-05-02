#PMOD JA1
#set_property PACKAGE_PIN Y11  [get_ports {GPIO_IN_0[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_IN_0[0]}]

#PMOD JA2
#set_property PACKAGE_PIN AA11  [get_ports {GPIO_IN_1[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_IN_1[0]}]

#PMOD JA3
#set_property PACKAGE_PIN Y10  [get_ports {GPIO_OUT_0[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_OUT_0[0]}]

#PMOD JA4
#set_property PACKAGE_PIN AA9  [get_ports {GPIO_OUT_1[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_OUT_1[0]}]

#SERIAL_CLK - JA1
set_property PACKAGE_PIN Y11 [get_ports SERIAL_CLK_IN]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_CLK_IN]

#SERIAL_DATA_LINE_OUT - JA2
set_property PACKAGE_PIN AA11 [get_ports SERIAL_DATA_LINE_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_DATA_LINE_OUT]

#SERIAL_DATA_LINE_IN - JA3
set_property PACKAGE_PIN Y10 [get_ports SERIAL_DATA_LINE_IN]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_DATA_LINE_IN]

#SERIAL_CLK_EN - JA4
set_property PACKAGE_PIN AA9 [get_ports SERIAL_CLK_EN]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_CLK_EN]

#SERIAL_DATA_EN - JA7
set_property PACKAGE_PIN AB11 [get_ports SERIAL_DATA_EN]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_DATA_EN]

#SERIAL_CLK - JA8
set_property PACKAGE_PIN AB10 [get_ports SERIAL_CLK_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_CLK_OUT]

#SERIAL_DATA_LED - LD0
set_property PACKAGE_PIN T22 [get_ports SERIAL_DATA_LED]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_DATA_LED]

#SERIAL_CLK_LED - LD1
set_property PACKAGE_PIN T21 [get_ports SERIAL_CLK_LED]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_CLK_LED]