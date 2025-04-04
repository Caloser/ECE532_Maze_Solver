-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  4 14:25:47 2025
-- Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_vga_truncator_0_0/midterm_demo_vga_truncator_0_0_sim_netlist.vhdl
-- Design      : midterm_demo_vga_truncator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity midterm_demo_vga_truncator_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of midterm_demo_vga_truncator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of midterm_demo_vga_truncator_0_0 : entity is "midterm_demo_vga_truncator_0_0,vga_truncator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of midterm_demo_vga_truncator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of midterm_demo_vga_truncator_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of midterm_demo_vga_truncator_0_0 : entity is "vga_truncator,Vivado 2018.3";
end midterm_demo_vga_truncator_0_0;

architecture STRUCTURE of midterm_demo_vga_truncator_0_0 is
  signal \^blue_in\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^green_in\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^hsync_in\ : STD_LOGIC;
  signal \^red_in\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^vsync_in\ : STD_LOGIC;
begin
  \^blue_in\(5 downto 2) <= blue_in(5 downto 2);
  \^green_in\(5 downto 2) <= green_in(5 downto 2);
  \^hsync_in\ <= hsync_in;
  \^red_in\(5 downto 2) <= red_in(5 downto 2);
  \^vsync_in\ <= vsync_in;
  blue_out(3 downto 0) <= \^blue_in\(5 downto 2);
  green_out(3 downto 0) <= \^green_in\(5 downto 2);
  hsync_out <= \^hsync_in\;
  red_out(3 downto 0) <= \^red_in\(5 downto 2);
  vsync_out <= \^vsync_in\;
end STRUCTURE;
