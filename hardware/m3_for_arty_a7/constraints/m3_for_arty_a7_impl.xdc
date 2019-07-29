# -----------------------------------------------------------------------------
#  The confidential and proprietary information contained in this file may
#  only be used by a person authorised under and to the extent permitted
#  by a subsisting licensing agreement from ARM limited.
#
#             (C) COPYRIGHT 2018 ARM limited.
#                 ALL RIGHTS RESERVED
#
#  This entire notice must be reproduced on all copies of this file
#  and copies of this file may only be made by a person if such person is
#  permitted to do so under the terms of a subsisting license agreement
#  from ARM limited.
#
#       SVN Information
#
#       Checked In          : $Date$
#
#       Revision            : $Revision$
#
#       Release Information : Cortex-M3 DesignStart-r0p0-00rel0
#
# -----------------------------------------------------------------------------
#  Project : Cortex-M3 Arty A7 Example design with V2C-DAPLink adaptor board
#
#  Purpose : Constraints for M3 on Arty A7 board - Implementation phase only
#
# -----------------------------------------------------------------------------

# --------------------------------------------------
# JTAG ports
# --------------------------------------------------

# JTAG connected to PMOD connector JC (nearest to device)
# Pin-out is detailed below
# JC1_P.  JC[1]
set_property PACKAGE_PIN U12 [get_ports TDO[0]]
# JC1_N.  JC[2]
set_property PACKAGE_PIN V12 [get_ports TDI]
# JC2_P.  JC[3]
set_property PACKAGE_PIN V10 [get_ports nTRST]
# Note TCK is shared with SWCLK.  Therefore to drive JTAG, besides the pins above
# the user must also connect to shield pin IO41 = connector IOH pin 16.

# --------------------------------------------------
# UART
# Although the UART is defined as a board interface
# and the DAPLink port is the correct type
# Vivado will not recognise the connection
# So need to specify the actual UART pads and IO standards
# --------------------------------------------------
#  <pin index="94" name ="usb_uart_rxd" iostandard="LVCMOS33" loc="A9"/>
#  <pin index="95" name ="usb_uart_txd" iostandard="LVCMOS33" loc="D10"/>

set_property PACKAGE_PIN C4 [get_ports usb_uart_rxd]

# --------------------------------------------------
# Define pins on Shield [41:26]
# Used for DAPLink adaptor board
# --------------------------------------------------

# From Digilent board file, part0_pins.xml
#  <pin index="74" name ="shield_dp26_dp41_tri_i_0" iostandard="LVCMOS33" loc="U11"/>
#  <pin index="75" name ="shield_dp26_dp41_tri_i_1" iostandard="LVCMOS33" loc="V16"/>
#  <pin index="76" name ="shield_dp26_dp41_tri_i_2" iostandard="LVCMOS33" loc="M13"/>
#  <pin index="77" name ="shield_dp26_dp41_tri_i_3" iostandard="LVCMOS33" loc="R10"/>
#  <pin index="78" name ="shield_dp26_dp41_tri_i_4" iostandard="LVCMOS33" loc="R11"/>
#  <pin index="79" name ="shield_dp26_dp41_tri_i_5" iostandard="LVCMOS33" loc="R13"/>
#  <pin index="80" name ="shield_dp26_dp41_tri_i_6" iostandard="LVCMOS33" loc="R15"/>
#  <pin index="81" name ="shield_dp26_dp41_tri_i_7" iostandard="LVCMOS33" loc="P15"/>
#  <pin index="82" name ="shield_dp26_dp41_tri_i_8" iostandard="LVCMOS33" loc="R16"/>
#  <pin index="83" name ="shield_dp26_dp41_tri_i_9" iostandard="LVCMOS33" loc="N16"/>
#  <pin index="84" name ="shield_dp26_dp41_tri_i_10" iostandard="LVCMOS33" loc="N14"/>
#  <pin index="85" name ="shield_dp26_dp41_tri_i_11" iostandard="LVCMOS33" loc="U17"/>
#  <pin index="86" name ="shield_dp26_dp41_tri_i_12" iostandard="LVCMOS33" loc="T18"/>
#  <pin index="87" name ="shield_dp26_dp41_tri_i_13" iostandard="LVCMOS33" loc="R18"/>
#  <pin index="88" name ="shield_dp26_dp41_tri_i_14" iostandard="LVCMOS33" loc="P18"/>
#  <pin index="89" name ="shield_dp26_dp41_tri_i_15" iostandard="LVCMOS33" loc="N17"/>

