--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Tue Dec 16 08:07:46 2025
--Host        : DESKTOP-IGU5KAN running 64-bit major release  (build 9200)
--Command     : generate_target mts.bd
--Design      : mts
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clocktreeMTS_imp_ZMYI0T is
  port (
    PL_CLK : in STD_LOGIC_VECTOR ( 0 to 0 );
    PL_SYSREF : in STD_LOGIC_VECTOR ( 0 to 0 );
    UserSYSREF : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    clkRF : out STD_LOGIC;
    clkRFdiv2 : out STD_LOGIC;
    egress_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    ext_reset_in : in STD_LOGIC;
    ingress_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_lite_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_lite_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end clocktreeMTS_imp_ZMYI0T;

architecture STRUCTURE of clocktreeMTS_imp_ZMYI0T is
  component mts_BUFG_PL_CLK_0 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_BUFG_PL_CLK_0;
  component mts_MTSclkwiz_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    clk_stop : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_glitch : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interrupt : out STD_LOGIC;
    clk_oor : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component mts_MTSclkwiz_0;
  component mts_PSreset_control_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_PSreset_control_0;
  component mts_RFegressReset_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_RFegressReset_0;
  component mts_RFingressReset_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_RFingressReset_0;
  component mts_synchronizeSYSREF_0 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_synchronizeSYSREF_0;
  signal BUFG_I_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MTSclkwiz_interrupt : STD_LOGIC;
  signal PSreset_control_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RFegressReset_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RFingressReset_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clk_wiz_adc0_clk_out2 : STD_LOGIC;
  signal control_interconnect_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M07_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M07_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M07_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M07_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M07_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M07_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M07_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M07_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M07_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M07_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal src_in_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal synchronizeSYSREF_dest_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_0_BUFG_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC;
  signal NLW_MTSclkwiz_clk_glitch_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MTSclkwiz_clk_oor_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MTSclkwiz_clk_stop_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PSreset_control_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_PSreset_control_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_PSreset_control_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFegressReset_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_RFegressReset_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFegressReset_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFegressReset_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFingressReset_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_RFingressReset_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFingressReset_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFingressReset_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  BUFG_I_0_1(0) <= PL_CLK(0);
  UserSYSREF(0) <= synchronizeSYSREF_dest_out(0);
  bus_struct_reset(0) <= PSreset_control_bus_struct_reset(0);
  clkRF <= clk_wiz_0_clk_out1;
  clkRFdiv2 <= clk_wiz_adc0_clk_out2;
  control_interconnect_M07_AXI_ARADDR(39 downto 0) <= s_axi_lite_araddr(39 downto 0);
  control_interconnect_M07_AXI_ARVALID(0) <= s_axi_lite_arvalid(0);
  control_interconnect_M07_AXI_AWADDR(39 downto 0) <= s_axi_lite_awaddr(39 downto 0);
  control_interconnect_M07_AXI_AWVALID(0) <= s_axi_lite_awvalid(0);
  control_interconnect_M07_AXI_BREADY(0) <= s_axi_lite_bready(0);
  control_interconnect_M07_AXI_RREADY(0) <= s_axi_lite_rready(0);
  control_interconnect_M07_AXI_WDATA(31 downto 0) <= s_axi_lite_wdata(31 downto 0);
  control_interconnect_M07_AXI_WSTRB(3 downto 0) <= s_axi_lite_wstrb(3 downto 0);
  control_interconnect_M07_AXI_WVALID(0) <= s_axi_lite_wvalid(0);
  egress_aresetn(0) <= RFegressReset_peripheral_aresetn(0);
  ingress_aresetn(0) <= RFingressReset_peripheral_aresetn(0);
  interrupt <= MTSclkwiz_interrupt;
  s_axi_aresetn(0) <= proc_sys_reset_0_peripheral_aresetn(0);
  s_axi_lite_arready(0) <= control_interconnect_M07_AXI_ARREADY;
  s_axi_lite_awready(0) <= control_interconnect_M07_AXI_AWREADY;
  s_axi_lite_bresp(1 downto 0) <= control_interconnect_M07_AXI_BRESP(1 downto 0);
  s_axi_lite_bvalid(0) <= control_interconnect_M07_AXI_BVALID;
  s_axi_lite_rdata(31 downto 0) <= control_interconnect_M07_AXI_RDATA(31 downto 0);
  s_axi_lite_rresp(1 downto 0) <= control_interconnect_M07_AXI_RRESP(1 downto 0);
  s_axi_lite_rvalid(0) <= control_interconnect_M07_AXI_RVALID;
  s_axi_lite_wready(0) <= control_interconnect_M07_AXI_WREADY;
  src_in_0_1(0) <= PL_SYSREF(0);
  zynq_ultra_ps_e_0_pl_clk0 <= s_axi_aclk;
  zynq_ultra_ps_e_0_pl_resetn0 <= ext_reset_in;
BUFG_PL_CLK: component mts_BUFG_PL_CLK_0
     port map (
      BUFG_I(0) => BUFG_I_0_1(0),
      BUFG_O(0) => util_ds_buf_0_BUFG_O(0)
    );
MTSclkwiz: component mts_MTSclkwiz_0
     port map (
      clk_glitch(3 downto 0) => NLW_MTSclkwiz_clk_glitch_UNCONNECTED(3 downto 0),
      clk_in1 => util_ds_buf_0_BUFG_O(0),
      clk_oor(3 downto 0) => NLW_MTSclkwiz_clk_oor_UNCONNECTED(3 downto 0),
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_adc0_clk_out2,
      clk_stop(3 downto 0) => NLW_MTSclkwiz_clk_stop_UNCONNECTED(3 downto 0),
      interrupt => MTSclkwiz_interrupt,
      locked => clk_wiz_0_locked,
      ref_clk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(10 downto 0) => control_interconnect_M07_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => control_interconnect_M07_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M07_AXI_ARVALID(0),
      s_axi_awaddr(10 downto 0) => control_interconnect_M07_AXI_AWADDR(10 downto 0),
      s_axi_awready => control_interconnect_M07_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M07_AXI_AWVALID(0),
      s_axi_bready => control_interconnect_M07_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => control_interconnect_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M07_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => control_interconnect_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M07_AXI_WVALID(0)
    );
PSreset_control: component mts_PSreset_control_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => PSreset_control_bus_struct_reset(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      interconnect_aresetn(0) => NLW_PSreset_control_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_PSreset_control_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_PSreset_control_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => zynq_ultra_ps_e_0_pl_clk0
    );
RFegressReset: component mts_RFegressReset_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_RFegressReset_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      interconnect_aresetn(0) => NLW_RFegressReset_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_RFegressReset_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => RFegressReset_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_RFegressReset_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_adc0_clk_out2
    );
RFingressReset: component mts_RFingressReset_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_RFingressReset_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => proc_sys_reset_0_peripheral_aresetn(0),
      interconnect_aresetn(0) => NLW_RFingressReset_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_RFingressReset_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => RFingressReset_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_RFingressReset_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
