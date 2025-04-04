-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  4 14:24:45 2025
-- Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_greyscaleThreshold3_0_0/midterm_demo_greyscaleThreshold3_0_0_sim_netlist.vhdl
-- Design      : midterm_demo_greyscaleThreshold3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity midterm_demo_greyscaleThreshold3_0_0_greyscaleThreshold3 is
  port (
    m_axis_valid : out STD_LOGIC;
    dest_col : out STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    start_col : out STD_LOGIC_VECTOR ( 8 downto 0 );
    start_row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_start_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_valid : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    axi_reset_n : in STD_LOGIC;
    axi_clk : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of midterm_demo_greyscaleThreshold3_0_0_greyscaleThreshold3 : entity is "greyscaleThreshold3";
end midterm_demo_greyscaleThreshold3_0_0_greyscaleThreshold3;

architecture STRUCTURE of midterm_demo_greyscaleThreshold3_0_0_greyscaleThreshold3 is
  signal colIdx : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal colIdx0 : STD_LOGIC;
  signal \colIdx[4]_i_1_n_0\ : STD_LOGIC;
  signal \colIdx[7]_i_2_n_0\ : STD_LOGIC;
  signal \colIdx[9]_i_1_n_0\ : STD_LOGIC;
  signal \colIdx[9]_i_4_n_0\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[0]\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[1]\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[2]\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[3]\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[4]\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[5]\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[6]\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[7]\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[8]\ : STD_LOGIC;
  signal \colIdx_reg_n_0_[9]\ : STD_LOGIC;
  signal destColMax : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \destColMax0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \destColMax0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \destColMax0_carry__0_n_3\ : STD_LOGIC;
  signal destColMax0_carry_i_1_n_0 : STD_LOGIC;
  signal destColMax0_carry_i_2_n_0 : STD_LOGIC;
  signal destColMax0_carry_i_3_n_0 : STD_LOGIC;
  signal destColMax0_carry_i_4_n_0 : STD_LOGIC;
  signal destColMax0_carry_i_5_n_0 : STD_LOGIC;
  signal destColMax0_carry_i_6_n_0 : STD_LOGIC;
  signal destColMax0_carry_i_7_n_0 : STD_LOGIC;
  signal destColMax0_carry_i_8_n_0 : STD_LOGIC;
  signal destColMax0_carry_n_0 : STD_LOGIC;
  signal destColMax0_carry_n_1 : STD_LOGIC;
  signal destColMax0_carry_n_2 : STD_LOGIC;
  signal destColMax0_carry_n_3 : STD_LOGIC;
  signal destColMax_1 : STD_LOGIC;
  signal destColMin : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \destColMin0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \destColMin0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \destColMin0_carry__0_n_3\ : STD_LOGIC;
  signal destColMin0_carry_i_1_n_0 : STD_LOGIC;
  signal destColMin0_carry_i_2_n_0 : STD_LOGIC;
  signal destColMin0_carry_i_3_n_0 : STD_LOGIC;
  signal destColMin0_carry_i_4_n_0 : STD_LOGIC;
  signal destColMin0_carry_i_5_n_0 : STD_LOGIC;
  signal destColMin0_carry_i_6_n_0 : STD_LOGIC;
  signal destColMin0_carry_i_7_n_0 : STD_LOGIC;
  signal destColMin0_carry_i_8_n_0 : STD_LOGIC;
  signal destColMin0_carry_n_0 : STD_LOGIC;
  signal destColMin0_carry_n_1 : STD_LOGIC;
  signal destColMin0_carry_n_2 : STD_LOGIC;
  signal destColMin0_carry_n_3 : STD_LOGIC;
  signal \destColMin[9]_i_10_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_11_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_12_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_13_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_14_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_15_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_1_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_3_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_4_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_5_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_6_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_7_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_8_n_0\ : STD_LOGIC;
  signal \destColMin[9]_i_9_n_0\ : STD_LOGIC;
  signal destColMin_0 : STD_LOGIC;
  signal destRowMax : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \destRowMax0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \destRowMax0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \destRowMax0_carry__0_n_3\ : STD_LOGIC;
  signal destRowMax0_carry_i_1_n_0 : STD_LOGIC;
  signal destRowMax0_carry_i_2_n_0 : STD_LOGIC;
  signal destRowMax0_carry_i_3_n_0 : STD_LOGIC;
  signal destRowMax0_carry_i_4_n_0 : STD_LOGIC;
  signal destRowMax0_carry_i_5_n_0 : STD_LOGIC;
  signal destRowMax0_carry_i_6_n_0 : STD_LOGIC;
  signal destRowMax0_carry_i_7_n_0 : STD_LOGIC;
  signal destRowMax0_carry_i_8_n_0 : STD_LOGIC;
  signal destRowMax0_carry_n_0 : STD_LOGIC;
  signal destRowMax0_carry_n_1 : STD_LOGIC;
  signal destRowMax0_carry_n_2 : STD_LOGIC;
  signal destRowMax0_carry_n_3 : STD_LOGIC;
  signal destRowMax_3 : STD_LOGIC;
  signal destRowMin : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \destRowMin0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \destRowMin0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \destRowMin0_carry__0_n_3\ : STD_LOGIC;
  signal destRowMin0_carry_i_1_n_0 : STD_LOGIC;
  signal destRowMin0_carry_i_2_n_0 : STD_LOGIC;
  signal destRowMin0_carry_i_3_n_0 : STD_LOGIC;
  signal destRowMin0_carry_i_4_n_0 : STD_LOGIC;
  signal destRowMin0_carry_i_5_n_0 : STD_LOGIC;
  signal destRowMin0_carry_i_6_n_0 : STD_LOGIC;
  signal destRowMin0_carry_i_7_n_0 : STD_LOGIC;
  signal destRowMin0_carry_i_8_n_0 : STD_LOGIC;
  signal destRowMin0_carry_n_0 : STD_LOGIC;
  signal destRowMin0_carry_n_1 : STD_LOGIC;
  signal destRowMin0_carry_n_2 : STD_LOGIC;
  signal destRowMin0_carry_n_3 : STD_LOGIC;
  signal destRowMin_2 : STD_LOGIC;
  signal \dest_col0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dest_col0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dest_col0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dest_col0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dest_col0_carry__0_n_0\ : STD_LOGIC;
  signal \dest_col0_carry__0_n_1\ : STD_LOGIC;
  signal \dest_col0_carry__0_n_2\ : STD_LOGIC;
  signal \dest_col0_carry__0_n_3\ : STD_LOGIC;
  signal \dest_col0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \dest_col0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \dest_col0_carry__1_n_3\ : STD_LOGIC;
  signal dest_col0_carry_i_1_n_0 : STD_LOGIC;
  signal dest_col0_carry_i_2_n_0 : STD_LOGIC;
  signal dest_col0_carry_i_3_n_0 : STD_LOGIC;
  signal dest_col0_carry_i_4_n_0 : STD_LOGIC;
  signal dest_col0_carry_n_0 : STD_LOGIC;
  signal dest_col0_carry_n_1 : STD_LOGIC;
  signal dest_col0_carry_n_2 : STD_LOGIC;
  signal dest_col0_carry_n_3 : STD_LOGIC;
  signal \dest_row0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dest_row0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dest_row0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dest_row0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dest_row0_carry__0_n_0\ : STD_LOGIC;
  signal \dest_row0_carry__0_n_1\ : STD_LOGIC;
  signal \dest_row0_carry__0_n_2\ : STD_LOGIC;
  signal \dest_row0_carry__0_n_3\ : STD_LOGIC;
  signal \dest_row0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal dest_row0_carry_i_1_n_0 : STD_LOGIC;
  signal dest_row0_carry_i_2_n_0 : STD_LOGIC;
  signal dest_row0_carry_i_3_n_0 : STD_LOGIC;
  signal dest_row0_carry_i_4_n_0 : STD_LOGIC;
  signal dest_row0_carry_n_0 : STD_LOGIC;
  signal dest_row0_carry_n_1 : STD_LOGIC;
  signal dest_row0_carry_n_2 : STD_LOGIC;
  signal dest_row0_carry_n_3 : STD_LOGIC;
  signal \^dest_start_valid\ : STD_LOGIC;
  signal dest_start_valid_i_1_n_0 : STD_LOGIC;
  signal dest_start_valid_i_2_n_0 : STD_LOGIC;
  signal dest_start_valid_i_3_n_0 : STD_LOGIC;
  signal dest_start_valid_i_4_n_0 : STD_LOGIC;
  signal dest_start_valid_i_5_n_0 : STD_LOGIC;
  signal g_weighted : STD_LOGIC_VECTOR ( 7 to 7 );
  signal grey : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \grey__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \grey__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \grey__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \grey__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \grey__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \grey__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \grey__1_carry__0_n_1\ : STD_LOGIC;
  signal \grey__1_carry__0_n_2\ : STD_LOGIC;
  signal \grey__1_carry__0_n_3\ : STD_LOGIC;
  signal \grey__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \grey__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \grey__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \grey__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \grey__1_carry_n_0\ : STD_LOGIC;
  signal \grey__1_carry_n_1\ : STD_LOGIC;
  signal \grey__1_carry_n_2\ : STD_LOGIC;
  signal \grey__1_carry_n_3\ : STD_LOGIC;
  signal \^m_axis_data\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_axis_data[0]_i_1_n_0\ : STD_LOGIC;
  signal rowIdx : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \rowIdx[7]_i_2_n_0\ : STD_LOGIC;
  signal \rowIdx[7]_i_3_n_0\ : STD_LOGIC;
  signal \rowIdx[8]_i_1_n_0\ : STD_LOGIC;
  signal \rowIdx[8]_i_3_n_0\ : STD_LOGIC;
  signal \rowIdx_reg_n_0_[0]\ : STD_LOGIC;
  signal \rowIdx_reg_n_0_[1]\ : STD_LOGIC;
  signal \rowIdx_reg_n_0_[2]\ : STD_LOGIC;
  signal \rowIdx_reg_n_0_[3]\ : STD_LOGIC;
  signal \rowIdx_reg_n_0_[4]\ : STD_LOGIC;
  signal \rowIdx_reg_n_0_[5]\ : STD_LOGIC;
  signal \rowIdx_reg_n_0_[6]\ : STD_LOGIC;
  signal \rowIdx_reg_n_0_[7]\ : STD_LOGIC;
  signal \rowIdx_reg_n_0_[8]\ : STD_LOGIC;
  signal startColMax : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \startColMax0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \startColMax0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \startColMax0_carry__0_n_3\ : STD_LOGIC;
  signal startColMax0_carry_i_1_n_0 : STD_LOGIC;
  signal startColMax0_carry_i_2_n_0 : STD_LOGIC;
  signal startColMax0_carry_i_3_n_0 : STD_LOGIC;
  signal startColMax0_carry_i_4_n_0 : STD_LOGIC;
  signal startColMax0_carry_i_5_n_0 : STD_LOGIC;
  signal startColMax0_carry_i_6_n_0 : STD_LOGIC;
  signal startColMax0_carry_i_7_n_0 : STD_LOGIC;
  signal startColMax0_carry_i_8_n_0 : STD_LOGIC;
  signal startColMax0_carry_n_0 : STD_LOGIC;
  signal startColMax0_carry_n_1 : STD_LOGIC;
  signal startColMax0_carry_n_2 : STD_LOGIC;
  signal startColMax0_carry_n_3 : STD_LOGIC;
  signal startColMax_6 : STD_LOGIC;
  signal startColMin : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \startColMin0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \startColMin0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \startColMin0_carry__0_n_3\ : STD_LOGIC;
  signal startColMin0_carry_i_1_n_0 : STD_LOGIC;
  signal startColMin0_carry_i_2_n_0 : STD_LOGIC;
  signal startColMin0_carry_i_3_n_0 : STD_LOGIC;
  signal startColMin0_carry_i_4_n_0 : STD_LOGIC;
  signal startColMin0_carry_i_5_n_0 : STD_LOGIC;
  signal startColMin0_carry_i_6_n_0 : STD_LOGIC;
  signal startColMin0_carry_i_7_n_0 : STD_LOGIC;
  signal startColMin0_carry_i_8_n_0 : STD_LOGIC;
  signal startColMin0_carry_n_0 : STD_LOGIC;
  signal startColMin0_carry_n_1 : STD_LOGIC;
  signal startColMin0_carry_n_2 : STD_LOGIC;
  signal startColMin0_carry_n_3 : STD_LOGIC;
  signal \startColMin[9]_i_2_n_0\ : STD_LOGIC;
  signal \startColMin[9]_i_3_n_0\ : STD_LOGIC;
  signal startColMin_7 : STD_LOGIC;
  signal startRowMax : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \startRowMax0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \startRowMax0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \startRowMax0_carry__0_n_3\ : STD_LOGIC;
  signal startRowMax0_carry_i_1_n_0 : STD_LOGIC;
  signal startRowMax0_carry_i_2_n_0 : STD_LOGIC;
  signal startRowMax0_carry_i_3_n_0 : STD_LOGIC;
  signal startRowMax0_carry_i_4_n_0 : STD_LOGIC;
  signal startRowMax0_carry_i_5_n_0 : STD_LOGIC;
  signal startRowMax0_carry_i_6_n_0 : STD_LOGIC;
  signal startRowMax0_carry_i_7_n_0 : STD_LOGIC;
  signal startRowMax0_carry_i_8_n_0 : STD_LOGIC;
  signal startRowMax0_carry_n_0 : STD_LOGIC;
  signal startRowMax0_carry_n_1 : STD_LOGIC;
  signal startRowMax0_carry_n_2 : STD_LOGIC;
  signal startRowMax0_carry_n_3 : STD_LOGIC;
  signal startRowMax_4 : STD_LOGIC;
  signal startRowMin : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \startRowMin0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \startRowMin0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \startRowMin0_carry__0_n_3\ : STD_LOGIC;
  signal startRowMin0_carry_i_1_n_0 : STD_LOGIC;
  signal startRowMin0_carry_i_2_n_0 : STD_LOGIC;
  signal startRowMin0_carry_i_3_n_0 : STD_LOGIC;
  signal startRowMin0_carry_i_4_n_0 : STD_LOGIC;
  signal startRowMin0_carry_i_5_n_0 : STD_LOGIC;
  signal startRowMin0_carry_i_6_n_0 : STD_LOGIC;
  signal startRowMin0_carry_i_7_n_0 : STD_LOGIC;
  signal startRowMin0_carry_i_8_n_0 : STD_LOGIC;
  signal startRowMin0_carry_n_0 : STD_LOGIC;
  signal startRowMin0_carry_n_1 : STD_LOGIC;
  signal startRowMin0_carry_n_2 : STD_LOGIC;
  signal startRowMin0_carry_n_3 : STD_LOGIC;
  signal startRowMin_5 : STD_LOGIC;
  signal \start_col0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \start_col0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \start_col0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \start_col0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \start_col0_carry__0_n_0\ : STD_LOGIC;
  signal \start_col0_carry__0_n_1\ : STD_LOGIC;
  signal \start_col0_carry__0_n_2\ : STD_LOGIC;
  signal \start_col0_carry__0_n_3\ : STD_LOGIC;
  signal \start_col0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \start_col0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \start_col0_carry__1_n_3\ : STD_LOGIC;
  signal start_col0_carry_i_1_n_0 : STD_LOGIC;
  signal start_col0_carry_i_2_n_0 : STD_LOGIC;
  signal start_col0_carry_i_3_n_0 : STD_LOGIC;
  signal start_col0_carry_i_4_n_0 : STD_LOGIC;
  signal start_col0_carry_n_0 : STD_LOGIC;
  signal start_col0_carry_n_1 : STD_LOGIC;
  signal start_col0_carry_n_2 : STD_LOGIC;
  signal start_col0_carry_n_3 : STD_LOGIC;
  signal \start_row0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \start_row0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \start_row0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \start_row0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \start_row0_carry__0_n_0\ : STD_LOGIC;
  signal \start_row0_carry__0_n_1\ : STD_LOGIC;
  signal \start_row0_carry__0_n_2\ : STD_LOGIC;
  signal \start_row0_carry__0_n_3\ : STD_LOGIC;
  signal \start_row0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal start_row0_carry_i_1_n_0 : STD_LOGIC;
  signal start_row0_carry_i_2_n_0 : STD_LOGIC;
  signal start_row0_carry_i_3_n_0 : STD_LOGIC;
  signal start_row0_carry_i_4_n_0 : STD_LOGIC;
  signal start_row0_carry_n_0 : STD_LOGIC;
  signal start_row0_carry_n_1 : STD_LOGIC;
  signal start_row0_carry_n_2 : STD_LOGIC;
  signal start_row0_carry_n_3 : STD_LOGIC;
  signal NLW_destColMax0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_destColMax0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_destColMax0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_destColMin0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_destColMin0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_destColMin0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_destRowMax0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_destRowMax0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_destRowMax0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_destRowMin0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_destRowMin0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_destRowMin0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dest_col0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dest_col0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dest_col0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_dest_row0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dest_row0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dest_row0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_grey__1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_grey__1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_grey__1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_startColMax0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_startColMax0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_startColMax0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_startColMin0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_startColMin0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_startColMin0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_startRowMax0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_startRowMax0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_startRowMax0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_startRowMin0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_startRowMin0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_startRowMin0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_start_col0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_start_col0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_start_col0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_start_row0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_start_row0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_row0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \colIdx[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \colIdx[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \colIdx[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \colIdx[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \colIdx[7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \destColMin[9]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \destColMin[9]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \destColMin[9]_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \destColMin[9]_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \destColMin[9]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of dest_start_valid_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of dest_start_valid_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rowIdx[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rowIdx[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rowIdx[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rowIdx[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rowIdx[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rowIdx[8]_i_3\ : label is "soft_lutpair3";
begin
  dest_start_valid <= \^dest_start_valid\;
  m_axis_data(0) <= \^m_axis_data\(0);
\colIdx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \colIdx_reg_n_0_[0]\,
      O => colIdx(0)
    );
\colIdx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \colIdx_reg_n_0_[0]\,
      I1 => \colIdx_reg_n_0_[1]\,
      O => colIdx(1)
    );
\colIdx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \colIdx_reg_n_0_[0]\,
      I1 => \colIdx_reg_n_0_[1]\,
      I2 => \colIdx_reg_n_0_[2]\,
      O => colIdx(2)
    );
\colIdx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \colIdx_reg_n_0_[3]\,
      I1 => \colIdx_reg_n_0_[0]\,
      I2 => \colIdx_reg_n_0_[1]\,
      I3 => \colIdx_reg_n_0_[2]\,
      O => colIdx(3)
    );
\colIdx[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \colIdx_reg_n_0_[4]\,
      I1 => \colIdx_reg_n_0_[2]\,
      I2 => \colIdx_reg_n_0_[1]\,
      I3 => \colIdx_reg_n_0_[0]\,
      I4 => \colIdx_reg_n_0_[3]\,
      O => \colIdx[4]_i_1_n_0\
    );
\colIdx[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \colIdx_reg_n_0_[5]\,
      I1 => \colIdx_reg_n_0_[3]\,
      I2 => \colIdx_reg_n_0_[0]\,
      I3 => \colIdx_reg_n_0_[1]\,
      I4 => \colIdx_reg_n_0_[2]\,
      I5 => \colIdx_reg_n_0_[4]\,
      O => colIdx(5)
    );
\colIdx[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => dest_start_valid_i_3_n_0,
      I1 => \colIdx[7]_i_2_n_0\,
      I2 => \colIdx_reg_n_0_[3]\,
      I3 => \colIdx_reg_n_0_[4]\,
      I4 => \colIdx_reg_n_0_[5]\,
      I5 => \colIdx_reg_n_0_[6]\,
      O => colIdx(6)
    );
\colIdx[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \colIdx_reg_n_0_[7]\,
      I1 => \colIdx_reg_n_0_[6]\,
      I2 => \colIdx[7]_i_2_n_0\,
      I3 => \colIdx_reg_n_0_[3]\,
      I4 => \colIdx_reg_n_0_[4]\,
      I5 => \colIdx_reg_n_0_[5]\,
      O => colIdx(7)
    );
\colIdx[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \colIdx_reg_n_0_[2]\,
      I1 => \colIdx_reg_n_0_[1]\,
      I2 => \colIdx_reg_n_0_[0]\,
      O => \colIdx[7]_i_2_n_0\
    );
\colIdx[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => dest_start_valid_i_3_n_0,
      I1 => \colIdx_reg_n_0_[7]\,
      I2 => \colIdx_reg_n_0_[6]\,
      I3 => \colIdx[9]_i_4_n_0\,
      I4 => \colIdx_reg_n_0_[8]\,
      O => colIdx(8)
    );
\colIdx[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_reset_n,
      O => \colIdx[9]_i_1_n_0\
    );
\colIdx[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_ready,
      I1 => s_axis_valid,
      O => colIdx0
    );
\colIdx[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \colIdx_reg_n_0_[9]\,
      I1 => \colIdx_reg_n_0_[7]\,
      I2 => \colIdx_reg_n_0_[6]\,
      I3 => \colIdx[9]_i_4_n_0\,
      I4 => \colIdx_reg_n_0_[8]\,
      O => colIdx(9)
    );
\colIdx[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \colIdx_reg_n_0_[0]\,
      I1 => \colIdx_reg_n_0_[1]\,
      I2 => \colIdx_reg_n_0_[2]\,
      I3 => \colIdx_reg_n_0_[3]\,
      I4 => \colIdx_reg_n_0_[4]\,
      I5 => \colIdx_reg_n_0_[5]\,
      O => \colIdx[9]_i_4_n_0\
    );
\colIdx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => colIdx(0),
      Q => \colIdx_reg_n_0_[0]\,
      R => \colIdx[9]_i_1_n_0\
    );
\colIdx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => colIdx(1),
      Q => \colIdx_reg_n_0_[1]\,
      R => \colIdx[9]_i_1_n_0\
    );
\colIdx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => colIdx(2),
      Q => \colIdx_reg_n_0_[2]\,
      R => \colIdx[9]_i_1_n_0\
    );
\colIdx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => colIdx(3),
      Q => \colIdx_reg_n_0_[3]\,
      R => \colIdx[9]_i_1_n_0\
    );
\colIdx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => \colIdx[4]_i_1_n_0\,
      Q => \colIdx_reg_n_0_[4]\,
      R => \colIdx[9]_i_1_n_0\
    );
\colIdx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => colIdx(5),
      Q => \colIdx_reg_n_0_[5]\,
      R => \colIdx[9]_i_1_n_0\
    );
\colIdx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => colIdx(6),
      Q => \colIdx_reg_n_0_[6]\,
      R => \colIdx[9]_i_1_n_0\
    );
