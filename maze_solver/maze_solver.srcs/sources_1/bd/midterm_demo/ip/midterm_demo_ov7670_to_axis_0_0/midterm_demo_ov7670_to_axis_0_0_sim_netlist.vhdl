-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  4 14:26:54 2025
-- Host        : DESKTOP-9NHIV7Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Clark/Documents/ece532/gitfinal/ECE532_Maze_Solver/maze_solver/maze_solver.srcs/sources_1/bd/midterm_demo/ip/midterm_demo_ov7670_to_axis_0_0/midterm_demo_ov7670_to_axis_0_0_sim_netlist.vhdl
-- Design      : midterm_demo_ov7670_to_axis_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity midterm_demo_ov7670_to_axis_0_0_camera_read is
  port (
    pixel_valid_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_last : out STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    m_axis_ready_0 : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ov_pclk : in STD_LOGIC;
    ov_vsync : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \col_count_reg[0]\ : in STD_LOGIC;
    arst_n : in STD_LOGIC;
    fd_detected : in STD_LOGIC;
    pause_wr : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    ov_href : in STD_LOGIC;
    ov_d : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of midterm_demo_ov7670_to_axis_0_0_camera_read : entity is "camera_read";
end midterm_demo_ov7670_to_axis_0_0_camera_read;

architecture STRUCTURE of midterm_demo_ov7670_to_axis_0_0_camera_read is
  signal FSM_sequential_FSM_state_i_1_n_0 : STD_LOGIC;
  signal FSM_sequential_FSM_state_reg_n_0 : STD_LOGIC;
  signal frame_done : STD_LOGIC;
  signal frame_done_i_1_n_0 : STD_LOGIC;
  signal m_axis_last_INST_0_i_1_n_0 : STD_LOGIC;
  signal \pixel_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[7]_i_1_n_0\ : STD_LOGIC;
  signal pixel_half_i_1_n_0 : STD_LOGIC;
  signal pixel_half_reg_n_0 : STD_LOGIC;
  signal pixel_valid_i_1_n_0 : STD_LOGIC;
  signal \^pixel_valid_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FSM_sequential_FSM_state_i_1 : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_FSM_state_reg : label is "ROW_CAPTURE:1,WAIT_FRAME_START:0";
  attribute SOFT_HLUTNM of \col_count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \col_count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \col_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \col_count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \col_count[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \col_count[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \col_count[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \col_count[8]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of fd_detected_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of frame_done_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of m_axis_valid_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of pixel_half_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of pixel_valid_i_1 : label is "soft_lutpair3";
begin
  pixel_valid_reg_0 <= \^pixel_valid_reg_0\;
FSM_sequential_FSM_state_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ov_vsync,
      O => FSM_sequential_FSM_state_i_1_n_0
    );
FSM_sequential_FSM_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => '1',
      D => FSM_sequential_FSM_state_i_1_n_0,
      Q => FSM_sequential_FSM_state_reg_n_0,
      R => '0'
    );
\col_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => \^pixel_valid_reg_0\,
      O => D(0)
    );
\col_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^pixel_valid_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => D(1)
    );
\col_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^pixel_valid_reg_0\,
      I3 => Q(2),
      O => D(2)
    );
\col_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => Q(2),
      I1 => \^pixel_valid_reg_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      O => D(3)
    );
\col_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^pixel_valid_reg_0\,
      I4 => Q(2),
      I5 => Q(4),
      O => D(4)
    );
\col_count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => m_axis_last_INST_0_i_1_n_0,
      I1 => Q(5),
      O => D(5)
    );
\col_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => Q(5),
      I1 => m_axis_last_INST_0_i_1_n_0,
      I2 => Q(6),
      O => D(6)
    );
\col_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => Q(6),
      I1 => m_axis_last_INST_0_i_1_n_0,
      I2 => Q(5),
      I3 => Q(7),
      O => D(7)
    );
\col_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAFFFF"
    )
        port map (
      I0 => ov_vsync,
      I1 => \col_count_reg[0]\,
      I2 => Q(5),
      I3 => m_axis_last_INST_0_i_1_n_0,
      I4 => arst_n,
      O => SR(0)
    );
