# PI Waveform Controller - Register Map & Usage Guide

## Overview

This module implements a PI (Proportional-Integral) controlled arbitrary waveform generator for the RFSoC 4x2 platform. It loads waveforms at runtime via AXI-Stream, outputs them through the DAC, and applies closed-loop PI correction based on ADC feedback.

## Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         pi_waveform_controller                              │
│                                                                             │
│  ┌─────────────┐     ┌─────────────┐     ┌─────────────┐                   │
│  │  AXI-Lite   │     │   Control   │     │    CDC      │                   │
│  │  Registers  │────▶│   Signals   │────▶│  (2-flop)   │                   │
│  └─────────────┘     └─────────────┘     └──────┬──────┘                   │
│                                                  │                          │
│  ┌─────────────┐     ┌─────────────┐            │      ┌─────────────┐     │
│  │ AXI-Stream  │────▶│  Waveform   │────────────┴─────▶│  Playback   │     │
│  │  (64-bit)   │     │    BRAM     │                   │   Engine    │     │
│  └─────────────┘     │  (16K x 16) │◀──────────────────│             │     │
│                      └─────────────┘                   └──────┬──────┘     │
│                                                               │            │
│  ┌─────────────┐     ┌─────────────┐     ┌─────────────┐     │            │
│  │    ADC      │────▶│   Error     │────▶│     PI      │─────┘            │
│  │  Feedback   │     │   Calc      │     │ Controller  │                   │
│  └─────────────┘     └─────────────┘     └─────────────┘                   │
│                                                  │                          │
│                                                  ▼                          │
│                                          ┌─────────────┐                   │
│                                          │  Corrected  │───▶ To DAC        │
│                                          │   Output    │                   │
│                                          └─────────────┘                   │
└─────────────────────────────────────────────────────────────────────────────┘
```

## Register Map

| Address | Name          | R/W | Description                                    |
|---------|---------------|-----|------------------------------------------------|
| 0x00    | CONTROL       | R/W | Control register                               |
| 0x04    | STATUS        | R   | Status register                                |
| 0x08    | KP            | R/W | Proportional gain (Q16.16 fixed-point)         |
| 0x0C    | KI            | R/W | Integral gain (Q16.16 fixed-point)             |
| 0x10    | SETPOINT      | R/W | Target amplitude setpoint (signed 16-bit)      |
| 0x14    | ERROR_ACC     | R   | Current integral accumulator value             |
| 0x18    | CURRENT_ERR   | R   | Current cycle error                            |
| 0x1C    | CORRECTION    | R   | Current PI correction being applied            |
| 0x20    | BUFFER_LEN    | R   | Number of samples loaded in buffer             |
| 0x24    | CYCLE_COUNT   | R   | Number of waveform cycles completed            |
| 0x28    | INTEG_LIMIT   | R/W | Integrator anti-windup limit (Q16.16)          |
| 0x2C    | OUT_LIMIT     | R/W | Output saturation limit (16-bit)               |

### CONTROL Register (0x00)

| Bit | Name       | Default | Description                              |
|-----|------------|---------|------------------------------------------|
| 0   | ENABLE     | 0       | Master enable (1=output active)          |
| 1   | PI_ENABLE  | 0       | PI correction enable (1=PI active)       |
| 2   | LOAD_DONE  | 0       | Set after waveform loading complete      |
| 3   | MODE       | 0       | 0=cycle-averaged, 1=sample-by-sample     |
| 31:4| Reserved   | 0       | Reserved for future use                  |

### STATUS Register (0x04)

| Bit   | Name      | Description                              |
|-------|-----------|------------------------------------------|
| 0     | RUNNING   | Waveform playback active                 |
| 1     | SATURATED | PI output is saturated                   |
| 15:8  | STATE     | Internal state machine state             |
| 31:16 | Reserved  | Reserved                                 |

## Q16.16 Fixed-Point Format

The PI coefficients use Q16.16 fixed-point format:
- Bits [31:16]: Integer part (signed)
- Bits [15:0]: Fractional part

Examples:
- `1.0` = `0x0001_0000`
- `0.5` = `0x0000_8000`
- `0.25` = `0x0000_4000`
- `0.0625` = `0x0000_1000`
- `2.5` = `0x0002_8000`
- `-1.0` = `0xFFFF_0000`

## Usage from PYNQ/Python

```python
from pynq import Overlay, MMIO
import numpy as np

# Load your bitstream
ol = Overlay('your_design.bit')

# Get MMIO handle to the PI controller (adjust base address)
PI_BASE = 0x4000_0000  # Example - check your address map
pi = MMIO(PI_BASE, 0x100)

# Register offsets
CONTROL      = 0x00
STATUS       = 0x04
KP           = 0x08
KI           = 0x0C
SETPOINT     = 0x10
ERROR_ACC    = 0x14
CURRENT_ERR  = 0x18
CORRECTION   = 0x1C
BUFFER_LEN   = 0x20
CYCLE_COUNT  = 0x24
INTEG_LIMIT  = 0x28
OUT_LIMIT    = 0x2C