\colIdx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => colIdx(7),
      Q => \colIdx_reg_n_0_[7]\,
      R => \colIdx[9]_i_1_n_0\
    );
\colIdx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => colIdx(8),
      Q => \colIdx_reg_n_0_[8]\,
      R => \colIdx[9]_i_1_n_0\
    );
\colIdx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => colIdx0,
      D => colIdx(9),
      Q => \colIdx_reg_n_0_[9]\,
      R => \colIdx[9]_i_1_n_0\
    );
destColMax0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => destColMax0_carry_n_0,
      CO(2) => destColMax0_carry_n_1,
      CO(1) => destColMax0_carry_n_2,
      CO(0) => destColMax0_carry_n_3,
      CYINIT => '0',
      DI(3) => destColMax0_carry_i_1_n_0,
      DI(2) => destColMax0_carry_i_2_n_0,
      DI(1) => destColMax0_carry_i_3_n_0,
      DI(0) => destColMax0_carry_i_4_n_0,
      O(3 downto 0) => NLW_destColMax0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => destColMax0_carry_i_5_n_0,
      S(2) => destColMax0_carry_i_6_n_0,
      S(1) => destColMax0_carry_i_7_n_0,
      S(0) => destColMax0_carry_i_8_n_0
    );
\destColMax0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => destColMax0_carry_n_0,
      CO(3 downto 1) => \NLW_destColMax0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \destColMax0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \destColMax0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_destColMax0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \destColMax0_carry__0_i_2_n_0\
    );