\col_count[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => Q(7),
      I1 => Q(5),
      I2 => m_axis_last_INST_0_i_1_n_0,
      I3 => Q(6),
      I4 => Q(8),
      O => D(8)
    );
fd_detected_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_ready,
      I1 => frame_done,
      I2 => fd_detected,
      O => m_axis_ready_0
    );
frame_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ov_vsync,
      I1 => FSM_sequential_FSM_state_reg_n_0,
      O => frame_done_i_1_n_0
    );
frame_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => '1',
      D => frame_done_i_1_n_0,
      Q => frame_done,
      R => '0'
    );
m_axis_last_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => fd_detected,
      I3 => Q(6),
      I4 => Q(5),
      I5 => m_axis_last_INST_0_i_1_n_0,
      O => m_axis_last
    );
m_axis_last_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^pixel_valid_reg_0\,
      I4 => Q(2),
      I5 => Q(4),
      O => m_axis_last_INST_0_i_1_n_0
    );
m_axis_valid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => pause_wr,
      I1 => \^pixel_valid_reg_0\,
      I2 => fd_detected,
      O => m_axis_valid
    );
\pixel_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => pixel_half_reg_n_0,
      I1 => FSM_sequential_FSM_state_reg_n_0,
      I2 => ov_href,
      O => \pixel_data[11]_i_1_n_0\
    );
\pixel_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ov_href,
      I1 => pixel_half_reg_n_0,
      I2 => FSM_sequential_FSM_state_reg_n_0,
      O => \pixel_data[7]_i_1_n_0\
    );
\pixel_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[7]_i_1_n_0\,
      D => ov_d(0),
      Q => m_axis_data(0),
      R => '0'
    );
\pixel_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[11]_i_1_n_0\,
      D => ov_d(2),
      Q => m_axis_data(10),
      R => '0'
    );
\pixel_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[11]_i_1_n_0\,
      D => ov_d(3),
      Q => m_axis_data(11),
      R => '0'
    );
\pixel_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[7]_i_1_n_0\,
      D => ov_d(1),
      Q => m_axis_data(1),
      R => '0'
    );
\pixel_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[7]_i_1_n_0\,
      D => ov_d(2),
      Q => m_axis_data(2),
      R => '0'
    );
\pixel_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[7]_i_1_n_0\,
      D => ov_d(3),
      Q => m_axis_data(3),
      R => '0'
    );
\pixel_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[7]_i_1_n_0\,
      D => ov_d(4),
      Q => m_axis_data(4),
      R => '0'
    );
\pixel_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[7]_i_1_n_0\,
      D => ov_d(5),
      Q => m_axis_data(5),
      R => '0'
    );
\pixel_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[7]_i_1_n_0\,
      D => ov_d(6),
      Q => m_axis_data(6),
      R => '0'
    );
\pixel_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[7]_i_1_n_0\,
      D => ov_d(7),
      Q => m_axis_data(7),
      R => '0'
    );
\pixel_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[11]_i_1_n_0\,
      D => ov_d(0),
      Q => m_axis_data(8),
      R => '0'
    );
\pixel_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => \pixel_data[11]_i_1_n_0\,
      D => ov_d(1),
      Q => m_axis_data(9),
      R => '0'
    );
pixel_half_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => pixel_half_reg_n_0,
      I1 => ov_href,
      I2 => FSM_sequential_FSM_state_reg_n_0,
      O => pixel_half_i_1_n_0
    );
pixel_half_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => '1',
      D => pixel_half_i_1_n_0,
      Q => pixel_half_reg_n_0,
      R => '0'
    );
pixel_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ov_href,
      I1 => pixel_half_reg_n_0,
      I2 => FSM_sequential_FSM_state_reg_n_0,
      I3 => \^pixel_valid_reg_0\,
      O => pixel_valid_i_1_n_0
    );