set_property PACKAGE_PIN V12 [get_ports {DAPLink_tri_o[0]}]
set_property PACKAGE_PIN H17 [get_ports {DAPLink_tri_o[2]}]
set_property PACKAGE_PIN K15 [get_ports {DAPLink_tri_o[3]}]
set_property PACKAGE_PIN J13 [get_ports {DAPLink_tri_o[4]}]
set_property PACKAGE_PIN N14 [get_ports {DAPLink_tri_o[5]}]
set_property PACKAGE_PIN R18 [get_ports {DAPLink_tri_o[6]}]
set_property PACKAGE_PIN V17 [get_ports {DAPLink_tri_o[7]}]
set_property PACKAGE_PIN U17 [get_ports {DAPLink_tri_o[8]}]
set_property PACKAGE_PIN V16 [get_ports {DAPLink_tri_o[10]}]
set_property PACKAGE_PIN T15 [get_ports {DAPLink_tri_o[11]}]
set_property PACKAGE_PIN U14 [get_ports {DAPLink_tri_o[12]}]
set_property PACKAGE_PIN T16 [get_ports {DAPLink_tri_o[13]}]
set_property PACKAGE_PIN D18 [get_ports {DAPLink_tri_o[14]}]
set_property PACKAGE_PIN C17 [get_ports {DAPLink_tri_o[15]}]


# Shield pin 41, (DAPLink[15]), is used for CS_CLK, (Serial Wire clock)
# As this is not a dedicated clock input pin, Vivado needs to set to allow use of this input as a clock
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {DAPLink_tri_o_IBUF[15]}]

# --------------------------------------------------
# Place output pin muxes near pins
# --------------------------------------------------
# REVISIT - remove as test for SWD
#create_pblock pblock_out_mux
#resize_pblock pblock_out_mux -add SLICE_X0Y0:SLICE_X1Y49
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26[35]_INST_0}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26[36]_INST_0}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26_IOBUF[30]_inst_*}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26_IOBUF[31]_inst_*}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26_IOBUF[32]_inst_*}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26_IOBUF[33]_inst_*}]]


# --------------------------------------------------
# Configuration pins
# --------------------------------------------------
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]


# --------------------------------------------------
# Bitstream generation
# --------------------------------------------------
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]


