-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Nov 13 16:45:39 2025
-- Host        : DESKTOP-IGU5KAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mts_DACRAMstreamer_0_1 -prefix
--               mts_DACRAMstreamer_0_1_ mts_DACRAMstreamer_0_1_stub.vhdl
-- Design      : mts_DACRAMstreamer_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mts_DACRAMstreamer_0_1 is
  Port ( 
    portA_cpu_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    portA_we : out STD_LOGIC_VECTOR ( 31 downto 0 );
    portA_en : out STD_LOGIC;
    portA_cpu_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    portAcpu_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    portA_clk : out STD_LOGIC;
    portA_rst : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    axis_tready : in STD_LOGIC;
    axis_tvalid : out STD_LOGIC;
    numSampleVectors : in STD_LOGIC_VECTOR ( 11 downto 0 );
    enable : in STD_LOGIC
  );

end mts_DACRAMstreamer_0_1;

architecture stub of mts_DACRAMstreamer_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "portA_cpu_wdata[255:0],portA_we[31:0],portA_en,portA_cpu_rdata[255:0],portAcpu_addr[31:0],portA_clk,portA_rst,axis_clk,axis_aresetn,axis_tdata[255:0],axis_tready,axis_tvalid,numSampleVectors[11:0],enable";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DACRAMstreamer,Vivado 2022.1";
begin
end;
