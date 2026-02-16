// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Nov 13 16:45:39 2025
// Host        : DESKTOP-IGU5KAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mts_DACRAMstreamer_0_0 -prefix
//               mts_DACRAMstreamer_0_0_ mts_DACRAMstreamer_0_1_stub.v
// Design      : mts_DACRAMstreamer_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DACRAMstreamer,Vivado 2022.1" *)
module mts_DACRAMstreamer_0_0(portA_cpu_wdata, portA_we, portA_en, 
  portA_cpu_rdata, portAcpu_addr, portA_clk, portA_rst, axis_clk, axis_aresetn, axis_tdata, 
  axis_tready, axis_tvalid, numSampleVectors, enable)
/* synthesis syn_black_box black_box_pad_pin="portA_cpu_wdata[255:0],portA_we[31:0],portA_en,portA_cpu_rdata[255:0],portAcpu_addr[31:0],portA_clk,portA_rst,axis_clk,axis_aresetn,axis_tdata[255:0],axis_tready,axis_tvalid,numSampleVectors[11:0],enable" */;
  output [255:0]portA_cpu_wdata;
  output [31:0]portA_we;
  output portA_en;
  input [255:0]portA_cpu_rdata;
  output [31:0]portAcpu_addr;
  output portA_clk;
  output portA_rst;
  input axis_clk;
  input axis_aresetn;
  output [255:0]axis_tdata;
  input axis_tready;
  output axis_tvalid;
  input [11:0]numSampleVectors;
  input enable;
endmodule
