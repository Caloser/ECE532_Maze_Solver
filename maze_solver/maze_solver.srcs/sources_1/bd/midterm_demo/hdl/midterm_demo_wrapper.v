//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Apr  4 14:22:51 2025
//Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
//Command     : generate_target midterm_demo_wrapper.bd
//Design      : midterm_demo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module midterm_demo_wrapper
   (BTNC,
    BTNR,
    DDR2_0_addr,
    DDR2_0_ba,
    DDR2_0_cas_n,
    DDR2_0_ck_n,
    DDR2_0_ck_p,
    DDR2_0_cke,
    DDR2_0_cs_n,
    DDR2_0_dm,
    DDR2_0_dq,
    DDR2_0_dqs_n,
    DDR2_0_dqs_p,
    DDR2_0_odt,
    DDR2_0_ras_n,
    DDR2_0_we_n,
    GPIO_0_tri_i,
    VGA_INTF_0_blue,
    VGA_INTF_0_green,
    VGA_INTF_0_hsync,
    VGA_INTF_0_red,
    VGA_INTF_0_vsync,
    ov_d,
    ov_href,
    ov_pclk,
    ov_pwdn,
    ov_reset_gpio,
    ov_sioc_iobuf,
    ov_siod_iobuf,
    ov_vsync,
    ov_xclk_25mhz,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input BTNC;
  input BTNR;
  output [12:0]DDR2_0_addr;
  output [2:0]DDR2_0_ba;
  output DDR2_0_cas_n;
  output [0:0]DDR2_0_ck_n;
  output [0:0]DDR2_0_ck_p;
  output [0:0]DDR2_0_cke;
  output [0:0]DDR2_0_cs_n;
  output [1:0]DDR2_0_dm;
  inout [15:0]DDR2_0_dq;
  inout [1:0]DDR2_0_dqs_n;
  inout [1:0]DDR2_0_dqs_p;
  output [0:0]DDR2_0_odt;
  output DDR2_0_ras_n;
  output DDR2_0_we_n;
  input [4:0]GPIO_0_tri_i;
  output [3:0]VGA_INTF_0_blue;
  output [3:0]VGA_INTF_0_green;
  output VGA_INTF_0_hsync;
  output [3:0]VGA_INTF_0_red;
  output VGA_INTF_0_vsync;
  input [7:0]ov_d;
  input ov_href;
  input ov_pclk;
  output [0:0]ov_pwdn;
  output [0:0]ov_reset_gpio;
  inout ov_sioc_iobuf;
  inout ov_siod_iobuf;
  input ov_vsync;
  output ov_xclk_25mhz;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire BTNC;
  wire BTNR;
  wire [12:0]DDR2_0_addr;
  wire [2:0]DDR2_0_ba;
  wire DDR2_0_cas_n;
  wire [0:0]DDR2_0_ck_n;
  wire [0:0]DDR2_0_ck_p;
  wire [0:0]DDR2_0_cke;
  wire [0:0]DDR2_0_cs_n;
  wire [1:0]DDR2_0_dm;
  wire [15:0]DDR2_0_dq;
  wire [1:0]DDR2_0_dqs_n;
  wire [1:0]DDR2_0_dqs_p;
  wire [0:0]DDR2_0_odt;
  wire DDR2_0_ras_n;
  wire DDR2_0_we_n;
  wire [4:0]GPIO_0_tri_i;
  wire [3:0]VGA_INTF_0_blue;
  wire [3:0]VGA_INTF_0_green;
  wire VGA_INTF_0_hsync;
  wire [3:0]VGA_INTF_0_red;
  wire VGA_INTF_0_vsync;
  wire [7:0]ov_d;
  wire ov_href;
  wire ov_pclk;
  wire [0:0]ov_pwdn;
  wire [0:0]ov_reset_gpio;
  wire ov_sioc_iobuf;
  wire ov_siod_iobuf;
  wire ov_vsync;
  wire ov_xclk_25mhz;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  midterm_demo midterm_demo_i
       (.BTNC(BTNC),
        .BTNR(BTNR),
        .DDR2_0_addr(DDR2_0_addr),
        .DDR2_0_ba(DDR2_0_ba),
        .DDR2_0_cas_n(DDR2_0_cas_n),
        .DDR2_0_ck_n(DDR2_0_ck_n),
        .DDR2_0_ck_p(DDR2_0_ck_p),
        .DDR2_0_cke(DDR2_0_cke),
        .DDR2_0_cs_n(DDR2_0_cs_n),
        .DDR2_0_dm(DDR2_0_dm),
        .DDR2_0_dq(DDR2_0_dq),
        .DDR2_0_dqs_n(DDR2_0_dqs_n),
        .DDR2_0_dqs_p(DDR2_0_dqs_p),
        .DDR2_0_odt(DDR2_0_odt),
        .DDR2_0_ras_n(DDR2_0_ras_n),
        .DDR2_0_we_n(DDR2_0_we_n),
        .GPIO_0_tri_i(GPIO_0_tri_i),
        .VGA_INTF_0_blue(VGA_INTF_0_blue),
        .VGA_INTF_0_green(VGA_INTF_0_green),
        .VGA_INTF_0_hsync(VGA_INTF_0_hsync),
        .VGA_INTF_0_red(VGA_INTF_0_red),
        .VGA_INTF_0_vsync(VGA_INTF_0_vsync),
        .ov_d(ov_d),
        .ov_href(ov_href),
        .ov_pclk(ov_pclk),
        .ov_pwdn(ov_pwdn),
        .ov_reset_gpio(ov_reset_gpio),
        .ov_sioc_iobuf(ov_sioc_iobuf),
        .ov_siod_iobuf(ov_siod_iobuf),
        .ov_vsync(ov_vsync),
        .ov_xclk_25mhz(ov_xclk_25mhz),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
