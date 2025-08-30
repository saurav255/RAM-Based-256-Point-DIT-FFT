-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Aug 22 08:49:46 2025
-- Host        : Saurav running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Vivado_Projects/FFT_FPGA/FFT_FPGA.gen/sources_1/bd/design_2/ip/design_2_top_0_0/design_2_top_0_0_sim_netlist.vhdl
-- Design      : design_2_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_top_0_0_fft_ver2 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_fifo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wena_fifo : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_top_0_0_fft_ver2 : entity is "fft_ver2";
end design_2_top_0_0_fft_ver2;

architecture STRUCTURE of design_2_top_0_0_fft_ver2 is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[1]_i_2_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[2]_i_2_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[3]_i_2_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[4]_i_2_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[6]_i_2_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[6]_i_3_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_fifo_ram[7]_i_2_n_0\ : STD_LOGIC;
  signal \flipper[0]_i_1_n_0\ : STD_LOGIC;
  signal \flipper[0]_i_2_n_0\ : STD_LOGIC;
  signal \flipper[1]_i_1_n_0\ : STD_LOGIC;
  signal \flipper[1]_i_2_n_0\ : STD_LOGIC;
  signal \flipper[2]_i_1_n_0\ : STD_LOGIC;
  signal \flipper[2]_i_2_n_0\ : STD_LOGIC;
  signal \flipper[2]_i_3_n_0\ : STD_LOGIC;
  signal \flipper[2]_i_4_n_0\ : STD_LOGIC;
  signal \flipper_reg_n_0_[0]\ : STD_LOGIC;
  signal \flipper_reg_n_0_[1]\ : STD_LOGIC;
  signal \flipper_reg_n_0_[2]\ : STD_LOGIC;
  signal latency_ctrl_i_1_n_0 : STD_LOGIC;
  signal latency_ctrl_reg_n_0 : STD_LOGIC;
  signal st_ctr : STD_LOGIC;
  signal \st_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \st_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \st_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \st_ctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \st_ctr[4]_i_1_n_0\ : STD_LOGIC;
  signal \st_ctr[5]_i_1_n_0\ : STD_LOGIC;
  signal \st_ctr[5]_i_2_n_0\ : STD_LOGIC;
  signal \st_ctr[6]_i_1_n_0\ : STD_LOGIC;
  signal \st_ctr[7]_i_1_n_0\ : STD_LOGIC;
  signal \st_ctr[8]_i_2_n_0\ : STD_LOGIC;
  signal \st_ctr[8]_i_3_n_0\ : STD_LOGIC;
  signal \st_ctr[8]_i_4_n_0\ : STD_LOGIC;
  signal \st_ctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \st_ctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \st_ctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \st_ctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \st_ctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \st_ctr_reg_n_0_[5]\ : STD_LOGIC;
  signal \st_ctr_reg_n_0_[6]\ : STD_LOGIC;
  signal \st_ctr_reg_n_0_[7]\ : STD_LOGIC;
  signal \st_ctr_reg_n_0_[8]\ : STD_LOGIC;
  signal \st_ctr_reg_rep_n_0_[0]\ : STD_LOGIC;
  signal \st_ctr_reg_rep_n_0_[1]\ : STD_LOGIC;
  signal \st_ctr_reg_rep_n_0_[2]\ : STD_LOGIC;
  signal \st_ctr_reg_rep_n_0_[3]\ : STD_LOGIC;
  signal \st_ctr_reg_rep_n_0_[4]\ : STD_LOGIC;
  signal \st_ctr_reg_rep_n_0_[5]\ : STD_LOGIC;
  signal \st_ctr_reg_rep_n_0_[6]\ : STD_LOGIC;
  signal \st_ctr_reg_rep_n_0_[7]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^wena_fifo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wr_fifo_ram_i_1_n_0 : STD_LOGIC;
  signal wr_fifo_ram_i_3_n_0 : STD_LOGIC;
  signal wr_fifo_ram_i_4_n_0 : STD_LOGIC;
  signal wr_fifo_ram_i_5_n_0 : STD_LOGIC;
  signal wr_fifo_ram_i_6_n_0 : STD_LOGIC;
  signal wr_fifo_ram_i_7_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_2\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "STAGE3:0011,STAGE4:0100,STAGE2:0010,CLEANUP:1010,STAGE1:0001,IDLE:0000,BIT_FLIP_STAGE:1001,STAGE7:0111,STAGE8:1000,STAGE6:0110,STAGE5:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "STAGE3:0011,STAGE4:0100,STAGE2:0010,CLEANUP:1010,STAGE1:0001,IDLE:0000,BIT_FLIP_STAGE:1001,STAGE7:0111,STAGE8:1000,STAGE6:0110,STAGE5:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "STAGE3:0011,STAGE4:0100,STAGE2:0010,CLEANUP:1010,STAGE1:0001,IDLE:0000,BIT_FLIP_STAGE:1001,STAGE7:0111,STAGE8:1000,STAGE6:0110,STAGE5:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "STAGE3:0011,STAGE4:0100,STAGE2:0010,CLEANUP:1010,STAGE1:0001,IDLE:0000,BIT_FLIP_STAGE:1001,STAGE7:0111,STAGE8:1000,STAGE6:0110,STAGE5:0101";
  attribute SOFT_HLUTNM of \addr_fifo_ram[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_fifo_ram[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_fifo_ram[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_fifo_ram[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_fifo_ram[6]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \flipper[2]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \flipper[2]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \st_ctr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \st_ctr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \st_ctr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \st_ctr[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \st_ctr[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \st_ctr[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \st_ctr[8]_i_3\ : label is "soft_lutpair4";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \st_ctr_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \st_ctr_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \st_ctr_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \st_ctr_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \st_ctr_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \st_ctr_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \st_ctr_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \st_ctr_reg_rep[7]\ : label is "no";
  attribute SOFT_HLUTNM of wr_fifo_ram_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of wr_fifo_ram_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of wr_fifo_ram_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of wr_fifo_ram_i_7 : label is "soft_lutpair6";
begin
  AR(0) <= \^ar\(0);
  wena_fifo(0) <= \^wena_fifo\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      O => \state__0\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      O => \state__0\(2)
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3AA8"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[8]\,
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => state(2),
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3380"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      O => \state__0\(3)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \state__0\(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \state__0\(2),
      Q => state(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \state__0\(3),
      Q => state(3)
    );
\addr_fifo_ram[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8888F88888888"
    )
        port map (
      I0 => \st_ctr_reg_rep_n_0_[7]\,
      I1 => \addr_fifo_ram[6]_i_2_n_0\,
      I2 => \st_ctr_reg_n_0_[6]\,
      I3 => \addr_fifo_ram[1]_i_2_n_0\,
      I4 => \st_ctr_reg_n_0_[7]\,
      I5 => \addr_fifo_ram[6]_i_3_n_0\,
      O => \addr_fifo_ram[0]_i_1_n_0\
    );
\addr_fifo_ram[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F8888"
    )
        port map (
      I0 => \st_ctr_reg_rep_n_0_[6]\,
      I1 => \addr_fifo_ram[6]_i_2_n_0\,
      I2 => \st_ctr_reg_n_0_[6]\,
      I3 => \addr_fifo_ram[1]_i_2_n_0\,
      I4 => \addr_fifo_ram[6]_i_3_n_0\,
      O => \addr_fifo_ram[1]_i_1_n_0\
    );
\addr_fifo_ram[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[4]\,
      I1 => \st_ctr_reg_n_0_[2]\,
      I2 => \st_ctr_reg_n_0_[0]\,
      I3 => \st_ctr_reg_n_0_[1]\,
      I4 => \st_ctr_reg_n_0_[3]\,
      I5 => \st_ctr_reg_n_0_[5]\,
      O => \addr_fifo_ram[1]_i_2_n_0\
    );
\addr_fifo_ram[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F8888"
    )
        port map (
      I0 => \st_ctr_reg_rep_n_0_[5]\,
      I1 => \addr_fifo_ram[6]_i_2_n_0\,
      I2 => \st_ctr_reg_n_0_[5]\,
      I3 => \addr_fifo_ram[2]_i_2_n_0\,
      I4 => \addr_fifo_ram[6]_i_3_n_0\,
      O => \addr_fifo_ram[2]_i_1_n_0\
    );
\addr_fifo_ram[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[3]\,
      I1 => \st_ctr_reg_n_0_[1]\,
      I2 => \st_ctr_reg_n_0_[0]\,
      I3 => \st_ctr_reg_n_0_[2]\,
      I4 => \st_ctr_reg_n_0_[4]\,
      O => \addr_fifo_ram[2]_i_2_n_0\
    );
\addr_fifo_ram[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F8888"
    )
        port map (
      I0 => \st_ctr_reg_rep_n_0_[4]\,
      I1 => \addr_fifo_ram[6]_i_2_n_0\,
      I2 => \st_ctr_reg_n_0_[4]\,
      I3 => \addr_fifo_ram[3]_i_2_n_0\,
      I4 => \addr_fifo_ram[6]_i_3_n_0\,
      O => \addr_fifo_ram[3]_i_1_n_0\
    );
\addr_fifo_ram[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[2]\,
      I1 => \st_ctr_reg_n_0_[0]\,
      I2 => \st_ctr_reg_n_0_[1]\,
      I3 => \st_ctr_reg_n_0_[3]\,
      O => \addr_fifo_ram[3]_i_2_n_0\
    );
\addr_fifo_ram[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F8888"
    )
        port map (
      I0 => \st_ctr_reg_rep_n_0_[3]\,
      I1 => \addr_fifo_ram[6]_i_2_n_0\,
      I2 => \st_ctr_reg_n_0_[3]\,
      I3 => \addr_fifo_ram[4]_i_2_n_0\,
      I4 => \addr_fifo_ram[6]_i_3_n_0\,
      O => \addr_fifo_ram[4]_i_1_n_0\
    );
\addr_fifo_ram[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[1]\,
      I1 => \st_ctr_reg_n_0_[0]\,
      I2 => \st_ctr_reg_n_0_[2]\,
      O => \addr_fifo_ram[4]_i_2_n_0\
    );
\addr_fifo_ram[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F88F88888888"
    )
        port map (
      I0 => \st_ctr_reg_rep_n_0_[2]\,
      I1 => \addr_fifo_ram[6]_i_2_n_0\,
      I2 => \st_ctr_reg_n_0_[2]\,
      I3 => \st_ctr_reg_n_0_[0]\,
      I4 => \st_ctr_reg_n_0_[1]\,
      I5 => \addr_fifo_ram[6]_i_3_n_0\,
      O => \addr_fifo_ram[5]_i_1_n_0\
    );
\addr_fifo_ram[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F8888"
    )
        port map (
      I0 => \st_ctr_reg_rep_n_0_[1]\,
      I1 => \addr_fifo_ram[6]_i_2_n_0\,
      I2 => \st_ctr_reg_n_0_[1]\,
      I3 => \st_ctr_reg_n_0_[0]\,
      I4 => \addr_fifo_ram[6]_i_3_n_0\,
      O => \addr_fifo_ram[6]_i_1_n_0\
    );
\addr_fifo_ram[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EF"
    )
        port map (
      I0 => \flipper_reg_n_0_[0]\,
      I1 => \flipper_reg_n_0_[1]\,
      I2 => \flipper_reg_n_0_[2]\,
      I3 => state(2),
      I4 => state(1),
      O => \addr_fifo_ram[6]_i_2_n_0\
    );
\addr_fifo_ram[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \flipper_reg_n_0_[0]\,
      I1 => \flipper_reg_n_0_[1]\,
      I2 => \flipper_reg_n_0_[2]\,
      I3 => state(2),
      I4 => state(1),
      O => \addr_fifo_ram[6]_i_3_n_0\
    );
\addr_fifo_ram[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C0C00000040"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[8]\,
      I1 => state(3),
      I2 => state(0),
      I3 => wr_fifo_ram_i_6_n_0,
      I4 => state(2),
      I5 => state(1),
      O => \addr_fifo_ram[7]_i_1_n_0\
    );
\addr_fifo_ram[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA3AAAA"
    )
        port map (
      I0 => \st_ctr_reg_rep_n_0_[0]\,
      I1 => \st_ctr_reg_n_0_[0]\,
      I2 => \flipper_reg_n_0_[0]\,
      I3 => \flipper_reg_n_0_[1]\,
      I4 => \flipper_reg_n_0_[2]\,
      I5 => wr_fifo_ram_i_3_n_0,
      O => \addr_fifo_ram[7]_i_2_n_0\
    );
\addr_fifo_ram_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_fifo_ram[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \addr_fifo_ram[0]_i_1_n_0\,
      Q => addr_fifo(0)
    );
\addr_fifo_ram_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_fifo_ram[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \addr_fifo_ram[1]_i_1_n_0\,
      Q => addr_fifo(1)
    );
\addr_fifo_ram_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_fifo_ram[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \addr_fifo_ram[2]_i_1_n_0\,
      Q => addr_fifo(2)
    );
\addr_fifo_ram_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_fifo_ram[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \addr_fifo_ram[3]_i_1_n_0\,
      Q => addr_fifo(3)
    );
\addr_fifo_ram_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_fifo_ram[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \addr_fifo_ram[4]_i_1_n_0\,
      Q => addr_fifo(4)
    );
\addr_fifo_ram_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_fifo_ram[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \addr_fifo_ram[5]_i_1_n_0\,
      Q => addr_fifo(5)
    );
\addr_fifo_ram_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_fifo_ram[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \addr_fifo_ram[6]_i_1_n_0\,
      Q => addr_fifo(6)
    );
\addr_fifo_ram_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addr_fifo_ram[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \addr_fifo_ram[7]_i_2_n_0\,
      Q => addr_fifo(7)
    );
\flipper[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAABBBBA8AA8888"
    )
        port map (
      I0 => \flipper[0]_i_2_n_0\,
      I1 => \FSM_sequential_state[3]_i_1_n_0\,
      I2 => \flipper[2]_i_3_n_0\,
      I3 => wr_fifo_ram_i_6_n_0,
      I4 => \flipper[2]_i_4_n_0\,
      I5 => \flipper_reg_n_0_[0]\,
      O => \flipper[0]_i_1_n_0\
    );
\flipper[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000131313"
    )
        port map (
      I0 => \flipper_reg_n_0_[1]\,
      I1 => \flipper_reg_n_0_[0]\,
      I2 => \flipper_reg_n_0_[2]\,
      I3 => state(3),
      I4 => state(1),
      I5 => \st_ctr_reg_n_0_[8]\,
      O => \flipper[0]_i_2_n_0\
    );
\flipper[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAABA8BB88BB88"
    )
        port map (
      I0 => \flipper[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[3]_i_1_n_0\,
      I2 => \flipper[2]_i_3_n_0\,
      I3 => \flipper_reg_n_0_[1]\,
      I4 => \flipper_reg_n_0_[2]\,
      I5 => \flipper[2]_i_4_n_0\,
      O => \flipper[1]_i_1_n_0\
    );
\flipper[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000700070000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => \st_ctr_reg_n_0_[8]\,
      I3 => \flipper_reg_n_0_[2]\,
      I4 => \flipper_reg_n_0_[0]\,
      I5 => \flipper_reg_n_0_[1]\,
      O => \flipper[1]_i_2_n_0\
    );
\flipper[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAA8A8BBBB8888"
    )
        port map (
      I0 => \flipper[2]_i_2_n_0\,
      I1 => \FSM_sequential_state[3]_i_1_n_0\,
      I2 => \flipper[2]_i_3_n_0\,
      I3 => \flipper_reg_n_0_[1]\,
      I4 => \flipper_reg_n_0_[2]\,
      I5 => \flipper[2]_i_4_n_0\,
      O => \flipper[2]_i_1_n_0\
    );
\flipper[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007000000000700"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => \st_ctr_reg_n_0_[8]\,
      I3 => \flipper_reg_n_0_[2]\,
      I4 => \flipper_reg_n_0_[1]\,
      I5 => \flipper_reg_n_0_[0]\,
      O => \flipper[2]_i_2_n_0\
    );
\flipper[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => latency_ctrl_reg_n_0,
      I1 => \flipper_reg_n_0_[0]\,
      I2 => \flipper_reg_n_0_[2]\,
      O => \flipper[2]_i_3_n_0\
    );
\flipper[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"333E"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => \flipper[2]_i_4_n_0\
    );
\flipper_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \flipper[0]_i_1_n_0\,
      Q => \flipper_reg_n_0_[0]\
    );
\flipper_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \flipper[1]_i_1_n_0\,
      Q => \flipper_reg_n_0_[1]\
    );
\flipper_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \flipper[2]_i_1_n_0\,
      Q => \flipper_reg_n_0_[2]\
    );
latency_ctrl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FCFFAAAA0200"
    )
        port map (
      I0 => \st_ctr[8]_i_3_n_0\,
      I1 => \flipper_reg_n_0_[0]\,
      I2 => \flipper_reg_n_0_[2]\,
      I3 => \flipper[2]_i_4_n_0\,
      I4 => \FSM_sequential_state[3]_i_1_n_0\,
      I5 => latency_ctrl_reg_n_0,
      O => latency_ctrl_i_1_n_0
    );
latency_ctrl_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => latency_ctrl_i_1_n_0,
      Q => latency_ctrl_reg_n_0
    );
\st_ctr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000155"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[8]\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => \st_ctr_reg_n_0_[0]\,
      O => \st_ctr[0]_i_1_n_0\
    );
\st_ctr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005700570000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      I3 => \st_ctr_reg_n_0_[8]\,
      I4 => \st_ctr_reg_n_0_[0]\,
      I5 => \st_ctr_reg_n_0_[1]\,
      O => \st_ctr[1]_i_1_n_0\
    );
\st_ctr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \st_ctr[8]_i_3_n_0\,
      I1 => \st_ctr_reg_n_0_[1]\,
      I2 => \st_ctr_reg_n_0_[0]\,
      I3 => \st_ctr_reg_n_0_[2]\,
      O => \st_ctr[2]_i_1_n_0\
    );