\destColMax0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[9]\,
      I1 => destColMax(9),
      I2 => \colIdx_reg_n_0_[8]\,
      I3 => destColMax(8),
      O => \destColMax0_carry__0_i_1_n_0\
    );
\destColMax0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => destColMax(9),
      I1 => \colIdx_reg_n_0_[9]\,
      I2 => destColMax(8),
      I3 => \colIdx_reg_n_0_[8]\,
      O => \destColMax0_carry__0_i_2_n_0\
    );
destColMax0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[7]\,
      I1 => destColMax(7),
      I2 => \colIdx_reg_n_0_[6]\,
      I3 => destColMax(6),
      O => destColMax0_carry_i_1_n_0
    );
destColMax0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[5]\,
      I1 => destColMax(5),
      I2 => \colIdx_reg_n_0_[4]\,
      I3 => destColMax(4),
      O => destColMax0_carry_i_2_n_0
    );
destColMax0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[3]\,
      I1 => destColMax(3),
      I2 => \colIdx_reg_n_0_[2]\,
      I3 => destColMax(2),
      O => destColMax0_carry_i_3_n_0
    );
destColMax0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[1]\,
      I1 => destColMax(1),
      I2 => \colIdx_reg_n_0_[0]\,
      I3 => destColMax(0),
      O => destColMax0_carry_i_4_n_0
    );
destColMax0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => destColMax(7),
      I1 => \colIdx_reg_n_0_[7]\,
      I2 => destColMax(6),
      I3 => \colIdx_reg_n_0_[6]\,
      O => destColMax0_carry_i_5_n_0
    );
destColMax0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => destColMax(5),
      I1 => \colIdx_reg_n_0_[5]\,
      I2 => destColMax(4),
      I3 => \colIdx_reg_n_0_[4]\,
      O => destColMax0_carry_i_6_n_0
    );
destColMax0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => destColMax(3),
      I1 => \colIdx_reg_n_0_[3]\,
      I2 => destColMax(2),
      I3 => \colIdx_reg_n_0_[2]\,
      O => destColMax0_carry_i_7_n_0
    );
destColMax0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => destColMax(1),
      I1 => \colIdx_reg_n_0_[1]\,
      I2 => destColMax(0),
      I3 => \colIdx_reg_n_0_[0]\,
      O => destColMax0_carry_i_8_n_0
    );
\destColMax[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \destColMin[9]_i_4_n_0\,
      I1 => \destColMin[9]_i_5_n_0\,
      I2 => \destColMin[9]_i_6_n_0\,
      I3 => m_axis_ready,
      I4 => s_axis_valid,
      I5 => \destColMax0_carry__0_n_3\,
      O => destColMax_1
    );
\destColMax_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[0]\,
      Q => destColMax(0),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMax_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[1]\,
      Q => destColMax(1),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMax_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[2]\,
      Q => destColMax(2),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMax_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[3]\,
      Q => destColMax(3),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMax_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[4]\,
      Q => destColMax(4),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMax_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[5]\,
      Q => destColMax(5),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMax_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[6]\,
      Q => destColMax(6),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMax_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[7]\,
      Q => destColMax(7),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMax_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[8]\,
      Q => destColMax(8),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMax_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMax_1,
      D => \colIdx_reg_n_0_[9]\,
      Q => destColMax(9),
      R => \destColMin[9]_i_1_n_0\
    );
destColMin0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => destColMin0_carry_n_0,
      CO(2) => destColMin0_carry_n_1,
      CO(1) => destColMin0_carry_n_2,
      CO(0) => destColMin0_carry_n_3,
      CYINIT => '0',
      DI(3) => destColMin0_carry_i_1_n_0,
      DI(2) => destColMin0_carry_i_2_n_0,
      DI(1) => destColMin0_carry_i_3_n_0,
      DI(0) => destColMin0_carry_i_4_n_0,
      O(3 downto 0) => NLW_destColMin0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => destColMin0_carry_i_5_n_0,
      S(2) => destColMin0_carry_i_6_n_0,
      S(1) => destColMin0_carry_i_7_n_0,
      S(0) => destColMin0_carry_i_8_n_0
    );
\destColMin0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => destColMin0_carry_n_0,
      CO(3 downto 1) => \NLW_destColMin0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \destColMin0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \destColMin0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_destColMin0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \destColMin0_carry__0_i_2_n_0\
    );
\destColMin0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => destColMin(9),
      I1 => \colIdx_reg_n_0_[9]\,
      I2 => destColMin(8),
      I3 => \colIdx_reg_n_0_[8]\,
      O => \destColMin0_carry__0_i_1_n_0\
    );
\destColMin0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \colIdx_reg_n_0_[9]\,
      I1 => destColMin(9),
      I2 => \colIdx_reg_n_0_[8]\,
      I3 => destColMin(8),
      O => \destColMin0_carry__0_i_2_n_0\
    );
destColMin0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => destColMin(7),
      I1 => \colIdx_reg_n_0_[7]\,
      I2 => destColMin(6),
      I3 => \colIdx_reg_n_0_[6]\,
      O => destColMin0_carry_i_1_n_0
    );
destColMin0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => destColMin(5),
      I1 => \colIdx_reg_n_0_[5]\,
      I2 => destColMin(4),
      I3 => \colIdx_reg_n_0_[4]\,
      O => destColMin0_carry_i_2_n_0
    );
destColMin0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => destColMin(3),
      I1 => \colIdx_reg_n_0_[3]\,
      I2 => destColMin(2),
      I3 => \colIdx_reg_n_0_[2]\,
      O => destColMin0_carry_i_3_n_0
    );
destColMin0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => destColMin(1),
      I1 => \colIdx_reg_n_0_[1]\,
      I2 => destColMin(0),
      I3 => \colIdx_reg_n_0_[0]\,
      O => destColMin0_carry_i_4_n_0
    );
destColMin0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \colIdx_reg_n_0_[7]\,
      I1 => destColMin(7),
      I2 => \colIdx_reg_n_0_[6]\,
      I3 => destColMin(6),
      O => destColMin0_carry_i_5_n_0
    );
destColMin0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \colIdx_reg_n_0_[5]\,
      I1 => destColMin(5),
      I2 => \colIdx_reg_n_0_[4]\,
      I3 => destColMin(4),
      O => destColMin0_carry_i_6_n_0
    );
destColMin0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \colIdx_reg_n_0_[3]\,
      I1 => destColMin(3),
      I2 => \colIdx_reg_n_0_[2]\,
      I3 => destColMin(2),
      O => destColMin0_carry_i_7_n_0
    );
destColMin0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \colIdx_reg_n_0_[1]\,
      I1 => destColMin(1),
      I2 => \colIdx_reg_n_0_[0]\,
      I3 => destColMin(0),
      O => destColMin0_carry_i_8_n_0
    );
\destColMin[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7077"
    )
        port map (
      I0 => s_axis_valid,
      I1 => m_axis_ready,
      I2 => \destColMin[9]_i_3_n_0\,
      I3 => axi_reset_n,
      O => \destColMin[9]_i_1_n_0\
    );
\destColMin[9]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[7]\,
      I1 => \rowIdx_reg_n_0_[2]\,
      I2 => \rowIdx_reg_n_0_[1]\,
      O => \destColMin[9]_i_10_n_0\
    );
\destColMin[9]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F7FFF"
    )
        port map (
      I0 => \colIdx_reg_n_0_[3]\,
      I1 => \colIdx_reg_n_0_[4]\,
      I2 => \colIdx_reg_n_0_[5]\,
      I3 => \colIdx_reg_n_0_[2]\,
      I4 => \colIdx_reg_n_0_[1]\,
      O => \destColMin[9]_i_11_n_0\
    );
\destColMin[9]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \colIdx_reg_n_0_[2]\,
      I1 => \colIdx_reg_n_0_[1]\,
      I2 => \colIdx_reg_n_0_[5]\,
      I3 => \colIdx_reg_n_0_[4]\,
      O => \destColMin[9]_i_12_n_0\
    );
\destColMin[9]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011111"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[8]\,
      I1 => \rowIdx_reg_n_0_[4]\,
      I2 => \rowIdx_reg_n_0_[1]\,
      I3 => \rowIdx_reg_n_0_[2]\,
      I4 => \rowIdx_reg_n_0_[3]\,
      O => \destColMin[9]_i_13_n_0\
    );
\destColMin[9]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[7]\,
      I1 => \rowIdx_reg_n_0_[6]\,
      I2 => \rowIdx_reg_n_0_[5]\,
      O => \destColMin[9]_i_14_n_0\
    );
\destColMin[9]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBBF"
    )
        port map (
      I0 => s_axis_data(9),
      I1 => s_axis_data(6),
      I2 => s_axis_data(5),
      I3 => s_axis_data(4),
      I4 => s_axis_data(2),
      I5 => s_axis_data(7),
      O => \destColMin[9]_i_15_n_0\
    );
\destColMin[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \destColMin[9]_i_4_n_0\,
      I1 => \destColMin[9]_i_5_n_0\,
      I2 => \destColMin[9]_i_6_n_0\,
      I3 => m_axis_ready,
      I4 => s_axis_valid,
      I5 => \destColMin0_carry__0_n_3\,
      O => destColMin_0
    );
\destColMin[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \destColMin[9]_i_7_n_0\,
      I1 => \rowIdx_reg_n_0_[0]\,
      I2 => \rowIdx_reg_n_0_[7]\,
      I3 => \colIdx_reg_n_0_[0]\,
      I4 => \destColMin[9]_i_8_n_0\,
      I5 => \destColMin[9]_i_9_n_0\,
      O => \destColMin[9]_i_3_n_0\
    );
\destColMin[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFF2F2F2FFF2"
    )
        port map (
      I0 => \destColMin[9]_i_9_n_0\,
      I1 => \destColMin[9]_i_10_n_0\,
      I2 => \colIdx_reg_n_0_[9]\,
      I3 => \colIdx_reg_n_0_[8]\,
      I4 => \destColMin[9]_i_11_n_0\,
      I5 => dest_start_valid_i_5_n_0,
      O => \destColMin[9]_i_4_n_0\
    );
\destColMin[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4F4F44"
    )
        port map (
      I0 => \destColMin[9]_i_12_n_0\,
      I1 => \destColMin[9]_i_8_n_0\,
      I2 => \destColMin[9]_i_13_n_0\,
      I3 => \rowIdx_reg_n_0_[8]\,
      I4 => \destColMin[9]_i_14_n_0\,
      O => \destColMin[9]_i_5_n_0\
    );
\destColMin[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => s_axis_data(1),
      I1 => s_axis_data(10),
      I2 => s_axis_data(11),
      I3 => s_axis_data(3),
      I4 => \destColMin[9]_i_15_n_0\,
      O => \destColMin[9]_i_6_n_0\
    );
\destColMin[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \colIdx_reg_n_0_[5]\,
      I1 => \colIdx_reg_n_0_[4]\,
      I2 => \rowIdx_reg_n_0_[1]\,
      I3 => \rowIdx_reg_n_0_[2]\,
      I4 => \colIdx_reg_n_0_[1]\,
      I5 => \colIdx_reg_n_0_[2]\,
      O => \destColMin[9]_i_7_n_0\
    );
