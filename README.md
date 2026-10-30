# SBC Testing Lab

A public engineering notebook for reproducible testing of single-board computers (SBCs), embedded Linux systems, and related hardware.

## Current status

This repository is a new portfolio scaffold. No board-specific tests or benchmark results have been published yet. Sections marked **planned** are proposals, not completed work.

## What this lab will document

- Board identity, revision, SoC, memory, storage, interfaces, and power requirements
- OS image, bootloader, kernel, firmware, and driver compatibility
- CPU, memory, storage, and network performance
- Thermals, power draw, stability, and practical workloads
- Peripheral support, GPIO, accelerators, and real-world limitations
- Reproducible commands, raw logs, photos, and conclusions

## Repository map

- `docs/` — methodology, disclosure policy, and workflow
- `reports/` — board-specific reports (none published yet)
- `scripts/` — safe information-gathering and benchmark helpers
- `templates/` — reusable report and test-log templates
- `projects/` — practical demonstrations (planned)
- `fpga/` — FPGA experiments (planned)
- `local-ai/` — edge AI experiments (planned)

## Principles

1. Publish what was actually tested, including failures.
2. Separate measured results from estimates and vendor claims.
3. Record exact hardware, software versions, commands, and conditions.
4. Avoid destructive tests on user data or storage devices.
5. Disclose review samples, loans, sponsorship, and other material relationships.
6. Never present a planned test as a completed result.

## Getting started

Read `docs/testing-methodology.md`, then use `templates/board-review.md`. The Linux system-information script in `scripts/collect-system-info.sh` is designed to be read before execution and does not install packages or modify system configuration.

## Maintainer

KossKell — independent hardware and software tinkering, with a focus on embedded Linux, SBCs, local AI, FPGA learning, and practical engineering documentation.
