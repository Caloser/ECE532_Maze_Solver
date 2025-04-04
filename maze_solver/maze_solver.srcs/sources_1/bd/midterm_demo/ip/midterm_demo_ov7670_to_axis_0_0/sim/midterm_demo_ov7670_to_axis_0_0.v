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


// IP VLNV: xilinx.com:module_ref:ov7670_to_axis:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module midterm_demo_ov7670_to_axis_0_0 (
  arst_n,
  ov_vsync,
  ov_href,
  ov_pclk,
  ov_d,
  pause,
  resume,
  m_axis_ready,
  m_axis_data,
  m_axis_valid,
  m_axis_last,
  m_axis_keep,
  m_axis_user,
  dbg_col_count,
  dbg_pxv
);

input wire arst_n;
input wire ov_vsync;
input wire ov_href;
input wire ov_pclk;
input wire [7 : 0] ov_d;
input wire pause;
input wire resume;
input wire m_axis_ready;
output wire [31 : 0] m_axis_data;
output wire m_axis_valid;
output wire m_axis_last;
output wire [3 : 0] m_axis_keep;
output wire [0 : 0] m_axis_user;
output wire [8 : 0] dbg_col_count;
output wire dbg_pxv;

  ov7670_to_axis #(
    .NUM_COLS(320)
  ) inst (
    .arst_n(arst_n),
    .ov_vsync(ov_vsync),
    .ov_href(ov_href),
    .ov_pclk(ov_pclk),
    .ov_d(ov_d),
    .pause(pause),
    .resume(resume),
    .m_axis_ready(m_axis_ready),
    .m_axis_data(m_axis_data),
    .m_axis_valid(m_axis_valid),
    .m_axis_last(m_axis_last),
    .m_axis_keep(m_axis_keep),
    .m_axis_user(m_axis_user),
    .dbg_col_count(dbg_col_count),
    .dbg_pxv(dbg_pxv)
  );
endmodule
