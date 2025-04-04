// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr  4 14:26:54 2025
// Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_ov7670_to_axis_0_0/midterm_demo_ov7670_to_axis_0_0_stub.v
// Design      : midterm_demo_ov7670_to_axis_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ov7670_to_axis,Vivado 2018.3" *)
module midterm_demo_ov7670_to_axis_0_0(arst_n, ov_vsync, ov_href, ov_pclk, ov_d, pause, 
  resume, m_axis_ready, m_axis_data, m_axis_valid, m_axis_last, m_axis_keep, m_axis_user, 
  dbg_col_count, dbg_pxv)
/* synthesis syn_black_box black_box_pad_pin="arst_n,ov_vsync,ov_href,ov_pclk,ov_d[7:0],pause,resume,m_axis_ready,m_axis_data[31:0],m_axis_valid,m_axis_last,m_axis_keep[3:0],m_axis_user[0:0],dbg_col_count[8:0],dbg_pxv" */;
  input arst_n;
  input ov_vsync;
  input ov_href;
  input ov_pclk;
  input [7:0]ov_d;
  input pause;
  input resume;
  input m_axis_ready;
  output [31:0]m_axis_data;
  output m_axis_valid;
  output m_axis_last;
  output [3:0]m_axis_keep;
  output [0:0]m_axis_user;
  output [8:0]dbg_col_count;
  output dbg_pxv;
endmodule
