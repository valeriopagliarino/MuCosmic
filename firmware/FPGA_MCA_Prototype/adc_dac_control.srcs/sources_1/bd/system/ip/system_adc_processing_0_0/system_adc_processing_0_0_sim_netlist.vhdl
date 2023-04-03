-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Mar  9 15:17:44 2023
-- Host        : VALERIOPAGLFEF1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/XilinxProjects/redpitaya-fpga-example-template/adc_dac_control.srcs/sources_1/bd/system/ip/system_adc_processing_0_0/system_adc_processing_0_0_sim_netlist.vhdl
-- Design      : system_adc_processing_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_adc_processing_0_0_adc_processing is
  port (
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    adc_dat_a_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_adc_processing_0_0_adc_processing : entity is "adc_processing";
end system_adc_processing_0_0_adc_processing;

architecture STRUCTURE of system_adc_processing_0_0_adc_processing is
  signal \clk_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal clk_counter_reg : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal \clk_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \clk_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \clk_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \clk_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \clk_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \clk_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \clk_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \clk_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clk_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clk_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clk_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clk_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clk_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clk_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clk_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clk_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clk_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clk_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clk_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clk_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clk_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clk_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clk_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clk_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clk_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clk_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clk_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clk_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clk_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clk_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clk_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clk_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clk_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal clk_led : STD_LOGIC;
  signal clk_led_i_10_n_0 : STD_LOGIC;
  signal clk_led_i_11_n_0 : STD_LOGIC;
  signal clk_led_i_1_n_0 : STD_LOGIC;
  signal clk_led_i_2_n_0 : STD_LOGIC;
  signal clk_led_i_4_n_0 : STD_LOGIC;
  signal clk_led_i_5_n_0 : STD_LOGIC;
  signal clk_led_i_6_n_0 : STD_LOGIC;
  signal clk_led_i_7_n_0 : STD_LOGIC;
  signal clk_led_i_8_n_0 : STD_LOGIC;
  signal clk_led_i_9_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \NLW_clk_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clk_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \clk_counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_counter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_counter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clk_counter_reg[8]_i_1\ : label is 11;
begin
\clk_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[0]\,
      O => \clk_counter[0]_i_2_n_0\
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[0]_i_1_n_7\,
      Q => \clk_counter_reg_n_0_[0]\,
      R => '0'
    );
\clk_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_counter_reg[0]_i_1_n_0\,
      CO(2) => \clk_counter_reg[0]_i_1_n_1\,
      CO(1) => \clk_counter_reg[0]_i_1_n_2\,
      CO(0) => \clk_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_counter_reg[0]_i_1_n_4\,
      O(2) => \clk_counter_reg[0]_i_1_n_5\,
      O(1) => \clk_counter_reg[0]_i_1_n_6\,
      O(0) => \clk_counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => clk_counter_reg(3 downto 1),
      S(0) => \clk_counter[0]_i_2_n_0\
    );
\clk_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[8]_i_1_n_5\,
      Q => clk_counter_reg(10),
      R => '0'
    );
\clk_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[8]_i_1_n_4\,
      Q => clk_counter_reg(11),
      R => '0'
    );
\clk_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[12]_i_1_n_7\,
      Q => clk_counter_reg(12),
      R => '0'
    );
\clk_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_reg[8]_i_1_n_0\,
      CO(3) => \clk_counter_reg[12]_i_1_n_0\,
      CO(2) => \clk_counter_reg[12]_i_1_n_1\,
      CO(1) => \clk_counter_reg[12]_i_1_n_2\,
      CO(0) => \clk_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_counter_reg[12]_i_1_n_4\,
      O(2) => \clk_counter_reg[12]_i_1_n_5\,
      O(1) => \clk_counter_reg[12]_i_1_n_6\,
      O(0) => \clk_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => clk_counter_reg(15 downto 12)
    );
\clk_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[12]_i_1_n_6\,
      Q => clk_counter_reg(13),
      R => '0'
    );
\clk_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[12]_i_1_n_5\,
      Q => clk_counter_reg(14),
      R => '0'
    );
\clk_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[12]_i_1_n_4\,
      Q => clk_counter_reg(15),
      R => '0'
    );
\clk_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[16]_i_1_n_7\,
      Q => clk_counter_reg(16),
      R => '0'
    );
\clk_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_reg[12]_i_1_n_0\,
      CO(3) => \clk_counter_reg[16]_i_1_n_0\,
      CO(2) => \clk_counter_reg[16]_i_1_n_1\,
      CO(1) => \clk_counter_reg[16]_i_1_n_2\,
      CO(0) => \clk_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_counter_reg[16]_i_1_n_4\,
      O(2) => \clk_counter_reg[16]_i_1_n_5\,
      O(1) => \clk_counter_reg[16]_i_1_n_6\,
      O(0) => \clk_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => clk_counter_reg(19 downto 16)
    );
