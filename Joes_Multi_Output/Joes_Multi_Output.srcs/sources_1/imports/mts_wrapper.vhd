--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Thu Nov  6 11:18:24 2025
--Host        : DESKTOP-IGU5KAN running 64-bit major release  (build 9200)
--Command     : generate_target mts_wrapper.bd
--Design      : mts_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mts_wrapper is
  port (
    PL_CLK : in STD_LOGIC_VECTOR ( 0 to 0 );
    PL_SYSREF : in STD_LOGIC_VECTOR ( 0 to 0 );
    adc2_clk_clk_n : in STD_LOGIC;
    adc2_clk_clk_p : in STD_LOGIC;
    dac0_clk_clk_n : in STD_LOGIC;
    dac0_clk_clk_p : in STD_LOGIC;
    dac2_clk_clk_n : in STD_LOGIC;
    dac2_clk_clk_p : in STD_LOGIC;
    ddr4_pl_act_n : out STD_LOGIC;
    ddr4_pl_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    ddr4_pl_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr4_pl_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_dm_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr4_pl_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    ddr4_pl_dqs_c : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr4_pl_dqs_t : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr4_pl_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_reset_n : out STD_LOGIC;
    sys_clk_ddr4_clk_n : in STD_LOGIC;
    sys_clk_ddr4_clk_p : in STD_LOGIC;
    sysref_in_diff_n : in STD_LOGIC;
    sysref_in_diff_p : in STD_LOGIC;
    vin0_01_v_n : in STD_LOGIC;
    vin0_01_v_p : in STD_LOGIC;
    vin0_23_v_n : in STD_LOGIC;
    vin0_23_v_p : in STD_LOGIC;
    vin1_01_v_n : in STD_LOGIC;
    vin1_01_v_p : in STD_LOGIC;
    vin2_01_v_n : in STD_LOGIC;
    vin2_01_v_p : in STD_LOGIC;
    vin2_23_v_n : in STD_LOGIC;
    vin2_23_v_p : in STD_LOGIC;
    vout00_v_n : out STD_LOGIC;
    vout00_v_p : out STD_LOGIC;
    vout20_v_n : out STD_LOGIC;
    vout20_v_p : out STD_LOGIC
  );
end mts_wrapper;

architecture STRUCTURE of mts_wrapper is
  component mts is
  port (
    PL_CLK : in STD_LOGIC_VECTOR ( 0 to 0 );
    PL_SYSREF : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk_ddr4_clk_n : in STD_LOGIC;
    sys_clk_ddr4_clk_p : in STD_LOGIC;
    adc2_clk_clk_n : in STD_LOGIC;
    adc2_clk_clk_p : in STD_LOGIC;
    dac2_clk_clk_n : in STD_LOGIC;
    dac2_clk_clk_p : in STD_LOGIC;
    ddr4_pl_act_n : out STD_LOGIC;
    ddr4_pl_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    ddr4_pl_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr4_pl_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_dm_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr4_pl_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    ddr4_pl_dqs_c : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr4_pl_dqs_t : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr4_pl_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr4_pl_reset_n : out STD_LOGIC;
    sysref_in_diff_n : in STD_LOGIC;
    sysref_in_diff_p : in STD_LOGIC;
    vout00_v_n : out STD_LOGIC;
    vout00_v_p : out STD_LOGIC;
    vout20_v_n : out STD_LOGIC;
    vout20_v_p : out STD_LOGIC;
    vin0_01_v_n : in STD_LOGIC;
    vin0_01_v_p : in STD_LOGIC;
    vin0_23_v_n : in STD_LOGIC;
    vin0_23_v_p : in STD_LOGIC;
    vin1_01_v_n : in STD_LOGIC;
    vin1_01_v_p : in STD_LOGIC;
    vin2_01_v_n : in STD_LOGIC;
    vin2_01_v_p : in STD_LOGIC;
    vin2_23_v_n : in STD_LOGIC;
    vin2_23_v_p : in STD_LOGIC;
    dac0_clk_clk_n : in STD_LOGIC;
    dac0_clk_clk_p : in STD_LOGIC
  );
  end component mts;
begin
mts_i: component mts
     port map (
      PL_CLK(0) => PL_CLK(0),
      PL_SYSREF(0) => PL_SYSREF(0),
      adc2_clk_clk_n => adc2_clk_clk_n,
      adc2_clk_clk_p => adc2_clk_clk_p,
      dac0_clk_clk_n => dac0_clk_clk_n,
      dac0_clk_clk_p => dac0_clk_clk_p,
      dac2_clk_clk_n => dac2_clk_clk_n,
      dac2_clk_clk_p => dac2_clk_clk_p,
      ddr4_pl_act_n => ddr4_pl_act_n,
      ddr4_pl_adr(16 downto 0) => ddr4_pl_adr(16 downto 0),
      ddr4_pl_ba(1 downto 0) => ddr4_pl_ba(1 downto 0),
      ddr4_pl_bg(0) => ddr4_pl_bg(0),
      ddr4_pl_ck_c(0) => ddr4_pl_ck_c(0),
      ddr4_pl_ck_t(0) => ddr4_pl_ck_t(0),
      ddr4_pl_cke(0) => ddr4_pl_cke(0),
      ddr4_pl_cs_n(0) => ddr4_pl_cs_n(0),
      ddr4_pl_dm_n(7 downto 0) => ddr4_pl_dm_n(7 downto 0),
      ddr4_pl_dq(63 downto 0) => ddr4_pl_dq(63 downto 0),
      ddr4_pl_dqs_c(7 downto 0) => ddr4_pl_dqs_c(7 downto 0),
      ddr4_pl_dqs_t(7 downto 0) => ddr4_pl_dqs_t(7 downto 0),
      ddr4_pl_odt(0) => ddr4_pl_odt(0),
      ddr4_pl_reset_n => ddr4_pl_reset_n,
      sys_clk_ddr4_clk_n => sys_clk_ddr4_clk_n,
      sys_clk_ddr4_clk_p => sys_clk_ddr4_clk_p,
      sysref_in_diff_n => sysref_in_diff_n,
      sysref_in_diff_p => sysref_in_diff_p,
      vin0_01_v_n => vin0_01_v_n,
      vin0_01_v_p => vin0_01_v_p,
      vin0_23_v_n => vin0_23_v_n,
      vin0_23_v_p => vin0_23_v_p,
      vin1_01_v_n => vin1_01_v_n,
      vin1_01_v_p => vin1_01_v_p,
      vin2_01_v_n => vin2_01_v_n,
      vin2_01_v_p => vin2_01_v_p,
      vin2_23_v_n => vin2_23_v_n,
      vin2_23_v_p => vin2_23_v_p,
      vout00_v_n => vout00_v_n,
      vout00_v_p => vout00_v_p,
      vout20_v_n => vout20_v_n,
      vout20_v_p => vout20_v_p
    );
end STRUCTURE;
