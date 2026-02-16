-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Nov 14 07:11:41 2025
-- Host        : DESKTOP-IGU5KAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/joebe/Documents/RFSoC/RFSoC-MTS-main_ORIGINAL/RFSoC-MTS-main/boards/RFSoC4x2/build_mts/mts/mts.gen/sources_1/bd/mts/ip/mts_ADCRAMcapture_0_0/mts_ADCRAMcapture_0_0_stub.vhdl
-- Design      : mts_ADCRAMcapture_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mts_ADCRAMcapture_0_0 is
  Port ( 
    bram_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_we : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC;
    bram_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_clk : out STD_LOGIC;
    bram_rst : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    CAP_AXIS_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    CAP_AXIS_tready : out STD_LOGIC;
    CAP_AXIS_tvalid : in STD_LOGIC;
    trig_cap : in STD_LOGIC
  );

end mts_ADCRAMcapture_0_0;

architecture stub of mts_ADCRAMcapture_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bram_wdata[255:0],bram_we[31:0],bram_en,bram_rdata[255:0],bram_addr[31:0],bram_clk,bram_rst,axis_clk,axis_aresetn,CAP_AXIS_tdata[255:0],CAP_AXIS_tready,CAP_AXIS_tvalid,trig_cap";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ADCRAMcapture,Vivado 2022.1";
begin
end;
