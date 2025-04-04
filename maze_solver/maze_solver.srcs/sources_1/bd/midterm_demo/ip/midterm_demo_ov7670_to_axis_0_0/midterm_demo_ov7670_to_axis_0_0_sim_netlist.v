// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr  4 14:26:54 2025
// Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_ov7670_to_axis_0_0/midterm_demo_ov7670_to_axis_0_0_sim_netlist.v
// Design      : midterm_demo_ov7670_to_axis_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "midterm_demo_ov7670_to_axis_0_0,ov7670_to_axis,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ov7670_to_axis,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module midterm_demo_ov7670_to_axis_0_0
   (arst_n,
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
    dbg_pxv);
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

  wire \<const0> ;
  wire \<const1> ;
  wire arst_n;
  wire [8:0]dbg_col_count;
  wire dbg_pxv;
  wire [23:4]\^m_axis_data ;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire [7:0]ov_d;
  wire ov_href;
  wire ov_pclk;
  wire ov_vsync;
  wire pause;
  wire resume;

  assign m_axis_data[31] = \<const0> ;
  assign m_axis_data[30] = \<const0> ;
  assign m_axis_data[29] = \<const0> ;
  assign m_axis_data[28] = \<const0> ;
  assign m_axis_data[27] = \<const0> ;
  assign m_axis_data[26] = \<const0> ;
  assign m_axis_data[25] = \<const0> ;
  assign m_axis_data[24] = \<const0> ;
  assign m_axis_data[23:20] = \^m_axis_data [23:20];
  assign m_axis_data[19] = \<const0> ;
  assign m_axis_data[18] = \<const0> ;
  assign m_axis_data[17] = \<const0> ;
  assign m_axis_data[16] = \<const0> ;
  assign m_axis_data[15:12] = \^m_axis_data [15:12];
  assign m_axis_data[11] = \<const0> ;
  assign m_axis_data[10] = \<const0> ;
  assign m_axis_data[9] = \<const0> ;
  assign m_axis_data[8] = \<const0> ;
  assign m_axis_data[7:4] = \^m_axis_data [7:4];
  assign m_axis_data[3] = \<const0> ;
  assign m_axis_data[2] = \<const0> ;
  assign m_axis_data[1] = \<const0> ;
  assign m_axis_data[0] = \<const0> ;
  assign m_axis_keep[3] = \<const1> ;
  assign m_axis_keep[2] = \<const1> ;
  assign m_axis_keep[1] = \<const1> ;
  assign m_axis_keep[0] = \<const1> ;
  assign m_axis_user[0] = ov_vsync;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  midterm_demo_ov7670_to_axis_0_0_ov7670_to_axis inst
       (.arst_n(arst_n),
        .dbg_col_count(dbg_col_count),
        .m_axis_data({\^m_axis_data [23:20],\^m_axis_data [15:12],\^m_axis_data [7:4]}),
        .m_axis_last(m_axis_last),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .ov_d(ov_d),
        .ov_href(ov_href),
        .ov_pclk(ov_pclk),
        .ov_vsync(ov_vsync),
        .pause(pause),
        .pixel_valid_reg(dbg_pxv),
        .resume(resume));
endmodule

