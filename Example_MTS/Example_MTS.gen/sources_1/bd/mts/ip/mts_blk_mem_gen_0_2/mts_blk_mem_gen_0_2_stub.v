// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Nov 14 07:12:27 2025
// Host        : DESKTOP-IGU5KAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mts_blk_mem_gen_0_2 -prefix
//               mts_blk_mem_gen_0_2_ mts_blk_mem_gen_0_0_stub.v
// Design      : mts_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *)
module mts_blk_mem_gen_0_2(clka, rsta, ena, wea, addra, dina, douta, clkb, rstb, enb, 
  web, addrb, dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,wea[31:0],addra[31:0],dina[255:0],douta[255:0],clkb,rstb,enb,web[31:0],addrb[31:0],dinb[255:0],doutb[255:0]" */;
  input clka;
  input rsta;
  input ena;
  input [31:0]wea;
  input [31:0]addra;
  input [255:0]dina;
  output [255:0]douta;
  input clkb;
  input rstb;
  input enb;
  input [31:0]web;
  input [31:0]addrb;
  input [255:0]dinb;
  output [255:0]doutb;
endmodule