\st_ctr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[1]\,
      I1 => \st_ctr_reg_n_0_[0]\,
      I2 => \st_ctr_reg_n_0_[2]\,
      I3 => \st_ctr[8]_i_3_n_0\,
      I4 => \st_ctr_reg_n_0_[3]\,
      O => \st_ctr[3]_i_1_n_0\
    );
\st_ctr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[2]\,
      I1 => \st_ctr_reg_n_0_[0]\,
      I2 => \st_ctr_reg_n_0_[1]\,
      I3 => \st_ctr_reg_n_0_[3]\,
      I4 => \st_ctr[8]_i_3_n_0\,
      I5 => \st_ctr_reg_n_0_[4]\,
      O => \st_ctr[4]_i_1_n_0\
    );
\st_ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000020000000"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[3]\,
      I1 => \st_ctr[5]_i_2_n_0\,
      I2 => \st_ctr_reg_n_0_[2]\,
      I3 => \st_ctr_reg_n_0_[4]\,
      I4 => \st_ctr[8]_i_3_n_0\,
      I5 => \st_ctr_reg_n_0_[5]\,
      O => \st_ctr[5]_i_1_n_0\
    );
\st_ctr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[0]\,
      I1 => \st_ctr_reg_n_0_[1]\,
      O => \st_ctr[5]_i_2_n_0\
    );