set_property PACKAGE_PIN D8 [get_ports {vga_pBlue_1[3]}]
set_property PACKAGE_PIN D7 [get_ports {vga_pBlue_1[2]}]
set_property PACKAGE_PIN C7 [get_ports {vga_pBlue_1[1]}]
set_property PACKAGE_PIN B7 [get_ports {vga_pBlue_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_xclk_o_0]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_pclk_i_0]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cmos_data_i_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pBlue_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pBlue_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pBlue_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pBlue_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pGreen_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pGreen_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pGreen_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pGreen_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pRed_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pRed_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pRed_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_pRed_1[0]}]
set_property PACKAGE_PIN N16 [get_ports {GPIO_0_tri_o[7]}]
set_property PACKAGE_PIN U16 [get_ports {DAPLink_tri_o[9]}]
set_property PACKAGE_PIN V11 [get_ports {DAPLink_tri_o[1]}]
set_property PACKAGE_PIN N6 [get_ports {DDR2_0_addr[12]}]
set_property PACKAGE_PIN K5 [get_ports {DDR2_0_addr[11]}]
set_property PACKAGE_PIN R2 [get_ports {DDR2_0_addr[10]}]
set_property PACKAGE_PIN N5 [get_ports {DDR2_0_addr[9]}]
set_property PACKAGE_PIN L4 [get_ports {DDR2_0_addr[8]}]
set_property PACKAGE_PIN N1 [get_ports {DDR2_0_addr[7]}]
set_property PACKAGE_PIN M2 [get_ports {DDR2_0_addr[6]}]
set_property PACKAGE_PIN P5 [get_ports {DDR2_0_addr[5]}]
set_property PACKAGE_PIN L3 [get_ports {DDR2_0_addr[4]}]
set_property PACKAGE_PIN T1 [get_ports {DDR2_0_addr[3]}]
set_property PACKAGE_PIN M6 [get_ports {DDR2_0_addr[2]}]
set_property PACKAGE_PIN P4 [get_ports {DDR2_0_addr[1]}]
set_property PACKAGE_PIN M4 [get_ports {DDR2_0_addr[0]}]
set_property PACKAGE_PIN R1 [get_ports {DDR2_0_ba[2]}]
set_property PACKAGE_PIN P3 [get_ports {DDR2_0_ba[1]}]
set_property PACKAGE_PIN P2 [get_ports {DDR2_0_ba[0]}]
set_property PACKAGE_PIN L6 [get_ports {DDR2_0_ck_p[0]}]
set_property PACKAGE_PIN L5 [get_ports {DDR2_0_ck_n[0]}]
set_property PACKAGE_PIN M1 [get_ports {DDR2_0_cke[0]}]
set_property PACKAGE_PIN K6 [get_ports {DDR2_0_cs_n[0]}]
set_property PACKAGE_PIN U1 [get_ports {DDR2_0_dm[1]}]
set_property PACKAGE_PIN T6 [get_ports {DDR2_0_dm[0]}]
set_property PACKAGE_PIN T3 [get_ports {DDR2_0_dq[15]}]
set_property PACKAGE_PIN V1 [get_ports {DDR2_0_dq[14]}]
set_property PACKAGE_PIN T4 [get_ports {DDR2_0_dq[13]}]
set_property PACKAGE_PIN V4 [get_ports {DDR2_0_dq[12]}]
set_property PACKAGE_PIN U4 [get_ports {DDR2_0_dq[11]}]
set_property PACKAGE_PIN V5 [get_ports {DDR2_0_dq[10]}]
set_property PACKAGE_PIN U3 [get_ports {DDR2_0_dq[9]}]
set_property PACKAGE_PIN R5 [get_ports {DDR2_0_dq[7]}]
set_property PACKAGE_PIN U6 [get_ports {DDR2_0_dq[6]}]
set_property PACKAGE_PIN R6 [get_ports {DDR2_0_dq[5]}]
set_property PACKAGE_PIN V7 [get_ports {DDR2_0_dq[4]}]
set_property PACKAGE_PIN U7 [get_ports {DDR2_0_dq[3]}]
set_property PACKAGE_PIN R8 [get_ports {DDR2_0_dq[2]}]
set_property PACKAGE_PIN V6 [get_ports {DDR2_0_dq[1]}]
set_property PACKAGE_PIN R7 [get_ports {DDR2_0_dq[0]}]
set_property PACKAGE_PIN U2 [get_ports {DDR2_0_dqs_p[1]}]
set_property PACKAGE_PIN V2 [get_ports {DDR2_0_dqs_n[1]}]
set_property PACKAGE_PIN U9 [get_ports {DDR2_0_dqs_p[0]}]
set_property PACKAGE_PIN V9 [get_ports {DDR2_0_dqs_n[0]}]
set_property PACKAGE_PIN M3 [get_ports {DDR2_0_odt[0]}]
set_property PACKAGE_PIN L1 [get_ports DDR2_0_cas_n]
set_property PACKAGE_PIN N4 [get_ports DDR2_0_ras_n]
set_property PACKAGE_PIN N2 [get_ports DDR2_0_we_n]
set_property PACKAGE_PIN T5 [get_ports {DDR2_0_dq[8]}]
set_property PACKAGE_PIN R11 [get_ports {GPIO_0_tri_o[6]}]
set_property PACKAGE_PIN G14 [get_ports {GPIO_0_tri_o[5]}]
set_property PACKAGE_PIN N15 [get_ports {GPIO_0_tri_o[4]}]
set_property PACKAGE_PIN M16 [get_ports {GPIO_0_tri_o[3]}]
set_property PACKAGE_PIN R12 [get_ports {GPIO_0_tri_o[2]}]
set_property PACKAGE_PIN V14 [get_ports {GPIO_0_tri_o[1]}]
set_property PACKAGE_PIN V15 [get_ports {GPIO_0_tri_o[0]}]
set_property PACKAGE_PIN A6 [get_ports {vga_pGreen_1[3]}]
set_property PACKAGE_PIN B6 [get_ports {vga_pGreen_1[2]}]
set_property PACKAGE_PIN A5 [get_ports {vga_pGreen_1[1]}]
set_property PACKAGE_PIN C6 [get_ports {vga_pGreen_1[0]}]
set_property PACKAGE_PIN A4 [get_ports {vga_pRed_1[3]}]
set_property PACKAGE_PIN C5 [get_ports {vga_pRed_1[2]}]
set_property PACKAGE_PIN B4 [get_ports {vga_pRed_1[1]}]
set_property PACKAGE_PIN A3 [get_ports {vga_pRed_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_href_i_0]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_vsync_i_0]
set_property IOSTANDARD LVCMOS33 [get_ports vga_pHSync_0]
set_property IOSTANDARD LVCMOS33 [get_ports vga_pVSync_0]
set_property PACKAGE_PIN B12 [get_ports vga_pVSync_0]
set_property PACKAGE_PIN B11 [get_ports vga_pHSync_0]
set_property PACKAGE_PIN G3 [get_ports IIC_0_sda_io]
set_property PACKAGE_PIN F3 [get_ports IIC_0_scl_io]
set_property PACKAGE_PIN G1 [get_ports cmos_href_i_0]
set_property PACKAGE_PIN G2 [get_ports cmos_vsync_i_0]
set_property PACKAGE_PIN H1 [get_ports cmos_xclk_o_0]
set_property PACKAGE_PIN G4 [get_ports cmos_pclk_i_0]
set_property PACKAGE_PIN H4 [get_ports {cmos_data_i_0[6]}]
set_property PACKAGE_PIN H2 [get_ports {cmos_data_i_0[7]}]
set_property PACKAGE_PIN E6 [get_ports {cmos_data_i_0[5]}]
set_property PACKAGE_PIN G6 [get_ports {cmos_data_i_0[4]}]
set_property PACKAGE_PIN J2 [get_ports {cmos_data_i_0[2]}]
set_property PACKAGE_PIN J4 [get_ports {cmos_data_i_0[3]}]
set_property PACKAGE_PIN J3 [get_ports {cmos_data_i_0[1]}]
set_property PACKAGE_PIN F6 [get_ports {cmos_data_i_0[0]}]
set_property PACKAGE_PIN E7 [get_ports {dout_0[1]}]
set_property PACKAGE_PIN K1 [get_ports {dout_0[0]}]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i_0_IBUF]

