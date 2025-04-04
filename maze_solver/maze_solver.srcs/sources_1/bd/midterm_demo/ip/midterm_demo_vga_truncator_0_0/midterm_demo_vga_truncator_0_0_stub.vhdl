-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  4 14:25:47 2025
-- Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_vga_truncator_0_0/midterm_demo_vga_truncator_0_0_stub.vhdl
-- Design      : midterm_demo_vga_truncator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity midterm_demo_vga_truncator_0_0 is
  Port ( 
    red_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    red_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    green_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    blue_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    de_in : in STD_LOGIC;
    dps_in : in STD_LOGIC;
    vga_clk_in : in STD_LOGIC
  );

end midterm_demo_vga_truncator_0_0;

architecture stub of midterm_demo_vga_truncator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "red_out[3:0],green_out[3:0],blue_out[3:0],hsync_out,vsync_out,red_in[5:0],green_in[5:0],blue_in[5:0],hsync_in,vsync_in,de_in,dps_in,vga_clk_in";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vga_truncator,Vivado 2018.3";
begin
end;
