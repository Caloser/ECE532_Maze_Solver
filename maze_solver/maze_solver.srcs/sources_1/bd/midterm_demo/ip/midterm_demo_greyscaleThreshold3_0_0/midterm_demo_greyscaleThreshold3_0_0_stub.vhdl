-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  4 14:24:45 2025
-- Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_greyscaleThreshold3_0_0/midterm_demo_greyscaleThreshold3_0_0_stub.vhdl
-- Design      : midterm_demo_greyscaleThreshold3_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity midterm_demo_greyscaleThreshold3_0_0 is
  Port ( 
    axi_clk : in STD_LOGIC;
    axi_reset_n : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_ready : out STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_ready : in STD_LOGIC;
    dest_col : out STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_row : out STD_LOGIC_VECTOR ( 8 downto 0 );
    start_col : out STD_LOGIC_VECTOR ( 9 downto 0 );
    start_row : out STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_start_valid : out STD_LOGIC
  );

end midterm_demo_greyscaleThreshold3_0_0;

architecture stub of midterm_demo_greyscaleThreshold3_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axi_clk,axi_reset_n,s_axis_valid,s_axis_data[31:0],s_axis_ready,m_axis_valid,m_axis_data[7:0],m_axis_ready,dest_col[9:0],dest_row[8:0],start_col[9:0],start_row[8:0],dest_start_valid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "greyscaleThreshold3,Vivado 2018.3";
begin
end;