pixel_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ov_pclk,
      CE => '1',
      D => pixel_valid_i_1_n_0,
      Q => \^pixel_valid_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity midterm_demo_ov7670_to_axis_0_0_ov7670_to_axis is
  port (
    m_axis_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dbg_col_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    pixel_valid_reg : out STD_LOGIC;
    m_axis_last : out STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    ov_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ov_pclk : in STD_LOGIC;
    ov_href : in STD_LOGIC;
    ov_vsync : in STD_LOGIC;
    arst_n : in STD_LOGIC;
    pause : in STD_LOGIC;
    resume : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of midterm_demo_ov7670_to_axis_0_0_ov7670_to_axis : entity is "ov7670_to_axis";
end midterm_demo_ov7670_to_axis_0_0_ov7670_to_axis;

architecture STRUCTURE of midterm_demo_ov7670_to_axis_0_0_ov7670_to_axis is
  signal camera_read_i_n_10 : STD_LOGIC;
  signal camera_read_i_n_13 : STD_LOGIC;
  signal \col_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \^dbg_col_count\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal fd_detected : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal pause_asserted : STD_LOGIC;
  signal pause_asserted_i_1_n_0 : STD_LOGIC;
  signal pause_asserted_i_2_n_0 : STD_LOGIC;
  signal pause_wr : STD_LOGIC;
  signal pause_wr_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of pause_asserted_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of pause_wr_i_1 : label is "soft_lutpair7";
begin
  dbg_col_count(8 downto 0) <= \^dbg_col_count\(8 downto 0);
camera_read_i: entity work.midterm_demo_ov7670_to_axis_0_0_camera_read
     port map (
      D(8 downto 0) => p_0_in(8 downto 0),
      Q(8 downto 0) => \^dbg_col_count\(8 downto 0),
      SR(0) => camera_read_i_n_10,
      arst_n => arst_n,
      \col_count_reg[0]\ => \col_count[8]_i_3_n_0\,
      fd_detected => fd_detected,
      m_axis_data(11 downto 0) => m_axis_data(11 downto 0),
      m_axis_last => m_axis_last,
      m_axis_ready => m_axis_ready,
      m_axis_ready_0 => camera_read_i_n_13,
      m_axis_valid => m_axis_valid,
      ov_d(7 downto 0) => ov_d(7 downto 0),
      ov_href => ov_href,
      ov_pclk => ov_pclk,
      ov_vsync => ov_vsync,
      pause_wr => pause_wr,
      pixel_valid_reg_0 => pixel_valid_reg
    );
\col_count[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^dbg_col_count\(6),
      I1 => fd_detected,
      I2 => \^dbg_col_count\(7),
      I3 => \^dbg_col_count\(8),
      O => \col_count[8]_i_3_n_0\
    );
\col_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ov_pclk,
      CE => '1',
      D => p_0_in(0),
      Q => \^dbg_col_count\(0),
      R => camera_read_i_n_10
    );
\col_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ov_pclk,
      CE => '1',
      D => p_0_in(1),
      Q => \^dbg_col_count\(1),
      R => camera_read_i_n_10
    );
\col_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ov_pclk,
      CE => '1',
      D => p_0_in(2),
      Q => \^dbg_col_count\(2),
      R => camera_read_i_n_10
    );
\col_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ov_pclk,
      CE => '1',
      D => p_0_in(3),
      Q => \^dbg_col_count\(3),
      R => camera_read_i_n_10
    );
\col_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ov_pclk,
      CE => '1',
      D => p_0_in(4),
      Q => \^dbg_col_count\(4),
      R => camera_read_i_n_10
    );
\col_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ov_pclk,
      CE => '1',
      D => p_0_in(5),
      Q => \^dbg_col_count\(5),
      R => camera_read_i_n_10
    );
\col_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ov_pclk,
      CE => '1',
      D => p_0_in(6),
      Q => \^dbg_col_count\(6),
      R => camera_read_i_n_10
    );
\col_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ov_pclk,
      CE => '1',
      D => p_0_in(7),
      Q => \^dbg_col_count\(7),
      R => camera_read_i_n_10
    );
\col_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ov_pclk,
      CE => '1',
      D => p_0_in(8),
      Q => \^dbg_col_count\(8),
      R => camera_read_i_n_10
    );
fd_detected_reg: unisim.vcomponents.FDCE
     port map (
      C => ov_pclk,
      CE => '1',
      CLR => pause_asserted_i_2_n_0,
      D => camera_read_i_n_13,
      Q => fd_detected
    );
