import numpy as np
import scipy.signal as sp_sig
import struct
import os
import json

# ============================================================
# WAVEFORM GENERATOR CLASS
# ============================================================

class WaveformGenerator:
    """
    Arbitrary Waveform Generator with support for multiple waveform types
    and combination of multiple frequency components.
    
    Output is normalized floating-point (-1.0 to +1.0) for maximum flexibility.
    """
    
    WAVEFORM_TYPES = ['sine', 'square', 'sawtooth', 'triangle', 'chirp']
    
    def __init__(self, sample_rate=4.0e9, num_samples=16384):
        """
        Initialize the waveform generator.
        
        Args:
            sample_rate: Sample rate in Hz (default 4 GS/s)
            num_samples: Number of samples in the waveform buffer
        """
        self.sample_rate = sample_rate
        self.num_samples = num_samples
        self.components = []  # List of waveform components to combine
        self._time_axis = None
        self._update_time_axis()
    
    def _update_time_axis(self):
        """Recalculate the time axis when sample rate or num_samples changes."""
        self._time_axis = np.arange(self.num_samples) / self.sample_rate
    
    @property
    def time_axis(self):
        """Time axis in seconds."""
        return self._time_axis
    
    @property
    def duration(self):
        """Total waveform duration in seconds."""
        return self.num_samples / self.sample_rate
    
    def set_sample_rate(self, sample_rate):
        """Update the sample rate and recalculate time axis."""
        self.sample_rate = sample_rate
        self._update_time_axis()
    
    def set_num_samples(self, num_samples):
        """Update the number of samples and recalculate time axis."""
        self.num_samples = int(num_samples)
        self._update_time_axis()
    
    def clear_components(self):
        """Remove all waveform components."""
        self.components = []
    
    def add_component(self, waveform_type, frequency, amplitude=1.0, phase=0.0,
                      duty_cycle=0.5, rise_time=0.0, fall_time=0.0,
                      chirp_end_freq=None, chirp_method='linear'):
        """
        Add a waveform component to the generator.
        
        Args:
            waveform_type: 'sine', 'square', 'sawtooth', 'triangle', or 'chirp'
            frequency: Frequency in Hz (or start frequency for chirp)
            amplitude: Relative amplitude (0.0 to 1.0)
            phase: Phase offset in degrees
            duty_cycle: Duty cycle for square wave (0.0 to 1.0)
            rise_time: Rise time in seconds (for square wave edge smoothing)
            fall_time: Fall time in seconds (for square wave edge smoothing)
            chirp_end_freq: End frequency for chirp (Hz)
            chirp_method: Chirp method ('linear', 'quadratic', 'logarithmic', 'hyperbolic')
        """
        if waveform_type not in self.WAVEFORM_TYPES:
            raise ValueError(f"Unknown waveform type: {waveform_type}. "
                           f"Supported types: {self.WAVEFORM_TYPES}")
        
        component = {
            'type': waveform_type,
            'frequency': frequency,
            'amplitude': amplitude,
            'phase': phase,
            'duty_cycle': duty_cycle,
            'rise_time': rise_time,
            'fall_time': fall_time,
            'chirp_end_freq': chirp_end_freq if chirp_end_freq else frequency * 2,
            'chirp_method': chirp_method
        }
        self.components.append(component)
        return len(self.components) - 1  # Return index of added component
    
    def remove_component(self, index):
        """Remove a waveform component by index."""
        if 0 <= index < len(self.components):
            self.components.pop(index)
    
    def _generate_single_waveform(self, component):
        """
        Generate a single waveform component.
        
        Returns:
            numpy array of the waveform (normalized -1 to +1 before amplitude scaling)
        """
        t = self._time_axis
        phase_rad = np.deg2rad(component['phase'])
        freq = component['frequency']
        amp = component['amplitude']
        
        wtype = component['type']
        
        if wtype == 'sine':
            wave = np.sin(2 * np.pi * freq * t + phase_rad)
        
        elif wtype == 'square':
            duty = component['duty_cycle']
            wave = sp_sig.square(2 * np.pi * freq * t + phase_rad, duty=duty)
            
            # Apply rise/fall time smoothing if specified
            rise_time = component['rise_time']
            fall_time = component['fall_time']
            
            if rise_time > 0 or fall_time > 0:
                wave = self._apply_edge_smoothing(wave, rise_time, fall_time)
        
        elif wtype == 'sawtooth':
            wave = sp_sig.sawtooth(2 * np.pi * freq * t + phase_rad)
        
        elif wtype == 'triangle':
            # Triangle is sawtooth with width=0.5
            wave = sp_sig.sawtooth(2 * np.pi * freq * t + phase_rad, width=0.5)
        
        elif wtype == 'chirp':
            f0 = freq
            f1 = component['chirp_end_freq']
            method = component['chirp_method']
            wave = sp_sig.chirp(t, f0=f0, f1=f1, t1=self.duration,
                               phi=component['phase'], method=method)
        
        return wave * amp
    
    def _apply_edge_smoothing(self, wave, rise_time, fall_time):
        """
        Apply rise/fall time smoothing to a square wave using a simple
        linear interpolation approach.
        """
        if rise_time <= 0 and fall_time <= 0:
            return wave
        
        # Convert times to samples
        rise_samples = int(rise_time * self.sample_rate)
        fall_samples = int(fall_time * self.sample_rate)
        
        # Use a simple moving average filter for smoothing
        # The kernel size is the average of rise and fall times
        kernel_size = max(rise_samples, fall_samples, 1)
        if kernel_size > 1:
            kernel = np.ones(kernel_size) / kernel_size
            wave = np.convolve(wave, kernel, mode='same')
        
        return wave
    
    def generate(self, normalize=True):
        """
        Generate the combined waveform from all components.
        
        Args:
            normalize: If True, normalize final output to -1.0 to +1.0
        
        Returns:
            tuple: (time_axis, waveform) where waveform is float64 array
        """
        if not self.components:
            # Return zeros if no components
            return self._time_axis, np.zeros(self.num_samples, dtype=np.float64)
        
        # Sum all components
        combined = np.zeros(self.num_samples, dtype=np.float64)
        for comp in self.components:
            combined += self._generate_single_waveform(comp)
        
        # Normalize to -1.0 to +1.0
        if normalize:
            max_val = np.max(np.abs(combined))
            if max_val > 1e-10:
                combined = combined / max_val
        
        return self._time_axis, combined
    
    def adjust_frequency_to_fit_buffer(self, target_freq):
        """
        Calculate the nearest frequency that fits an integer number of cycles
        in the buffer (prevents clicking/discontinuities when looping).
        
        Args:
            target_freq: Desired frequency in Hz
        
        Returns:
            Adjusted frequency in Hz
        """
        num_cycles = np.round((target_freq * self.num_samples) / self.sample_rate)
        actual_freq = (num_cycles * self.sample_rate) / self.num_samples
        return actual_freq
    
    def get_info(self):
        """Return a dictionary with current generator settings."""
        return {
            'sample_rate': self.sample_rate,
            'num_samples': self.num_samples,
            'duration_s': self.duration,
            'duration_us': self.duration * 1e6,
            'num_components': len(self.components),
            'components': self.components.copy()
        }

