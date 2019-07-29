// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:rgb2ycbcr:1.0
// IP Revision: 2

(* X_CORE_INFO = "rgb2ycbcr,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_rgb2ycbcr_0_0,rgb2ycbcr,{}" *)
(* CORE_GENERATION_INFO = "m3_for_arty_a7_rgb2ycbcr_0_0,rgb2ycbcr,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=rgb2ycbcr,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,para_0183_10b=0000101111,para_0614_10b=0010011101,para_0062_10b=0000010000,para_0101_10b=0000011010,para_0338_10b=0001010110,para_0439_10b=0001110000,para_0399_10b=0001100110,para_0040_10b=0000001010,para_16_18b=000001000000000000,para_128_18b=001000000000000000}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module m3_for_arty_a7_rgb2ycbcr_0_0 (
  clk,
  i_rgb,
  i_h_sync,
  i_v_sync,
  i_data_en,
  o_rgb,
  o_ycbcr,
  o_gray,
  o_h_sync,
  o_v_sync,
  o_data_en
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /Clocks_and_Resets/clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire [23 : 0] i_rgb;
input wire i_h_sync;
input wire i_v_sync;
input wire i_data_en;
output wire [23 : 0] o_rgb;
output wire [23 : 0] o_ycbcr;
output wire [23 : 0] o_gray;
output wire o_h_sync;
output wire o_v_sync;
output wire o_data_en;

  rgb2ycbcr #(
    .para_0183_10b('B0000101111),
    .para_0614_10b('B0010011101),
    .para_0062_10b('B0000010000),
    .para_0101_10b('B0000011010),
    .para_0338_10b('B0001010110),
    .para_0439_10b('B0001110000),
    .para_0399_10b('B0001100110),
    .para_0040_10b('B0000001010),
    .para_16_18b('B000001000000000000),
    .para_128_18b('B001000000000000000)
  ) inst (
    .clk(clk),
    .i_rgb(i_rgb),
    .i_h_sync(i_h_sync),
    .i_v_sync(i_v_sync),
    .i_data_en(i_data_en),
    .o_rgb(o_rgb),
    .o_ycbcr(o_ycbcr),
    .o_gray(o_gray),
    .o_h_sync(o_h_sync),
    .o_v_sync(o_v_sync),
    .o_data_en(o_data_en)
  );
endmodule
