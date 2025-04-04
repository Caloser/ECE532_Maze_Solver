// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:vga_truncator:1.0
// IP Revision: 1

(* X_CORE_INFO = "vga_truncator,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "midterm_demo_vga_truncator_0_0,vga_truncator,{}" *)
(* CORE_GENERATION_INFO = "midterm_demo_vga_truncator_0_0,vga_truncator,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=vga_truncator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module midterm_demo_vga_truncator_0_0 (
  red_out,
  green_out,
  blue_out,
  hsync_out,
  vsync_out,
  red_in,
  green_in,
  blue_in,
  hsync_in,
  vsync_in,
  de_in,
  dps_in,
  vga_clk_in
);

output wire [3 : 0] red_out;
output wire [3 : 0] green_out;
output wire [3 : 0] blue_out;
output wire hsync_out;
output wire vsync_out;
input wire [5 : 0] red_in;
input wire [5 : 0] green_in;
input wire [5 : 0] blue_in;
input wire hsync_in;
input wire vsync_in;
input wire de_in;
input wire dps_in;
input wire vga_clk_in;

  vga_truncator inst (
    .red_out(red_out),
    .green_out(green_out),
    .blue_out(blue_out),
    .hsync_out(hsync_out),
    .vsync_out(vsync_out),
    .red_in(red_in),
    .green_in(green_in),
    .blue_in(blue_in),
    .hsync_in(hsync_in),
    .vsync_in(vsync_in),
    .de_in(de_in),
    .dps_in(dps_in),
    .vga_clk_in(vga_clk_in)
  );
endmodule