# Helper: Convert float to Q16.16
def float_to_q16(f):
    return int(f * (1 << 16)) & 0xFFFFFFFF

# Helper: Convert Q16.16 to float
def q16_to_float(q):
    if q & 0x80000000:  # Negative
        q = q - 0x100000000
    return q / (1 << 16)

# ============================================================
# 1. Load Waveform via DMA
# ============================================================

# Load waveform from binary file
with open('waveform_output.bin', 'rb') as f:
    f.read(32)  # Skip header
    waveform = np.frombuffer(f.read(), dtype=np.float32)

# Convert to int16 for DAC
DAC_MAX = 2**15 - 1
waveform_i16 = (waveform * DAC_MAX).astype(np.int16)

# Use DMA to send waveform (example with PYNQ DMA)
# dma = ol.axi_dma_0
# dma.sendchannel.transfer(waveform_i16)
# dma.sendchannel.wait()

# ============================================================
# 2. Configure PI Controller
# ============================================================

# Set PI gains (start conservative)
pi.write(KP, float_to_q16(0.1))    # Kp = 0.1
pi.write(KI, float_to_q16(0.01))   # Ki = 0.01

# Set setpoint (target amplitude)
pi.write(SETPOINT, 0x6000)  # ~75% of max

# Set limits
pi.write(INTEG_LIMIT, float_to_q16(1000.0))  # Anti-windup
pi.write(OUT_LIMIT, 0x7FFF)                   # Max DAC value

# ============================================================
# 3. Start Waveform Output
# ============================================================

# Signal that waveform is loaded
pi.write(CONTROL, 0x04)  # LOAD_DONE = 1

# Enable output (without PI first)
pi.write(CONTROL, 0x05)  # ENABLE + LOAD_DONE

# Enable PI correction
pi.write(CONTROL, 0x07)  # ENABLE + PI_ENABLE + LOAD_DONE

# ============================================================
# 4. Monitor Status
# ============================================================

def read_status():
    status = pi.read(STATUS)
    running = bool(status & 0x01)
    saturated = bool(status & 0x02)
    
    error_acc = pi.read(ERROR_ACC)
    current_err = pi.read(CURRENT_ERR)
    correction = pi.read(CORRECTION)
    cycles = pi.read(CYCLE_COUNT)
    
    print(f"Running: {running}, Saturated: {saturated}")
    print(f"Error Acc: {q16_to_float(error_acc):.4f}")
    print(f"Current Err: {q16_to_float(current_err):.4f}")
    print(f"Correction: {correction}")
    print(f"Cycles: {cycles}")

# ============================================================
# 5. Tune PI Gains
# ============================================================

# Start with Kp only, Ki = 0
pi.write(KI, 0)
pi.write(KP, float_to_q16(0.1))

# Gradually increase Kp until you see response
# Watch for oscillation (overshoot/undershoot)

# Add Ki slowly to eliminate steady-state error
pi.write(KI, float_to_q16(0.001))

# If system oscillates, reduce Kp
# If response is too slow, increase Kp
# If steady-state error persists, increase Ki
```

## Vivado Integration Steps

1. **Add source files:**
   - `pi_waveform_controller.sv`
   - `pi_waveform_controller_wrapper.sv`

2. **Create block design** with:
   - Zynq UltraScale+ MPSoC
   - RF Data Converter (configure for your DAC/ADC)
   - AXI DMA (for waveform loading)
   - AXI Interconnect

3. **Connect interfaces:**
   ```
   PS AXI Master → AXI Interconnect → s_axil (PI Controller)
   PS AXI Master → AXI Interconnect → AXI DMA
   
   AXI DMA M_AXIS → s_axis_waveform (PI Controller)
   
   m_axis_dac → RF Data Converter DAC
   RF Data Converter ADC → s_axis_adc
   ```

4. **Clock connections:**
   - `s_axi_aclk`: Connect to PS clock (pl_clk0, typically 100 MHz)
   - `sample_clk`: Connect to RF Data Converter fabric clock

5. **Generate bitstream** and export hardware

## Timing Considerations

- **AXI Clock Domain** (s_axi_aclk): 100-250 MHz typical
- **Sample Clock Domain** (sample_clk): 256-512 MHz typical for RFSoC
- The module handles CDC internally with 2-flop synchronizers
- PI coefficients should only be changed when the system is stable

## Tuning Guidelines

### Starting Values (Conservative)
- Kp = 0.1 (0x0000_1999)
- Ki = 0.01 (0x0000_028F)

### Tuning Process
1. Set Ki = 0
2. Increase Kp until system responds but doesn't oscillate
3. Add small Ki to eliminate steady-state error
4. If oscillation occurs, reduce Kp by 50%
5. Repeat until desired response achieved

### Signs of Issues
- **Oscillation**: Kp too high
- **Slow response**: Kp too low
- **Steady-state error**: Ki too low
- **Windup (slow recovery)**: INTEG_LIMIT too high or Ki too high