\clk_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[16]_i_1_n_6\,
      Q => clk_counter_reg(17),
      R => '0'
    );
\clk_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[16]_i_1_n_5\,
      Q => clk_counter_reg(18),
      R => '0'
    );
\clk_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[16]_i_1_n_4\,
      Q => clk_counter_reg(19),
      R => '0'
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[0]_i_1_n_6\,
      Q => clk_counter_reg(1),
      R => '0'
    );
\clk_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[20]_i_1_n_7\,
      Q => clk_counter_reg(20),
      R => '0'
    );
\clk_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_reg[16]_i_1_n_0\,
      CO(3) => \clk_counter_reg[20]_i_1_n_0\,
      CO(2) => \clk_counter_reg[20]_i_1_n_1\,
      CO(1) => \clk_counter_reg[20]_i_1_n_2\,
      CO(0) => \clk_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_counter_reg[20]_i_1_n_4\,
      O(2) => \clk_counter_reg[20]_i_1_n_5\,
      O(1) => \clk_counter_reg[20]_i_1_n_6\,
      O(0) => \clk_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => clk_counter_reg(23 downto 20)
    );
\clk_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[20]_i_1_n_6\,
      Q => clk_counter_reg(21),
      R => '0'
    );
\clk_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[20]_i_1_n_5\,
      Q => clk_counter_reg(22),
      R => '0'
    );
\clk_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[20]_i_1_n_4\,
      Q => clk_counter_reg(23),
      R => '0'
    );
\clk_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[24]_i_1_n_7\,
      Q => clk_counter_reg(24),
      R => '0'
    );
\clk_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_clk_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \clk_counter_reg[24]_i_1_n_2\,
      CO(0) => \clk_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clk_counter_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \clk_counter_reg[24]_i_1_n_5\,
      O(1) => \clk_counter_reg[24]_i_1_n_6\,
      O(0) => \clk_counter_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => clk_counter_reg(26 downto 24)
    );
\clk_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[24]_i_1_n_6\,
      Q => clk_counter_reg(25),
      R => '0'
    );
\clk_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[24]_i_1_n_5\,
      Q => clk_counter_reg(26),
      R => '0'
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[0]_i_1_n_5\,
      Q => clk_counter_reg(2),
      R => '0'
    );
\clk_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[0]_i_1_n_4\,
      Q => clk_counter_reg(3),
      R => '0'
    );
\clk_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[4]_i_1_n_7\,
      Q => clk_counter_reg(4),
      R => '0'
    );
\clk_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_reg[0]_i_1_n_0\,
      CO(3) => \clk_counter_reg[4]_i_1_n_0\,
      CO(2) => \clk_counter_reg[4]_i_1_n_1\,
      CO(1) => \clk_counter_reg[4]_i_1_n_2\,
      CO(0) => \clk_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_counter_reg[4]_i_1_n_4\,
      O(2) => \clk_counter_reg[4]_i_1_n_5\,
      O(1) => \clk_counter_reg[4]_i_1_n_6\,
      O(0) => \clk_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => clk_counter_reg(7 downto 4)
    );
\clk_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[4]_i_1_n_6\,
      Q => clk_counter_reg(5),
      R => '0'
    );
\clk_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[4]_i_1_n_5\,
      Q => clk_counter_reg(6),
      R => '0'
    );
\clk_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[4]_i_1_n_4\,
      Q => clk_counter_reg(7),
      R => '0'
    );
\clk_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[8]_i_1_n_7\,
      Q => clk_counter_reg(8),
      R => '0'
    );
\clk_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter_reg[4]_i_1_n_0\,
      CO(3) => \clk_counter_reg[8]_i_1_n_0\,
      CO(2) => \clk_counter_reg[8]_i_1_n_1\,
      CO(1) => \clk_counter_reg[8]_i_1_n_2\,
      CO(0) => \clk_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_counter_reg[8]_i_1_n_4\,
      O(2) => \clk_counter_reg[8]_i_1_n_5\,
      O(1) => \clk_counter_reg[8]_i_1_n_6\,
      O(0) => \clk_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => clk_counter_reg(11 downto 8)
    );
\clk_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_counter_reg[8]_i_1_n_6\,
      Q => clk_counter_reg(9),
      R => '0'
    );
clk_led_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => clk_led_i_2_n_0,
      I1 => clk_led,
      I2 => p_0_in,
      O => clk_led_i_1_n_0
    );
clk_led_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001115FFFFFFFF"
    )
        port map (
      I0 => clk_counter_reg(5),
      I1 => clk_counter_reg(4),
      I2 => clk_counter_reg(2),
      I3 => clk_counter_reg(3),
      I4 => clk_counter_reg(6),
      I5 => clk_counter_reg(8),
      O => clk_led_i_10_n_0
    );
