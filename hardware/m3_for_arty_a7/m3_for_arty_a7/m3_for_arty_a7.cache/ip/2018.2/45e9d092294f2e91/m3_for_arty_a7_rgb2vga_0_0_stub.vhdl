-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue May 28 15:07:29 2019
-- Host        : DESKTOP-0PTRBG6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ m3_for_arty_a7_rgb2vga_0_0_stub.vhdl
-- Design      : m3_for_arty_a7_rgb2vga_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    rgb_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_pVDE : in STD_LOGIC;
    rgb_pHSync : in STD_LOGIC;
    rgb_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    vga_pRed : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_pGreen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_pBlue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_pHSync : out STD_LOGIC;
    vga_pVSync : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rgb_pData[23:0],rgb_pVDE,rgb_pHSync,rgb_pVSync,PixelClk,vga_pRed[3:0],vga_pGreen[3:0],vga_pBlue[3:0],vga_pHSync,vga_pVSync";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rgb2vga,Vivado 2018.2";
begin
end;