\st_ctr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222200011111"
    )
        port map (
      I0 => \st_ctr[8]_i_4_n_0\,
      I1 => \st_ctr_reg_n_0_[8]\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      I5 => \st_ctr_reg_n_0_[6]\,
      O => \st_ctr[6]_i_1_n_0\
    );
\st_ctr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \st_ctr[8]_i_4_n_0\,
      I1 => \st_ctr_reg_n_0_[6]\,
      I2 => \st_ctr[8]_i_3_n_0\,
      I3 => \st_ctr_reg_n_0_[7]\,
      O => \st_ctr[7]_i_1_n_0\
    );
\st_ctr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00003E00"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => wr_fifo_ram_i_3_n_0,
      I3 => \flipper_reg_n_0_[0]\,
      I4 => \flipper_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[3]_i_1_n_0\,
      O => st_ctr
    );
\st_ctr[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[7]\,
      I1 => \st_ctr[8]_i_3_n_0\,
      I2 => \st_ctr_reg_n_0_[6]\,
      I3 => \st_ctr[8]_i_4_n_0\,
      O => \st_ctr[8]_i_2_n_0\
    );
\st_ctr[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      I3 => \st_ctr_reg_n_0_[8]\,
      O => \st_ctr[8]_i_3_n_0\
    );
