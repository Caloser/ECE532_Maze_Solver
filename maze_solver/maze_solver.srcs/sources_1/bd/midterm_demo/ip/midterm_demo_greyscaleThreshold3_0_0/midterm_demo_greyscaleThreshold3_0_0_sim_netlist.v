// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr  4 14:24:45 2025
// Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_greyscaleThreshold3_0_0/midterm_demo_greyscaleThreshold3_0_0_sim_netlist.v
// Design      : midterm_demo_greyscaleThreshold3_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "midterm_demo_greyscaleThreshold3_0_0,greyscaleThreshold3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "greyscaleThreshold3,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module midterm_demo_greyscaleThreshold3_0_0
   (axi_clk,
    axi_reset_n,
    s_axis_valid,
    s_axis_data,
    s_axis_ready,
    m_axis_valid,
    m_axis_data,
    m_axis_ready,
    dest_col,
    dest_row,
    start_col,
    start_row,
    dest_start_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, ASSOCIATED_BUSIF m_axis:s_axis, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input axi_clk;
  input axi_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_ready;
  output [9:0]dest_col;
  output [8:0]dest_row;
  output [9:0]start_col;
  output [8:0]start_row;
  output dest_start_valid;

  wire \<const0> ;
  wire axi_clk;
  wire axi_reset_n;
  wire [8:0]\^dest_col ;
  wire [7:0]\^dest_row ;
  wire dest_start_valid;
  wire [0:0]\^m_axis_data ;
  wire m_axis_ready;
  wire m_axis_valid;
  wire [31:0]s_axis_data;
  wire s_axis_valid;
  wire [8:0]\^start_col ;
  wire [7:0]\^start_row ;

  assign dest_col[9] = \<const0> ;
  assign dest_col[8:0] = \^dest_col [8:0];
  assign dest_row[8] = \<const0> ;
  assign dest_row[7:0] = \^dest_row [7:0];
  assign m_axis_data[7] = \<const0> ;
  assign m_axis_data[6] = \<const0> ;
  assign m_axis_data[5] = \<const0> ;
  assign m_axis_data[4] = \<const0> ;
  assign m_axis_data[3] = \<const0> ;
  assign m_axis_data[2] = \<const0> ;
  assign m_axis_data[1] = \<const0> ;
  assign m_axis_data[0] = \^m_axis_data [0];
  assign s_axis_ready = m_axis_ready;
  assign start_col[9] = \<const0> ;
  assign start_col[8:0] = \^start_col [8:0];
  assign start_row[8] = \<const0> ;
  assign start_row[7:0] = \^start_row [7:0];
  GND GND
       (.G(\<const0> ));
  midterm_demo_greyscaleThreshold3_0_0_greyscaleThreshold3 inst
       (.axi_clk(axi_clk),
        .axi_reset_n(axi_reset_n),
        .dest_col(\^dest_col ),
        .dest_row(\^dest_row ),
        .dest_start_valid(dest_start_valid),
        .m_axis_data(\^m_axis_data ),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .s_axis_data({s_axis_data[23:20],s_axis_data[15:12],s_axis_data[7:4]}),
        .s_axis_valid(s_axis_valid),
        .start_col(\^start_col ),
        .start_row(\^start_row ));
endmodule

(* ORIG_REF_NAME = "greyscaleThreshold3" *) 
module midterm_demo_greyscaleThreshold3_0_0_greyscaleThreshold3
   (m_axis_valid,
    dest_col,
    dest_row,
    start_col,
    start_row,
    dest_start_valid,
    m_axis_data,
    s_axis_valid,
    m_axis_ready,
    axi_reset_n,
    axi_clk,
    s_axis_data);
  output m_axis_valid;
  output [8:0]dest_col;
  output [7:0]dest_row;
  output [8:0]start_col;
  output [7:0]start_row;
  output dest_start_valid;
  output [0:0]m_axis_data;
  input s_axis_valid;
  input m_axis_ready;
  input axi_reset_n;
  input axi_clk;
  input [11:0]s_axis_data;

  wire axi_clk;
  wire axi_reset_n;
  wire [9:0]colIdx;
  wire colIdx0;
  wire \colIdx[4]_i_1_n_0 ;
  wire \colIdx[7]_i_2_n_0 ;
  wire \colIdx[9]_i_1_n_0 ;
  wire \colIdx[9]_i_4_n_0 ;
  wire \colIdx_reg_n_0_[0] ;
  wire \colIdx_reg_n_0_[1] ;
  wire \colIdx_reg_n_0_[2] ;
  wire \colIdx_reg_n_0_[3] ;
  wire \colIdx_reg_n_0_[4] ;
  wire \colIdx_reg_n_0_[5] ;
  wire \colIdx_reg_n_0_[6] ;
  wire \colIdx_reg_n_0_[7] ;
  wire \colIdx_reg_n_0_[8] ;
  wire \colIdx_reg_n_0_[9] ;
  wire [9:0]destColMax;
  wire destColMax0_carry__0_i_1_n_0;
  wire destColMax0_carry__0_i_2_n_0;
  wire destColMax0_carry__0_n_3;
  wire destColMax0_carry_i_1_n_0;
  wire destColMax0_carry_i_2_n_0;
  wire destColMax0_carry_i_3_n_0;
  wire destColMax0_carry_i_4_n_0;
  wire destColMax0_carry_i_5_n_0;
  wire destColMax0_carry_i_6_n_0;
  wire destColMax0_carry_i_7_n_0;
  wire destColMax0_carry_i_8_n_0;
  wire destColMax0_carry_n_0;
  wire destColMax0_carry_n_1;
  wire destColMax0_carry_n_2;
  wire destColMax0_carry_n_3;
  wire destColMax_1;
  wire [9:0]destColMin;
  wire destColMin0_carry__0_i_1_n_0;
  wire destColMin0_carry__0_i_2_n_0;
  wire destColMin0_carry__0_n_3;
  wire destColMin0_carry_i_1_n_0;
  wire destColMin0_carry_i_2_n_0;
  wire destColMin0_carry_i_3_n_0;
  wire destColMin0_carry_i_4_n_0;
  wire destColMin0_carry_i_5_n_0;
  wire destColMin0_carry_i_6_n_0;
  wire destColMin0_carry_i_7_n_0;
  wire destColMin0_carry_i_8_n_0;
  wire destColMin0_carry_n_0;
  wire destColMin0_carry_n_1;
  wire destColMin0_carry_n_2;
  wire destColMin0_carry_n_3;
  wire \destColMin[9]_i_10_n_0 ;
  wire \destColMin[9]_i_11_n_0 ;
  wire \destColMin[9]_i_12_n_0 ;
  wire \destColMin[9]_i_13_n_0 ;
  wire \destColMin[9]_i_14_n_0 ;
  wire \destColMin[9]_i_15_n_0 ;
  wire \destColMin[9]_i_1_n_0 ;
  wire \destColMin[9]_i_3_n_0 ;
  wire \destColMin[9]_i_4_n_0 ;
  wire \destColMin[9]_i_5_n_0 ;
  wire \destColMin[9]_i_6_n_0 ;
  wire \destColMin[9]_i_7_n_0 ;
  wire \destColMin[9]_i_8_n_0 ;
  wire \destColMin[9]_i_9_n_0 ;
  wire destColMin_0;
  wire [8:0]destRowMax;
  wire destRowMax0_carry__0_i_1_n_0;
  wire destRowMax0_carry__0_i_2_n_0;
  wire destRowMax0_carry__0_n_3;
  wire destRowMax0_carry_i_1_n_0;
  wire destRowMax0_carry_i_2_n_0;
  wire destRowMax0_carry_i_3_n_0;
  wire destRowMax0_carry_i_4_n_0;
  wire destRowMax0_carry_i_5_n_0;
  wire destRowMax0_carry_i_6_n_0;
  wire destRowMax0_carry_i_7_n_0;
  wire destRowMax0_carry_i_8_n_0;
  wire destRowMax0_carry_n_0;
  wire destRowMax0_carry_n_1;
  wire destRowMax0_carry_n_2;
  wire destRowMax0_carry_n_3;
  wire destRowMax_3;
  wire [8:0]destRowMin;
  wire destRowMin0_carry__0_i_1_n_0;
  wire destRowMin0_carry__0_i_2_n_0;
  wire destRowMin0_carry__0_n_3;
  wire destRowMin0_carry_i_1_n_0;
  wire destRowMin0_carry_i_2_n_0;
  wire destRowMin0_carry_i_3_n_0;
  wire destRowMin0_carry_i_4_n_0;
  wire destRowMin0_carry_i_5_n_0;
  wire destRowMin0_carry_i_6_n_0;
  wire destRowMin0_carry_i_7_n_0;
  wire destRowMin0_carry_i_8_n_0;
  wire destRowMin0_carry_n_0;
  wire destRowMin0_carry_n_1;
  wire destRowMin0_carry_n_2;
  wire destRowMin0_carry_n_3;
  wire destRowMin_2;
  wire [8:0]dest_col;
  wire dest_col0_carry__0_i_1_n_0;
  wire dest_col0_carry__0_i_2_n_0;
  wire dest_col0_carry__0_i_3_n_0;
  wire dest_col0_carry__0_i_4_n_0;
  wire dest_col0_carry__0_n_0;
  wire dest_col0_carry__0_n_1;
  wire dest_col0_carry__0_n_2;
  wire dest_col0_carry__0_n_3;
  wire dest_col0_carry__1_i_1_n_0;
  wire dest_col0_carry__1_i_2_n_0;
  wire dest_col0_carry__1_n_3;
  wire dest_col0_carry_i_1_n_0;
  wire dest_col0_carry_i_2_n_0;
  wire dest_col0_carry_i_3_n_0;
  wire dest_col0_carry_i_4_n_0;
  wire dest_col0_carry_n_0;
  wire dest_col0_carry_n_1;
  wire dest_col0_carry_n_2;
  wire dest_col0_carry_n_3;
  wire [7:0]dest_row;
  wire dest_row0_carry__0_i_1_n_0;
  wire dest_row0_carry__0_i_2_n_0;
  wire dest_row0_carry__0_i_3_n_0;
  wire dest_row0_carry__0_i_4_n_0;
  wire dest_row0_carry__0_n_0;
  wire dest_row0_carry__0_n_1;
  wire dest_row0_carry__0_n_2;
  wire dest_row0_carry__0_n_3;
  wire dest_row0_carry__1_i_1_n_0;
  wire dest_row0_carry_i_1_n_0;
  wire dest_row0_carry_i_2_n_0;
  wire dest_row0_carry_i_3_n_0;
  wire dest_row0_carry_i_4_n_0;
  wire dest_row0_carry_n_0;
  wire dest_row0_carry_n_1;
  wire dest_row0_carry_n_2;
  wire dest_row0_carry_n_3;
  wire dest_start_valid;
  wire dest_start_valid_i_1_n_0;
  wire dest_start_valid_i_2_n_0;
  wire dest_start_valid_i_3_n_0;
  wire dest_start_valid_i_4_n_0;
  wire dest_start_valid_i_5_n_0;
  wire [7:7]g_weighted;
  wire [7:5]grey;
  wire grey__1_carry__0_i_1_n_0;
  wire grey__1_carry__0_i_2_n_0;
  wire grey__1_carry__0_i_3_n_0;
  wire grey__1_carry__0_i_5_n_0;
  wire grey__1_carry__0_i_6_n_0;
  wire grey__1_carry__0_i_7_n_0;
  wire grey__1_carry__0_n_1;
  wire grey__1_carry__0_n_2;
  wire grey__1_carry__0_n_3;
  wire grey__1_carry_i_1_n_0;
  wire grey__1_carry_i_2_n_0;
  wire grey__1_carry_i_3_n_0;
  wire grey__1_carry_i_4_n_0;
  wire grey__1_carry_n_0;
  wire grey__1_carry_n_1;
  wire grey__1_carry_n_2;
  wire grey__1_carry_n_3;
  wire [0:0]m_axis_data;
  wire \m_axis_data[0]_i_1_n_0 ;
  wire m_axis_ready;
  wire m_axis_valid;
  wire [8:0]rowIdx;
  wire \rowIdx[7]_i_2_n_0 ;
  wire \rowIdx[7]_i_3_n_0 ;
  wire \rowIdx[8]_i_1_n_0 ;
  wire \rowIdx[8]_i_3_n_0 ;
  wire \rowIdx_reg_n_0_[0] ;
  wire \rowIdx_reg_n_0_[1] ;
  wire \rowIdx_reg_n_0_[2] ;
  wire \rowIdx_reg_n_0_[3] ;
  wire \rowIdx_reg_n_0_[4] ;
  wire \rowIdx_reg_n_0_[5] ;
  wire \rowIdx_reg_n_0_[6] ;
  wire \rowIdx_reg_n_0_[7] ;
  wire \rowIdx_reg_n_0_[8] ;
  wire [11:0]s_axis_data;
  wire s_axis_valid;
  wire [9:0]startColMax;
  wire startColMax0_carry__0_i_1_n_0;
  wire startColMax0_carry__0_i_2_n_0;
  wire startColMax0_carry__0_n_3;
  wire startColMax0_carry_i_1_n_0;
  wire startColMax0_carry_i_2_n_0;
  wire startColMax0_carry_i_3_n_0;
  wire startColMax0_carry_i_4_n_0;
  wire startColMax0_carry_i_5_n_0;
  wire startColMax0_carry_i_6_n_0;
  wire startColMax0_carry_i_7_n_0;
  wire startColMax0_carry_i_8_n_0;
  wire startColMax0_carry_n_0;
  wire startColMax0_carry_n_1;
  wire startColMax0_carry_n_2;
  wire startColMax0_carry_n_3;
  wire startColMax_6;
  wire [9:0]startColMin;
  wire startColMin0_carry__0_i_1_n_0;
  wire startColMin0_carry__0_i_2_n_0;
  wire startColMin0_carry__0_n_3;
  wire startColMin0_carry_i_1_n_0;
  wire startColMin0_carry_i_2_n_0;
  wire startColMin0_carry_i_3_n_0;
  wire startColMin0_carry_i_4_n_0;
  wire startColMin0_carry_i_5_n_0;
  wire startColMin0_carry_i_6_n_0;
  wire startColMin0_carry_i_7_n_0;
  wire startColMin0_carry_i_8_n_0;
  wire startColMin0_carry_n_0;
  wire startColMin0_carry_n_1;
  wire startColMin0_carry_n_2;
  wire startColMin0_carry_n_3;
  wire \startColMin[9]_i_2_n_0 ;
  wire \startColMin[9]_i_3_n_0 ;
  wire startColMin_7;
  wire [8:0]startRowMax;
  wire startRowMax0_carry__0_i_1_n_0;
  wire startRowMax0_carry__0_i_2_n_0;
  wire startRowMax0_carry__0_n_3;
  wire startRowMax0_carry_i_1_n_0;
  wire startRowMax0_carry_i_2_n_0;
  wire startRowMax0_carry_i_3_n_0;
  wire startRowMax0_carry_i_4_n_0;
  wire startRowMax0_carry_i_5_n_0;
  wire startRowMax0_carry_i_6_n_0;
  wire startRowMax0_carry_i_7_n_0;
  wire startRowMax0_carry_i_8_n_0;
  wire startRowMax0_carry_n_0;
  wire startRowMax0_carry_n_1;
  wire startRowMax0_carry_n_2;
  wire startRowMax0_carry_n_3;
  wire startRowMax_4;
  wire [8:0]startRowMin;
  wire startRowMin0_carry__0_i_1_n_0;
  wire startRowMin0_carry__0_i_2_n_0;
  wire startRowMin0_carry__0_n_3;
  wire startRowMin0_carry_i_1_n_0;
  wire startRowMin0_carry_i_2_n_0;
  wire startRowMin0_carry_i_3_n_0;
  wire startRowMin0_carry_i_4_n_0;
  wire startRowMin0_carry_i_5_n_0;
  wire startRowMin0_carry_i_6_n_0;
  wire startRowMin0_carry_i_7_n_0;
  wire startRowMin0_carry_i_8_n_0;
  wire startRowMin0_carry_n_0;
  wire startRowMin0_carry_n_1;
  wire startRowMin0_carry_n_2;
  wire startRowMin0_carry_n_3;
  wire startRowMin_5;
  wire [8:0]start_col;
  wire start_col0_carry__0_i_1_n_0;
  wire start_col0_carry__0_i_2_n_0;
  wire start_col0_carry__0_i_3_n_0;
  wire start_col0_carry__0_i_4_n_0;
  wire start_col0_carry__0_n_0;
  wire start_col0_carry__0_n_1;
  wire start_col0_carry__0_n_2;
  wire start_col0_carry__0_n_3;
  wire start_col0_carry__1_i_1_n_0;
  wire start_col0_carry__1_i_2_n_0;
  wire start_col0_carry__1_n_3;
  wire start_col0_carry_i_1_n_0;
  wire start_col0_carry_i_2_n_0;
  wire start_col0_carry_i_3_n_0;
  wire start_col0_carry_i_4_n_0;
  wire start_col0_carry_n_0;
  wire start_col0_carry_n_1;
  wire start_col0_carry_n_2;
  wire start_col0_carry_n_3;
  wire [7:0]start_row;
  wire start_row0_carry__0_i_1_n_0;
  wire start_row0_carry__0_i_2_n_0;
  wire start_row0_carry__0_i_3_n_0;
  wire start_row0_carry__0_i_4_n_0;
  wire start_row0_carry__0_n_0;
  wire start_row0_carry__0_n_1;
  wire start_row0_carry__0_n_2;
  wire start_row0_carry__0_n_3;
  wire start_row0_carry__1_i_1_n_0;
  wire start_row0_carry_i_1_n_0;
  wire start_row0_carry_i_2_n_0;
  wire start_row0_carry_i_3_n_0;
  wire start_row0_carry_i_4_n_0;
  wire start_row0_carry_n_0;
  wire start_row0_carry_n_1;
  wire start_row0_carry_n_2;
  wire start_row0_carry_n_3;
  wire [3:0]NLW_destColMax0_carry_O_UNCONNECTED;
  wire [3:1]NLW_destColMax0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_destColMax0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_destColMin0_carry_O_UNCONNECTED;
  wire [3:1]NLW_destColMin0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_destColMin0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_destRowMax0_carry_O_UNCONNECTED;
  wire [3:1]NLW_destRowMax0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_destRowMax0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_destRowMin0_carry_O_UNCONNECTED;
  wire [3:1]NLW_destRowMin0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_destRowMin0_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_dest_col0_carry_O_UNCONNECTED;
  wire [3:1]NLW_dest_col0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_dest_col0_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_dest_row0_carry_O_UNCONNECTED;
  wire [3:0]NLW_dest_row0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_dest_row0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_grey__1_carry_O_UNCONNECTED;
  wire [3:3]NLW_grey__1_carry__0_CO_UNCONNECTED;
  wire [0:0]NLW_grey__1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_startColMax0_carry_O_UNCONNECTED;
  wire [3:1]NLW_startColMax0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_startColMax0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_startColMin0_carry_O_UNCONNECTED;
  wire [3:1]NLW_startColMin0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_startColMin0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_startRowMax0_carry_O_UNCONNECTED;
  wire [3:1]NLW_startRowMax0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_startRowMax0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_startRowMin0_carry_O_UNCONNECTED;
  wire [3:1]NLW_startRowMin0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_startRowMin0_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_start_col0_carry_O_UNCONNECTED;
  wire [3:1]NLW_start_col0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_start_col0_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_start_row0_carry_O_UNCONNECTED;
  wire [3:0]NLW_start_row0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_start_row0_carry__1_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \colIdx[0]_i_1 
       (.I0(\colIdx_reg_n_0_[0] ),
        .O(colIdx[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \colIdx[1]_i_1 
       (.I0(\colIdx_reg_n_0_[0] ),
        .I1(\colIdx_reg_n_0_[1] ),
        .O(colIdx[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \colIdx[2]_i_1 
       (.I0(\colIdx_reg_n_0_[0] ),
        .I1(\colIdx_reg_n_0_[1] ),
        .I2(\colIdx_reg_n_0_[2] ),
        .O(colIdx[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \colIdx[3]_i_1 
       (.I0(\colIdx_reg_n_0_[3] ),
        .I1(\colIdx_reg_n_0_[0] ),
        .I2(\colIdx_reg_n_0_[1] ),
        .I3(\colIdx_reg_n_0_[2] ),
        .O(colIdx[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \colIdx[4]_i_1 
       (.I0(\colIdx_reg_n_0_[4] ),
        .I1(\colIdx_reg_n_0_[2] ),
        .I2(\colIdx_reg_n_0_[1] ),
        .I3(\colIdx_reg_n_0_[0] ),
        .I4(\colIdx_reg_n_0_[3] ),
        .O(\colIdx[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \colIdx[5]_i_1 
       (.I0(\colIdx_reg_n_0_[5] ),
        .I1(\colIdx_reg_n_0_[3] ),
        .I2(\colIdx_reg_n_0_[0] ),
        .I3(\colIdx_reg_n_0_[1] ),
        .I4(\colIdx_reg_n_0_[2] ),
        .I5(\colIdx_reg_n_0_[4] ),
        .O(colIdx[5]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \colIdx[6]_i_1 
       (.I0(dest_start_valid_i_3_n_0),
        .I1(\colIdx[7]_i_2_n_0 ),
        .I2(\colIdx_reg_n_0_[3] ),
        .I3(\colIdx_reg_n_0_[4] ),
        .I4(\colIdx_reg_n_0_[5] ),
        .I5(\colIdx_reg_n_0_[6] ),
        .O(colIdx[6]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \colIdx[7]_i_1 
       (.I0(\colIdx_reg_n_0_[7] ),
        .I1(\colIdx_reg_n_0_[6] ),
        .I2(\colIdx[7]_i_2_n_0 ),
        .I3(\colIdx_reg_n_0_[3] ),
        .I4(\colIdx_reg_n_0_[4] ),
        .I5(\colIdx_reg_n_0_[5] ),
        .O(colIdx[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \colIdx[7]_i_2 
       (.I0(\colIdx_reg_n_0_[2] ),
        .I1(\colIdx_reg_n_0_[1] ),
        .I2(\colIdx_reg_n_0_[0] ),
        .O(\colIdx[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \colIdx[8]_i_1 
       (.I0(dest_start_valid_i_3_n_0),
        .I1(\colIdx_reg_n_0_[7] ),
        .I2(\colIdx_reg_n_0_[6] ),
        .I3(\colIdx[9]_i_4_n_0 ),
        .I4(\colIdx_reg_n_0_[8] ),
        .O(colIdx[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \colIdx[9]_i_1 
       (.I0(axi_reset_n),
        .O(\colIdx[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \colIdx[9]_i_2 
       (.I0(m_axis_ready),
        .I1(s_axis_valid),
        .O(colIdx0));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \colIdx[9]_i_3 
       (.I0(\colIdx_reg_n_0_[9] ),
        .I1(\colIdx_reg_n_0_[7] ),
        .I2(\colIdx_reg_n_0_[6] ),
        .I3(\colIdx[9]_i_4_n_0 ),
        .I4(\colIdx_reg_n_0_[8] ),
        .O(colIdx[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \colIdx[9]_i_4 
       (.I0(\colIdx_reg_n_0_[0] ),
        .I1(\colIdx_reg_n_0_[1] ),
        .I2(\colIdx_reg_n_0_[2] ),
        .I3(\colIdx_reg_n_0_[3] ),
        .I4(\colIdx_reg_n_0_[4] ),
        .I5(\colIdx_reg_n_0_[5] ),
        .O(\colIdx[9]_i_4_n_0 ));
  FDRE \colIdx_reg[0] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(colIdx[0]),
        .Q(\colIdx_reg_n_0_[0] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \colIdx_reg[1] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(colIdx[1]),
        .Q(\colIdx_reg_n_0_[1] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \colIdx_reg[2] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(colIdx[2]),
        .Q(\colIdx_reg_n_0_[2] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \colIdx_reg[3] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(colIdx[3]),
        .Q(\colIdx_reg_n_0_[3] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \colIdx_reg[4] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(\colIdx[4]_i_1_n_0 ),
        .Q(\colIdx_reg_n_0_[4] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \colIdx_reg[5] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(colIdx[5]),
        .Q(\colIdx_reg_n_0_[5] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \colIdx_reg[6] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(colIdx[6]),
        .Q(\colIdx_reg_n_0_[6] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \colIdx_reg[7] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(colIdx[7]),
        .Q(\colIdx_reg_n_0_[7] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \colIdx_reg[8] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(colIdx[8]),
        .Q(\colIdx_reg_n_0_[8] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \colIdx_reg[9] 
       (.C(axi_clk),
        .CE(colIdx0),
        .D(colIdx[9]),
        .Q(\colIdx_reg_n_0_[9] ),
        .R(\colIdx[9]_i_1_n_0 ));
  CARRY4 destColMax0_carry
       (.CI(1'b0),
        .CO({destColMax0_carry_n_0,destColMax0_carry_n_1,destColMax0_carry_n_2,destColMax0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({destColMax0_carry_i_1_n_0,destColMax0_carry_i_2_n_0,destColMax0_carry_i_3_n_0,destColMax0_carry_i_4_n_0}),
        .O(NLW_destColMax0_carry_O_UNCONNECTED[3:0]),
        .S({destColMax0_carry_i_5_n_0,destColMax0_carry_i_6_n_0,destColMax0_carry_i_7_n_0,destColMax0_carry_i_8_n_0}));
  CARRY4 destColMax0_carry__0
       (.CI(destColMax0_carry_n_0),
        .CO({NLW_destColMax0_carry__0_CO_UNCONNECTED[3:1],destColMax0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,destColMax0_carry__0_i_1_n_0}),
        .O(NLW_destColMax0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,destColMax0_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMax0_carry__0_i_1
       (.I0(\colIdx_reg_n_0_[9] ),
        .I1(destColMax[9]),
        .I2(\colIdx_reg_n_0_[8] ),
        .I3(destColMax[8]),
        .O(destColMax0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMax0_carry__0_i_2
       (.I0(destColMax[9]),
        .I1(\colIdx_reg_n_0_[9] ),
        .I2(destColMax[8]),
        .I3(\colIdx_reg_n_0_[8] ),
        .O(destColMax0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMax0_carry_i_1
       (.I0(\colIdx_reg_n_0_[7] ),
        .I1(destColMax[7]),
        .I2(\colIdx_reg_n_0_[6] ),
        .I3(destColMax[6]),
        .O(destColMax0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMax0_carry_i_2
       (.I0(\colIdx_reg_n_0_[5] ),
        .I1(destColMax[5]),
        .I2(\colIdx_reg_n_0_[4] ),
        .I3(destColMax[4]),
        .O(destColMax0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMax0_carry_i_3
       (.I0(\colIdx_reg_n_0_[3] ),
        .I1(destColMax[3]),
        .I2(\colIdx_reg_n_0_[2] ),
        .I3(destColMax[2]),
        .O(destColMax0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMax0_carry_i_4
       (.I0(\colIdx_reg_n_0_[1] ),
        .I1(destColMax[1]),
        .I2(\colIdx_reg_n_0_[0] ),
        .I3(destColMax[0]),
        .O(destColMax0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMax0_carry_i_5
       (.I0(destColMax[7]),
        .I1(\colIdx_reg_n_0_[7] ),
        .I2(destColMax[6]),
        .I3(\colIdx_reg_n_0_[6] ),
        .O(destColMax0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMax0_carry_i_6
       (.I0(destColMax[5]),
        .I1(\colIdx_reg_n_0_[5] ),
        .I2(destColMax[4]),
        .I3(\colIdx_reg_n_0_[4] ),
        .O(destColMax0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMax0_carry_i_7
       (.I0(destColMax[3]),
        .I1(\colIdx_reg_n_0_[3] ),
        .I2(destColMax[2]),
        .I3(\colIdx_reg_n_0_[2] ),
        .O(destColMax0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMax0_carry_i_8
       (.I0(destColMax[1]),
        .I1(\colIdx_reg_n_0_[1] ),
        .I2(destColMax[0]),
        .I3(\colIdx_reg_n_0_[0] ),
        .O(destColMax0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \destColMax[9]_i_1 
       (.I0(\destColMin[9]_i_4_n_0 ),
        .I1(\destColMin[9]_i_5_n_0 ),
        .I2(\destColMin[9]_i_6_n_0 ),
        .I3(m_axis_ready),
        .I4(s_axis_valid),
        .I5(destColMax0_carry__0_n_3),
        .O(destColMax_1));
  FDRE \destColMax_reg[0] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[0] ),
        .Q(destColMax[0]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMax_reg[1] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[1] ),
        .Q(destColMax[1]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMax_reg[2] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[2] ),
        .Q(destColMax[2]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMax_reg[3] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[3] ),
        .Q(destColMax[3]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMax_reg[4] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[4] ),
        .Q(destColMax[4]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMax_reg[5] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[5] ),
        .Q(destColMax[5]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMax_reg[6] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[6] ),
        .Q(destColMax[6]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMax_reg[7] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[7] ),
        .Q(destColMax[7]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMax_reg[8] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[8] ),
        .Q(destColMax[8]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMax_reg[9] 
       (.C(axi_clk),
        .CE(destColMax_1),
        .D(\colIdx_reg_n_0_[9] ),
        .Q(destColMax[9]),
        .R(\destColMin[9]_i_1_n_0 ));
  CARRY4 destColMin0_carry
       (.CI(1'b0),
        .CO({destColMin0_carry_n_0,destColMin0_carry_n_1,destColMin0_carry_n_2,destColMin0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({destColMin0_carry_i_1_n_0,destColMin0_carry_i_2_n_0,destColMin0_carry_i_3_n_0,destColMin0_carry_i_4_n_0}),
        .O(NLW_destColMin0_carry_O_UNCONNECTED[3:0]),
        .S({destColMin0_carry_i_5_n_0,destColMin0_carry_i_6_n_0,destColMin0_carry_i_7_n_0,destColMin0_carry_i_8_n_0}));
  CARRY4 destColMin0_carry__0
       (.CI(destColMin0_carry_n_0),
        .CO({NLW_destColMin0_carry__0_CO_UNCONNECTED[3:1],destColMin0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,destColMin0_carry__0_i_1_n_0}),
        .O(NLW_destColMin0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,destColMin0_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMin0_carry__0_i_1
       (.I0(destColMin[9]),
        .I1(\colIdx_reg_n_0_[9] ),
        .I2(destColMin[8]),
        .I3(\colIdx_reg_n_0_[8] ),
        .O(destColMin0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMin0_carry__0_i_2
       (.I0(\colIdx_reg_n_0_[9] ),
        .I1(destColMin[9]),
        .I2(\colIdx_reg_n_0_[8] ),
        .I3(destColMin[8]),
        .O(destColMin0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMin0_carry_i_1
       (.I0(destColMin[7]),
        .I1(\colIdx_reg_n_0_[7] ),
        .I2(destColMin[6]),
        .I3(\colIdx_reg_n_0_[6] ),
        .O(destColMin0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMin0_carry_i_2
       (.I0(destColMin[5]),
        .I1(\colIdx_reg_n_0_[5] ),
        .I2(destColMin[4]),
        .I3(\colIdx_reg_n_0_[4] ),
        .O(destColMin0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMin0_carry_i_3
       (.I0(destColMin[3]),
        .I1(\colIdx_reg_n_0_[3] ),
        .I2(destColMin[2]),
        .I3(\colIdx_reg_n_0_[2] ),
        .O(destColMin0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destColMin0_carry_i_4
       (.I0(destColMin[1]),
        .I1(\colIdx_reg_n_0_[1] ),
        .I2(destColMin[0]),
        .I3(\colIdx_reg_n_0_[0] ),
        .O(destColMin0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMin0_carry_i_5
       (.I0(\colIdx_reg_n_0_[7] ),
        .I1(destColMin[7]),
        .I2(\colIdx_reg_n_0_[6] ),
        .I3(destColMin[6]),
        .O(destColMin0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMin0_carry_i_6
       (.I0(\colIdx_reg_n_0_[5] ),
        .I1(destColMin[5]),
        .I2(\colIdx_reg_n_0_[4] ),
        .I3(destColMin[4]),
        .O(destColMin0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMin0_carry_i_7
       (.I0(\colIdx_reg_n_0_[3] ),
        .I1(destColMin[3]),
        .I2(\colIdx_reg_n_0_[2] ),
        .I3(destColMin[2]),
        .O(destColMin0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destColMin0_carry_i_8
       (.I0(\colIdx_reg_n_0_[1] ),
        .I1(destColMin[1]),
        .I2(\colIdx_reg_n_0_[0] ),
        .I3(destColMin[0]),
        .O(destColMin0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h7077)) 
    \destColMin[9]_i_1 
       (.I0(s_axis_valid),
        .I1(m_axis_ready),
        .I2(\destColMin[9]_i_3_n_0 ),
        .I3(axi_reset_n),
        .O(\destColMin[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \destColMin[9]_i_10 
       (.I0(\rowIdx_reg_n_0_[7] ),
        .I1(\rowIdx_reg_n_0_[2] ),
        .I2(\rowIdx_reg_n_0_[1] ),
        .O(\destColMin[9]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F7F7FFF)) 
    \destColMin[9]_i_11 
       (.I0(\colIdx_reg_n_0_[3] ),
        .I1(\colIdx_reg_n_0_[4] ),
        .I2(\colIdx_reg_n_0_[5] ),
        .I3(\colIdx_reg_n_0_[2] ),
        .I4(\colIdx_reg_n_0_[1] ),
        .O(\destColMin[9]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \destColMin[9]_i_12 
       (.I0(\colIdx_reg_n_0_[2] ),
        .I1(\colIdx_reg_n_0_[1] ),
        .I2(\colIdx_reg_n_0_[5] ),
        .I3(\colIdx_reg_n_0_[4] ),
        .O(\destColMin[9]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00011111)) 
    \destColMin[9]_i_13 
       (.I0(\rowIdx_reg_n_0_[8] ),
        .I1(\rowIdx_reg_n_0_[4] ),
        .I2(\rowIdx_reg_n_0_[1] ),
        .I3(\rowIdx_reg_n_0_[2] ),
        .I4(\rowIdx_reg_n_0_[3] ),
        .O(\destColMin[9]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \destColMin[9]_i_14 
       (.I0(\rowIdx_reg_n_0_[7] ),
        .I1(\rowIdx_reg_n_0_[6] ),
        .I2(\rowIdx_reg_n_0_[5] ),
        .O(\destColMin[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBBF)) 
    \destColMin[9]_i_15 
       (.I0(s_axis_data[9]),
        .I1(s_axis_data[6]),
        .I2(s_axis_data[5]),
        .I3(s_axis_data[4]),
        .I4(s_axis_data[2]),
        .I5(s_axis_data[7]),
        .O(\destColMin[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \destColMin[9]_i_2 
       (.I0(\destColMin[9]_i_4_n_0 ),
        .I1(\destColMin[9]_i_5_n_0 ),
        .I2(\destColMin[9]_i_6_n_0 ),
        .I3(m_axis_ready),
        .I4(s_axis_valid),
        .I5(destColMin0_carry__0_n_3),
        .O(destColMin_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \destColMin[9]_i_3 
       (.I0(\destColMin[9]_i_7_n_0 ),
        .I1(\rowIdx_reg_n_0_[0] ),
        .I2(\rowIdx_reg_n_0_[7] ),
        .I3(\colIdx_reg_n_0_[0] ),
        .I4(\destColMin[9]_i_8_n_0 ),
        .I5(\destColMin[9]_i_9_n_0 ),
        .O(\destColMin[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFF2F2F2FFF2)) 
    \destColMin[9]_i_4 
       (.I0(\destColMin[9]_i_9_n_0 ),
        .I1(\destColMin[9]_i_10_n_0 ),
        .I2(\colIdx_reg_n_0_[9] ),
        .I3(\colIdx_reg_n_0_[8] ),
        .I4(\destColMin[9]_i_11_n_0 ),
        .I5(dest_start_valid_i_5_n_0),
        .O(\destColMin[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4F4F4F44)) 
    \destColMin[9]_i_5 
       (.I0(\destColMin[9]_i_12_n_0 ),
        .I1(\destColMin[9]_i_8_n_0 ),
        .I2(\destColMin[9]_i_13_n_0 ),
        .I3(\rowIdx_reg_n_0_[8] ),
        .I4(\destColMin[9]_i_14_n_0 ),
        .O(\destColMin[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \destColMin[9]_i_6 
       (.I0(s_axis_data[1]),
        .I1(s_axis_data[10]),
        .I2(s_axis_data[11]),
        .I3(s_axis_data[3]),
        .I4(\destColMin[9]_i_15_n_0 ),
        .O(\destColMin[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \destColMin[9]_i_7 
       (.I0(\colIdx_reg_n_0_[5] ),
        .I1(\colIdx_reg_n_0_[4] ),
        .I2(\rowIdx_reg_n_0_[1] ),
        .I3(\rowIdx_reg_n_0_[2] ),
        .I4(\colIdx_reg_n_0_[1] ),
        .I5(\colIdx_reg_n_0_[2] ),
        .O(\destColMin[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \destColMin[9]_i_8 
       (.I0(\colIdx_reg_n_0_[9] ),
        .I1(\colIdx_reg_n_0_[8] ),
        .I2(\colIdx_reg_n_0_[6] ),
        .I3(\colIdx_reg_n_0_[7] ),
        .I4(\colIdx_reg_n_0_[3] ),
        .O(\destColMin[9]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \destColMin[9]_i_9 
       (.I0(\rowIdx_reg_n_0_[8] ),
        .I1(\rowIdx_reg_n_0_[4] ),
        .I2(\rowIdx_reg_n_0_[3] ),
        .I3(\rowIdx_reg_n_0_[6] ),
        .I4(\rowIdx_reg_n_0_[5] ),
        .O(\destColMin[9]_i_9_n_0 ));
  FDSE \destColMin_reg[0] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[0] ),
        .Q(destColMin[0]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destColMin_reg[1] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[1] ),
        .Q(destColMin[1]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destColMin_reg[2] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[2] ),
        .Q(destColMin[2]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destColMin_reg[3] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[3] ),
        .Q(destColMin[3]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destColMin_reg[4] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[4] ),
        .Q(destColMin[4]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destColMin_reg[5] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[5] ),
        .Q(destColMin[5]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMin_reg[6] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[6] ),
        .Q(destColMin[6]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMin_reg[7] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[7] ),
        .Q(destColMin[7]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDSE \destColMin_reg[8] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[8] ),
        .Q(destColMin[8]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDRE \destColMin_reg[9] 
       (.C(axi_clk),
        .CE(destColMin_0),
        .D(\colIdx_reg_n_0_[9] ),
        .Q(destColMin[9]),
        .R(\destColMin[9]_i_1_n_0 ));
  CARRY4 destRowMax0_carry
       (.CI(1'b0),
        .CO({destRowMax0_carry_n_0,destRowMax0_carry_n_1,destRowMax0_carry_n_2,destRowMax0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({destRowMax0_carry_i_1_n_0,destRowMax0_carry_i_2_n_0,destRowMax0_carry_i_3_n_0,destRowMax0_carry_i_4_n_0}),
        .O(NLW_destRowMax0_carry_O_UNCONNECTED[3:0]),
        .S({destRowMax0_carry_i_5_n_0,destRowMax0_carry_i_6_n_0,destRowMax0_carry_i_7_n_0,destRowMax0_carry_i_8_n_0}));
  CARRY4 destRowMax0_carry__0
       (.CI(destRowMax0_carry_n_0),
        .CO({NLW_destRowMax0_carry__0_CO_UNCONNECTED[3:1],destRowMax0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,destRowMax0_carry__0_i_1_n_0}),
        .O(NLW_destRowMax0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,destRowMax0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    destRowMax0_carry__0_i_1
       (.I0(\rowIdx_reg_n_0_[8] ),
        .I1(destRowMax[8]),
        .O(destRowMax0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    destRowMax0_carry__0_i_2
       (.I0(destRowMax[8]),
        .I1(\rowIdx_reg_n_0_[8] ),
        .O(destRowMax0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destRowMax0_carry_i_1
       (.I0(\rowIdx_reg_n_0_[7] ),
        .I1(destRowMax[7]),
        .I2(\rowIdx_reg_n_0_[6] ),
        .I3(destRowMax[6]),
        .O(destRowMax0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destRowMax0_carry_i_2
       (.I0(\rowIdx_reg_n_0_[5] ),
        .I1(destRowMax[5]),
        .I2(\rowIdx_reg_n_0_[4] ),
        .I3(destRowMax[4]),
        .O(destRowMax0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destRowMax0_carry_i_3
       (.I0(\rowIdx_reg_n_0_[3] ),
        .I1(destRowMax[3]),
        .I2(\rowIdx_reg_n_0_[2] ),
        .I3(destRowMax[2]),
        .O(destRowMax0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destRowMax0_carry_i_4
       (.I0(\rowIdx_reg_n_0_[1] ),
        .I1(destRowMax[1]),
        .I2(\rowIdx_reg_n_0_[0] ),
        .I3(destRowMax[0]),
        .O(destRowMax0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destRowMax0_carry_i_5
       (.I0(destRowMax[7]),
        .I1(\rowIdx_reg_n_0_[7] ),
        .I2(destRowMax[6]),
        .I3(\rowIdx_reg_n_0_[6] ),
        .O(destRowMax0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destRowMax0_carry_i_6
       (.I0(destRowMax[5]),
        .I1(\rowIdx_reg_n_0_[5] ),
        .I2(destRowMax[4]),
        .I3(\rowIdx_reg_n_0_[4] ),
        .O(destRowMax0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destRowMax0_carry_i_7
       (.I0(destRowMax[3]),
        .I1(\rowIdx_reg_n_0_[3] ),
        .I2(destRowMax[2]),
        .I3(\rowIdx_reg_n_0_[2] ),
        .O(destRowMax0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destRowMax0_carry_i_8
       (.I0(destRowMax[1]),
        .I1(\rowIdx_reg_n_0_[1] ),
        .I2(destRowMax[0]),
        .I3(\rowIdx_reg_n_0_[0] ),
        .O(destRowMax0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \destRowMax[8]_i_1 
       (.I0(\destColMin[9]_i_4_n_0 ),
        .I1(\destColMin[9]_i_5_n_0 ),
        .I2(\destColMin[9]_i_6_n_0 ),
        .I3(m_axis_ready),
        .I4(s_axis_valid),
        .I5(destRowMax0_carry__0_n_3),
        .O(destRowMax_3));
  FDRE \destRowMax_reg[0] 
       (.C(axi_clk),
        .CE(destRowMax_3),
        .D(\rowIdx_reg_n_0_[0] ),
        .Q(destRowMax[0]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMax_reg[1] 
       (.C(axi_clk),
        .CE(destRowMax_3),
        .D(\rowIdx_reg_n_0_[1] ),
        .Q(destRowMax[1]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMax_reg[2] 
       (.C(axi_clk),
        .CE(destRowMax_3),
        .D(\rowIdx_reg_n_0_[2] ),
        .Q(destRowMax[2]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMax_reg[3] 
       (.C(axi_clk),
        .CE(destRowMax_3),
        .D(\rowIdx_reg_n_0_[3] ),
        .Q(destRowMax[3]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMax_reg[4] 
       (.C(axi_clk),
        .CE(destRowMax_3),
        .D(\rowIdx_reg_n_0_[4] ),
        .Q(destRowMax[4]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMax_reg[5] 
       (.C(axi_clk),
        .CE(destRowMax_3),
        .D(\rowIdx_reg_n_0_[5] ),
        .Q(destRowMax[5]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMax_reg[6] 
       (.C(axi_clk),
        .CE(destRowMax_3),
        .D(\rowIdx_reg_n_0_[6] ),
        .Q(destRowMax[6]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMax_reg[7] 
       (.C(axi_clk),
        .CE(destRowMax_3),
        .D(\rowIdx_reg_n_0_[7] ),
        .Q(destRowMax[7]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMax_reg[8] 
       (.C(axi_clk),
        .CE(destRowMax_3),
        .D(\rowIdx_reg_n_0_[8] ),
        .Q(destRowMax[8]),
        .R(\destColMin[9]_i_1_n_0 ));
  CARRY4 destRowMin0_carry
       (.CI(1'b0),
        .CO({destRowMin0_carry_n_0,destRowMin0_carry_n_1,destRowMin0_carry_n_2,destRowMin0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({destRowMin0_carry_i_1_n_0,destRowMin0_carry_i_2_n_0,destRowMin0_carry_i_3_n_0,destRowMin0_carry_i_4_n_0}),
        .O(NLW_destRowMin0_carry_O_UNCONNECTED[3:0]),
        .S({destRowMin0_carry_i_5_n_0,destRowMin0_carry_i_6_n_0,destRowMin0_carry_i_7_n_0,destRowMin0_carry_i_8_n_0}));
  CARRY4 destRowMin0_carry__0
       (.CI(destRowMin0_carry_n_0),
        .CO({NLW_destRowMin0_carry__0_CO_UNCONNECTED[3:1],destRowMin0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,destRowMin0_carry__0_i_1_n_0}),
        .O(NLW_destRowMin0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,destRowMin0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    destRowMin0_carry__0_i_1
       (.I0(destRowMin[8]),
        .I1(\rowIdx_reg_n_0_[8] ),
        .O(destRowMin0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    destRowMin0_carry__0_i_2
       (.I0(\rowIdx_reg_n_0_[8] ),
        .I1(destRowMin[8]),
        .O(destRowMin0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destRowMin0_carry_i_1
       (.I0(destRowMin[7]),
        .I1(\rowIdx_reg_n_0_[7] ),
        .I2(destRowMin[6]),
        .I3(\rowIdx_reg_n_0_[6] ),
        .O(destRowMin0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destRowMin0_carry_i_2
       (.I0(destRowMin[5]),
        .I1(\rowIdx_reg_n_0_[5] ),
        .I2(destRowMin[4]),
        .I3(\rowIdx_reg_n_0_[4] ),
        .O(destRowMin0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destRowMin0_carry_i_3
       (.I0(destRowMin[3]),
        .I1(\rowIdx_reg_n_0_[3] ),
        .I2(destRowMin[2]),
        .I3(\rowIdx_reg_n_0_[2] ),
        .O(destRowMin0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    destRowMin0_carry_i_4
       (.I0(destRowMin[1]),
        .I1(\rowIdx_reg_n_0_[1] ),
        .I2(destRowMin[0]),
        .I3(\rowIdx_reg_n_0_[0] ),
        .O(destRowMin0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destRowMin0_carry_i_5
       (.I0(\rowIdx_reg_n_0_[7] ),
        .I1(destRowMin[7]),
        .I2(\rowIdx_reg_n_0_[6] ),
        .I3(destRowMin[6]),
        .O(destRowMin0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destRowMin0_carry_i_6
       (.I0(\rowIdx_reg_n_0_[5] ),
        .I1(destRowMin[5]),
        .I2(\rowIdx_reg_n_0_[4] ),
        .I3(destRowMin[4]),
        .O(destRowMin0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destRowMin0_carry_i_7
       (.I0(\rowIdx_reg_n_0_[3] ),
        .I1(destRowMin[3]),
        .I2(\rowIdx_reg_n_0_[2] ),
        .I3(destRowMin[2]),
        .O(destRowMin0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    destRowMin0_carry_i_8
       (.I0(\rowIdx_reg_n_0_[1] ),
        .I1(destRowMin[1]),
        .I2(\rowIdx_reg_n_0_[0] ),
        .I3(destRowMin[0]),
        .O(destRowMin0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \destRowMin[8]_i_1 
       (.I0(\destColMin[9]_i_4_n_0 ),
        .I1(\destColMin[9]_i_5_n_0 ),
        .I2(\destColMin[9]_i_6_n_0 ),
        .I3(m_axis_ready),
        .I4(s_axis_valid),
        .I5(destRowMin0_carry__0_n_3),
        .O(destRowMin_2));
  FDSE \destRowMin_reg[0] 
       (.C(axi_clk),
        .CE(destRowMin_2),
        .D(\rowIdx_reg_n_0_[0] ),
        .Q(destRowMin[0]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destRowMin_reg[1] 
       (.C(axi_clk),
        .CE(destRowMin_2),
        .D(\rowIdx_reg_n_0_[1] ),
        .Q(destRowMin[1]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destRowMin_reg[2] 
       (.C(axi_clk),
        .CE(destRowMin_2),
        .D(\rowIdx_reg_n_0_[2] ),
        .Q(destRowMin[2]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destRowMin_reg[3] 
       (.C(axi_clk),
        .CE(destRowMin_2),
        .D(\rowIdx_reg_n_0_[3] ),
        .Q(destRowMin[3]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMin_reg[4] 
       (.C(axi_clk),
        .CE(destRowMin_2),
        .D(\rowIdx_reg_n_0_[4] ),
        .Q(destRowMin[4]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDSE \destRowMin_reg[5] 
       (.C(axi_clk),
        .CE(destRowMin_2),
        .D(\rowIdx_reg_n_0_[5] ),
        .Q(destRowMin[5]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destRowMin_reg[6] 
       (.C(axi_clk),
        .CE(destRowMin_2),
        .D(\rowIdx_reg_n_0_[6] ),
        .Q(destRowMin[6]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \destRowMin_reg[7] 
       (.C(axi_clk),
        .CE(destRowMin_2),
        .D(\rowIdx_reg_n_0_[7] ),
        .Q(destRowMin[7]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDRE \destRowMin_reg[8] 
       (.C(axi_clk),
        .CE(destRowMin_2),
        .D(\rowIdx_reg_n_0_[8] ),
        .Q(destRowMin[8]),
        .R(\destColMin[9]_i_1_n_0 ));
  CARRY4 dest_col0_carry
       (.CI(1'b0),
        .CO({dest_col0_carry_n_0,dest_col0_carry_n_1,dest_col0_carry_n_2,dest_col0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(destColMax[3:0]),
        .O({dest_col[2:0],NLW_dest_col0_carry_O_UNCONNECTED[0]}),
        .S({dest_col0_carry_i_1_n_0,dest_col0_carry_i_2_n_0,dest_col0_carry_i_3_n_0,dest_col0_carry_i_4_n_0}));
  CARRY4 dest_col0_carry__0
       (.CI(dest_col0_carry_n_0),
        .CO({dest_col0_carry__0_n_0,dest_col0_carry__0_n_1,dest_col0_carry__0_n_2,dest_col0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(destColMax[7:4]),
        .O(dest_col[6:3]),
        .S({dest_col0_carry__0_i_1_n_0,dest_col0_carry__0_i_2_n_0,dest_col0_carry__0_i_3_n_0,dest_col0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry__0_i_1
       (.I0(destColMax[7]),
        .I1(destColMin[7]),
        .O(dest_col0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry__0_i_2
       (.I0(destColMax[6]),
        .I1(destColMin[6]),
        .O(dest_col0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry__0_i_3
       (.I0(destColMax[5]),
        .I1(destColMin[5]),
        .O(dest_col0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry__0_i_4
       (.I0(destColMax[4]),
        .I1(destColMin[4]),
        .O(dest_col0_carry__0_i_4_n_0));
  CARRY4 dest_col0_carry__1
       (.CI(dest_col0_carry__0_n_0),
        .CO({NLW_dest_col0_carry__1_CO_UNCONNECTED[3:1],dest_col0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,destColMax[8]}),
        .O({NLW_dest_col0_carry__1_O_UNCONNECTED[3:2],dest_col[8:7]}),
        .S({1'b0,1'b0,dest_col0_carry__1_i_1_n_0,dest_col0_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry__1_i_1
       (.I0(destColMin[9]),
        .I1(destColMax[9]),
        .O(dest_col0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry__1_i_2
       (.I0(destColMax[8]),
        .I1(destColMin[8]),
        .O(dest_col0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry_i_1
       (.I0(destColMax[3]),
        .I1(destColMin[3]),
        .O(dest_col0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry_i_2
       (.I0(destColMax[2]),
        .I1(destColMin[2]),
        .O(dest_col0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry_i_3
       (.I0(destColMax[1]),
        .I1(destColMin[1]),
        .O(dest_col0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_col0_carry_i_4
       (.I0(destColMax[0]),
        .I1(destColMin[0]),
        .O(dest_col0_carry_i_4_n_0));
  CARRY4 dest_row0_carry
       (.CI(1'b0),
        .CO({dest_row0_carry_n_0,dest_row0_carry_n_1,dest_row0_carry_n_2,dest_row0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(destRowMax[3:0]),
        .O({dest_row[2:0],NLW_dest_row0_carry_O_UNCONNECTED[0]}),
        .S({dest_row0_carry_i_1_n_0,dest_row0_carry_i_2_n_0,dest_row0_carry_i_3_n_0,dest_row0_carry_i_4_n_0}));
  CARRY4 dest_row0_carry__0
       (.CI(dest_row0_carry_n_0),
        .CO({dest_row0_carry__0_n_0,dest_row0_carry__0_n_1,dest_row0_carry__0_n_2,dest_row0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(destRowMax[7:4]),
        .O(dest_row[6:3]),
        .S({dest_row0_carry__0_i_1_n_0,dest_row0_carry__0_i_2_n_0,dest_row0_carry__0_i_3_n_0,dest_row0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dest_row0_carry__0_i_1
       (.I0(destRowMax[7]),
        .I1(destRowMin[7]),
        .O(dest_row0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_row0_carry__0_i_2
       (.I0(destRowMax[6]),
        .I1(destRowMin[6]),
        .O(dest_row0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_row0_carry__0_i_3
       (.I0(destRowMax[5]),
        .I1(destRowMin[5]),
        .O(dest_row0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_row0_carry__0_i_4
       (.I0(destRowMax[4]),
        .I1(destRowMin[4]),
        .O(dest_row0_carry__0_i_4_n_0));
  CARRY4 dest_row0_carry__1
       (.CI(dest_row0_carry__0_n_0),
        .CO(NLW_dest_row0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_dest_row0_carry__1_O_UNCONNECTED[3:1],dest_row[7]}),
        .S({1'b0,1'b0,1'b0,dest_row0_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dest_row0_carry__1_i_1
       (.I0(destRowMin[8]),
        .I1(destRowMax[8]),
        .O(dest_row0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_row0_carry_i_1
       (.I0(destRowMax[3]),
        .I1(destRowMin[3]),
        .O(dest_row0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_row0_carry_i_2
       (.I0(destRowMax[2]),
        .I1(destRowMin[2]),
        .O(dest_row0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_row0_carry_i_3
       (.I0(destRowMax[1]),
        .I1(destRowMin[1]),
        .O(dest_row0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dest_row0_carry_i_4
       (.I0(destRowMax[0]),
        .I1(destRowMin[0]),
        .O(dest_row0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    dest_start_valid_i_1
       (.I0(s_axis_valid),
        .I1(m_axis_ready),
        .I2(dest_start_valid_i_2_n_0),
        .I3(dest_start_valid_i_3_n_0),
        .I4(dest_start_valid),
        .I5(axi_reset_n),
        .O(dest_start_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    dest_start_valid_i_2
       (.I0(\rowIdx_reg_n_0_[7] ),
        .I1(\rowIdx_reg_n_0_[6] ),
        .I2(\rowIdx_reg_n_0_[5] ),
        .I3(\rowIdx_reg_n_0_[8] ),
        .I4(\rowIdx[8]_i_3_n_0 ),
        .I5(\rowIdx_reg_n_0_[4] ),
        .O(dest_start_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    dest_start_valid_i_3
       (.I0(dest_start_valid_i_4_n_0),
        .I1(dest_start_valid_i_5_n_0),
        .I2(\colIdx_reg_n_0_[8] ),
        .I3(\colIdx_reg_n_0_[4] ),
        .I4(\colIdx_reg_n_0_[5] ),
        .I5(\colIdx_reg_n_0_[9] ),
        .O(dest_start_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    dest_start_valid_i_4
       (.I0(\colIdx_reg_n_0_[3] ),
        .I1(\colIdx_reg_n_0_[0] ),
        .I2(\colIdx_reg_n_0_[1] ),
        .I3(\colIdx_reg_n_0_[2] ),
        .O(dest_start_valid_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    dest_start_valid_i_5
       (.I0(\colIdx_reg_n_0_[6] ),
        .I1(\colIdx_reg_n_0_[7] ),
        .O(dest_start_valid_i_5_n_0));
  FDRE dest_start_valid_reg
       (.C(axi_clk),
        .CE(1'b1),
        .D(dest_start_valid_i_1_n_0),
        .Q(dest_start_valid),
        .R(1'b0));
  CARRY4 grey__1_carry
       (.CI(1'b0),
        .CO({grey__1_carry_n_0,grey__1_carry_n_1,grey__1_carry_n_2,grey__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({grey__1_carry_i_1_n_0,s_axis_data[8],s_axis_data[0],1'b0}),
        .O(NLW_grey__1_carry_O_UNCONNECTED[3:0]),
        .S({grey__1_carry_i_2_n_0,grey__1_carry_i_3_n_0,grey__1_carry_i_4_n_0,s_axis_data[4]}));
  CARRY4 grey__1_carry__0
       (.CI(grey__1_carry_n_0),
        .CO({NLW_grey__1_carry__0_CO_UNCONNECTED[3],grey__1_carry__0_n_1,grey__1_carry__0_n_2,grey__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,grey__1_carry__0_i_1_n_0,grey__1_carry__0_i_2_n_0,grey__1_carry__0_i_3_n_0}),
        .O({grey,NLW_grey__1_carry__0_O_UNCONNECTED[0]}),
        .S({g_weighted,grey__1_carry__0_i_5_n_0,grey__1_carry__0_i_6_n_0,grey__1_carry__0_i_7_n_0}));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    grey__1_carry__0_i_1
       (.I0(s_axis_data[11]),
        .I1(s_axis_data[7]),
        .I2(s_axis_data[4]),
        .I3(s_axis_data[5]),
        .I4(s_axis_data[6]),
        .O(grey__1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFEA2A80)) 
    grey__1_carry__0_i_2
       (.I0(s_axis_data[3]),
        .I1(s_axis_data[4]),
        .I2(s_axis_data[7]),
        .I3(s_axis_data[5]),
        .I4(s_axis_data[10]),
        .O(grey__1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h8EE8)) 
    grey__1_carry__0_i_3
       (.I0(s_axis_data[9]),
        .I1(s_axis_data[2]),
        .I2(s_axis_data[7]),
        .I3(s_axis_data[4]),
        .O(grey__1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    grey__1_carry__0_i_4
       (.I0(s_axis_data[6]),
        .I1(s_axis_data[5]),
        .I2(s_axis_data[4]),
        .I3(s_axis_data[7]),
        .O(g_weighted));
  LUT5 #(
    .INIT(32'h17778888)) 
    grey__1_carry__0_i_5
       (.I0(s_axis_data[11]),
        .I1(s_axis_data[6]),
        .I2(s_axis_data[5]),
        .I3(s_axis_data[4]),
        .I4(s_axis_data[7]),
        .O(grey__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6999999996666666)) 
    grey__1_carry__0_i_6
       (.I0(grey__1_carry__0_i_2_n_0),
        .I1(s_axis_data[6]),
        .I2(s_axis_data[5]),
        .I3(s_axis_data[4]),
        .I4(s_axis_data[7]),
        .I5(s_axis_data[11]),
        .O(grey__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    grey__1_carry__0_i_7
       (.I0(grey__1_carry__0_i_3_n_0),
        .I1(s_axis_data[3]),
        .I2(s_axis_data[4]),
        .I3(s_axis_data[7]),
        .I4(s_axis_data[5]),
        .I5(s_axis_data[10]),
        .O(grey__1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    grey__1_carry_i_1
       (.I0(s_axis_data[9]),
        .I1(s_axis_data[4]),
        .I2(s_axis_data[7]),
        .I3(s_axis_data[2]),
        .O(grey__1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    grey__1_carry_i_2
       (.I0(s_axis_data[2]),
        .I1(s_axis_data[7]),
        .I2(s_axis_data[4]),
        .I3(s_axis_data[9]),
        .I4(s_axis_data[6]),
        .I5(s_axis_data[1]),
        .O(grey__1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    grey__1_carry_i_3
       (.I0(s_axis_data[6]),
        .I1(s_axis_data[1]),
        .I2(s_axis_data[8]),
        .O(grey__1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    grey__1_carry_i_4
       (.I0(s_axis_data[0]),
        .I1(s_axis_data[5]),
        .O(grey__1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hEAFFFFFFEA000000)) 
    \m_axis_data[0]_i_1 
       (.I0(grey[7]),
        .I1(grey[5]),
        .I2(grey[6]),
        .I3(m_axis_ready),
        .I4(s_axis_valid),
        .I5(m_axis_data),
        .O(\m_axis_data[0]_i_1_n_0 ));
  FDRE \m_axis_data_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\m_axis_data[0]_i_1_n_0 ),
        .Q(m_axis_data),
        .R(1'b0));
  FDRE m_axis_valid_reg
       (.C(axi_clk),
        .CE(1'b1),
        .D(s_axis_valid),
        .Q(m_axis_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rowIdx[0]_i_1 
       (.I0(\rowIdx_reg_n_0_[0] ),
        .O(rowIdx[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rowIdx[1]_i_1 
       (.I0(\rowIdx_reg_n_0_[0] ),
        .I1(\rowIdx_reg_n_0_[1] ),
        .O(rowIdx[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rowIdx[2]_i_1 
       (.I0(\rowIdx_reg_n_0_[2] ),
        .I1(\rowIdx_reg_n_0_[0] ),
        .I2(\rowIdx_reg_n_0_[1] ),
        .O(rowIdx[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rowIdx[3]_i_1 
       (.I0(\rowIdx_reg_n_0_[3] ),
        .I1(\rowIdx_reg_n_0_[0] ),
        .I2(\rowIdx_reg_n_0_[2] ),
        .I3(\rowIdx_reg_n_0_[1] ),
        .O(rowIdx[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rowIdx[4]_i_1 
       (.I0(\rowIdx[7]_i_2_n_0 ),
        .I1(\rowIdx_reg_n_0_[1] ),
        .I2(\rowIdx_reg_n_0_[2] ),
        .I3(\rowIdx_reg_n_0_[0] ),
        .I4(\rowIdx_reg_n_0_[3] ),
        .I5(\rowIdx_reg_n_0_[4] ),
        .O(rowIdx[4]));
  LUT6 #(
    .INIT(64'hFF00FFBF00FF0000)) 
    \rowIdx[5]_i_1 
       (.I0(\rowIdx_reg_n_0_[8] ),
        .I1(\rowIdx_reg_n_0_[6] ),
        .I2(\rowIdx_reg_n_0_[7] ),
        .I3(\rowIdx[8]_i_3_n_0 ),
        .I4(\rowIdx_reg_n_0_[4] ),
        .I5(\rowIdx_reg_n_0_[5] ),
        .O(rowIdx[5]));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \rowIdx[6]_i_1 
       (.I0(\rowIdx[7]_i_2_n_0 ),
        .I1(\rowIdx_reg_n_0_[5] ),
        .I2(\rowIdx_reg_n_0_[4] ),
        .I3(\rowIdx[8]_i_3_n_0 ),
        .I4(\rowIdx_reg_n_0_[6] ),
        .O(rowIdx[6]));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \rowIdx[7]_i_1 
       (.I0(\rowIdx[7]_i_2_n_0 ),
        .I1(\rowIdx[8]_i_3_n_0 ),
        .I2(\rowIdx_reg_n_0_[4] ),
        .I3(\rowIdx_reg_n_0_[5] ),
        .I4(\rowIdx_reg_n_0_[6] ),
        .I5(\rowIdx_reg_n_0_[7] ),
        .O(rowIdx[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \rowIdx[7]_i_2 
       (.I0(\rowIdx_reg_n_0_[4] ),
        .I1(\rowIdx[7]_i_3_n_0 ),
        .I2(\rowIdx_reg_n_0_[3] ),
        .I3(\rowIdx_reg_n_0_[0] ),
        .I4(\rowIdx_reg_n_0_[2] ),
        .I5(\rowIdx_reg_n_0_[8] ),
        .O(\rowIdx[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rowIdx[7]_i_3 
       (.I0(\rowIdx_reg_n_0_[6] ),
        .I1(\rowIdx_reg_n_0_[5] ),
        .I2(\rowIdx_reg_n_0_[7] ),
        .I3(\rowIdx_reg_n_0_[1] ),
        .O(\rowIdx[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \rowIdx[8]_i_1 
       (.I0(s_axis_valid),
        .I1(m_axis_ready),
        .I2(dest_start_valid_i_3_n_0),
        .O(\rowIdx[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \rowIdx[8]_i_2 
       (.I0(\rowIdx_reg_n_0_[8] ),
        .I1(\rowIdx[8]_i_3_n_0 ),
        .I2(\rowIdx_reg_n_0_[4] ),
        .I3(\rowIdx_reg_n_0_[7] ),
        .I4(\rowIdx_reg_n_0_[6] ),
        .I5(\rowIdx_reg_n_0_[5] ),
        .O(rowIdx[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rowIdx[8]_i_3 
       (.I0(\rowIdx_reg_n_0_[1] ),
        .I1(\rowIdx_reg_n_0_[2] ),
        .I2(\rowIdx_reg_n_0_[0] ),
        .I3(\rowIdx_reg_n_0_[3] ),
        .O(\rowIdx[8]_i_3_n_0 ));
  FDRE \rowIdx_reg[0] 
       (.C(axi_clk),
        .CE(\rowIdx[8]_i_1_n_0 ),
        .D(rowIdx[0]),
        .Q(\rowIdx_reg_n_0_[0] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \rowIdx_reg[1] 
       (.C(axi_clk),
        .CE(\rowIdx[8]_i_1_n_0 ),
        .D(rowIdx[1]),
        .Q(\rowIdx_reg_n_0_[1] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \rowIdx_reg[2] 
       (.C(axi_clk),
        .CE(\rowIdx[8]_i_1_n_0 ),
        .D(rowIdx[2]),
        .Q(\rowIdx_reg_n_0_[2] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \rowIdx_reg[3] 
       (.C(axi_clk),
        .CE(\rowIdx[8]_i_1_n_0 ),
        .D(rowIdx[3]),
        .Q(\rowIdx_reg_n_0_[3] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \rowIdx_reg[4] 
       (.C(axi_clk),
        .CE(\rowIdx[8]_i_1_n_0 ),
        .D(rowIdx[4]),
        .Q(\rowIdx_reg_n_0_[4] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \rowIdx_reg[5] 
       (.C(axi_clk),
        .CE(\rowIdx[8]_i_1_n_0 ),
        .D(rowIdx[5]),
        .Q(\rowIdx_reg_n_0_[5] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \rowIdx_reg[6] 
       (.C(axi_clk),
        .CE(\rowIdx[8]_i_1_n_0 ),
        .D(rowIdx[6]),
        .Q(\rowIdx_reg_n_0_[6] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \rowIdx_reg[7] 
       (.C(axi_clk),
        .CE(\rowIdx[8]_i_1_n_0 ),
        .D(rowIdx[7]),
        .Q(\rowIdx_reg_n_0_[7] ),
        .R(\colIdx[9]_i_1_n_0 ));
  FDRE \rowIdx_reg[8] 
       (.C(axi_clk),
        .CE(\rowIdx[8]_i_1_n_0 ),
        .D(rowIdx[8]),
        .Q(\rowIdx_reg_n_0_[8] ),
        .R(\colIdx[9]_i_1_n_0 ));
  CARRY4 startColMax0_carry
       (.CI(1'b0),
        .CO({startColMax0_carry_n_0,startColMax0_carry_n_1,startColMax0_carry_n_2,startColMax0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({startColMax0_carry_i_1_n_0,startColMax0_carry_i_2_n_0,startColMax0_carry_i_3_n_0,startColMax0_carry_i_4_n_0}),
        .O(NLW_startColMax0_carry_O_UNCONNECTED[3:0]),
        .S({startColMax0_carry_i_5_n_0,startColMax0_carry_i_6_n_0,startColMax0_carry_i_7_n_0,startColMax0_carry_i_8_n_0}));
  CARRY4 startColMax0_carry__0
       (.CI(startColMax0_carry_n_0),
        .CO({NLW_startColMax0_carry__0_CO_UNCONNECTED[3:1],startColMax0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,startColMax0_carry__0_i_1_n_0}),
        .O(NLW_startColMax0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,startColMax0_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    startColMax0_carry__0_i_1
       (.I0(\colIdx_reg_n_0_[9] ),
        .I1(startColMax[9]),
        .I2(\colIdx_reg_n_0_[8] ),
        .I3(startColMax[8]),
        .O(startColMax0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMax0_carry__0_i_2
       (.I0(startColMax[9]),
        .I1(\colIdx_reg_n_0_[9] ),
        .I2(startColMax[8]),
        .I3(\colIdx_reg_n_0_[8] ),
        .O(startColMax0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    startColMax0_carry_i_1
       (.I0(\colIdx_reg_n_0_[7] ),
        .I1(startColMax[7]),
        .I2(\colIdx_reg_n_0_[6] ),
        .I3(startColMax[6]),
        .O(startColMax0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    startColMax0_carry_i_2
       (.I0(\colIdx_reg_n_0_[5] ),
        .I1(startColMax[5]),
        .I2(\colIdx_reg_n_0_[4] ),
        .I3(startColMax[4]),
        .O(startColMax0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    startColMax0_carry_i_3
       (.I0(\colIdx_reg_n_0_[3] ),
        .I1(startColMax[3]),
        .I2(\colIdx_reg_n_0_[2] ),
        .I3(startColMax[2]),
        .O(startColMax0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    startColMax0_carry_i_4
       (.I0(\colIdx_reg_n_0_[1] ),
        .I1(startColMax[1]),
        .I2(\colIdx_reg_n_0_[0] ),
        .I3(startColMax[0]),
        .O(startColMax0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMax0_carry_i_5
       (.I0(startColMax[7]),
        .I1(\colIdx_reg_n_0_[7] ),
        .I2(startColMax[6]),
        .I3(\colIdx_reg_n_0_[6] ),
        .O(startColMax0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMax0_carry_i_6
       (.I0(startColMax[5]),
        .I1(\colIdx_reg_n_0_[5] ),
        .I2(startColMax[4]),
        .I3(\colIdx_reg_n_0_[4] ),
        .O(startColMax0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMax0_carry_i_7
       (.I0(startColMax[3]),
        .I1(\colIdx_reg_n_0_[3] ),
        .I2(startColMax[2]),
        .I3(\colIdx_reg_n_0_[2] ),
        .O(startColMax0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMax0_carry_i_8
       (.I0(startColMax[1]),
        .I1(\colIdx_reg_n_0_[1] ),
        .I2(startColMax[0]),
        .I3(\colIdx_reg_n_0_[0] ),
        .O(startColMax0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \startColMax[9]_i_1 
       (.I0(\destColMin[9]_i_6_n_0 ),
        .I1(colIdx0),
        .I2(startColMax0_carry__0_n_3),
        .I3(\destColMin[9]_i_4_n_0 ),
        .I4(\startColMin[9]_i_2_n_0 ),
        .I5(\destColMin[9]_i_5_n_0 ),
        .O(startColMax_6));
  FDRE \startColMax_reg[0] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[0] ),
        .Q(startColMax[0]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMax_reg[1] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[1] ),
        .Q(startColMax[1]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMax_reg[2] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[2] ),
        .Q(startColMax[2]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMax_reg[3] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[3] ),
        .Q(startColMax[3]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMax_reg[4] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[4] ),
        .Q(startColMax[4]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMax_reg[5] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[5] ),
        .Q(startColMax[5]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMax_reg[6] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[6] ),
        .Q(startColMax[6]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMax_reg[7] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[7] ),
        .Q(startColMax[7]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMax_reg[8] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[8] ),
        .Q(startColMax[8]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMax_reg[9] 
       (.C(axi_clk),
        .CE(startColMax_6),
        .D(\colIdx_reg_n_0_[9] ),
        .Q(startColMax[9]),
        .R(\destColMin[9]_i_1_n_0 ));
  CARRY4 startColMin0_carry
       (.CI(1'b0),
        .CO({startColMin0_carry_n_0,startColMin0_carry_n_1,startColMin0_carry_n_2,startColMin0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({startColMin0_carry_i_1_n_0,startColMin0_carry_i_2_n_0,startColMin0_carry_i_3_n_0,startColMin0_carry_i_4_n_0}),
        .O(NLW_startColMin0_carry_O_UNCONNECTED[3:0]),
        .S({startColMin0_carry_i_5_n_0,startColMin0_carry_i_6_n_0,startColMin0_carry_i_7_n_0,startColMin0_carry_i_8_n_0}));
  CARRY4 startColMin0_carry__0
       (.CI(startColMin0_carry_n_0),
        .CO({NLW_startColMin0_carry__0_CO_UNCONNECTED[3:1],startColMin0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,startColMin0_carry__0_i_1_n_0}),
        .O(NLW_startColMin0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,startColMin0_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    startColMin0_carry__0_i_1
       (.I0(\colIdx_reg_n_0_[9] ),
        .I1(startColMin[9]),
        .I2(startColMin[8]),
        .I3(\colIdx_reg_n_0_[8] ),
        .O(startColMin0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMin0_carry__0_i_2
       (.I0(startColMin[9]),
        .I1(\colIdx_reg_n_0_[9] ),
        .I2(startColMin[8]),
        .I3(\colIdx_reg_n_0_[8] ),
        .O(startColMin0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    startColMin0_carry_i_1
       (.I0(\colIdx_reg_n_0_[7] ),
        .I1(startColMin[7]),
        .I2(startColMin[6]),
        .I3(\colIdx_reg_n_0_[6] ),
        .O(startColMin0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    startColMin0_carry_i_2
       (.I0(\colIdx_reg_n_0_[5] ),
        .I1(startColMin[5]),
        .I2(startColMin[4]),
        .I3(\colIdx_reg_n_0_[4] ),
        .O(startColMin0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    startColMin0_carry_i_3
       (.I0(\colIdx_reg_n_0_[3] ),
        .I1(startColMin[3]),
        .I2(startColMin[2]),
        .I3(\colIdx_reg_n_0_[2] ),
        .O(startColMin0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    startColMin0_carry_i_4
       (.I0(\colIdx_reg_n_0_[1] ),
        .I1(startColMin[1]),
        .I2(startColMin[0]),
        .I3(\colIdx_reg_n_0_[0] ),
        .O(startColMin0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMin0_carry_i_5
       (.I0(startColMin[7]),
        .I1(\colIdx_reg_n_0_[7] ),
        .I2(startColMin[6]),
        .I3(\colIdx_reg_n_0_[6] ),
        .O(startColMin0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMin0_carry_i_6
       (.I0(startColMin[5]),
        .I1(\colIdx_reg_n_0_[5] ),
        .I2(startColMin[4]),
        .I3(\colIdx_reg_n_0_[4] ),
        .O(startColMin0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMin0_carry_i_7
       (.I0(startColMin[3]),
        .I1(\colIdx_reg_n_0_[3] ),
        .I2(startColMin[2]),
        .I3(\colIdx_reg_n_0_[2] ),
        .O(startColMin0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startColMin0_carry_i_8
       (.I0(startColMin[1]),
        .I1(\colIdx_reg_n_0_[1] ),
        .I2(startColMin[0]),
        .I3(\colIdx_reg_n_0_[0] ),
        .O(startColMin0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \startColMin[9]_i_1 
       (.I0(\destColMin[9]_i_6_n_0 ),
        .I1(colIdx0),
        .I2(startColMin0_carry__0_n_3),
        .I3(\destColMin[9]_i_4_n_0 ),
        .I4(\startColMin[9]_i_2_n_0 ),
        .I5(\destColMin[9]_i_5_n_0 ),
        .O(startColMin_7));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \startColMin[9]_i_2 
       (.I0(s_axis_data[5]),
        .I1(s_axis_data[11]),
        .I2(s_axis_data[1]),
        .I3(s_axis_data[10]),
        .I4(\startColMin[9]_i_3_n_0 ),
        .O(\startColMin[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \startColMin[9]_i_3 
       (.I0(s_axis_data[8]),
        .I1(s_axis_data[9]),
        .I2(s_axis_data[6]),
        .I3(s_axis_data[3]),
        .I4(s_axis_data[2]),
        .I5(s_axis_data[7]),
        .O(\startColMin[9]_i_3_n_0 ));
  FDSE \startColMin_reg[0] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[0] ),
        .Q(startColMin[0]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startColMin_reg[1] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[1] ),
        .Q(startColMin[1]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startColMin_reg[2] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[2] ),
        .Q(startColMin[2]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startColMin_reg[3] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[3] ),
        .Q(startColMin[3]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startColMin_reg[4] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[4] ),
        .Q(startColMin[4]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startColMin_reg[5] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[5] ),
        .Q(startColMin[5]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMin_reg[6] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[6] ),
        .Q(startColMin[6]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMin_reg[7] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[7] ),
        .Q(startColMin[7]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDSE \startColMin_reg[8] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[8] ),
        .Q(startColMin[8]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDRE \startColMin_reg[9] 
       (.C(axi_clk),
        .CE(startColMin_7),
        .D(\colIdx_reg_n_0_[9] ),
        .Q(startColMin[9]),
        .R(\destColMin[9]_i_1_n_0 ));
  CARRY4 startRowMax0_carry
       (.CI(1'b0),
        .CO({startRowMax0_carry_n_0,startRowMax0_carry_n_1,startRowMax0_carry_n_2,startRowMax0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({startRowMax0_carry_i_1_n_0,startRowMax0_carry_i_2_n_0,startRowMax0_carry_i_3_n_0,startRowMax0_carry_i_4_n_0}),
        .O(NLW_startRowMax0_carry_O_UNCONNECTED[3:0]),
        .S({startRowMax0_carry_i_5_n_0,startRowMax0_carry_i_6_n_0,startRowMax0_carry_i_7_n_0,startRowMax0_carry_i_8_n_0}));
  CARRY4 startRowMax0_carry__0
       (.CI(startRowMax0_carry_n_0),
        .CO({NLW_startRowMax0_carry__0_CO_UNCONNECTED[3:1],startRowMax0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,startRowMax0_carry__0_i_1_n_0}),
        .O(NLW_startRowMax0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,startRowMax0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    startRowMax0_carry__0_i_1
       (.I0(\rowIdx_reg_n_0_[8] ),
        .I1(startRowMax[8]),
        .O(startRowMax0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    startRowMax0_carry__0_i_2
       (.I0(startRowMax[8]),
        .I1(\rowIdx_reg_n_0_[8] ),
        .O(startRowMax0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    startRowMax0_carry_i_1
       (.I0(\rowIdx_reg_n_0_[7] ),
        .I1(startRowMax[7]),
        .I2(\rowIdx_reg_n_0_[6] ),
        .I3(startRowMax[6]),
        .O(startRowMax0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    startRowMax0_carry_i_2
       (.I0(\rowIdx_reg_n_0_[5] ),
        .I1(startRowMax[5]),
        .I2(\rowIdx_reg_n_0_[4] ),
        .I3(startRowMax[4]),
        .O(startRowMax0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    startRowMax0_carry_i_3
       (.I0(\rowIdx_reg_n_0_[3] ),
        .I1(startRowMax[3]),
        .I2(\rowIdx_reg_n_0_[2] ),
        .I3(startRowMax[2]),
        .O(startRowMax0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    startRowMax0_carry_i_4
       (.I0(\rowIdx_reg_n_0_[1] ),
        .I1(startRowMax[1]),
        .I2(\rowIdx_reg_n_0_[0] ),
        .I3(startRowMax[0]),
        .O(startRowMax0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startRowMax0_carry_i_5
       (.I0(startRowMax[7]),
        .I1(\rowIdx_reg_n_0_[7] ),
        .I2(startRowMax[6]),
        .I3(\rowIdx_reg_n_0_[6] ),
        .O(startRowMax0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startRowMax0_carry_i_6
       (.I0(startRowMax[5]),
        .I1(\rowIdx_reg_n_0_[5] ),
        .I2(startRowMax[4]),
        .I3(\rowIdx_reg_n_0_[4] ),
        .O(startRowMax0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startRowMax0_carry_i_7
       (.I0(startRowMax[3]),
        .I1(\rowIdx_reg_n_0_[3] ),
        .I2(startRowMax[2]),
        .I3(\rowIdx_reg_n_0_[2] ),
        .O(startRowMax0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startRowMax0_carry_i_8
       (.I0(startRowMax[1]),
        .I1(\rowIdx_reg_n_0_[1] ),
        .I2(startRowMax[0]),
        .I3(\rowIdx_reg_n_0_[0] ),
        .O(startRowMax0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \startRowMax[8]_i_1 
       (.I0(\destColMin[9]_i_6_n_0 ),
        .I1(colIdx0),
        .I2(startRowMax0_carry__0_n_3),
        .I3(\destColMin[9]_i_4_n_0 ),
        .I4(\startColMin[9]_i_2_n_0 ),
        .I5(\destColMin[9]_i_5_n_0 ),
        .O(startRowMax_4));
  FDRE \startRowMax_reg[0] 
       (.C(axi_clk),
        .CE(startRowMax_4),
        .D(\rowIdx_reg_n_0_[0] ),
        .Q(startRowMax[0]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMax_reg[1] 
       (.C(axi_clk),
        .CE(startRowMax_4),
        .D(\rowIdx_reg_n_0_[1] ),
        .Q(startRowMax[1]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMax_reg[2] 
       (.C(axi_clk),
        .CE(startRowMax_4),
        .D(\rowIdx_reg_n_0_[2] ),
        .Q(startRowMax[2]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMax_reg[3] 
       (.C(axi_clk),
        .CE(startRowMax_4),
        .D(\rowIdx_reg_n_0_[3] ),
        .Q(startRowMax[3]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMax_reg[4] 
       (.C(axi_clk),
        .CE(startRowMax_4),
        .D(\rowIdx_reg_n_0_[4] ),
        .Q(startRowMax[4]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMax_reg[5] 
       (.C(axi_clk),
        .CE(startRowMax_4),
        .D(\rowIdx_reg_n_0_[5] ),
        .Q(startRowMax[5]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMax_reg[6] 
       (.C(axi_clk),
        .CE(startRowMax_4),
        .D(\rowIdx_reg_n_0_[6] ),
        .Q(startRowMax[6]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMax_reg[7] 
       (.C(axi_clk),
        .CE(startRowMax_4),
        .D(\rowIdx_reg_n_0_[7] ),
        .Q(startRowMax[7]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMax_reg[8] 
       (.C(axi_clk),
        .CE(startRowMax_4),
        .D(\rowIdx_reg_n_0_[8] ),
        .Q(startRowMax[8]),
        .R(\destColMin[9]_i_1_n_0 ));
  CARRY4 startRowMin0_carry
       (.CI(1'b0),
        .CO({startRowMin0_carry_n_0,startRowMin0_carry_n_1,startRowMin0_carry_n_2,startRowMin0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({startRowMin0_carry_i_1_n_0,startRowMin0_carry_i_2_n_0,startRowMin0_carry_i_3_n_0,startRowMin0_carry_i_4_n_0}),
        .O(NLW_startRowMin0_carry_O_UNCONNECTED[3:0]),
        .S({startRowMin0_carry_i_5_n_0,startRowMin0_carry_i_6_n_0,startRowMin0_carry_i_7_n_0,startRowMin0_carry_i_8_n_0}));
  CARRY4 startRowMin0_carry__0
       (.CI(startRowMin0_carry_n_0),
        .CO({NLW_startRowMin0_carry__0_CO_UNCONNECTED[3:1],startRowMin0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,startRowMin0_carry__0_i_1_n_0}),
        .O(NLW_startRowMin0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,startRowMin0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    startRowMin0_carry__0_i_1
       (.I0(startRowMin[8]),
        .I1(\rowIdx_reg_n_0_[8] ),
        .O(startRowMin0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    startRowMin0_carry__0_i_2
       (.I0(\rowIdx_reg_n_0_[8] ),
        .I1(startRowMin[8]),
        .O(startRowMin0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    startRowMin0_carry_i_1
       (.I0(\rowIdx_reg_n_0_[7] ),
        .I1(startRowMin[7]),
        .I2(startRowMin[6]),
        .I3(\rowIdx_reg_n_0_[6] ),
        .O(startRowMin0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    startRowMin0_carry_i_2
       (.I0(\rowIdx_reg_n_0_[5] ),
        .I1(startRowMin[5]),
        .I2(startRowMin[4]),
        .I3(\rowIdx_reg_n_0_[4] ),
        .O(startRowMin0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    startRowMin0_carry_i_3
       (.I0(\rowIdx_reg_n_0_[3] ),
        .I1(startRowMin[3]),
        .I2(startRowMin[2]),
        .I3(\rowIdx_reg_n_0_[2] ),
        .O(startRowMin0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    startRowMin0_carry_i_4
       (.I0(\rowIdx_reg_n_0_[1] ),
        .I1(startRowMin[1]),
        .I2(startRowMin[0]),
        .I3(\rowIdx_reg_n_0_[0] ),
        .O(startRowMin0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startRowMin0_carry_i_5
       (.I0(startRowMin[7]),
        .I1(\rowIdx_reg_n_0_[7] ),
        .I2(startRowMin[6]),
        .I3(\rowIdx_reg_n_0_[6] ),
        .O(startRowMin0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startRowMin0_carry_i_6
       (.I0(startRowMin[5]),
        .I1(\rowIdx_reg_n_0_[5] ),
        .I2(startRowMin[4]),
        .I3(\rowIdx_reg_n_0_[4] ),
        .O(startRowMin0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startRowMin0_carry_i_7
       (.I0(startRowMin[3]),
        .I1(\rowIdx_reg_n_0_[3] ),
        .I2(startRowMin[2]),
        .I3(\rowIdx_reg_n_0_[2] ),
        .O(startRowMin0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    startRowMin0_carry_i_8
       (.I0(startRowMin[1]),
        .I1(\rowIdx_reg_n_0_[1] ),
        .I2(startRowMin[0]),
        .I3(\rowIdx_reg_n_0_[0] ),
        .O(startRowMin0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \startRowMin[8]_i_1 
       (.I0(\destColMin[9]_i_6_n_0 ),
        .I1(colIdx0),
        .I2(startRowMin0_carry__0_n_3),
        .I3(\destColMin[9]_i_4_n_0 ),
        .I4(\startColMin[9]_i_2_n_0 ),
        .I5(\destColMin[9]_i_5_n_0 ),
        .O(startRowMin_5));
  FDSE \startRowMin_reg[0] 
       (.C(axi_clk),
        .CE(startRowMin_5),
        .D(\rowIdx_reg_n_0_[0] ),
        .Q(startRowMin[0]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startRowMin_reg[1] 
       (.C(axi_clk),
        .CE(startRowMin_5),
        .D(\rowIdx_reg_n_0_[1] ),
        .Q(startRowMin[1]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startRowMin_reg[2] 
       (.C(axi_clk),
        .CE(startRowMin_5),
        .D(\rowIdx_reg_n_0_[2] ),
        .Q(startRowMin[2]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startRowMin_reg[3] 
       (.C(axi_clk),
        .CE(startRowMin_5),
        .D(\rowIdx_reg_n_0_[3] ),
        .Q(startRowMin[3]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMin_reg[4] 
       (.C(axi_clk),
        .CE(startRowMin_5),
        .D(\rowIdx_reg_n_0_[4] ),
        .Q(startRowMin[4]),
        .R(\destColMin[9]_i_1_n_0 ));
  FDSE \startRowMin_reg[5] 
       (.C(axi_clk),
        .CE(startRowMin_5),
        .D(\rowIdx_reg_n_0_[5] ),
        .Q(startRowMin[5]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startRowMin_reg[6] 
       (.C(axi_clk),
        .CE(startRowMin_5),
        .D(\rowIdx_reg_n_0_[6] ),
        .Q(startRowMin[6]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDSE \startRowMin_reg[7] 
       (.C(axi_clk),
        .CE(startRowMin_5),
        .D(\rowIdx_reg_n_0_[7] ),
        .Q(startRowMin[7]),
        .S(\destColMin[9]_i_1_n_0 ));
  FDRE \startRowMin_reg[8] 
       (.C(axi_clk),
        .CE(startRowMin_5),
        .D(\rowIdx_reg_n_0_[8] ),
        .Q(startRowMin[8]),
        .R(\destColMin[9]_i_1_n_0 ));
  CARRY4 start_col0_carry
       (.CI(1'b0),
        .CO({start_col0_carry_n_0,start_col0_carry_n_1,start_col0_carry_n_2,start_col0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(startColMax[3:0]),
        .O({start_col[2:0],NLW_start_col0_carry_O_UNCONNECTED[0]}),
        .S({start_col0_carry_i_1_n_0,start_col0_carry_i_2_n_0,start_col0_carry_i_3_n_0,start_col0_carry_i_4_n_0}));
  CARRY4 start_col0_carry__0
       (.CI(start_col0_carry_n_0),
        .CO({start_col0_carry__0_n_0,start_col0_carry__0_n_1,start_col0_carry__0_n_2,start_col0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(startColMax[7:4]),
        .O(start_col[6:3]),
        .S({start_col0_carry__0_i_1_n_0,start_col0_carry__0_i_2_n_0,start_col0_carry__0_i_3_n_0,start_col0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry__0_i_1
       (.I0(startColMax[7]),
        .I1(startColMin[7]),
        .O(start_col0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry__0_i_2
       (.I0(startColMax[6]),
        .I1(startColMin[6]),
        .O(start_col0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry__0_i_3
       (.I0(startColMax[5]),
        .I1(startColMin[5]),
        .O(start_col0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry__0_i_4
       (.I0(startColMax[4]),
        .I1(startColMin[4]),
        .O(start_col0_carry__0_i_4_n_0));
  CARRY4 start_col0_carry__1
       (.CI(start_col0_carry__0_n_0),
        .CO({NLW_start_col0_carry__1_CO_UNCONNECTED[3:1],start_col0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,startColMax[8]}),
        .O({NLW_start_col0_carry__1_O_UNCONNECTED[3:2],start_col[8:7]}),
        .S({1'b0,1'b0,start_col0_carry__1_i_1_n_0,start_col0_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry__1_i_1
       (.I0(startColMin[9]),
        .I1(startColMax[9]),
        .O(start_col0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry__1_i_2
       (.I0(startColMax[8]),
        .I1(startColMin[8]),
        .O(start_col0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry_i_1
       (.I0(startColMax[3]),
        .I1(startColMin[3]),
        .O(start_col0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry_i_2
       (.I0(startColMax[2]),
        .I1(startColMin[2]),
        .O(start_col0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry_i_3
       (.I0(startColMax[1]),
        .I1(startColMin[1]),
        .O(start_col0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_col0_carry_i_4
       (.I0(startColMax[0]),
        .I1(startColMin[0]),
        .O(start_col0_carry_i_4_n_0));
  CARRY4 start_row0_carry
       (.CI(1'b0),
        .CO({start_row0_carry_n_0,start_row0_carry_n_1,start_row0_carry_n_2,start_row0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(startRowMax[3:0]),
        .O({start_row[2:0],NLW_start_row0_carry_O_UNCONNECTED[0]}),
        .S({start_row0_carry_i_1_n_0,start_row0_carry_i_2_n_0,start_row0_carry_i_3_n_0,start_row0_carry_i_4_n_0}));
  CARRY4 start_row0_carry__0
       (.CI(start_row0_carry_n_0),
        .CO({start_row0_carry__0_n_0,start_row0_carry__0_n_1,start_row0_carry__0_n_2,start_row0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(startRowMax[7:4]),
        .O(start_row[6:3]),
        .S({start_row0_carry__0_i_1_n_0,start_row0_carry__0_i_2_n_0,start_row0_carry__0_i_3_n_0,start_row0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    start_row0_carry__0_i_1
       (.I0(startRowMax[7]),
        .I1(startRowMin[7]),
        .O(start_row0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_row0_carry__0_i_2
       (.I0(startRowMax[6]),
        .I1(startRowMin[6]),
        .O(start_row0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_row0_carry__0_i_3
       (.I0(startRowMax[5]),
        .I1(startRowMin[5]),
        .O(start_row0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_row0_carry__0_i_4
       (.I0(startRowMax[4]),
        .I1(startRowMin[4]),
        .O(start_row0_carry__0_i_4_n_0));
  CARRY4 start_row0_carry__1
       (.CI(start_row0_carry__0_n_0),
        .CO(NLW_start_row0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_start_row0_carry__1_O_UNCONNECTED[3:1],start_row[7]}),
        .S({1'b0,1'b0,1'b0,start_row0_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    start_row0_carry__1_i_1
       (.I0(startRowMin[8]),
        .I1(startRowMax[8]),
        .O(start_row0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_row0_carry_i_1
       (.I0(startRowMax[3]),
        .I1(startRowMin[3]),
        .O(start_row0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_row0_carry_i_2
       (.I0(startRowMax[2]),
        .I1(startRowMin[2]),
        .O(start_row0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_row0_carry_i_3
       (.I0(startRowMax[1]),
        .I1(startRowMin[1]),
        .O(start_row0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    start_row0_carry_i_4
       (.I0(startRowMax[0]),
        .I1(startRowMin[0]),
        .O(start_row0_carry_i_4_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
