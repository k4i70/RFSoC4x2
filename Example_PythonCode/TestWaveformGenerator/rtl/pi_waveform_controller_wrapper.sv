`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: pi_waveform_controller_wrapper
// 
// Description:
//   Vivado IP wrapper for pi_waveform_controller.
//   This wrapper adds Xilinx-specific attributes and provides a clean interface
//   for IP Integrator block design integration.
//
// Target: Xilinx Zynq UltraScale+ RFSoC (ZU48DR) on RFSoC 4x2 board
//
// Integration Notes:
//   1. Connect s_axi_aclk to a 100-250 MHz clock (PS clock recommended)
//   2. Connect sample_clk to your DAC fabric clock (typically 256-512 MHz)
//   3. Connect AXI-Lite to PS via AXI Interconnect
//   4. Connect m_axis_dac to RF Data Converter DAC channel
//   5. Connect s_axis_adc from RF Data Converter ADC channel
//   6. Connect s_axis_waveform from DMA or custom loader
//
//////////////////////////////////////////////////////////////////////////////////

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
(* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_axil:s_axis_waveform, ASSOCIATED_RESET s_axi_aresetn" *)

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sample_clk CLK" *)
(* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m_axis_dac:s_axis_adc, ASSOCIATED_RESET sample_rstn" *)

module pi_waveform_controller_wrapper #(
    parameter integer BUFFER_DEPTH      = 16384,
    parameter integer SAMPLE_WIDTH      = 16,
    parameter integer COEFF_WIDTH       = 32,
    parameter integer COEFF_FRAC_BITS   = 16
)(
    // Clocks and Resets
    input  wire        s_axi_aclk,
    input  wire        s_axi_aresetn,
    input  wire        sample_clk,
    input  wire        sample_rstn,
    
    // AXI-Lite Slave Interface
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *)
    input  wire [7:0]  s_axil_awaddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWPROT" *)
    input  wire [2:0]  s_axil_awprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *)
    input  wire        s_axil_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *)
    output wire        s_axil_awready,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *)
    input  wire [31:0] s_axil_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *)
    input  wire [3:0]  s_axil_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *)
    input  wire        s_axil_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *)
    output wire        s_axil_wready,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *)
    output wire [1:0]  s_axil_bresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *)
    output wire        s_axil_bvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *)
    input  wire        s_axil_bready,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *)
    input  wire [7:0]  s_axil_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARPROT" *)
    input  wire [2:0]  s_axil_arprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *)
    input  wire        s_axil_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *)
    output wire        s_axil_arready,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *)
    output wire [31:0] s_axil_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *)
    output wire [1:0]  s_axil_rresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *)
    output wire        s_axil_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *)
    input  wire        s_axil_rready,
    
    // AXI-Stream Slave: Waveform Loading
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_waveform TDATA" *)
    input  wire [63:0] s_axis_waveform_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_waveform TVALID" *)
    input  wire        s_axis_waveform_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_waveform TREADY" *)
    output wire        s_axis_waveform_tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_waveform TLAST" *)
    input  wire        s_axis_waveform_tlast,
    
    // AXI-Stream Master: DAC Output
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TDATA" *)
    output wire [SAMPLE_WIDTH-1:0] m_axis_dac_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TVALID" *)
    output wire        m_axis_dac_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TREADY" *)
    input  wire        m_axis_dac_tready,
    
    // AXI-Stream Slave: ADC Feedback
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_adc TDATA" *)
    input  wire [SAMPLE_WIDTH-1:0] s_axis_adc_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_adc TVALID" *)
    input  wire        s_axis_adc_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_adc TREADY" *)
    output wire        s_axis_adc_tready,
    
    // Debug Outputs
    output wire        waveform_active,
    output wire        pi_saturated
);

    // Instantiate the main controller
    pi_waveform_controller #(
        .BUFFER_DEPTH      (BUFFER_DEPTH),
        .SAMPLE_WIDTH      (SAMPLE_WIDTH),
        .COEFF_WIDTH       (COEFF_WIDTH),
        .COEFF_FRAC_BITS   (COEFF_FRAC_BITS)
    ) u_controller (
        // Clocks
        .s_axi_aclk        (s_axi_aclk),
        .s_axi_aresetn     (s_axi_aresetn),
        .sample_clk        (sample_clk),
        .sample_rstn       (sample_rstn),
        
        // AXI-Lite
        .s_axil_awaddr     (s_axil_awaddr),
        .s_axil_awprot     (s_axil_awprot),
        .s_axil_awvalid    (s_axil_awvalid),
        .s_axil_awready    (s_axil_awready),
        .s_axil_wdata      (s_axil_wdata),
        .s_axil_wstrb      (s_axil_wstrb),
        .s_axil_wvalid     (s_axil_wvalid),
        .s_axil_wready     (s_axil_wready),
        .s_axil_bresp      (s_axil_bresp),
        .s_axil_bvalid     (s_axil_bvalid),
        .s_axil_bready     (s_axil_bready),
        .s_axil_araddr     (s_axil_araddr),
        .s_axil_arprot     (s_axil_arprot),
        .s_axil_arvalid    (s_axil_arvalid),
        .s_axil_arready    (s_axil_arready),
        .s_axil_rdata      (s_axil_rdata),
        .s_axil_rresp      (s_axil_rresp),
        .s_axil_rvalid     (s_axil_rvalid),
        .s_axil_rready     (s_axil_rready),
        
        // Waveform Stream
        .s_axis_waveform_tdata  (s_axis_waveform_tdata),
        .s_axis_waveform_tvalid (s_axis_waveform_tvalid),
        .s_axis_waveform_tready (s_axis_waveform_tready),
        .s_axis_waveform_tlast  (s_axis_waveform_tlast),
        
        // DAC Output
        .m_axis_dac_tdata  (m_axis_dac_tdata),
        .m_axis_dac_tvalid (m_axis_dac_tvalid),
        .m_axis_dac_tready (m_axis_dac_tready),
        
        // ADC Feedback
        .s_axis_adc_tdata  (s_axis_adc_tdata),
        .s_axis_adc_tvalid (s_axis_adc_tvalid),
        .s_axis_adc_tready (s_axis_adc_tready),
        
        // Debug
        .waveform_active   (waveform_active),
        .pi_saturated      (pi_saturated)
    );

endmodule