clk_led_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEE00000000"
    )
        port map (
      I0 => clk_counter_reg(5),
      I1 => clk_counter_reg(4),
      I2 => clk_counter_reg(1),
      I3 => clk_counter_reg(2),
      I4 => clk_counter_reg(3),
      I5 => clk_counter_reg(6),
      O => clk_led_i_11_n_0
    );
clk_led_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => clk_counter_reg(25),
      I1 => clk_counter_reg(26),
      I2 => clk_led_i_4_n_0,
      I3 => clk_counter_reg(24),
      I4 => clk_counter_reg(23),
      O => clk_led_i_2_n_0
    );
clk_led_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clk_counter_reg(25),
      I1 => clk_counter_reg(26),
      I2 => clk_led_i_5_n_0,
      I3 => clk_counter_reg(22),
      I4 => clk_counter_reg(24),
      I5 => clk_counter_reg(23),
      O => p_0_in
    );
clk_led_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7577FFFFFFFFFFFF"
    )
        port map (
      I0 => clk_counter_reg(20),
      I1 => clk_counter_reg(19),
      I2 => clk_led_i_6_n_0,
      I3 => clk_counter_reg(18),
      I4 => clk_counter_reg(21),
      I5 => clk_counter_reg(22),
      O => clk_led_i_4_n_0
    );
clk_led_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888000000000000"
    )
        port map (
      I0 => clk_counter_reg(21),
      I1 => clk_counter_reg(18),
      I2 => clk_led_i_7_n_0,
      I3 => clk_counter_reg(16),
      I4 => clk_counter_reg(19),
      I5 => clk_counter_reg(20),
      O => clk_led_i_5_n_0
    );
clk_led_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557757FFFFFFFF"
    )
        port map (
      I0 => clk_counter_reg(17),
      I1 => clk_counter_reg(14),
      I2 => clk_counter_reg(13),
      I3 => clk_led_i_8_n_0,
      I4 => clk_counter_reg(15),
      I5 => clk_counter_reg(16),
      O => clk_led_i_6_n_0
    );
clk_led_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA88800000000"
    )
        port map (
      I0 => clk_counter_reg(15),
      I1 => clk_counter_reg(14),
      I2 => clk_led_i_9_n_0,
      I3 => clk_counter_reg(11),
      I4 => clk_counter_reg(13),
      I5 => clk_counter_reg(17),
      O => clk_led_i_7_n_0
    );
clk_led_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11115515FFFFFFFF"
    )
        port map (
      I0 => clk_counter_reg(11),
      I1 => clk_counter_reg(10),
      I2 => clk_counter_reg(7),
      I3 => clk_led_i_10_n_0,
      I4 => clk_counter_reg(9),
      I5 => clk_counter_reg(12),
      O => clk_led_i_8_n_0
    );
clk_led_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEAAAA00000000"
    )
        port map (
      I0 => clk_counter_reg(10),
      I1 => clk_counter_reg(8),
      I2 => clk_counter_reg(7),
      I3 => clk_led_i_11_n_0,
      I4 => clk_counter_reg(9),
      I5 => clk_counter_reg(12),
      O => clk_led_i_9_n_0
    );
clk_led_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_led_i_1_n_0,
      Q => clk_led,
      R => '0'
    );
\led_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_led,
      CE => '1',
      D => adc_dat_a_i(0),
      Q => led_out(0),
      R => '0'
    );
\led_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_led,
      CE => '1',
      D => adc_dat_a_i(1),
      Q => led_out(1),
      R => '0'
    );
\led_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_led,
      CE => '1',
      D => adc_dat_a_i(2),
      Q => led_out(2),
      R => '0'
    );
\led_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_led,
      CE => '1',
      D => adc_dat_a_i(3),
      Q => led_out(3),
      R => '0'
    );
\led_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_led,
      CE => '1',
      D => adc_dat_a_i(4),
      Q => led_out(4),
      R => '0'
    );
\led_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_led,
      CE => '1',
      D => adc_dat_a_i(5),
      Q => led_out(5),
      R => '0'
    );
\led_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_led,
      CE => '1',
      D => adc_dat_a_i(6),
      Q => led_out(6),
      R => '0'
    );
\led_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_led,
      CE => '1',
      D => adc_dat_a_i(7),
      Q => led_out(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_adc_processing_0_0 is
  port (
    adc_dat_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_adc_processing_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_adc_processing_0_0 : entity is "system_adc_processing_0_0,adc_processing,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_adc_processing_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_adc_processing_0_0 : entity is "adc_processing,Vivado 2022.1";
end system_adc_processing_0_0;

architecture STRUCTURE of system_adc_processing_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0";
begin
inst: entity work.system_adc_processing_0_0_adc_processing
     port map (
      adc_dat_a_i(7 downto 0) => adc_dat_a_i(7 downto 0),
      clk => clk,
      led_out(7 downto 0) => led_out(7 downto 0)
    );
end STRUCTURE;
