-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  4 14:24:45 2025
-- Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_iobuf_0_0/midterm_demo_iobuf_0_0_stub.vhdl
-- Design      : midterm_demo_iobuf_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity midterm_demo_iobuf_0_0 is
  Port ( 
    T : in STD_LOGIC;
    I : in STD_LOGIC;
    IO : inout STD_LOGIC;
    O : out STD_LOGIC
  );

end midterm_demo_iobuf_0_0;

architecture stub of midterm_demo_iobuf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "T,I,IO,O";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "iobuf,Vivado 2018.3";
begin
end;