# ============================================================
# FILE I/O FUNCTIONS
# ============================================================

def save_waveform_binary(filename, time_axis, waveform, sample_rate, metadata=None):
    """
    Save waveform to binary file with header for FPGA compatibility.
    
    File Format:
        Header (32 bytes):
            - Magic number: 4 bytes ('AWFG')
            - Version: 4 bytes (uint32, currently 1)
            - Sample rate: 8 bytes (float64, Hz)
            - Num samples: 4 bytes (uint32)
            - Data type: 4 bytes (1=float32, 2=float64)
            - Reserved: 8 bytes
        Data:
            - Waveform samples as float32 (for FPGA compatibility)
    
    Args:
        filename: Output file path
        time_axis: Time array (saved for reference but not strictly needed)
        waveform: Waveform amplitude array (float, normalized -1 to +1)
        sample_rate: Sample rate in Hz
        metadata: Optional dict with additional info (saved as separate .meta file)
    """
    # Ensure .bin extension
    if not filename.endswith('.bin'):
        filename += '.bin'
    
    num_samples = len(waveform)
    
    with open(filename, 'wb') as f:
        # Write header
        f.write(b'AWFG')  # Magic number (4 bytes)
        f.write(struct.pack('<I', 1))  # Version (4 bytes, little-endian uint32)
        f.write(struct.pack('<d', sample_rate))  # Sample rate (8 bytes, float64)
        f.write(struct.pack('<I', num_samples))  # Num samples (4 bytes, uint32)
        f.write(struct.pack('<I', 1))  # Data type: 1=float32 (4 bytes)
        f.write(b'\x00' * 8)  # Reserved (8 bytes)
        
        # Write waveform data as float32
        waveform_f32 = waveform.astype(np.float32)
        f.write(waveform_f32.tobytes())
    
    # Optionally save metadata as JSON
    if metadata:
        meta_filename = filename.replace('.bin', '.meta.json')
        with open(meta_filename, 'w') as f:
            json.dump(metadata, f, indent=2)
    
    print(f"Saved waveform to: {filename}")
    print(f"  - Samples: {num_samples}")
    print(f"  - Sample rate: {sample_rate/1e9:.3f} GS/s")
    print(f"  - Duration: {num_samples/sample_rate*1e6:.3f} µs")
    print(f"  - File size: {os.path.getsize(filename)} bytes")
    
    return filename


def load_waveform_binary(filename):
    """
    Load waveform from binary file.
    
    Returns:
        dict with keys: 'waveform', 'sample_rate', 'num_samples', 'time_axis'
    """
    with open(filename, 'rb') as f:
        # Read header
        magic = f.read(4)
        if magic != b'AWFG':
            raise ValueError(f"Invalid file format. Expected 'AWFG' magic number.")
        
        version = struct.unpack('<I', f.read(4))[0]
        sample_rate = struct.unpack('<d', f.read(8))[0]
        num_samples = struct.unpack('<I', f.read(4))[0]
        data_type = struct.unpack('<I', f.read(4))[0]
        reserved = f.read(8)  # Skip reserved bytes
        
        # Read waveform data
        if data_type == 1:
            waveform = np.frombuffer(f.read(), dtype=np.float32)
        else:
            waveform = np.frombuffer(f.read(), dtype=np.float64)
    
    # Reconstruct time axis
    time_axis = np.arange(num_samples) / sample_rate
    
    print(f"Loaded waveform from: {filename}")
    print(f"  - Version: {version}")
    print(f"  - Samples: {num_samples}")
    print(f"  - Sample rate: {sample_rate/1e9:.3f} GS/s")
    
    return {
        'waveform': waveform,
        'sample_rate': sample_rate,
        'num_samples': num_samples,
        'time_axis': time_axis
    }