\destColMin[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \colIdx_reg_n_0_[9]\,
      I1 => \colIdx_reg_n_0_[8]\,
      I2 => \colIdx_reg_n_0_[6]\,
      I3 => \colIdx_reg_n_0_[7]\,
      I4 => \colIdx_reg_n_0_[3]\,
      O => \destColMin[9]_i_8_n_0\
    );
\destColMin[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[8]\,
      I1 => \rowIdx_reg_n_0_[4]\,
      I2 => \rowIdx_reg_n_0_[3]\,
      I3 => \rowIdx_reg_n_0_[6]\,
      I4 => \rowIdx_reg_n_0_[5]\,
      O => \destColMin[9]_i_9_n_0\
    );
\destColMin_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[0]\,
      Q => destColMin(0),
      S => \destColMin[9]_i_1_n_0\
    );
\destColMin_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[1]\,
      Q => destColMin(1),
      S => \destColMin[9]_i_1_n_0\
    );
\destColMin_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[2]\,
      Q => destColMin(2),
      S => \destColMin[9]_i_1_n_0\
    );
\destColMin_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[3]\,
      Q => destColMin(3),
      S => \destColMin[9]_i_1_n_0\
    );
\destColMin_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[4]\,
      Q => destColMin(4),
      S => \destColMin[9]_i_1_n_0\
    );
\destColMin_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[5]\,
      Q => destColMin(5),
      S => \destColMin[9]_i_1_n_0\
    );
\destColMin_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[6]\,
      Q => destColMin(6),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMin_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[7]\,
      Q => destColMin(7),
      R => \destColMin[9]_i_1_n_0\
    );
\destColMin_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[8]\,
      Q => destColMin(8),
      S => \destColMin[9]_i_1_n_0\
    );
\destColMin_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destColMin_0,
      D => \colIdx_reg_n_0_[9]\,
      Q => destColMin(9),
      R => \destColMin[9]_i_1_n_0\
    );
destRowMax0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => destRowMax0_carry_n_0,
      CO(2) => destRowMax0_carry_n_1,
      CO(1) => destRowMax0_carry_n_2,
      CO(0) => destRowMax0_carry_n_3,
      CYINIT => '0',
      DI(3) => destRowMax0_carry_i_1_n_0,
      DI(2) => destRowMax0_carry_i_2_n_0,
      DI(1) => destRowMax0_carry_i_3_n_0,
      DI(0) => destRowMax0_carry_i_4_n_0,
      O(3 downto 0) => NLW_destRowMax0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => destRowMax0_carry_i_5_n_0,
      S(2) => destRowMax0_carry_i_6_n_0,
      S(1) => destRowMax0_carry_i_7_n_0,
      S(0) => destRowMax0_carry_i_8_n_0
    );
\destRowMax0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => destRowMax0_carry_n_0,
      CO(3 downto 1) => \NLW_destRowMax0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \destRowMax0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \destRowMax0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_destRowMax0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \destRowMax0_carry__0_i_2_n_0\
    );
\destRowMax0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[8]\,
      I1 => destRowMax(8),
      O => \destRowMax0_carry__0_i_1_n_0\
    );
\destRowMax0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => destRowMax(8),
      I1 => \rowIdx_reg_n_0_[8]\,
      O => \destRowMax0_carry__0_i_2_n_0\
    );
destRowMax0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[7]\,
      I1 => destRowMax(7),
      I2 => \rowIdx_reg_n_0_[6]\,
      I3 => destRowMax(6),
      O => destRowMax0_carry_i_1_n_0
    );
destRowMax0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[5]\,
      I1 => destRowMax(5),
      I2 => \rowIdx_reg_n_0_[4]\,
      I3 => destRowMax(4),
      O => destRowMax0_carry_i_2_n_0
    );
destRowMax0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[3]\,
      I1 => destRowMax(3),
      I2 => \rowIdx_reg_n_0_[2]\,
      I3 => destRowMax(2),
      O => destRowMax0_carry_i_3_n_0
    );
destRowMax0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[1]\,
      I1 => destRowMax(1),
      I2 => \rowIdx_reg_n_0_[0]\,
      I3 => destRowMax(0),
      O => destRowMax0_carry_i_4_n_0
    );
destRowMax0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => destRowMax(7),
      I1 => \rowIdx_reg_n_0_[7]\,
      I2 => destRowMax(6),
      I3 => \rowIdx_reg_n_0_[6]\,
      O => destRowMax0_carry_i_5_n_0
    );
destRowMax0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => destRowMax(5),
      I1 => \rowIdx_reg_n_0_[5]\,
      I2 => destRowMax(4),
      I3 => \rowIdx_reg_n_0_[4]\,
      O => destRowMax0_carry_i_6_n_0
    );
destRowMax0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => destRowMax(3),
      I1 => \rowIdx_reg_n_0_[3]\,
      I2 => destRowMax(2),
      I3 => \rowIdx_reg_n_0_[2]\,
      O => destRowMax0_carry_i_7_n_0
    );
destRowMax0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => destRowMax(1),
      I1 => \rowIdx_reg_n_0_[1]\,
      I2 => destRowMax(0),
      I3 => \rowIdx_reg_n_0_[0]\,
      O => destRowMax0_carry_i_8_n_0
    );
\destRowMax[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \destColMin[9]_i_4_n_0\,
      I1 => \destColMin[9]_i_5_n_0\,
      I2 => \destColMin[9]_i_6_n_0\,
      I3 => m_axis_ready,
      I4 => s_axis_valid,
      I5 => \destRowMax0_carry__0_n_3\,
      O => destRowMax_3
    );
\destRowMax_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMax_3,
      D => \rowIdx_reg_n_0_[0]\,
      Q => destRowMax(0),
      R => \destColMin[9]_i_1_n_0\
    );
\destRowMax_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMax_3,
      D => \rowIdx_reg_n_0_[1]\,
      Q => destRowMax(1),
      R => \destColMin[9]_i_1_n_0\
    );
\destRowMax_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMax_3,
      D => \rowIdx_reg_n_0_[2]\,
      Q => destRowMax(2),
      R => \destColMin[9]_i_1_n_0\
    );
\destRowMax_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMax_3,
      D => \rowIdx_reg_n_0_[3]\,
      Q => destRowMax(3),
      R => \destColMin[9]_i_1_n_0\
    );
\destRowMax_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMax_3,
      D => \rowIdx_reg_n_0_[4]\,
      Q => destRowMax(4),
      R => \destColMin[9]_i_1_n_0\
    );
\destRowMax_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMax_3,
      D => \rowIdx_reg_n_0_[5]\,
      Q => destRowMax(5),
      R => \destColMin[9]_i_1_n_0\
    );
\destRowMax_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMax_3,
      D => \rowIdx_reg_n_0_[6]\,
      Q => destRowMax(6),
      R => \destColMin[9]_i_1_n_0\
    );
\destRowMax_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMax_3,
      D => \rowIdx_reg_n_0_[7]\,
      Q => destRowMax(7),
      R => \destColMin[9]_i_1_n_0\
    );
\destRowMax_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMax_3,
      D => \rowIdx_reg_n_0_[8]\,
      Q => destRowMax(8),
      R => \destColMin[9]_i_1_n_0\
    );
destRowMin0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => destRowMin0_carry_n_0,
      CO(2) => destRowMin0_carry_n_1,
      CO(1) => destRowMin0_carry_n_2,
      CO(0) => destRowMin0_carry_n_3,
      CYINIT => '0',
      DI(3) => destRowMin0_carry_i_1_n_0,
      DI(2) => destRowMin0_carry_i_2_n_0,
      DI(1) => destRowMin0_carry_i_3_n_0,
      DI(0) => destRowMin0_carry_i_4_n_0,
      O(3 downto 0) => NLW_destRowMin0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => destRowMin0_carry_i_5_n_0,
      S(2) => destRowMin0_carry_i_6_n_0,
      S(1) => destRowMin0_carry_i_7_n_0,
      S(0) => destRowMin0_carry_i_8_n_0
    );
\destRowMin0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => destRowMin0_carry_n_0,
      CO(3 downto 1) => \NLW_destRowMin0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \destRowMin0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \destRowMin0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_destRowMin0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \destRowMin0_carry__0_i_2_n_0\
    );
\destRowMin0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => destRowMin(8),
      I1 => \rowIdx_reg_n_0_[8]\,
      O => \destRowMin0_carry__0_i_1_n_0\
    );
\destRowMin0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[8]\,
      I1 => destRowMin(8),
      O => \destRowMin0_carry__0_i_2_n_0\
    );
destRowMin0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => destRowMin(7),
      I1 => \rowIdx_reg_n_0_[7]\,
      I2 => destRowMin(6),
      I3 => \rowIdx_reg_n_0_[6]\,
      O => destRowMin0_carry_i_1_n_0
    );
destRowMin0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => destRowMin(5),
      I1 => \rowIdx_reg_n_0_[5]\,
      I2 => destRowMin(4),
      I3 => \rowIdx_reg_n_0_[4]\,
      O => destRowMin0_carry_i_2_n_0
    );
destRowMin0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => destRowMin(3),
      I1 => \rowIdx_reg_n_0_[3]\,
      I2 => destRowMin(2),
      I3 => \rowIdx_reg_n_0_[2]\,
      O => destRowMin0_carry_i_3_n_0
    );
destRowMin0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => destRowMin(1),
      I1 => \rowIdx_reg_n_0_[1]\,
      I2 => destRowMin(0),
      I3 => \rowIdx_reg_n_0_[0]\,
      O => destRowMin0_carry_i_4_n_0
    );
destRowMin0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[7]\,
      I1 => destRowMin(7),
      I2 => \rowIdx_reg_n_0_[6]\,
      I3 => destRowMin(6),
      O => destRowMin0_carry_i_5_n_0
    );
destRowMin0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[5]\,
      I1 => destRowMin(5),
      I2 => \rowIdx_reg_n_0_[4]\,
      I3 => destRowMin(4),
      O => destRowMin0_carry_i_6_n_0
    );
destRowMin0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[3]\,
      I1 => destRowMin(3),
      I2 => \rowIdx_reg_n_0_[2]\,
      I3 => destRowMin(2),
      O => destRowMin0_carry_i_7_n_0
    );
destRowMin0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[1]\,
      I1 => destRowMin(1),
      I2 => \rowIdx_reg_n_0_[0]\,
      I3 => destRowMin(0),
      O => destRowMin0_carry_i_8_n_0
    );
\destRowMin[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \destColMin[9]_i_4_n_0\,
      I1 => \destColMin[9]_i_5_n_0\,
      I2 => \destColMin[9]_i_6_n_0\,
      I3 => m_axis_ready,
      I4 => s_axis_valid,
      I5 => \destRowMin0_carry__0_n_3\,
      O => destRowMin_2
    );
\destRowMin_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destRowMin_2,
      D => \rowIdx_reg_n_0_[0]\,
      Q => destRowMin(0),
      S => \destColMin[9]_i_1_n_0\
    );
\destRowMin_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destRowMin_2,
      D => \rowIdx_reg_n_0_[1]\,
      Q => destRowMin(1),
      S => \destColMin[9]_i_1_n_0\
    );
\destRowMin_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destRowMin_2,
      D => \rowIdx_reg_n_0_[2]\,
      Q => destRowMin(2),
      S => \destColMin[9]_i_1_n_0\
    );
\destRowMin_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destRowMin_2,
      D => \rowIdx_reg_n_0_[3]\,
      Q => destRowMin(3),
      S => \destColMin[9]_i_1_n_0\
    );
\destRowMin_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMin_2,
      D => \rowIdx_reg_n_0_[4]\,
      Q => destRowMin(4),
      R => \destColMin[9]_i_1_n_0\
    );
