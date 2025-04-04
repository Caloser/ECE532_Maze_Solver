// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr  4 14:25:47 2025
// Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_vga_truncator_0_0/midterm_demo_vga_truncator_0_0_stub.v
// Design      : midterm_demo_vga_truncator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga_truncator,Vivado 2018.3" *)
module midterm_demo_vga_truncator_0_0(red_out, green_out, blue_out, hsync_out, 
  vsync_out, red_in, green_in, blue_in, hsync_in, vsync_in, de_in, dps_in, vga_clk_in)
/* synthesis syn_black_box black_box_pad_pin="red_out[3:0],green_out[3:0],blue_out[3:0],hsync_out,vsync_out,red_in[5:0],green_in[5:0],blue_in[5:0],hsync_in,vsync_in,de_in,dps_in,vga_clk_in" */;
  output [3:0]red_out;
  output [3:0]green_out;
  output [3:0]blue_out;
  output hsync_out;
  output vsync_out;
  input [5:0]red_in;
  input [5:0]green_in;
  input [5:0]blue_in;
  input hsync_in;
  input vsync_in;
  input de_in;
  input dps_in;
  input vga_clk_in;
endmodule