\st_ctr[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[4]\,
      I1 => \st_ctr_reg_n_0_[2]\,
      I2 => \st_ctr_reg_n_0_[0]\,
      I3 => \st_ctr_reg_n_0_[1]\,
      I4 => \st_ctr_reg_n_0_[3]\,
      I5 => \st_ctr_reg_n_0_[5]\,
      O => \st_ctr[8]_i_4_n_0\
    );
\st_ctr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[0]_i_1_n_0\,
      Q => \st_ctr_reg_n_0_[0]\
    );
\st_ctr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[1]_i_1_n_0\,
      Q => \st_ctr_reg_n_0_[1]\
    );
\st_ctr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[2]_i_1_n_0\,
      Q => \st_ctr_reg_n_0_[2]\
    );
\st_ctr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[3]_i_1_n_0\,
      Q => \st_ctr_reg_n_0_[3]\
    );
\st_ctr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[4]_i_1_n_0\,
      Q => \st_ctr_reg_n_0_[4]\
    );
\st_ctr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[5]_i_1_n_0\,
      Q => \st_ctr_reg_n_0_[5]\
    );
\st_ctr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[6]_i_1_n_0\,
      Q => \st_ctr_reg_n_0_[6]\
    );
\st_ctr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[7]_i_1_n_0\,
      Q => \st_ctr_reg_n_0_[7]\
    );
