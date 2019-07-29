-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue May 28 15:16:32 2019
-- Host        : DESKTOP-0PTRBG6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ m3_for_arty_a7_rgb_mux_0_0_sim_netlist.vhdl
-- Design      : m3_for_arty_a7_rgb_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_mux is
  port (
    o_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_rgb_3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_7 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_6 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_5 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_4 : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_mux is
  signal \o_rgb[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_rgb[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_rgb[9]_INST_0_i_2_n_0\ : STD_LOGIC;
begin
\o_rgb[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[0]_INST_0_i_1_n_0\,
      I1 => \o_rgb[0]_INST_0_i_2_n_0\,
      O => o_rgb(0),
      S => switch(2)
    );
\o_rgb[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(0),
      I1 => i_rgb_2(0),
      I2 => switch(1),
      I3 => i_rgb_1(0),
      I4 => switch(0),
      I5 => i_rgb_0(0),
      O => \o_rgb[0]_INST_0_i_1_n_0\
    );
\o_rgb[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(0),
      I1 => i_rgb_6(0),
      I2 => switch(1),
      I3 => i_rgb_5(0),
      I4 => switch(0),
      I5 => i_rgb_4(0),
      O => \o_rgb[0]_INST_0_i_2_n_0\
    );
\o_rgb[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[10]_INST_0_i_1_n_0\,
      I1 => \o_rgb[10]_INST_0_i_2_n_0\,
      O => o_rgb(10),
      S => switch(2)
    );
\o_rgb[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(10),
      I1 => i_rgb_2(10),
      I2 => switch(1),
      I3 => i_rgb_1(10),
      I4 => switch(0),
      I5 => i_rgb_0(10),
      O => \o_rgb[10]_INST_0_i_1_n_0\
    );
\o_rgb[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(10),
      I1 => i_rgb_6(10),
      I2 => switch(1),
      I3 => i_rgb_5(10),
      I4 => switch(0),
      I5 => i_rgb_4(10),
      O => \o_rgb[10]_INST_0_i_2_n_0\
    );
\o_rgb[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[11]_INST_0_i_1_n_0\,
      I1 => \o_rgb[11]_INST_0_i_2_n_0\,
      O => o_rgb(11),
      S => switch(2)
    );
\o_rgb[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(11),
      I1 => i_rgb_2(11),
      I2 => switch(1),
      I3 => i_rgb_1(11),
      I4 => switch(0),
      I5 => i_rgb_0(11),
      O => \o_rgb[11]_INST_0_i_1_n_0\
    );
\o_rgb[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(11),
      I1 => i_rgb_6(11),
      I2 => switch(1),
      I3 => i_rgb_5(11),
      I4 => switch(0),
      I5 => i_rgb_4(11),
      O => \o_rgb[11]_INST_0_i_2_n_0\
    );
\o_rgb[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[12]_INST_0_i_1_n_0\,
      I1 => \o_rgb[12]_INST_0_i_2_n_0\,
      O => o_rgb(12),
      S => switch(2)
    );
\o_rgb[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(12),
      I1 => i_rgb_2(12),
      I2 => switch(1),
      I3 => i_rgb_1(12),
      I4 => switch(0),
      I5 => i_rgb_0(12),
      O => \o_rgb[12]_INST_0_i_1_n_0\
    );
\o_rgb[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(12),
      I1 => i_rgb_6(12),
      I2 => switch(1),
      I3 => i_rgb_5(12),
      I4 => switch(0),
      I5 => i_rgb_4(12),
      O => \o_rgb[12]_INST_0_i_2_n_0\
    );
\o_rgb[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[13]_INST_0_i_1_n_0\,
      I1 => \o_rgb[13]_INST_0_i_2_n_0\,
      O => o_rgb(13),
      S => switch(2)
    );
\o_rgb[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(13),
      I1 => i_rgb_2(13),
      I2 => switch(1),
      I3 => i_rgb_1(13),
      I4 => switch(0),
      I5 => i_rgb_0(13),
      O => \o_rgb[13]_INST_0_i_1_n_0\
    );
\o_rgb[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(13),
      I1 => i_rgb_6(13),
      I2 => switch(1),
      I3 => i_rgb_5(13),
      I4 => switch(0),
      I5 => i_rgb_4(13),
      O => \o_rgb[13]_INST_0_i_2_n_0\
    );
\o_rgb[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[14]_INST_0_i_1_n_0\,
      I1 => \o_rgb[14]_INST_0_i_2_n_0\,
      O => o_rgb(14),
      S => switch(2)
    );
\o_rgb[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(14),
      I1 => i_rgb_2(14),
      I2 => switch(1),
      I3 => i_rgb_1(14),
      I4 => switch(0),
      I5 => i_rgb_0(14),
      O => \o_rgb[14]_INST_0_i_1_n_0\
    );
\o_rgb[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(14),
      I1 => i_rgb_6(14),
      I2 => switch(1),
      I3 => i_rgb_5(14),
      I4 => switch(0),
      I5 => i_rgb_4(14),
      O => \o_rgb[14]_INST_0_i_2_n_0\
    );
\o_rgb[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[15]_INST_0_i_1_n_0\,
      I1 => \o_rgb[15]_INST_0_i_2_n_0\,
      O => o_rgb(15),
      S => switch(2)
    );
\o_rgb[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(15),
      I1 => i_rgb_2(15),
      I2 => switch(1),
      I3 => i_rgb_1(15),
      I4 => switch(0),
      I5 => i_rgb_0(15),
      O => \o_rgb[15]_INST_0_i_1_n_0\
    );
\o_rgb[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(15),
      I1 => i_rgb_6(15),
      I2 => switch(1),
      I3 => i_rgb_5(15),
      I4 => switch(0),
      I5 => i_rgb_4(15),
      O => \o_rgb[15]_INST_0_i_2_n_0\
    );
\o_rgb[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[16]_INST_0_i_1_n_0\,
      I1 => \o_rgb[16]_INST_0_i_2_n_0\,
      O => o_rgb(16),
      S => switch(2)
    );
\o_rgb[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(16),
      I1 => i_rgb_2(16),
      I2 => switch(1),
      I3 => i_rgb_1(16),
      I4 => switch(0),
      I5 => i_rgb_0(16),
      O => \o_rgb[16]_INST_0_i_1_n_0\
    );
\o_rgb[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(16),
      I1 => i_rgb_6(16),
      I2 => switch(1),
      I3 => i_rgb_5(16),
      I4 => switch(0),
      I5 => i_rgb_4(16),
      O => \o_rgb[16]_INST_0_i_2_n_0\
    );
\o_rgb[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[17]_INST_0_i_1_n_0\,
      I1 => \o_rgb[17]_INST_0_i_2_n_0\,
      O => o_rgb(17),
      S => switch(2)
    );
\o_rgb[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(17),
      I1 => i_rgb_2(17),
      I2 => switch(1),
      I3 => i_rgb_1(17),
      I4 => switch(0),
      I5 => i_rgb_0(17),
      O => \o_rgb[17]_INST_0_i_1_n_0\
    );
\o_rgb[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(17),
      I1 => i_rgb_6(17),
      I2 => switch(1),
      I3 => i_rgb_5(17),
      I4 => switch(0),
      I5 => i_rgb_4(17),
      O => \o_rgb[17]_INST_0_i_2_n_0\
    );
\o_rgb[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[18]_INST_0_i_1_n_0\,
      I1 => \o_rgb[18]_INST_0_i_2_n_0\,
      O => o_rgb(18),
      S => switch(2)
    );
\o_rgb[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(18),
      I1 => i_rgb_2(18),
      I2 => switch(1),
      I3 => i_rgb_1(18),
      I4 => switch(0),
      I5 => i_rgb_0(18),
      O => \o_rgb[18]_INST_0_i_1_n_0\
    );
\o_rgb[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(18),
      I1 => i_rgb_6(18),
      I2 => switch(1),
      I3 => i_rgb_5(18),
      I4 => switch(0),
      I5 => i_rgb_4(18),
      O => \o_rgb[18]_INST_0_i_2_n_0\
    );
\o_rgb[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[19]_INST_0_i_1_n_0\,
      I1 => \o_rgb[19]_INST_0_i_2_n_0\,
      O => o_rgb(19),
      S => switch(2)
    );
\o_rgb[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(19),
      I1 => i_rgb_2(19),
      I2 => switch(1),
      I3 => i_rgb_1(19),
      I4 => switch(0),
      I5 => i_rgb_0(19),
      O => \o_rgb[19]_INST_0_i_1_n_0\
    );
\o_rgb[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(19),
      I1 => i_rgb_6(19),
      I2 => switch(1),
      I3 => i_rgb_5(19),
      I4 => switch(0),
      I5 => i_rgb_4(19),
      O => \o_rgb[19]_INST_0_i_2_n_0\
    );
\o_rgb[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[1]_INST_0_i_1_n_0\,
      I1 => \o_rgb[1]_INST_0_i_2_n_0\,
      O => o_rgb(1),
      S => switch(2)
    );
\o_rgb[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(1),
      I1 => i_rgb_2(1),
      I2 => switch(1),
      I3 => i_rgb_1(1),
      I4 => switch(0),
      I5 => i_rgb_0(1),
      O => \o_rgb[1]_INST_0_i_1_n_0\
    );
\o_rgb[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(1),
      I1 => i_rgb_6(1),
      I2 => switch(1),
      I3 => i_rgb_5(1),
      I4 => switch(0),
      I5 => i_rgb_4(1),
      O => \o_rgb[1]_INST_0_i_2_n_0\
    );
\o_rgb[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[20]_INST_0_i_1_n_0\,
      I1 => \o_rgb[20]_INST_0_i_2_n_0\,
      O => o_rgb(20),
      S => switch(2)
    );
\o_rgb[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(20),
      I1 => i_rgb_2(20),
      I2 => switch(1),
      I3 => i_rgb_1(20),
      I4 => switch(0),
      I5 => i_rgb_0(20),
      O => \o_rgb[20]_INST_0_i_1_n_0\
    );
\o_rgb[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(20),
      I1 => i_rgb_6(20),
      I2 => switch(1),
      I3 => i_rgb_5(20),
      I4 => switch(0),
      I5 => i_rgb_4(20),
      O => \o_rgb[20]_INST_0_i_2_n_0\
    );
\o_rgb[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[21]_INST_0_i_1_n_0\,
      I1 => \o_rgb[21]_INST_0_i_2_n_0\,
      O => o_rgb(21),
      S => switch(2)
    );
\o_rgb[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(21),
      I1 => i_rgb_2(21),
      I2 => switch(1),
      I3 => i_rgb_1(21),
      I4 => switch(0),
      I5 => i_rgb_0(21),
      O => \o_rgb[21]_INST_0_i_1_n_0\
    );
\o_rgb[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(21),
      I1 => i_rgb_6(21),
      I2 => switch(1),
      I3 => i_rgb_5(21),
      I4 => switch(0),
      I5 => i_rgb_4(21),
      O => \o_rgb[21]_INST_0_i_2_n_0\
    );
\o_rgb[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[22]_INST_0_i_1_n_0\,
      I1 => \o_rgb[22]_INST_0_i_2_n_0\,
      O => o_rgb(22),
      S => switch(2)
    );
\o_rgb[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(22),
      I1 => i_rgb_2(22),
      I2 => switch(1),
      I3 => i_rgb_1(22),
      I4 => switch(0),
      I5 => i_rgb_0(22),
      O => \o_rgb[22]_INST_0_i_1_n_0\
    );
\o_rgb[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(22),
      I1 => i_rgb_6(22),
      I2 => switch(1),
      I3 => i_rgb_5(22),
      I4 => switch(0),
      I5 => i_rgb_4(22),
      O => \o_rgb[22]_INST_0_i_2_n_0\
    );
\o_rgb[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[23]_INST_0_i_1_n_0\,
      I1 => \o_rgb[23]_INST_0_i_2_n_0\,
      O => o_rgb(23),
      S => switch(2)
    );
\o_rgb[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(23),
      I1 => i_rgb_2(23),
      I2 => switch(1),
      I3 => i_rgb_1(23),
      I4 => switch(0),
      I5 => i_rgb_0(23),
      O => \o_rgb[23]_INST_0_i_1_n_0\
    );
\o_rgb[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(23),
      I1 => i_rgb_6(23),
      I2 => switch(1),
      I3 => i_rgb_5(23),
      I4 => switch(0),
      I5 => i_rgb_4(23),
      O => \o_rgb[23]_INST_0_i_2_n_0\
    );
\o_rgb[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[2]_INST_0_i_1_n_0\,
      I1 => \o_rgb[2]_INST_0_i_2_n_0\,
      O => o_rgb(2),
      S => switch(2)
    );
\o_rgb[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(2),
      I1 => i_rgb_2(2),
      I2 => switch(1),
      I3 => i_rgb_1(2),
      I4 => switch(0),
      I5 => i_rgb_0(2),
      O => \o_rgb[2]_INST_0_i_1_n_0\
    );
\o_rgb[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(2),
      I1 => i_rgb_6(2),
      I2 => switch(1),
      I3 => i_rgb_5(2),
      I4 => switch(0),
      I5 => i_rgb_4(2),
      O => \o_rgb[2]_INST_0_i_2_n_0\
    );
\o_rgb[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[3]_INST_0_i_1_n_0\,
      I1 => \o_rgb[3]_INST_0_i_2_n_0\,
      O => o_rgb(3),
      S => switch(2)
    );
\o_rgb[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(3),
      I1 => i_rgb_2(3),
      I2 => switch(1),
      I3 => i_rgb_1(3),
      I4 => switch(0),
      I5 => i_rgb_0(3),
      O => \o_rgb[3]_INST_0_i_1_n_0\
    );
\o_rgb[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(3),
      I1 => i_rgb_6(3),
      I2 => switch(1),
      I3 => i_rgb_5(3),
      I4 => switch(0),
      I5 => i_rgb_4(3),
      O => \o_rgb[3]_INST_0_i_2_n_0\
    );
\o_rgb[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[4]_INST_0_i_1_n_0\,
      I1 => \o_rgb[4]_INST_0_i_2_n_0\,
      O => o_rgb(4),
      S => switch(2)
    );
\o_rgb[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(4),
      I1 => i_rgb_2(4),
      I2 => switch(1),
      I3 => i_rgb_1(4),
      I4 => switch(0),
      I5 => i_rgb_0(4),
      O => \o_rgb[4]_INST_0_i_1_n_0\
    );
\o_rgb[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(4),
      I1 => i_rgb_6(4),
      I2 => switch(1),
      I3 => i_rgb_5(4),
      I4 => switch(0),
      I5 => i_rgb_4(4),
      O => \o_rgb[4]_INST_0_i_2_n_0\
    );
\o_rgb[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[5]_INST_0_i_1_n_0\,
      I1 => \o_rgb[5]_INST_0_i_2_n_0\,
      O => o_rgb(5),
      S => switch(2)
    );
\o_rgb[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(5),
      I1 => i_rgb_2(5),
      I2 => switch(1),
      I3 => i_rgb_1(5),
      I4 => switch(0),
      I5 => i_rgb_0(5),
      O => \o_rgb[5]_INST_0_i_1_n_0\
    );
\o_rgb[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(5),
      I1 => i_rgb_6(5),
      I2 => switch(1),
      I3 => i_rgb_5(5),
      I4 => switch(0),
      I5 => i_rgb_4(5),
      O => \o_rgb[5]_INST_0_i_2_n_0\
    );
\o_rgb[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[6]_INST_0_i_1_n_0\,
      I1 => \o_rgb[6]_INST_0_i_2_n_0\,
      O => o_rgb(6),
      S => switch(2)
    );
\o_rgb[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(6),
      I1 => i_rgb_2(6),
      I2 => switch(1),
      I3 => i_rgb_1(6),
      I4 => switch(0),
      I5 => i_rgb_0(6),
      O => \o_rgb[6]_INST_0_i_1_n_0\
    );
\o_rgb[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(6),
      I1 => i_rgb_6(6),
      I2 => switch(1),
      I3 => i_rgb_5(6),
      I4 => switch(0),
      I5 => i_rgb_4(6),
      O => \o_rgb[6]_INST_0_i_2_n_0\
    );
\o_rgb[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[7]_INST_0_i_1_n_0\,
      I1 => \o_rgb[7]_INST_0_i_2_n_0\,
      O => o_rgb(7),
      S => switch(2)
    );
\o_rgb[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(7),
      I1 => i_rgb_2(7),
      I2 => switch(1),
      I3 => i_rgb_1(7),
      I4 => switch(0),
      I5 => i_rgb_0(7),
      O => \o_rgb[7]_INST_0_i_1_n_0\
    );
\o_rgb[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(7),
      I1 => i_rgb_6(7),
      I2 => switch(1),
      I3 => i_rgb_5(7),
      I4 => switch(0),
      I5 => i_rgb_4(7),
      O => \o_rgb[7]_INST_0_i_2_n_0\
    );
\o_rgb[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[8]_INST_0_i_1_n_0\,
      I1 => \o_rgb[8]_INST_0_i_2_n_0\,
      O => o_rgb(8),
      S => switch(2)
    );
\o_rgb[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(8),
      I1 => i_rgb_2(8),
      I2 => switch(1),
      I3 => i_rgb_1(8),
      I4 => switch(0),
      I5 => i_rgb_0(8),
      O => \o_rgb[8]_INST_0_i_1_n_0\
    );
\o_rgb[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(8),
      I1 => i_rgb_6(8),
      I2 => switch(1),
      I3 => i_rgb_5(8),
      I4 => switch(0),
      I5 => i_rgb_4(8),
      O => \o_rgb[8]_INST_0_i_2_n_0\
    );
\o_rgb[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_rgb[9]_INST_0_i_1_n_0\,
      I1 => \o_rgb[9]_INST_0_i_2_n_0\,
      O => o_rgb(9),
      S => switch(2)
    );
\o_rgb[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_3(9),
      I1 => i_rgb_2(9),
      I2 => switch(1),
      I3 => i_rgb_1(9),
      I4 => switch(0),
      I5 => i_rgb_0(9),
      O => \o_rgb[9]_INST_0_i_1_n_0\
    );
\o_rgb[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_rgb_7(9),
      I1 => i_rgb_6(9),
      I2 => switch(1),
      I3 => i_rgb_5(9),
      I4 => switch(0),
      I5 => i_rgb_4(9),
      O => \o_rgb[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_rgb_0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_4 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_5 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_6 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_rgb_7 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 2 downto 0 );
    o_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "m3_for_arty_a7_rgb_mux_0_0,rgb_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rgb_mux,Vivado 2018.2.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb_mux
     port map (
      i_rgb_0(23 downto 0) => i_rgb_0(23 downto 0),
      i_rgb_1(23 downto 0) => i_rgb_1(23 downto 0),
      i_rgb_2(23 downto 0) => i_rgb_2(23 downto 0),
      i_rgb_3(23 downto 0) => i_rgb_3(23 downto 0),
      i_rgb_4(23 downto 0) => i_rgb_4(23 downto 0),
      i_rgb_5(23 downto 0) => i_rgb_5(23 downto 0),
      i_rgb_6(23 downto 0) => i_rgb_6(23 downto 0),
      i_rgb_7(23 downto 0) => i_rgb_7(23 downto 0),
      o_rgb(23 downto 0) => o_rgb(23 downto 0),
      switch(2 downto 0) => switch(2 downto 0)
    );
end STRUCTURE;
