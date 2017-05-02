#PMOD0_0
#set_property PACKAGE_PIN A20 [get_ports {GPIO_IN_0[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_IN_0[0]}]

#PMOD0_1
#set_property PACKAGE_PIN B20 [get_ports {GPIO_IN_1[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_IN_1[0]}]

#PMOD0_2
#set_property PACKAGE_PIN A22 [get_ports {GPIO_OUT_0[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_OUT_0[0]}]

#PMOD0_3
#set_property PACKAGE_PIN A21 [get_ports {GPIO_OUT_1[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_OUT_1[0]}]

#SERIAL_CLK - PMOD0_0
set_property PACKAGE_PIN A20 [get_ports SERIAL_CLK_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_CLK_OUT]

#SERIAL_DATA_LINE_OUT - PMOD0_1
set_property PACKAGE_PIN B20 [get_ports SERIAL_DATA_LINE_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_DATA_LINE_OUT]

#SERIAL_DATA_LINE_IN - PMOD0_2
set_property PACKAGE_PIN A22 [get_ports SERIAL_DATA_LINE_IN]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_DATA_LINE_IN]

#SERIAL_CLK_EN - PMOD0_3
set_property PACKAGE_PIN A21 [get_ports SERIAL_CLK_EN]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_CLK_EN]

#SERIAL_DATA_EN - PMOD0_4
set_property PACKAGE_PIN B21 [get_ports SERIAL_DATA_EN]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_DATA_EN]

#SERIAL_DATA_LED - GPIO_LED_0 - DS38.2
set_property PACKAGE_PIN AG14 [get_ports SERIAL_DATA_LED]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_DATA_LED]

#SERIAL_CLK_LED - GPIO_LED_1 - DS37.2
set_property PACKAGE_PIN AF13 [get_ports SERIAL_CLK_LED]
set_property IOSTANDARD LVCMOS33 [get_ports SERIAL_CLK_LED]


#