(* ORIG_REF_NAME = "camera_read" *) 
module midterm_demo_ov7670_to_axis_0_0_camera_read
   (pixel_valid_reg_0,
    D,
    SR,
    m_axis_last,
    m_axis_valid,
    m_axis_ready_0,
    m_axis_data,
    ov_pclk,
    ov_vsync,
    Q,
    \col_count_reg[0] ,
    arst_n,
    fd_detected,
    pause_wr,
    m_axis_ready,
    ov_href,
    ov_d);
  output pixel_valid_reg_0;
  output [8:0]D;
  output [0:0]SR;
  output m_axis_last;
  output m_axis_valid;
  output m_axis_ready_0;
  output [11:0]m_axis_data;
  input ov_pclk;
  input ov_vsync;
  input [8:0]Q;
  input \col_count_reg[0] ;
  input arst_n;
  input fd_detected;
  input pause_wr;
  input m_axis_ready;
  input ov_href;
  input [7:0]ov_d;

  wire [8:0]D;
  wire FSM_sequential_FSM_state_i_1_n_0;
  wire FSM_sequential_FSM_state_reg_n_0;
  wire [8:0]Q;
  wire [0:0]SR;
  wire arst_n;
  wire \col_count_reg[0] ;
  wire fd_detected;
  wire frame_done;
  wire frame_done_i_1_n_0;
  wire [11:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_last_INST_0_i_1_n_0;
  wire m_axis_ready;
  wire m_axis_ready_0;
  wire m_axis_valid;
  wire [7:0]ov_d;
  wire ov_href;
  wire ov_pclk;
  wire ov_vsync;
  wire pause_wr;
  wire \pixel_data[11]_i_1_n_0 ;
  wire \pixel_data[7]_i_1_n_0 ;
  wire pixel_half_i_1_n_0;
  wire pixel_half_reg_n_0;
  wire pixel_valid_i_1_n_0;
  wire pixel_valid_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FSM_sequential_FSM_state_i_1
       (.I0(ov_vsync),
        .O(FSM_sequential_FSM_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "ROW_CAPTURE:1,WAIT_FRAME_START:0" *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_FSM_state_reg
       (.C(ov_pclk),
        .CE(1'b1),
        .D(FSM_sequential_FSM_state_i_1_n_0),
        .Q(FSM_sequential_FSM_state_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \col_count[0]_i_1 
       (.I0(Q[0]),
        .I1(pixel_valid_reg_0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \col_count[1]_i_1 
       (.I0(pixel_valid_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \col_count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(pixel_valid_reg_0),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \col_count[3]_i_1 
       (.I0(Q[2]),
        .I1(pixel_valid_reg_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \col_count[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(pixel_valid_reg_0),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \col_count[5]_i_1 
       (.I0(m_axis_last_INST_0_i_1_n_0),
        .I1(Q[5]),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hD2)) 
    \col_count[6]_i_1 
       (.I0(Q[5]),
        .I1(m_axis_last_INST_0_i_1_n_0),
        .I2(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \col_count[7]_i_1 
       (.I0(Q[6]),
        .I1(m_axis_last_INST_0_i_1_n_0),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAEAFFFF)) 
    \col_count[8]_i_1 
       (.I0(ov_vsync),
        .I1(\col_count_reg[0] ),
        .I2(Q[5]),
        .I3(m_axis_last_INST_0_i_1_n_0),
        .I4(arst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \col_count[8]_i_2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(m_axis_last_INST_0_i_1_n_0),
        .I3(Q[6]),
        .I4(Q[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    fd_detected_i_1
       (.I0(m_axis_ready),
        .I1(frame_done),
        .I2(fd_detected),
        .O(m_axis_ready_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    frame_done_i_1
       (.I0(ov_vsync),
        .I1(FSM_sequential_FSM_state_reg_n_0),
        .O(frame_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    frame_done_reg
       (.C(ov_pclk),
        .CE(1'b1),
        .D(frame_done_i_1_n_0),
        .Q(frame_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    m_axis_last_INST_0
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(fd_detected),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(m_axis_last_INST_0_i_1_n_0),
        .O(m_axis_last));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    m_axis_last_INST_0_i_1
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(pixel_valid_reg_0),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(m_axis_last_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    m_axis_valid_INST_0
       (.I0(pause_wr),
        .I1(pixel_valid_reg_0),
        .I2(fd_detected),
        .O(m_axis_valid));
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_data[11]_i_1 
       (.I0(pixel_half_reg_n_0),
        .I1(FSM_sequential_FSM_state_reg_n_0),
        .I2(ov_href),
        .O(\pixel_data[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \pixel_data[7]_i_1 
       (.I0(ov_href),
        .I1(pixel_half_reg_n_0),
        .I2(FSM_sequential_FSM_state_reg_n_0),
        .O(\pixel_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[0] 
       (.C(ov_pclk),
        .CE(\pixel_data[7]_i_1_n_0 ),
        .D(ov_d[0]),
        .Q(m_axis_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[10] 
       (.C(ov_pclk),
        .CE(\pixel_data[11]_i_1_n_0 ),
        .D(ov_d[2]),
        .Q(m_axis_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[11] 
       (.C(ov_pclk),
        .CE(\pixel_data[11]_i_1_n_0 ),
        .D(ov_d[3]),
        .Q(m_axis_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[1] 
       (.C(ov_pclk),
        .CE(\pixel_data[7]_i_1_n_0 ),
        .D(ov_d[1]),
        .Q(m_axis_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[2] 
       (.C(ov_pclk),
        .CE(\pixel_data[7]_i_1_n_0 ),
        .D(ov_d[2]),
        .Q(m_axis_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[3] 
       (.C(ov_pclk),
        .CE(\pixel_data[7]_i_1_n_0 ),
        .D(ov_d[3]),
        .Q(m_axis_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[4] 
       (.C(ov_pclk),
        .CE(\pixel_data[7]_i_1_n_0 ),
        .D(ov_d[4]),
        .Q(m_axis_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[5] 
       (.C(ov_pclk),
        .CE(\pixel_data[7]_i_1_n_0 ),
        .D(ov_d[5]),
        .Q(m_axis_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[6] 
       (.C(ov_pclk),
        .CE(\pixel_data[7]_i_1_n_0 ),
        .D(ov_d[6]),
        .Q(m_axis_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[7] 
       (.C(ov_pclk),
        .CE(\pixel_data[7]_i_1_n_0 ),
        .D(ov_d[7]),
        .Q(m_axis_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[8] 
       (.C(ov_pclk),
        .CE(\pixel_data[11]_i_1_n_0 ),
        .D(ov_d[0]),
        .Q(m_axis_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[9] 
       (.C(ov_pclk),
        .CE(\pixel_data[11]_i_1_n_0 ),
        .D(ov_d[1]),
        .Q(m_axis_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    pixel_half_i_1
       (.I0(pixel_half_reg_n_0),
        .I1(ov_href),
        .I2(FSM_sequential_FSM_state_reg_n_0),
        .O(pixel_half_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pixel_half_reg
       (.C(ov_pclk),
        .CE(1'b1),
        .D(pixel_half_i_1_n_0),
        .Q(pixel_half_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    pixel_valid_i_1
       (.I0(ov_href),
        .I1(pixel_half_reg_n_0),
        .I2(FSM_sequential_FSM_state_reg_n_0),
        .I3(pixel_valid_reg_0),
        .O(pixel_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pixel_valid_reg
       (.C(ov_pclk),
        .CE(1'b1),
        .D(pixel_valid_i_1_n_0),
        .Q(pixel_valid_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ov7670_to_axis" *) 
module midterm_demo_ov7670_to_axis_0_0_ov7670_to_axis
   (m_axis_data,
    dbg_col_count,
    pixel_valid_reg,
    m_axis_last,
    m_axis_valid,
    ov_d,
    ov_pclk,
    ov_href,
    ov_vsync,
    arst_n,
    pause,
    resume,
    m_axis_ready);
  output [11:0]m_axis_data;
  output [8:0]dbg_col_count;
  output pixel_valid_reg;
  output m_axis_last;
  output m_axis_valid;
  input [7:0]ov_d;
  input ov_pclk;
  input ov_href;
  input ov_vsync;
  input arst_n;
  input pause;
  input resume;
  input m_axis_ready;

  wire arst_n;
  wire camera_read_i_n_10;
  wire camera_read_i_n_13;
  wire \col_count[8]_i_3_n_0 ;
  wire [8:0]dbg_col_count;
  wire fd_detected;
  wire [11:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire [7:0]ov_d;
  wire ov_href;
  wire ov_pclk;
  wire ov_vsync;
  wire [8:0]p_0_in;
  wire pause;
  wire pause_asserted;
  wire pause_asserted_i_1_n_0;
  wire pause_asserted_i_2_n_0;
  wire pause_wr;
  wire pause_wr_i_1_n_0;
  wire pixel_valid_reg;
  wire resume;

  midterm_demo_ov7670_to_axis_0_0_camera_read camera_read_i
       (.D(p_0_in),
        .Q(dbg_col_count),
        .SR(camera_read_i_n_10),
        .arst_n(arst_n),
        .\col_count_reg[0] (\col_count[8]_i_3_n_0 ),
        .fd_detected(fd_detected),
        .m_axis_data(m_axis_data),
        .m_axis_last(m_axis_last),
        .m_axis_ready(m_axis_ready),
        .m_axis_ready_0(camera_read_i_n_13),
        .m_axis_valid(m_axis_valid),
        .ov_d(ov_d),
        .ov_href(ov_href),
        .ov_pclk(ov_pclk),
        .ov_vsync(ov_vsync),
        .pause_wr(pause_wr),
        .pixel_valid_reg_0(pixel_valid_reg));
  LUT4 #(
    .INIT(16'h0400)) 
    \col_count[8]_i_3 
       (.I0(dbg_col_count[6]),
        .I1(fd_detected),
        .I2(dbg_col_count[7]),
        .I3(dbg_col_count[8]),
        .O(\col_count[8]_i_3_n_0 ));
  FDRE \col_count_reg[0] 
       (.C(ov_pclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(dbg_col_count[0]),
        .R(camera_read_i_n_10));
  FDRE \col_count_reg[1] 
       (.C(ov_pclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(dbg_col_count[1]),
        .R(camera_read_i_n_10));
  FDRE \col_count_reg[2] 
       (.C(ov_pclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(dbg_col_count[2]),
        .R(camera_read_i_n_10));
  FDRE \col_count_reg[3] 
       (.C(ov_pclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(dbg_col_count[3]),
        .R(camera_read_i_n_10));
  FDRE \col_count_reg[4] 
       (.C(ov_pclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(dbg_col_count[4]),
        .R(camera_read_i_n_10));
  FDRE \col_count_reg[5] 
       (.C(ov_pclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(dbg_col_count[5]),
        .R(camera_read_i_n_10));
  FDRE \col_count_reg[6] 
       (.C(ov_pclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(dbg_col_count[6]),
        .R(camera_read_i_n_10));
  FDRE \col_count_reg[7] 
       (.C(ov_pclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(dbg_col_count[7]),
        .R(camera_read_i_n_10));
  FDRE \col_count_reg[8] 
       (.C(ov_pclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(dbg_col_count[8]),
        .R(camera_read_i_n_10));
  FDCE fd_detected_reg
       (.C(ov_pclk),
        .CE(1'b1),
        .CLR(pause_asserted_i_2_n_0),
        .D(camera_read_i_n_13),
        .Q(fd_detected));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    pause_asserted_i_1
       (.I0(pause),
        .I1(resume),
        .I2(pause_asserted),
        .O(pause_asserted_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pause_asserted_i_2
       (.I0(arst_n),
        .O(pause_asserted_i_2_n_0));
  FDCE pause_asserted_reg
       (.C(ov_pclk),
        .CE(1'b1),
        .CLR(pause_asserted_i_2_n_0),
        .D(pause_asserted_i_1_n_0),
        .Q(pause_asserted));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    pause_wr_i_1
       (.I0(pause_asserted),
        .I1(ov_vsync),
        .I2(pause_wr),
        .O(pause_wr_i_1_n_0));
  FDCE pause_wr_reg
       (.C(ov_pclk),
        .CE(1'b1),
        .CLR(pause_asserted_i_2_n_0),
        .D(pause_wr_i_1_n_0),
        .Q(pause_wr));
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