\st_ctr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[8]_i_2_n_0\,
      Q => \st_ctr_reg_n_0_[8]\
    );
\st_ctr_reg_rep[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[0]_i_1_n_0\,
      Q => \st_ctr_reg_rep_n_0_[0]\
    );
\st_ctr_reg_rep[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[1]_i_1_n_0\,
      Q => \st_ctr_reg_rep_n_0_[1]\
    );
\st_ctr_reg_rep[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[2]_i_1_n_0\,
      Q => \st_ctr_reg_rep_n_0_[2]\
    );
\st_ctr_reg_rep[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[3]_i_1_n_0\,
      Q => \st_ctr_reg_rep_n_0_[3]\
    );
\st_ctr_reg_rep[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[4]_i_1_n_0\,
      Q => \st_ctr_reg_rep_n_0_[4]\
    );
\st_ctr_reg_rep[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[5]_i_1_n_0\,
      Q => \st_ctr_reg_rep_n_0_[5]\
    );
\st_ctr_reg_rep[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[6]_i_1_n_0\,
      Q => \st_ctr_reg_rep_n_0_[6]\
    );
\st_ctr_reg_rep[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => st_ctr,
      CLR => \^ar\(0),
      D => \st_ctr[7]_i_1_n_0\,
      Q => \st_ctr_reg_rep_n_0_[7]\
    );
wr_fifo_ram_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0705373704050404"
    )
        port map (
      I0 => wr_fifo_ram_i_3_n_0,
      I1 => wr_fifo_ram_i_4_n_0,
      I2 => wr_fifo_ram_i_5_n_0,
      I3 => wr_fifo_ram_i_6_n_0,
      I4 => wr_fifo_ram_i_7_n_0,
      I5 => \^wena_fifo\(0),
      O => wr_fifo_ram_i_1_n_0
    );
wr_fifo_ram_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \^ar\(0)
    );
wr_fifo_ram_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => wr_fifo_ram_i_3_n_0
    );
wr_fifo_ram_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      O => wr_fifo_ram_i_4_n_0
    );
wr_fifo_ram_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \st_ctr_reg_n_0_[8]\,
      I1 => \flipper_reg_n_0_[2]\,
      I2 => \flipper_reg_n_0_[0]\,
      O => wr_fifo_ram_i_5_n_0
    );
wr_fifo_ram_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \flipper_reg_n_0_[1]\,
      I1 => \flipper_reg_n_0_[2]\,
      O => wr_fifo_ram_i_6_n_0
    );
wr_fifo_ram_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => wr_fifo_ram_i_7_n_0
    );