synchronizeSYSREF: component mts_synchronizeSYSREF_0
     port map (
      dest_clk => clk_wiz_0_clk_out1,
      dest_out(0) => synchronizeSYSREF_dest_out(0),
      src_clk => util_ds_buf_0_BUFG_O(0),
      src_in(0) => src_in_0_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity deepCapture_imp_QGCBQV is
  port (
    M_AXI_S2MM_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_S2MM_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_S2MM_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_S2MM_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_S2MM_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_S2MM_awready : in STD_LOGIC;
    M_AXI_S2MM_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_S2MM_awvalid : out STD_LOGIC;
    M_AXI_S2MM_bready : out STD_LOGIC;
    M_AXI_S2MM_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_S2MM_bvalid : in STD_LOGIC;
    M_AXI_S2MM_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_S2MM_wlast : out STD_LOGIC;
    M_AXI_S2MM_wready : in STD_LOGIC;
    M_AXI_S2MM_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_S2MM_wvalid : out STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC;
    S_AXI_LITE_arvalid : in STD_LOGIC;
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC;
    S_AXI_LITE_awvalid : in STD_LOGIC;
    S_AXI_LITE_bready : in STD_LOGIC;
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC;
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC;
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC;
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC;
    S_AXI_LITE_wvalid : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dcm_locked : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    fifo_flush_n : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s2mm_introut : out STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC
  );
end deepCapture_imp_QGCBQV;

architecture STRUCTURE of deepCapture_imp_QGCBQV is
  component mts_axi_dma_adc_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component mts_axi_dma_adc_0;
  component mts_axis_data_fifo_adc_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mts_axis_data_fifo_adc_0;
  component mts_axis_dwidth_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axis_dwidth_converter_0_0;
  component mts_rst_ddr4_0_333M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_rst_ddr4_0_333M_0;
  component mts_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_xlconstant_0_0;
  component mts_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_xlconstant_1_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal Conn2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn2_WLAST : STD_LOGIC;
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Conn3_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn3_TREADY : STD_LOGIC;
  signal Conn3_TVALID : STD_LOGIC;
  signal axi_dma_adc_s2mm_introut : STD_LOGIC;
  signal axi_resetn_1 : STD_LOGIC;
  signal axis_data_fifo_adc_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_data_fifo_adc_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_adc_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_adc_axis_rd_data_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_dwidth_converter_0_m_axis_tdata : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_dwidth_converter_0_m_axis_tvalid : STD_LOGIC;
  signal clk_wiz_adc1_clk_out1 : STD_LOGIC;
  signal dcm_locked_1 : STD_LOGIC;
  signal ddr4_0_c0_ddr4_ui_clk : STD_LOGIC;
  signal ext_reset_in_1 : STD_LOGIC;
  signal rst_ddr4_0_333M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axis_aresetn_0_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
  signal NLW_axi_dma_adc_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_adc_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_adc_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_rst_ddr4_0_333M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ddr4_0_333M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ddr4_0_333M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ddr4_0_333M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Conn1_ARADDR(39 downto 0) <= S_AXI_LITE_araddr(39 downto 0);
  Conn1_ARVALID <= S_AXI_LITE_arvalid;
  Conn1_AWADDR(39 downto 0) <= S_AXI_LITE_awaddr(39 downto 0);
  Conn1_AWVALID <= S_AXI_LITE_awvalid;
  Conn1_BREADY <= S_AXI_LITE_bready;
  Conn1_RREADY <= S_AXI_LITE_rready;
  Conn1_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  Conn1_WVALID <= S_AXI_LITE_wvalid;
  Conn2_AWREADY <= M_AXI_S2MM_awready;
  Conn2_BRESP(1 downto 0) <= M_AXI_S2MM_bresp(1 downto 0);
  Conn2_BVALID <= M_AXI_S2MM_bvalid;
  Conn2_WREADY <= M_AXI_S2MM_wready;
  Conn3_TDATA(127 downto 0) <= S_AXIS_tdata(127 downto 0);
  Conn3_TVALID <= S_AXIS_tvalid;
  M_AXI_S2MM_awaddr(39 downto 0) <= Conn2_AWADDR(39 downto 0);
  M_AXI_S2MM_awburst(1 downto 0) <= Conn2_AWBURST(1 downto 0);
  M_AXI_S2MM_awcache(3 downto 0) <= Conn2_AWCACHE(3 downto 0);
  M_AXI_S2MM_awlen(7 downto 0) <= Conn2_AWLEN(7 downto 0);
  M_AXI_S2MM_awprot(2 downto 0) <= Conn2_AWPROT(2 downto 0);
  M_AXI_S2MM_awsize(2 downto 0) <= Conn2_AWSIZE(2 downto 0);
  M_AXI_S2MM_awvalid <= Conn2_AWVALID;
  M_AXI_S2MM_bready <= Conn2_BREADY;
  M_AXI_S2MM_wdata(511 downto 0) <= Conn2_WDATA(511 downto 0);
  M_AXI_S2MM_wlast <= Conn2_WLAST;
  M_AXI_S2MM_wstrb(63 downto 0) <= Conn2_WSTRB(63 downto 0);
  M_AXI_S2MM_wvalid <= Conn2_WVALID;
  S_AXIS_tready <= Conn3_TREADY;
  S_AXI_LITE_arready <= Conn1_ARREADY;
  S_AXI_LITE_awready <= Conn1_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_LITE_bvalid <= Conn1_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_LITE_rvalid <= Conn1_RVALID;
  S_AXI_LITE_wready <= Conn1_WREADY;
  axi_resetn_1 <= axi_resetn;
  axis_rd_data_count(31 downto 0) <= axis_data_fifo_adc_axis_rd_data_count(31 downto 0);
  clk_wiz_adc1_clk_out1 <= s_axis_aclk;
  dcm_locked_1 <= dcm_locked;
  ddr4_0_c0_ddr4_ui_clk <= m_axi_s2mm_aclk;
  ext_reset_in_1 <= ext_reset_in;
  peripheral_aresetn(0) <= rst_ddr4_0_333M_peripheral_aresetn(0);
  s2mm_introut <= axi_dma_adc_s2mm_introut;
  s_axis_aresetn_0_1 <= fifo_flush_n;
  zynq_ultra_ps_e_0_pl_clk0 <= s_axi_lite_aclk;
axi_dma_adc: component mts_axi_dma_adc_0
     port map (
      axi_resetn => axi_resetn_1,
      m_axi_s2mm_aclk => ddr4_0_c0_ddr4_ui_clk,
      m_axi_s2mm_awaddr(39 downto 0) => Conn2_AWADDR(39 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => Conn2_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => Conn2_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => Conn2_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      m_axi_s2mm_awready => Conn2_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => Conn2_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => Conn2_AWVALID,
      m_axi_s2mm_bready => Conn2_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => Conn2_BVALID,
      m_axi_s2mm_wdata(511 downto 0) => Conn2_WDATA(511 downto 0),
      m_axi_s2mm_wlast => Conn2_WLAST,
      m_axi_s2mm_wready => Conn2_WREADY,
      m_axi_s2mm_wstrb(63 downto 0) => Conn2_WSTRB(63 downto 0),
      m_axi_s2mm_wvalid => Conn2_WVALID,
      s2mm_introut => axi_dma_adc_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_adc_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_lite_araddr(9 downto 0) => Conn1_ARADDR(9 downto 0),
      s_axi_lite_arready => Conn1_ARREADY,
      s_axi_lite_arvalid => Conn1_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => Conn1_AWADDR(9 downto 0),
      s_axi_lite_awready => Conn1_AWREADY,
      s_axi_lite_awvalid => Conn1_AWVALID,
      s_axi_lite_bready => Conn1_BREADY,
      s_axi_lite_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_lite_bvalid => Conn1_BVALID,
      s_axi_lite_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_lite_rready => Conn1_RREADY,
      s_axi_lite_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_lite_rvalid => Conn1_RVALID,
      s_axi_lite_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_lite_wready => Conn1_WREADY,
      s_axi_lite_wvalid => Conn1_WVALID,
      s_axis_s2mm_tdata(255 downto 0) => axis_data_fifo_adc_M_AXIS_TDATA(255 downto 0),
      s_axis_s2mm_tkeep(31 downto 0) => B"11111111111111111111111111111111",
      s_axis_s2mm_tlast => xlconstant_0_dout(0),
      s_axis_s2mm_tready => axis_data_fifo_adc_M_AXIS_TREADY,
      s_axis_s2mm_tvalid => axis_data_fifo_adc_M_AXIS_TVALID
    );
axis_data_fifo_adc: component mts_axis_data_fifo_adc_0
     port map (
      axis_rd_data_count(31 downto 0) => axis_data_fifo_adc_axis_rd_data_count(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_adc_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_aclk => ddr4_0_c0_ddr4_ui_clk,
      m_axis_tdata(255 downto 0) => axis_data_fifo_adc_M_AXIS_TDATA(255 downto 0),
      m_axis_tready => axis_data_fifo_adc_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_adc_M_AXIS_TVALID,
      s_axis_aclk => clk_wiz_adc1_clk_out1,
      s_axis_aresetn => s_axis_aresetn_0_1,
      s_axis_tdata(255 downto 0) => axis_dwidth_converter_0_m_axis_tdata(255 downto 0),
      s_axis_tready => NLW_axis_data_fifo_adc_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => axis_dwidth_converter_0_m_axis_tvalid
    );
axis_dwidth_converter_0: component mts_axis_dwidth_converter_0_0
     port map (
      aclk => clk_wiz_adc1_clk_out1,
      aresetn => xlconstant_1_dout(0),
      m_axis_tdata(255 downto 0) => axis_dwidth_converter_0_m_axis_tdata(255 downto 0),
      m_axis_tready => xlconstant_1_dout(0),
      m_axis_tvalid => axis_dwidth_converter_0_m_axis_tvalid,
      s_axis_tdata(127 downto 0) => Conn3_TDATA(127 downto 0),
      s_axis_tready => Conn3_TREADY,
      s_axis_tvalid => Conn3_TVALID
    );
rst_ddr4_0_333M: component mts_rst_ddr4_0_333M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ddr4_0_333M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => dcm_locked_1,
      ext_reset_in => ext_reset_in_1,
      interconnect_aresetn(0) => NLW_rst_ddr4_0_333M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ddr4_0_333M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ddr4_0_333M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ddr4_0_333M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => ddr4_0_c0_ddr4_ui_clk
    );
xlconstant_0: component mts_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component mts_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gpio_control_imp_1VWM5ZY is
  port (
    S_AXI1_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI1_arready : out STD_LOGIC;
    S_AXI1_arvalid : in STD_LOGIC;
    S_AXI1_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI1_awready : out STD_LOGIC;
    S_AXI1_awvalid : in STD_LOGIC;
    S_AXI1_bready : in STD_LOGIC;
    S_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_bvalid : out STD_LOGIC;
    S_AXI1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_rready : in STD_LOGIC;
    S_AXI1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_rvalid : out STD_LOGIC;
    S_AXI1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_wready : out STD_LOGIC;
    S_AXI1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_wvalid : in STD_LOGIC;
    S_AXI2_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI2_arready : out STD_LOGIC;
    S_AXI2_arvalid : in STD_LOGIC;
    S_AXI2_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI2_awready : out STD_LOGIC;
    S_AXI2_awvalid : in STD_LOGIC;
    S_AXI2_bready : in STD_LOGIC;
    S_AXI2_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_bvalid : out STD_LOGIC;
    S_AXI2_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_rready : in STD_LOGIC;
    S_AXI2_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_rvalid : out STD_LOGIC;
    S_AXI2_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_wready : out STD_LOGIC;
    S_AXI2_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_wvalid : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    dac_enable : out STD_LOGIC_VECTOR ( 0 to 0 );
    dest_clk : in STD_LOGIC;
    fifoflush : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    trig_cap : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end gpio_control_imp_1VWM5ZY;

architecture STRUCTURE of gpio_control_imp_1VWM5ZY is
  component mts_axi_gpio_bram_adc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_axi_gpio_bram_adc_0;
  component mts_axi_gpio_dac_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_axi_gpio_dac_0;
  component mts_axi_gpio_fifoflush_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_axi_gpio_fifoflush_0;
  component mts_xpm_cdc_gen_0_0 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_xpm_cdc_gen_0_0;
  signal axi_gpio_bram_cap_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_dac_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_fifo_flush_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M04_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_ARVALID : STD_LOGIC;
  signal control_interconnect_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M04_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_AWVALID : STD_LOGIC;
  signal control_interconnect_M04_AXI_BREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M04_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M04_AXI_RREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M04_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M04_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M04_AXI_WVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M05_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_ARVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M05_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_AWVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_BREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M05_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M05_AXI_RREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M05_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M05_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M05_AXI_WVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M06_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_ARVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M06_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_AWVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_BREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M06_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M06_AXI_RREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M06_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M06_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M06_AXI_WVALID : STD_LOGIC;
  signal dest_clk_1 : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC;
  signal xpm_cdc_gen_0_dest_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
begin
  S_AXI1_arready <= control_interconnect_M05_AXI_ARREADY;
  S_AXI1_awready <= control_interconnect_M05_AXI_AWREADY;
  S_AXI1_bresp(1 downto 0) <= control_interconnect_M05_AXI_BRESP(1 downto 0);
  S_AXI1_bvalid <= control_interconnect_M05_AXI_BVALID;
  S_AXI1_rdata(31 downto 0) <= control_interconnect_M05_AXI_RDATA(31 downto 0);
  S_AXI1_rresp(1 downto 0) <= control_interconnect_M05_AXI_RRESP(1 downto 0);
  S_AXI1_rvalid <= control_interconnect_M05_AXI_RVALID;
  S_AXI1_wready <= control_interconnect_M05_AXI_WREADY;
  S_AXI2_arready <= control_interconnect_M06_AXI_ARREADY;
  S_AXI2_awready <= control_interconnect_M06_AXI_AWREADY;
  S_AXI2_bresp(1 downto 0) <= control_interconnect_M06_AXI_BRESP(1 downto 0);
  S_AXI2_bvalid <= control_interconnect_M06_AXI_BVALID;
  S_AXI2_rdata(31 downto 0) <= control_interconnect_M06_AXI_RDATA(31 downto 0);
  S_AXI2_rresp(1 downto 0) <= control_interconnect_M06_AXI_RRESP(1 downto 0);
  S_AXI2_rvalid <= control_interconnect_M06_AXI_RVALID;
  S_AXI2_wready <= control_interconnect_M06_AXI_WREADY;
  S_AXI_arready <= control_interconnect_M04_AXI_ARREADY;
  S_AXI_awready <= control_interconnect_M04_AXI_AWREADY;
  S_AXI_bresp(1 downto 0) <= control_interconnect_M04_AXI_BRESP(1 downto 0);
  S_AXI_bvalid <= control_interconnect_M04_AXI_BVALID;
  S_AXI_rdata(31 downto 0) <= control_interconnect_M04_AXI_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= control_interconnect_M04_AXI_RRESP(1 downto 0);
  S_AXI_rvalid <= control_interconnect_M04_AXI_RVALID;
  S_AXI_wready <= control_interconnect_M04_AXI_WREADY;
  control_interconnect_M04_AXI_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  control_interconnect_M04_AXI_ARVALID <= S_AXI_arvalid;
  control_interconnect_M04_AXI_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  control_interconnect_M04_AXI_AWVALID <= S_AXI_awvalid;
  control_interconnect_M04_AXI_BREADY <= S_AXI_bready;
  control_interconnect_M04_AXI_RREADY <= S_AXI_rready;
  control_interconnect_M04_AXI_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  control_interconnect_M04_AXI_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  control_interconnect_M04_AXI_WVALID <= S_AXI_wvalid;
  control_interconnect_M05_AXI_ARADDR(39 downto 0) <= S_AXI1_araddr(39 downto 0);
  control_interconnect_M05_AXI_ARVALID <= S_AXI1_arvalid;
  control_interconnect_M05_AXI_AWADDR(39 downto 0) <= S_AXI1_awaddr(39 downto 0);
  control_interconnect_M05_AXI_AWVALID <= S_AXI1_awvalid;
  control_interconnect_M05_AXI_BREADY <= S_AXI1_bready;
  control_interconnect_M05_AXI_RREADY <= S_AXI1_rready;
  control_interconnect_M05_AXI_WDATA(31 downto 0) <= S_AXI1_wdata(31 downto 0);
  control_interconnect_M05_AXI_WSTRB(3 downto 0) <= S_AXI1_wstrb(3 downto 0);
  control_interconnect_M05_AXI_WVALID <= S_AXI1_wvalid;
  control_interconnect_M06_AXI_ARADDR(39 downto 0) <= S_AXI2_araddr(39 downto 0);
  control_interconnect_M06_AXI_ARVALID <= S_AXI2_arvalid;
  control_interconnect_M06_AXI_AWADDR(39 downto 0) <= S_AXI2_awaddr(39 downto 0);
  control_interconnect_M06_AXI_AWVALID <= S_AXI2_awvalid;
  control_interconnect_M06_AXI_BREADY <= S_AXI2_bready;
  control_interconnect_M06_AXI_RREADY <= S_AXI2_rready;
  control_interconnect_M06_AXI_WDATA(31 downto 0) <= S_AXI2_wdata(31 downto 0);
  control_interconnect_M06_AXI_WSTRB(3 downto 0) <= S_AXI2_wstrb(3 downto 0);
  control_interconnect_M06_AXI_WVALID <= S_AXI2_wvalid;
  dac_enable(0) <= axi_gpio_dac_gpio_io_o(0);
  dest_clk_1 <= dest_clk;
  fifoflush(0) <= axi_gpio_fifo_flush_gpio_io_o(0);
  proc_sys_reset_0_peripheral_aresetn <= s_axi_aresetn;
  trig_cap(0) <= xpm_cdc_gen_0_dest_out(0);
  zynq_ultra_ps_e_0_pl_clk0 <= s_axi_aclk;
axi_gpio_bram_adc: component mts_axi_gpio_bram_adc_0
     port map (
      gpio_io_o(0) => axi_gpio_bram_cap_gpio_io_o(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(8 downto 0) => control_interconnect_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn,
      s_axi_arready => control_interconnect_M06_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M06_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => control_interconnect_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => control_interconnect_M06_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M06_AXI_AWVALID,
      s_axi_bready => control_interconnect_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => control_interconnect_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => control_interconnect_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M06_AXI_WVALID
    );
axi_gpio_dac: component mts_axi_gpio_dac_0
     port map (
      gpio_io_o(0) => axi_gpio_dac_gpio_io_o(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(8 downto 0) => control_interconnect_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn,
      s_axi_arready => control_interconnect_M04_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M04_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => control_interconnect_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => control_interconnect_M04_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M04_AXI_AWVALID,
      s_axi_bready => control_interconnect_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => control_interconnect_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => control_interconnect_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M04_AXI_WVALID
    );
axi_gpio_fifoflush: component mts_axi_gpio_fifoflush_0
     port map (
      gpio_io_o(0) => axi_gpio_fifo_flush_gpio_io_o(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(8 downto 0) => control_interconnect_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn,
      s_axi_arready => control_interconnect_M05_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => control_interconnect_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => control_interconnect_M05_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M05_AXI_AWVALID,
      s_axi_bready => control_interconnect_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => control_interconnect_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => control_interconnect_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M05_AXI_WVALID
    );
xpm_cdc_gen_0: component mts_xpm_cdc_gen_0_0
     port map (
      dest_clk => dest_clk_1,
      dest_out(0) => xpm_cdc_gen_0_dest_out(0),
      src_clk => zynq_ultra_ps_e_0_pl_clk0,
      src_in(0) => axi_gpio_bram_cap_gpio_io_o(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_adc0_cap_imp_GQXKHU is
  port (
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    axis_clk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    trig_cap : in STD_LOGIC
  );
end hier_adc0_cap_imp_GQXKHU;

architecture STRUCTURE of hier_adc0_cap_imp_GQXKHU is
  component mts_ADCRAMcapture_0_0 is
  port (
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
  end component mts_ADCRAMcapture_0_0;
  component mts_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axi_bram_ctrl_0_0;
  component mts_axis_clock_converter_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axis_clock_converter_0_0;
  component mts_axis_dwidth_converter_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axis_dwidth_converter_0_1;
  component mts_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 255 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 255 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 255 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_blk_mem_gen_0_0;
  signal ADCRAMcapture_0_BRAM_A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ADCRAMcapture_0_BRAM_A_CLK : STD_LOGIC;
  signal ADCRAMcapture_0_BRAM_A_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ADCRAMcapture_0_BRAM_A_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ADCRAMcapture_0_BRAM_A_EN : STD_LOGIC;
  signal ADCRAMcapture_0_BRAM_A_RST : STD_LOGIC;
  signal ADCRAMcapture_0_BRAM_A_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Net1 : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_clock_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal clk_wiz_adc1_clk_out1 : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RLAST : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal trig_cap_1 : STD_LOGIC;
  signal usp_rf_data_converter_0_m20_axis_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal usp_rf_data_converter_0_m20_axis_TREADY : STD_LOGIC;
  signal usp_rf_data_converter_0_m20_axis_TVALID : STD_LOGIC;
begin
  Net1 <= axis_clk;
  S_AXIS_tready <= usp_rf_data_converter_0_m20_axis_TREADY;
  S_AXI_arready(0) <= ps8_0_axi_periph_M06_AXI_ARREADY;
  S_AXI_awready(0) <= ps8_0_axi_periph_M06_AXI_AWREADY;
  S_AXI_bresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= ps8_0_axi_periph_M06_AXI_BVALID;
  S_AXI_rdata(255 downto 0) <= ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0);
  S_AXI_rlast(0) <= ps8_0_axi_periph_M06_AXI_RLAST;
  S_AXI_rresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= ps8_0_axi_periph_M06_AXI_RVALID;
  S_AXI_wready(0) <= ps8_0_axi_periph_M06_AXI_WREADY;
  clk_wiz_adc1_clk_out1 <= aclk;
  ps8_0_axi_periph_M06_AXI_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLOCK(0) <= S_AXI_arlock(0);
  ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARVALID(0) <= S_AXI_arvalid(0);
  ps8_0_axi_periph_M06_AXI_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLOCK(0) <= S_AXI_awlock(0);
  ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWVALID(0) <= S_AXI_awvalid(0);
  ps8_0_axi_periph_M06_AXI_BREADY(0) <= S_AXI_bready(0);
  ps8_0_axi_periph_M06_AXI_RREADY(0) <= S_AXI_rready(0);
  ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  ps8_0_axi_periph_M06_AXI_WLAST(0) <= S_AXI_wlast(0);
  ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  ps8_0_axi_periph_M06_AXI_WVALID(0) <= S_AXI_wvalid(0);
  s_axi_aresetn_1 <= s_axi_aresetn;
  trig_cap_1 <= trig_cap;
  usp_rf_data_converter_0_m20_axis_TDATA(127 downto 0) <= S_AXIS_tdata(127 downto 0);
  usp_rf_data_converter_0_m20_axis_TVALID <= S_AXIS_tvalid;
ADCRAMcapture_0: component mts_ADCRAMcapture_0_0
     port map (
      CAP_AXIS_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      CAP_AXIS_tready => axis_clock_converter_0_M_AXIS_TREADY,
      CAP_AXIS_tvalid => axis_clock_converter_0_M_AXIS_TVALID,
      axis_aresetn => s_axi_aresetn_1,
      axis_clk => Net1,
      bram_addr(31 downto 0) => ADCRAMcapture_0_BRAM_A_ADDR(31 downto 0),
      bram_clk => ADCRAMcapture_0_BRAM_A_CLK,
      bram_en => ADCRAMcapture_0_BRAM_A_EN,
      bram_rdata(255 downto 0) => ADCRAMcapture_0_BRAM_A_DOUT(255 downto 0),
      bram_rst => ADCRAMcapture_0_BRAM_A_RST,
      bram_wdata(255 downto 0) => ADCRAMcapture_0_BRAM_A_DIN(255 downto 0),
      bram_we(31 downto 0) => ADCRAMcapture_0_BRAM_A_WE(31 downto 0),
      trig_cap => trig_cap_1
    );
axi_bram_ctrl_0: component mts_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      bram_wrdata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      s_axi_aclk => Net1,
      s_axi_araddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_ARADDR(16 downto 0),
      s_axi_arburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0),
      s_axi_arlock => ps8_0_axi_periph_M06_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      s_axi_arready => ps8_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => ps8_0_axi_periph_M06_AXI_ARVALID(0),
      s_axi_awaddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_AWADDR(16 downto 0),
      s_axi_awburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0),
      s_axi_awlock => ps8_0_axi_periph_M06_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      s_axi_awready => ps8_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => ps8_0_axi_periph_M06_AXI_AWVALID(0),
      s_axi_bready => ps8_0_axi_periph_M06_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps8_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0),
      s_axi_rlast => ps8_0_axi_periph_M06_AXI_RLAST,
      s_axi_rready => ps8_0_axi_periph_M06_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps8_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0),
      s_axi_wlast => ps8_0_axi_periph_M06_AXI_WLAST(0),
      s_axi_wready => ps8_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => ps8_0_axi_periph_M06_AXI_WVALID(0)
    );
axis_clock_converter_0: component mts_axis_clock_converter_0_0
     port map (
      m_axis_aclk => Net1,
      m_axis_aresetn => s_axi_aresetn_1,
      m_axis_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      m_axis_tready => axis_clock_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_clock_converter_0_M_AXIS_TVALID,
      s_axis_aclk => clk_wiz_adc1_clk_out1,
      s_axis_aresetn => s_axi_aresetn_1,
      s_axis_tdata(255 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(255 downto 0),
      s_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      s_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID
    );
axis_dwidth_converter_0: component mts_axis_dwidth_converter_0_1
     port map (
      aclk => clk_wiz_adc1_clk_out1,
      aresetn => s_axi_aresetn_1,
      m_axis_tdata(255 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(255 downto 0),
      m_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID,
      s_axis_tdata(127 downto 0) => usp_rf_data_converter_0_m20_axis_TDATA(127 downto 0),
      s_axis_tready => usp_rf_data_converter_0_m20_axis_TREADY,
      s_axis_tvalid => usp_rf_data_converter_0_m20_axis_TVALID
    );
blk_mem_gen_0: component mts_blk_mem_gen_0_0
     port map (
      addra(31 downto 17) => B"000000000000000",
      addra(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      addrb(31 downto 0) => ADCRAMcapture_0_BRAM_A_ADDR(31 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => ADCRAMcapture_0_BRAM_A_CLK,
      dina(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      dinb(255 downto 0) => ADCRAMcapture_0_BRAM_A_DIN(255 downto 0),
      douta(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      doutb(255 downto 0) => ADCRAMcapture_0_BRAM_A_DOUT(255 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => ADCRAMcapture_0_BRAM_A_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rstb => ADCRAMcapture_0_BRAM_A_RST,
      wea(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      web(31 downto 0) => ADCRAMcapture_0_BRAM_A_WE(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_adc1_cap_imp_1UUWSYK is
  port (
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    axis_clk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    trig_cap : in STD_LOGIC
  );
end hier_adc1_cap_imp_1UUWSYK;

architecture STRUCTURE of hier_adc1_cap_imp_1UUWSYK is
  component mts_ADCRAMcapture_0_1 is
  port (
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
  end component mts_ADCRAMcapture_0_1;
  component mts_axi_bram_ctrl_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axi_bram_ctrl_0_1;
  component mts_axis_clock_converter_0_1 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axis_clock_converter_0_1;
  component mts_axis_dwidth_converter_0_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axis_dwidth_converter_0_2;
  component mts_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 255 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 255 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 255 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_blk_mem_gen_0_1;
  signal ADCRAMcapture_0_BRAM_A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ADCRAMcapture_0_BRAM_A_CLK : STD_LOGIC;
  signal ADCRAMcapture_0_BRAM_A_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ADCRAMcapture_0_BRAM_A_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ADCRAMcapture_0_BRAM_A_EN : STD_LOGIC;
  signal ADCRAMcapture_0_BRAM_A_RST : STD_LOGIC;
  signal ADCRAMcapture_0_BRAM_A_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Net1 : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_clock_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal clk_wiz_adc1_clk_out1 : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RLAST : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal trig_cap_1 : STD_LOGIC;
  signal usp_rf_data_converter_0_m20_axis_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal usp_rf_data_converter_0_m20_axis_TREADY : STD_LOGIC;
  signal usp_rf_data_converter_0_m20_axis_TVALID : STD_LOGIC;
begin
  Net1 <= axis_clk;
  S_AXIS_tready <= usp_rf_data_converter_0_m20_axis_TREADY;
  S_AXI_arready(0) <= ps8_0_axi_periph_M06_AXI_ARREADY;
  S_AXI_awready(0) <= ps8_0_axi_periph_M06_AXI_AWREADY;
  S_AXI_bresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= ps8_0_axi_periph_M06_AXI_BVALID;
  S_AXI_rdata(255 downto 0) <= ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0);
  S_AXI_rlast(0) <= ps8_0_axi_periph_M06_AXI_RLAST;
  S_AXI_rresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= ps8_0_axi_periph_M06_AXI_RVALID;
  S_AXI_wready(0) <= ps8_0_axi_periph_M06_AXI_WREADY;
  clk_wiz_adc1_clk_out1 <= aclk;
  ps8_0_axi_periph_M06_AXI_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLOCK(0) <= S_AXI_arlock(0);
  ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARVALID(0) <= S_AXI_arvalid(0);
  ps8_0_axi_periph_M06_AXI_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLOCK(0) <= S_AXI_awlock(0);
  ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWVALID(0) <= S_AXI_awvalid(0);
  ps8_0_axi_periph_M06_AXI_BREADY(0) <= S_AXI_bready(0);
  ps8_0_axi_periph_M06_AXI_RREADY(0) <= S_AXI_rready(0);
  ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  ps8_0_axi_periph_M06_AXI_WLAST(0) <= S_AXI_wlast(0);
  ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  ps8_0_axi_periph_M06_AXI_WVALID(0) <= S_AXI_wvalid(0);
  s_axi_aresetn_1 <= s_axi_aresetn;
  trig_cap_1 <= trig_cap;
  usp_rf_data_converter_0_m20_axis_TDATA(127 downto 0) <= S_AXIS_tdata(127 downto 0);
  usp_rf_data_converter_0_m20_axis_TVALID <= S_AXIS_tvalid;
ADCRAMcapture_0: component mts_ADCRAMcapture_0_1
     port map (
      CAP_AXIS_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      CAP_AXIS_tready => axis_clock_converter_0_M_AXIS_TREADY,
      CAP_AXIS_tvalid => axis_clock_converter_0_M_AXIS_TVALID,
      axis_aresetn => s_axi_aresetn_1,
      axis_clk => Net1,
      bram_addr(31 downto 0) => ADCRAMcapture_0_BRAM_A_ADDR(31 downto 0),
      bram_clk => ADCRAMcapture_0_BRAM_A_CLK,
      bram_en => ADCRAMcapture_0_BRAM_A_EN,
      bram_rdata(255 downto 0) => ADCRAMcapture_0_BRAM_A_DOUT(255 downto 0),
      bram_rst => ADCRAMcapture_0_BRAM_A_RST,
      bram_wdata(255 downto 0) => ADCRAMcapture_0_BRAM_A_DIN(255 downto 0),
      bram_we(31 downto 0) => ADCRAMcapture_0_BRAM_A_WE(31 downto 0),
      trig_cap => trig_cap_1
    );
axi_bram_ctrl_0: component mts_axi_bram_ctrl_0_1
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      bram_wrdata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      s_axi_aclk => Net1,
      s_axi_araddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_ARADDR(16 downto 0),
      s_axi_arburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0),
      s_axi_arlock => ps8_0_axi_periph_M06_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      s_axi_arready => ps8_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => ps8_0_axi_periph_M06_AXI_ARVALID(0),
      s_axi_awaddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_AWADDR(16 downto 0),
      s_axi_awburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0),
      s_axi_awlock => ps8_0_axi_periph_M06_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      s_axi_awready => ps8_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => ps8_0_axi_periph_M06_AXI_AWVALID(0),
      s_axi_bready => ps8_0_axi_periph_M06_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps8_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0),
      s_axi_rlast => ps8_0_axi_periph_M06_AXI_RLAST,
      s_axi_rready => ps8_0_axi_periph_M06_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps8_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0),
      s_axi_wlast => ps8_0_axi_periph_M06_AXI_WLAST(0),
      s_axi_wready => ps8_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => ps8_0_axi_periph_M06_AXI_WVALID(0)
    );
axis_clock_converter_0: component mts_axis_clock_converter_0_1
     port map (
      m_axis_aclk => Net1,
      m_axis_aresetn => s_axi_aresetn_1,
      m_axis_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      m_axis_tready => axis_clock_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_clock_converter_0_M_AXIS_TVALID,
      s_axis_aclk => clk_wiz_adc1_clk_out1,
      s_axis_aresetn => s_axi_aresetn_1,
      s_axis_tdata(255 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(255 downto 0),
      s_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      s_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID
    );
axis_dwidth_converter_0: component mts_axis_dwidth_converter_0_2
     port map (
      aclk => clk_wiz_adc1_clk_out1,
      aresetn => s_axi_aresetn_1,
      m_axis_tdata(255 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(255 downto 0),
      m_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID,
      s_axis_tdata(127 downto 0) => usp_rf_data_converter_0_m20_axis_TDATA(127 downto 0),
      s_axis_tready => usp_rf_data_converter_0_m20_axis_TREADY,
      s_axis_tvalid => usp_rf_data_converter_0_m20_axis_TVALID
    );
blk_mem_gen_0: component mts_blk_mem_gen_0_1
     port map (
      addra(31 downto 17) => B"000000000000000",
      addra(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      addrb(31 downto 0) => ADCRAMcapture_0_BRAM_A_ADDR(31 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => ADCRAMcapture_0_BRAM_A_CLK,
      dina(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      dinb(255 downto 0) => ADCRAMcapture_0_BRAM_A_DIN(255 downto 0),
      douta(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      doutb(255 downto 0) => ADCRAMcapture_0_BRAM_A_DOUT(255 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => ADCRAMcapture_0_BRAM_A_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rstb => ADCRAMcapture_0_BRAM_A_RST,
      wea(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      web(31 downto 0) => ADCRAMcapture_0_BRAM_A_WE(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_adc2_cap_imp_Z3BJPB is
  port (
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    axis_clk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    trig_cap : in STD_LOGIC
  );
end hier_adc2_cap_imp_Z3BJPB;

architecture STRUCTURE of hier_adc2_cap_imp_Z3BJPB is
  component mts_ADCRAMcapture_0_2 is
  port (
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
  end component mts_ADCRAMcapture_0_2;
  component mts_axi_bram_ctrl_0_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axi_bram_ctrl_0_2;
  component mts_axis_clock_converter_0_2 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axis_clock_converter_0_2;
  component mts_axis_dwidth_converter_0_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axis_dwidth_converter_0_3;
  component mts_blk_mem_gen_0_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 255 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 255 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 255 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_blk_mem_gen_0_2;
  signal ADCRAMcapture_0_BRAM_A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ADCRAMcapture_0_BRAM_A_CLK : STD_LOGIC;
  signal ADCRAMcapture_0_BRAM_A_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ADCRAMcapture_0_BRAM_A_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ADCRAMcapture_0_BRAM_A_EN : STD_LOGIC;
  signal ADCRAMcapture_0_BRAM_A_RST : STD_LOGIC;
  signal ADCRAMcapture_0_BRAM_A_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Net1 : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_clock_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal clk_wiz_adc1_clk_out1 : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RLAST : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal trig_cap_1 : STD_LOGIC;
  signal usp_rf_data_converter_0_m20_axis_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal usp_rf_data_converter_0_m20_axis_TREADY : STD_LOGIC;
  signal usp_rf_data_converter_0_m20_axis_TVALID : STD_LOGIC;
begin
  Net1 <= axis_clk;
  S_AXIS_tready <= usp_rf_data_converter_0_m20_axis_TREADY;
  S_AXI_arready(0) <= ps8_0_axi_periph_M06_AXI_ARREADY;
  S_AXI_awready(0) <= ps8_0_axi_periph_M06_AXI_AWREADY;
  S_AXI_bresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= ps8_0_axi_periph_M06_AXI_BVALID;
  S_AXI_rdata(255 downto 0) <= ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0);
  S_AXI_rlast(0) <= ps8_0_axi_periph_M06_AXI_RLAST;
  S_AXI_rresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= ps8_0_axi_periph_M06_AXI_RVALID;
  S_AXI_wready(0) <= ps8_0_axi_periph_M06_AXI_WREADY;
  clk_wiz_adc1_clk_out1 <= aclk;
  ps8_0_axi_periph_M06_AXI_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLOCK(0) <= S_AXI_arlock(0);
  ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARVALID(0) <= S_AXI_arvalid(0);
  ps8_0_axi_periph_M06_AXI_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLOCK(0) <= S_AXI_awlock(0);
  ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWVALID(0) <= S_AXI_awvalid(0);
  ps8_0_axi_periph_M06_AXI_BREADY(0) <= S_AXI_bready(0);
  ps8_0_axi_periph_M06_AXI_RREADY(0) <= S_AXI_rready(0);
  ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  ps8_0_axi_periph_M06_AXI_WLAST(0) <= S_AXI_wlast(0);
  ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  ps8_0_axi_periph_M06_AXI_WVALID(0) <= S_AXI_wvalid(0);
  s_axi_aresetn_1 <= s_axi_aresetn;
  trig_cap_1 <= trig_cap;
  usp_rf_data_converter_0_m20_axis_TDATA(127 downto 0) <= S_AXIS_tdata(127 downto 0);
  usp_rf_data_converter_0_m20_axis_TVALID <= S_AXIS_tvalid;
ADCRAMcapture_0: component mts_ADCRAMcapture_0_2
     port map (
      CAP_AXIS_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      CAP_AXIS_tready => axis_clock_converter_0_M_AXIS_TREADY,
      CAP_AXIS_tvalid => axis_clock_converter_0_M_AXIS_TVALID,
      axis_aresetn => s_axi_aresetn_1,
      axis_clk => Net1,
      bram_addr(31 downto 0) => ADCRAMcapture_0_BRAM_A_ADDR(31 downto 0),
      bram_clk => ADCRAMcapture_0_BRAM_A_CLK,
      bram_en => ADCRAMcapture_0_BRAM_A_EN,
      bram_rdata(255 downto 0) => ADCRAMcapture_0_BRAM_A_DOUT(255 downto 0),
      bram_rst => ADCRAMcapture_0_BRAM_A_RST,
      bram_wdata(255 downto 0) => ADCRAMcapture_0_BRAM_A_DIN(255 downto 0),
      bram_we(31 downto 0) => ADCRAMcapture_0_BRAM_A_WE(31 downto 0),
      trig_cap => trig_cap_1
    );
axi_bram_ctrl_0: component mts_axi_bram_ctrl_0_2
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      bram_wrdata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      s_axi_aclk => Net1,
      s_axi_araddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_ARADDR(16 downto 0),
      s_axi_arburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0),
      s_axi_arlock => ps8_0_axi_periph_M06_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      s_axi_arready => ps8_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => ps8_0_axi_periph_M06_AXI_ARVALID(0),
      s_axi_awaddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_AWADDR(16 downto 0),
      s_axi_awburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0),
      s_axi_awlock => ps8_0_axi_periph_M06_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      s_axi_awready => ps8_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => ps8_0_axi_periph_M06_AXI_AWVALID(0),
      s_axi_bready => ps8_0_axi_periph_M06_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps8_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0),
      s_axi_rlast => ps8_0_axi_periph_M06_AXI_RLAST,
      s_axi_rready => ps8_0_axi_periph_M06_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps8_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0),
      s_axi_wlast => ps8_0_axi_periph_M06_AXI_WLAST(0),
      s_axi_wready => ps8_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => ps8_0_axi_periph_M06_AXI_WVALID(0)
    );
axis_clock_converter_0: component mts_axis_clock_converter_0_2
     port map (
      m_axis_aclk => Net1,
      m_axis_aresetn => s_axi_aresetn_1,
      m_axis_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      m_axis_tready => axis_clock_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_clock_converter_0_M_AXIS_TVALID,
      s_axis_aclk => clk_wiz_adc1_clk_out1,
      s_axis_aresetn => s_axi_aresetn_1,
      s_axis_tdata(255 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(255 downto 0),
      s_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      s_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID
    );
axis_dwidth_converter_0: component mts_axis_dwidth_converter_0_3
     port map (
      aclk => clk_wiz_adc1_clk_out1,
      aresetn => s_axi_aresetn_1,
      m_axis_tdata(255 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(255 downto 0),
      m_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID,
      s_axis_tdata(127 downto 0) => usp_rf_data_converter_0_m20_axis_TDATA(127 downto 0),
      s_axis_tready => usp_rf_data_converter_0_m20_axis_TREADY,
      s_axis_tvalid => usp_rf_data_converter_0_m20_axis_TVALID
    );
blk_mem_gen_0: component mts_blk_mem_gen_0_2
     port map (
      addra(31 downto 17) => B"000000000000000",
      addra(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      addrb(31 downto 0) => ADCRAMcapture_0_BRAM_A_ADDR(31 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => ADCRAMcapture_0_BRAM_A_CLK,
      dina(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      dinb(255 downto 0) => ADCRAMcapture_0_BRAM_A_DIN(255 downto 0),
      douta(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      doutb(255 downto 0) => ADCRAMcapture_0_BRAM_A_DOUT(255 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => ADCRAMcapture_0_BRAM_A_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rstb => ADCRAMcapture_0_BRAM_A_RST,
      wea(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      web(31 downto 0) => ADCRAMcapture_0_BRAM_A_WE(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_dac_play0_imp_9DNRMT is
  port (
    M_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXIS_0_tready : in STD_LOGIC;
    M_AXIS_0_tvalid : out STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    axis_clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end hier_dac_play0_imp_9DNRMT;

architecture STRUCTURE of hier_dac_play0_imp_9DNRMT is
  component mts_DACRAMstreamer_0_0 is
  port (
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
  end component mts_DACRAMstreamer_0_0;
  component mts_axi_bram_ctrl_0_4 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axi_bram_ctrl_0_4;
  component mts_axis_clock_converter_0_4 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axis_clock_converter_0_4;
  component mts_axis_dwidth_converter_0_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component mts_axis_dwidth_converter_0_5;
  component mts_axis_register_slice_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component mts_axis_register_slice_0_0;
  component mts_blk_mem_gen_0_4 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 255 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 255 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 255 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_blk_mem_gen_0_4;
  component mts_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component mts_xlconstant_0_1;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal DACRAMstreamer_0_BRAM_A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DACRAMstreamer_0_BRAM_A_CLK : STD_LOGIC;
  signal DACRAMstreamer_0_BRAM_A_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal DACRAMstreamer_0_BRAM_A_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal DACRAMstreamer_0_BRAM_A_EN : STD_LOGIC;
  signal DACRAMstreamer_0_BRAM_A_RST : STD_LOGIC;
  signal DACRAMstreamer_0_BRAM_A_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DACRAMstreamer_0_axis_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal DACRAMstreamer_0_axis_TREADY : STD_LOGIC;
  signal DACRAMstreamer_0_axis_TVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_clock_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal clk_wiz_adc1_clk_out1 : STD_LOGIC;
  signal enable_1 : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RLAST : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  Conn1_TREADY <= M_AXIS_0_tready;
  M_AXIS_0_tdata(127 downto 0) <= Conn1_TDATA(127 downto 0);
  M_AXIS_0_tvalid <= Conn1_TVALID;
  Net <= s_axi_aresetn;
  Net1 <= axis_clk;
  S_AXI_arready(0) <= ps8_0_axi_periph_M06_AXI_ARREADY;
  S_AXI_awready(0) <= ps8_0_axi_periph_M06_AXI_AWREADY;
  S_AXI_bresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= ps8_0_axi_periph_M06_AXI_BVALID;
  S_AXI_rdata(255 downto 0) <= ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0);
  S_AXI_rlast(0) <= ps8_0_axi_periph_M06_AXI_RLAST;
  S_AXI_rresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= ps8_0_axi_periph_M06_AXI_RVALID;
  S_AXI_wready(0) <= ps8_0_axi_periph_M06_AXI_WREADY;
  clk_wiz_adc1_clk_out1 <= aclk;
  enable_1 <= enable;
  ps8_0_axi_periph_M06_AXI_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLOCK(0) <= S_AXI_arlock(0);
  ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARVALID(0) <= S_AXI_arvalid(0);
  ps8_0_axi_periph_M06_AXI_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLOCK(0) <= S_AXI_awlock(0);
  ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWVALID(0) <= S_AXI_awvalid(0);
  ps8_0_axi_periph_M06_AXI_BREADY(0) <= S_AXI_bready(0);
  ps8_0_axi_periph_M06_AXI_RREADY(0) <= S_AXI_rready(0);
  ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  ps8_0_axi_periph_M06_AXI_WLAST(0) <= S_AXI_wlast(0);
  ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  ps8_0_axi_periph_M06_AXI_WVALID(0) <= S_AXI_wvalid(0);
DACRAMstreamer_0: component mts_DACRAMstreamer_0_0
     port map (
      axis_aresetn => Net,
      axis_clk => Net1,
      axis_tdata(255 downto 0) => DACRAMstreamer_0_axis_TDATA(255 downto 0),
      axis_tready => DACRAMstreamer_0_axis_TREADY,
      axis_tvalid => DACRAMstreamer_0_axis_TVALID,
      enable => enable_1,
      numSampleVectors(11 downto 0) => xlconstant_0_dout(11 downto 0),
      portA_clk => DACRAMstreamer_0_BRAM_A_CLK,
      portA_cpu_rdata(255 downto 0) => DACRAMstreamer_0_BRAM_A_DOUT(255 downto 0),
      portA_cpu_wdata(255 downto 0) => DACRAMstreamer_0_BRAM_A_DIN(255 downto 0),
      portA_en => DACRAMstreamer_0_BRAM_A_EN,
      portA_rst => DACRAMstreamer_0_BRAM_A_RST,
      portA_we(31 downto 0) => DACRAMstreamer_0_BRAM_A_WE(31 downto 0),
      portAcpu_addr(31 downto 0) => DACRAMstreamer_0_BRAM_A_ADDR(31 downto 0)
    );
axi_bram_ctrl_0: component mts_axi_bram_ctrl_0_4
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      bram_wrdata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      s_axi_aclk => Net1,
      s_axi_araddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_ARADDR(16 downto 0),
      s_axi_arburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => Net,
      s_axi_arlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0),
      s_axi_arlock => ps8_0_axi_periph_M06_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      s_axi_arready => ps8_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => ps8_0_axi_periph_M06_AXI_ARVALID(0),
      s_axi_awaddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_AWADDR(16 downto 0),
      s_axi_awburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0),
      s_axi_awlock => ps8_0_axi_periph_M06_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      s_axi_awready => ps8_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => ps8_0_axi_periph_M06_AXI_AWVALID(0),
      s_axi_bready => ps8_0_axi_periph_M06_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps8_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0),
      s_axi_rlast => ps8_0_axi_periph_M06_AXI_RLAST,
      s_axi_rready => ps8_0_axi_periph_M06_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps8_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0),
      s_axi_wlast => ps8_0_axi_periph_M06_AXI_WLAST(0),
      s_axi_wready => ps8_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => ps8_0_axi_periph_M06_AXI_WVALID(0)
    );
axis_clock_converter_0: component mts_axis_clock_converter_0_4
     port map (
      m_axis_aclk => clk_wiz_adc1_clk_out1,
      m_axis_aresetn => Net,
      m_axis_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      m_axis_tready => axis_clock_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_clock_converter_0_M_AXIS_TVALID,
      s_axis_aclk => Net1,
      s_axis_aresetn => Net,
      s_axis_tdata(255 downto 0) => DACRAMstreamer_0_axis_TDATA(255 downto 0),
      s_axis_tready => DACRAMstreamer_0_axis_TREADY,
      s_axis_tvalid => DACRAMstreamer_0_axis_TVALID
    );
axis_dwidth_converter_0: component mts_axis_dwidth_converter_0_5
     port map (
      aclk => clk_wiz_adc1_clk_out1,
      aresetn => Net,
      m_axis_tdata(127 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(127 downto 0),
      m_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID,
      s_axis_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      s_axis_tready => axis_clock_converter_0_M_AXIS_TREADY,
      s_axis_tvalid => axis_clock_converter_0_M_AXIS_TVALID
    );
axis_register_slice_0: component mts_axis_register_slice_0_0
     port map (
      aclk => clk_wiz_adc1_clk_out1,
      aresetn => Net,
      m_axis_tdata(127 downto 0) => Conn1_TDATA(127 downto 0),
      m_axis_tready => Conn1_TREADY,
      m_axis_tvalid => Conn1_TVALID,
      s_axis_tdata(127 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(127 downto 0),
      s_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      s_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID
    );
blk_mem_gen_0: component mts_blk_mem_gen_0_4
     port map (
      addra(31 downto 17) => B"000000000000000",
      addra(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      addrb(31 downto 0) => DACRAMstreamer_0_BRAM_A_ADDR(31 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => DACRAMstreamer_0_BRAM_A_CLK,
      dina(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      dinb(255 downto 0) => DACRAMstreamer_0_BRAM_A_DIN(255 downto 0),
      douta(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      doutb(255 downto 0) => DACRAMstreamer_0_BRAM_A_DOUT(255 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => DACRAMstreamer_0_BRAM_A_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rstb => DACRAMstreamer_0_BRAM_A_RST,
      wea(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      web(31 downto 0) => DACRAMstreamer_0_BRAM_A_WE(31 downto 0)
    );
xlconstant_0: component mts_xlconstant_0_1
     port map (
      dout(11 downto 0) => xlconstant_0_dout(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_dac_play1_imp_16KPMTC is
  port (
    M_AXIS_1_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXIS_1_tready : in STD_LOGIC;
    M_AXIS_1_tvalid : out STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    axis_clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end hier_dac_play1_imp_16KPMTC;

architecture STRUCTURE of hier_dac_play1_imp_16KPMTC is
  component mts_DACRAMstreamer_0_1 is
  port (
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
  end component mts_DACRAMstreamer_0_1;
  component mts_axi_bram_ctrl_0_6 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axi_bram_ctrl_0_6;
  component mts_axis_clock_converter_0_6 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_axis_clock_converter_0_6;
  component mts_axis_dwidth_converter_0_7 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component mts_axis_dwidth_converter_0_7;
  component mts_axis_register_slice_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component mts_axis_register_slice_0_1;
  component mts_blk_mem_gen_0_6 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 255 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 255 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 255 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  end component mts_blk_mem_gen_0_6;
  component mts_xlconstant_0_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component mts_xlconstant_0_2;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal DACRAMstreamer_0_BRAM_A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DACRAMstreamer_0_BRAM_A_CLK : STD_LOGIC;
  signal DACRAMstreamer_0_BRAM_A_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal DACRAMstreamer_0_BRAM_A_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal DACRAMstreamer_0_BRAM_A_EN : STD_LOGIC;
  signal DACRAMstreamer_0_BRAM_A_RST : STD_LOGIC;
  signal DACRAMstreamer_0_BRAM_A_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DACRAMstreamer_0_axis_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal DACRAMstreamer_0_axis_TREADY : STD_LOGIC;
  signal DACRAMstreamer_0_axis_TVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal axis_clock_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_clock_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal clk_wiz_adc1_clk_out1 : STD_LOGIC;
  signal enable_1 : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARLOCK : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWLOCK : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RLAST : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WLAST : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  Conn1_TREADY <= M_AXIS_1_tready;
  M_AXIS_1_tdata(127 downto 0) <= Conn1_TDATA(127 downto 0);
  M_AXIS_1_tvalid <= Conn1_TVALID;
  Net <= s_axi_aresetn;
  Net1 <= axis_clk;
  S_AXI_arready <= ps8_0_axi_periph_M06_AXI_ARREADY;
  S_AXI_awready <= ps8_0_axi_periph_M06_AXI_AWREADY;
  S_AXI_bresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0);
  S_AXI_bvalid <= ps8_0_axi_periph_M06_AXI_BVALID;
  S_AXI_rdata(255 downto 0) <= ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0);
  S_AXI_rlast <= ps8_0_axi_periph_M06_AXI_RLAST;
  S_AXI_rresp(1 downto 0) <= ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0);
  S_AXI_rvalid <= ps8_0_axi_periph_M06_AXI_RVALID;
  S_AXI_wready <= ps8_0_axi_periph_M06_AXI_WREADY;
  clk_wiz_adc1_clk_out1 <= aclk;
  enable_1 <= enable;
  ps8_0_axi_periph_M06_AXI_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_ARLOCK <= S_AXI_arlock;
  ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_ARVALID <= S_AXI_arvalid;
  ps8_0_axi_periph_M06_AXI_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  ps8_0_axi_periph_M06_AXI_AWLOCK <= S_AXI_awlock;
  ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  ps8_0_axi_periph_M06_AXI_AWVALID <= S_AXI_awvalid;
  ps8_0_axi_periph_M06_AXI_BREADY <= S_AXI_bready;
  ps8_0_axi_periph_M06_AXI_RREADY <= S_AXI_rready;
  ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  ps8_0_axi_periph_M06_AXI_WLAST <= S_AXI_wlast;
  ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  ps8_0_axi_periph_M06_AXI_WVALID <= S_AXI_wvalid;
DACRAMstreamer_1: component mts_DACRAMstreamer_0_1
     port map (
      axis_aresetn => Net,
      axis_clk => Net1,
      axis_tdata(255 downto 0) => DACRAMstreamer_0_axis_TDATA(255 downto 0),
      axis_tready => DACRAMstreamer_0_axis_TREADY,
      axis_tvalid => DACRAMstreamer_0_axis_TVALID,
      enable => enable_1,
      numSampleVectors(11 downto 0) => xlconstant_0_dout(11 downto 0),
      portA_clk => DACRAMstreamer_0_BRAM_A_CLK,
      portA_cpu_rdata(255 downto 0) => DACRAMstreamer_0_BRAM_A_DOUT(255 downto 0),
      portA_cpu_wdata(255 downto 0) => DACRAMstreamer_0_BRAM_A_DIN(255 downto 0),
      portA_en => DACRAMstreamer_0_BRAM_A_EN,
      portA_rst => DACRAMstreamer_0_BRAM_A_RST,
      portA_we(31 downto 0) => DACRAMstreamer_0_BRAM_A_WE(31 downto 0),
      portAcpu_addr(31 downto 0) => DACRAMstreamer_0_BRAM_A_ADDR(31 downto 0)
    );
axi_bram_ctrl_1: component mts_axi_bram_ctrl_0_6
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      bram_wrdata_a(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      s_axi_aclk => Net1,
      s_axi_araddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_ARADDR(16 downto 0),
      s_axi_arburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => Net,
      s_axi_arlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_ARLEN(7 downto 0),
      s_axi_arlock => ps8_0_axi_periph_M06_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      s_axi_arready => ps8_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => ps8_0_axi_periph_M06_AXI_ARVALID,
      s_axi_awaddr(16 downto 0) => ps8_0_axi_periph_M06_AXI_AWADDR(16 downto 0),
      s_axi_awburst(1 downto 0) => ps8_0_axi_periph_M06_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => ps8_0_axi_periph_M06_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => ps8_0_axi_periph_M06_AXI_AWLEN(7 downto 0),
      s_axi_awlock => ps8_0_axi_periph_M06_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      s_axi_awready => ps8_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => ps8_0_axi_periph_M06_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => ps8_0_axi_periph_M06_AXI_AWVALID,
      s_axi_bready => ps8_0_axi_periph_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps8_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_RDATA(255 downto 0),
      s_axi_rlast => ps8_0_axi_periph_M06_AXI_RLAST,
      s_axi_rready => ps8_0_axi_periph_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps8_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps8_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(255 downto 0) => ps8_0_axi_periph_M06_AXI_WDATA(255 downto 0),
      s_axi_wlast => ps8_0_axi_periph_M06_AXI_WLAST,
      s_axi_wready => ps8_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(31 downto 0) => ps8_0_axi_periph_M06_AXI_WSTRB(31 downto 0),
      s_axi_wvalid => ps8_0_axi_periph_M06_AXI_WVALID
    );
axis_clock_converter_1: component mts_axis_clock_converter_0_6
     port map (
      m_axis_aclk => clk_wiz_adc1_clk_out1,
      m_axis_aresetn => Net,
      m_axis_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      m_axis_tready => axis_clock_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_clock_converter_0_M_AXIS_TVALID,
      s_axis_aclk => Net1,
      s_axis_aresetn => Net,
      s_axis_tdata(255 downto 0) => DACRAMstreamer_0_axis_TDATA(255 downto 0),
      s_axis_tready => DACRAMstreamer_0_axis_TREADY,
      s_axis_tvalid => DACRAMstreamer_0_axis_TVALID
    );
axis_dwidth_converter_1: component mts_axis_dwidth_converter_0_7
     port map (
      aclk => clk_wiz_adc1_clk_out1,
      aresetn => Net,
      m_axis_tdata(127 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(127 downto 0),
      m_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID,
      s_axis_tdata(255 downto 0) => axis_clock_converter_0_M_AXIS_TDATA(255 downto 0),
      s_axis_tready => axis_clock_converter_0_M_AXIS_TREADY,
      s_axis_tvalid => axis_clock_converter_0_M_AXIS_TVALID
    );
axis_register_slice_1: component mts_axis_register_slice_0_1
     port map (
      aclk => clk_wiz_adc1_clk_out1,
      aresetn => Net,
      m_axis_tdata(127 downto 0) => Conn1_TDATA(127 downto 0),
      m_axis_tready => Conn1_TREADY,
      m_axis_tvalid => Conn1_TVALID,
      s_axis_tdata(127 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(127 downto 0),
      s_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      s_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID
    );
blk_mem_gen_1: component mts_blk_mem_gen_0_6
     port map (
      addra(31 downto 17) => B"000000000000000",
      addra(16 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(16 downto 0),
      addrb(31 downto 0) => DACRAMstreamer_0_BRAM_A_ADDR(31 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => DACRAMstreamer_0_BRAM_A_CLK,
      dina(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(255 downto 0),
      dinb(255 downto 0) => DACRAMstreamer_0_BRAM_A_DIN(255 downto 0),
      douta(255 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(255 downto 0),
      doutb(255 downto 0) => DACRAMstreamer_0_BRAM_A_DOUT(255 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => DACRAMstreamer_0_BRAM_A_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rstb => DACRAMstreamer_0_BRAM_A_RST,
      wea(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(31 downto 0),
      web(31 downto 0) => DACRAMstreamer_0_BRAM_A_WE(31 downto 0)
    );
xlconstant_1: component mts_xlconstant_0_2
     port map (
      dout(11 downto 0) => xlconstant_0_dout(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_15UCFIV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_15UCFIV;

architecture STRUCTURE of m00_couplers_imp_15UCFIV is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m00_couplers_to_m00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m00_couplers_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_couplers_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m00_couplers_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m00_couplers_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m00_couplers_to_m00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_couplers_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_couplers_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m00_couplers_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m00_couplers_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m00_couplers_to_m00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_couplers_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(255 downto 0) <= m00_couplers_to_m00_couplers_WDATA(255 downto 0);
  M_AXI_wlast(0) <= m00_couplers_to_m00_couplers_WLAST(0);
  M_AXI_wstrb(31 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(31 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(255 downto 0) <= m00_couplers_to_m00_couplers_RDATA(255 downto 0);
  S_AXI_rlast(0) <= m00_couplers_to_m00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m00_couplers_to_m00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_m00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_m00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_m00_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m00_couplers_to_m00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_m00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_m00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_m00_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(255 downto 0) <= M_AXI_rdata(255 downto 0);
  m00_couplers_to_m00_couplers_RLAST(0) <= M_AXI_rlast(0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  m00_couplers_to_m00_couplers_WLAST(0) <= S_AXI_wlast(0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1UOYSZK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1UOYSZK;

architecture STRUCTURE of m00_couplers_imp_1UOYSZK is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_CPC24L is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_CPC24L;

architecture STRUCTURE of m01_couplers_imp_CPC24L is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_KWPK42 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_KWPK42;

architecture STRUCTURE of m01_couplers_imp_KWPK42 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARQOS : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREGION : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWQOS : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREGION : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m01_couplers_to_m01_couplers_ARADDR;
  M_AXI_arburst <= m01_couplers_to_m01_couplers_ARBURST;
  M_AXI_arcache <= m01_couplers_to_m01_couplers_ARCACHE;
  M_AXI_arlen <= m01_couplers_to_m01_couplers_ARLEN;
  M_AXI_arlock <= m01_couplers_to_m01_couplers_ARLOCK;
  M_AXI_arprot <= m01_couplers_to_m01_couplers_ARPROT;
  M_AXI_arqos <= m01_couplers_to_m01_couplers_ARQOS;
  M_AXI_arregion <= m01_couplers_to_m01_couplers_ARREGION;
  M_AXI_arsize <= m01_couplers_to_m01_couplers_ARSIZE;
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr <= m01_couplers_to_m01_couplers_AWADDR;
  M_AXI_awburst <= m01_couplers_to_m01_couplers_AWBURST;
  M_AXI_awcache <= m01_couplers_to_m01_couplers_AWCACHE;
  M_AXI_awlen <= m01_couplers_to_m01_couplers_AWLEN;
  M_AXI_awlock <= m01_couplers_to_m01_couplers_AWLOCK;
  M_AXI_awprot <= m01_couplers_to_m01_couplers_AWPROT;
  M_AXI_awqos <= m01_couplers_to_m01_couplers_AWQOS;
  M_AXI_awregion <= m01_couplers_to_m01_couplers_AWREGION;
  M_AXI_awsize <= m01_couplers_to_m01_couplers_AWSIZE;
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata <= m01_couplers_to_m01_couplers_WDATA;
  M_AXI_wlast <= m01_couplers_to_m01_couplers_WLAST;
  M_AXI_wstrb <= m01_couplers_to_m01_couplers_WSTRB;
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp <= m01_couplers_to_m01_couplers_BRESP;
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata <= m01_couplers_to_m01_couplers_RDATA;
  S_AXI_rlast <= m01_couplers_to_m01_couplers_RLAST;
  S_AXI_rresp <= m01_couplers_to_m01_couplers_RRESP;
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR <= S_AXI_araddr;
  m01_couplers_to_m01_couplers_ARBURST <= S_AXI_arburst;
  m01_couplers_to_m01_couplers_ARCACHE <= S_AXI_arcache;
  m01_couplers_to_m01_couplers_ARLEN <= S_AXI_arlen;
  m01_couplers_to_m01_couplers_ARLOCK <= S_AXI_arlock;
  m01_couplers_to_m01_couplers_ARPROT <= S_AXI_arprot;
  m01_couplers_to_m01_couplers_ARQOS <= S_AXI_arqos;
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARREGION <= S_AXI_arregion;
  m01_couplers_to_m01_couplers_ARSIZE <= S_AXI_arsize;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR <= S_AXI_awaddr;
  m01_couplers_to_m01_couplers_AWBURST <= S_AXI_awburst;
  m01_couplers_to_m01_couplers_AWCACHE <= S_AXI_awcache;
  m01_couplers_to_m01_couplers_AWLEN <= S_AXI_awlen;
  m01_couplers_to_m01_couplers_AWLOCK <= S_AXI_awlock;
  m01_couplers_to_m01_couplers_AWPROT <= S_AXI_awprot;
  m01_couplers_to_m01_couplers_AWQOS <= S_AXI_awqos;
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWREGION <= S_AXI_awregion;
  m01_couplers_to_m01_couplers_AWSIZE <= S_AXI_awsize;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP <= M_AXI_bresp;
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA <= M_AXI_rdata;
  m01_couplers_to_m01_couplers_RLAST <= M_AXI_rlast;
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP <= M_AXI_rresp;
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA <= S_AXI_wdata;
  m01_couplers_to_m01_couplers_WLAST <= S_AXI_wlast;
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB <= S_AXI_wstrb;
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_13YH53F is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_13YH53F;

architecture STRUCTURE of m02_couplers_imp_13YH53F is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1WEW82K is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_1WEW82K;

architecture STRUCTURE of m02_couplers_imp_1WEW82K is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m02_couplers_to_m02_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m02_couplers_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= m02_couplers_to_m02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m02_couplers_to_m02_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m02_couplers_to_m02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m02_couplers_to_m02_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m02_couplers_to_m02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= m02_couplers_to_m02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m02_couplers_to_m02_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m02_couplers_to_m02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m02_couplers_to_m02_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m02_couplers_to_m02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(255 downto 0) <= m02_couplers_to_m02_couplers_WDATA(255 downto 0);
  M_AXI_wlast(0) <= m02_couplers_to_m02_couplers_WLAST(0);
  M_AXI_wstrb(31 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(31 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(255 downto 0) <= m02_couplers_to_m02_couplers_RDATA(255 downto 0);
  S_AXI_rlast(0) <= m02_couplers_to_m02_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m02_couplers_to_m02_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_m02_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_m02_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_m02_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m02_couplers_to_m02_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_m02_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_m02_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_m02_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(255 downto 0) <= M_AXI_rdata(255 downto 0);
  m02_couplers_to_m02_couplers_RLAST(0) <= M_AXI_rlast(0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  m02_couplers_to_m02_couplers_WLAST(0) <= S_AXI_wlast(0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_BXT7BT is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m03_couplers_imp_BXT7BT;

architecture STRUCTURE of m03_couplers_imp_BXT7BT is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m03_couplers_to_m03_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m03_couplers_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= m03_couplers_to_m03_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m03_couplers_to_m03_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m03_couplers_to_m03_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m03_couplers_to_m03_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m03_couplers_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m03_couplers_to_m03_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m03_couplers_to_m03_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= m03_couplers_to_m03_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m03_couplers_to_m03_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m03_couplers_to_m03_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m03_couplers_to_m03_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m03_couplers_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m03_couplers_to_m03_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m03_couplers_to_m03_couplers_AWVALID(0);
  M_AXI_bready(0) <= m03_couplers_to_m03_couplers_BREADY(0);
  M_AXI_rready(0) <= m03_couplers_to_m03_couplers_RREADY(0);
  M_AXI_wdata(255 downto 0) <= m03_couplers_to_m03_couplers_WDATA(255 downto 0);
  M_AXI_wlast(0) <= m03_couplers_to_m03_couplers_WLAST(0);
  M_AXI_wstrb(31 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(31 downto 0);
  M_AXI_wvalid(0) <= m03_couplers_to_m03_couplers_WVALID(0);
  S_AXI_arready(0) <= m03_couplers_to_m03_couplers_ARREADY(0);
  S_AXI_awready(0) <= m03_couplers_to_m03_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m03_couplers_to_m03_couplers_BVALID(0);
  S_AXI_rdata(255 downto 0) <= m03_couplers_to_m03_couplers_RDATA(255 downto 0);
  S_AXI_rlast(0) <= m03_couplers_to_m03_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m03_couplers_to_m03_couplers_RVALID(0);
  S_AXI_wready(0) <= m03_couplers_to_m03_couplers_WREADY(0);
  m03_couplers_to_m03_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m03_couplers_to_m03_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m03_couplers_to_m03_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m03_couplers_to_m03_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m03_couplers_to_m03_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m03_couplers_to_m03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_couplers_ARREADY(0) <= M_AXI_arready(0);
  m03_couplers_to_m03_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m03_couplers_to_m03_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m03_couplers_to_m03_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m03_couplers_to_m03_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m03_couplers_to_m03_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m03_couplers_to_m03_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m03_couplers_to_m03_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m03_couplers_to_m03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_couplers_AWREADY(0) <= M_AXI_awready(0);
  m03_couplers_to_m03_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m03_couplers_to_m03_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m03_couplers_to_m03_couplers_BREADY(0) <= S_AXI_bready(0);
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m03_couplers_to_m03_couplers_RDATA(255 downto 0) <= M_AXI_rdata(255 downto 0);
  m03_couplers_to_m03_couplers_RLAST(0) <= M_AXI_rlast(0);
  m03_couplers_to_m03_couplers_RREADY(0) <= S_AXI_rready(0);
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m03_couplers_to_m03_couplers_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  m03_couplers_to_m03_couplers_WLAST(0) <= S_AXI_wlast(0);
  m03_couplers_to_m03_couplers_WREADY(0) <= M_AXI_wready(0);
  m03_couplers_to_m03_couplers_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  m03_couplers_to_m03_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_LIX1FY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_LIX1FY;

architecture STRUCTURE of m03_couplers_imp_LIX1FY is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_DKHEXI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_DKHEXI;

architecture STRUCTURE of m04_couplers_imp_DKHEXI is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_NZKTFL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_NZKTFL;

architecture STRUCTURE of m04_couplers_imp_NZKTFL is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m04_couplers_to_m04_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m04_couplers_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= m04_couplers_to_m04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m04_couplers_to_m04_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m04_couplers_to_m04_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m04_couplers_to_m04_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m04_couplers_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m04_couplers_to_m04_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= m04_couplers_to_m04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m04_couplers_to_m04_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m04_couplers_to_m04_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m04_couplers_to_m04_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m04_couplers_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m04_couplers_to_m04_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(255 downto 0) <= m04_couplers_to_m04_couplers_WDATA(255 downto 0);
  M_AXI_wlast(0) <= m04_couplers_to_m04_couplers_WLAST(0);
  M_AXI_wstrb(31 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(31 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(255 downto 0) <= m04_couplers_to_m04_couplers_RDATA(255 downto 0);
  S_AXI_rlast(0) <= m04_couplers_to_m04_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m04_couplers_to_m04_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m04_couplers_to_m04_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m04_couplers_to_m04_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m04_couplers_to_m04_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m04_couplers_to_m04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m04_couplers_to_m04_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m04_couplers_to_m04_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m04_couplers_to_m04_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m04_couplers_to_m04_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m04_couplers_to_m04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(255 downto 0) <= M_AXI_rdata(255 downto 0);
  m04_couplers_to_m04_couplers_RLAST(0) <= M_AXI_rlast(0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  m04_couplers_to_m04_couplers_WLAST(0) <= S_AXI_wlast(0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_12T9EV8 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_12T9EV8;

architecture STRUCTURE of m05_couplers_imp_12T9EV8 is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_m05_couplers_ARLOCK : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_m05_couplers_AWLOCK : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m05_couplers_to_m05_couplers_RLAST : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m05_couplers_to_m05_couplers_WLAST : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= m05_couplers_to_m05_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m05_couplers_to_m05_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m05_couplers_to_m05_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m05_couplers_to_m05_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m05_couplers_to_m05_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m05_couplers_to_m05_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= m05_couplers_to_m05_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m05_couplers_to_m05_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m05_couplers_to_m05_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m05_couplers_to_m05_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m05_couplers_to_m05_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m05_couplers_to_m05_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(255 downto 0) <= m05_couplers_to_m05_couplers_WDATA(255 downto 0);
  M_AXI_wlast <= m05_couplers_to_m05_couplers_WLAST;
  M_AXI_wstrb(31 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(31 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(255 downto 0) <= m05_couplers_to_m05_couplers_RDATA(255 downto 0);
  S_AXI_rlast <= m05_couplers_to_m05_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m05_couplers_to_m05_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m05_couplers_to_m05_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m05_couplers_to_m05_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m05_couplers_to_m05_couplers_ARLOCK <= S_AXI_arlock;
  m05_couplers_to_m05_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m05_couplers_to_m05_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m05_couplers_to_m05_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m05_couplers_to_m05_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m05_couplers_to_m05_couplers_AWLOCK <= S_AXI_awlock;
  m05_couplers_to_m05_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(255 downto 0) <= M_AXI_rdata(255 downto 0);
  m05_couplers_to_m05_couplers_RLAST <= M_AXI_rlast;
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(255 downto 0) <= S_AXI_wdata(255 downto 0);
  m05_couplers_to_m05_couplers_WLAST <= S_AXI_wlast;
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WSTRB(31 downto 0) <= S_AXI_wstrb(31 downto 0);
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1TVRB6B is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1TVRB6B;

architecture STRUCTURE of m05_couplers_imp_1TVRB6B is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_F0YGJU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_F0YGJU;

architecture STRUCTURE of m06_couplers_imp_F0YGJU is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARBURST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARCACHE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARLEN : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARLOCK : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARPROT : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARQOS : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARREGION : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARSIZE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWBURST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWCACHE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWLEN : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWLOCK : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWPROT : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWQOS : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWREGION : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWSIZE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RLAST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WLAST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m06_couplers_to_m06_couplers_ARADDR;
  M_AXI_arburst <= m06_couplers_to_m06_couplers_ARBURST;
  M_AXI_arcache <= m06_couplers_to_m06_couplers_ARCACHE;
  M_AXI_arlen <= m06_couplers_to_m06_couplers_ARLEN;
  M_AXI_arlock <= m06_couplers_to_m06_couplers_ARLOCK;
  M_AXI_arprot <= m06_couplers_to_m06_couplers_ARPROT;
  M_AXI_arqos <= m06_couplers_to_m06_couplers_ARQOS;
  M_AXI_arregion <= m06_couplers_to_m06_couplers_ARREGION;
  M_AXI_arsize <= m06_couplers_to_m06_couplers_ARSIZE;
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr <= m06_couplers_to_m06_couplers_AWADDR;
  M_AXI_awburst <= m06_couplers_to_m06_couplers_AWBURST;
  M_AXI_awcache <= m06_couplers_to_m06_couplers_AWCACHE;
  M_AXI_awlen <= m06_couplers_to_m06_couplers_AWLEN;
  M_AXI_awlock <= m06_couplers_to_m06_couplers_AWLOCK;
  M_AXI_awprot <= m06_couplers_to_m06_couplers_AWPROT;
  M_AXI_awqos <= m06_couplers_to_m06_couplers_AWQOS;
  M_AXI_awregion <= m06_couplers_to_m06_couplers_AWREGION;
  M_AXI_awsize <= m06_couplers_to_m06_couplers_AWSIZE;
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata <= m06_couplers_to_m06_couplers_WDATA;
  M_AXI_wlast <= m06_couplers_to_m06_couplers_WLAST;
  M_AXI_wstrb <= m06_couplers_to_m06_couplers_WSTRB;
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp <= m06_couplers_to_m06_couplers_BRESP;
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata <= m06_couplers_to_m06_couplers_RDATA;
  S_AXI_rlast <= m06_couplers_to_m06_couplers_RLAST;
  S_AXI_rresp <= m06_couplers_to_m06_couplers_RRESP;
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR <= S_AXI_araddr;
  m06_couplers_to_m06_couplers_ARBURST <= S_AXI_arburst;
  m06_couplers_to_m06_couplers_ARCACHE <= S_AXI_arcache;
  m06_couplers_to_m06_couplers_ARLEN <= S_AXI_arlen;
  m06_couplers_to_m06_couplers_ARLOCK <= S_AXI_arlock;
  m06_couplers_to_m06_couplers_ARPROT <= S_AXI_arprot;
  m06_couplers_to_m06_couplers_ARQOS <= S_AXI_arqos;
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARREGION <= S_AXI_arregion;
  m06_couplers_to_m06_couplers_ARSIZE <= S_AXI_arsize;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR <= S_AXI_awaddr;
  m06_couplers_to_m06_couplers_AWBURST <= S_AXI_awburst;
  m06_couplers_to_m06_couplers_AWCACHE <= S_AXI_awcache;
  m06_couplers_to_m06_couplers_AWLEN <= S_AXI_awlen;
  m06_couplers_to_m06_couplers_AWLOCK <= S_AXI_awlock;
  m06_couplers_to_m06_couplers_AWPROT <= S_AXI_awprot;
  m06_couplers_to_m06_couplers_AWQOS <= S_AXI_awqos;
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWREGION <= S_AXI_awregion;
  m06_couplers_to_m06_couplers_AWSIZE <= S_AXI_awsize;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP <= M_AXI_bresp;
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA <= M_AXI_rdata;
  m06_couplers_to_m06_couplers_RLAST <= M_AXI_rlast;
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP <= M_AXI_rresp;
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA <= S_AXI_wdata;
  m06_couplers_to_m06_couplers_WLAST <= S_AXI_wlast;
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB <= S_AXI_wstrb;
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_MEFJX9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_MEFJX9;

architecture STRUCTURE of m06_couplers_imp_MEFJX9 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_HPW4OD is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_HPW4OD;

architecture STRUCTURE of s00_couplers_imp_HPW4OD is
  component mts_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mts_auto_us_0;
  component mts_auto_rs_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mts_auto_rs_0;
  component mts_auto_rs_w_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mts_auto_rs_w_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_rs_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_rs_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_to_auto_us_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_rs_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_rs_to_auto_us_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_rs_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_to_auto_us_ARREADY : STD_LOGIC;
  signal auto_rs_to_auto_us_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_to_auto_us_ARVALID : STD_LOGIC;
  signal auto_rs_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_rs_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_to_auto_us_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_rs_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_rs_to_auto_us_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_rs_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_to_auto_us_AWREADY : STD_LOGIC;
  signal auto_rs_to_auto_us_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_to_auto_us_AWVALID : STD_LOGIC;
  signal auto_rs_to_auto_us_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_rs_to_auto_us_BREADY : STD_LOGIC;
  signal auto_rs_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_to_auto_us_BVALID : STD_LOGIC;
  signal auto_rs_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_rs_to_auto_us_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_rs_to_auto_us_RLAST : STD_LOGIC;
  signal auto_rs_to_auto_us_RREADY : STD_LOGIC;
  signal auto_rs_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_to_auto_us_RVALID : STD_LOGIC;
  signal auto_rs_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_rs_to_auto_us_WLAST : STD_LOGIC;
  signal auto_rs_to_auto_us_WREADY : STD_LOGIC;
  signal auto_rs_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_rs_to_auto_us_WVALID : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_rs_w_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_rs_w_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_rs_w_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_rs_w_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_rs_w_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_rs_w_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal auto_rs_w_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal auto_rs_w_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_rs_w_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_rs_w_to_s00_couplers_WVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_us_to_auto_rs_w_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_auto_rs_w_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_auto_rs_w_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_ARVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_us_to_auto_rs_w_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_auto_rs_w_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_auto_rs_w_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_AWVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_BREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_BVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal auto_us_to_auto_rs_w_RLAST : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_RVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal auto_us_to_auto_rs_w_WLAST : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_auto_rs_w_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_rs_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_rs_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_rs_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_rs_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_rs_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_rs_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_rs_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_rs_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_rs_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_rs_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_rs_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_rs_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_rs_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_rs_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_rs_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_rs_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_rs_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_rs_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_rs_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_rs_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_rs_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_rs_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_rs_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_rs_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_rs_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_rs_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_rs_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_rs_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_rs_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_rs_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_rs_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_rs_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_rs_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_rs_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_rs_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_rs_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_rs_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_rs_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_rs_WVALID : STD_LOGIC;
  signal NLW_auto_rs_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_auto_rs_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_auto_rs_w_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_rs_w_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(39 downto 0) <= auto_rs_w_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_rs_w_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_rs_w_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_rs_w_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_rs_w_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_rs_w_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_rs_w_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_rs_w_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_rs_w_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_rs_w_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_rs_w_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_rs_w_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_rs_w_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_rs_w_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_rs_w_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_rs_w_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_rs_w_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_rs_w_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_rs_w_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_rs_w_to_s00_couplers_RREADY;
  M_AXI_wdata(255 downto 0) <= auto_rs_w_to_s00_couplers_WDATA(255 downto 0);
  M_AXI_wlast <= auto_rs_w_to_s00_couplers_WLAST;
  M_AXI_wstrb(31 downto 0) <= auto_rs_w_to_s00_couplers_WSTRB(31 downto 0);
  M_AXI_wvalid <= auto_rs_w_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_rs_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_rs_AWREADY;
  S_AXI_bid(15 downto 0) <= s00_couplers_to_auto_rs_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_rs_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_rs_BVALID;
  S_AXI_rdata(127 downto 0) <= s00_couplers_to_auto_rs_RDATA(127 downto 0);
  S_AXI_rid(15 downto 0) <= s00_couplers_to_auto_rs_RID(15 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_rs_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_rs_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_rs_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_rs_WREADY;
  auto_rs_w_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_rs_w_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_rs_w_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_rs_w_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_rs_w_to_s00_couplers_RDATA(255 downto 0) <= M_AXI_rdata(255 downto 0);
  auto_rs_w_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_rs_w_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_rs_w_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_rs_w_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_rs_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_rs_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_rs_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_rs_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  s00_couplers_to_auto_rs_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_rs_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_auto_rs_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_rs_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_rs_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_rs_ARUSER(15 downto 0) <= S_AXI_aruser(15 downto 0);
  s00_couplers_to_auto_rs_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_rs_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_rs_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_rs_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_rs_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  s00_couplers_to_auto_rs_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_rs_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_auto_rs_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_rs_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_rs_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_rs_AWUSER(15 downto 0) <= S_AXI_awuser(15 downto 0);
  s00_couplers_to_auto_rs_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_rs_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_rs_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_rs_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  s00_couplers_to_auto_rs_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_rs_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  s00_couplers_to_auto_rs_WVALID <= S_AXI_wvalid;
auto_rs: component mts_auto_rs_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_rs_to_auto_us_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_rs_to_auto_us_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_rs_to_auto_us_ARCACHE(3 downto 0),
      m_axi_arid(15 downto 0) => auto_rs_to_auto_us_ARID(15 downto 0),
      m_axi_arlen(7 downto 0) => auto_rs_to_auto_us_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_rs_to_auto_us_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_rs_to_auto_us_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_rs_to_auto_us_ARQOS(3 downto 0),
      m_axi_arready => auto_rs_to_auto_us_ARREADY,
      m_axi_arregion(3 downto 0) => auto_rs_to_auto_us_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_rs_to_auto_us_ARSIZE(2 downto 0),
      m_axi_aruser(15 downto 0) => NLW_auto_rs_m_axi_aruser_UNCONNECTED(15 downto 0),
      m_axi_arvalid => auto_rs_to_auto_us_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_rs_to_auto_us_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_rs_to_auto_us_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_rs_to_auto_us_AWCACHE(3 downto 0),
      m_axi_awid(15 downto 0) => auto_rs_to_auto_us_AWID(15 downto 0),
      m_axi_awlen(7 downto 0) => auto_rs_to_auto_us_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_rs_to_auto_us_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_rs_to_auto_us_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_rs_to_auto_us_AWQOS(3 downto 0),
      m_axi_awready => auto_rs_to_auto_us_AWREADY,
      m_axi_awregion(3 downto 0) => auto_rs_to_auto_us_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_rs_to_auto_us_AWSIZE(2 downto 0),
      m_axi_awuser(15 downto 0) => NLW_auto_rs_m_axi_awuser_UNCONNECTED(15 downto 0),
      m_axi_awvalid => auto_rs_to_auto_us_AWVALID,
      m_axi_bid(15 downto 0) => auto_rs_to_auto_us_BID(15 downto 0),
      m_axi_bready => auto_rs_to_auto_us_BREADY,
      m_axi_bresp(1 downto 0) => auto_rs_to_auto_us_BRESP(1 downto 0),
      m_axi_bvalid => auto_rs_to_auto_us_BVALID,
      m_axi_rdata(127 downto 0) => auto_rs_to_auto_us_RDATA(127 downto 0),
      m_axi_rid(15 downto 0) => auto_rs_to_auto_us_RID(15 downto 0),
      m_axi_rlast => auto_rs_to_auto_us_RLAST,
      m_axi_rready => auto_rs_to_auto_us_RREADY,
      m_axi_rresp(1 downto 0) => auto_rs_to_auto_us_RRESP(1 downto 0),
      m_axi_rvalid => auto_rs_to_auto_us_RVALID,
      m_axi_wdata(127 downto 0) => auto_rs_to_auto_us_WDATA(127 downto 0),
      m_axi_wlast => auto_rs_to_auto_us_WLAST,
      m_axi_wready => auto_rs_to_auto_us_WREADY,
      m_axi_wstrb(15 downto 0) => auto_rs_to_auto_us_WSTRB(15 downto 0),
      m_axi_wvalid => auto_rs_to_auto_us_WVALID,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_rs_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_rs_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_rs_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => s00_couplers_to_auto_rs_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_rs_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_rs_ARLOCK,
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_rs_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_rs_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_rs_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_rs_ARSIZE(2 downto 0),
      s_axi_aruser(15 downto 0) => s00_couplers_to_auto_rs_ARUSER(15 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_rs_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_rs_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_rs_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_rs_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s00_couplers_to_auto_rs_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_rs_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_rs_AWLOCK,
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_rs_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_rs_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_rs_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_rs_AWSIZE(2 downto 0),
      s_axi_awuser(15 downto 0) => s00_couplers_to_auto_rs_AWUSER(15 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_rs_AWVALID,
      s_axi_bid(15 downto 0) => s00_couplers_to_auto_rs_BID(15 downto 0),
      s_axi_bready => s00_couplers_to_auto_rs_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_rs_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_rs_BVALID,
      s_axi_rdata(127 downto 0) => s00_couplers_to_auto_rs_RDATA(127 downto 0),
      s_axi_rid(15 downto 0) => s00_couplers_to_auto_rs_RID(15 downto 0),
      s_axi_rlast => s00_couplers_to_auto_rs_RLAST,
      s_axi_rready => s00_couplers_to_auto_rs_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_rs_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_rs_RVALID,
      s_axi_wdata(127 downto 0) => s00_couplers_to_auto_rs_WDATA(127 downto 0),
      s_axi_wlast => s00_couplers_to_auto_rs_WLAST,
      s_axi_wready => s00_couplers_to_auto_rs_WREADY,
      s_axi_wstrb(15 downto 0) => s00_couplers_to_auto_rs_WSTRB(15 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_rs_WVALID
    );
auto_rs_w: component mts_auto_rs_w_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_rs_w_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_rs_w_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_rs_w_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_rs_w_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_rs_w_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_rs_w_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_rs_w_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_rs_w_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_rs_w_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_rs_w_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_rs_w_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_rs_w_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_rs_w_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_rs_w_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_rs_w_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_rs_w_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_rs_w_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_rs_w_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_rs_w_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_rs_w_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_rs_w_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_rs_w_to_s00_couplers_AWVALID,
      m_axi_bready => auto_rs_w_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_rs_w_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_rs_w_to_s00_couplers_BVALID,
      m_axi_rdata(255 downto 0) => auto_rs_w_to_s00_couplers_RDATA(255 downto 0),
      m_axi_rlast => auto_rs_w_to_s00_couplers_RLAST,
      m_axi_rready => auto_rs_w_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_rs_w_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_rs_w_to_s00_couplers_RVALID,
      m_axi_wdata(255 downto 0) => auto_rs_w_to_s00_couplers_WDATA(255 downto 0),
      m_axi_wlast => auto_rs_w_to_s00_couplers_WLAST,
      m_axi_wready => auto_rs_w_to_s00_couplers_WREADY,
      m_axi_wstrb(31 downto 0) => auto_rs_w_to_s00_couplers_WSTRB(31 downto 0),
      m_axi_wvalid => auto_rs_w_to_s00_couplers_WVALID,
      s_axi_araddr(39 downto 0) => auto_us_to_auto_rs_w_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => auto_us_to_auto_rs_w_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_us_to_auto_rs_w_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_us_to_auto_rs_w_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_us_to_auto_rs_w_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_us_to_auto_rs_w_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_us_to_auto_rs_w_ARQOS(3 downto 0),
      s_axi_arready => auto_us_to_auto_rs_w_ARREADY,
      s_axi_arregion(3 downto 0) => auto_us_to_auto_rs_w_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_us_to_auto_rs_w_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_us_to_auto_rs_w_ARVALID,
      s_axi_awaddr(39 downto 0) => auto_us_to_auto_rs_w_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => auto_us_to_auto_rs_w_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_us_to_auto_rs_w_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_us_to_auto_rs_w_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_us_to_auto_rs_w_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_us_to_auto_rs_w_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_us_to_auto_rs_w_AWQOS(3 downto 0),
      s_axi_awready => auto_us_to_auto_rs_w_AWREADY,
      s_axi_awregion(3 downto 0) => auto_us_to_auto_rs_w_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_us_to_auto_rs_w_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_us_to_auto_rs_w_AWVALID,
      s_axi_bready => auto_us_to_auto_rs_w_BREADY,
      s_axi_bresp(1 downto 0) => auto_us_to_auto_rs_w_BRESP(1 downto 0),
      s_axi_bvalid => auto_us_to_auto_rs_w_BVALID,
      s_axi_rdata(255 downto 0) => auto_us_to_auto_rs_w_RDATA(255 downto 0),
      s_axi_rlast => auto_us_to_auto_rs_w_RLAST,
      s_axi_rready => auto_us_to_auto_rs_w_RREADY,
      s_axi_rresp(1 downto 0) => auto_us_to_auto_rs_w_RRESP(1 downto 0),
      s_axi_rvalid => auto_us_to_auto_rs_w_RVALID,
      s_axi_wdata(255 downto 0) => auto_us_to_auto_rs_w_WDATA(255 downto 0),
      s_axi_wlast => auto_us_to_auto_rs_w_WLAST,
      s_axi_wready => auto_us_to_auto_rs_w_WREADY,
      s_axi_wstrb(31 downto 0) => auto_us_to_auto_rs_w_WSTRB(31 downto 0),
      s_axi_wvalid => auto_us_to_auto_rs_w_WVALID
    );
auto_us: component mts_auto_us_0
     port map (
      m_axi_araddr(39 downto 0) => auto_us_to_auto_rs_w_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_auto_rs_w_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_auto_rs_w_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_auto_rs_w_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_auto_rs_w_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_auto_rs_w_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_auto_rs_w_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_auto_rs_w_ARREADY,
      m_axi_arregion(3 downto 0) => auto_us_to_auto_rs_w_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_auto_rs_w_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_auto_rs_w_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_us_to_auto_rs_w_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_auto_rs_w_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_auto_rs_w_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_auto_rs_w_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_auto_rs_w_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_auto_rs_w_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_auto_rs_w_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_auto_rs_w_AWREADY,
      m_axi_awregion(3 downto 0) => auto_us_to_auto_rs_w_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_auto_rs_w_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_auto_rs_w_AWVALID,
      m_axi_bready => auto_us_to_auto_rs_w_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_auto_rs_w_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_auto_rs_w_BVALID,
      m_axi_rdata(255 downto 0) => auto_us_to_auto_rs_w_RDATA(255 downto 0),
      m_axi_rlast => auto_us_to_auto_rs_w_RLAST,
      m_axi_rready => auto_us_to_auto_rs_w_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_auto_rs_w_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_auto_rs_w_RVALID,
      m_axi_wdata(255 downto 0) => auto_us_to_auto_rs_w_WDATA(255 downto 0),
      m_axi_wlast => auto_us_to_auto_rs_w_WLAST,
      m_axi_wready => auto_us_to_auto_rs_w_WREADY,
      m_axi_wstrb(31 downto 0) => auto_us_to_auto_rs_w_WSTRB(31 downto 0),
      m_axi_wvalid => auto_us_to_auto_rs_w_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(39 downto 0) => auto_rs_to_auto_us_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => auto_rs_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_rs_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(15 downto 0) => auto_rs_to_auto_us_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => auto_rs_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_rs_to_auto_us_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_rs_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_rs_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => auto_rs_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => auto_rs_to_auto_us_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_rs_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_rs_to_auto_us_ARVALID,
      s_axi_awaddr(39 downto 0) => auto_rs_to_auto_us_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => auto_rs_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_rs_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => auto_rs_to_auto_us_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => auto_rs_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_rs_to_auto_us_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_rs_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_rs_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => auto_rs_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => auto_rs_to_auto_us_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_rs_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_rs_to_auto_us_AWVALID,
      s_axi_bid(15 downto 0) => auto_rs_to_auto_us_BID(15 downto 0),
      s_axi_bready => auto_rs_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => auto_rs_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => auto_rs_to_auto_us_BVALID,
      s_axi_rdata(127 downto 0) => auto_rs_to_auto_us_RDATA(127 downto 0),
      s_axi_rid(15 downto 0) => auto_rs_to_auto_us_RID(15 downto 0),
      s_axi_rlast => auto_rs_to_auto_us_RLAST,
      s_axi_rready => auto_rs_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => auto_rs_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => auto_rs_to_auto_us_RVALID,
      s_axi_wdata(127 downto 0) => auto_rs_to_auto_us_WDATA(127 downto 0),
      s_axi_wlast => auto_rs_to_auto_us_WLAST,
      s_axi_wready => auto_rs_to_auto_us_WREADY,
      s_axi_wstrb(15 downto 0) => auto_rs_to_auto_us_WSTRB(15 downto 0),
      s_axi_wvalid => auto_rs_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_OS3PMI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_OS3PMI;

architecture STRUCTURE of s00_couplers_imp_OS3PMI is
  component mts_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mts_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= auto_pc_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_pc_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(15 downto 0) <= s00_couplers_to_auto_pc_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(15 downto 0) <= s00_couplers_to_auto_pc_RID(15 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component mts_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_pc_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_pc_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_pc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => s00_couplers_to_auto_pc_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_pc_ARLOCK,
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_pc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s00_couplers_to_auto_pc_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_pc_AWLOCK,
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(15 downto 0) => s00_couplers_to_auto_pc_BID(15 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => s00_couplers_to_auto_pc_RID(15 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mts_control_interconnect_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end mts_control_interconnect_0;

architecture STRUCTURE of mts_control_interconnect_0 is
  component mts_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 279 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 279 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component mts_xbar_0;
  signal control_interconnect_ACLK_net : STD_LOGIC;
  signal control_interconnect_ARESETN_net : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal control_interconnect_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal control_interconnect_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_interconnect_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_ARREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_interconnect_to_s00_couplers_ARVALID : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal control_interconnect_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal control_interconnect_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_interconnect_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_AWREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_interconnect_to_s00_couplers_AWVALID : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal control_interconnect_to_s00_couplers_BREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_to_s00_couplers_BVALID : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal control_interconnect_to_s00_couplers_RLAST : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_RREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_to_s00_couplers_RVALID : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_to_s00_couplers_WLAST : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_WREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m02_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_control_interconnect_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_control_interconnect_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_control_interconnect_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_control_interconnect_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_control_interconnect_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_control_interconnect_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_control_interconnect_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 120 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 120 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 199 downto 160 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 199 downto 160 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 239 downto 200 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 239 downto 200 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 279 downto 240 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 279 downto 240 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
  M00_AXI_araddr(39 downto 0) <= m00_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_control_interconnect_ARVALID;
  M00_AXI_awaddr(39 downto 0) <= m00_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_control_interconnect_AWVALID;
  M00_AXI_bready <= m00_couplers_to_control_interconnect_BREADY;
  M00_AXI_rready <= m00_couplers_to_control_interconnect_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_control_interconnect_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_control_interconnect_WVALID;
  M01_AXI_araddr(39 downto 0) <= m01_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_control_interconnect_ARVALID;
  M01_AXI_awaddr(39 downto 0) <= m01_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_control_interconnect_AWVALID;
  M01_AXI_bready <= m01_couplers_to_control_interconnect_BREADY;
  M01_AXI_rready <= m01_couplers_to_control_interconnect_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_control_interconnect_WDATA(31 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_control_interconnect_WVALID;
  M02_AXI_araddr(39 downto 0) <= m02_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_control_interconnect_ARVALID(0);
  M02_AXI_awaddr(39 downto 0) <= m02_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_control_interconnect_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_control_interconnect_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_control_interconnect_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_control_interconnect_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_control_interconnect_WVALID(0);
  M03_AXI_araddr(39 downto 0) <= m03_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_control_interconnect_ARVALID;
  M03_AXI_awaddr(39 downto 0) <= m03_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_control_interconnect_AWVALID;
  M03_AXI_bready <= m03_couplers_to_control_interconnect_BREADY;
  M03_AXI_rready <= m03_couplers_to_control_interconnect_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_control_interconnect_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_control_interconnect_WVALID;
  M04_AXI_araddr(39 downto 0) <= m04_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_control_interconnect_ARVALID;
  M04_AXI_awaddr(39 downto 0) <= m04_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_control_interconnect_AWVALID;
  M04_AXI_bready <= m04_couplers_to_control_interconnect_BREADY;
  M04_AXI_rready <= m04_couplers_to_control_interconnect_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_control_interconnect_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_control_interconnect_WVALID;
  M05_AXI_araddr(39 downto 0) <= m05_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_control_interconnect_ARVALID;
  M05_AXI_awaddr(39 downto 0) <= m05_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_control_interconnect_AWVALID;
  M05_AXI_bready <= m05_couplers_to_control_interconnect_BREADY;
  M05_AXI_rready <= m05_couplers_to_control_interconnect_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_control_interconnect_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_control_interconnect_WVALID;
  M06_AXI_araddr(39 downto 0) <= m06_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_control_interconnect_ARVALID;
  M06_AXI_awaddr(39 downto 0) <= m06_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_control_interconnect_AWVALID;
  M06_AXI_bready <= m06_couplers_to_control_interconnect_BREADY;
  M06_AXI_rready <= m06_couplers_to_control_interconnect_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_control_interconnect_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_control_interconnect_WVALID;
  S00_AXI_arready <= control_interconnect_to_s00_couplers_ARREADY;
  S00_AXI_awready <= control_interconnect_to_s00_couplers_AWREADY;
  S00_AXI_bid(15 downto 0) <= control_interconnect_to_s00_couplers_BID(15 downto 0);
  S00_AXI_bresp(1 downto 0) <= control_interconnect_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= control_interconnect_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= control_interconnect_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(15 downto 0) <= control_interconnect_to_s00_couplers_RID(15 downto 0);
  S00_AXI_rlast <= control_interconnect_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= control_interconnect_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= control_interconnect_to_s00_couplers_RVALID;
  S00_AXI_wready <= control_interconnect_to_s00_couplers_WREADY;
  control_interconnect_ACLK_net <= ACLK;
  control_interconnect_ARESETN_net <= ARESETN;
  control_interconnect_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  control_interconnect_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  control_interconnect_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  control_interconnect_to_s00_couplers_ARID(15 downto 0) <= S00_AXI_arid(15 downto 0);
  control_interconnect_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  control_interconnect_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  control_interconnect_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  control_interconnect_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  control_interconnect_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  control_interconnect_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  control_interconnect_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  control_interconnect_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  control_interconnect_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  control_interconnect_to_s00_couplers_AWID(15 downto 0) <= S00_AXI_awid(15 downto 0);
  control_interconnect_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  control_interconnect_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  control_interconnect_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  control_interconnect_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  control_interconnect_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  control_interconnect_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  control_interconnect_to_s00_couplers_BREADY <= S00_AXI_bready;
  control_interconnect_to_s00_couplers_RREADY <= S00_AXI_rready;
  control_interconnect_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  control_interconnect_to_s00_couplers_WLAST <= S00_AXI_wlast;
  control_interconnect_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  control_interconnect_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_control_interconnect_ARREADY <= M00_AXI_arready;
  m00_couplers_to_control_interconnect_AWREADY <= M00_AXI_awready;
  m00_couplers_to_control_interconnect_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_control_interconnect_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_control_interconnect_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_control_interconnect_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_control_interconnect_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_control_interconnect_WREADY <= M00_AXI_wready;
  m01_couplers_to_control_interconnect_ARREADY <= M01_AXI_arready;
  m01_couplers_to_control_interconnect_AWREADY <= M01_AXI_awready;
  m01_couplers_to_control_interconnect_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_control_interconnect_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_control_interconnect_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_control_interconnect_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_control_interconnect_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_control_interconnect_WREADY <= M01_AXI_wready;
  m02_couplers_to_control_interconnect_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_control_interconnect_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_control_interconnect_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_control_interconnect_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_control_interconnect_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_control_interconnect_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_control_interconnect_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_control_interconnect_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_control_interconnect_ARREADY <= M03_AXI_arready;
  m03_couplers_to_control_interconnect_AWREADY <= M03_AXI_awready;
  m03_couplers_to_control_interconnect_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_control_interconnect_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_control_interconnect_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_control_interconnect_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_control_interconnect_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_control_interconnect_WREADY <= M03_AXI_wready;
  m04_couplers_to_control_interconnect_ARREADY <= M04_AXI_arready;
  m04_couplers_to_control_interconnect_AWREADY <= M04_AXI_awready;
  m04_couplers_to_control_interconnect_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_control_interconnect_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_control_interconnect_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_control_interconnect_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_control_interconnect_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_control_interconnect_WREADY <= M04_AXI_wready;
  m05_couplers_to_control_interconnect_ARREADY <= M05_AXI_arready;
  m05_couplers_to_control_interconnect_AWREADY <= M05_AXI_awready;
  m05_couplers_to_control_interconnect_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_control_interconnect_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_control_interconnect_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_control_interconnect_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_control_interconnect_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_control_interconnect_WREADY <= M05_AXI_wready;
  m06_couplers_to_control_interconnect_ARREADY <= M06_AXI_arready;
  m06_couplers_to_control_interconnect_AWREADY <= M06_AXI_awready;
  m06_couplers_to_control_interconnect_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_control_interconnect_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_control_interconnect_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_control_interconnect_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_control_interconnect_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_control_interconnect_WREADY <= M06_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1UOYSZK
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m00_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m00_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m00_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m00_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m00_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m00_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m00_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_CPC24L
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m01_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m01_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m01_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m01_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m01_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m01_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m01_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_control_interconnect_WREADY,
      M_AXI_wvalid => m01_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(39 downto 0) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_13YH53F
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m02_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready(0) => m02_couplers_to_control_interconnect_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_control_interconnect_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m02_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready(0) => m02_couplers_to_control_interconnect_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_control_interconnect_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_control_interconnect_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_control_interconnect_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_control_interconnect_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_control_interconnect_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_control_interconnect_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_control_interconnect_WVALID(0),
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(39 downto 0) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_LIX1FY
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m03_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m03_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m03_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m03_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m03_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m03_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m03_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m03_couplers_ARADDR(159 downto 120),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(39 downto 0) => xbar_to_m03_couplers_AWADDR(159 downto 120),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_DKHEXI
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m04_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m04_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m04_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m04_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m04_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m04_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m04_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m04_couplers_ARADDR(199 downto 160),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(39 downto 0) => xbar_to_m04_couplers_AWADDR(199 downto 160),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1TVRB6B
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m05_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m05_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m05_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m05_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m05_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m05_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m05_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m05_couplers_ARADDR(239 downto 200),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(39 downto 0) => xbar_to_m05_couplers_AWADDR(239 downto 200),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_MEFJX9
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m06_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m06_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m06_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m06_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m06_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m06_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m06_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m06_couplers_ARADDR(279 downto 240),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(39 downto 0) => xbar_to_m06_couplers_AWADDR(279 downto 240),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_OS3PMI
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => control_interconnect_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => control_interconnect_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => control_interconnect_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => control_interconnect_to_s00_couplers_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => control_interconnect_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => control_interconnect_to_s00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => control_interconnect_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => control_interconnect_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => control_interconnect_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => control_interconnect_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => control_interconnect_to_s00_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => control_interconnect_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => control_interconnect_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => control_interconnect_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => control_interconnect_to_s00_couplers_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => control_interconnect_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => control_interconnect_to_s00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => control_interconnect_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => control_interconnect_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => control_interconnect_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => control_interconnect_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => control_interconnect_to_s00_couplers_AWVALID,
      S_AXI_bid(15 downto 0) => control_interconnect_to_s00_couplers_BID(15 downto 0),
      S_AXI_bready => control_interconnect_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => control_interconnect_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => control_interconnect_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => control_interconnect_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(15 downto 0) => control_interconnect_to_s00_couplers_RID(15 downto 0),
      S_AXI_rlast => control_interconnect_to_s00_couplers_RLAST,
      S_AXI_rready => control_interconnect_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => control_interconnect_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => control_interconnect_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => control_interconnect_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => control_interconnect_to_s00_couplers_WLAST,
      S_AXI_wready => control_interconnect_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => control_interconnect_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => control_interconnect_to_s00_couplers_WVALID
    );
xbar: component mts_xbar_0
     port map (
      aclk => control_interconnect_ACLK_net,
      aresetn => control_interconnect_ARESETN_net,
      m_axi_araddr(279 downto 240) => xbar_to_m06_couplers_ARADDR(279 downto 240),
      m_axi_araddr(239 downto 200) => xbar_to_m05_couplers_ARADDR(239 downto 200),
      m_axi_araddr(199 downto 160) => xbar_to_m04_couplers_ARADDR(199 downto 160),
      m_axi_araddr(159 downto 120) => xbar_to_m03_couplers_ARADDR(159 downto 120),
      m_axi_araddr(119 downto 80) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      m_axi_araddr(79 downto 40) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      m_axi_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(20 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(20 downto 0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(279 downto 240) => xbar_to_m06_couplers_AWADDR(279 downto 240),
      m_axi_awaddr(239 downto 200) => xbar_to_m05_couplers_AWADDR(239 downto 200),
      m_axi_awaddr(199 downto 160) => xbar_to_m04_couplers_AWADDR(199 downto 160),
      m_axi_awaddr(159 downto 120) => xbar_to_m03_couplers_AWADDR(159 downto 120),
      m_axi_awaddr(119 downto 80) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      m_axi_awaddr(79 downto 40) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      m_axi_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(20 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(20 downto 0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => NLW_xbar_m_axi_wstrb_UNCONNECTED(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mts_internalRAM_interconnect_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC;
    M01_AXI_arburst : out STD_LOGIC;
    M01_AXI_arcache : out STD_LOGIC;
    M01_AXI_arlen : out STD_LOGIC;
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC;
    M01_AXI_arqos : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arregion : out STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC;
    M01_AXI_awburst : out STD_LOGIC;
    M01_AXI_awcache : out STD_LOGIC;
    M01_AXI_awlen : out STD_LOGIC;
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC;
    M01_AXI_awqos : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awregion : out STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC;
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC;
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC;
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M02_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M02_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M03_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M03_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M03_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M03_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M04_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M04_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M04_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M04_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M05_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_arlock : out STD_LOGIC;
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M05_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_awlock : out STD_LOGIC;
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M05_AXI_rlast : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M05_AXI_wlast : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC;
    M06_AXI_arburst : out STD_LOGIC;
    M06_AXI_arcache : out STD_LOGIC;
    M06_AXI_arlen : out STD_LOGIC;
    M06_AXI_arlock : out STD_LOGIC;
    M06_AXI_arprot : out STD_LOGIC;
    M06_AXI_arqos : out STD_LOGIC;
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arregion : out STD_LOGIC;
    M06_AXI_arsize : out STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC;
    M06_AXI_awburst : out STD_LOGIC;
    M06_AXI_awcache : out STD_LOGIC;
    M06_AXI_awlen : out STD_LOGIC;
    M06_AXI_awlock : out STD_LOGIC;
    M06_AXI_awprot : out STD_LOGIC;
    M06_AXI_awqos : out STD_LOGIC;
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awregion : out STD_LOGIC;
    M06_AXI_awsize : out STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC;
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC;
    M06_AXI_rlast : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC;
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC;
    M06_AXI_wlast : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC;
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end mts_internalRAM_interconnect_0;

architecture STRUCTURE of mts_internalRAM_interconnect_0 is
  component mts_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 279 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 1791 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 279 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 1791 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component mts_xbar_1;
  signal internalRAM_interconnect_ACLK_net : STD_LOGIC;
  signal internalRAM_interconnect_ARESETN_net : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_ARREADY : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_ARVALID : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_AWREADY : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_AWVALID : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_BREADY : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_BVALID : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_RLAST : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_RREADY : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_RVALID : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_WLAST : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_WREADY : STD_LOGIC;
  signal internalRAM_interconnect_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal internalRAM_interconnect_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_internalRAM_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_internalRAM_interconnect_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_internalRAM_interconnect_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_internalRAM_interconnect_ARADDR : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARBURST : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARCACHE : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARLEN : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARPROT : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARQOS : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARREADY : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARREGION : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARSIZE : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_ARVALID : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWADDR : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWBURST : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWCACHE : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWLEN : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWPROT : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWQOS : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWREADY : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWREGION : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWSIZE : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_AWVALID : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_BREADY : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_BRESP : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_BVALID : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_RDATA : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_RLAST : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_RREADY : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_RRESP : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_RVALID : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_WDATA : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_WLAST : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_WREADY : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_WSTRB : STD_LOGIC;
  signal m01_couplers_to_internalRAM_interconnect_WVALID : STD_LOGIC;
  signal m02_couplers_to_internalRAM_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_internalRAM_interconnect_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_internalRAM_interconnect_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_internalRAM_interconnect_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_internalRAM_interconnect_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_internalRAM_interconnect_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_internalRAM_interconnect_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_internalRAM_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_ARLOCK : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_ARREADY : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_ARVALID : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_AWLOCK : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_AWREADY : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_AWVALID : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_BREADY : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_BVALID : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_RLAST : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_RREADY : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_RVALID : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_WLAST : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_WREADY : STD_LOGIC;
  signal m05_couplers_to_internalRAM_interconnect_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_internalRAM_interconnect_WVALID : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARADDR : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARBURST : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARCACHE : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARLEN : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARLOCK : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARPROT : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARQOS : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARREADY : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARREGION : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARSIZE : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_ARVALID : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWADDR : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWBURST : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWCACHE : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWLEN : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWLOCK : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWPROT : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWQOS : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWREADY : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWREGION : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWSIZE : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_AWVALID : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_BREADY : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_BRESP : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_BVALID : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_RDATA : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_RLAST : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_RREADY : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_RRESP : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_RVALID : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_WDATA : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_WLAST : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_WREADY : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_WSTRB : STD_LOGIC;
  signal m06_couplers_to_internalRAM_interconnect_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 511 downto 256 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 767 downto 512 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 120 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 120 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 1023 downto 768 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 199 downto 160 );
  signal xbar_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 199 downto 160 );
  signal xbar_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal xbar_to_m04_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 1279 downto 1024 );
  signal xbar_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 239 downto 200 );
  signal xbar_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 239 downto 200 );
  signal xbar_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal xbar_to_m05_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 1535 downto 1280 );
  signal xbar_to_m05_couplers_WLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 279 downto 240 );
  signal xbar_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 279 downto 240 );
  signal xbar_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m06_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 1791 downto 1536 );
  signal xbar_to_m06_couplers_WLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  M00_AXI_araddr(39 downto 0) <= m00_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0);
  M00_AXI_arlock(0) <= m00_couplers_to_internalRAM_interconnect_ARLOCK(0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_internalRAM_interconnect_ARVALID(0);
  M00_AXI_awaddr(39 downto 0) <= m00_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0);
  M00_AXI_awlock(0) <= m00_couplers_to_internalRAM_interconnect_AWLOCK(0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_internalRAM_interconnect_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_internalRAM_interconnect_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_internalRAM_interconnect_RREADY(0);
  M00_AXI_wdata(255 downto 0) <= m00_couplers_to_internalRAM_interconnect_WDATA(255 downto 0);
  M00_AXI_wlast(0) <= m00_couplers_to_internalRAM_interconnect_WLAST(0);
  M00_AXI_wstrb(31 downto 0) <= m00_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_internalRAM_interconnect_WVALID(0);
  M01_AXI_araddr <= m01_couplers_to_internalRAM_interconnect_ARADDR;
  M01_AXI_arburst <= m01_couplers_to_internalRAM_interconnect_ARBURST;
  M01_AXI_arcache <= m01_couplers_to_internalRAM_interconnect_ARCACHE;
  M01_AXI_arlen <= m01_couplers_to_internalRAM_interconnect_ARLEN;
  M01_AXI_arlock <= m01_couplers_to_internalRAM_interconnect_ARLOCK;
  M01_AXI_arprot <= m01_couplers_to_internalRAM_interconnect_ARPROT;
  M01_AXI_arqos <= m01_couplers_to_internalRAM_interconnect_ARQOS;
  M01_AXI_arregion <= m01_couplers_to_internalRAM_interconnect_ARREGION;
  M01_AXI_arsize <= m01_couplers_to_internalRAM_interconnect_ARSIZE;
  M01_AXI_arvalid <= m01_couplers_to_internalRAM_interconnect_ARVALID;
  M01_AXI_awaddr <= m01_couplers_to_internalRAM_interconnect_AWADDR;
  M01_AXI_awburst <= m01_couplers_to_internalRAM_interconnect_AWBURST;
  M01_AXI_awcache <= m01_couplers_to_internalRAM_interconnect_AWCACHE;
  M01_AXI_awlen <= m01_couplers_to_internalRAM_interconnect_AWLEN;
  M01_AXI_awlock <= m01_couplers_to_internalRAM_interconnect_AWLOCK;
  M01_AXI_awprot <= m01_couplers_to_internalRAM_interconnect_AWPROT;
  M01_AXI_awqos <= m01_couplers_to_internalRAM_interconnect_AWQOS;
  M01_AXI_awregion <= m01_couplers_to_internalRAM_interconnect_AWREGION;
  M01_AXI_awsize <= m01_couplers_to_internalRAM_interconnect_AWSIZE;
  M01_AXI_awvalid <= m01_couplers_to_internalRAM_interconnect_AWVALID;
  M01_AXI_bready <= m01_couplers_to_internalRAM_interconnect_BREADY;
  M01_AXI_rready <= m01_couplers_to_internalRAM_interconnect_RREADY;
  M01_AXI_wdata <= m01_couplers_to_internalRAM_interconnect_WDATA;
  M01_AXI_wlast <= m01_couplers_to_internalRAM_interconnect_WLAST;
  M01_AXI_wstrb <= m01_couplers_to_internalRAM_interconnect_WSTRB;
  M01_AXI_wvalid <= m01_couplers_to_internalRAM_interconnect_WVALID;
  M02_AXI_araddr(39 downto 0) <= m02_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0);
  M02_AXI_arburst(1 downto 0) <= m02_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0);
  M02_AXI_arcache(3 downto 0) <= m02_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0);
  M02_AXI_arlen(7 downto 0) <= m02_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0);
  M02_AXI_arlock(0) <= m02_couplers_to_internalRAM_interconnect_ARLOCK(0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0);
  M02_AXI_arsize(2 downto 0) <= m02_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_internalRAM_interconnect_ARVALID(0);
  M02_AXI_awaddr(39 downto 0) <= m02_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0);
  M02_AXI_awburst(1 downto 0) <= m02_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0);
  M02_AXI_awcache(3 downto 0) <= m02_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0);
  M02_AXI_awlen(7 downto 0) <= m02_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0);
  M02_AXI_awlock(0) <= m02_couplers_to_internalRAM_interconnect_AWLOCK(0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0);
  M02_AXI_awsize(2 downto 0) <= m02_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_internalRAM_interconnect_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_internalRAM_interconnect_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_internalRAM_interconnect_RREADY(0);
  M02_AXI_wdata(255 downto 0) <= m02_couplers_to_internalRAM_interconnect_WDATA(255 downto 0);
  M02_AXI_wlast(0) <= m02_couplers_to_internalRAM_interconnect_WLAST(0);
  M02_AXI_wstrb(31 downto 0) <= m02_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_internalRAM_interconnect_WVALID(0);
  M03_AXI_araddr(39 downto 0) <= m03_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0);
  M03_AXI_arburst(1 downto 0) <= m03_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0);
  M03_AXI_arcache(3 downto 0) <= m03_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0);
  M03_AXI_arlen(7 downto 0) <= m03_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0);
  M03_AXI_arlock(0) <= m03_couplers_to_internalRAM_interconnect_ARLOCK(0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0);
  M03_AXI_arsize(2 downto 0) <= m03_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0);
  M03_AXI_arvalid(0) <= m03_couplers_to_internalRAM_interconnect_ARVALID(0);
  M03_AXI_awaddr(39 downto 0) <= m03_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0);
  M03_AXI_awburst(1 downto 0) <= m03_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0);
  M03_AXI_awcache(3 downto 0) <= m03_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0);
  M03_AXI_awlen(7 downto 0) <= m03_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0);
  M03_AXI_awlock(0) <= m03_couplers_to_internalRAM_interconnect_AWLOCK(0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0);
  M03_AXI_awsize(2 downto 0) <= m03_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0);
  M03_AXI_awvalid(0) <= m03_couplers_to_internalRAM_interconnect_AWVALID(0);
  M03_AXI_bready(0) <= m03_couplers_to_internalRAM_interconnect_BREADY(0);
  M03_AXI_rready(0) <= m03_couplers_to_internalRAM_interconnect_RREADY(0);
  M03_AXI_wdata(255 downto 0) <= m03_couplers_to_internalRAM_interconnect_WDATA(255 downto 0);
  M03_AXI_wlast(0) <= m03_couplers_to_internalRAM_interconnect_WLAST(0);
  M03_AXI_wstrb(31 downto 0) <= m03_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0);
  M03_AXI_wvalid(0) <= m03_couplers_to_internalRAM_interconnect_WVALID(0);
  M04_AXI_araddr(39 downto 0) <= m04_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0);
  M04_AXI_arburst(1 downto 0) <= m04_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0);
  M04_AXI_arcache(3 downto 0) <= m04_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0);
  M04_AXI_arlen(7 downto 0) <= m04_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0);
  M04_AXI_arlock(0) <= m04_couplers_to_internalRAM_interconnect_ARLOCK(0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0);
  M04_AXI_arsize(2 downto 0) <= m04_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_internalRAM_interconnect_ARVALID(0);
  M04_AXI_awaddr(39 downto 0) <= m04_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0);
  M04_AXI_awburst(1 downto 0) <= m04_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0);
  M04_AXI_awcache(3 downto 0) <= m04_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0);
  M04_AXI_awlen(7 downto 0) <= m04_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0);
  M04_AXI_awlock(0) <= m04_couplers_to_internalRAM_interconnect_AWLOCK(0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0);
  M04_AXI_awsize(2 downto 0) <= m04_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_internalRAM_interconnect_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_internalRAM_interconnect_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_internalRAM_interconnect_RREADY(0);
  M04_AXI_wdata(255 downto 0) <= m04_couplers_to_internalRAM_interconnect_WDATA(255 downto 0);
  M04_AXI_wlast(0) <= m04_couplers_to_internalRAM_interconnect_WLAST(0);
  M04_AXI_wstrb(31 downto 0) <= m04_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_internalRAM_interconnect_WVALID(0);
  M05_AXI_araddr(39 downto 0) <= m05_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0);
  M05_AXI_arburst(1 downto 0) <= m05_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0);
  M05_AXI_arcache(3 downto 0) <= m05_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0);
  M05_AXI_arlen(7 downto 0) <= m05_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0);
  M05_AXI_arlock <= m05_couplers_to_internalRAM_interconnect_ARLOCK;
  M05_AXI_arprot(2 downto 0) <= m05_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0);
  M05_AXI_arsize(2 downto 0) <= m05_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_internalRAM_interconnect_ARVALID;
  M05_AXI_awaddr(39 downto 0) <= m05_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0);
  M05_AXI_awburst(1 downto 0) <= m05_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0);
  M05_AXI_awcache(3 downto 0) <= m05_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0);
  M05_AXI_awlen(7 downto 0) <= m05_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0);
  M05_AXI_awlock <= m05_couplers_to_internalRAM_interconnect_AWLOCK;
  M05_AXI_awprot(2 downto 0) <= m05_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0);
  M05_AXI_awsize(2 downto 0) <= m05_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_internalRAM_interconnect_AWVALID;
  M05_AXI_bready <= m05_couplers_to_internalRAM_interconnect_BREADY;
  M05_AXI_rready <= m05_couplers_to_internalRAM_interconnect_RREADY;
  M05_AXI_wdata(255 downto 0) <= m05_couplers_to_internalRAM_interconnect_WDATA(255 downto 0);
  M05_AXI_wlast <= m05_couplers_to_internalRAM_interconnect_WLAST;
  M05_AXI_wstrb(31 downto 0) <= m05_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_internalRAM_interconnect_WVALID;
  M06_AXI_araddr <= m06_couplers_to_internalRAM_interconnect_ARADDR;
  M06_AXI_arburst <= m06_couplers_to_internalRAM_interconnect_ARBURST;
  M06_AXI_arcache <= m06_couplers_to_internalRAM_interconnect_ARCACHE;
  M06_AXI_arlen <= m06_couplers_to_internalRAM_interconnect_ARLEN;
  M06_AXI_arlock <= m06_couplers_to_internalRAM_interconnect_ARLOCK;
  M06_AXI_arprot <= m06_couplers_to_internalRAM_interconnect_ARPROT;
  M06_AXI_arqos <= m06_couplers_to_internalRAM_interconnect_ARQOS;
  M06_AXI_arregion <= m06_couplers_to_internalRAM_interconnect_ARREGION;
  M06_AXI_arsize <= m06_couplers_to_internalRAM_interconnect_ARSIZE;
  M06_AXI_arvalid <= m06_couplers_to_internalRAM_interconnect_ARVALID;
  M06_AXI_awaddr <= m06_couplers_to_internalRAM_interconnect_AWADDR;
  M06_AXI_awburst <= m06_couplers_to_internalRAM_interconnect_AWBURST;
  M06_AXI_awcache <= m06_couplers_to_internalRAM_interconnect_AWCACHE;
  M06_AXI_awlen <= m06_couplers_to_internalRAM_interconnect_AWLEN;
  M06_AXI_awlock <= m06_couplers_to_internalRAM_interconnect_AWLOCK;
  M06_AXI_awprot <= m06_couplers_to_internalRAM_interconnect_AWPROT;
  M06_AXI_awqos <= m06_couplers_to_internalRAM_interconnect_AWQOS;
  M06_AXI_awregion <= m06_couplers_to_internalRAM_interconnect_AWREGION;
  M06_AXI_awsize <= m06_couplers_to_internalRAM_interconnect_AWSIZE;
  M06_AXI_awvalid <= m06_couplers_to_internalRAM_interconnect_AWVALID;
  M06_AXI_bready <= m06_couplers_to_internalRAM_interconnect_BREADY;
  M06_AXI_rready <= m06_couplers_to_internalRAM_interconnect_RREADY;
  M06_AXI_wdata <= m06_couplers_to_internalRAM_interconnect_WDATA;
  M06_AXI_wlast <= m06_couplers_to_internalRAM_interconnect_WLAST;
  M06_AXI_wstrb <= m06_couplers_to_internalRAM_interconnect_WSTRB;
  M06_AXI_wvalid <= m06_couplers_to_internalRAM_interconnect_WVALID;
  S00_AXI_arready <= internalRAM_interconnect_to_s00_couplers_ARREADY;
  S00_AXI_awready <= internalRAM_interconnect_to_s00_couplers_AWREADY;
  S00_AXI_bid(15 downto 0) <= internalRAM_interconnect_to_s00_couplers_BID(15 downto 0);
  S00_AXI_bresp(1 downto 0) <= internalRAM_interconnect_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= internalRAM_interconnect_to_s00_couplers_BVALID;
  S00_AXI_rdata(127 downto 0) <= internalRAM_interconnect_to_s00_couplers_RDATA(127 downto 0);
  S00_AXI_rid(15 downto 0) <= internalRAM_interconnect_to_s00_couplers_RID(15 downto 0);
  S00_AXI_rlast <= internalRAM_interconnect_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= internalRAM_interconnect_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= internalRAM_interconnect_to_s00_couplers_RVALID;
  S00_AXI_wready <= internalRAM_interconnect_to_s00_couplers_WREADY;
  internalRAM_interconnect_ACLK_net <= ACLK;
  internalRAM_interconnect_ARESETN_net <= ARESETN;
  internalRAM_interconnect_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  internalRAM_interconnect_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  internalRAM_interconnect_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  internalRAM_interconnect_to_s00_couplers_ARID(15 downto 0) <= S00_AXI_arid(15 downto 0);
  internalRAM_interconnect_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  internalRAM_interconnect_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  internalRAM_interconnect_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  internalRAM_interconnect_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  internalRAM_interconnect_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  internalRAM_interconnect_to_s00_couplers_ARUSER(15 downto 0) <= S00_AXI_aruser(15 downto 0);
  internalRAM_interconnect_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  internalRAM_interconnect_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  internalRAM_interconnect_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  internalRAM_interconnect_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  internalRAM_interconnect_to_s00_couplers_AWID(15 downto 0) <= S00_AXI_awid(15 downto 0);
  internalRAM_interconnect_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  internalRAM_interconnect_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  internalRAM_interconnect_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  internalRAM_interconnect_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  internalRAM_interconnect_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  internalRAM_interconnect_to_s00_couplers_AWUSER(15 downto 0) <= S00_AXI_awuser(15 downto 0);
  internalRAM_interconnect_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  internalRAM_interconnect_to_s00_couplers_BREADY <= S00_AXI_bready;
  internalRAM_interconnect_to_s00_couplers_RREADY <= S00_AXI_rready;
  internalRAM_interconnect_to_s00_couplers_WDATA(127 downto 0) <= S00_AXI_wdata(127 downto 0);
  internalRAM_interconnect_to_s00_couplers_WLAST <= S00_AXI_wlast;
  internalRAM_interconnect_to_s00_couplers_WSTRB(15 downto 0) <= S00_AXI_wstrb(15 downto 0);
  internalRAM_interconnect_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_internalRAM_interconnect_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_internalRAM_interconnect_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_internalRAM_interconnect_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_internalRAM_interconnect_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_internalRAM_interconnect_RDATA(255 downto 0) <= M00_AXI_rdata(255 downto 0);
  m00_couplers_to_internalRAM_interconnect_RLAST(0) <= M00_AXI_rlast(0);
  m00_couplers_to_internalRAM_interconnect_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_internalRAM_interconnect_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_internalRAM_interconnect_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_internalRAM_interconnect_ARREADY <= M01_AXI_arready;
  m01_couplers_to_internalRAM_interconnect_AWREADY <= M01_AXI_awready;
  m01_couplers_to_internalRAM_interconnect_BRESP <= M01_AXI_bresp;
  m01_couplers_to_internalRAM_interconnect_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_internalRAM_interconnect_RDATA <= M01_AXI_rdata;
  m01_couplers_to_internalRAM_interconnect_RLAST <= M01_AXI_rlast;
  m01_couplers_to_internalRAM_interconnect_RRESP <= M01_AXI_rresp;
  m01_couplers_to_internalRAM_interconnect_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_internalRAM_interconnect_WREADY <= M01_AXI_wready;
  m02_couplers_to_internalRAM_interconnect_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_internalRAM_interconnect_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_internalRAM_interconnect_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_internalRAM_interconnect_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_internalRAM_interconnect_RDATA(255 downto 0) <= M02_AXI_rdata(255 downto 0);
  m02_couplers_to_internalRAM_interconnect_RLAST(0) <= M02_AXI_rlast(0);
  m02_couplers_to_internalRAM_interconnect_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_internalRAM_interconnect_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_internalRAM_interconnect_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_internalRAM_interconnect_ARREADY(0) <= M03_AXI_arready(0);
  m03_couplers_to_internalRAM_interconnect_AWREADY(0) <= M03_AXI_awready(0);
  m03_couplers_to_internalRAM_interconnect_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_internalRAM_interconnect_BVALID(0) <= M03_AXI_bvalid(0);
  m03_couplers_to_internalRAM_interconnect_RDATA(255 downto 0) <= M03_AXI_rdata(255 downto 0);
  m03_couplers_to_internalRAM_interconnect_RLAST(0) <= M03_AXI_rlast(0);
  m03_couplers_to_internalRAM_interconnect_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_internalRAM_interconnect_RVALID(0) <= M03_AXI_rvalid(0);
  m03_couplers_to_internalRAM_interconnect_WREADY(0) <= M03_AXI_wready(0);
  m04_couplers_to_internalRAM_interconnect_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_internalRAM_interconnect_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_internalRAM_interconnect_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_internalRAM_interconnect_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_internalRAM_interconnect_RDATA(255 downto 0) <= M04_AXI_rdata(255 downto 0);
  m04_couplers_to_internalRAM_interconnect_RLAST(0) <= M04_AXI_rlast(0);
  m04_couplers_to_internalRAM_interconnect_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_internalRAM_interconnect_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_internalRAM_interconnect_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_internalRAM_interconnect_ARREADY <= M05_AXI_arready;
  m05_couplers_to_internalRAM_interconnect_AWREADY <= M05_AXI_awready;
  m05_couplers_to_internalRAM_interconnect_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_internalRAM_interconnect_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_internalRAM_interconnect_RDATA(255 downto 0) <= M05_AXI_rdata(255 downto 0);
  m05_couplers_to_internalRAM_interconnect_RLAST <= M05_AXI_rlast;
  m05_couplers_to_internalRAM_interconnect_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_internalRAM_interconnect_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_internalRAM_interconnect_WREADY <= M05_AXI_wready;
  m06_couplers_to_internalRAM_interconnect_ARREADY <= M06_AXI_arready;
  m06_couplers_to_internalRAM_interconnect_AWREADY <= M06_AXI_awready;
  m06_couplers_to_internalRAM_interconnect_BRESP <= M06_AXI_bresp;
  m06_couplers_to_internalRAM_interconnect_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_internalRAM_interconnect_RDATA <= M06_AXI_rdata;
  m06_couplers_to_internalRAM_interconnect_RLAST <= M06_AXI_rlast;
  m06_couplers_to_internalRAM_interconnect_RRESP <= M06_AXI_rresp;
  m06_couplers_to_internalRAM_interconnect_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_internalRAM_interconnect_WREADY <= M06_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_15UCFIV
     port map (
      M_ACLK => internalRAM_interconnect_ACLK_net,
      M_ARESETN => internalRAM_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m00_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m00_couplers_to_internalRAM_interconnect_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0),
      M_AXI_arready(0) => m00_couplers_to_internalRAM_interconnect_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m00_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m00_couplers_to_internalRAM_interconnect_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m00_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m00_couplers_to_internalRAM_interconnect_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0),
      M_AXI_awready(0) => m00_couplers_to_internalRAM_interconnect_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m00_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m00_couplers_to_internalRAM_interconnect_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_internalRAM_interconnect_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_internalRAM_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_internalRAM_interconnect_BVALID(0),
      M_AXI_rdata(255 downto 0) => m00_couplers_to_internalRAM_interconnect_RDATA(255 downto 0),
      M_AXI_rlast(0) => m00_couplers_to_internalRAM_interconnect_RLAST(0),
      M_AXI_rready(0) => m00_couplers_to_internalRAM_interconnect_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_internalRAM_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_internalRAM_interconnect_RVALID(0),
      M_AXI_wdata(255 downto 0) => m00_couplers_to_internalRAM_interconnect_WDATA(255 downto 0),
      M_AXI_wlast(0) => m00_couplers_to_internalRAM_interconnect_WLAST(0),
      M_AXI_wready(0) => m00_couplers_to_internalRAM_interconnect_WREADY(0),
      M_AXI_wstrb(31 downto 0) => m00_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_internalRAM_interconnect_WVALID(0),
      S_ACLK => internalRAM_interconnect_ACLK_net,
      S_ARESETN => internalRAM_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(255 downto 0) => xbar_to_m00_couplers_RDATA(255 downto 0),
      S_AXI_rlast(0) => xbar_to_m00_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(255 downto 0) => xbar_to_m00_couplers_WDATA(255 downto 0),
      S_AXI_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(31 downto 0) => xbar_to_m00_couplers_WSTRB(31 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_KWPK42
     port map (
      M_ACLK => internalRAM_interconnect_ACLK_net,
      M_ARESETN => internalRAM_interconnect_ARESETN_net,
      M_AXI_araddr => m01_couplers_to_internalRAM_interconnect_ARADDR,
      M_AXI_arburst => m01_couplers_to_internalRAM_interconnect_ARBURST,
      M_AXI_arcache => m01_couplers_to_internalRAM_interconnect_ARCACHE,
      M_AXI_arlen => m01_couplers_to_internalRAM_interconnect_ARLEN,
      M_AXI_arlock => m01_couplers_to_internalRAM_interconnect_ARLOCK,
      M_AXI_arprot => m01_couplers_to_internalRAM_interconnect_ARPROT,
      M_AXI_arqos => m01_couplers_to_internalRAM_interconnect_ARQOS,
      M_AXI_arready => m01_couplers_to_internalRAM_interconnect_ARREADY,
      M_AXI_arregion => m01_couplers_to_internalRAM_interconnect_ARREGION,
      M_AXI_arsize => m01_couplers_to_internalRAM_interconnect_ARSIZE,
      M_AXI_arvalid => m01_couplers_to_internalRAM_interconnect_ARVALID,
      M_AXI_awaddr => m01_couplers_to_internalRAM_interconnect_AWADDR,
      M_AXI_awburst => m01_couplers_to_internalRAM_interconnect_AWBURST,
      M_AXI_awcache => m01_couplers_to_internalRAM_interconnect_AWCACHE,
      M_AXI_awlen => m01_couplers_to_internalRAM_interconnect_AWLEN,
      M_AXI_awlock => m01_couplers_to_internalRAM_interconnect_AWLOCK,
      M_AXI_awprot => m01_couplers_to_internalRAM_interconnect_AWPROT,
      M_AXI_awqos => m01_couplers_to_internalRAM_interconnect_AWQOS,
      M_AXI_awready => m01_couplers_to_internalRAM_interconnect_AWREADY,
      M_AXI_awregion => m01_couplers_to_internalRAM_interconnect_AWREGION,
      M_AXI_awsize => m01_couplers_to_internalRAM_interconnect_AWSIZE,
      M_AXI_awvalid => m01_couplers_to_internalRAM_interconnect_AWVALID,
      M_AXI_bready => m01_couplers_to_internalRAM_interconnect_BREADY,
      M_AXI_bresp => m01_couplers_to_internalRAM_interconnect_BRESP,
      M_AXI_bvalid => m01_couplers_to_internalRAM_interconnect_BVALID,
      M_AXI_rdata => m01_couplers_to_internalRAM_interconnect_RDATA,
      M_AXI_rlast => m01_couplers_to_internalRAM_interconnect_RLAST,
      M_AXI_rready => m01_couplers_to_internalRAM_interconnect_RREADY,
      M_AXI_rresp => m01_couplers_to_internalRAM_interconnect_RRESP,
      M_AXI_rvalid => m01_couplers_to_internalRAM_interconnect_RVALID,
      M_AXI_wdata => m01_couplers_to_internalRAM_interconnect_WDATA,
      M_AXI_wlast => m01_couplers_to_internalRAM_interconnect_WLAST,
      M_AXI_wready => m01_couplers_to_internalRAM_interconnect_WREADY,
      M_AXI_wstrb => m01_couplers_to_internalRAM_interconnect_WSTRB,
      M_AXI_wvalid => m01_couplers_to_internalRAM_interconnect_WVALID,
      S_ACLK => internalRAM_interconnect_ACLK_net,
      S_ARESETN => internalRAM_interconnect_ARESETN_net,
      S_AXI_araddr => xbar_to_m01_couplers_ARADDR(40),
      S_AXI_arburst => xbar_to_m01_couplers_ARBURST(2),
      S_AXI_arcache => xbar_to_m01_couplers_ARCACHE(4),
      S_AXI_arlen => xbar_to_m01_couplers_ARLEN(8),
      S_AXI_arlock => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot => xbar_to_m01_couplers_ARPROT(3),
      S_AXI_arqos => xbar_to_m01_couplers_ARQOS(4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m01_couplers_ARREGION(4),
      S_AXI_arsize => xbar_to_m01_couplers_ARSIZE(3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr => xbar_to_m01_couplers_AWADDR(40),
      S_AXI_awburst => xbar_to_m01_couplers_AWBURST(2),
      S_AXI_awcache => xbar_to_m01_couplers_AWCACHE(4),
      S_AXI_awlen => xbar_to_m01_couplers_AWLEN(8),
      S_AXI_awlock => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot => xbar_to_m01_couplers_AWPROT(3),
      S_AXI_awqos => xbar_to_m01_couplers_AWQOS(4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m01_couplers_AWREGION(4),
      S_AXI_awsize => xbar_to_m01_couplers_AWSIZE(3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp => xbar_to_m01_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata => xbar_to_m01_couplers_RDATA,
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp => xbar_to_m01_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata => xbar_to_m01_couplers_WDATA(256),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m01_couplers_WSTRB(32),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1WEW82K
     port map (
      M_ACLK => internalRAM_interconnect_ACLK_net,
      M_ARESETN => internalRAM_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m02_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => m02_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m02_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m02_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m02_couplers_to_internalRAM_interconnect_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0),
      M_AXI_arready(0) => m02_couplers_to_internalRAM_interconnect_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m02_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m02_couplers_to_internalRAM_interconnect_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m02_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => m02_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m02_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m02_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m02_couplers_to_internalRAM_interconnect_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0),
      M_AXI_awready(0) => m02_couplers_to_internalRAM_interconnect_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m02_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m02_couplers_to_internalRAM_interconnect_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_internalRAM_interconnect_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_internalRAM_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_internalRAM_interconnect_BVALID(0),
      M_AXI_rdata(255 downto 0) => m02_couplers_to_internalRAM_interconnect_RDATA(255 downto 0),
      M_AXI_rlast(0) => m02_couplers_to_internalRAM_interconnect_RLAST(0),
      M_AXI_rready(0) => m02_couplers_to_internalRAM_interconnect_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_internalRAM_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_internalRAM_interconnect_RVALID(0),
      M_AXI_wdata(255 downto 0) => m02_couplers_to_internalRAM_interconnect_WDATA(255 downto 0),
      M_AXI_wlast(0) => m02_couplers_to_internalRAM_interconnect_WLAST(0),
      M_AXI_wready(0) => m02_couplers_to_internalRAM_interconnect_WREADY(0),
      M_AXI_wstrb(31 downto 0) => m02_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_internalRAM_interconnect_WVALID(0),
      S_ACLK => internalRAM_interconnect_ACLK_net,
      S_ARESETN => internalRAM_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock(0) => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(39 downto 0) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock(0) => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(255 downto 0) => xbar_to_m02_couplers_RDATA(255 downto 0),
      S_AXI_rlast(0) => xbar_to_m02_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(255 downto 0) => xbar_to_m02_couplers_WDATA(767 downto 512),
      S_AXI_wlast(0) => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(31 downto 0) => xbar_to_m02_couplers_WSTRB(95 downto 64),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_BXT7BT
     port map (
      M_ACLK => internalRAM_interconnect_ACLK_net,
      M_ARESETN => internalRAM_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m03_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => m03_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m03_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m03_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m03_couplers_to_internalRAM_interconnect_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0),
      M_AXI_arready(0) => m03_couplers_to_internalRAM_interconnect_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m03_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m03_couplers_to_internalRAM_interconnect_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m03_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => m03_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m03_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m03_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m03_couplers_to_internalRAM_interconnect_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0),
      M_AXI_awready(0) => m03_couplers_to_internalRAM_interconnect_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m03_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m03_couplers_to_internalRAM_interconnect_AWVALID(0),
      M_AXI_bready(0) => m03_couplers_to_internalRAM_interconnect_BREADY(0),
      M_AXI_bresp(1 downto 0) => m03_couplers_to_internalRAM_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m03_couplers_to_internalRAM_interconnect_BVALID(0),
      M_AXI_rdata(255 downto 0) => m03_couplers_to_internalRAM_interconnect_RDATA(255 downto 0),
      M_AXI_rlast(0) => m03_couplers_to_internalRAM_interconnect_RLAST(0),
      M_AXI_rready(0) => m03_couplers_to_internalRAM_interconnect_RREADY(0),
      M_AXI_rresp(1 downto 0) => m03_couplers_to_internalRAM_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m03_couplers_to_internalRAM_interconnect_RVALID(0),
      M_AXI_wdata(255 downto 0) => m03_couplers_to_internalRAM_interconnect_WDATA(255 downto 0),
      M_AXI_wlast(0) => m03_couplers_to_internalRAM_interconnect_WLAST(0),
      M_AXI_wready(0) => m03_couplers_to_internalRAM_interconnect_WREADY(0),
      M_AXI_wstrb(31 downto 0) => m03_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0),
      M_AXI_wvalid(0) => m03_couplers_to_internalRAM_interconnect_WVALID(0),
      S_ACLK => internalRAM_interconnect_ACLK_net,
      S_ARESETN => internalRAM_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m03_couplers_ARADDR(159 downto 120),
      S_AXI_arburst(1 downto 0) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      S_AXI_arcache(3 downto 0) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      S_AXI_arlock(0) => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready(0) => xbar_to_m03_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      S_AXI_arvalid(0) => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(39 downto 0) => xbar_to_m03_couplers_AWADDR(159 downto 120),
      S_AXI_awburst(1 downto 0) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      S_AXI_awcache(3 downto 0) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      S_AXI_awlock(0) => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready(0) => xbar_to_m03_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      S_AXI_awvalid(0) => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready(0) => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m03_couplers_BVALID(0),
      S_AXI_rdata(255 downto 0) => xbar_to_m03_couplers_RDATA(255 downto 0),
      S_AXI_rlast(0) => xbar_to_m03_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m03_couplers_RVALID(0),
      S_AXI_wdata(255 downto 0) => xbar_to_m03_couplers_WDATA(1023 downto 768),
      S_AXI_wlast(0) => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready(0) => xbar_to_m03_couplers_WREADY(0),
      S_AXI_wstrb(31 downto 0) => xbar_to_m03_couplers_WSTRB(127 downto 96),
      S_AXI_wvalid(0) => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_NZKTFL
     port map (
      M_ACLK => internalRAM_interconnect_ACLK_net,
      M_ARESETN => internalRAM_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m04_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => m04_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m04_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m04_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m04_couplers_to_internalRAM_interconnect_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0),
      M_AXI_arready(0) => m04_couplers_to_internalRAM_interconnect_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m04_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m04_couplers_to_internalRAM_interconnect_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m04_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => m04_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m04_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m04_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m04_couplers_to_internalRAM_interconnect_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0),
      M_AXI_awready(0) => m04_couplers_to_internalRAM_interconnect_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m04_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m04_couplers_to_internalRAM_interconnect_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_internalRAM_interconnect_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_internalRAM_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_internalRAM_interconnect_BVALID(0),
      M_AXI_rdata(255 downto 0) => m04_couplers_to_internalRAM_interconnect_RDATA(255 downto 0),
      M_AXI_rlast(0) => m04_couplers_to_internalRAM_interconnect_RLAST(0),
      M_AXI_rready(0) => m04_couplers_to_internalRAM_interconnect_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_internalRAM_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_internalRAM_interconnect_RVALID(0),
      M_AXI_wdata(255 downto 0) => m04_couplers_to_internalRAM_interconnect_WDATA(255 downto 0),
      M_AXI_wlast(0) => m04_couplers_to_internalRAM_interconnect_WLAST(0),
      M_AXI_wready(0) => m04_couplers_to_internalRAM_interconnect_WREADY(0),
      M_AXI_wstrb(31 downto 0) => m04_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_internalRAM_interconnect_WVALID(0),
      S_ACLK => internalRAM_interconnect_ACLK_net,
      S_ARESETN => internalRAM_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m04_couplers_ARADDR(199 downto 160),
      S_AXI_arburst(1 downto 0) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      S_AXI_arcache(3 downto 0) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      S_AXI_arlen(7 downto 0) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      S_AXI_arlock(0) => xbar_to_m04_couplers_ARLOCK(4),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(39 downto 0) => xbar_to_m04_couplers_AWADDR(199 downto 160),
      S_AXI_awburst(1 downto 0) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      S_AXI_awcache(3 downto 0) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      S_AXI_awlen(7 downto 0) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      S_AXI_awlock(0) => xbar_to_m04_couplers_AWLOCK(4),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(255 downto 0) => xbar_to_m04_couplers_RDATA(255 downto 0),
      S_AXI_rlast(0) => xbar_to_m04_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(255 downto 0) => xbar_to_m04_couplers_WDATA(1279 downto 1024),
      S_AXI_wlast(0) => xbar_to_m04_couplers_WLAST(4),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(31 downto 0) => xbar_to_m04_couplers_WSTRB(159 downto 128),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_12T9EV8
     port map (
      M_ACLK => internalRAM_interconnect_ACLK_net,
      M_ARESETN => internalRAM_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m05_couplers_to_internalRAM_interconnect_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => m05_couplers_to_internalRAM_interconnect_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m05_couplers_to_internalRAM_interconnect_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m05_couplers_to_internalRAM_interconnect_ARLEN(7 downto 0),
      M_AXI_arlock => m05_couplers_to_internalRAM_interconnect_ARLOCK,
      M_AXI_arprot(2 downto 0) => m05_couplers_to_internalRAM_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m05_couplers_to_internalRAM_interconnect_ARREADY,
      M_AXI_arsize(2 downto 0) => m05_couplers_to_internalRAM_interconnect_ARSIZE(2 downto 0),
      M_AXI_arvalid => m05_couplers_to_internalRAM_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m05_couplers_to_internalRAM_interconnect_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => m05_couplers_to_internalRAM_interconnect_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m05_couplers_to_internalRAM_interconnect_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m05_couplers_to_internalRAM_interconnect_AWLEN(7 downto 0),
      M_AXI_awlock => m05_couplers_to_internalRAM_interconnect_AWLOCK,
      M_AXI_awprot(2 downto 0) => m05_couplers_to_internalRAM_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m05_couplers_to_internalRAM_interconnect_AWREADY,
      M_AXI_awsize(2 downto 0) => m05_couplers_to_internalRAM_interconnect_AWSIZE(2 downto 0),
      M_AXI_awvalid => m05_couplers_to_internalRAM_interconnect_AWVALID,
      M_AXI_bready => m05_couplers_to_internalRAM_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_internalRAM_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_internalRAM_interconnect_BVALID,
      M_AXI_rdata(255 downto 0) => m05_couplers_to_internalRAM_interconnect_RDATA(255 downto 0),
      M_AXI_rlast => m05_couplers_to_internalRAM_interconnect_RLAST,
      M_AXI_rready => m05_couplers_to_internalRAM_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_internalRAM_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_internalRAM_interconnect_RVALID,
      M_AXI_wdata(255 downto 0) => m05_couplers_to_internalRAM_interconnect_WDATA(255 downto 0),
      M_AXI_wlast => m05_couplers_to_internalRAM_interconnect_WLAST,
      M_AXI_wready => m05_couplers_to_internalRAM_interconnect_WREADY,
      M_AXI_wstrb(31 downto 0) => m05_couplers_to_internalRAM_interconnect_WSTRB(31 downto 0),
      M_AXI_wvalid => m05_couplers_to_internalRAM_interconnect_WVALID,
      S_ACLK => internalRAM_interconnect_ACLK_net,
      S_ARESETN => internalRAM_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m05_couplers_ARADDR(239 downto 200),
      S_AXI_arburst(1 downto 0) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      S_AXI_arcache(3 downto 0) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      S_AXI_arlen(7 downto 0) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      S_AXI_arlock => xbar_to_m05_couplers_ARLOCK(5),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(39 downto 0) => xbar_to_m05_couplers_AWADDR(239 downto 200),
      S_AXI_awburst(1 downto 0) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      S_AXI_awcache(3 downto 0) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      S_AXI_awlen(7 downto 0) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      S_AXI_awlock => xbar_to_m05_couplers_AWLOCK(5),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(255 downto 0) => xbar_to_m05_couplers_RDATA(255 downto 0),
      S_AXI_rlast => xbar_to_m05_couplers_RLAST,
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(255 downto 0) => xbar_to_m05_couplers_WDATA(1535 downto 1280),
      S_AXI_wlast => xbar_to_m05_couplers_WLAST(5),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(31 downto 0) => xbar_to_m05_couplers_WSTRB(191 downto 160),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_F0YGJU
     port map (
      M_ACLK => internalRAM_interconnect_ACLK_net,
      M_ARESETN => internalRAM_interconnect_ARESETN_net,
      M_AXI_araddr => m06_couplers_to_internalRAM_interconnect_ARADDR,
      M_AXI_arburst => m06_couplers_to_internalRAM_interconnect_ARBURST,
      M_AXI_arcache => m06_couplers_to_internalRAM_interconnect_ARCACHE,
      M_AXI_arlen => m06_couplers_to_internalRAM_interconnect_ARLEN,
      M_AXI_arlock => m06_couplers_to_internalRAM_interconnect_ARLOCK,
      M_AXI_arprot => m06_couplers_to_internalRAM_interconnect_ARPROT,
      M_AXI_arqos => m06_couplers_to_internalRAM_interconnect_ARQOS,
      M_AXI_arready => m06_couplers_to_internalRAM_interconnect_ARREADY,
      M_AXI_arregion => m06_couplers_to_internalRAM_interconnect_ARREGION,
      M_AXI_arsize => m06_couplers_to_internalRAM_interconnect_ARSIZE,
      M_AXI_arvalid => m06_couplers_to_internalRAM_interconnect_ARVALID,
      M_AXI_awaddr => m06_couplers_to_internalRAM_interconnect_AWADDR,
      M_AXI_awburst => m06_couplers_to_internalRAM_interconnect_AWBURST,
      M_AXI_awcache => m06_couplers_to_internalRAM_interconnect_AWCACHE,
      M_AXI_awlen => m06_couplers_to_internalRAM_interconnect_AWLEN,
      M_AXI_awlock => m06_couplers_to_internalRAM_interconnect_AWLOCK,
      M_AXI_awprot => m06_couplers_to_internalRAM_interconnect_AWPROT,
      M_AXI_awqos => m06_couplers_to_internalRAM_interconnect_AWQOS,
      M_AXI_awready => m06_couplers_to_internalRAM_interconnect_AWREADY,
      M_AXI_awregion => m06_couplers_to_internalRAM_interconnect_AWREGION,
      M_AXI_awsize => m06_couplers_to_internalRAM_interconnect_AWSIZE,
      M_AXI_awvalid => m06_couplers_to_internalRAM_interconnect_AWVALID,
      M_AXI_bready => m06_couplers_to_internalRAM_interconnect_BREADY,
      M_AXI_bresp => m06_couplers_to_internalRAM_interconnect_BRESP,
      M_AXI_bvalid => m06_couplers_to_internalRAM_interconnect_BVALID,
      M_AXI_rdata => m06_couplers_to_internalRAM_interconnect_RDATA,
      M_AXI_rlast => m06_couplers_to_internalRAM_interconnect_RLAST,
      M_AXI_rready => m06_couplers_to_internalRAM_interconnect_RREADY,
      M_AXI_rresp => m06_couplers_to_internalRAM_interconnect_RRESP,
      M_AXI_rvalid => m06_couplers_to_internalRAM_interconnect_RVALID,
      M_AXI_wdata => m06_couplers_to_internalRAM_interconnect_WDATA,
      M_AXI_wlast => m06_couplers_to_internalRAM_interconnect_WLAST,
      M_AXI_wready => m06_couplers_to_internalRAM_interconnect_WREADY,
      M_AXI_wstrb => m06_couplers_to_internalRAM_interconnect_WSTRB,
      M_AXI_wvalid => m06_couplers_to_internalRAM_interconnect_WVALID,
      S_ACLK => internalRAM_interconnect_ACLK_net,
      S_ARESETN => internalRAM_interconnect_ARESETN_net,
      S_AXI_araddr => xbar_to_m06_couplers_ARADDR(240),
      S_AXI_arburst => xbar_to_m06_couplers_ARBURST(12),
      S_AXI_arcache => xbar_to_m06_couplers_ARCACHE(24),
      S_AXI_arlen => xbar_to_m06_couplers_ARLEN(48),
      S_AXI_arlock => xbar_to_m06_couplers_ARLOCK(6),
      S_AXI_arprot => xbar_to_m06_couplers_ARPROT(18),
      S_AXI_arqos => xbar_to_m06_couplers_ARQOS(24),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m06_couplers_ARREGION(24),
      S_AXI_arsize => xbar_to_m06_couplers_ARSIZE(18),
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr => xbar_to_m06_couplers_AWADDR(240),
      S_AXI_awburst => xbar_to_m06_couplers_AWBURST(12),
      S_AXI_awcache => xbar_to_m06_couplers_AWCACHE(24),
      S_AXI_awlen => xbar_to_m06_couplers_AWLEN(48),
      S_AXI_awlock => xbar_to_m06_couplers_AWLOCK(6),
      S_AXI_awprot => xbar_to_m06_couplers_AWPROT(18),
      S_AXI_awqos => xbar_to_m06_couplers_AWQOS(24),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m06_couplers_AWREGION(24),
      S_AXI_awsize => xbar_to_m06_couplers_AWSIZE(18),
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp => xbar_to_m06_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata => xbar_to_m06_couplers_RDATA,
      S_AXI_rlast => xbar_to_m06_couplers_RLAST,
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp => xbar_to_m06_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata => xbar_to_m06_couplers_WDATA(1536),
      S_AXI_wlast => xbar_to_m06_couplers_WLAST(6),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m06_couplers_WSTRB(192),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_HPW4OD
     port map (
      M_ACLK => internalRAM_interconnect_ACLK_net,
      M_ARESETN => internalRAM_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(255 downto 0) => s00_couplers_to_xbar_RDATA(255 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(255 downto 0) => s00_couplers_to_xbar_WDATA(255 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(31 downto 0) => s00_couplers_to_xbar_WSTRB(31 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => internalRAM_interconnect_ACLK_net,
      S_ARESETN => internalRAM_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => internalRAM_interconnect_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => internalRAM_interconnect_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => internalRAM_interconnect_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => internalRAM_interconnect_to_s00_couplers_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => internalRAM_interconnect_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => internalRAM_interconnect_to_s00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => internalRAM_interconnect_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => internalRAM_interconnect_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => internalRAM_interconnect_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => internalRAM_interconnect_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(15 downto 0) => internalRAM_interconnect_to_s00_couplers_ARUSER(15 downto 0),
      S_AXI_arvalid => internalRAM_interconnect_to_s00_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => internalRAM_interconnect_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => internalRAM_interconnect_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => internalRAM_interconnect_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => internalRAM_interconnect_to_s00_couplers_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => internalRAM_interconnect_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => internalRAM_interconnect_to_s00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => internalRAM_interconnect_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => internalRAM_interconnect_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => internalRAM_interconnect_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => internalRAM_interconnect_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(15 downto 0) => internalRAM_interconnect_to_s00_couplers_AWUSER(15 downto 0),
      S_AXI_awvalid => internalRAM_interconnect_to_s00_couplers_AWVALID,
      S_AXI_bid(15 downto 0) => internalRAM_interconnect_to_s00_couplers_BID(15 downto 0),
      S_AXI_bready => internalRAM_interconnect_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => internalRAM_interconnect_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => internalRAM_interconnect_to_s00_couplers_BVALID,
      S_AXI_rdata(127 downto 0) => internalRAM_interconnect_to_s00_couplers_RDATA(127 downto 0),
      S_AXI_rid(15 downto 0) => internalRAM_interconnect_to_s00_couplers_RID(15 downto 0),
      S_AXI_rlast => internalRAM_interconnect_to_s00_couplers_RLAST,
      S_AXI_rready => internalRAM_interconnect_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => internalRAM_interconnect_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => internalRAM_interconnect_to_s00_couplers_RVALID,
      S_AXI_wdata(127 downto 0) => internalRAM_interconnect_to_s00_couplers_WDATA(127 downto 0),
      S_AXI_wlast => internalRAM_interconnect_to_s00_couplers_WLAST,
      S_AXI_wready => internalRAM_interconnect_to_s00_couplers_WREADY,
      S_AXI_wstrb(15 downto 0) => internalRAM_interconnect_to_s00_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid => internalRAM_interconnect_to_s00_couplers_WVALID
    );
xbar: component mts_xbar_1
     port map (
      aclk => internalRAM_interconnect_ACLK_net,
      aresetn => internalRAM_interconnect_ARESETN_net,
      m_axi_araddr(279 downto 240) => xbar_to_m06_couplers_ARADDR(279 downto 240),
      m_axi_araddr(239 downto 200) => xbar_to_m05_couplers_ARADDR(239 downto 200),
      m_axi_araddr(199 downto 160) => xbar_to_m04_couplers_ARADDR(199 downto 160),
      m_axi_araddr(159 downto 120) => xbar_to_m03_couplers_ARADDR(159 downto 120),
      m_axi_araddr(119 downto 80) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      m_axi_araddr(79 downto 40) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      m_axi_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      m_axi_arburst(13 downto 12) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      m_axi_arburst(11 downto 10) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      m_axi_arburst(9 downto 8) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(27 downto 24) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      m_axi_arcache(23 downto 20) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      m_axi_arcache(19 downto 16) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(55 downto 48) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      m_axi_arlen(47 downto 40) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      m_axi_arlen(39 downto 32) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(6) => xbar_to_m06_couplers_ARLOCK(6),
      m_axi_arlock(5) => xbar_to_m05_couplers_ARLOCK(5),
      m_axi_arlock(4) => xbar_to_m04_couplers_ARLOCK(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(27 downto 24) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      m_axi_arqos(23 downto 8) => NLW_xbar_m_axi_arqos_UNCONNECTED(23 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => NLW_xbar_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY(0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arregion(27 downto 24) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      m_axi_arregion(23 downto 8) => NLW_xbar_m_axi_arregion_UNCONNECTED(23 downto 8),
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => NLW_xbar_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(20 downto 18) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      m_axi_arsize(17 downto 15) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      m_axi_arsize(14 downto 12) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(279 downto 240) => xbar_to_m06_couplers_AWADDR(279 downto 240),
      m_axi_awaddr(239 downto 200) => xbar_to_m05_couplers_AWADDR(239 downto 200),
      m_axi_awaddr(199 downto 160) => xbar_to_m04_couplers_AWADDR(199 downto 160),
      m_axi_awaddr(159 downto 120) => xbar_to_m03_couplers_AWADDR(159 downto 120),
      m_axi_awaddr(119 downto 80) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      m_axi_awaddr(79 downto 40) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      m_axi_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      m_axi_awburst(13 downto 12) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      m_axi_awburst(11 downto 10) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      m_axi_awburst(9 downto 8) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(27 downto 24) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      m_axi_awcache(23 downto 20) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      m_axi_awcache(19 downto 16) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(55 downto 48) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      m_axi_awlen(47 downto 40) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      m_axi_awlen(39 downto 32) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(6) => xbar_to_m06_couplers_AWLOCK(6),
      m_axi_awlock(5) => xbar_to_m05_couplers_AWLOCK(5),
      m_axi_awlock(4) => xbar_to_m04_couplers_AWLOCK(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(27 downto 24) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      m_axi_awqos(23 downto 8) => NLW_xbar_m_axi_awqos_UNCONNECTED(23 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => NLW_xbar_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY(0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awregion(27 downto 24) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      m_axi_awregion(23 downto 8) => NLW_xbar_m_axi_awregion_UNCONNECTED(23 downto 8),
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => NLW_xbar_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(20 downto 18) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      m_axi_awsize(17 downto 15) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      m_axi_awsize(14 downto 12) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(13) => xbar_to_m06_couplers_BRESP,
      m_axi_bresp(12) => xbar_to_m06_couplers_BRESP,
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(2) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID(0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(1791) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1790) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1789) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1788) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1787) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1786) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1785) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1784) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1783) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1782) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1781) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1780) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1779) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1778) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1777) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1776) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1775) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1774) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1773) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1772) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1771) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1770) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1769) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1768) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1767) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1766) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1765) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1764) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1763) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1762) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1761) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1760) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1759) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1758) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1757) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1756) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1755) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1754) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1753) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1752) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1751) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1750) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1749) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1748) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1747) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1746) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1745) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1744) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1743) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1742) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1741) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1740) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1739) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1738) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1737) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1736) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1735) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1734) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1733) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1732) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1731) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1730) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1729) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1728) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1727) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1726) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1725) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1724) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1723) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1722) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1721) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1720) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1719) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1718) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1717) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1716) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1715) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1714) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1713) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1712) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1711) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1710) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1709) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1708) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1707) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1706) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1705) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1704) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1703) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1702) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1701) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1700) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1699) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1698) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1697) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1696) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1695) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1694) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1693) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1692) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1691) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1690) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1689) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1688) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1687) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1686) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1685) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1684) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1683) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1682) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1681) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1680) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1679) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1678) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1677) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1676) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1675) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1674) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1673) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1672) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1671) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1670) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1669) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1668) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1667) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1666) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1665) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1664) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1663) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1662) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1661) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1660) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1659) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1658) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1657) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1656) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1655) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1654) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1653) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1652) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1651) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1650) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1649) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1648) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1647) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1646) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1645) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1644) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1643) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1642) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1641) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1640) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1639) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1638) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1637) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1636) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1635) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1634) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1633) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1632) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1631) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1630) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1629) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1628) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1627) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1626) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1625) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1624) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1623) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1622) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1621) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1620) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1619) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1618) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1617) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1616) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1615) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1614) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1613) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1612) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1611) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1610) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1609) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1608) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1607) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1606) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1605) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1604) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1603) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1602) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1601) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1600) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1599) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1598) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1597) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1596) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1595) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1594) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1593) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1592) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1591) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1590) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1589) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1588) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1587) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1586) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1585) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1584) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1583) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1582) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1581) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1580) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1579) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1578) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1577) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1576) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1575) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1574) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1573) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1572) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1571) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1570) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1569) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1568) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1567) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1566) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1565) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1564) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1563) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1562) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1561) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1560) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1559) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1558) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1557) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1556) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1555) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1554) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1553) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1552) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1551) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1550) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1549) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1548) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1547) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1546) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1545) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1544) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1543) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1542) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1541) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1540) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1539) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1538) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1537) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1536) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(1535 downto 1280) => xbar_to_m05_couplers_RDATA(255 downto 0),
      m_axi_rdata(1279 downto 1024) => xbar_to_m04_couplers_RDATA(255 downto 0),
      m_axi_rdata(1023 downto 768) => xbar_to_m03_couplers_RDATA(255 downto 0),
      m_axi_rdata(767 downto 512) => xbar_to_m02_couplers_RDATA(255 downto 0),
      m_axi_rdata(511) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(510) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(509) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(508) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(507) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(506) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(505) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(504) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(503) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(502) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(501) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(500) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(499) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(498) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(497) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(496) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(495) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(494) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(493) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(492) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(491) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(490) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(489) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(488) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(487) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(486) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(485) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(484) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(483) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(482) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(481) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(480) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(479) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(478) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(477) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(476) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(475) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(474) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(473) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(472) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(471) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(470) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(469) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(468) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(467) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(466) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(465) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(464) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(463) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(462) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(461) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(460) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(459) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(458) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(457) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(456) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(455) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(454) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(453) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(452) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(451) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(450) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(449) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(448) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(447) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(446) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(445) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(444) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(443) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(442) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(441) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(440) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(439) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(438) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(437) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(436) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(435) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(434) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(433) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(432) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(431) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(430) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(429) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(428) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(427) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(426) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(425) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(424) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(423) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(422) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(421) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(420) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(419) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(418) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(417) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(416) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(415) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(414) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(413) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(412) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(411) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(410) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(409) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(408) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(407) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(406) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(405) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(404) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(403) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(402) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(401) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(400) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(399) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(398) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(397) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(396) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(395) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(394) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(393) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(392) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(391) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(390) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(389) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(388) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(387) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(386) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(385) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(384) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(383) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(382) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(381) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(380) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(379) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(378) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(377) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(376) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(375) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(374) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(373) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(372) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(371) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(370) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(369) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(368) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(367) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(366) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(365) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(364) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(363) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(362) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(361) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(360) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(359) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(358) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(357) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(356) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(355) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(354) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(353) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(352) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(351) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(350) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(349) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(348) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(347) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(346) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(345) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(344) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(343) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(342) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(341) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(340) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(339) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(338) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(337) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(336) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(335) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(334) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(333) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(332) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(331) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(330) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(329) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(328) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(327) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(326) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(325) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(324) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(323) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(322) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(321) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(320) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(319) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(318) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(317) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(316) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(315) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(314) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(313) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(312) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(311) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(310) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(309) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(308) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(307) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(306) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(305) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(304) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(303) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(302) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(301) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(300) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(299) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(298) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(297) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(296) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(295) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(294) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(293) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(292) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(291) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(290) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(289) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(288) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(287) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(286) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(285) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(284) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(283) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(282) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(281) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(280) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(279) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(278) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(277) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(276) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(275) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(274) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(273) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(272) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(271) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(270) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(269) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(268) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(267) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(266) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(265) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(264) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(263) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(262) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(261) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(260) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(259) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(258) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(257) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(256) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(255 downto 0) => xbar_to_m00_couplers_RDATA(255 downto 0),
      m_axi_rlast(6) => xbar_to_m06_couplers_RLAST,
      m_axi_rlast(5) => xbar_to_m05_couplers_RLAST,
      m_axi_rlast(4) => xbar_to_m04_couplers_RLAST(0),
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST(0),
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST(0),
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST(0),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(13) => xbar_to_m06_couplers_RRESP,
      m_axi_rresp(12) => xbar_to_m06_couplers_RRESP,
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(2) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID(0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(1791 downto 1536) => xbar_to_m06_couplers_WDATA(1791 downto 1536),
      m_axi_wdata(1535 downto 1280) => xbar_to_m05_couplers_WDATA(1535 downto 1280),
      m_axi_wdata(1279 downto 1024) => xbar_to_m04_couplers_WDATA(1279 downto 1024),
      m_axi_wdata(1023 downto 768) => xbar_to_m03_couplers_WDATA(1023 downto 768),
      m_axi_wdata(767 downto 512) => xbar_to_m02_couplers_WDATA(767 downto 512),
      m_axi_wdata(511 downto 256) => xbar_to_m01_couplers_WDATA(511 downto 256),
      m_axi_wdata(255 downto 0) => xbar_to_m00_couplers_WDATA(255 downto 0),
      m_axi_wlast(6) => xbar_to_m06_couplers_WLAST(6),
      m_axi_wlast(5) => xbar_to_m05_couplers_WLAST(5),
      m_axi_wlast(4) => xbar_to_m04_couplers_WLAST(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY(0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(223 downto 192) => xbar_to_m06_couplers_WSTRB(223 downto 192),
      m_axi_wstrb(191 downto 160) => xbar_to_m05_couplers_WSTRB(191 downto 160),
      m_axi_wstrb(159 downto 128) => xbar_to_m04_couplers_WSTRB(159 downto 128),
      m_axi_wstrb(127 downto 96) => xbar_to_m03_couplers_WSTRB(127 downto 96),
      m_axi_wstrb(95 downto 64) => xbar_to_m02_couplers_WSTRB(95 downto 64),
      m_axi_wstrb(63 downto 32) => xbar_to_m01_couplers_WSTRB(63 downto 32),
      m_axi_wstrb(31 downto 0) => xbar_to_m00_couplers_WSTRB(31 downto 0),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(255 downto 0) => s00_couplers_to_xbar_RDATA(255 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(255 downto 0) => s00_couplers_to_xbar_WDATA(255 downto 0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(31 downto 0) => s00_couplers_to_xbar_WSTRB(31 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mts is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of mts : entity is "mts,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mts,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=84,numReposBlks=58,numNonXlnxBlks=0,numHierBlks=26,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of mts : entity is "mts.hwdef";
end mts;

architecture STRUCTURE of mts is
  component mts_ddr4_0_0 is
  port (
    c0_init_calib_complete : out STD_LOGIC;
    dbg_clk : out STD_LOGIC;
    c0_sys_clk_p : in STD_LOGIC;
    c0_sys_clk_n : in STD_LOGIC;
    dbg_bus : out STD_LOGIC_VECTOR ( 511 downto 0 );
    c0_ddr4_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    c0_ddr4_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_dm_dbi_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    c0_ddr4_dqs_c : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_dqs_t : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_reset_n : out STD_LOGIC;
    c0_ddr4_act_n : out STD_LOGIC;
    c0_ddr4_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_ui_clk : out STD_LOGIC;
    c0_ddr4_ui_clk_sync_rst : out STD_LOGIC;
    c0_ddr4_aresetn : in STD_LOGIC;
    c0_ddr4_s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr4_s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr4_s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_s_axi_awvalid : in STD_LOGIC;
    c0_ddr4_s_axi_awready : out STD_LOGIC;
    c0_ddr4_s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    c0_ddr4_s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    c0_ddr4_s_axi_wlast : in STD_LOGIC;
    c0_ddr4_s_axi_wvalid : in STD_LOGIC;
    c0_ddr4_s_axi_wready : out STD_LOGIC;
    c0_ddr4_s_axi_bready : in STD_LOGIC;
    c0_ddr4_s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_s_axi_bvalid : out STD_LOGIC;
    c0_ddr4_s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr4_s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr4_s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_s_axi_arvalid : in STD_LOGIC;
    c0_ddr4_s_axi_arready : out STD_LOGIC;
    c0_ddr4_s_axi_rready : in STD_LOGIC;
    c0_ddr4_s_axi_rlast : out STD_LOGIC;
    c0_ddr4_s_axi_rvalid : out STD_LOGIC;
    c0_ddr4_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    sys_rst : in STD_LOGIC
  );
  end component mts_ddr4_0_0;
  component mts_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component mts_smartconnect_0_0;
  component mts_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component mts_system_ila_0_0;
  component mts_system_management_wiz_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    vp : in STD_LOGIC;
    vn : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component mts_system_management_wiz_0_0;
  component mts_usp_rf_data_converter_1_0 is
  port (
    clk_adc0 : out STD_LOGIC;
    clk_adc1 : out STD_LOGIC;
    adc2_clk_p : in STD_LOGIC;
    adc2_clk_n : in STD_LOGIC;
    clk_adc2 : out STD_LOGIC;
    clk_adc3 : out STD_LOGIC;
    dac0_clk_p : in STD_LOGIC;
    dac0_clk_n : in STD_LOGIC;
    clk_dac0 : out STD_LOGIC;
    clk_dac1 : out STD_LOGIC;
    dac2_clk_p : in STD_LOGIC;
    dac2_clk_n : in STD_LOGIC;
    clk_dac2 : out STD_LOGIC;
    clk_dac3 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    sysref_in_p : in STD_LOGIC;
    sysref_in_n : in STD_LOGIC;
    user_sysref_adc : in STD_LOGIC;
    user_sysref_dac : in STD_LOGIC;
    vin0_01_p : in STD_LOGIC;
    vin0_01_n : in STD_LOGIC;
    vin0_23_p : in STD_LOGIC;
    vin0_23_n : in STD_LOGIC;
    vin1_01_p : in STD_LOGIC;
    vin1_01_n : in STD_LOGIC;
    vin2_01_p : in STD_LOGIC;
    vin2_01_n : in STD_LOGIC;
    vin2_23_p : in STD_LOGIC;
    vin2_23_n : in STD_LOGIC;
    vin3_01_p : in STD_LOGIC;
    vin3_01_n : in STD_LOGIC;
    vout00_p : out STD_LOGIC;
    vout00_n : out STD_LOGIC;
    vout10_p : out STD_LOGIC;
    vout10_n : out STD_LOGIC;
    vout20_p : out STD_LOGIC;
    vout20_n : out STD_LOGIC;
    vout30_p : out STD_LOGIC;
    vout30_n : out STD_LOGIC;
    m0_axis_aresetn : in STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m02_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m02_axis_tvalid : out STD_LOGIC;
    m02_axis_tready : in STD_LOGIC;
    m1_axis_aresetn : in STD_LOGIC;
    m1_axis_aclk : in STD_LOGIC;
    m10_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m10_axis_tvalid : out STD_LOGIC;
    m10_axis_tready : in STD_LOGIC;
    m2_axis_aresetn : in STD_LOGIC;
    m2_axis_aclk : in STD_LOGIC;
    m20_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m20_axis_tvalid : out STD_LOGIC;
    m20_axis_tready : in STD_LOGIC;
    m22_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m22_axis_tvalid : out STD_LOGIC;
    m22_axis_tready : in STD_LOGIC;
    m3_axis_aresetn : in STD_LOGIC;
    m3_axis_aclk : in STD_LOGIC;
    m30_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m30_axis_tvalid : out STD_LOGIC;
    m30_axis_tready : in STD_LOGIC;
    s0_axis_aresetn : in STD_LOGIC;
    s0_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s1_axis_aresetn : in STD_LOGIC;
    s1_axis_aclk : in STD_LOGIC;
    s10_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s10_axis_tvalid : in STD_LOGIC;
    s10_axis_tready : out STD_LOGIC;
    s2_axis_aresetn : in STD_LOGIC;
    s2_axis_aclk : in STD_LOGIC;
    s20_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s20_axis_tvalid : in STD_LOGIC;
    s20_axis_tready : out STD_LOGIC;
    s3_axis_aresetn : in STD_LOGIC;
    s3_axis_aclk : in STD_LOGIC;
    s30_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s30_axis_tvalid : in STD_LOGIC;
    s30_axis_tready : out STD_LOGIC
  );
  end component mts_usp_rf_data_converter_1_0;
  component mts_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component mts_xlconcat_0_0;
  component mts_zynq_ultra_ps_e_0_0 is
  port (
    maxihpm0_fpd_aclk : in STD_LOGIC;
    maxigp0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_awlock : out STD_LOGIC;
    maxigp0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awvalid : out STD_LOGIC;
    maxigp0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awready : in STD_LOGIC;
    maxigp0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_wlast : out STD_LOGIC;
    maxigp0_wvalid : out STD_LOGIC;
    maxigp0_wready : in STD_LOGIC;
    maxigp0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_bvalid : in STD_LOGIC;
    maxigp0_bready : out STD_LOGIC;
    maxigp0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_arlock : out STD_LOGIC;
    maxigp0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arvalid : out STD_LOGIC;
    maxigp0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_arready : in STD_LOGIC;
    maxigp0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_rlast : in STD_LOGIC;
    maxigp0_rvalid : in STD_LOGIC;
    maxigp0_rready : out STD_LOGIC;
    maxigp0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxihpm1_fpd_aclk : in STD_LOGIC;
    maxigp1_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp1_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_awlock : out STD_LOGIC;
    maxigp1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_awvalid : out STD_LOGIC;
    maxigp1_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_awready : in STD_LOGIC;
    maxigp1_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp1_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_wlast : out STD_LOGIC;
    maxigp1_wvalid : out STD_LOGIC;
    maxigp1_wready : in STD_LOGIC;
    maxigp1_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_bvalid : in STD_LOGIC;
    maxigp1_bready : out STD_LOGIC;
    maxigp1_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp1_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_arlock : out STD_LOGIC;
    maxigp1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_arvalid : out STD_LOGIC;
    maxigp1_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_arready : in STD_LOGIC;
    maxigp1_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_rlast : in STD_LOGIC;
    maxigp1_rvalid : in STD_LOGIC;
    maxigp1_rready : out STD_LOGIC;
    maxigp1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );
  end component mts_zynq_ultra_ps_e_0_0;
  signal BUFG_I_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal C0_SYS_CLK_0_1_CLK_N : STD_LOGIC;
  signal C0_SYS_CLK_0_1_CLK_P : STD_LOGIC;
  signal RFegressReset_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RFingressReset_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI1_1_ARREADY : STD_LOGIC;
  signal S_AXI1_1_ARVALID : STD_LOGIC;
  signal S_AXI1_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI1_1_AWREADY : STD_LOGIC;
  signal S_AXI1_1_AWVALID : STD_LOGIC;
  signal S_AXI1_1_BREADY : STD_LOGIC;
  signal S_AXI1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI1_1_BVALID : STD_LOGIC;
  signal S_AXI1_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI1_1_RREADY : STD_LOGIC;
  signal S_AXI1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI1_1_RVALID : STD_LOGIC;
  signal S_AXI1_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI1_1_WREADY : STD_LOGIC;
  signal S_AXI1_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI1_1_WVALID : STD_LOGIC;
  signal S_AXI2_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI2_1_ARREADY : STD_LOGIC;
  signal S_AXI2_1_ARVALID : STD_LOGIC;
  signal S_AXI2_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI2_1_AWREADY : STD_LOGIC;
  signal S_AXI2_1_AWVALID : STD_LOGIC;
  signal S_AXI2_1_BREADY : STD_LOGIC;
  signal S_AXI2_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI2_1_BVALID : STD_LOGIC;
  signal S_AXI2_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI2_1_RREADY : STD_LOGIC;
  signal S_AXI2_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI2_1_RVALID : STD_LOGIC;
  signal S_AXI2_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI2_1_WREADY : STD_LOGIC;
  signal S_AXI2_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI2_1_WVALID : STD_LOGIC;
  signal S_AXI_2_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_2_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_2_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_2_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_2_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_2_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal S_AXI_2_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_2_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal S_AXI_2_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_3_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_3_ARREADY : STD_LOGIC;
  signal S_AXI_3_ARVALID : STD_LOGIC;
  signal S_AXI_3_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_3_AWREADY : STD_LOGIC;
  signal S_AXI_3_AWVALID : STD_LOGIC;
  signal S_AXI_3_BREADY : STD_LOGIC;
  signal S_AXI_3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_3_BVALID : STD_LOGIC;
  signal S_AXI_3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_3_RREADY : STD_LOGIC;
  signal S_AXI_3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_3_RVALID : STD_LOGIC;
  signal S_AXI_3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_3_WREADY : STD_LOGIC;
  signal S_AXI_3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_3_WVALID : STD_LOGIC;
  signal adc2_clk_0_1_CLK_N : STD_LOGIC;
  signal adc2_clk_0_1_CLK_P : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_gpio_bram_cap_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_dac_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_fifo_flush_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_adc0_clk_out2 : STD_LOGIC;
  signal clocktreeMTS_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clocktreeMTS_interrupt : STD_LOGIC;
  signal control_interconnect_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M01_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M01_AXI_ARVALID : STD_LOGIC;
  signal control_interconnect_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M01_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M01_AXI_AWVALID : STD_LOGIC;
  signal control_interconnect_M01_AXI_BREADY : STD_LOGIC;
  signal control_interconnect_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M01_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M01_AXI_RREADY : STD_LOGIC;
  signal control_interconnect_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M01_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M01_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M01_AXI_WVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M06_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_ARVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M06_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_AWVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_BREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M06_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M06_AXI_RREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M06_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M06_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M06_AXI_WVALID : STD_LOGIC;
  signal dac0_clk_1_CLK_N : STD_LOGIC;
  signal dac0_clk_1_CLK_P : STD_LOGIC;
  signal dac2_clk_0_1_CLK_N : STD_LOGIC;
  signal dac2_clk_0_1_CLK_P : STD_LOGIC;
  signal ddr4_0_C0_DDR4_ACT_N : STD_LOGIC;
  signal ddr4_0_C0_DDR4_ADR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal ddr4_0_C0_DDR4_BA : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ddr4_0_C0_DDR4_BG : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ddr4_0_C0_DDR4_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ddr4_0_C0_DDR4_CK_C : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ddr4_0_C0_DDR4_CK_T : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ddr4_0_C0_DDR4_CS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ddr4_0_C0_DDR4_DM_N : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ddr4_0_C0_DDR4_DQ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ddr4_0_C0_DDR4_DQS_C : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ddr4_0_C0_DDR4_DQS_T : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ddr4_0_C0_DDR4_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ddr4_0_C0_DDR4_RESET_N : STD_LOGIC;
  signal ddr4_0_c0_ddr4_ui_clk : STD_LOGIC;
  signal ddr4_0_c0_ddr4_ui_clk_sync_rst : STD_LOGIC;
  signal ddr4_0_c0_init_calib_complete : STD_LOGIC;
  signal deepCapture_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_AWADDR : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWADDR";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_AWADDR : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_AWBURST : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWBURST";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_AWBURST : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_AWCACHE : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWCACHE";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_AWCACHE : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_AWLEN : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWLEN";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_AWLEN : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_AWPROT : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWPROT";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_AWPROT : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_AWREADY : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWREADY";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_AWREADY : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_AWSIZE : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWSIZE";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_AWSIZE : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_AWVALID : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWVALID";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_AWVALID : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_BREADY : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BREADY";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_BREADY : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_BRESP : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BRESP";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_BRESP : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_BVALID : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BVALID";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_BVALID : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_WDATA : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WDATA";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_WDATA : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_WLAST : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WLAST";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_WLAST : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_WREADY : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WREADY";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_WREADY : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_WSTRB : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WSTRB";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_WSTRB : signal is std.standard.true;
  signal deepCapture_M_AXI_S2MM_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of deepCapture_M_AXI_S2MM_WVALID : signal is "deepCapture_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WVALID";
  attribute DONT_TOUCH of deepCapture_M_AXI_S2MM_WVALID : signal is std.standard.true;
  signal deepCapture_axis_rd_data_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal deepCapture_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dac_play0_M_AXIS_0_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal hier_dac_play0_M_AXIS_0_TREADY : STD_LOGIC;
  signal hier_dac_play0_M_AXIS_0_TVALID : STD_LOGIC;
  signal hier_dac_play1_M_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal hier_dac_play1_M_AXIS_1_TREADY : STD_LOGIC;
  signal hier_dac_play1_M_AXIS_1_TVALID : STD_LOGIC;
  signal internalRAM_interconnect_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M00_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M00_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M00_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal internalRAM_interconnect_M00_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M00_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal internalRAM_interconnect_M00_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal internalRAM_interconnect_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_M03_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M03_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_M03_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_M03_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M03_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M03_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_M03_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M03_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_M03_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_M03_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M03_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M03_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M03_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal internalRAM_interconnect_M03_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M03_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal internalRAM_interconnect_M03_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal internalRAM_interconnect_M03_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_M04_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M04_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_M04_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_M04_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M04_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_M04_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M04_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_M04_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_M04_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M04_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M04_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal internalRAM_interconnect_M04_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M04_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal internalRAM_interconnect_M04_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal internalRAM_interconnect_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal internalRAM_interconnect_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_M05_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M05_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_M05_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_M05_AXI_ARLOCK : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M05_AXI_ARREADY : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M05_AXI_ARVALID : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal internalRAM_interconnect_M05_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M05_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal internalRAM_interconnect_M05_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internalRAM_interconnect_M05_AXI_AWLOCK : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M05_AXI_AWREADY : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal internalRAM_interconnect_M05_AXI_AWVALID : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_BREADY : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M05_AXI_BVALID : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal internalRAM_interconnect_M05_AXI_RLAST : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_RREADY : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internalRAM_interconnect_M05_AXI_RVALID : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal internalRAM_interconnect_M05_AXI_WLAST : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_WREADY : STD_LOGIC;
  signal internalRAM_interconnect_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal internalRAM_interconnect_M05_AXI_WVALID : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal s_axi_lite_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s_axi_lite_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s_axi_lite_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_lite_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_lite_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_lite_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_lite_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_lite_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal smartconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal smartconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal src_in_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal synchronizeSYSREF_dest_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sysref_in_0_1_diff_n : STD_LOGIC;
  signal sysref_in_0_1_diff_p : STD_LOGIC;
  signal system_management_wiz_0_ip2intc_irpt : STD_LOGIC;
  signal usp_rf_data_converter_1_irq : STD_LOGIC;
  signal usp_rf_data_converter_1_m00_axis_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal usp_rf_data_converter_1_m00_axis_TREADY : STD_LOGIC;
  signal usp_rf_data_converter_1_m00_axis_TVALID : STD_LOGIC;
  signal usp_rf_data_converter_1_m02_axis_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal usp_rf_data_converter_1_m02_axis_TREADY : STD_LOGIC;
  signal usp_rf_data_converter_1_m02_axis_TVALID : STD_LOGIC;
  signal usp_rf_data_converter_1_m20_axis_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal usp_rf_data_converter_1_m20_axis_TREADY : STD_LOGIC;
  signal usp_rf_data_converter_1_m20_axis_TVALID : STD_LOGIC;
  signal usp_rf_data_converter_1_m22_axis_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal usp_rf_data_converter_1_m22_axis_TREADY : STD_LOGIC;
  signal usp_rf_data_converter_1_m22_axis_TVALID : STD_LOGIC;
  signal usp_rf_data_converter_1_vout00_V_N : STD_LOGIC;
  signal usp_rf_data_converter_1_vout00_V_P : STD_LOGIC;
  signal usp_rf_data_converter_1_vout20_V_N : STD_LOGIC;
  signal usp_rf_data_converter_1_vout20_V_P : STD_LOGIC;
  signal vin0_01_0_1_V_N : STD_LOGIC;
  signal vin0_01_0_1_V_P : STD_LOGIC;
  signal vin0_23_1_1_V_N : STD_LOGIC;
  signal vin0_23_1_1_V_P : STD_LOGIC;
  signal vin1_01_0_1_V_N : STD_LOGIC;
  signal vin1_01_0_1_V_P : STD_LOGIC;
  signal vin2_01_0_1_V_N : STD_LOGIC;
  signal vin2_01_0_1_V_P : STD_LOGIC;
  signal vin2_23_0_1_V_N : STD_LOGIC;
  signal vin2_23_0_1_V_P : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC;
  signal NLW_ddr4_0_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_ddr4_0_c0_ddr4_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ddr4_0_c0_ddr4_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ddr4_0_dbg_bus_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_internalRAM_interconnect_M01_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M01_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_internalRAM_interconnect_M06_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M00_AXI_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_smartconnect_0_M00_AXI_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_system_management_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_usp_rf_data_converter_1_clk_adc0_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_adc1_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_adc2_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_adc3_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_dac0_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_dac1_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_dac2_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_dac3_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m10_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m30_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_s10_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_s30_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_vout10_n_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_vout10_p_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_vout30_n_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_vout30_p_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m10_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_usp_rf_data_converter_1_m30_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc2_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 adc2_clk CLK_N";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc2_clk_clk_n : signal is "XIL_INTERFACENAME adc2_clk, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of adc2_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 adc2_clk CLK_P";
  attribute X_INTERFACE_INFO of dac0_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 dac0_clk CLK_N";
  attribute X_INTERFACE_PARAMETER of dac0_clk_clk_n : signal is "XIL_INTERFACENAME dac0_clk, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of dac0_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 dac0_clk CLK_P";
  attribute X_INTERFACE_INFO of dac2_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 dac2_clk CLK_N";
  attribute X_INTERFACE_PARAMETER of dac2_clk_clk_n : signal is "XIL_INTERFACENAME dac2_clk, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of dac2_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 dac2_clk CLK_P";
  attribute X_INTERFACE_INFO of ddr4_pl_act_n : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl ACT_N";
  attribute X_INTERFACE_PARAMETER of ddr4_pl_act_n : signal is "XIL_INTERFACENAME ddr4_pl, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 19, CAS_WRITE_LATENCY 14, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED DM_NO_DBI, DATA_WIDTH 64, MEMORY_PART MT40A512M16LY-075, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 750";
  attribute X_INTERFACE_INFO of ddr4_pl_reset_n : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl RESET_N";
  attribute X_INTERFACE_INFO of sys_clk_ddr4_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 sys_clk_ddr4 CLK_N";
  attribute X_INTERFACE_PARAMETER of sys_clk_ddr4_clk_n : signal is "XIL_INTERFACENAME sys_clk_ddr4, CAN_DEBUG false, FREQ_HZ 200000000";
  attribute X_INTERFACE_INFO of sys_clk_ddr4_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 sys_clk_ddr4 CLK_P";
  attribute X_INTERFACE_INFO of sysref_in_diff_n : signal is "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_n";
  attribute X_INTERFACE_INFO of sysref_in_diff_p : signal is "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_p";
  attribute X_INTERFACE_INFO of vin0_01_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_N";
  attribute X_INTERFACE_INFO of vin0_01_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_P";
  attribute X_INTERFACE_INFO of vin0_23_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_23 V_N";
  attribute X_INTERFACE_INFO of vin0_23_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_23 V_P";
  attribute X_INTERFACE_INFO of vin1_01_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin1_01 V_N";
  attribute X_INTERFACE_INFO of vin1_01_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin1_01 V_P";
  attribute X_INTERFACE_INFO of vin2_01_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin2_01 V_N";
  attribute X_INTERFACE_INFO of vin2_01_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin2_01 V_P";
  attribute X_INTERFACE_INFO of vin2_23_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin2_23 V_N";
  attribute X_INTERFACE_INFO of vin2_23_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin2_23 V_P";
  attribute X_INTERFACE_INFO of vout00_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vout00 V_N";
  attribute X_INTERFACE_INFO of vout00_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vout00 V_P";
  attribute X_INTERFACE_INFO of vout20_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vout20 V_N";
  attribute X_INTERFACE_INFO of vout20_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vout20 V_P";
  attribute X_INTERFACE_INFO of PL_CLK : signal is "xilinx.com:signal:clock:1.0 CLK.PL_CLK CLK";
  attribute X_INTERFACE_PARAMETER of PL_CLK : signal is "XIL_INTERFACENAME CLK.PL_CLK, CLK_DOMAIN mts_PL_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ddr4_pl_adr : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl ADR";
  attribute X_INTERFACE_INFO of ddr4_pl_ba : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl BA";
  attribute X_INTERFACE_INFO of ddr4_pl_bg : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl BG";
  attribute X_INTERFACE_INFO of ddr4_pl_ck_c : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl CK_C";
  attribute X_INTERFACE_INFO of ddr4_pl_ck_t : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl CK_T";
  attribute X_INTERFACE_INFO of ddr4_pl_cke : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl CKE";
  attribute X_INTERFACE_INFO of ddr4_pl_cs_n : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl CS_N";
  attribute X_INTERFACE_INFO of ddr4_pl_dm_n : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl DM_N";
  attribute X_INTERFACE_INFO of ddr4_pl_dq : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl DQ";
  attribute X_INTERFACE_INFO of ddr4_pl_dqs_c : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl DQS_C";
  attribute X_INTERFACE_INFO of ddr4_pl_dqs_t : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl DQS_T";
  attribute X_INTERFACE_INFO of ddr4_pl_odt : signal is "xilinx.com:interface:ddr4:1.0 ddr4_pl ODT";
begin
  BUFG_I_0_1(0) <= PL_CLK(0);
  C0_SYS_CLK_0_1_CLK_N <= sys_clk_ddr4_clk_n;
  C0_SYS_CLK_0_1_CLK_P <= sys_clk_ddr4_clk_p;
  adc2_clk_0_1_CLK_N <= adc2_clk_clk_n;
  adc2_clk_0_1_CLK_P <= adc2_clk_clk_p;
  dac0_clk_1_CLK_N <= dac0_clk_clk_n;
  dac0_clk_1_CLK_P <= dac0_clk_clk_p;
  dac2_clk_0_1_CLK_N <= dac2_clk_clk_n;
  dac2_clk_0_1_CLK_P <= dac2_clk_clk_p;
  ddr4_pl_act_n <= ddr4_0_C0_DDR4_ACT_N;
  ddr4_pl_adr(16 downto 0) <= ddr4_0_C0_DDR4_ADR(16 downto 0);
  ddr4_pl_ba(1 downto 0) <= ddr4_0_C0_DDR4_BA(1 downto 0);
  ddr4_pl_bg(0) <= ddr4_0_C0_DDR4_BG(0);
  ddr4_pl_ck_c(0) <= ddr4_0_C0_DDR4_CK_C(0);
  ddr4_pl_ck_t(0) <= ddr4_0_C0_DDR4_CK_T(0);
  ddr4_pl_cke(0) <= ddr4_0_C0_DDR4_CKE(0);
  ddr4_pl_cs_n(0) <= ddr4_0_C0_DDR4_CS_N(0);
  ddr4_pl_odt(0) <= ddr4_0_C0_DDR4_ODT(0);
  ddr4_pl_reset_n <= ddr4_0_C0_DDR4_RESET_N;
  src_in_0_1(0) <= PL_SYSREF(0);
  sysref_in_0_1_diff_n <= sysref_in_diff_n;
  sysref_in_0_1_diff_p <= sysref_in_diff_p;
  vin0_01_0_1_V_N <= vin0_01_v_n;
  vin0_01_0_1_V_P <= vin0_01_v_p;
  vin0_23_1_1_V_N <= vin0_23_v_n;
  vin0_23_1_1_V_P <= vin0_23_v_p;
  vin1_01_0_1_V_N <= vin1_01_v_n;
  vin1_01_0_1_V_P <= vin1_01_v_p;
  vin2_01_0_1_V_N <= vin2_01_v_n;
  vin2_01_0_1_V_P <= vin2_01_v_p;
  vin2_23_0_1_V_N <= vin2_23_v_n;
  vin2_23_0_1_V_P <= vin2_23_v_p;
  vout00_v_n <= usp_rf_data_converter_1_vout00_V_N;
  vout00_v_p <= usp_rf_data_converter_1_vout00_V_P;
  vout20_v_n <= usp_rf_data_converter_1_vout20_V_N;
  vout20_v_p <= usp_rf_data_converter_1_vout20_V_P;
clocktreeMTS: entity work.clocktreeMTS_imp_ZMYI0T
     port map (
      PL_CLK(0) => BUFG_I_0_1(0),
      PL_SYSREF(0) => src_in_0_1(0),
      UserSYSREF(0) => synchronizeSYSREF_dest_out(0),
      bus_struct_reset(0) => clocktreeMTS_bus_struct_reset(0),
      clkRF => clk_wiz_0_clk_out1,
      clkRFdiv2 => clk_wiz_adc0_clk_out2,
      egress_aresetn(0) => RFegressReset_peripheral_aresetn(0),
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      ingress_aresetn(0) => RFingressReset_peripheral_aresetn(0),
      interrupt => clocktreeMTS_interrupt,
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_lite_araddr(39 downto 0) => s_axi_lite_1_ARADDR(39 downto 0),
      s_axi_lite_arready(0) => s_axi_lite_1_ARREADY(0),
      s_axi_lite_arvalid(0) => s_axi_lite_1_ARVALID(0),
      s_axi_lite_awaddr(39 downto 0) => s_axi_lite_1_AWADDR(39 downto 0),
      s_axi_lite_awready(0) => s_axi_lite_1_AWREADY(0),
      s_axi_lite_awvalid(0) => s_axi_lite_1_AWVALID(0),
      s_axi_lite_bready(0) => s_axi_lite_1_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => s_axi_lite_1_BRESP(1 downto 0),
      s_axi_lite_bvalid(0) => s_axi_lite_1_BVALID(0),
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_1_RDATA(31 downto 0),
      s_axi_lite_rready(0) => s_axi_lite_1_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => s_axi_lite_1_RRESP(1 downto 0),
      s_axi_lite_rvalid(0) => s_axi_lite_1_RVALID(0),
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_1_WDATA(31 downto 0),
      s_axi_lite_wready(0) => s_axi_lite_1_WREADY(0),
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_1_WSTRB(3 downto 0),
      s_axi_lite_wvalid(0) => s_axi_lite_1_WVALID(0)
    );
control_interconnect: entity work.mts_control_interconnect_0
     port map (
      ACLK => zynq_ultra_ps_e_0_pl_clk0,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(39 downto 0) => ps8_0_axi_periph_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arready => ps8_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps8_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(39 downto 0) => ps8_0_axi_periph_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awready => ps8_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps8_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps8_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps8_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps8_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps8_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps8_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps8_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => ps8_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M01_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M01_AXI_araddr(39 downto 0) => control_interconnect_M01_AXI_ARADDR(39 downto 0),
      M01_AXI_arready => control_interconnect_M01_AXI_ARREADY,
      M01_AXI_arvalid => control_interconnect_M01_AXI_ARVALID,
      M01_AXI_awaddr(39 downto 0) => control_interconnect_M01_AXI_AWADDR(39 downto 0),
      M01_AXI_awready => control_interconnect_M01_AXI_AWREADY,
      M01_AXI_awvalid => control_interconnect_M01_AXI_AWVALID,
      M01_AXI_bready => control_interconnect_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => control_interconnect_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => control_interconnect_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => control_interconnect_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => control_interconnect_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => control_interconnect_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => control_interconnect_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => control_interconnect_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => control_interconnect_M01_AXI_WREADY,
      M01_AXI_wvalid => control_interconnect_M01_AXI_WVALID,
      M02_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M02_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M02_AXI_araddr(39 downto 0) => s_axi_lite_1_ARADDR(39 downto 0),
      M02_AXI_arready(0) => s_axi_lite_1_ARREADY(0),
      M02_AXI_arvalid(0) => s_axi_lite_1_ARVALID(0),
      M02_AXI_awaddr(39 downto 0) => s_axi_lite_1_AWADDR(39 downto 0),
      M02_AXI_awready(0) => s_axi_lite_1_AWREADY(0),
      M02_AXI_awvalid(0) => s_axi_lite_1_AWVALID(0),
      M02_AXI_bready(0) => s_axi_lite_1_BREADY(0),
      M02_AXI_bresp(1 downto 0) => s_axi_lite_1_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => s_axi_lite_1_BVALID(0),
      M02_AXI_rdata(31 downto 0) => s_axi_lite_1_RDATA(31 downto 0),
      M02_AXI_rready(0) => s_axi_lite_1_RREADY(0),
      M02_AXI_rresp(1 downto 0) => s_axi_lite_1_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => s_axi_lite_1_RVALID(0),
      M02_AXI_wdata(31 downto 0) => s_axi_lite_1_WDATA(31 downto 0),
      M02_AXI_wready(0) => s_axi_lite_1_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => s_axi_lite_1_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => s_axi_lite_1_WVALID(0),
      M03_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M03_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M03_AXI_araddr(39 downto 0) => S_AXI_3_ARADDR(39 downto 0),
      M03_AXI_arready => S_AXI_3_ARREADY,
      M03_AXI_arvalid => S_AXI_3_ARVALID,
      M03_AXI_awaddr(39 downto 0) => S_AXI_3_AWADDR(39 downto 0),
      M03_AXI_awready => S_AXI_3_AWREADY,
      M03_AXI_awvalid => S_AXI_3_AWVALID,
      M03_AXI_bready => S_AXI_3_BREADY,
      M03_AXI_bresp(1 downto 0) => S_AXI_3_BRESP(1 downto 0),
      M03_AXI_bvalid => S_AXI_3_BVALID,
      M03_AXI_rdata(31 downto 0) => S_AXI_3_RDATA(31 downto 0),
      M03_AXI_rready => S_AXI_3_RREADY,
      M03_AXI_rresp(1 downto 0) => S_AXI_3_RRESP(1 downto 0),
      M03_AXI_rvalid => S_AXI_3_RVALID,
      M03_AXI_wdata(31 downto 0) => S_AXI_3_WDATA(31 downto 0),
      M03_AXI_wready => S_AXI_3_WREADY,
      M03_AXI_wstrb(3 downto 0) => S_AXI_3_WSTRB(3 downto 0),
      M03_AXI_wvalid => S_AXI_3_WVALID,
      M04_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M04_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M04_AXI_araddr(39 downto 0) => S_AXI1_1_ARADDR(39 downto 0),
      M04_AXI_arready => S_AXI1_1_ARREADY,
      M04_AXI_arvalid => S_AXI1_1_ARVALID,
      M04_AXI_awaddr(39 downto 0) => S_AXI1_1_AWADDR(39 downto 0),
      M04_AXI_awready => S_AXI1_1_AWREADY,
      M04_AXI_awvalid => S_AXI1_1_AWVALID,
      M04_AXI_bready => S_AXI1_1_BREADY,
      M04_AXI_bresp(1 downto 0) => S_AXI1_1_BRESP(1 downto 0),
      M04_AXI_bvalid => S_AXI1_1_BVALID,
      M04_AXI_rdata(31 downto 0) => S_AXI1_1_RDATA(31 downto 0),
      M04_AXI_rready => S_AXI1_1_RREADY,
      M04_AXI_rresp(1 downto 0) => S_AXI1_1_RRESP(1 downto 0),
      M04_AXI_rvalid => S_AXI1_1_RVALID,
      M04_AXI_wdata(31 downto 0) => S_AXI1_1_WDATA(31 downto 0),
      M04_AXI_wready => S_AXI1_1_WREADY,
      M04_AXI_wstrb(3 downto 0) => S_AXI1_1_WSTRB(3 downto 0),
      M04_AXI_wvalid => S_AXI1_1_WVALID,
      M05_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M05_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M05_AXI_araddr(39 downto 0) => S_AXI2_1_ARADDR(39 downto 0),
      M05_AXI_arready => S_AXI2_1_ARREADY,
      M05_AXI_arvalid => S_AXI2_1_ARVALID,
      M05_AXI_awaddr(39 downto 0) => S_AXI2_1_AWADDR(39 downto 0),
      M05_AXI_awready => S_AXI2_1_AWREADY,
      M05_AXI_awvalid => S_AXI2_1_AWVALID,
      M05_AXI_bready => S_AXI2_1_BREADY,
      M05_AXI_bresp(1 downto 0) => S_AXI2_1_BRESP(1 downto 0),
      M05_AXI_bvalid => S_AXI2_1_BVALID,
      M05_AXI_rdata(31 downto 0) => S_AXI2_1_RDATA(31 downto 0),
      M05_AXI_rready => S_AXI2_1_RREADY,
      M05_AXI_rresp(1 downto 0) => S_AXI2_1_RRESP(1 downto 0),
      M05_AXI_rvalid => S_AXI2_1_RVALID,
      M05_AXI_wdata(31 downto 0) => S_AXI2_1_WDATA(31 downto 0),
      M05_AXI_wready => S_AXI2_1_WREADY,
      M05_AXI_wstrb(3 downto 0) => S_AXI2_1_WSTRB(3 downto 0),
      M05_AXI_wvalid => S_AXI2_1_WVALID,
      M06_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M06_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M06_AXI_araddr(39 downto 0) => control_interconnect_M06_AXI_ARADDR(39 downto 0),
      M06_AXI_arready => control_interconnect_M06_AXI_ARREADY,
      M06_AXI_arvalid => control_interconnect_M06_AXI_ARVALID,
      M06_AXI_awaddr(39 downto 0) => control_interconnect_M06_AXI_AWADDR(39 downto 0),
      M06_AXI_awready => control_interconnect_M06_AXI_AWREADY,
      M06_AXI_awvalid => control_interconnect_M06_AXI_AWVALID,
      M06_AXI_bready => control_interconnect_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => control_interconnect_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => control_interconnect_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => control_interconnect_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => control_interconnect_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => control_interconnect_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => control_interconnect_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => control_interconnect_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => control_interconnect_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => control_interconnect_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => control_interconnect_M06_AXI_WVALID,
      S00_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      S00_AXI_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK,
      S00_AXI_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      S00_AXI_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY,
      S00_AXI_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      S00_AXI_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      S00_AXI_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK,
      S00_AXI_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      S00_AXI_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY,
      S00_AXI_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      S00_AXI_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID,
      S00_AXI_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID(15 downto 0),
      S00_AXI_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY,
      S00_AXI_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      S00_AXI_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID,
      S00_AXI_rdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      S00_AXI_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID(15 downto 0),
      S00_AXI_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST,
      S00_AXI_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY,
      S00_AXI_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      S00_AXI_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID,
      S00_AXI_wdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      S00_AXI_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST,
      S00_AXI_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY,
      S00_AXI_wstrb(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      S00_AXI_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID
    );
ddr4_0: component mts_ddr4_0_0
     port map (
      c0_ddr4_act_n => ddr4_0_C0_DDR4_ACT_N,
      c0_ddr4_adr(16 downto 0) => ddr4_0_C0_DDR4_ADR(16 downto 0),
      c0_ddr4_aresetn => deepCapture_peripheral_aresetn(0),
      c0_ddr4_ba(1 downto 0) => ddr4_0_C0_DDR4_BA(1 downto 0),
      c0_ddr4_bg(0) => ddr4_0_C0_DDR4_BG(0),
      c0_ddr4_ck_c(0) => ddr4_0_C0_DDR4_CK_C(0),
      c0_ddr4_ck_t(0) => ddr4_0_C0_DDR4_CK_T(0),
      c0_ddr4_cke(0) => ddr4_0_C0_DDR4_CKE(0),
      c0_ddr4_cs_n(0) => ddr4_0_C0_DDR4_CS_N(0),
      c0_ddr4_dm_dbi_n(7 downto 0) => ddr4_pl_dm_n(7 downto 0),
      c0_ddr4_dq(63 downto 0) => ddr4_pl_dq(63 downto 0),
      c0_ddr4_dqs_c(7 downto 0) => ddr4_pl_dqs_c(7 downto 0),
      c0_ddr4_dqs_t(7 downto 0) => ddr4_pl_dqs_t(7 downto 0),
      c0_ddr4_odt(0) => ddr4_0_C0_DDR4_ODT(0),
      c0_ddr4_reset_n => ddr4_0_C0_DDR4_RESET_N,
      c0_ddr4_s_axi_araddr(31 downto 0) => smartconnect_0_M00_AXI_ARADDR(31 downto 0),
      c0_ddr4_s_axi_arburst(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      c0_ddr4_s_axi_arcache(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      c0_ddr4_s_axi_arid(0) => '0',
      c0_ddr4_s_axi_arlen(7 downto 0) => smartconnect_0_M00_AXI_ARLEN(7 downto 0),
      c0_ddr4_s_axi_arlock(0) => smartconnect_0_M00_AXI_ARLOCK(0),
      c0_ddr4_s_axi_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      c0_ddr4_s_axi_arqos(3 downto 0) => smartconnect_0_M00_AXI_ARQOS(3 downto 0),
      c0_ddr4_s_axi_arready => smartconnect_0_M00_AXI_ARREADY,
      c0_ddr4_s_axi_arsize(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      c0_ddr4_s_axi_arvalid => smartconnect_0_M00_AXI_ARVALID,
      c0_ddr4_s_axi_awaddr(31 downto 0) => smartconnect_0_M00_AXI_AWADDR(31 downto 0),
      c0_ddr4_s_axi_awburst(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      c0_ddr4_s_axi_awcache(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      c0_ddr4_s_axi_awid(0) => '0',
      c0_ddr4_s_axi_awlen(7 downto 0) => smartconnect_0_M00_AXI_AWLEN(7 downto 0),
      c0_ddr4_s_axi_awlock(0) => smartconnect_0_M00_AXI_AWLOCK(0),
      c0_ddr4_s_axi_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      c0_ddr4_s_axi_awqos(3 downto 0) => smartconnect_0_M00_AXI_AWQOS(3 downto 0),
      c0_ddr4_s_axi_awready => smartconnect_0_M00_AXI_AWREADY,
      c0_ddr4_s_axi_awsize(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      c0_ddr4_s_axi_awvalid => smartconnect_0_M00_AXI_AWVALID,
      c0_ddr4_s_axi_bid(0) => NLW_ddr4_0_c0_ddr4_s_axi_bid_UNCONNECTED(0),
      c0_ddr4_s_axi_bready => smartconnect_0_M00_AXI_BREADY,
      c0_ddr4_s_axi_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      c0_ddr4_s_axi_bvalid => smartconnect_0_M00_AXI_BVALID,
      c0_ddr4_s_axi_rdata(511 downto 0) => smartconnect_0_M00_AXI_RDATA(511 downto 0),
      c0_ddr4_s_axi_rid(0) => NLW_ddr4_0_c0_ddr4_s_axi_rid_UNCONNECTED(0),
      c0_ddr4_s_axi_rlast => smartconnect_0_M00_AXI_RLAST,
      c0_ddr4_s_axi_rready => smartconnect_0_M00_AXI_RREADY,
      c0_ddr4_s_axi_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      c0_ddr4_s_axi_rvalid => smartconnect_0_M00_AXI_RVALID,
      c0_ddr4_s_axi_wdata(511 downto 0) => smartconnect_0_M00_AXI_WDATA(511 downto 0),
      c0_ddr4_s_axi_wlast => smartconnect_0_M00_AXI_WLAST,
      c0_ddr4_s_axi_wready => smartconnect_0_M00_AXI_WREADY,
      c0_ddr4_s_axi_wstrb(63 downto 0) => smartconnect_0_M00_AXI_WSTRB(63 downto 0),
      c0_ddr4_s_axi_wvalid => smartconnect_0_M00_AXI_WVALID,
      c0_ddr4_ui_clk => ddr4_0_c0_ddr4_ui_clk,
      c0_ddr4_ui_clk_sync_rst => ddr4_0_c0_ddr4_ui_clk_sync_rst,
      c0_init_calib_complete => ddr4_0_c0_init_calib_complete,
      c0_sys_clk_n => C0_SYS_CLK_0_1_CLK_N,
      c0_sys_clk_p => C0_SYS_CLK_0_1_CLK_P,
      dbg_bus(511 downto 0) => NLW_ddr4_0_dbg_bus_UNCONNECTED(511 downto 0),
      dbg_clk => NLW_ddr4_0_dbg_clk_UNCONNECTED,
      sys_rst => clocktreeMTS_bus_struct_reset(0)
    );
deepCapture: entity work.deepCapture_imp_QGCBQV
     port map (
      M_AXI_S2MM_awaddr(39 downto 0) => deepCapture_M_AXI_S2MM_AWADDR(39 downto 0),
      M_AXI_S2MM_awburst(1 downto 0) => deepCapture_M_AXI_S2MM_AWBURST(1 downto 0),
      M_AXI_S2MM_awcache(3 downto 0) => deepCapture_M_AXI_S2MM_AWCACHE(3 downto 0),
      M_AXI_S2MM_awlen(7 downto 0) => deepCapture_M_AXI_S2MM_AWLEN(7 downto 0),
      M_AXI_S2MM_awprot(2 downto 0) => deepCapture_M_AXI_S2MM_AWPROT(2 downto 0),
      M_AXI_S2MM_awready => deepCapture_M_AXI_S2MM_AWREADY,
      M_AXI_S2MM_awsize(2 downto 0) => deepCapture_M_AXI_S2MM_AWSIZE(2 downto 0),
      M_AXI_S2MM_awvalid => deepCapture_M_AXI_S2MM_AWVALID,
      M_AXI_S2MM_bready => deepCapture_M_AXI_S2MM_BREADY,
      M_AXI_S2MM_bresp(1 downto 0) => deepCapture_M_AXI_S2MM_BRESP(1 downto 0),
      M_AXI_S2MM_bvalid => deepCapture_M_AXI_S2MM_BVALID,
      M_AXI_S2MM_wdata(511 downto 0) => deepCapture_M_AXI_S2MM_WDATA(511 downto 0),
      M_AXI_S2MM_wlast => deepCapture_M_AXI_S2MM_WLAST,
      M_AXI_S2MM_wready => deepCapture_M_AXI_S2MM_WREADY,
      M_AXI_S2MM_wstrb(63 downto 0) => deepCapture_M_AXI_S2MM_WSTRB(63 downto 0),
      M_AXI_S2MM_wvalid => deepCapture_M_AXI_S2MM_WVALID,
      S_AXIS_tdata(127 downto 0) => usp_rf_data_converter_1_m22_axis_TDATA(127 downto 0),
      S_AXIS_tready => usp_rf_data_converter_1_m22_axis_TREADY,
      S_AXIS_tvalid => usp_rf_data_converter_1_m22_axis_TVALID,
      S_AXI_LITE_araddr(39 downto 0) => control_interconnect_M01_AXI_ARADDR(39 downto 0),
      S_AXI_LITE_arready => control_interconnect_M01_AXI_ARREADY,
      S_AXI_LITE_arvalid => control_interconnect_M01_AXI_ARVALID,
      S_AXI_LITE_awaddr(39 downto 0) => control_interconnect_M01_AXI_AWADDR(39 downto 0),
      S_AXI_LITE_awready => control_interconnect_M01_AXI_AWREADY,
      S_AXI_LITE_awvalid => control_interconnect_M01_AXI_AWVALID,
      S_AXI_LITE_bready => control_interconnect_M01_AXI_BREADY,
      S_AXI_LITE_bresp(1 downto 0) => control_interconnect_M01_AXI_BRESP(1 downto 0),
      S_AXI_LITE_bvalid => control_interconnect_M01_AXI_BVALID,
      S_AXI_LITE_rdata(31 downto 0) => control_interconnect_M01_AXI_RDATA(31 downto 0),
      S_AXI_LITE_rready => control_interconnect_M01_AXI_RREADY,
      S_AXI_LITE_rresp(1 downto 0) => control_interconnect_M01_AXI_RRESP(1 downto 0),
      S_AXI_LITE_rvalid => control_interconnect_M01_AXI_RVALID,
      S_AXI_LITE_wdata(31 downto 0) => control_interconnect_M01_AXI_WDATA(31 downto 0),
      S_AXI_LITE_wready => control_interconnect_M01_AXI_WREADY,
      S_AXI_LITE_wvalid => control_interconnect_M01_AXI_WVALID,
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      axis_rd_data_count(31 downto 0) => deepCapture_axis_rd_data_count(31 downto 0),
      dcm_locked => ddr4_0_c0_init_calib_complete,
      ext_reset_in => ddr4_0_c0_ddr4_ui_clk_sync_rst,
      fifo_flush_n => axi_gpio_fifo_flush_gpio_io_o(0),
      m_axi_s2mm_aclk => ddr4_0_c0_ddr4_ui_clk,
      peripheral_aresetn(0) => deepCapture_peripheral_aresetn(0),
      s2mm_introut => axi_dma_0_s2mm_introut,
      s_axi_lite_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axis_aclk => clk_wiz_0_clk_out1
    );
gpio_control: entity work.gpio_control_imp_1VWM5ZY
     port map (
      S_AXI1_araddr(39 downto 0) => S_AXI1_1_ARADDR(39 downto 0),
      S_AXI1_arready => S_AXI1_1_ARREADY,
      S_AXI1_arvalid => S_AXI1_1_ARVALID,
      S_AXI1_awaddr(39 downto 0) => S_AXI1_1_AWADDR(39 downto 0),
      S_AXI1_awready => S_AXI1_1_AWREADY,
      S_AXI1_awvalid => S_AXI1_1_AWVALID,
      S_AXI1_bready => S_AXI1_1_BREADY,
      S_AXI1_bresp(1 downto 0) => S_AXI1_1_BRESP(1 downto 0),
      S_AXI1_bvalid => S_AXI1_1_BVALID,
      S_AXI1_rdata(31 downto 0) => S_AXI1_1_RDATA(31 downto 0),
      S_AXI1_rready => S_AXI1_1_RREADY,
      S_AXI1_rresp(1 downto 0) => S_AXI1_1_RRESP(1 downto 0),
      S_AXI1_rvalid => S_AXI1_1_RVALID,
      S_AXI1_wdata(31 downto 0) => S_AXI1_1_WDATA(31 downto 0),
      S_AXI1_wready => S_AXI1_1_WREADY,
      S_AXI1_wstrb(3 downto 0) => S_AXI1_1_WSTRB(3 downto 0),
      S_AXI1_wvalid => S_AXI1_1_WVALID,
      S_AXI2_araddr(39 downto 0) => S_AXI2_1_ARADDR(39 downto 0),
      S_AXI2_arready => S_AXI2_1_ARREADY,
      S_AXI2_arvalid => S_AXI2_1_ARVALID,
      S_AXI2_awaddr(39 downto 0) => S_AXI2_1_AWADDR(39 downto 0),
      S_AXI2_awready => S_AXI2_1_AWREADY,
      S_AXI2_awvalid => S_AXI2_1_AWVALID,
      S_AXI2_bready => S_AXI2_1_BREADY,
      S_AXI2_bresp(1 downto 0) => S_AXI2_1_BRESP(1 downto 0),
      S_AXI2_bvalid => S_AXI2_1_BVALID,
      S_AXI2_rdata(31 downto 0) => S_AXI2_1_RDATA(31 downto 0),
      S_AXI2_rready => S_AXI2_1_RREADY,
      S_AXI2_rresp(1 downto 0) => S_AXI2_1_RRESP(1 downto 0),
      S_AXI2_rvalid => S_AXI2_1_RVALID,
      S_AXI2_wdata(31 downto 0) => S_AXI2_1_WDATA(31 downto 0),
      S_AXI2_wready => S_AXI2_1_WREADY,
      S_AXI2_wstrb(3 downto 0) => S_AXI2_1_WSTRB(3 downto 0),
      S_AXI2_wvalid => S_AXI2_1_WVALID,
      S_AXI_araddr(39 downto 0) => S_AXI_3_ARADDR(39 downto 0),
      S_AXI_arready => S_AXI_3_ARREADY,
      S_AXI_arvalid => S_AXI_3_ARVALID,
      S_AXI_awaddr(39 downto 0) => S_AXI_3_AWADDR(39 downto 0),
      S_AXI_awready => S_AXI_3_AWREADY,
      S_AXI_awvalid => S_AXI_3_AWVALID,
      S_AXI_bready => S_AXI_3_BREADY,
      S_AXI_bresp(1 downto 0) => S_AXI_3_BRESP(1 downto 0),
      S_AXI_bvalid => S_AXI_3_BVALID,
      S_AXI_rdata(31 downto 0) => S_AXI_3_RDATA(31 downto 0),
      S_AXI_rready => S_AXI_3_RREADY,
      S_AXI_rresp(1 downto 0) => S_AXI_3_RRESP(1 downto 0),
      S_AXI_rvalid => S_AXI_3_RVALID,
      S_AXI_wdata(31 downto 0) => S_AXI_3_WDATA(31 downto 0),
      S_AXI_wready => S_AXI_3_WREADY,
      S_AXI_wstrb(3 downto 0) => S_AXI_3_WSTRB(3 downto 0),
      S_AXI_wvalid => S_AXI_3_WVALID,
      dac_enable(0) => axi_gpio_dac_gpio_io_o(0),
      dest_clk => clk_wiz_adc0_clk_out2,
      fifoflush(0) => axi_gpio_fifo_flush_gpio_io_o(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      trig_cap(0) => axi_gpio_bram_cap_gpio_io_o(0)
    );
hier_adc0_cap: entity work.hier_adc0_cap_imp_GQXKHU
     port map (
      S_AXIS_tdata(127 downto 0) => usp_rf_data_converter_1_m00_axis_TDATA(127 downto 0),
      S_AXIS_tready => usp_rf_data_converter_1_m00_axis_TREADY,
      S_AXIS_tvalid => usp_rf_data_converter_1_m00_axis_TVALID,
      S_AXI_araddr(39 downto 0) => S_AXI_2_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => S_AXI_2_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => S_AXI_2_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => S_AXI_2_ARLEN(7 downto 0),
      S_AXI_arlock(0) => S_AXI_2_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => S_AXI_2_ARPROT(2 downto 0),
      S_AXI_arready(0) => S_AXI_2_ARREADY(0),
      S_AXI_arsize(2 downto 0) => S_AXI_2_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => S_AXI_2_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => S_AXI_2_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => S_AXI_2_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => S_AXI_2_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => S_AXI_2_AWLEN(7 downto 0),
      S_AXI_awlock(0) => S_AXI_2_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => S_AXI_2_AWPROT(2 downto 0),
      S_AXI_awready(0) => S_AXI_2_AWREADY(0),
      S_AXI_awsize(2 downto 0) => S_AXI_2_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => S_AXI_2_AWVALID(0),
      S_AXI_bready(0) => S_AXI_2_BREADY(0),
      S_AXI_bresp(1 downto 0) => S_AXI_2_BRESP(1 downto 0),
      S_AXI_bvalid(0) => S_AXI_2_BVALID(0),
      S_AXI_rdata(255 downto 0) => S_AXI_2_RDATA(255 downto 0),
      S_AXI_rlast(0) => S_AXI_2_RLAST(0),
      S_AXI_rready(0) => S_AXI_2_RREADY(0),
      S_AXI_rresp(1 downto 0) => S_AXI_2_RRESP(1 downto 0),
      S_AXI_rvalid(0) => S_AXI_2_RVALID(0),
      S_AXI_wdata(255 downto 0) => S_AXI_2_WDATA(255 downto 0),
      S_AXI_wlast(0) => S_AXI_2_WLAST(0),
      S_AXI_wready(0) => S_AXI_2_WREADY(0),
      S_AXI_wstrb(31 downto 0) => S_AXI_2_WSTRB(31 downto 0),
      S_AXI_wvalid(0) => S_AXI_2_WVALID(0),
      aclk => clk_wiz_0_clk_out1,
      axis_clk => clk_wiz_adc0_clk_out2,
      s_axi_aresetn => RFegressReset_peripheral_aresetn(0),
      trig_cap => axi_gpio_bram_cap_gpio_io_o(0)
    );
hier_adc1_cap: entity work.hier_adc1_cap_imp_1UUWSYK
     port map (
      S_AXIS_tdata(127 downto 0) => usp_rf_data_converter_1_m02_axis_TDATA(127 downto 0),
      S_AXIS_tready => usp_rf_data_converter_1_m02_axis_TREADY,
      S_AXIS_tvalid => usp_rf_data_converter_1_m02_axis_TVALID,
      S_AXI_araddr(39 downto 0) => internalRAM_interconnect_M03_AXI_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => internalRAM_interconnect_M03_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => internalRAM_interconnect_M03_AXI_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => internalRAM_interconnect_M03_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => internalRAM_interconnect_M03_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => internalRAM_interconnect_M03_AXI_ARPROT(2 downto 0),
      S_AXI_arready(0) => internalRAM_interconnect_M03_AXI_ARREADY(0),
      S_AXI_arsize(2 downto 0) => internalRAM_interconnect_M03_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => internalRAM_interconnect_M03_AXI_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => internalRAM_interconnect_M03_AXI_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => internalRAM_interconnect_M03_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => internalRAM_interconnect_M03_AXI_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => internalRAM_interconnect_M03_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => internalRAM_interconnect_M03_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => internalRAM_interconnect_M03_AXI_AWPROT(2 downto 0),
      S_AXI_awready(0) => internalRAM_interconnect_M03_AXI_AWREADY(0),
      S_AXI_awsize(2 downto 0) => internalRAM_interconnect_M03_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => internalRAM_interconnect_M03_AXI_AWVALID(0),
      S_AXI_bready(0) => internalRAM_interconnect_M03_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => internalRAM_interconnect_M03_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => internalRAM_interconnect_M03_AXI_BVALID(0),
      S_AXI_rdata(255 downto 0) => internalRAM_interconnect_M03_AXI_RDATA(255 downto 0),
      S_AXI_rlast(0) => internalRAM_interconnect_M03_AXI_RLAST(0),
      S_AXI_rready(0) => internalRAM_interconnect_M03_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => internalRAM_interconnect_M03_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => internalRAM_interconnect_M03_AXI_RVALID(0),
      S_AXI_wdata(255 downto 0) => internalRAM_interconnect_M03_AXI_WDATA(255 downto 0),
      S_AXI_wlast(0) => internalRAM_interconnect_M03_AXI_WLAST(0),
      S_AXI_wready(0) => internalRAM_interconnect_M03_AXI_WREADY(0),
      S_AXI_wstrb(31 downto 0) => internalRAM_interconnect_M03_AXI_WSTRB(31 downto 0),
      S_AXI_wvalid(0) => internalRAM_interconnect_M03_AXI_WVALID(0),
      aclk => clk_wiz_0_clk_out1,
      axis_clk => clk_wiz_adc0_clk_out2,
      s_axi_aresetn => RFegressReset_peripheral_aresetn(0),
      trig_cap => axi_gpio_bram_cap_gpio_io_o(0)
    );
hier_adc2_cap: entity work.hier_adc2_cap_imp_Z3BJPB
     port map (
      S_AXIS_tdata(127 downto 0) => usp_rf_data_converter_1_m20_axis_TDATA(127 downto 0),
      S_AXIS_tready => usp_rf_data_converter_1_m20_axis_TREADY,
      S_AXIS_tvalid => usp_rf_data_converter_1_m20_axis_TVALID,
      S_AXI_araddr(39 downto 0) => internalRAM_interconnect_M04_AXI_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => internalRAM_interconnect_M04_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => internalRAM_interconnect_M04_AXI_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => internalRAM_interconnect_M04_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => internalRAM_interconnect_M04_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => internalRAM_interconnect_M04_AXI_ARPROT(2 downto 0),
      S_AXI_arready(0) => internalRAM_interconnect_M04_AXI_ARREADY(0),
      S_AXI_arsize(2 downto 0) => internalRAM_interconnect_M04_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => internalRAM_interconnect_M04_AXI_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => internalRAM_interconnect_M04_AXI_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => internalRAM_interconnect_M04_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => internalRAM_interconnect_M04_AXI_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => internalRAM_interconnect_M04_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => internalRAM_interconnect_M04_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => internalRAM_interconnect_M04_AXI_AWPROT(2 downto 0),
      S_AXI_awready(0) => internalRAM_interconnect_M04_AXI_AWREADY(0),
      S_AXI_awsize(2 downto 0) => internalRAM_interconnect_M04_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => internalRAM_interconnect_M04_AXI_AWVALID(0),
      S_AXI_bready(0) => internalRAM_interconnect_M04_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => internalRAM_interconnect_M04_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => internalRAM_interconnect_M04_AXI_BVALID(0),
      S_AXI_rdata(255 downto 0) => internalRAM_interconnect_M04_AXI_RDATA(255 downto 0),
      S_AXI_rlast(0) => internalRAM_interconnect_M04_AXI_RLAST(0),
      S_AXI_rready(0) => internalRAM_interconnect_M04_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => internalRAM_interconnect_M04_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => internalRAM_interconnect_M04_AXI_RVALID(0),
      S_AXI_wdata(255 downto 0) => internalRAM_interconnect_M04_AXI_WDATA(255 downto 0),
      S_AXI_wlast(0) => internalRAM_interconnect_M04_AXI_WLAST(0),
      S_AXI_wready(0) => internalRAM_interconnect_M04_AXI_WREADY(0),
      S_AXI_wstrb(31 downto 0) => internalRAM_interconnect_M04_AXI_WSTRB(31 downto 0),
      S_AXI_wvalid(0) => internalRAM_interconnect_M04_AXI_WVALID(0),
      aclk => clk_wiz_0_clk_out1,
      axis_clk => clk_wiz_adc0_clk_out2,
      s_axi_aresetn => RFegressReset_peripheral_aresetn(0),
      trig_cap => axi_gpio_bram_cap_gpio_io_o(0)
    );
hier_dac_play0: entity work.hier_dac_play0_imp_9DNRMT
     port map (
      M_AXIS_0_tdata(127 downto 0) => hier_dac_play0_M_AXIS_0_TDATA(127 downto 0),
      M_AXIS_0_tready => hier_dac_play0_M_AXIS_0_TREADY,
      M_AXIS_0_tvalid => hier_dac_play0_M_AXIS_0_TVALID,
      S_AXI_araddr(39 downto 0) => internalRAM_interconnect_M00_AXI_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => internalRAM_interconnect_M00_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => internalRAM_interconnect_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => internalRAM_interconnect_M00_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => internalRAM_interconnect_M00_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => internalRAM_interconnect_M00_AXI_ARPROT(2 downto 0),
      S_AXI_arready(0) => internalRAM_interconnect_M00_AXI_ARREADY(0),
      S_AXI_arsize(2 downto 0) => internalRAM_interconnect_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => internalRAM_interconnect_M00_AXI_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => internalRAM_interconnect_M00_AXI_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => internalRAM_interconnect_M00_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => internalRAM_interconnect_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => internalRAM_interconnect_M00_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => internalRAM_interconnect_M00_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => internalRAM_interconnect_M00_AXI_AWPROT(2 downto 0),
      S_AXI_awready(0) => internalRAM_interconnect_M00_AXI_AWREADY(0),
      S_AXI_awsize(2 downto 0) => internalRAM_interconnect_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => internalRAM_interconnect_M00_AXI_AWVALID(0),
      S_AXI_bready(0) => internalRAM_interconnect_M00_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => internalRAM_interconnect_M00_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => internalRAM_interconnect_M00_AXI_BVALID(0),
      S_AXI_rdata(255 downto 0) => internalRAM_interconnect_M00_AXI_RDATA(255 downto 0),
      S_AXI_rlast(0) => internalRAM_interconnect_M00_AXI_RLAST(0),
      S_AXI_rready(0) => internalRAM_interconnect_M00_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => internalRAM_interconnect_M00_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => internalRAM_interconnect_M00_AXI_RVALID(0),
      S_AXI_wdata(255 downto 0) => internalRAM_interconnect_M00_AXI_WDATA(255 downto 0),
      S_AXI_wlast(0) => internalRAM_interconnect_M00_AXI_WLAST(0),
      S_AXI_wready(0) => internalRAM_interconnect_M00_AXI_WREADY(0),
      S_AXI_wstrb(31 downto 0) => internalRAM_interconnect_M00_AXI_WSTRB(31 downto 0),
      S_AXI_wvalid(0) => internalRAM_interconnect_M00_AXI_WVALID(0),
      aclk => clk_wiz_0_clk_out1,
      axis_clk => clk_wiz_adc0_clk_out2,
      enable => axi_gpio_dac_gpio_io_o(0),
      s_axi_aresetn => RFegressReset_peripheral_aresetn(0)
    );
hier_dac_play1: entity work.hier_dac_play1_imp_16KPMTC
     port map (
      M_AXIS_1_tdata(127 downto 0) => hier_dac_play1_M_AXIS_1_TDATA(127 downto 0),
      M_AXIS_1_tready => hier_dac_play1_M_AXIS_1_TREADY,
      M_AXIS_1_tvalid => hier_dac_play1_M_AXIS_1_TVALID,
      S_AXI_araddr(39 downto 0) => internalRAM_interconnect_M05_AXI_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => internalRAM_interconnect_M05_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => internalRAM_interconnect_M05_AXI_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => internalRAM_interconnect_M05_AXI_ARLEN(7 downto 0),
      S_AXI_arlock => internalRAM_interconnect_M05_AXI_ARLOCK,
      S_AXI_arprot(2 downto 0) => internalRAM_interconnect_M05_AXI_ARPROT(2 downto 0),
      S_AXI_arready => internalRAM_interconnect_M05_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => internalRAM_interconnect_M05_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => internalRAM_interconnect_M05_AXI_ARVALID,
      S_AXI_awaddr(39 downto 0) => internalRAM_interconnect_M05_AXI_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => internalRAM_interconnect_M05_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => internalRAM_interconnect_M05_AXI_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => internalRAM_interconnect_M05_AXI_AWLEN(7 downto 0),
      S_AXI_awlock => internalRAM_interconnect_M05_AXI_AWLOCK,
      S_AXI_awprot(2 downto 0) => internalRAM_interconnect_M05_AXI_AWPROT(2 downto 0),
      S_AXI_awready => internalRAM_interconnect_M05_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => internalRAM_interconnect_M05_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => internalRAM_interconnect_M05_AXI_AWVALID,
      S_AXI_bready => internalRAM_interconnect_M05_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => internalRAM_interconnect_M05_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => internalRAM_interconnect_M05_AXI_BVALID,
      S_AXI_rdata(255 downto 0) => internalRAM_interconnect_M05_AXI_RDATA(255 downto 0),
      S_AXI_rlast => internalRAM_interconnect_M05_AXI_RLAST,
      S_AXI_rready => internalRAM_interconnect_M05_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => internalRAM_interconnect_M05_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => internalRAM_interconnect_M05_AXI_RVALID,
      S_AXI_wdata(255 downto 0) => internalRAM_interconnect_M05_AXI_WDATA(255 downto 0),
      S_AXI_wlast => internalRAM_interconnect_M05_AXI_WLAST,
      S_AXI_wready => internalRAM_interconnect_M05_AXI_WREADY,
      S_AXI_wstrb(31 downto 0) => internalRAM_interconnect_M05_AXI_WSTRB(31 downto 0),
      S_AXI_wvalid => internalRAM_interconnect_M05_AXI_WVALID,
      aclk => clk_wiz_0_clk_out1,
      axis_clk => clk_wiz_adc0_clk_out2,
      enable => axi_gpio_dac_gpio_io_o(0),
      s_axi_aresetn => RFegressReset_peripheral_aresetn(0)
    );
internalRAM_interconnect: entity work.mts_internalRAM_interconnect_0
     port map (
      ACLK => clk_wiz_adc0_clk_out2,
      ARESETN => RFegressReset_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_adc0_clk_out2,
      M00_ARESETN => RFegressReset_peripheral_aresetn(0),
      M00_AXI_araddr(39 downto 0) => internalRAM_interconnect_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arburst(1 downto 0) => internalRAM_interconnect_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => internalRAM_interconnect_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => internalRAM_interconnect_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => internalRAM_interconnect_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => internalRAM_interconnect_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready(0) => internalRAM_interconnect_M00_AXI_ARREADY(0),
      M00_AXI_arsize(2 downto 0) => internalRAM_interconnect_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid(0) => internalRAM_interconnect_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(39 downto 0) => internalRAM_interconnect_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awburst(1 downto 0) => internalRAM_interconnect_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => internalRAM_interconnect_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => internalRAM_interconnect_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => internalRAM_interconnect_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => internalRAM_interconnect_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready(0) => internalRAM_interconnect_M00_AXI_AWREADY(0),
      M00_AXI_awsize(2 downto 0) => internalRAM_interconnect_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid(0) => internalRAM_interconnect_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => internalRAM_interconnect_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => internalRAM_interconnect_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => internalRAM_interconnect_M00_AXI_BVALID(0),
      M00_AXI_rdata(255 downto 0) => internalRAM_interconnect_M00_AXI_RDATA(255 downto 0),
      M00_AXI_rlast(0) => internalRAM_interconnect_M00_AXI_RLAST(0),
      M00_AXI_rready(0) => internalRAM_interconnect_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => internalRAM_interconnect_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => internalRAM_interconnect_M00_AXI_RVALID(0),
      M00_AXI_wdata(255 downto 0) => internalRAM_interconnect_M00_AXI_WDATA(255 downto 0),
      M00_AXI_wlast(0) => internalRAM_interconnect_M00_AXI_WLAST(0),
      M00_AXI_wready(0) => internalRAM_interconnect_M00_AXI_WREADY(0),
      M00_AXI_wstrb(31 downto 0) => internalRAM_interconnect_M00_AXI_WSTRB(31 downto 0),
      M00_AXI_wvalid(0) => internalRAM_interconnect_M00_AXI_WVALID(0),
      M01_ACLK => clk_wiz_adc0_clk_out2,
      M01_ARESETN => RFegressReset_peripheral_aresetn(0),
      M01_AXI_araddr => NLW_internalRAM_interconnect_M01_AXI_araddr_UNCONNECTED,
      M01_AXI_arburst => NLW_internalRAM_interconnect_M01_AXI_arburst_UNCONNECTED,
      M01_AXI_arcache => NLW_internalRAM_interconnect_M01_AXI_arcache_UNCONNECTED,
      M01_AXI_arlen => NLW_internalRAM_interconnect_M01_AXI_arlen_UNCONNECTED,
      M01_AXI_arlock => NLW_internalRAM_interconnect_M01_AXI_arlock_UNCONNECTED,
      M01_AXI_arprot => NLW_internalRAM_interconnect_M01_AXI_arprot_UNCONNECTED,
      M01_AXI_arqos => NLW_internalRAM_interconnect_M01_AXI_arqos_UNCONNECTED,
      M01_AXI_arready => '0',
      M01_AXI_arregion => NLW_internalRAM_interconnect_M01_AXI_arregion_UNCONNECTED,
      M01_AXI_arsize => NLW_internalRAM_interconnect_M01_AXI_arsize_UNCONNECTED,
      M01_AXI_arvalid => NLW_internalRAM_interconnect_M01_AXI_arvalid_UNCONNECTED,
      M01_AXI_awaddr => NLW_internalRAM_interconnect_M01_AXI_awaddr_UNCONNECTED,
      M01_AXI_awburst => NLW_internalRAM_interconnect_M01_AXI_awburst_UNCONNECTED,
      M01_AXI_awcache => NLW_internalRAM_interconnect_M01_AXI_awcache_UNCONNECTED,
      M01_AXI_awlen => NLW_internalRAM_interconnect_M01_AXI_awlen_UNCONNECTED,
      M01_AXI_awlock => NLW_internalRAM_interconnect_M01_AXI_awlock_UNCONNECTED,
      M01_AXI_awprot => NLW_internalRAM_interconnect_M01_AXI_awprot_UNCONNECTED,
      M01_AXI_awqos => NLW_internalRAM_interconnect_M01_AXI_awqos_UNCONNECTED,
      M01_AXI_awready => '0',
      M01_AXI_awregion => NLW_internalRAM_interconnect_M01_AXI_awregion_UNCONNECTED,
      M01_AXI_awsize => NLW_internalRAM_interconnect_M01_AXI_awsize_UNCONNECTED,
      M01_AXI_awvalid => NLW_internalRAM_interconnect_M01_AXI_awvalid_UNCONNECTED,
      M01_AXI_bready => NLW_internalRAM_interconnect_M01_AXI_bready_UNCONNECTED,
      M01_AXI_bresp => '0',
      M01_AXI_bvalid => '0',
      M01_AXI_rdata => '0',
      M01_AXI_rlast => '0',
      M01_AXI_rready => NLW_internalRAM_interconnect_M01_AXI_rready_UNCONNECTED,
      M01_AXI_rresp => '0',
      M01_AXI_rvalid => '0',
      M01_AXI_wdata => NLW_internalRAM_interconnect_M01_AXI_wdata_UNCONNECTED,
      M01_AXI_wlast => NLW_internalRAM_interconnect_M01_AXI_wlast_UNCONNECTED,
      M01_AXI_wready => '0',
      M01_AXI_wstrb => NLW_internalRAM_interconnect_M01_AXI_wstrb_UNCONNECTED,
      M01_AXI_wvalid => NLW_internalRAM_interconnect_M01_AXI_wvalid_UNCONNECTED,
      M02_ACLK => clk_wiz_adc0_clk_out2,
      M02_ARESETN => RFegressReset_peripheral_aresetn(0),
      M02_AXI_araddr(39 downto 0) => S_AXI_2_ARADDR(39 downto 0),
      M02_AXI_arburst(1 downto 0) => S_AXI_2_ARBURST(1 downto 0),
      M02_AXI_arcache(3 downto 0) => S_AXI_2_ARCACHE(3 downto 0),
      M02_AXI_arlen(7 downto 0) => S_AXI_2_ARLEN(7 downto 0),
      M02_AXI_arlock(0) => S_AXI_2_ARLOCK(0),
      M02_AXI_arprot(2 downto 0) => S_AXI_2_ARPROT(2 downto 0),
      M02_AXI_arready(0) => S_AXI_2_ARREADY(0),
      M02_AXI_arsize(2 downto 0) => S_AXI_2_ARSIZE(2 downto 0),
      M02_AXI_arvalid(0) => S_AXI_2_ARVALID(0),
      M02_AXI_awaddr(39 downto 0) => S_AXI_2_AWADDR(39 downto 0),
      M02_AXI_awburst(1 downto 0) => S_AXI_2_AWBURST(1 downto 0),
      M02_AXI_awcache(3 downto 0) => S_AXI_2_AWCACHE(3 downto 0),
      M02_AXI_awlen(7 downto 0) => S_AXI_2_AWLEN(7 downto 0),
      M02_AXI_awlock(0) => S_AXI_2_AWLOCK(0),
      M02_AXI_awprot(2 downto 0) => S_AXI_2_AWPROT(2 downto 0),
      M02_AXI_awready(0) => S_AXI_2_AWREADY(0),
      M02_AXI_awsize(2 downto 0) => S_AXI_2_AWSIZE(2 downto 0),
      M02_AXI_awvalid(0) => S_AXI_2_AWVALID(0),
      M02_AXI_bready(0) => S_AXI_2_BREADY(0),
      M02_AXI_bresp(1 downto 0) => S_AXI_2_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => S_AXI_2_BVALID(0),
      M02_AXI_rdata(255 downto 0) => S_AXI_2_RDATA(255 downto 0),
      M02_AXI_rlast(0) => S_AXI_2_RLAST(0),
      M02_AXI_rready(0) => S_AXI_2_RREADY(0),
      M02_AXI_rresp(1 downto 0) => S_AXI_2_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => S_AXI_2_RVALID(0),
      M02_AXI_wdata(255 downto 0) => S_AXI_2_WDATA(255 downto 0),
      M02_AXI_wlast(0) => S_AXI_2_WLAST(0),
      M02_AXI_wready(0) => S_AXI_2_WREADY(0),
      M02_AXI_wstrb(31 downto 0) => S_AXI_2_WSTRB(31 downto 0),
      M02_AXI_wvalid(0) => S_AXI_2_WVALID(0),
      M03_ACLK => clk_wiz_adc0_clk_out2,
      M03_ARESETN => RFegressReset_peripheral_aresetn(0),
      M03_AXI_araddr(39 downto 0) => internalRAM_interconnect_M03_AXI_ARADDR(39 downto 0),
      M03_AXI_arburst(1 downto 0) => internalRAM_interconnect_M03_AXI_ARBURST(1 downto 0),
      M03_AXI_arcache(3 downto 0) => internalRAM_interconnect_M03_AXI_ARCACHE(3 downto 0),
      M03_AXI_arlen(7 downto 0) => internalRAM_interconnect_M03_AXI_ARLEN(7 downto 0),
      M03_AXI_arlock(0) => internalRAM_interconnect_M03_AXI_ARLOCK(0),
      M03_AXI_arprot(2 downto 0) => internalRAM_interconnect_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready(0) => internalRAM_interconnect_M03_AXI_ARREADY(0),
      M03_AXI_arsize(2 downto 0) => internalRAM_interconnect_M03_AXI_ARSIZE(2 downto 0),
      M03_AXI_arvalid(0) => internalRAM_interconnect_M03_AXI_ARVALID(0),
      M03_AXI_awaddr(39 downto 0) => internalRAM_interconnect_M03_AXI_AWADDR(39 downto 0),
      M03_AXI_awburst(1 downto 0) => internalRAM_interconnect_M03_AXI_AWBURST(1 downto 0),
      M03_AXI_awcache(3 downto 0) => internalRAM_interconnect_M03_AXI_AWCACHE(3 downto 0),
      M03_AXI_awlen(7 downto 0) => internalRAM_interconnect_M03_AXI_AWLEN(7 downto 0),
      M03_AXI_awlock(0) => internalRAM_interconnect_M03_AXI_AWLOCK(0),
      M03_AXI_awprot(2 downto 0) => internalRAM_interconnect_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready(0) => internalRAM_interconnect_M03_AXI_AWREADY(0),
      M03_AXI_awsize(2 downto 0) => internalRAM_interconnect_M03_AXI_AWSIZE(2 downto 0),
      M03_AXI_awvalid(0) => internalRAM_interconnect_M03_AXI_AWVALID(0),
      M03_AXI_bready(0) => internalRAM_interconnect_M03_AXI_BREADY(0),
      M03_AXI_bresp(1 downto 0) => internalRAM_interconnect_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => internalRAM_interconnect_M03_AXI_BVALID(0),
      M03_AXI_rdata(255 downto 0) => internalRAM_interconnect_M03_AXI_RDATA(255 downto 0),
      M03_AXI_rlast(0) => internalRAM_interconnect_M03_AXI_RLAST(0),
      M03_AXI_rready(0) => internalRAM_interconnect_M03_AXI_RREADY(0),
      M03_AXI_rresp(1 downto 0) => internalRAM_interconnect_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => internalRAM_interconnect_M03_AXI_RVALID(0),
      M03_AXI_wdata(255 downto 0) => internalRAM_interconnect_M03_AXI_WDATA(255 downto 0),
      M03_AXI_wlast(0) => internalRAM_interconnect_M03_AXI_WLAST(0),
      M03_AXI_wready(0) => internalRAM_interconnect_M03_AXI_WREADY(0),
      M03_AXI_wstrb(31 downto 0) => internalRAM_interconnect_M03_AXI_WSTRB(31 downto 0),
      M03_AXI_wvalid(0) => internalRAM_interconnect_M03_AXI_WVALID(0),
      M04_ACLK => clk_wiz_adc0_clk_out2,
      M04_ARESETN => RFegressReset_peripheral_aresetn(0),
      M04_AXI_araddr(39 downto 0) => internalRAM_interconnect_M04_AXI_ARADDR(39 downto 0),
      M04_AXI_arburst(1 downto 0) => internalRAM_interconnect_M04_AXI_ARBURST(1 downto 0),
      M04_AXI_arcache(3 downto 0) => internalRAM_interconnect_M04_AXI_ARCACHE(3 downto 0),
      M04_AXI_arlen(7 downto 0) => internalRAM_interconnect_M04_AXI_ARLEN(7 downto 0),
      M04_AXI_arlock(0) => internalRAM_interconnect_M04_AXI_ARLOCK(0),
      M04_AXI_arprot(2 downto 0) => internalRAM_interconnect_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready(0) => internalRAM_interconnect_M04_AXI_ARREADY(0),
      M04_AXI_arsize(2 downto 0) => internalRAM_interconnect_M04_AXI_ARSIZE(2 downto 0),
      M04_AXI_arvalid(0) => internalRAM_interconnect_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(39 downto 0) => internalRAM_interconnect_M04_AXI_AWADDR(39 downto 0),
      M04_AXI_awburst(1 downto 0) => internalRAM_interconnect_M04_AXI_AWBURST(1 downto 0),
      M04_AXI_awcache(3 downto 0) => internalRAM_interconnect_M04_AXI_AWCACHE(3 downto 0),
      M04_AXI_awlen(7 downto 0) => internalRAM_interconnect_M04_AXI_AWLEN(7 downto 0),
      M04_AXI_awlock(0) => internalRAM_interconnect_M04_AXI_AWLOCK(0),
      M04_AXI_awprot(2 downto 0) => internalRAM_interconnect_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready(0) => internalRAM_interconnect_M04_AXI_AWREADY(0),
      M04_AXI_awsize(2 downto 0) => internalRAM_interconnect_M04_AXI_AWSIZE(2 downto 0),
      M04_AXI_awvalid(0) => internalRAM_interconnect_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => internalRAM_interconnect_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => internalRAM_interconnect_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => internalRAM_interconnect_M04_AXI_BVALID(0),
      M04_AXI_rdata(255 downto 0) => internalRAM_interconnect_M04_AXI_RDATA(255 downto 0),
      M04_AXI_rlast(0) => internalRAM_interconnect_M04_AXI_RLAST(0),
      M04_AXI_rready(0) => internalRAM_interconnect_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => internalRAM_interconnect_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => internalRAM_interconnect_M04_AXI_RVALID(0),
      M04_AXI_wdata(255 downto 0) => internalRAM_interconnect_M04_AXI_WDATA(255 downto 0),
      M04_AXI_wlast(0) => internalRAM_interconnect_M04_AXI_WLAST(0),
      M04_AXI_wready(0) => internalRAM_interconnect_M04_AXI_WREADY(0),
      M04_AXI_wstrb(31 downto 0) => internalRAM_interconnect_M04_AXI_WSTRB(31 downto 0),
      M04_AXI_wvalid(0) => internalRAM_interconnect_M04_AXI_WVALID(0),
      M05_ACLK => clk_wiz_adc0_clk_out2,
      M05_ARESETN => RFegressReset_peripheral_aresetn(0),
      M05_AXI_araddr(39 downto 0) => internalRAM_interconnect_M05_AXI_ARADDR(39 downto 0),
      M05_AXI_arburst(1 downto 0) => internalRAM_interconnect_M05_AXI_ARBURST(1 downto 0),
      M05_AXI_arcache(3 downto 0) => internalRAM_interconnect_M05_AXI_ARCACHE(3 downto 0),
      M05_AXI_arlen(7 downto 0) => internalRAM_interconnect_M05_AXI_ARLEN(7 downto 0),
      M05_AXI_arlock => internalRAM_interconnect_M05_AXI_ARLOCK,
      M05_AXI_arprot(2 downto 0) => internalRAM_interconnect_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arready => internalRAM_interconnect_M05_AXI_ARREADY,
      M05_AXI_arsize(2 downto 0) => internalRAM_interconnect_M05_AXI_ARSIZE(2 downto 0),
      M05_AXI_arvalid => internalRAM_interconnect_M05_AXI_ARVALID,
      M05_AXI_awaddr(39 downto 0) => internalRAM_interconnect_M05_AXI_AWADDR(39 downto 0),
      M05_AXI_awburst(1 downto 0) => internalRAM_interconnect_M05_AXI_AWBURST(1 downto 0),
      M05_AXI_awcache(3 downto 0) => internalRAM_interconnect_M05_AXI_AWCACHE(3 downto 0),
      M05_AXI_awlen(7 downto 0) => internalRAM_interconnect_M05_AXI_AWLEN(7 downto 0),
      M05_AXI_awlock => internalRAM_interconnect_M05_AXI_AWLOCK,
      M05_AXI_awprot(2 downto 0) => internalRAM_interconnect_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awready => internalRAM_interconnect_M05_AXI_AWREADY,
      M05_AXI_awsize(2 downto 0) => internalRAM_interconnect_M05_AXI_AWSIZE(2 downto 0),
      M05_AXI_awvalid => internalRAM_interconnect_M05_AXI_AWVALID,
      M05_AXI_bready => internalRAM_interconnect_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => internalRAM_interconnect_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => internalRAM_interconnect_M05_AXI_BVALID,
      M05_AXI_rdata(255 downto 0) => internalRAM_interconnect_M05_AXI_RDATA(255 downto 0),
      M05_AXI_rlast => internalRAM_interconnect_M05_AXI_RLAST,
      M05_AXI_rready => internalRAM_interconnect_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => internalRAM_interconnect_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => internalRAM_interconnect_M05_AXI_RVALID,
      M05_AXI_wdata(255 downto 0) => internalRAM_interconnect_M05_AXI_WDATA(255 downto 0),
      M05_AXI_wlast => internalRAM_interconnect_M05_AXI_WLAST,
      M05_AXI_wready => internalRAM_interconnect_M05_AXI_WREADY,
      M05_AXI_wstrb(31 downto 0) => internalRAM_interconnect_M05_AXI_WSTRB(31 downto 0),
      M05_AXI_wvalid => internalRAM_interconnect_M05_AXI_WVALID,
      M06_ACLK => clk_wiz_adc0_clk_out2,
      M06_ARESETN => RFegressReset_peripheral_aresetn(0),
      M06_AXI_araddr => NLW_internalRAM_interconnect_M06_AXI_araddr_UNCONNECTED,
      M06_AXI_arburst => NLW_internalRAM_interconnect_M06_AXI_arburst_UNCONNECTED,
      M06_AXI_arcache => NLW_internalRAM_interconnect_M06_AXI_arcache_UNCONNECTED,
      M06_AXI_arlen => NLW_internalRAM_interconnect_M06_AXI_arlen_UNCONNECTED,
      M06_AXI_arlock => NLW_internalRAM_interconnect_M06_AXI_arlock_UNCONNECTED,
      M06_AXI_arprot => NLW_internalRAM_interconnect_M06_AXI_arprot_UNCONNECTED,
      M06_AXI_arqos => NLW_internalRAM_interconnect_M06_AXI_arqos_UNCONNECTED,
      M06_AXI_arready => '0',
      M06_AXI_arregion => NLW_internalRAM_interconnect_M06_AXI_arregion_UNCONNECTED,
      M06_AXI_arsize => NLW_internalRAM_interconnect_M06_AXI_arsize_UNCONNECTED,
      M06_AXI_arvalid => NLW_internalRAM_interconnect_M06_AXI_arvalid_UNCONNECTED,
      M06_AXI_awaddr => NLW_internalRAM_interconnect_M06_AXI_awaddr_UNCONNECTED,
      M06_AXI_awburst => NLW_internalRAM_interconnect_M06_AXI_awburst_UNCONNECTED,
      M06_AXI_awcache => NLW_internalRAM_interconnect_M06_AXI_awcache_UNCONNECTED,
      M06_AXI_awlen => NLW_internalRAM_interconnect_M06_AXI_awlen_UNCONNECTED,
      M06_AXI_awlock => NLW_internalRAM_interconnect_M06_AXI_awlock_UNCONNECTED,
      M06_AXI_awprot => NLW_internalRAM_interconnect_M06_AXI_awprot_UNCONNECTED,
      M06_AXI_awqos => NLW_internalRAM_interconnect_M06_AXI_awqos_UNCONNECTED,
      M06_AXI_awready => '0',
      M06_AXI_awregion => NLW_internalRAM_interconnect_M06_AXI_awregion_UNCONNECTED,
      M06_AXI_awsize => NLW_internalRAM_interconnect_M06_AXI_awsize_UNCONNECTED,
      M06_AXI_awvalid => NLW_internalRAM_interconnect_M06_AXI_awvalid_UNCONNECTED,
      M06_AXI_bready => NLW_internalRAM_interconnect_M06_AXI_bready_UNCONNECTED,
      M06_AXI_bresp => '0',
      M06_AXI_bvalid => '0',
      M06_AXI_rdata => '0',
      M06_AXI_rlast => '0',
      M06_AXI_rready => NLW_internalRAM_interconnect_M06_AXI_rready_UNCONNECTED,
      M06_AXI_rresp => '0',
      M06_AXI_rvalid => '0',
      M06_AXI_wdata => NLW_internalRAM_interconnect_M06_AXI_wdata_UNCONNECTED,
      M06_AXI_wlast => NLW_internalRAM_interconnect_M06_AXI_wlast_UNCONNECTED,
      M06_AXI_wready => '0',
      M06_AXI_wstrb => NLW_internalRAM_interconnect_M06_AXI_wstrb_UNCONNECTED,
      M06_AXI_wvalid => NLW_internalRAM_interconnect_M06_AXI_wvalid_UNCONNECTED,
      S00_ACLK => clk_wiz_adc0_clk_out2,
      S00_ARESETN => RFegressReset_peripheral_aresetn(0),
      S00_AXI_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN(7 downto 0),
      S00_AXI_arlock => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK,
      S00_AXI_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS(3 downto 0),
      S00_AXI_arready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY,
      S00_AXI_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE(2 downto 0),
      S00_AXI_aruser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER(15 downto 0),
      S00_AXI_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN(7 downto 0),
      S00_AXI_awlock => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK,
      S00_AXI_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS(3 downto 0),
      S00_AXI_awready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY,
      S00_AXI_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE(2 downto 0),
      S00_AXI_awuser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER(15 downto 0),
      S00_AXI_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID,
      S00_AXI_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID(15 downto 0),
      S00_AXI_bready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY,
      S00_AXI_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP(1 downto 0),
      S00_AXI_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID,
      S00_AXI_rdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID(15 downto 0),
      S00_AXI_rlast => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST,
      S00_AXI_rready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY,
      S00_AXI_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP(1 downto 0),
      S00_AXI_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID,
      S00_AXI_wdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA(127 downto 0),
      S00_AXI_wlast => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST,
      S00_AXI_wready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY,
      S00_AXI_wstrb(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB(15 downto 0),
      S00_AXI_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID
    );
smartconnect_0: component mts_smartconnect_0_0
     port map (
      M00_AXI_araddr(31 downto 0) => smartconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => smartconnect_0_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => smartconnect_0_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => smartconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => smartconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser(15 downto 0) => NLW_smartconnect_0_M00_AXI_aruser_UNCONNECTED(15 downto 0),
      M00_AXI_arvalid => smartconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => smartconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => smartconnect_0_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => smartconnect_0_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => smartconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => smartconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser(15 downto 0) => NLW_smartconnect_0_M00_AXI_awuser_UNCONNECTED(15 downto 0),
      M00_AXI_awvalid => smartconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(511 downto 0) => smartconnect_0_M00_AXI_RDATA(511 downto 0),
      M00_AXI_rlast => smartconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => smartconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(511 downto 0) => smartconnect_0_M00_AXI_WDATA(511 downto 0),
      M00_AXI_wlast => smartconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => smartconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(63 downto 0) => smartconnect_0_M00_AXI_WSTRB(63 downto 0),
      M00_AXI_wvalid => smartconnect_0_M00_AXI_WVALID,
      S00_AXI_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK,
      S00_AXI_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS(3 downto 0),
      S00_AXI_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY,
      S00_AXI_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE(2 downto 0),
      S00_AXI_aruser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER(15 downto 0),
      S00_AXI_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK,
      S00_AXI_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS(3 downto 0),
      S00_AXI_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY,
      S00_AXI_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE(2 downto 0),
      S00_AXI_awuser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER(15 downto 0),
      S00_AXI_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID,
      S00_AXI_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID(15 downto 0),
      S00_AXI_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY,
      S00_AXI_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP(1 downto 0),
      S00_AXI_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID,
      S00_AXI_rdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID(15 downto 0),
      S00_AXI_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST,
      S00_AXI_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY,
      S00_AXI_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP(1 downto 0),
      S00_AXI_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID,
      S00_AXI_wdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA(127 downto 0),
      S00_AXI_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST,
      S00_AXI_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY,
      S00_AXI_wstrb(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB(15 downto 0),
      S00_AXI_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID,
      S01_AXI_awaddr(39 downto 0) => deepCapture_M_AXI_S2MM_AWADDR(39 downto 0),
      S01_AXI_awburst(1 downto 0) => deepCapture_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => deepCapture_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => deepCapture_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => '0',
      S01_AXI_awprot(2 downto 0) => deepCapture_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => B"0000",
      S01_AXI_awready => deepCapture_M_AXI_S2MM_AWREADY,
      S01_AXI_awsize(2 downto 0) => deepCapture_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid => deepCapture_M_AXI_S2MM_AWVALID,
      S01_AXI_bready => deepCapture_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => deepCapture_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid => deepCapture_M_AXI_S2MM_BVALID,
      S01_AXI_wdata(511 downto 0) => deepCapture_M_AXI_S2MM_WDATA(511 downto 0),
      S01_AXI_wlast => deepCapture_M_AXI_S2MM_WLAST,
      S01_AXI_wready => deepCapture_M_AXI_S2MM_WREADY,
      S01_AXI_wstrb(63 downto 0) => deepCapture_M_AXI_S2MM_WSTRB(63 downto 0),
      S01_AXI_wvalid => deepCapture_M_AXI_S2MM_WVALID,
      aclk => ddr4_0_c0_ddr4_ui_clk,
      aresetn => deepCapture_peripheral_aresetn(0)
    );
system_ila_0: component mts_system_ila_0_0
     port map (
      SLOT_0_AXI_araddr(39 downto 0) => B"0000000000000000000000000000000000000000",
      SLOT_0_AXI_arburst(1 downto 0) => B"01",
      SLOT_0_AXI_arcache(3 downto 0) => B"0011",
      SLOT_0_AXI_arlen(7 downto 0) => B"00000000",
      SLOT_0_AXI_arlock(0) => '0',
      SLOT_0_AXI_arprot(2 downto 0) => B"000",
      SLOT_0_AXI_arqos(3 downto 0) => B"0000",
      SLOT_0_AXI_arready => '0',
      SLOT_0_AXI_arregion(3 downto 0) => B"0000",
      SLOT_0_AXI_arsize(2 downto 0) => B"110",
      SLOT_0_AXI_arvalid => '0',
      SLOT_0_AXI_awaddr(39 downto 0) => deepCapture_M_AXI_S2MM_AWADDR(39 downto 0),
      SLOT_0_AXI_awburst(1 downto 0) => deepCapture_M_AXI_S2MM_AWBURST(1 downto 0),
      SLOT_0_AXI_awcache(3 downto 0) => deepCapture_M_AXI_S2MM_AWCACHE(3 downto 0),
      SLOT_0_AXI_awlen(7 downto 0) => deepCapture_M_AXI_S2MM_AWLEN(7 downto 0),
      SLOT_0_AXI_awlock(0) => '0',
      SLOT_0_AXI_awprot(2 downto 0) => deepCapture_M_AXI_S2MM_AWPROT(2 downto 0),
      SLOT_0_AXI_awqos(3 downto 0) => B"0000",
      SLOT_0_AXI_awready => deepCapture_M_AXI_S2MM_AWREADY,
      SLOT_0_AXI_awregion(3 downto 0) => B"0000",
      SLOT_0_AXI_awsize(2 downto 0) => deepCapture_M_AXI_S2MM_AWSIZE(2 downto 0),
      SLOT_0_AXI_awvalid => deepCapture_M_AXI_S2MM_AWVALID,
      SLOT_0_AXI_bready => deepCapture_M_AXI_S2MM_BREADY,
      SLOT_0_AXI_bresp(1 downto 0) => deepCapture_M_AXI_S2MM_BRESP(1 downto 0),
      SLOT_0_AXI_bvalid => deepCapture_M_AXI_S2MM_BVALID,
      SLOT_0_AXI_rdata(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      SLOT_0_AXI_rlast => '0',
      SLOT_0_AXI_rready => '0',
      SLOT_0_AXI_rresp(1 downto 0) => B"00",
      SLOT_0_AXI_rvalid => '0',
      SLOT_0_AXI_wdata(511 downto 0) => deepCapture_M_AXI_S2MM_WDATA(511 downto 0),
      SLOT_0_AXI_wlast => deepCapture_M_AXI_S2MM_WLAST,
      SLOT_0_AXI_wready => deepCapture_M_AXI_S2MM_WREADY,
      SLOT_0_AXI_wstrb(63 downto 0) => deepCapture_M_AXI_S2MM_WSTRB(63 downto 0),
      SLOT_0_AXI_wvalid => deepCapture_M_AXI_S2MM_WVALID,
      clk => ddr4_0_c0_ddr4_ui_clk,
      probe0(31 downto 0) => deepCapture_axis_rd_data_count(31 downto 0),
      resetn => deepCapture_peripheral_aresetn(0)
    );
system_management_wiz_0: component mts_system_management_wiz_0_0
     port map (
      alarm_out => NLW_system_management_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_system_management_wiz_0_busy_out_UNCONNECTED,
      channel_out(5 downto 0) => NLW_system_management_wiz_0_channel_out_UNCONNECTED(5 downto 0),
      eoc_out => NLW_system_management_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_system_management_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => system_management_wiz_0_ip2intc_irpt,
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(12 downto 0) => control_interconnect_M06_AXI_ARADDR(12 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => control_interconnect_M06_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M06_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => control_interconnect_M06_AXI_AWADDR(12 downto 0),
      s_axi_awready => control_interconnect_M06_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M06_AXI_AWVALID,
      s_axi_bready => control_interconnect_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => control_interconnect_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => control_interconnect_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M06_AXI_WVALID,
      vn => '0',
      vp => '0'
    );
usp_rf_data_converter_1: component mts_usp_rf_data_converter_1_0
     port map (
      adc2_clk_n => adc2_clk_0_1_CLK_N,
      adc2_clk_p => adc2_clk_0_1_CLK_P,
      clk_adc0 => NLW_usp_rf_data_converter_1_clk_adc0_UNCONNECTED,
      clk_adc1 => NLW_usp_rf_data_converter_1_clk_adc1_UNCONNECTED,
      clk_adc2 => NLW_usp_rf_data_converter_1_clk_adc2_UNCONNECTED,
      clk_adc3 => NLW_usp_rf_data_converter_1_clk_adc3_UNCONNECTED,
      clk_dac0 => NLW_usp_rf_data_converter_1_clk_dac0_UNCONNECTED,
      clk_dac1 => NLW_usp_rf_data_converter_1_clk_dac1_UNCONNECTED,
      clk_dac2 => NLW_usp_rf_data_converter_1_clk_dac2_UNCONNECTED,
      clk_dac3 => NLW_usp_rf_data_converter_1_clk_dac3_UNCONNECTED,
      dac0_clk_n => dac0_clk_1_CLK_N,
      dac0_clk_p => dac0_clk_1_CLK_P,
      dac2_clk_n => dac2_clk_0_1_CLK_N,
      dac2_clk_p => dac2_clk_0_1_CLK_P,
      irq => usp_rf_data_converter_1_irq,
      m00_axis_tdata(127 downto 0) => usp_rf_data_converter_1_m00_axis_TDATA(127 downto 0),
      m00_axis_tready => usp_rf_data_converter_1_m00_axis_TREADY,
      m00_axis_tvalid => usp_rf_data_converter_1_m00_axis_TVALID,
      m02_axis_tdata(127 downto 0) => usp_rf_data_converter_1_m02_axis_TDATA(127 downto 0),
      m02_axis_tready => usp_rf_data_converter_1_m02_axis_TREADY,
      m02_axis_tvalid => usp_rf_data_converter_1_m02_axis_TVALID,
      m0_axis_aclk => clk_wiz_0_clk_out1,
      m0_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      m10_axis_tdata(127 downto 0) => NLW_usp_rf_data_converter_1_m10_axis_tdata_UNCONNECTED(127 downto 0),
      m10_axis_tready => '1',
      m10_axis_tvalid => NLW_usp_rf_data_converter_1_m10_axis_tvalid_UNCONNECTED,
      m1_axis_aclk => clk_wiz_0_clk_out1,
      m1_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      m20_axis_tdata(127 downto 0) => usp_rf_data_converter_1_m20_axis_TDATA(127 downto 0),
      m20_axis_tready => usp_rf_data_converter_1_m20_axis_TREADY,
      m20_axis_tvalid => usp_rf_data_converter_1_m20_axis_TVALID,
      m22_axis_tdata(127 downto 0) => usp_rf_data_converter_1_m22_axis_TDATA(127 downto 0),
      m22_axis_tready => usp_rf_data_converter_1_m22_axis_TREADY,
      m22_axis_tvalid => usp_rf_data_converter_1_m22_axis_TVALID,
      m2_axis_aclk => clk_wiz_0_clk_out1,
      m2_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      m30_axis_tdata(127 downto 0) => NLW_usp_rf_data_converter_1_m30_axis_tdata_UNCONNECTED(127 downto 0),
      m30_axis_tready => '1',
      m30_axis_tvalid => NLW_usp_rf_data_converter_1_m30_axis_tvalid_UNCONNECTED,
      m3_axis_aclk => clk_wiz_0_clk_out1,
      m3_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s00_axis_tdata(127 downto 0) => hier_dac_play0_M_AXIS_0_TDATA(127 downto 0),
      s00_axis_tready => hier_dac_play0_M_AXIS_0_TREADY,
      s00_axis_tvalid => hier_dac_play0_M_AXIS_0_TVALID,
      s0_axis_aclk => clk_wiz_0_clk_out1,
      s0_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s10_axis_tdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s10_axis_tready => NLW_usp_rf_data_converter_1_s10_axis_tready_UNCONNECTED,
      s10_axis_tvalid => '0',
      s1_axis_aclk => clk_wiz_0_clk_out1,
      s1_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s20_axis_tdata(127 downto 0) => hier_dac_play1_M_AXIS_1_TDATA(127 downto 0),
      s20_axis_tready => hier_dac_play1_M_AXIS_1_TREADY,
      s20_axis_tvalid => hier_dac_play1_M_AXIS_1_TVALID,
      s2_axis_aclk => clk_wiz_0_clk_out1,
      s2_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s30_axis_tdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s30_axis_tready => NLW_usp_rf_data_converter_1_s30_axis_tready_UNCONNECTED,
      s30_axis_tvalid => '0',
      s3_axis_aclk => clk_wiz_0_clk_out1,
      s3_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(17 downto 0) => ps8_0_axi_periph_M00_AXI_ARADDR(17 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => ps8_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => ps8_0_axi_periph_M00_AXI_ARVALID,
      s_axi_awaddr(17 downto 0) => ps8_0_axi_periph_M00_AXI_AWADDR(17 downto 0),
      s_axi_awready => ps8_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => ps8_0_axi_periph_M00_AXI_AWVALID,
      s_axi_bready => ps8_0_axi_periph_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps8_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => ps8_0_axi_periph_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps8_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => ps8_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps8_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps8_0_axi_periph_M00_AXI_WVALID,
      sysref_in_n => sysref_in_0_1_diff_n,
      sysref_in_p => sysref_in_0_1_diff_p,
      user_sysref_adc => synchronizeSYSREF_dest_out(0),
      user_sysref_dac => synchronizeSYSREF_dest_out(0),
      vin0_01_n => vin0_01_0_1_V_N,
      vin0_01_p => vin0_01_0_1_V_P,
      vin0_23_n => vin0_23_1_1_V_N,
      vin0_23_p => vin0_23_1_1_V_P,
      vin1_01_n => vin1_01_0_1_V_N,
      vin1_01_p => vin1_01_0_1_V_P,
      vin2_01_n => vin2_01_0_1_V_N,
      vin2_01_p => vin2_01_0_1_V_P,
      vin2_23_n => vin2_23_0_1_V_N,
      vin2_23_p => vin2_23_0_1_V_P,
      vin3_01_n => '0',
      vin3_01_p => '0',
      vout00_n => usp_rf_data_converter_1_vout00_V_N,
      vout00_p => usp_rf_data_converter_1_vout00_V_P,
      vout10_n => NLW_usp_rf_data_converter_1_vout10_n_UNCONNECTED,
      vout10_p => NLW_usp_rf_data_converter_1_vout10_p_UNCONNECTED,
      vout20_n => usp_rf_data_converter_1_vout20_V_N,
      vout20_p => usp_rf_data_converter_1_vout20_V_P,
      vout30_n => NLW_usp_rf_data_converter_1_vout30_n_UNCONNECTED,
      vout30_p => NLW_usp_rf_data_converter_1_vout30_p_UNCONNECTED
    );
xlconcat_0: component mts_xlconcat_0_0
     port map (
      In0(0) => axi_dma_0_s2mm_introut,
      In1(0) => usp_rf_data_converter_1_irq,
      In2(0) => clocktreeMTS_interrupt,
      In3(0) => system_management_wiz_0_ip2intc_irpt,
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
    );
zynq_ultra_ps_e_0: component mts_zynq_ultra_ps_e_0_0
     port map (
      maxigp0_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR(39 downto 0),
      maxigp0_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST(1 downto 0),
      maxigp0_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE(3 downto 0),
      maxigp0_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID(15 downto 0),
      maxigp0_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN(7 downto 0),
      maxigp0_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK,
      maxigp0_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT(2 downto 0),
      maxigp0_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS(3 downto 0),
      maxigp0_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY,
      maxigp0_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE(2 downto 0),
      maxigp0_aruser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER(15 downto 0),
      maxigp0_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID,
      maxigp0_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR(39 downto 0),
      maxigp0_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST(1 downto 0),
      maxigp0_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE(3 downto 0),
      maxigp0_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID(15 downto 0),
      maxigp0_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN(7 downto 0),
      maxigp0_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK,
      maxigp0_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT(2 downto 0),
      maxigp0_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS(3 downto 0),
      maxigp0_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY,
      maxigp0_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE(2 downto 0),
      maxigp0_awuser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER(15 downto 0),
      maxigp0_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID,
      maxigp0_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID(15 downto 0),
      maxigp0_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY,
      maxigp0_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP(1 downto 0),
      maxigp0_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID,
      maxigp0_rdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA(127 downto 0),
      maxigp0_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID(15 downto 0),
      maxigp0_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST,
      maxigp0_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY,
      maxigp0_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP(1 downto 0),
      maxigp0_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID,
      maxigp0_wdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA(127 downto 0),
      maxigp0_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST,
      maxigp0_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY,
      maxigp0_wstrb(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB(15 downto 0),
      maxigp0_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID,
      maxigp1_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR(39 downto 0),
      maxigp1_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST(1 downto 0),
      maxigp1_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE(3 downto 0),
      maxigp1_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID(15 downto 0),
      maxigp1_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN(7 downto 0),
      maxigp1_arlock => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK,
      maxigp1_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT(2 downto 0),
      maxigp1_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS(3 downto 0),
      maxigp1_arready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY,
      maxigp1_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE(2 downto 0),
      maxigp1_aruser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER(15 downto 0),
      maxigp1_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID,
      maxigp1_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR(39 downto 0),
      maxigp1_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST(1 downto 0),
      maxigp1_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE(3 downto 0),
      maxigp1_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID(15 downto 0),
      maxigp1_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN(7 downto 0),
      maxigp1_awlock => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK,
      maxigp1_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT(2 downto 0),
      maxigp1_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS(3 downto 0),
      maxigp1_awready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY,
      maxigp1_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE(2 downto 0),
      maxigp1_awuser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER(15 downto 0),
      maxigp1_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID,
      maxigp1_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID(15 downto 0),
      maxigp1_bready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY,
      maxigp1_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP(1 downto 0),
      maxigp1_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID,
      maxigp1_rdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA(127 downto 0),
      maxigp1_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID(15 downto 0),
      maxigp1_rlast => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST,
      maxigp1_rready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY,
      maxigp1_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP(1 downto 0),
      maxigp1_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID,
      maxigp1_wdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA(127 downto 0),
      maxigp1_wlast => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST,
      maxigp1_wready => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY,
      maxigp1_wstrb(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB(15 downto 0),
      maxigp1_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID,
      maxigp2_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      maxigp2_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      maxigp2_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      maxigp2_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID(15 downto 0),
      maxigp2_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      maxigp2_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK,
      maxigp2_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      maxigp2_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      maxigp2_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY,
      maxigp2_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      maxigp2_aruser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_aruser_UNCONNECTED(15 downto 0),
      maxigp2_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID,
      maxigp2_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      maxigp2_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      maxigp2_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      maxigp2_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID(15 downto 0),
      maxigp2_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      maxigp2_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK,
      maxigp2_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      maxigp2_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      maxigp2_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY,
      maxigp2_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      maxigp2_awuser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awuser_UNCONNECTED(15 downto 0),
      maxigp2_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID,
      maxigp2_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID(15 downto 0),
      maxigp2_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY,
      maxigp2_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      maxigp2_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID,
      maxigp2_rdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      maxigp2_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID(15 downto 0),
      maxigp2_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST,
      maxigp2_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY,
      maxigp2_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      maxigp2_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID,
      maxigp2_wdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      maxigp2_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST,
      maxigp2_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY,
      maxigp2_wstrb(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      maxigp2_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID,
      maxihpm0_fpd_aclk => ddr4_0_c0_ddr4_ui_clk,
      maxihpm0_lpd_aclk => zynq_ultra_ps_e_0_pl_clk0,
      maxihpm1_fpd_aclk => clk_wiz_adc0_clk_out2,
      pl_clk0 => zynq_ultra_ps_e_0_pl_clk0,
      pl_ps_irq0(3 downto 0) => xlconcat_0_dout(3 downto 0),
      pl_resetn0 => zynq_ultra_ps_e_0_pl_resetn0
    );
end STRUCTURE;