\destRowMin_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destRowMin_2,
      D => \rowIdx_reg_n_0_[5]\,
      Q => destRowMin(5),
      S => \destColMin[9]_i_1_n_0\
    );
\destRowMin_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destRowMin_2,
      D => \rowIdx_reg_n_0_[6]\,
      Q => destRowMin(6),
      S => \destColMin[9]_i_1_n_0\
    );
\destRowMin_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => destRowMin_2,
      D => \rowIdx_reg_n_0_[7]\,
      Q => destRowMin(7),
      S => \destColMin[9]_i_1_n_0\
    );
\destRowMin_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => destRowMin_2,
      D => \rowIdx_reg_n_0_[8]\,
      Q => destRowMin(8),
      R => \destColMin[9]_i_1_n_0\
    );
dest_col0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dest_col0_carry_n_0,
      CO(2) => dest_col0_carry_n_1,
      CO(1) => dest_col0_carry_n_2,
      CO(0) => dest_col0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => destColMax(3 downto 0),
      O(3 downto 1) => dest_col(2 downto 0),
      O(0) => NLW_dest_col0_carry_O_UNCONNECTED(0),
      S(3) => dest_col0_carry_i_1_n_0,
      S(2) => dest_col0_carry_i_2_n_0,
      S(1) => dest_col0_carry_i_3_n_0,
      S(0) => dest_col0_carry_i_4_n_0
    );
\dest_col0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dest_col0_carry_n_0,
      CO(3) => \dest_col0_carry__0_n_0\,
      CO(2) => \dest_col0_carry__0_n_1\,
      CO(1) => \dest_col0_carry__0_n_2\,
      CO(0) => \dest_col0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => destColMax(7 downto 4),
      O(3 downto 0) => dest_col(6 downto 3),
      S(3) => \dest_col0_carry__0_i_1_n_0\,
      S(2) => \dest_col0_carry__0_i_2_n_0\,
      S(1) => \dest_col0_carry__0_i_3_n_0\,
      S(0) => \dest_col0_carry__0_i_4_n_0\
    );
\dest_col0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMax(7),
      I1 => destColMin(7),
      O => \dest_col0_carry__0_i_1_n_0\
    );
\dest_col0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMax(6),
      I1 => destColMin(6),
      O => \dest_col0_carry__0_i_2_n_0\
    );
\dest_col0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMax(5),
      I1 => destColMin(5),
      O => \dest_col0_carry__0_i_3_n_0\
    );
\dest_col0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMax(4),
      I1 => destColMin(4),
      O => \dest_col0_carry__0_i_4_n_0\
    );
\dest_col0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dest_col0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_dest_col0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \dest_col0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => destColMax(8),
      O(3 downto 2) => \NLW_dest_col0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => dest_col(8 downto 7),
      S(3 downto 2) => B"00",
      S(1) => \dest_col0_carry__1_i_1_n_0\,
      S(0) => \dest_col0_carry__1_i_2_n_0\
    );
\dest_col0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMin(9),
      I1 => destColMax(9),
      O => \dest_col0_carry__1_i_1_n_0\
    );
\dest_col0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMax(8),
      I1 => destColMin(8),
      O => \dest_col0_carry__1_i_2_n_0\
    );
dest_col0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMax(3),
      I1 => destColMin(3),
      O => dest_col0_carry_i_1_n_0
    );
dest_col0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMax(2),
      I1 => destColMin(2),
      O => dest_col0_carry_i_2_n_0
    );
dest_col0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMax(1),
      I1 => destColMin(1),
      O => dest_col0_carry_i_3_n_0
    );
dest_col0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destColMax(0),
      I1 => destColMin(0),
      O => dest_col0_carry_i_4_n_0
    );
dest_row0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dest_row0_carry_n_0,
      CO(2) => dest_row0_carry_n_1,
      CO(1) => dest_row0_carry_n_2,
      CO(0) => dest_row0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => destRowMax(3 downto 0),
      O(3 downto 1) => dest_row(2 downto 0),
      O(0) => NLW_dest_row0_carry_O_UNCONNECTED(0),
      S(3) => dest_row0_carry_i_1_n_0,
      S(2) => dest_row0_carry_i_2_n_0,
      S(1) => dest_row0_carry_i_3_n_0,
      S(0) => dest_row0_carry_i_4_n_0
    );
\dest_row0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dest_row0_carry_n_0,
      CO(3) => \dest_row0_carry__0_n_0\,
      CO(2) => \dest_row0_carry__0_n_1\,
      CO(1) => \dest_row0_carry__0_n_2\,
      CO(0) => \dest_row0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => destRowMax(7 downto 4),
      O(3 downto 0) => dest_row(6 downto 3),
      S(3) => \dest_row0_carry__0_i_1_n_0\,
      S(2) => \dest_row0_carry__0_i_2_n_0\,
      S(1) => \dest_row0_carry__0_i_3_n_0\,
      S(0) => \dest_row0_carry__0_i_4_n_0\
    );
\dest_row0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destRowMax(7),
      I1 => destRowMin(7),
      O => \dest_row0_carry__0_i_1_n_0\
    );
\dest_row0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destRowMax(6),
      I1 => destRowMin(6),
      O => \dest_row0_carry__0_i_2_n_0\
    );
\dest_row0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destRowMax(5),
      I1 => destRowMin(5),
      O => \dest_row0_carry__0_i_3_n_0\
    );
\dest_row0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destRowMax(4),
      I1 => destRowMin(4),
      O => \dest_row0_carry__0_i_4_n_0\
    );
\dest_row0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dest_row0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_dest_row0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_dest_row0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => dest_row(7),
      S(3 downto 1) => B"000",
      S(0) => \dest_row0_carry__1_i_1_n_0\
    );
\dest_row0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destRowMin(8),
      I1 => destRowMax(8),
      O => \dest_row0_carry__1_i_1_n_0\
    );
dest_row0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destRowMax(3),
      I1 => destRowMin(3),
      O => dest_row0_carry_i_1_n_0
    );
dest_row0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destRowMax(2),
      I1 => destRowMin(2),
      O => dest_row0_carry_i_2_n_0
    );
dest_row0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destRowMax(1),
      I1 => destRowMin(1),
      O => dest_row0_carry_i_3_n_0
    );
dest_row0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => destRowMax(0),
      I1 => destRowMin(0),
      O => dest_row0_carry_i_4_n_0
    );
dest_start_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s_axis_valid,
      I1 => m_axis_ready,
      I2 => dest_start_valid_i_2_n_0,
      I3 => dest_start_valid_i_3_n_0,
      I4 => \^dest_start_valid\,
      I5 => axi_reset_n,
      O => dest_start_valid_i_1_n_0
    );
dest_start_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[7]\,
      I1 => \rowIdx_reg_n_0_[6]\,
      I2 => \rowIdx_reg_n_0_[5]\,
      I3 => \rowIdx_reg_n_0_[8]\,
      I4 => \rowIdx[8]_i_3_n_0\,
      I5 => \rowIdx_reg_n_0_[4]\,
      O => dest_start_valid_i_2_n_0
    );
dest_start_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => dest_start_valid_i_4_n_0,
      I1 => dest_start_valid_i_5_n_0,
      I2 => \colIdx_reg_n_0_[8]\,
      I3 => \colIdx_reg_n_0_[4]\,
      I4 => \colIdx_reg_n_0_[5]\,
      I5 => \colIdx_reg_n_0_[9]\,
      O => dest_start_valid_i_3_n_0
    );
dest_start_valid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \colIdx_reg_n_0_[3]\,
      I1 => \colIdx_reg_n_0_[0]\,
      I2 => \colIdx_reg_n_0_[1]\,
      I3 => \colIdx_reg_n_0_[2]\,
      O => dest_start_valid_i_4_n_0
    );
dest_start_valid_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \colIdx_reg_n_0_[6]\,
      I1 => \colIdx_reg_n_0_[7]\,
      O => dest_start_valid_i_5_n_0
    );
dest_start_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => dest_start_valid_i_1_n_0,
      Q => \^dest_start_valid\,
      R => '0'
    );
\grey__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \grey__1_carry_n_0\,
      CO(2) => \grey__1_carry_n_1\,
      CO(1) => \grey__1_carry_n_2\,
      CO(0) => \grey__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \grey__1_carry_i_1_n_0\,
      DI(2) => s_axis_data(8),
      DI(1) => s_axis_data(0),
      DI(0) => '0',
      O(3 downto 0) => \NLW_grey__1_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \grey__1_carry_i_2_n_0\,
      S(2) => \grey__1_carry_i_3_n_0\,
      S(1) => \grey__1_carry_i_4_n_0\,
      S(0) => s_axis_data(4)
    );
\grey__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \grey__1_carry_n_0\,
      CO(3) => \NLW_grey__1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \grey__1_carry__0_n_1\,
      CO(1) => \grey__1_carry__0_n_2\,
      CO(0) => \grey__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \grey__1_carry__0_i_1_n_0\,
      DI(1) => \grey__1_carry__0_i_2_n_0\,
      DI(0) => \grey__1_carry__0_i_3_n_0\,
      O(3 downto 1) => grey(7 downto 5),
      O(0) => \NLW_grey__1_carry__0_O_UNCONNECTED\(0),
      S(3) => g_weighted(7),
      S(2) => \grey__1_carry__0_i_5_n_0\,
      S(1) => \grey__1_carry__0_i_6_n_0\,
      S(0) => \grey__1_carry__0_i_7_n_0\
    );
\grey__1_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => s_axis_data(11),
      I1 => s_axis_data(7),
      I2 => s_axis_data(4),
      I3 => s_axis_data(5),
      I4 => s_axis_data(6),
      O => \grey__1_carry__0_i_1_n_0\
    );
\grey__1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFEA2A80"
    )
        port map (
      I0 => s_axis_data(3),
      I1 => s_axis_data(4),
      I2 => s_axis_data(7),
      I3 => s_axis_data(5),
      I4 => s_axis_data(10),
      O => \grey__1_carry__0_i_2_n_0\
    );
\grey__1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8EE8"
    )
        port map (
      I0 => s_axis_data(9),
      I1 => s_axis_data(2),
      I2 => s_axis_data(7),
      I3 => s_axis_data(4),
      O => \grey__1_carry__0_i_3_n_0\
    );
\grey__1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axis_data(6),
      I1 => s_axis_data(5),
      I2 => s_axis_data(4),
      I3 => s_axis_data(7),
      O => g_weighted(7)
    );
\grey__1_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17778888"
    )
        port map (
      I0 => s_axis_data(11),
      I1 => s_axis_data(6),
      I2 => s_axis_data(5),
      I3 => s_axis_data(4),
      I4 => s_axis_data(7),
      O => \grey__1_carry__0_i_5_n_0\
    );
\grey__1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999996666666"
    )
        port map (
      I0 => \grey__1_carry__0_i_2_n_0\,
      I1 => s_axis_data(6),
      I2 => s_axis_data(5),
      I3 => s_axis_data(4),
      I4 => s_axis_data(7),
      I5 => s_axis_data(11),
      O => \grey__1_carry__0_i_6_n_0\
    );
\grey__1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666699969999666"
    )
        port map (
      I0 => \grey__1_carry__0_i_3_n_0\,
      I1 => s_axis_data(3),
      I2 => s_axis_data(4),
      I3 => s_axis_data(7),
      I4 => s_axis_data(5),
      I5 => s_axis_data(10),
      O => \grey__1_carry__0_i_7_n_0\
    );
\grey__1_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_data(9),
      I1 => s_axis_data(4),
      I2 => s_axis_data(7),
      I3 => s_axis_data(2),
      O => \grey__1_carry_i_1_n_0\
    );
\grey__1_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => s_axis_data(2),
      I1 => s_axis_data(7),
      I2 => s_axis_data(4),
      I3 => s_axis_data(9),
      I4 => s_axis_data(6),
      I5 => s_axis_data(1),
      O => \grey__1_carry_i_2_n_0\
    );
