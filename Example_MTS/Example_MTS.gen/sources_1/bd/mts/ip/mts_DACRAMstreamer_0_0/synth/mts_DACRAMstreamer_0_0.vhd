-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:DACRAMstreamer:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY mts_DACRAMstreamer_0_0 IS
  PORT (
    portA_cpu_wdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
    portA_we : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    portA_en : OUT STD_LOGIC;
    portA_cpu_rdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
    portAcpu_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    portA_clk : OUT STD_LOGIC;
    portA_rst : OUT STD_LOGIC;
    axis_clk : IN STD_LOGIC;
    axis_aresetn : IN STD_LOGIC;
    axis_tdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
    axis_tready : IN STD_LOGIC;
    axis_tvalid : OUT STD_LOGIC;
    numSampleVectors : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    enable : IN STD_LOGIC
  );
END mts_DACRAMstreamer_0_0;

ARCHITECTURE mts_DACRAMstreamer_0_0_arch OF mts_DACRAMstreamer_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF mts_DACRAMstreamer_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT DACRAMstreamer IS
    GENERIC (
      DWIDTH : INTEGER;
      MEM_SIZE_BYTES : INTEGER;
      USE_VECTOR_COUNT : INTEGER
    );
    PORT (
      portA_cpu_wdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
      portA_we : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      portA_en : OUT STD_LOGIC;
      portA_cpu_rdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
      portAcpu_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      portA_clk : OUT STD_LOGIC;
      portA_rst : OUT STD_LOGIC;
      axis_clk : IN STD_LOGIC;
      axis_aresetn : IN STD_LOGIC;
      axis_tdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
      axis_tready : IN STD_LOGIC;
      axis_tvalid : OUT STD_LOGIC;
      numSampleVectors : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      enable : IN STD_LOGIC
    );
  END COMPONENT DACRAMstreamer;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF mts_DACRAMstreamer_0_0_arch: ARCHITECTURE IS "DACRAMstreamer,Vivado 2022.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF mts_DACRAMstreamer_0_0_arch : ARCHITECTURE IS "mts_DACRAMstreamer_0_0,DACRAMstreamer,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF mts_DACRAMstreamer_0_0_arch: ARCHITECTURE IS "mts_DACRAMstreamer_0_0,DACRAMstreamer,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=DACRAMstreamer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DWIDTH=256,MEM_SIZE_BYTES=131072,USE_VECTOR_COUNT=0}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF mts_DACRAMstreamer_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_aresetn: SIGNAL IS "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_clk: SIGNAL IS "XIL_INTERFACENAME axis_clk, ASSOCIATED_BUSIF AXIS, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clocktreeMTS/MTSclkwiz_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axis_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 axis_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_tdata: SIGNAL IS "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clocktreeMTS/MTSclkwiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF portA_clk: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A CLK";
  ATTRIBUTE X_INTERFACE_INFO OF portA_cpu_rdata: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A DOUT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF portA_cpu_wdata: SIGNAL IS "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF portA_cpu_wdata: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF portA_en: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A EN";
  ATTRIBUTE X_INTERFACE_INFO OF portA_rst: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A RST";
  ATTRIBUTE X_INTERFACE_INFO OF portA_we: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A WE";
  ATTRIBUTE X_INTERFACE_INFO OF portAcpu_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
BEGIN
  U0 : DACRAMstreamer
    GENERIC MAP (
      DWIDTH => 256,
      MEM_SIZE_BYTES => 131072,
      USE_VECTOR_COUNT => 0
    )
    PORT MAP (
      portA_cpu_wdata => portA_cpu_wdata,
      portA_we => portA_we,
      portA_en => portA_en,
      portA_cpu_rdata => portA_cpu_rdata,
      portAcpu_addr => portAcpu_addr,
      portA_clk => portA_clk,
      portA_rst => portA_rst,
      axis_clk => axis_clk,
      axis_aresetn => axis_aresetn,
      axis_tdata => axis_tdata,
      axis_tready => axis_tready,
      axis_tvalid => axis_tvalid,
      numSampleVectors => numSampleVectors,
      enable => enable
    );
END mts_DACRAMstreamer_0_0_arch;