wr_fifo_ram_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^ar\(0),
      D => wr_fifo_ram_i_1_n_0,
      Q => \^wena_fifo\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_top_0_0_xadc_wiz_0 is
  port (
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dclk_in : in STD_LOGIC;
    den_in : in STD_LOGIC;
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dwe_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vauxp8 : in STD_LOGIC;
    vauxn8 : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC;
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_top_0_0_xadc_wiz_0 : entity is "xadc_wiz_0";
end design_2_top_0_0_xadc_wiz_0;

architecture STRUCTURE of design_2_top_0_0_xadc_wiz_0 is
  signal \<const0>\ : STD_LOGIC;
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_1 : STD_LOGIC;
  signal inst_n_10 : STD_LOGIC;
  signal inst_n_11 : STD_LOGIC;
  signal inst_n_12 : STD_LOGIC;
  signal inst_n_13 : STD_LOGIC;
  signal inst_n_14 : STD_LOGIC;
  signal inst_n_15 : STD_LOGIC;
  signal inst_n_16 : STD_LOGIC;
  signal inst_n_17 : STD_LOGIC;
  signal inst_n_18 : STD_LOGIC;
  signal inst_n_19 : STD_LOGIC;
  signal inst_n_20 : STD_LOGIC;
  signal inst_n_21 : STD_LOGIC;
  signal inst_n_22 : STD_LOGIC;
  signal inst_n_23 : STD_LOGIC;
  signal inst_n_24 : STD_LOGIC;
  signal inst_n_25 : STD_LOGIC;
  signal inst_n_26 : STD_LOGIC;
  signal inst_n_27 : STD_LOGIC;
  signal inst_n_28 : STD_LOGIC;
  signal inst_n_3 : STD_LOGIC;
  signal inst_n_34 : STD_LOGIC;
  signal inst_n_8 : STD_LOGIC;
  signal inst_n_9 : STD_LOGIC;
  signal NLW_inst_JTAGBUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_JTAGLOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_JTAGMODIFIED_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_OT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ALM_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_MUXADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute box_type : string;
  attribute box_type of inst : label is "PRIMITIVE";
begin
  alarm_out <= \<const0>\;
  busy_out <= \<const0>\;
  channel_out(4) <= \<const0>\;
  channel_out(3) <= \<const0>\;
  channel_out(2) <= \<const0>\;
  channel_out(1) <= \<const0>\;
  channel_out(0) <= \<const0>\;
  do_out(15) <= \<const0>\;
  do_out(14) <= \<const0>\;
  do_out(13) <= \<const0>\;
  do_out(12) <= \<const0>\;
  do_out(11) <= \<const0>\;
  do_out(10) <= \<const0>\;
  do_out(9) <= \<const0>\;
  do_out(8) <= \<const0>\;
  do_out(7) <= \<const0>\;
  do_out(6) <= \<const0>\;
  do_out(5) <= \<const0>\;
  do_out(4) <= \<const0>\;
  do_out(3) <= \<const0>\;
  do_out(2) <= \<const0>\;
  do_out(1) <= \<const0>\;
  do_out(0) <= \<const0>\;
  drdy_out <= \<const0>\;
  eos_out <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: unisim.vcomponents.XADC
    generic map(
      INIT_40 => X"0018",
      INIT_41 => X"31AF",
      INIT_42 => X"0400",
      INIT_43 => X"0000",
      INIT_44 => X"0000",
      INIT_45 => X"0000",
      INIT_46 => X"0000",
      INIT_47 => X"0000",
      INIT_48 => X"0100",
      INIT_49 => X"0000",
      INIT_4A => X"0000",
      INIT_4B => X"0000",
      INIT_4C => X"0000",
      INIT_4D => X"0000",
      INIT_4E => X"0000",
      INIT_4F => X"0000",
      INIT_50 => X"B5ED",
      INIT_51 => X"57E4",
      INIT_52 => X"A147",
      INIT_53 => X"CA33",
      INIT_54 => X"A93A",
      INIT_55 => X"52C6",
      INIT_56 => X"9555",
      INIT_57 => X"AE4E",
      INIT_58 => X"5999",
      INIT_59 => X"5555",
      INIT_5A => X"9999",
      INIT_5B => X"6AAA",
      INIT_5C => X"5111",
      INIT_5D => X"5111",
      INIT_5E => X"91EB",
      INIT_5F => X"6666",
      IS_CONVSTCLK_INVERTED => '0',
      IS_DCLK_INVERTED => '0',
      SIM_DEVICE => "ZYNQ",
      SIM_MONITOR_FILE => "design.txt"
    )
        port map (
      ALM(7) => inst_n_34,
      ALM(6 downto 0) => NLW_inst_ALM_UNCONNECTED(6 downto 0),
      BUSY => inst_n_0,
      CHANNEL(4) => inst_n_24,
      CHANNEL(3) => inst_n_25,
      CHANNEL(2) => inst_n_26,
      CHANNEL(1) => inst_n_27,
      CHANNEL(0) => inst_n_28,
      CONVST => '0',
      CONVSTCLK => '0',
      DADDR(6 downto 0) => daddr_in(6 downto 0),
      DCLK => dclk_in,
      DEN => den_in,
      DI(15 downto 0) => di_in(15 downto 0),
      DO(15) => inst_n_8,
      DO(14) => inst_n_9,
      DO(13) => inst_n_10,
      DO(12) => inst_n_11,
      DO(11) => inst_n_12,
      DO(10) => inst_n_13,
      DO(9) => inst_n_14,
      DO(8) => inst_n_15,
      DO(7) => inst_n_16,
      DO(6) => inst_n_17,
      DO(5) => inst_n_18,
      DO(4) => inst_n_19,
      DO(3) => inst_n_20,
      DO(2) => inst_n_21,
      DO(1) => inst_n_22,
      DO(0) => inst_n_23,
      DRDY => inst_n_1,
      DWE => dwe_in,
      EOC => eoc_out,
      EOS => inst_n_3,
      JTAGBUSY => NLW_inst_JTAGBUSY_UNCONNECTED,
      JTAGLOCKED => NLW_inst_JTAGLOCKED_UNCONNECTED,
      JTAGMODIFIED => NLW_inst_JTAGMODIFIED_UNCONNECTED,
      MUXADDR(4 downto 0) => NLW_inst_MUXADDR_UNCONNECTED(4 downto 0),
      OT => NLW_inst_OT_UNCONNECTED,
      RESET => reset_in,
      VAUXN(15 downto 9) => B"0000000",
      VAUXN(8) => vauxn8,
      VAUXN(7 downto 0) => B"00000000",
      VAUXP(15 downto 9) => B"0000000",
      VAUXP(8) => vauxp8,
      VAUXP(7 downto 0) => B"00000000",
      VN => vn_in,
      VP => vp_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_top_0_0_sampler is
  port (
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    vpp : in STD_LOGIC;
    vnn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_top_0_0_sampler : entity is "sampler";
end design_2_top_0_0_sampler;

architecture STRUCTURE of design_2_top_0_0_sampler is
  signal eoc : STD_LOGIC;
  signal NLW_xadc_inst_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_inst_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_inst_drdy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_inst_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_inst_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_xadc_inst_do_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
xadc_inst: entity work.design_2_top_0_0_xadc_wiz_0
     port map (
      alarm_out => NLW_xadc_inst_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_inst_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_inst_channel_out_UNCONNECTED(4 downto 0),
      daddr_in(6 downto 0) => B"0011011",
      dclk_in => clk,
      den_in => eoc,
      di_in(15 downto 0) => B"0000000000000000",
      do_out(15 downto 0) => NLW_xadc_inst_do_out_UNCONNECTED(15 downto 0),
      drdy_out => NLW_xadc_inst_drdy_out_UNCONNECTED,
      dwe_in => '0',
      eoc_out => eoc,
      eos_out => NLW_xadc_inst_eos_out_UNCONNECTED,
      reset_in => AR(0),
      vauxn8 => vnn,
      vauxp8 => vpp,
      vn_in => '0',
      vp_in => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_top_0_0_top is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vpp : in STD_LOGIC;
    vnn : in STD_LOGIC;
    wena_fifo : out STD_LOGIC_VECTOR ( 3 downto 0 );
    addr_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    din_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_top_0_0_top : entity is "top";
end design_2_top_0_0_top;

architecture STRUCTURE of design_2_top_0_0_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^addr_fifo\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft_inst_n_0 : STD_LOGIC;
  signal \^wena_fifo\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  addr_fifo(31) <= \<const0>\;
  addr_fifo(30) <= \<const0>\;
  addr_fifo(29) <= \<const0>\;
  addr_fifo(28) <= \<const0>\;
  addr_fifo(27) <= \<const0>\;
  addr_fifo(26) <= \<const0>\;
  addr_fifo(25) <= \<const0>\;
  addr_fifo(24) <= \<const0>\;
  addr_fifo(23) <= \<const0>\;
  addr_fifo(22) <= \<const0>\;
  addr_fifo(21) <= \<const0>\;
  addr_fifo(20) <= \<const0>\;
  addr_fifo(19) <= \<const0>\;
  addr_fifo(18) <= \<const0>\;
  addr_fifo(17) <= \<const0>\;
  addr_fifo(16) <= \<const0>\;
  addr_fifo(15) <= \<const0>\;
  addr_fifo(14) <= \<const0>\;
  addr_fifo(13) <= \<const0>\;
  addr_fifo(12) <= \<const0>\;
  addr_fifo(11) <= \<const0>\;
  addr_fifo(10) <= \<const0>\;
  addr_fifo(9) <= \<const0>\;
  addr_fifo(8) <= \<const0>\;
  addr_fifo(7 downto 0) <= \^addr_fifo\(7 downto 0);
  din_fifo(31) <= \<const0>\;
  din_fifo(30) <= \<const0>\;
  din_fifo(29) <= \<const0>\;
  din_fifo(28) <= \<const0>\;
  din_fifo(27) <= \<const0>\;
  din_fifo(26) <= \<const0>\;
  din_fifo(25) <= \<const0>\;
  din_fifo(24) <= \<const0>\;
  din_fifo(23) <= \<const0>\;
  din_fifo(22) <= \<const0>\;
  din_fifo(21) <= \<const0>\;
  din_fifo(20) <= \<const0>\;
  din_fifo(19) <= \<const0>\;
  din_fifo(18) <= \<const0>\;
  din_fifo(17) <= \<const0>\;
  din_fifo(16) <= \<const0>\;
  din_fifo(15) <= \<const0>\;
  din_fifo(14) <= \<const0>\;
  din_fifo(13) <= \<const0>\;
  din_fifo(12) <= \<const0>\;
  din_fifo(11) <= \<const0>\;
  din_fifo(10) <= \<const0>\;
  din_fifo(9) <= \<const0>\;
  din_fifo(8) <= \<const0>\;
  din_fifo(7) <= \<const0>\;
  din_fifo(6) <= \<const0>\;
  din_fifo(5) <= \<const0>\;
  din_fifo(4) <= \<const0>\;
  din_fifo(3) <= \<const0>\;
  din_fifo(2) <= \<const0>\;
  din_fifo(1) <= \<const0>\;
  din_fifo(0) <= \<const0>\;
  wena_fifo(3) <= \^wena_fifo\(3);
  wena_fifo(2) <= \^wena_fifo\(3);
  wena_fifo(1) <= \^wena_fifo\(3);
  wena_fifo(0) <= \^wena_fifo\(3);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
fft_inst: entity work.design_2_top_0_0_fft_ver2
     port map (
      AR(0) => fft_inst_n_0,
      addr_fifo(7 downto 0) => \^addr_fifo\(7 downto 0),
      clk => clk,
      rst => rst,
      wena_fifo(0) => \^wena_fifo\(3)
    );
smpl_inst: entity work.design_2_top_0_0_sampler
     port map (
      AR(0) => fft_inst_n_0,
      clk => clk,
      vnn => vnn,
      vpp => vpp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_top_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vpp : in STD_LOGIC;
    vnn : in STD_LOGIC;
    wena_fifo : out STD_LOGIC_VECTOR ( 3 downto 0 );
    addr_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    din_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_top_0_0 : entity is "design_2_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_2_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_2_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_2_top_0_0 : entity is "top,Vivado 2024.1";
end design_2_top_0_0;

architecture STRUCTURE of design_2_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^addr_fifo\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_addr_fifo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_inst_din_fifo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addr_fifo(31) <= \<const0>\;
  addr_fifo(30) <= \<const0>\;
  addr_fifo(29) <= \<const0>\;
  addr_fifo(28) <= \<const0>\;
  addr_fifo(27) <= \<const0>\;
  addr_fifo(26) <= \<const0>\;
  addr_fifo(25) <= \<const0>\;
  addr_fifo(24) <= \<const0>\;
  addr_fifo(23) <= \<const0>\;
  addr_fifo(22) <= \<const0>\;
  addr_fifo(21) <= \<const0>\;
  addr_fifo(20) <= \<const0>\;
  addr_fifo(19) <= \<const0>\;
  addr_fifo(18) <= \<const0>\;
  addr_fifo(17) <= \<const0>\;
  addr_fifo(16) <= \<const0>\;
  addr_fifo(15) <= \<const0>\;
  addr_fifo(14) <= \<const0>\;
  addr_fifo(13) <= \<const0>\;
  addr_fifo(12) <= \<const0>\;
  addr_fifo(11) <= \<const0>\;
  addr_fifo(10) <= \<const0>\;
  addr_fifo(9) <= \<const0>\;
  addr_fifo(8) <= \<const0>\;
  addr_fifo(7 downto 0) <= \^addr_fifo\(7 downto 0);
  din_fifo(31) <= \<const0>\;
  din_fifo(30) <= \<const0>\;
  din_fifo(29) <= \<const0>\;
  din_fifo(28) <= \<const0>\;
  din_fifo(27) <= \<const0>\;
  din_fifo(26) <= \<const0>\;
  din_fifo(25) <= \<const0>\;
  din_fifo(24) <= \<const0>\;
  din_fifo(23) <= \<const0>\;
  din_fifo(22) <= \<const0>\;
  din_fifo(21) <= \<const0>\;
  din_fifo(20) <= \<const0>\;
  din_fifo(19) <= \<const0>\;
  din_fifo(18) <= \<const0>\;
  din_fifo(17) <= \<const0>\;
  din_fifo(16) <= \<const0>\;
  din_fifo(15) <= \<const0>\;
  din_fifo(14) <= \<const0>\;
  din_fifo(13) <= \<const0>\;
  din_fifo(12) <= \<const0>\;
  din_fifo(11) <= \<const0>\;
  din_fifo(10) <= \<const0>\;
  din_fifo(9) <= \<const0>\;
  din_fifo(8) <= \<const0>\;
  din_fifo(7) <= \<const0>\;
  din_fifo(6) <= \<const0>\;
  din_fifo(5) <= \<const0>\;
  din_fifo(4) <= \<const0>\;
  din_fifo(3) <= \<const0>\;
  din_fifo(2) <= \<const0>\;
  din_fifo(1) <= \<const0>\;
  din_fifo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_2_top_0_0_top
     port map (
      addr_fifo(31 downto 8) => NLW_inst_addr_fifo_UNCONNECTED(31 downto 8),
      addr_fifo(7 downto 0) => \^addr_fifo\(7 downto 0),
      clk => clk,
      din_fifo(31 downto 0) => NLW_inst_din_fifo_UNCONNECTED(31 downto 0),
      rst => rst,
      vnn => vnn,
      vpp => vpp,
      wena_fifo(3 downto 0) => wena_fifo(3 downto 0)
    );
end STRUCTURE;