\grey__1_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_data(6),
      I1 => s_axis_data(1),
      I2 => s_axis_data(8),
      O => \grey__1_carry_i_3_n_0\
    );
\grey__1_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_data(0),
      I1 => s_axis_data(5),
      O => \grey__1_carry_i_4_n_0\
    );
\m_axis_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFFFFFEA000000"
    )
        port map (
      I0 => grey(7),
      I1 => grey(5),
      I2 => grey(6),
      I3 => m_axis_ready,
      I4 => s_axis_valid,
      I5 => \^m_axis_data\(0),
      O => \m_axis_data[0]_i_1_n_0\
    );
\m_axis_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => \m_axis_data[0]_i_1_n_0\,
      Q => \^m_axis_data\(0),
      R => '0'
    );
m_axis_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => '1',
      D => s_axis_valid,
      Q => m_axis_valid,
      R => '0'
    );
\rowIdx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[0]\,
      O => rowIdx(0)
    );
\rowIdx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[0]\,
      I1 => \rowIdx_reg_n_0_[1]\,
      O => rowIdx(1)
    );
\rowIdx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[2]\,
      I1 => \rowIdx_reg_n_0_[0]\,
      I2 => \rowIdx_reg_n_0_[1]\,
      O => rowIdx(2)
    );
\rowIdx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[3]\,
      I1 => \rowIdx_reg_n_0_[0]\,
      I2 => \rowIdx_reg_n_0_[2]\,
      I3 => \rowIdx_reg_n_0_[1]\,
      O => rowIdx(3)
    );
\rowIdx[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rowIdx[7]_i_2_n_0\,
      I1 => \rowIdx_reg_n_0_[1]\,
      I2 => \rowIdx_reg_n_0_[2]\,
      I3 => \rowIdx_reg_n_0_[0]\,
      I4 => \rowIdx_reg_n_0_[3]\,
      I5 => \rowIdx_reg_n_0_[4]\,
      O => rowIdx(4)
    );
\rowIdx[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFBF00FF0000"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[8]\,
      I1 => \rowIdx_reg_n_0_[6]\,
      I2 => \rowIdx_reg_n_0_[7]\,
      I3 => \rowIdx[8]_i_3_n_0\,
      I4 => \rowIdx_reg_n_0_[4]\,
      I5 => \rowIdx_reg_n_0_[5]\,
      O => rowIdx(5)
    );
\rowIdx[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \rowIdx[7]_i_2_n_0\,
      I1 => \rowIdx_reg_n_0_[5]\,
      I2 => \rowIdx_reg_n_0_[4]\,
      I3 => \rowIdx[8]_i_3_n_0\,
      I4 => \rowIdx_reg_n_0_[6]\,
      O => rowIdx(6)
    );
\rowIdx[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \rowIdx[7]_i_2_n_0\,
      I1 => \rowIdx[8]_i_3_n_0\,
      I2 => \rowIdx_reg_n_0_[4]\,
      I3 => \rowIdx_reg_n_0_[5]\,
      I4 => \rowIdx_reg_n_0_[6]\,
      I5 => \rowIdx_reg_n_0_[7]\,
      O => rowIdx(7)
    );
\rowIdx[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[4]\,
      I1 => \rowIdx[7]_i_3_n_0\,
      I2 => \rowIdx_reg_n_0_[3]\,
      I3 => \rowIdx_reg_n_0_[0]\,
      I4 => \rowIdx_reg_n_0_[2]\,
      I5 => \rowIdx_reg_n_0_[8]\,
      O => \rowIdx[7]_i_2_n_0\
    );
\rowIdx[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[6]\,
      I1 => \rowIdx_reg_n_0_[5]\,
      I2 => \rowIdx_reg_n_0_[7]\,
      I3 => \rowIdx_reg_n_0_[1]\,
      O => \rowIdx[7]_i_3_n_0\
    );
\rowIdx[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_valid,
      I1 => m_axis_ready,
      I2 => dest_start_valid_i_3_n_0,
      O => \rowIdx[8]_i_1_n_0\
    );
\rowIdx[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[8]\,
      I1 => \rowIdx[8]_i_3_n_0\,
      I2 => \rowIdx_reg_n_0_[4]\,
      I3 => \rowIdx_reg_n_0_[7]\,
      I4 => \rowIdx_reg_n_0_[6]\,
      I5 => \rowIdx_reg_n_0_[5]\,
      O => rowIdx(8)
    );
\rowIdx[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[1]\,
      I1 => \rowIdx_reg_n_0_[2]\,
      I2 => \rowIdx_reg_n_0_[0]\,
      I3 => \rowIdx_reg_n_0_[3]\,
      O => \rowIdx[8]_i_3_n_0\
    );
\rowIdx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => \rowIdx[8]_i_1_n_0\,
      D => rowIdx(0),
      Q => \rowIdx_reg_n_0_[0]\,
      R => \colIdx[9]_i_1_n_0\
    );
\rowIdx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => \rowIdx[8]_i_1_n_0\,
      D => rowIdx(1),
      Q => \rowIdx_reg_n_0_[1]\,
      R => \colIdx[9]_i_1_n_0\
    );
\rowIdx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => \rowIdx[8]_i_1_n_0\,
      D => rowIdx(2),
      Q => \rowIdx_reg_n_0_[2]\,
      R => \colIdx[9]_i_1_n_0\
    );
\rowIdx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => \rowIdx[8]_i_1_n_0\,
      D => rowIdx(3),
      Q => \rowIdx_reg_n_0_[3]\,
      R => \colIdx[9]_i_1_n_0\
    );
\rowIdx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => \rowIdx[8]_i_1_n_0\,
      D => rowIdx(4),
      Q => \rowIdx_reg_n_0_[4]\,
      R => \colIdx[9]_i_1_n_0\
    );
\rowIdx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => \rowIdx[8]_i_1_n_0\,
      D => rowIdx(5),
      Q => \rowIdx_reg_n_0_[5]\,
      R => \colIdx[9]_i_1_n_0\
    );
\rowIdx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => \rowIdx[8]_i_1_n_0\,
      D => rowIdx(6),
      Q => \rowIdx_reg_n_0_[6]\,
      R => \colIdx[9]_i_1_n_0\
    );
\rowIdx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => \rowIdx[8]_i_1_n_0\,
      D => rowIdx(7),
      Q => \rowIdx_reg_n_0_[7]\,
      R => \colIdx[9]_i_1_n_0\
    );
\rowIdx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => \rowIdx[8]_i_1_n_0\,
      D => rowIdx(8),
      Q => \rowIdx_reg_n_0_[8]\,
      R => \colIdx[9]_i_1_n_0\
    );
startColMax0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => startColMax0_carry_n_0,
      CO(2) => startColMax0_carry_n_1,
      CO(1) => startColMax0_carry_n_2,
      CO(0) => startColMax0_carry_n_3,
      CYINIT => '0',
      DI(3) => startColMax0_carry_i_1_n_0,
      DI(2) => startColMax0_carry_i_2_n_0,
      DI(1) => startColMax0_carry_i_3_n_0,
      DI(0) => startColMax0_carry_i_4_n_0,
      O(3 downto 0) => NLW_startColMax0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => startColMax0_carry_i_5_n_0,
      S(2) => startColMax0_carry_i_6_n_0,
      S(1) => startColMax0_carry_i_7_n_0,
      S(0) => startColMax0_carry_i_8_n_0
    );
\startColMax0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => startColMax0_carry_n_0,
      CO(3 downto 1) => \NLW_startColMax0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \startColMax0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \startColMax0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_startColMax0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \startColMax0_carry__0_i_2_n_0\
    );
\startColMax0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[9]\,
      I1 => startColMax(9),
      I2 => \colIdx_reg_n_0_[8]\,
      I3 => startColMax(8),
      O => \startColMax0_carry__0_i_1_n_0\
    );
\startColMax0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMax(9),
      I1 => \colIdx_reg_n_0_[9]\,
      I2 => startColMax(8),
      I3 => \colIdx_reg_n_0_[8]\,
      O => \startColMax0_carry__0_i_2_n_0\
    );
startColMax0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[7]\,
      I1 => startColMax(7),
      I2 => \colIdx_reg_n_0_[6]\,
      I3 => startColMax(6),
      O => startColMax0_carry_i_1_n_0
    );
startColMax0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[5]\,
      I1 => startColMax(5),
      I2 => \colIdx_reg_n_0_[4]\,
      I3 => startColMax(4),
      O => startColMax0_carry_i_2_n_0
    );
startColMax0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[3]\,
      I1 => startColMax(3),
      I2 => \colIdx_reg_n_0_[2]\,
      I3 => startColMax(2),
      O => startColMax0_carry_i_3_n_0
    );
startColMax0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \colIdx_reg_n_0_[1]\,
      I1 => startColMax(1),
      I2 => \colIdx_reg_n_0_[0]\,
      I3 => startColMax(0),
      O => startColMax0_carry_i_4_n_0
    );
startColMax0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMax(7),
      I1 => \colIdx_reg_n_0_[7]\,
      I2 => startColMax(6),
      I3 => \colIdx_reg_n_0_[6]\,
      O => startColMax0_carry_i_5_n_0
    );
startColMax0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMax(5),
      I1 => \colIdx_reg_n_0_[5]\,
      I2 => startColMax(4),
      I3 => \colIdx_reg_n_0_[4]\,
      O => startColMax0_carry_i_6_n_0
    );
startColMax0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMax(3),
      I1 => \colIdx_reg_n_0_[3]\,
      I2 => startColMax(2),
      I3 => \colIdx_reg_n_0_[2]\,
      O => startColMax0_carry_i_7_n_0
    );
startColMax0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMax(1),
      I1 => \colIdx_reg_n_0_[1]\,
      I2 => startColMax(0),
      I3 => \colIdx_reg_n_0_[0]\,
      O => startColMax0_carry_i_8_n_0
    );
\startColMax[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \destColMin[9]_i_6_n_0\,
      I1 => colIdx0,
      I2 => \startColMax0_carry__0_n_3\,
      I3 => \destColMin[9]_i_4_n_0\,
      I4 => \startColMin[9]_i_2_n_0\,
      I5 => \destColMin[9]_i_5_n_0\,
      O => startColMax_6
    );
\startColMax_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[0]\,
      Q => startColMax(0),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMax_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[1]\,
      Q => startColMax(1),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMax_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[2]\,
      Q => startColMax(2),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMax_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[3]\,
      Q => startColMax(3),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMax_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[4]\,
      Q => startColMax(4),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMax_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[5]\,
      Q => startColMax(5),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMax_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[6]\,
      Q => startColMax(6),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMax_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[7]\,
      Q => startColMax(7),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMax_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[8]\,
      Q => startColMax(8),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMax_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMax_6,
      D => \colIdx_reg_n_0_[9]\,
      Q => startColMax(9),
      R => \destColMin[9]_i_1_n_0\
    );
startColMin0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => startColMin0_carry_n_0,
      CO(2) => startColMin0_carry_n_1,
      CO(1) => startColMin0_carry_n_2,
      CO(0) => startColMin0_carry_n_3,
      CYINIT => '0',
      DI(3) => startColMin0_carry_i_1_n_0,
      DI(2) => startColMin0_carry_i_2_n_0,
      DI(1) => startColMin0_carry_i_3_n_0,
      DI(0) => startColMin0_carry_i_4_n_0,
      O(3 downto 0) => NLW_startColMin0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => startColMin0_carry_i_5_n_0,
      S(2) => startColMin0_carry_i_6_n_0,
      S(1) => startColMin0_carry_i_7_n_0,
      S(0) => startColMin0_carry_i_8_n_0
    );