set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_io[0]}]
set_property PACKAGE_PIN G3 [get_ports {dip_switches_16bits_tri_io[1]}]
set_property PACKAGE_PIN F3 [get_ports {dip_switches_16bits_tri_io[0]}]
set_property PACKAGE_PIN D4 [get_ports usb_uart_txd]

set_property IOSTANDARD LVCMOS33 [get_ports i2c_sclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_sdat_0]
set_property PACKAGE_PIN G3 [get_ports i2c_sdat_0]
set_property PACKAGE_PIN F3 [get_ports i2c_sclk_0]

set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_1_tri_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_1_tri_i[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_1_tri_i[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_1_tri_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_1_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_1_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_1_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_1_tri_i[0]}]
set_property PACKAGE_PIN V10 [get_ports {GPIO_1_tri_i[7]}]
set_property PACKAGE_PIN U11 [get_ports {GPIO_1_tri_i[6]}]
set_property PACKAGE_PIN U12 [get_ports {GPIO_1_tri_i[5]}]
set_property PACKAGE_PIN H6 [get_ports {GPIO_1_tri_i[4]}]
set_property PACKAGE_PIN T13 [get_ports {GPIO_1_tri_i[3]}]
set_property PACKAGE_PIN R16 [get_ports {GPIO_1_tri_i[2]}]
set_property PACKAGE_PIN R13 [get_ports {GPIO_1_tri_i[1]}]
set_property PACKAGE_PIN U18 [get_ports {GPIO_1_tri_i[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {switch_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch_0[0]}]
set_property PACKAGE_PIN M13 [get_ports {switch_0[2]}]
set_property PACKAGE_PIN L16 [get_ports {switch_0[1]}]
set_property PACKAGE_PIN J15 [get_ports {switch_0[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {TFTSPI_tri_io[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TFTSPI_tri_io[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TFTSPI_tri_io[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TFTSPI_tri_io[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TFTSPI_tri_io[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TFTSPI_tri_io[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TFTSPI_tri_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TFTSPI_tri_io[0]}]
set_property PACKAGE_PIN D14 [get_ports {TFTSPI_tri_io[7]}]
set_property PACKAGE_PIN F16 [get_ports {TFTSPI_tri_io[6]}]
set_property PACKAGE_PIN G16 [get_ports {TFTSPI_tri_io[5]}]
set_property PACKAGE_PIN H14 [get_ports {TFTSPI_tri_io[4]}]
set_property PACKAGE_PIN E16 [get_ports {TFTSPI_tri_io[3]}]

set_property PACKAGE_PIN F16 [get_ports SPI_0_0_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_0_0_ss_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_0_0_ss_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_0_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_0_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_0_sck_io]
set_property PACKAGE_PIN G13 [get_ports {SPI_0_0_ss_io[1]}]
set_property PACKAGE_PIN H16 [get_ports {SPI_0_0_ss_io[0]}]
set_property PACKAGE_PIN H14 [get_ports {TFTSPI_tri_io[2]}]
set_property PACKAGE_PIN E16 [get_ports {TFTSPI_tri_io[1]}]
set_property PACKAGE_PIN G16 [get_ports {TFTSPI_tri_io[0]}]
set_property PACKAGE_PIN D14 [get_ports SPI_0_0_io0_io]
set_property PACKAGE_PIN F13 [get_ports SPI_0_0_io1_io]
