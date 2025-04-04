-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  4 14:24:45 2025
-- Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_iobuf_0_0/midterm_demo_iobuf_0_0_sim_netlist.vhdl
-- Design      : midterm_demo_iobuf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity midterm_demo_iobuf_0_0_iobuf is
  port (
    O : out STD_LOGIC;
    IO : inout STD_LOGIC;
    I : in STD_LOGIC;
    T : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of midterm_demo_iobuf_0_0_iobuf : entity is "iobuf";
end midterm_demo_iobuf_0_0_iobuf;

architecture STRUCTURE of midterm_demo_iobuf_0_0_iobuf is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of iobuf_i : label is "PRIMITIVE";
begin
iobuf_i: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      IO => IO,
      O => O,
      T => T
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity midterm_demo_iobuf_0_0 is
  port (
    T : in STD_LOGIC;
    I : in STD_LOGIC;
    IO : inout STD_LOGIC;
    O : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of midterm_demo_iobuf_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of midterm_demo_iobuf_0_0 : entity is "midterm_demo_iobuf_0_0,iobuf,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of midterm_demo_iobuf_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of midterm_demo_iobuf_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of midterm_demo_iobuf_0_0 : entity is "iobuf,Vivado 2018.3";
end midterm_demo_iobuf_0_0;

architecture STRUCTURE of midterm_demo_iobuf_0_0 is
begin
inst: entity work.midterm_demo_iobuf_0_0_iobuf
     port map (
      I => I,
      IO => IO,
      O => O,
      T => T
    );
end STRUCTURE;
