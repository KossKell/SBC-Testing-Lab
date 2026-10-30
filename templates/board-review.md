# Board Review: [Board Name]

## Summary

- **Status**: [Draft / In Progress / Completed / Archived]
- **Reviewed by**: Anthony Moore / KossKell
- **Review date**: [YYYY-MM-DD]
- **Overall rating**: [If applicable]

---

## Hardware Details

### Board
- **Model**: [Exact board model name]
- **Revision**: [Board revision/stepping]
- **SoC**: [SoC part number and model]
- **RAM**: [Size and type, e.g., 4GB LPDDR4]
- **Storage**: [Type and capacity, e.g., eMMC 64GB / microSD slot]
- **Power**: [Recommended voltage, current, connector type]

### Accessories
- [List any HATs, cases, antennas, cooling solutions, adapters used during testing]

---

## Test Setup

- **OS Image**: [Name, version, source URL]
- **Kernel**: [Version and any patches]
- **Firmware**: [Version and source]
- **Bootloader**: [Version and configuration]

---

## Boot

- [Describe boot process, time to boot, any errors or warnings]
- [Serial console output if relevant]

---

## Interfaces Compatibility

| Interface | Status | Notes |
|-----------|--------|-------|
| UART      | Tested / Untested | Baud rate, pins used |
| SPI       | Tested / Untested | Devices tested |
| I2C       | Tested / Untested | Devices tested |
| GPIO      | Tested / Untested | Pins verified |
| USB       | Tested / Untested | Ports and devices |
| Ethernet  | Tested / Untested | Speed, duplex |
| Wi-Fi     | Tested / Untested | Band, speed |
| Bluetooth | Tested / Untested | Version, devices |
| Display   | Tested / Untested | Type, resolution |
| Audio     | Tested / Untested | Output/input tested |

---

## Performance

### CPU

| Benchmark | Result | Units | Conditions |
|-----------|--------|-------|------------|
| [e.g., Geekbench Single] | [value] | [score] | [OS, kernel, ambient temp] |
| [e.g., Geekbench Multi] | [value] | [score] | [OS, kernel, ambient temp] |
| [Custom test] | [value] | [units] | [command and conditions] |

### Memory

| Benchmark | Result | Units | Conditions |
|-----------|--------|-------|------------|
| [e.g., Memory throughput] | [value] | [MB/s] | [test tool and params] |
| [Custom test] | [value] | [units] | [command and conditions] |

### Storage

| Benchmark | Result | Units | Conditions |
|-----------|--------|-------|------------|
| [Sequential read] | [value] | [MB/s] | [fio/dd params] |
| [Sequential write] | [value] | [MB/s] | [fio/dd params] |
| [Random 4K read] | [value] | [IOPS] | [fio params] |
| [Random 4K write] | [value] | [IOPS] | [fio params] |

### Network

| Interface | Benchmark | Result | Units | Conditions |
|-----------|-----------|--------|-------|------------|
| Ethernet  | iperf3 TX | [value] | [Mbps] | [cable length, switch] |
| Ethernet  | iperf3 RX | [value] | [Mbps] | [cable length, switch] |
| Wi-Fi     | iperf3 TX | [value] | [Mbps] | [router, distance, band] |
| Wi-Fi     | iperf3 RX | [value] | [Mbps] | [router, distance, band] |

---

## Power and Thermal

| State | Power | Units | Notes |
|-------|-------|-------|-------|
| Idle | [value] | [W/mA] | [conditions] |
| Load | [value] | [W/mA] | [workload description] |
| Peak | [value] | [W/mA] | [peak workload] |

| Component | Idle Temp | Load Temp | Units | Notes |
|-----------|-----------|-----------|-------|-------|
| SoC | [value] | [value] | [°C] | [sensor location] |
| [Other] | [value] | [value] | [°C] | [sensor location] |

---

## Stability

- **Test duration**: [hours/days]
- **Workload**: [description]
- **Result**: [Passed / Failed — describe any crashes, reboots, throttling]

---

## Special Features

- [Document any unique features: NPU, VPU, real-time capabilities, etc.]
- [Driver support status]
- [Software ecosystem quality]

---

## Issues and Workarounds

| Issue | Severity | Workaround | Status |
|-------|----------|------------|--------|
| [Describe issue] | [Critical/High/Medium/Low] | [If any] | [Fixed/Ongoing] |

---

## Photos and Logs

- [Link to photos of test setup, board, meters]
- [Link to raw log files]
- [Link to benchmark output files]

---

## Conclusion

### Who Should Buy
- [Target audience for this board]
- [Best use cases]

### Who Should Look Elsewhere
- [Use cases where this board falls short]
- [Alternatives to consider]

### Final Assessment
- [Overall summary of findings]
