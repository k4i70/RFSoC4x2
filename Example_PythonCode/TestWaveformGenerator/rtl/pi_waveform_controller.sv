`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: pi_waveform_controller
// 
// Description:
//   Top-level module for PI-controlled waveform generation on RFSoC 4x2.
//   - Loads arbitrary waveform via AXI4 interface at runtime
//   - Applies PI correction based on ADC feedback
//   - Outputs corrected waveform to DAC
//   - AXI-Lite registers for Kp, Ki, and status
//
// Target: Xilinx Zynq UltraScale+ RFSoC (ZU48DR) on RFSoC 4x2 board
// 
// Parameters:
//   BUFFER_DEPTH     - Number of samples in waveform buffer (default 16384)
//   SAMPLE_WIDTH     - Bit width of DAC/ADC samples (default 16)
//   COEFF_WIDTH      - Bit width for PI coefficients (default 32)
//   COEFF_FRAC_BITS  - Fractional bits in coefficients (default 16, Q16.16)
//
// Clock Domains:
//   s_axi_aclk       - AXI interface clock (typically 100-250 MHz)
//   sample_clk       - Sample clock for DAC/ADC (typically 256-512 MHz fabric)
//
// Author: Generated for RFSoC 4x2 Development
// Date: February 2026
//////////////////////////////////////////////////////////////////////////////////

module pi_waveform_controller #(
    // Buffer Configuration
    parameter integer BUFFER_DEPTH      = 16384,
    parameter integer BUFFER_ADDR_WIDTH = $clog2(BUFFER_DEPTH),
    
    // Sample Configuration  
    parameter integer SAMPLE_WIDTH      = 16,       // 16-bit signed samples
    
    // PI Coefficient Configuration (Q16.16 fixed-point)
    parameter integer COEFF_WIDTH       = 32,
    parameter integer COEFF_FRAC_BITS   = 16,
    
    // AXI-Lite Configuration
    parameter integer AXI_ADDR_WIDTH    = 8,
    parameter integer AXI_DATA_WIDTH    = 32,
    
    // AXI4 (Full) Configuration for waveform loading
    parameter integer AXI_FULL_ADDR_WIDTH = 32,
    parameter integer AXI_FULL_DATA_WIDTH = 64,
    parameter integer AXI_FULL_ID_WIDTH   = 4
)(
    // =========================================================================
    // Clock and Reset
    // =========================================================================
    input  logic                            s_axi_aclk,
    input  logic                            s_axi_aresetn,
    input  logic                            sample_clk,
    input  logic                            sample_rstn,
    
    // =========================================================================
    // AXI-Lite Slave Interface (Control Registers)
    // =========================================================================
    // Write Address Channel
    input  logic [AXI_ADDR_WIDTH-1:0]       s_axil_awaddr,
    input  logic [2:0]                      s_axil_awprot,
    input  logic                            s_axil_awvalid,
    output logic                            s_axil_awready,
    
    // Write Data Channel
    input  logic [AXI_DATA_WIDTH-1:0]       s_axil_wdata,
    input  logic [(AXI_DATA_WIDTH/8)-1:0]   s_axil_wstrb,
    input  logic                            s_axil_wvalid,
    output logic                            s_axil_wready,
    
    // Write Response Channel
    output logic [1:0]                      s_axil_bresp,
    output logic                            s_axil_bvalid,
    input  logic                            s_axil_bready,
    
    // Read Address Channel
    input  logic [AXI_ADDR_WIDTH-1:0]       s_axil_araddr,
    input  logic [2:0]                      s_axil_arprot,
    input  logic                            s_axil_arvalid,
    output logic                            s_axil_arready,
    
    // Read Data Channel
    output logic [AXI_DATA_WIDTH-1:0]       s_axil_rdata,
    output logic [1:0]                      s_axil_rresp,
    output logic                            s_axil_rvalid,
    input  logic                            s_axil_rready,
    
    // =========================================================================
    // AXI4-Stream Slave Interface (Waveform Data Input)
    // =========================================================================
    input  logic [AXI_FULL_DATA_WIDTH-1:0]  s_axis_waveform_tdata,
    input  logic                            s_axis_waveform_tvalid,
    output logic                            s_axis_waveform_tready,
    input  logic                            s_axis_waveform_tlast,
    
    // =========================================================================
    // AXI4-Stream Master Interface (DAC Output)
    // =========================================================================
    output logic [SAMPLE_WIDTH-1:0]         m_axis_dac_tdata,
    output logic                            m_axis_dac_tvalid,
    input  logic                            m_axis_dac_tready,
    
    // =========================================================================
    // AXI4-Stream Slave Interface (ADC Feedback Input)
    // =========================================================================
    input  logic [SAMPLE_WIDTH-1:0]         s_axis_adc_tdata,
    input  logic                            s_axis_adc_tvalid,
    output logic                            s_axis_adc_tready,
    
    // =========================================================================
    // Debug/Status Outputs
    // =========================================================================
    output logic                            waveform_active,
    output logic                            pi_saturated
);

    // =========================================================================
    // Local Parameters
    // =========================================================================
    
    // Register Map (byte addresses)
    localparam ADDR_CONTROL      = 8'h00;  // [0]=enable, [1]=pi_enable, [2]=load_done, [3]=mode
    localparam ADDR_STATUS       = 8'h04;  // [0]=running, [1]=saturated, [15:8]=state
    localparam ADDR_KP           = 8'h08;  // Proportional gain (Q16.16)
    localparam ADDR_KI           = 8'h0C;  // Integral gain (Q16.16)
    localparam ADDR_SETPOINT     = 8'h10;  // Target amplitude setpoint
    localparam ADDR_ERROR_ACC    = 8'h14;  // Current error accumulator (read-only)
    localparam ADDR_CURRENT_ERR  = 8'h18;  // Current cycle error (read-only)
    localparam ADDR_CORRECTION   = 8'h1C;  // Current PI correction value (read-only)
    localparam ADDR_BUFFER_LEN   = 8'h20;  // Actual buffer length loaded
    localparam ADDR_CYCLE_COUNT  = 8'h24;  // Number of waveform cycles completed
    localparam ADDR_INTEG_LIMIT  = 8'h28;  // Integrator anti-windup limit
    localparam ADDR_OUT_LIMIT    = 8'h2C;  // Output saturation limit
    
    // =========================================================================
    // Register Signals
    // =========================================================================
    
    // Control register bits
    logic        reg_enable;           // Master enable
    logic        reg_pi_enable;        // PI correction enable
    logic        reg_load_done;        // Waveform loading complete
    logic        reg_mode;             // 0=cycle-averaged, 1=sample-by-sample
    
    // PI coefficients (Q16.16 fixed-point)
    logic [COEFF_WIDTH-1:0] reg_kp;
    logic [COEFF_WIDTH-1:0] reg_ki;
    
    // Setpoint and limits
    logic signed [SAMPLE_WIDTH-1:0]   reg_setpoint;
    logic signed [COEFF_WIDTH-1:0]    reg_integ_limit;
    logic signed [SAMPLE_WIDTH-1:0]   reg_out_limit;
    
    // Status registers (directly visible to PI core outputs)
    logic signed [COEFF_WIDTH-1:0]    status_error_acc;
    logic signed [COEFF_WIDTH-1:0]    status_current_err;
    logic signed [SAMPLE_WIDTH-1:0]   status_correction;
    logic [BUFFER_ADDR_WIDTH-1:0]     status_buffer_len;
    logic [31:0]                      status_cycle_count;
    
    // =========================================================================
    // Waveform BRAM
    // =========================================================================
    
    // Dual-port BRAM: Port A for loading, Port B for playback
    logic [SAMPLE_WIDTH-1:0] waveform_bram [0:BUFFER_DEPTH-1];
    
    // Port A (Write) - AXI clock domain
    logic [BUFFER_ADDR_WIDTH-1:0] bram_wr_addr;
    logic [SAMPLE_WIDTH-1:0]      bram_wr_data;
    logic                         bram_wr_en;
    
    // Port B (Read) - Sample clock domain
    logic [BUFFER_ADDR_WIDTH-1:0] bram_rd_addr;
    logic [SAMPLE_WIDTH-1:0]      bram_rd_data;
    
    // BRAM Write (Port A)
    always_ff @(posedge s_axi_aclk) begin
        if (bram_wr_en) begin
            waveform_bram[bram_wr_addr] <= bram_wr_data;
        end
    end
    
    // BRAM Read (Port B)
    always_ff @(posedge sample_clk) begin
        bram_rd_data <= waveform_bram[bram_rd_addr];
    end
    
    // =========================================================================
    // AXI-Lite Register Interface
    // =========================================================================
    
    // Write state machine
    typedef enum logic [1:0] {
        WR_IDLE,
        WR_DATA,
        WR_RESP
    } wr_state_t;
    
    wr_state_t wr_state;
    logic [AXI_ADDR_WIDTH-1:0] wr_addr_reg;
    
    always_ff @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            wr_state        <= WR_IDLE;
            s_axil_awready  <= 1'b0;
            s_axil_wready   <= 1'b0;
            s_axil_bvalid   <= 1'b0;
            s_axil_bresp    <= 2'b00;
            wr_addr_reg     <= '0;
            
            // Default register values
            reg_enable      <= 1'b0;
            reg_pi_enable   <= 1'b0;
            reg_load_done   <= 1'b0;
            reg_mode        <= 1'b0;  // Cycle-averaged by default
            reg_kp          <= 32'h0001_0000;  // 1.0 in Q16.16
            reg_ki          <= 32'h0000_1000;  // 0.0625 in Q16.16
            reg_setpoint    <= '0;
            reg_integ_limit <= 32'h7FFF_FFFF;  // Max positive
            reg_out_limit   <= 16'h7FFF;       // Max DAC value
            
        end else begin
            case (wr_state)
                WR_IDLE: begin
                    s_axil_awready <= 1'b1;
                    s_axil_wready  <= 1'b0;
                    s_axil_bvalid  <= 1'b0;
                    if (s_axil_awvalid && s_axil_awready) begin
                        wr_addr_reg    <= s_axil_awaddr;
                        s_axil_awready <= 1'b0;
                        s_axil_wready  <= 1'b1;
                        wr_state       <= WR_DATA;
                    end
                end
                
                WR_DATA: begin
                    if (s_axil_wvalid && s_axil_wready) begin
                        s_axil_wready <= 1'b0;
                        s_axil_bvalid <= 1'b1;
                        s_axil_bresp  <= 2'b00;  // OKAY
                        wr_state      <= WR_RESP;
                        
                        // Write to registers
                        case (wr_addr_reg)
                            ADDR_CONTROL: begin
                                reg_enable    <= s_axil_wdata[0];
                                reg_pi_enable <= s_axil_wdata[1];
                                reg_load_done <= s_axil_wdata[2];
                                reg_mode      <= s_axil_wdata[3];
                            end
                            ADDR_KP:          reg_kp          <= s_axil_wdata;
                            ADDR_KI:          reg_ki          <= s_axil_wdata;
                            ADDR_SETPOINT:    reg_setpoint    <= s_axil_wdata[SAMPLE_WIDTH-1:0];
                            ADDR_INTEG_LIMIT: reg_integ_limit <= s_axil_wdata;
                            ADDR_OUT_LIMIT:   reg_out_limit   <= s_axil_wdata[SAMPLE_WIDTH-1:0];
                            // Other addresses are read-only or reserved
                        endcase
                    end
                end
                
                WR_RESP: begin
                    if (s_axil_bready && s_axil_bvalid) begin
                        s_axil_bvalid <= 1'b0;
                        wr_state      <= WR_IDLE;
                    end
                end
                
                default: wr_state <= WR_IDLE;
            endcase
        end
    end
    
    // Read state machine
    typedef enum logic [1:0] {
        RD_IDLE,
        RD_DATA
    } rd_state_t;
    
    rd_state_t rd_state;
    
    always_ff @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            rd_state       <= RD_IDLE;
            s_axil_arready <= 1'b0;
            s_axil_rvalid  <= 1'b0;
            s_axil_rdata   <= '0;
            s_axil_rresp   <= 2'b00;
        end else begin
            case (rd_state)
                RD_IDLE: begin
                    s_axil_arready <= 1'b1;
                    s_axil_rvalid  <= 1'b0;
                    if (s_axil_arvalid && s_axil_arready) begin
                        s_axil_arready <= 1'b0;
                        s_axil_rvalid  <= 1'b1;
                        s_axil_rresp   <= 2'b00;
                        rd_state       <= RD_DATA;
                        
                        // Read from registers
                        case (s_axil_araddr)
                            ADDR_CONTROL:    s_axil_rdata <= {28'b0, reg_mode, reg_load_done, reg_pi_enable, reg_enable};
                            ADDR_STATUS:     s_axil_rdata <= {16'b0, 6'b0, pi_saturated, waveform_active};
                            ADDR_KP:         s_axil_rdata <= reg_kp;
                            ADDR_KI:         s_axil_rdata <= reg_ki;
                            ADDR_SETPOINT:   s_axil_rdata <= {{(32-SAMPLE_WIDTH){reg_setpoint[SAMPLE_WIDTH-1]}}, reg_setpoint};
                            ADDR_ERROR_ACC:  s_axil_rdata <= status_error_acc;
                            ADDR_CURRENT_ERR:s_axil_rdata <= status_current_err;
                            ADDR_CORRECTION: s_axil_rdata <= {{(32-SAMPLE_WIDTH){status_correction[SAMPLE_WIDTH-1]}}, status_correction};
                            ADDR_BUFFER_LEN: s_axil_rdata <= {{(32-BUFFER_ADDR_WIDTH){1'b0}}, status_buffer_len};
                            ADDR_CYCLE_COUNT:s_axil_rdata <= status_cycle_count;
                            ADDR_INTEG_LIMIT:s_axil_rdata <= reg_integ_limit;
                            ADDR_OUT_LIMIT:  s_axil_rdata <= {{(32-SAMPLE_WIDTH){1'b0}}, reg_out_limit};
                            default:         s_axil_rdata <= 32'hDEAD_BEEF;
                        endcase
                    end
                end
                
                RD_DATA: begin
                    if (s_axil_rready && s_axil_rvalid) begin
                        s_axil_rvalid <= 1'b0;
                        rd_state      <= RD_IDLE;
                    end
                end
                
                default: rd_state <= RD_IDLE;
            endcase
        end
    end
    
    // =========================================================================
    // Waveform Loading (AXI-Stream to BRAM)
    // =========================================================================
    
    // State machine for loading waveform data
    typedef enum logic [1:0] {
        LOAD_IDLE,
        LOAD_ACTIVE,
        LOAD_DONE
    } load_state_t;
    
    load_state_t load_state;
    logic [BUFFER_ADDR_WIDTH-1:0] load_addr;
    
    // Handle 64-bit AXI data containing multiple 16-bit samples
    localparam SAMPLES_PER_BEAT = AXI_FULL_DATA_WIDTH / SAMPLE_WIDTH;  // 4 samples per 64-bit word
    logic [$clog2(SAMPLES_PER_BEAT)-1:0] sample_idx;
    
    always_ff @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            load_state            <= LOAD_IDLE;
            load_addr             <= '0;
            sample_idx            <= '0;
            bram_wr_en            <= 1'b0;
            bram_wr_addr          <= '0;
            bram_wr_data          <= '0;
            s_axis_waveform_tready <= 1'b0;
            status_buffer_len     <= '0;
        end else begin
            bram_wr_en <= 1'b0;  // Default
            
            case (load_state)
                LOAD_IDLE: begin
                    s_axis_waveform_tready <= 1'b1;
                    load_addr              <= '0;
                    sample_idx             <= '0;
                    if (!reg_load_done && s_axis_waveform_tvalid) begin
                        load_state <= LOAD_ACTIVE;
                    end
                end
                
                LOAD_ACTIVE: begin
                    s_axis_waveform_tready <= 1'b1;
                    
                    if (s_axis_waveform_tvalid && s_axis_waveform_tready) begin
                        // Extract sample from the correct position in 64-bit word
                        bram_wr_data <= s_axis_waveform_tdata[sample_idx*SAMPLE_WIDTH +: SAMPLE_WIDTH];
                        bram_wr_addr <= load_addr;
                        bram_wr_en   <= 1'b1;
                        
                        if (sample_idx == SAMPLES_PER_BEAT - 1) begin
                            sample_idx <= '0;
                            if (s_axis_waveform_tlast || load_addr == BUFFER_DEPTH - 1) begin
                                status_buffer_len      <= load_addr + 1;
                                s_axis_waveform_tready <= 1'b0;
                                load_state             <= LOAD_DONE;
                            end
                        end else begin
                            sample_idx <= sample_idx + 1;
                            load_addr  <= load_addr + 1;
                        end
                    end
                end
                
                LOAD_DONE: begin
                    s_axis_waveform_tready <= 1'b0;
                    // Stay here until reset or reg_load_done is cleared then set again
                    if (!reg_load_done) begin
                        load_state <= LOAD_IDLE;
                    end
                end
                
                default: load_state <= LOAD_IDLE;
            endcase
        end
    end
    
    // =========================================================================
    // Clock Domain Crossing for Control Signals
    // =========================================================================
    
    // Synchronize control signals from AXI clock to sample clock
    logic enable_sync, enable_sync_r;
    logic pi_enable_sync, pi_enable_sync_r;
    logic load_done_sync, load_done_sync_r;
    logic mode_sync, mode_sync_r;
    
    // 2-flop synchronizers
    always_ff @(posedge sample_clk or negedge sample_rstn) begin
        if (!sample_rstn) begin
            enable_sync     <= 1'b0;
            enable_sync_r   <= 1'b0;
            pi_enable_sync  <= 1'b0;
            pi_enable_sync_r<= 1'b0;
            load_done_sync  <= 1'b0;
            load_done_sync_r<= 1'b0;
            mode_sync       <= 1'b0;
            mode_sync_r     <= 1'b0;
        end else begin
            enable_sync     <= reg_enable;
            enable_sync_r   <= enable_sync;
            pi_enable_sync  <= reg_pi_enable;
            pi_enable_sync_r<= pi_enable_sync;
            load_done_sync  <= reg_load_done;
            load_done_sync_r<= load_done_sync;
            mode_sync       <= reg_mode;
            mode_sync_r     <= mode_sync;
        end
    end
    
    // Synchronize PI coefficients (these change slowly, so simple sync is fine)
    logic [COEFF_WIDTH-1:0] kp_sync, ki_sync;
    logic signed [SAMPLE_WIDTH-1:0] setpoint_sync;
    logic signed [COEFF_WIDTH-1:0] integ_limit_sync;
    logic signed [SAMPLE_WIDTH-1:0] out_limit_sync;
    
    always_ff @(posedge sample_clk) begin
        kp_sync          <= reg_kp;
        ki_sync          <= reg_ki;
        setpoint_sync    <= reg_setpoint;
        integ_limit_sync <= reg_integ_limit;
        out_limit_sync   <= reg_out_limit;
    end
    
    // =========================================================================
    // Waveform Playback Engine (Sample Clock Domain)
    // =========================================================================
    
    typedef enum logic [2:0] {
        PLAY_IDLE,
        PLAY_RUNNING,
        PLAY_WAIT_ADC,
        PLAY_CALC_ERROR,
        PLAY_UPDATE_PI
    } play_state_t;
    
    play_state_t play_state;
    
    logic [BUFFER_ADDR_WIDTH-1:0] play_addr;
    logic [BUFFER_ADDR_WIDTH-1:0] buffer_len_sync;
    logic [31:0]                  cycle_count;
    
    // Pipeline registers for timing
    logic signed [SAMPLE_WIDTH-1:0] waveform_sample;
    logic signed [SAMPLE_WIDTH-1:0] corrected_sample;
    logic                           sample_valid;
    
    // ADC capture for cycle-averaged mode
    logic signed [SAMPLE_WIDTH-1:0] adc_sample;
    logic                           adc_valid;
    logic signed [47:0]             adc_accumulator;  // For averaging
    logic [BUFFER_ADDR_WIDTH-1:0]   adc_sample_count;
    
    // PI controller state
    logic signed [COEFF_WIDTH-1:0]  error_accumulator;
    logic signed [COEFF_WIDTH-1:0]  current_error;
    logic signed [SAMPLE_WIDTH-1:0] pi_correction;
    logic                           saturated_flag;
    
    // Fixed-point multiplication helper (Q16.16 * Q16.0 = Q32.16, take middle bits)
    function automatic logic signed [COEFF_WIDTH-1:0] fp_mult;
        input logic signed [COEFF_WIDTH-1:0] a;  // Q16.16 coefficient
        input logic signed [COEFF_WIDTH-1:0] b;  // Q16.16 value (or error)
        logic signed [2*COEFF_WIDTH-1:0] product;
        begin
            product = a * b;
            fp_mult = product[COEFF_WIDTH+COEFF_FRAC_BITS-1 -: COEFF_WIDTH];  // Extract Q16.16 result
        end
    endfunction
    
    // Saturation helper
    function automatic logic signed [SAMPLE_WIDTH-1:0] saturate;
        input logic signed [COEFF_WIDTH-1:0] value;
        input logic signed [SAMPLE_WIDTH-1:0] limit;
        begin
            if (value > $signed({{(COEFF_WIDTH-SAMPLE_WIDTH){1'b0}}, limit}))
                saturate = limit;
            else if (value < $signed({{(COEFF_WIDTH-SAMPLE_WIDTH){1'b1}}, ~limit + 1'b1}))
                saturate = -limit;
            else
                saturate = value[SAMPLE_WIDTH-1:0];
        end
    endfunction
    
    // Sync buffer length
    always_ff @(posedge sample_clk) begin
        buffer_len_sync <= status_buffer_len;
    end
    
    // Main playback and PI state machine
    always_ff @(posedge sample_clk or negedge sample_rstn) begin
        if (!sample_rstn) begin
            play_state        <= PLAY_IDLE;
            play_addr         <= '0;
            cycle_count       <= '0;
            waveform_sample   <= '0;
            corrected_sample  <= '0;
            sample_valid      <= 1'b0;
            adc_accumulator   <= '0;
            adc_sample_count  <= '0;
            error_accumulator <= '0;
            current_error     <= '0;
            pi_correction     <= '0;
            saturated_flag    <= 1'b0;
            
        end else begin
            sample_valid <= 1'b0;  // Default
            
            case (play_state)
                PLAY_IDLE: begin
                    play_addr         <= '0;
                    adc_accumulator   <= '0;
                    adc_sample_count  <= '0;
                    
                    if (enable_sync_r && load_done_sync_r && buffer_len_sync > 0) begin
                        play_state <= PLAY_RUNNING;
                    end
                end
                
                PLAY_RUNNING: begin
                    if (!enable_sync_r) begin
                        play_state <= PLAY_IDLE;
                    end else if (m_axis_dac_tready) begin
                        // Read waveform sample (1 cycle latency from BRAM)
                        bram_rd_addr <= play_addr;
                        
                        // Apply PI correction to previous sample
                        waveform_sample <= bram_rd_data;
                        
                        if (pi_enable_sync_r) begin
                            // Add correction with saturation
                            logic signed [COEFF_WIDTH-1:0] sum;
                            sum = $signed({{(COEFF_WIDTH-SAMPLE_WIDTH){bram_rd_data[SAMPLE_WIDTH-1]}}, bram_rd_data}) 
                                + $signed({{(COEFF_WIDTH-SAMPLE_WIDTH){pi_correction[SAMPLE_WIDTH-1]}}, pi_correction});
                            corrected_sample <= saturate(sum, out_limit_sync);
                            saturated_flag   <= (sum > $signed({{(COEFF_WIDTH-SAMPLE_WIDTH){1'b0}}, out_limit_sync})) ||
                                               (sum < $signed({{(COEFF_WIDTH-SAMPLE_WIDTH){1'b1}}, ~out_limit_sync + 1'b1}));
                        end else begin
                            corrected_sample <= bram_rd_data;
                            saturated_flag   <= 1'b0;
                        end
                        
                        sample_valid <= 1'b1;
                        
                        // Accumulate ADC for cycle-averaged mode
                        if (s_axis_adc_tvalid && !mode_sync_r) begin
                            adc_accumulator  <= adc_accumulator + $signed(s_axis_adc_tdata);
                            adc_sample_count <= adc_sample_count + 1;
                        end
                        
                        // Advance address
                        if (play_addr >= buffer_len_sync - 1) begin
                            play_addr <= '0;
                            cycle_count <= cycle_count + 1;
                            
                            // End of cycle - calculate PI update
                            if (!mode_sync_r && pi_enable_sync_r) begin
                                play_state <= PLAY_CALC_ERROR;
                            end
                        end else begin
                            play_addr <= play_addr + 1;
                        end
                        
                        // Sample-by-sample PI mode
                        if (mode_sync_r && pi_enable_sync_r && s_axis_adc_tvalid) begin
                            // Real-time error calculation
                            current_error <= $signed({{(COEFF_WIDTH-SAMPLE_WIDTH){setpoint_sync[SAMPLE_WIDTH-1]}}, setpoint_sync})
                                           - $signed({{(COEFF_WIDTH-SAMPLE_WIDTH){s_axis_adc_tdata[SAMPLE_WIDTH-1]}}, s_axis_adc_tdata});
                            
                            // P term
                            logic signed [COEFF_WIDTH-1:0] p_term;
                            p_term = fp_mult(kp_sync, current_error);
                            
                            // I term with anti-windup
                            logic signed [COEFF_WIDTH-1:0] new_integral;
                            new_integral = error_accumulator + fp_mult(ki_sync, current_error);
                            
                            // Anti-windup clamp
                            if (new_integral > integ_limit_sync)
                                error_accumulator <= integ_limit_sync;
                            else if (new_integral < -integ_limit_sync)
                                error_accumulator <= -integ_limit_sync;
                            else
                                error_accumulator <= new_integral;
                            
                            // Combined PI output
                            pi_correction <= saturate(p_term + error_accumulator, out_limit_sync);
                        end
                    end
                end
                
                PLAY_CALC_ERROR: begin
                    // Cycle-averaged error calculation
                    if (adc_sample_count > 0) begin
                        // Average ADC value over the cycle
                        logic signed [COEFF_WIDTH-1:0] avg_adc;
                        avg_adc = adc_accumulator / $signed({{(48-BUFFER_ADDR_WIDTH){1'b0}}, adc_sample_count});
                        
                        // Error = setpoint - measured
                        current_error <= $signed({{(COEFF_WIDTH-SAMPLE_WIDTH){setpoint_sync[SAMPLE_WIDTH-1]}}, setpoint_sync})
                                       - avg_adc[COEFF_WIDTH-1:0];
                    end
                    
                    adc_accumulator  <= '0;
                    adc_sample_count <= '0;
                    play_state       <= PLAY_UPDATE_PI;
                end
                
                PLAY_UPDATE_PI: begin
                    // P term
                    logic signed [COEFF_WIDTH-1:0] p_term;
                    p_term = fp_mult(kp_sync, current_error);
                    
                    // I term with anti-windup
                    logic signed [COEFF_WIDTH-1:0] new_integral;
                    new_integral = error_accumulator + fp_mult(ki_sync, current_error);
                    
                    // Anti-windup clamp
                    if (new_integral > integ_limit_sync)
                        error_accumulator <= integ_limit_sync;
                    else if (new_integral < -integ_limit_sync)
                        error_accumulator <= -integ_limit_sync;
                    else
                        error_accumulator <= new_integral;
                    
                    // Combined PI output (saturated to sample width)
                    pi_correction <= saturate(p_term + error_accumulator, out_limit_sync);
                    
                    play_state <= PLAY_RUNNING;
                end
                
                default: play_state <= PLAY_IDLE;
            endcase
        end
    end
    
    // =========================================================================
    // Output Assignments
    // =========================================================================
    
    // DAC output
    assign m_axis_dac_tdata  = corrected_sample;
    assign m_axis_dac_tvalid = sample_valid;
    
    // ADC input always ready (we sample when available)
    assign s_axis_adc_tready = 1'b1;
    
    // Status outputs
    assign waveform_active = (play_state == PLAY_RUNNING);
    assign pi_saturated    = saturated_flag;
    
    // Status registers (cross back to AXI clock domain for reading)
    // Note: These are slowly-changing values, simple assignment is acceptable
    // For production, add proper CDC
    always_ff @(posedge s_axi_aclk) begin
        status_error_acc   <= error_accumulator;
        status_current_err <= current_error;
        status_correction  <= pi_correction;
        status_cycle_count <= cycle_count;
    end

endmodule
