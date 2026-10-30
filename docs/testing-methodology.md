# Testing Methodology

## Staged, Reproducible Testing Process

### 1. Record Exact Hardware Configuration
- Board model, revision/stepping, SoC part number
- RAM size and type, storage type and capacity
- Any added accessories: HATs, M.2 adapters, antennas, cooling

### 2. Document Software Stack
- OS image source (URL, version, build date)
- Image checksum (SHA-256 or equivalent)
- Bootloader version and configuration
- Kernel version and any patches
- Firmware packages and versions

### 3. Verify Boot and Interfaces
- Confirm successful boot with no errors
- Verify all expected interfaces are available: UART, SPI, I2C, GPIO, USB, Ethernet, Wi-Fi, Bluetooth, display output
- Record any deviations from expected boot behavior

### 4. Run Standardised Performance Tests
Only run the following tests with documented commands and conditions:

#### CPU
- Use a documented benchmark (e.g., `stress-ng --cpu 0 --timeout 60s`)
- Record command line, ambient temperature, and power state

#### Memory
- Use documented tools (e.g., `stress-ng --vm 1 --vm-bytes 256M --timeout 60s`)
- Record memory size, command line, and conditions

#### Storage
- Run `fio` or `dd` with documented parameters
- Record device, block size, I/O engine, runtime, and conditions

#### Network
- Use `iperf3` or equivalent with documented server/client configuration
- Record Ethernet or Wi-Fi link speed and conditions

### 5. Measure Power Consumption
- Use a suitable external power meter (e.g., USB power meter, multimeter in series)
- Record idle, load, and peak power readings
- Note measurement instrument model and accuracy
- Record power supply specifications

### 6. Measure Thermal Performance
- Use temperature sensors (on-board or external) where available
- Record ambient temperature, humidity, and airflow context
- Document sensor locations and any thermal interface materials
- Record temperatures at idle and under sustained load

### 7. Stability Testing
- Define test duration (minimum 24 hours recommended for production evaluation)
- Define workload profile (CPU, memory, I/O, network)
- Monitor for crashes, reboots, thermal throttling, or data corruption
- Record any failures with timestamps and system logs

### 8. Archive Raw Evidence
- Save raw log files (console output, benchmark output, system logs)
- Take photos of test setup including meters, sensors, and wiring
- Store all evidence in a structured, dated archive

### 9. Distinguish Evidence Types
Clearly label each piece of information as:
- **Measured data** — directly recorded from instruments or benchmarks
- **Estimates** — calculated or interpolated values
- **Vendor claims** — specifications from manufacturer documentation
- **Not tested** — features explicitly not evaluated

### ⚠️ Prohibited Tests and Warnings

**DO NOT run destructive block-device tests** such as:
- `dd if=/dev/zero of=/dev/sdX` or equivalent on any storage device
- Raw disk partitioning or formatting without explicit owner authorization
- Stress tests that could cause hardware damage or data loss

**ALWAYS back up data** before running any tests that interact with storage devices.
