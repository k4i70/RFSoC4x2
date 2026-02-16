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

-- IP VLNV: xilinx.com:module_ref:ADCRAMcapture:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY mts_ADCRAMcapture_0_1 IS
  PORT (
    bram_wdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
    bram_we : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram_en : OUT STD_LOGIC;
    bram_rdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
    bram_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bram_clk : OUT STD_LOGIC;
    bram_rst : OUT STD_LOGIC;
    axis_clk : IN STD_LOGIC;
    axis_aresetn : IN STD_LOGIC;
    CAP_AXIS_tdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
    CAP_AXIS_tready : OUT STD_LOGIC;
    CAP_AXIS_tvalid : IN STD_LOGIC;
    trig_cap : IN STD_LOGIC
  );
END mts_ADCRAMcapture_0_1;

ARCHITECTURE mts_ADCRAMcapture_0_1_arch OF mts_ADCRAMcapture_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF mts_ADCRAMcapture_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT ADCRAMcapture IS
    GENERIC (
      DWIDTH : INTEGER;
      MEM_SIZE_BYTES : INTEGER
    );
    PORT (
      bram_wdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
      bram_we : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram_en : OUT STD_LOGIC;
      bram_rdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
      bram_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bram_clk : OUT STD_LOGIC;
      bram_rst : OUT STD_LOGIC;
      axis_clk : IN STD_LOGIC;
      axis_aresetn : IN STD_LOGIC;
      CAP_AXIS_tdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
      CAP_AXIS_tready : OUT STD_LOGIC;
      CAP_AXIS_tvalid : IN STD_LOGIC;
      trig_cap : IN STD_LOGIC
    );
  END COMPONENT ADCRAMcapture;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF CAP_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME CAP_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clocktreeMTS/MTSclkwiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CAP_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 CAP_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF CAP_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 CAP_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF CAP_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 CAP_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_aresetn: SIGNAL IS "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_clk: SIGNAL IS "XIL_INTERFACENAME axis_clk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF CAP_AXIS, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clocktreeMTS/MTSclkwiz_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axis_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 axis_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF bram_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF bram_clk: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A CLK";
  ATTRIBUTE X_INTERFACE_INFO OF bram_en: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A EN";
  ATTRIBUTE X_INTERFACE_INFO OF bram_rdata: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF bram_rst: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF bram_wdata: SIGNAL IS "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 32768, MEM_WIDTH 256, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF bram_wdata: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF bram_we: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A WE";
BEGIN
  U0 : ADCRAMcapture
    GENERIC MAP (
      DWIDTH => 256,
      MEM_SIZE_BYTES => 131072
    )
    PORT MAP (
      bram_wdata => bram_wdata,
      bram_we => bram_we,
      bram_en => bram_en,
      bram_rdata => bram_rdata,
      bram_addr => bram_addr,
      bram_clk => bram_clk,
      bram_rst => bram_rst,
      axis_clk => axis_clk,
      axis_aresetn => axis_aresetn,
      CAP_AXIS_tdata => CAP_AXIS_tdata,
      CAP_AXIS_tready => CAP_AXIS_tready,
      CAP_AXIS_tvalid => CAP_AXIS_tvalid,
      trig_cap => trig_cap
    );
END mts_ADCRAMcapture_0_1_arch;
