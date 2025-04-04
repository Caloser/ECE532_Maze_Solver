set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_red[0]}]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_red[1]}]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_red[2]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_red[3]}]

set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_green[0]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_green[1]}]
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_green[2]}]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_green[3]}]

set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_blue[0]}]
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_blue[1]}]
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_blue[2]}]
set_property -dict {PACKAGE_PIN D8 IOSTANDARD LVCMOS33} [get_ports {VGA_INTF_0_blue[3]}]

set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports VGA_INTF_0_hsync]
set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports VGA_INTF_0_vsync]

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports sys_clock]
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports reset]

set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports usb_uart_rxd]
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports usb_uart_txd]

# set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports {GPIO_0_tri_i[0] }];
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports {GPIO_0_tri_i[0] }]; # dummy to SW0
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports {GPIO_0_tri_i[1] }];
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports {GPIO_0_tri_i[2] }];
# set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports {GPIO_0_tri_i[3] }];
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports {GPIO_0_tri_i[3] }]; # dummy to SW1
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports {GPIO_0_tri_i[4] }];

#Pmod Header JC

set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { ov_reset_gpio }]; #JC1
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { ov_d[1] }]; #JC2
set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { ov_d[3] }]; #JC3
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { ov_d[5] }]; #JC4
set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { ov_pwdn }]; #JC7
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { ov_d[0] }]; #JC8
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { ov_d[2] }]; #JC9
set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { ov_d[4] }]; #JC10


#Pmod Header JD

set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { ov_d[7] }]; #JD1
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { ov_pclk }]; #JD2
set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { ov_vsync }]; #JD3
set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { ov_sioc_iobuf }]; #JD4
set_property -dict { PACKAGE_PIN G3    PULLTYPE PULLUP     } [get_ports { ov_sioc_iobuf }]; #JD4
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { ov_d[6] }]; #JD7
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { ov_xclk_25mhz }]; #JD8
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { ov_href }]; #JD9
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { ov_siod_iobuf }]; #JD10
set_property -dict { PACKAGE_PIN F3    PULLTYPE PULLUP     } [get_ports { ov_siod_iobuf }]; #JD10

# pushbuttons
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { BTNC }]; #IO_L9P_T1_DQS_14 Sch=btnc
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { BTNR }]; #IO_L10N_T1_D15_14 Sch=btnr

## fingers crossed
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ov_pclk_IBUF]