// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Nov 14 07:20:42 2025
// Host        : DESKTOP-IGU5KAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/joebe/Documents/RFSoC/RFSoC-MTS-main_ORIGINAL/RFSoC-MTS-main/boards/RFSoC4x2/build_mts/mts/mts.gen/sources_1/bd/mts/ip/mts_axis_broadcaster_0_0/mts_axis_broadcaster_0_0_stub.v
// Design      : mts_axis_broadcaster_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_mts_axis_broadcaster_0_0,Vivado 2022.1" *)
module mts_axis_broadcaster_0_0(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, m_axis_tvalid, m_axis_tready, m_axis_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[127:0],m_axis_tvalid[3:0],m_axis_tready[3:0],m_axis_tdata[511:0]" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  output [3:0]m_axis_tvalid;
  input [3:0]m_axis_tready;
  output [511:0]m_axis_tdata;
endmodule