\startColMin0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => startColMin0_carry_n_0,
      CO(3 downto 1) => \NLW_startColMin0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \startColMin0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \startColMin0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_startColMin0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \startColMin0_carry__0_i_2_n_0\
    );
\startColMin0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \colIdx_reg_n_0_[9]\,
      I1 => startColMin(9),
      I2 => startColMin(8),
      I3 => \colIdx_reg_n_0_[8]\,
      O => \startColMin0_carry__0_i_1_n_0\
    );
\startColMin0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMin(9),
      I1 => \colIdx_reg_n_0_[9]\,
      I2 => startColMin(8),
      I3 => \colIdx_reg_n_0_[8]\,
      O => \startColMin0_carry__0_i_2_n_0\
    );
startColMin0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \colIdx_reg_n_0_[7]\,
      I1 => startColMin(7),
      I2 => startColMin(6),
      I3 => \colIdx_reg_n_0_[6]\,
      O => startColMin0_carry_i_1_n_0
    );
startColMin0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \colIdx_reg_n_0_[5]\,
      I1 => startColMin(5),
      I2 => startColMin(4),
      I3 => \colIdx_reg_n_0_[4]\,
      O => startColMin0_carry_i_2_n_0
    );
startColMin0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \colIdx_reg_n_0_[3]\,
      I1 => startColMin(3),
      I2 => startColMin(2),
      I3 => \colIdx_reg_n_0_[2]\,
      O => startColMin0_carry_i_3_n_0
    );
startColMin0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \colIdx_reg_n_0_[1]\,
      I1 => startColMin(1),
      I2 => startColMin(0),
      I3 => \colIdx_reg_n_0_[0]\,
      O => startColMin0_carry_i_4_n_0
    );
startColMin0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMin(7),
      I1 => \colIdx_reg_n_0_[7]\,
      I2 => startColMin(6),
      I3 => \colIdx_reg_n_0_[6]\,
      O => startColMin0_carry_i_5_n_0
    );
startColMin0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMin(5),
      I1 => \colIdx_reg_n_0_[5]\,
      I2 => startColMin(4),
      I3 => \colIdx_reg_n_0_[4]\,
      O => startColMin0_carry_i_6_n_0
    );
startColMin0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMin(3),
      I1 => \colIdx_reg_n_0_[3]\,
      I2 => startColMin(2),
      I3 => \colIdx_reg_n_0_[2]\,
      O => startColMin0_carry_i_7_n_0
    );
startColMin0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startColMin(1),
      I1 => \colIdx_reg_n_0_[1]\,
      I2 => startColMin(0),
      I3 => \colIdx_reg_n_0_[0]\,
      O => startColMin0_carry_i_8_n_0
    );
\startColMin[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \destColMin[9]_i_6_n_0\,
      I1 => colIdx0,
      I2 => \startColMin0_carry__0_n_3\,
      I3 => \destColMin[9]_i_4_n_0\,
      I4 => \startColMin[9]_i_2_n_0\,
      I5 => \destColMin[9]_i_5_n_0\,
      O => startColMin_7
    );
\startColMin[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => s_axis_data(5),
      I1 => s_axis_data(11),
      I2 => s_axis_data(1),
      I3 => s_axis_data(10),
      I4 => \startColMin[9]_i_3_n_0\,
      O => \startColMin[9]_i_2_n_0\
    );
\startColMin[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => s_axis_data(8),
      I1 => s_axis_data(9),
      I2 => s_axis_data(6),
      I3 => s_axis_data(3),
      I4 => s_axis_data(2),
      I5 => s_axis_data(7),
      O => \startColMin[9]_i_3_n_0\
    );
\startColMin_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[0]\,
      Q => startColMin(0),
      S => \destColMin[9]_i_1_n_0\
    );
\startColMin_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[1]\,
      Q => startColMin(1),
      S => \destColMin[9]_i_1_n_0\
    );
\startColMin_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[2]\,
      Q => startColMin(2),
      S => \destColMin[9]_i_1_n_0\
    );
\startColMin_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[3]\,
      Q => startColMin(3),
      S => \destColMin[9]_i_1_n_0\
    );
\startColMin_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[4]\,
      Q => startColMin(4),
      S => \destColMin[9]_i_1_n_0\
    );
\startColMin_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[5]\,
      Q => startColMin(5),
      S => \destColMin[9]_i_1_n_0\
    );
\startColMin_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[6]\,
      Q => startColMin(6),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMin_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[7]\,
      Q => startColMin(7),
      R => \destColMin[9]_i_1_n_0\
    );
\startColMin_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[8]\,
      Q => startColMin(8),
      S => \destColMin[9]_i_1_n_0\
    );
\startColMin_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startColMin_7,
      D => \colIdx_reg_n_0_[9]\,
      Q => startColMin(9),
      R => \destColMin[9]_i_1_n_0\
    );
startRowMax0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => startRowMax0_carry_n_0,
      CO(2) => startRowMax0_carry_n_1,
      CO(1) => startRowMax0_carry_n_2,
      CO(0) => startRowMax0_carry_n_3,
      CYINIT => '0',
      DI(3) => startRowMax0_carry_i_1_n_0,
      DI(2) => startRowMax0_carry_i_2_n_0,
      DI(1) => startRowMax0_carry_i_3_n_0,
      DI(0) => startRowMax0_carry_i_4_n_0,
      O(3 downto 0) => NLW_startRowMax0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => startRowMax0_carry_i_5_n_0,
      S(2) => startRowMax0_carry_i_6_n_0,
      S(1) => startRowMax0_carry_i_7_n_0,
      S(0) => startRowMax0_carry_i_8_n_0
    );
\startRowMax0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => startRowMax0_carry_n_0,
      CO(3 downto 1) => \NLW_startRowMax0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \startRowMax0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \startRowMax0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_startRowMax0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \startRowMax0_carry__0_i_2_n_0\
    );
\startRowMax0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[8]\,
      I1 => startRowMax(8),
      O => \startRowMax0_carry__0_i_1_n_0\
    );
\startRowMax0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => startRowMax(8),
      I1 => \rowIdx_reg_n_0_[8]\,
      O => \startRowMax0_carry__0_i_2_n_0\
    );
startRowMax0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[7]\,
      I1 => startRowMax(7),
      I2 => \rowIdx_reg_n_0_[6]\,
      I3 => startRowMax(6),
      O => startRowMax0_carry_i_1_n_0
    );
startRowMax0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[5]\,
      I1 => startRowMax(5),
      I2 => \rowIdx_reg_n_0_[4]\,
      I3 => startRowMax(4),
      O => startRowMax0_carry_i_2_n_0
    );
startRowMax0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[3]\,
      I1 => startRowMax(3),
      I2 => \rowIdx_reg_n_0_[2]\,
      I3 => startRowMax(2),
      O => startRowMax0_carry_i_3_n_0
    );
startRowMax0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[1]\,
      I1 => startRowMax(1),
      I2 => \rowIdx_reg_n_0_[0]\,
      I3 => startRowMax(0),
      O => startRowMax0_carry_i_4_n_0
    );
startRowMax0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startRowMax(7),
      I1 => \rowIdx_reg_n_0_[7]\,
      I2 => startRowMax(6),
      I3 => \rowIdx_reg_n_0_[6]\,
      O => startRowMax0_carry_i_5_n_0
    );
startRowMax0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startRowMax(5),
      I1 => \rowIdx_reg_n_0_[5]\,
      I2 => startRowMax(4),
      I3 => \rowIdx_reg_n_0_[4]\,
      O => startRowMax0_carry_i_6_n_0
    );
startRowMax0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startRowMax(3),
      I1 => \rowIdx_reg_n_0_[3]\,
      I2 => startRowMax(2),
      I3 => \rowIdx_reg_n_0_[2]\,
      O => startRowMax0_carry_i_7_n_0
    );
startRowMax0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startRowMax(1),
      I1 => \rowIdx_reg_n_0_[1]\,
      I2 => startRowMax(0),
      I3 => \rowIdx_reg_n_0_[0]\,
      O => startRowMax0_carry_i_8_n_0
    );
\startRowMax[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \destColMin[9]_i_6_n_0\,
      I1 => colIdx0,
      I2 => \startRowMax0_carry__0_n_3\,
      I3 => \destColMin[9]_i_4_n_0\,
      I4 => \startColMin[9]_i_2_n_0\,
      I5 => \destColMin[9]_i_5_n_0\,
      O => startRowMax_4
    );
\startRowMax_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMax_4,
      D => \rowIdx_reg_n_0_[0]\,
      Q => startRowMax(0),
      R => \destColMin[9]_i_1_n_0\
    );
\startRowMax_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMax_4,
      D => \rowIdx_reg_n_0_[1]\,
      Q => startRowMax(1),
      R => \destColMin[9]_i_1_n_0\
    );
\startRowMax_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMax_4,
      D => \rowIdx_reg_n_0_[2]\,
      Q => startRowMax(2),
      R => \destColMin[9]_i_1_n_0\
    );
\startRowMax_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMax_4,
      D => \rowIdx_reg_n_0_[3]\,
      Q => startRowMax(3),
      R => \destColMin[9]_i_1_n_0\
    );
\startRowMax_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMax_4,
      D => \rowIdx_reg_n_0_[4]\,
      Q => startRowMax(4),
      R => \destColMin[9]_i_1_n_0\
    );
\startRowMax_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMax_4,
      D => \rowIdx_reg_n_0_[5]\,
      Q => startRowMax(5),
      R => \destColMin[9]_i_1_n_0\
    );
\startRowMax_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMax_4,
      D => \rowIdx_reg_n_0_[6]\,
      Q => startRowMax(6),
      R => \destColMin[9]_i_1_n_0\
    );
\startRowMax_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMax_4,
      D => \rowIdx_reg_n_0_[7]\,
      Q => startRowMax(7),
      R => \destColMin[9]_i_1_n_0\
    );
\startRowMax_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMax_4,
      D => \rowIdx_reg_n_0_[8]\,
      Q => startRowMax(8),
      R => \destColMin[9]_i_1_n_0\
    );
startRowMin0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => startRowMin0_carry_n_0,
      CO(2) => startRowMin0_carry_n_1,
      CO(1) => startRowMin0_carry_n_2,
      CO(0) => startRowMin0_carry_n_3,
      CYINIT => '0',
      DI(3) => startRowMin0_carry_i_1_n_0,
      DI(2) => startRowMin0_carry_i_2_n_0,
      DI(1) => startRowMin0_carry_i_3_n_0,
      DI(0) => startRowMin0_carry_i_4_n_0,
      O(3 downto 0) => NLW_startRowMin0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => startRowMin0_carry_i_5_n_0,
      S(2) => startRowMin0_carry_i_6_n_0,
      S(1) => startRowMin0_carry_i_7_n_0,
      S(0) => startRowMin0_carry_i_8_n_0
    );
\startRowMin0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => startRowMin0_carry_n_0,
      CO(3 downto 1) => \NLW_startRowMin0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \startRowMin0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \startRowMin0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_startRowMin0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \startRowMin0_carry__0_i_2_n_0\
    );
\startRowMin0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => startRowMin(8),
      I1 => \rowIdx_reg_n_0_[8]\,
      O => \startRowMin0_carry__0_i_1_n_0\
    );
\startRowMin0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[8]\,
      I1 => startRowMin(8),
      O => \startRowMin0_carry__0_i_2_n_0\
    );
startRowMin0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[7]\,
      I1 => startRowMin(7),
      I2 => startRowMin(6),
      I3 => \rowIdx_reg_n_0_[6]\,
      O => startRowMin0_carry_i_1_n_0
    );
startRowMin0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[5]\,
      I1 => startRowMin(5),
      I2 => startRowMin(4),
      I3 => \rowIdx_reg_n_0_[4]\,
      O => startRowMin0_carry_i_2_n_0
    );