pause_asserted_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => pause,
      I1 => resume,
      I2 => pause_asserted,
      O => pause_asserted_i_1_n_0
    );
pause_asserted_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arst_n,
      O => pause_asserted_i_2_n_0
    );
pause_asserted_reg: unisim.vcomponents.FDCE
     port map (
      C => ov_pclk,
      CE => '1',
      CLR => pause_asserted_i_2_n_0,
      D => pause_asserted_i_1_n_0,
      Q => pause_asserted
    );
pause_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pause_asserted,
      I1 => ov_vsync,
      I2 => pause_wr,
      O => pause_wr_i_1_n_0
    );
pause_wr_reg: unisim.vcomponents.FDCE
     port map (
      C => ov_pclk,
      CE => '1',
      CLR => pause_asserted_i_2_n_0,
      D => pause_wr_i_1_n_0,
      Q => pause_wr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity midterm_demo_ov7670_to_axis_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of midterm_demo_ov7670_to_axis_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of midterm_demo_ov7670_to_axis_0_0 : entity is "midterm_demo_ov7670_to_axis_0_0,ov7670_to_axis,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of midterm_demo_ov7670_to_axis_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of midterm_demo_ov7670_to_axis_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of midterm_demo_ov7670_to_axis_0_0 : entity is "ov7670_to_axis,Vivado 2018.3";
end midterm_demo_ov7670_to_axis_0_0;

architecture STRUCTURE of midterm_demo_ov7670_to_axis_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_data\ : STD_LOGIC_VECTOR ( 23 downto 4 );
  signal \^ov_vsync\ : STD_LOGIC;
begin
  \^ov_vsync\ <= ov_vsync;
  m_axis_data(31) <= \<const0>\;
  m_axis_data(30) <= \<const0>\;
  m_axis_data(29) <= \<const0>\;
  m_axis_data(28) <= \<const0>\;
  m_axis_data(27) <= \<const0>\;
  m_axis_data(26) <= \<const0>\;
  m_axis_data(25) <= \<const0>\;
  m_axis_data(24) <= \<const0>\;
  m_axis_data(23 downto 20) <= \^m_axis_data\(23 downto 20);
  m_axis_data(19) <= \<const0>\;
  m_axis_data(18) <= \<const0>\;
  m_axis_data(17) <= \<const0>\;
  m_axis_data(16) <= \<const0>\;
  m_axis_data(15 downto 12) <= \^m_axis_data\(15 downto 12);
  m_axis_data(11) <= \<const0>\;
  m_axis_data(10) <= \<const0>\;
  m_axis_data(9) <= \<const0>\;
  m_axis_data(8) <= \<const0>\;
  m_axis_data(7 downto 4) <= \^m_axis_data\(7 downto 4);
  m_axis_data(3) <= \<const0>\;
  m_axis_data(2) <= \<const0>\;
  m_axis_data(1) <= \<const0>\;
  m_axis_data(0) <= \<const0>\;
  m_axis_keep(3) <= \<const1>\;
  m_axis_keep(2) <= \<const1>\;
  m_axis_keep(1) <= \<const1>\;
  m_axis_keep(0) <= \<const1>\;
  m_axis_user(0) <= \^ov_vsync\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.midterm_demo_ov7670_to_axis_0_0_ov7670_to_axis
     port map (
      arst_n => arst_n,
      dbg_col_count(8 downto 0) => dbg_col_count(8 downto 0),
      m_axis_data(11 downto 8) => \^m_axis_data\(23 downto 20),
      m_axis_data(7 downto 4) => \^m_axis_data\(15 downto 12),
      m_axis_data(3 downto 0) => \^m_axis_data\(7 downto 4),
      m_axis_last => m_axis_last,
      m_axis_ready => m_axis_ready,
      m_axis_valid => m_axis_valid,
      ov_d(7 downto 0) => ov_d(7 downto 0),
      ov_href => ov_href,
      ov_pclk => ov_pclk,
      ov_vsync => \^ov_vsync\,
      pause => pause,
      pixel_valid_reg => dbg_pxv,
      resume => resume
    );
end STRUCTURE;
