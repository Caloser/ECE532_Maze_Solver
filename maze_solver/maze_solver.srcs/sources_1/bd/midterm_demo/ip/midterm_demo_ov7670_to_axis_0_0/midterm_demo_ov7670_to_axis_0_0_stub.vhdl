-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  4 14:26:54 2025
-- Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_ov7670_to_axis_0_0/midterm_demo_ov7670_to_axis_0_0_stub.vhdl
-- Design      : midterm_demo_ov7670_to_axis_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity midterm_demo_ov7670_to_axis_0_0 is
  Port ( 
    arst_n : in STD_LOGIC;
    ov_vsync : in STD_LOGIC;
    ov_href : in STD_LOGIC;
    ov_pclk : in STD_LOGIC;
    ov_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pause : in STD_LOGIC;
    resume : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_valid : out STD_LOGIC;
    m_axis_last : out STD_LOGIC;
    m_axis_keep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_user : out STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_col_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    dbg_pxv : out STD_LOGIC
  );

end midterm_demo_ov7670_to_axis_0_0;

architecture stub of midterm_demo_ov7670_to_axis_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "arst_n,ov_vsync,ov_href,ov_pclk,ov_d[7:0],pause,resume,m_axis_ready,m_axis_data[31:0],m_axis_valid,m_axis_last,m_axis_keep[3:0],m_axis_user[0:0],dbg_col_count[8:0],dbg_pxv";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ov7670_to_axis,Vivado 2018.3";
begin
end;