startRowMin0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[3]\,
      I1 => startRowMin(3),
      I2 => startRowMin(2),
      I3 => \rowIdx_reg_n_0_[2]\,
      O => startRowMin0_carry_i_3_n_0
    );
startRowMin0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \rowIdx_reg_n_0_[1]\,
      I1 => startRowMin(1),
      I2 => startRowMin(0),
      I3 => \rowIdx_reg_n_0_[0]\,
      O => startRowMin0_carry_i_4_n_0
    );
startRowMin0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startRowMin(7),
      I1 => \rowIdx_reg_n_0_[7]\,
      I2 => startRowMin(6),
      I3 => \rowIdx_reg_n_0_[6]\,
      O => startRowMin0_carry_i_5_n_0
    );
startRowMin0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startRowMin(5),
      I1 => \rowIdx_reg_n_0_[5]\,
      I2 => startRowMin(4),
      I3 => \rowIdx_reg_n_0_[4]\,
      O => startRowMin0_carry_i_6_n_0
    );
startRowMin0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startRowMin(3),
      I1 => \rowIdx_reg_n_0_[3]\,
      I2 => startRowMin(2),
      I3 => \rowIdx_reg_n_0_[2]\,
      O => startRowMin0_carry_i_7_n_0
    );
startRowMin0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => startRowMin(1),
      I1 => \rowIdx_reg_n_0_[1]\,
      I2 => startRowMin(0),
      I3 => \rowIdx_reg_n_0_[0]\,
      O => startRowMin0_carry_i_8_n_0
    );
\startRowMin[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \destColMin[9]_i_6_n_0\,
      I1 => colIdx0,
      I2 => \startRowMin0_carry__0_n_3\,
      I3 => \destColMin[9]_i_4_n_0\,
      I4 => \startColMin[9]_i_2_n_0\,
      I5 => \destColMin[9]_i_5_n_0\,
      O => startRowMin_5
    );
\startRowMin_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startRowMin_5,
      D => \rowIdx_reg_n_0_[0]\,
      Q => startRowMin(0),
      S => \destColMin[9]_i_1_n_0\
    );
\startRowMin_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startRowMin_5,
      D => \rowIdx_reg_n_0_[1]\,
      Q => startRowMin(1),
      S => \destColMin[9]_i_1_n_0\
    );
\startRowMin_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startRowMin_5,
      D => \rowIdx_reg_n_0_[2]\,
      Q => startRowMin(2),
      S => \destColMin[9]_i_1_n_0\
    );
\startRowMin_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startRowMin_5,
      D => \rowIdx_reg_n_0_[3]\,
      Q => startRowMin(3),
      S => \destColMin[9]_i_1_n_0\
    );
\startRowMin_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMin_5,
      D => \rowIdx_reg_n_0_[4]\,
      Q => startRowMin(4),
      R => \destColMin[9]_i_1_n_0\
    );
\startRowMin_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startRowMin_5,
      D => \rowIdx_reg_n_0_[5]\,
      Q => startRowMin(5),
      S => \destColMin[9]_i_1_n_0\
    );
\startRowMin_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startRowMin_5,
      D => \rowIdx_reg_n_0_[6]\,
      Q => startRowMin(6),
      S => \destColMin[9]_i_1_n_0\
    );
\startRowMin_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => axi_clk,
      CE => startRowMin_5,
      D => \rowIdx_reg_n_0_[7]\,
      Q => startRowMin(7),
      S => \destColMin[9]_i_1_n_0\
    );
\startRowMin_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_clk,
      CE => startRowMin_5,
      D => \rowIdx_reg_n_0_[8]\,
      Q => startRowMin(8),
      R => \destColMin[9]_i_1_n_0\
    );
start_col0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => start_col0_carry_n_0,
      CO(2) => start_col0_carry_n_1,
      CO(1) => start_col0_carry_n_2,
      CO(0) => start_col0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => startColMax(3 downto 0),
      O(3 downto 1) => start_col(2 downto 0),
      O(0) => NLW_start_col0_carry_O_UNCONNECTED(0),
      S(3) => start_col0_carry_i_1_n_0,
      S(2) => start_col0_carry_i_2_n_0,
      S(1) => start_col0_carry_i_3_n_0,
      S(0) => start_col0_carry_i_4_n_0
    );
\start_col0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => start_col0_carry_n_0,
      CO(3) => \start_col0_carry__0_n_0\,
      CO(2) => \start_col0_carry__0_n_1\,
      CO(1) => \start_col0_carry__0_n_2\,
      CO(0) => \start_col0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => startColMax(7 downto 4),
      O(3 downto 0) => start_col(6 downto 3),
      S(3) => \start_col0_carry__0_i_1_n_0\,
      S(2) => \start_col0_carry__0_i_2_n_0\,
      S(1) => \start_col0_carry__0_i_3_n_0\,
      S(0) => \start_col0_carry__0_i_4_n_0\
    );
\start_col0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMax(7),
      I1 => startColMin(7),
      O => \start_col0_carry__0_i_1_n_0\
    );
\start_col0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMax(6),
      I1 => startColMin(6),
      O => \start_col0_carry__0_i_2_n_0\
    );
\start_col0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMax(5),
      I1 => startColMin(5),
      O => \start_col0_carry__0_i_3_n_0\
    );
\start_col0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMax(4),
      I1 => startColMin(4),
      O => \start_col0_carry__0_i_4_n_0\
    );
\start_col0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_col0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_start_col0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \start_col0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => startColMax(8),
      O(3 downto 2) => \NLW_start_col0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => start_col(8 downto 7),
      S(3 downto 2) => B"00",
      S(1) => \start_col0_carry__1_i_1_n_0\,
      S(0) => \start_col0_carry__1_i_2_n_0\
    );
\start_col0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMin(9),
      I1 => startColMax(9),
      O => \start_col0_carry__1_i_1_n_0\
    );
\start_col0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMax(8),
      I1 => startColMin(8),
      O => \start_col0_carry__1_i_2_n_0\
    );
start_col0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMax(3),
      I1 => startColMin(3),
      O => start_col0_carry_i_1_n_0
    );
start_col0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMax(2),
      I1 => startColMin(2),
      O => start_col0_carry_i_2_n_0
    );
start_col0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMax(1),
      I1 => startColMin(1),
      O => start_col0_carry_i_3_n_0
    );
start_col0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startColMax(0),
      I1 => startColMin(0),
      O => start_col0_carry_i_4_n_0
    );
start_row0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => start_row0_carry_n_0,
      CO(2) => start_row0_carry_n_1,
      CO(1) => start_row0_carry_n_2,
      CO(0) => start_row0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => startRowMax(3 downto 0),
      O(3 downto 1) => start_row(2 downto 0),
      O(0) => NLW_start_row0_carry_O_UNCONNECTED(0),
      S(3) => start_row0_carry_i_1_n_0,
      S(2) => start_row0_carry_i_2_n_0,
      S(1) => start_row0_carry_i_3_n_0,
      S(0) => start_row0_carry_i_4_n_0
    );
\start_row0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => start_row0_carry_n_0,
      CO(3) => \start_row0_carry__0_n_0\,
      CO(2) => \start_row0_carry__0_n_1\,
      CO(1) => \start_row0_carry__0_n_2\,
      CO(0) => \start_row0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => startRowMax(7 downto 4),
      O(3 downto 0) => start_row(6 downto 3),
      S(3) => \start_row0_carry__0_i_1_n_0\,
      S(2) => \start_row0_carry__0_i_2_n_0\,
      S(1) => \start_row0_carry__0_i_3_n_0\,
      S(0) => \start_row0_carry__0_i_4_n_0\
    );
\start_row0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startRowMax(7),
      I1 => startRowMin(7),
      O => \start_row0_carry__0_i_1_n_0\
    );
\start_row0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startRowMax(6),
      I1 => startRowMin(6),
      O => \start_row0_carry__0_i_2_n_0\
    );
\start_row0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startRowMax(5),
      I1 => startRowMin(5),
      O => \start_row0_carry__0_i_3_n_0\
    );
\start_row0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startRowMax(4),
      I1 => startRowMin(4),
      O => \start_row0_carry__0_i_4_n_0\
    );
\start_row0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_row0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_start_row0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_start_row0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => start_row(7),
      S(3 downto 1) => B"000",
      S(0) => \start_row0_carry__1_i_1_n_0\
    );
\start_row0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startRowMin(8),
      I1 => startRowMax(8),
      O => \start_row0_carry__1_i_1_n_0\
    );
start_row0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startRowMax(3),
      I1 => startRowMin(3),
      O => start_row0_carry_i_1_n_0
    );
start_row0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startRowMax(2),
      I1 => startRowMin(2),
      O => start_row0_carry_i_2_n_0
    );
start_row0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startRowMax(1),
      I1 => startRowMin(1),
      O => start_row0_carry_i_3_n_0
    );
start_row0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => startRowMax(0),
      I1 => startRowMin(0),
      O => start_row0_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity midterm_demo_greyscaleThreshold3_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of midterm_demo_greyscaleThreshold3_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of midterm_demo_greyscaleThreshold3_0_0 : entity is "midterm_demo_greyscaleThreshold3_0_0,greyscaleThreshold3,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of midterm_demo_greyscaleThreshold3_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of midterm_demo_greyscaleThreshold3_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of midterm_demo_greyscaleThreshold3_0_0 : entity is "greyscaleThreshold3,Vivado 2018.3";
end midterm_demo_greyscaleThreshold3_0_0;

architecture STRUCTURE of midterm_demo_greyscaleThreshold3_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^dest_col\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^dest_row\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axis_data\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axis_ready\ : STD_LOGIC;
  signal \^start_col\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^start_row\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_clk : signal is "xilinx.com:signal:clock:1.0 axi_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_clk : signal is "XIL_INTERFACENAME axi_clk, ASSOCIATED_BUSIF m_axis:s_axis, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_ready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_ready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_valid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_ready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_ready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_valid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_data : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_data : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  \^m_axis_ready\ <= m_axis_ready;
  dest_col(9) <= \<const0>\;
  dest_col(8 downto 0) <= \^dest_col\(8 downto 0);
  dest_row(8) <= \<const0>\;
  dest_row(7 downto 0) <= \^dest_row\(7 downto 0);
  m_axis_data(7) <= \<const0>\;
  m_axis_data(6) <= \<const0>\;
  m_axis_data(5) <= \<const0>\;
  m_axis_data(4) <= \<const0>\;
  m_axis_data(3) <= \<const0>\;
  m_axis_data(2) <= \<const0>\;
  m_axis_data(1) <= \<const0>\;
  m_axis_data(0) <= \^m_axis_data\(0);
  s_axis_ready <= \^m_axis_ready\;
  start_col(9) <= \<const0>\;
  start_col(8 downto 0) <= \^start_col\(8 downto 0);
  start_row(8) <= \<const0>\;
  start_row(7 downto 0) <= \^start_row\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.midterm_demo_greyscaleThreshold3_0_0_greyscaleThreshold3
     port map (
      axi_clk => axi_clk,
      axi_reset_n => axi_reset_n,
      dest_col(8 downto 0) => \^dest_col\(8 downto 0),
      dest_row(7 downto 0) => \^dest_row\(7 downto 0),
      dest_start_valid => dest_start_valid,
      m_axis_data(0) => \^m_axis_data\(0),
      m_axis_ready => \^m_axis_ready\,
      m_axis_valid => m_axis_valid,
      s_axis_data(11 downto 8) => s_axis_data(23 downto 20),
      s_axis_data(7 downto 4) => s_axis_data(15 downto 12),
      s_axis_data(3 downto 0) => s_axis_data(7 downto 4),
      s_axis_valid => s_axis_valid,
      start_col(8 downto 0) => \^start_col\(8 downto 0),
      start_row(7 downto 0) => \^start_row\(7 downto 0)
    );
end STRUCTURE;
