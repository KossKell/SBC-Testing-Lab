#!/usr/bin/env bash
# collect-system-info.sh
#
# Safe, read-only system information collector for SBC compatibility evaluation.
#
# IMPORTANT: The output of this script may contain host identifiers
# (hostname, IP addresses, MAC addresses, serial numbers) and network
# configuration details. Review the output carefully before publishing
# or sharing it publicly. Redact sensitive information as needed.

set -u

# Helper function: run a command and print it before executing
# Usage: print_and_run "command args"
print_and_run() {
    echo "=== $* ==="
    "$@"
    echo ""
}

# Helper function: only print a command if it's available on the system
# Usage: safe_run "command args"
safe_run() {
    if command -v "$1" &>/dev/null; then
        echo "=== $* ==="
        "$@"
        echo ""
    else
        echo "=== $* ==="
        echo "Command not available on this system."
        echo ""
    fi
}

echo "============================================"
echo "  System Information Collection"
echo "  $(date '+%Y-%m-%d %H:%M:%S %Z')"
echo "============================================"
echo ""

# Basic system info
echo "=== Date ==="
date
echo ""

echo "=== uname -a ==="
uname -a
echo ""

echo "=== /etc/os-release ==="
if [ -f /etc/os-release ]; then
    cat /etc/os-release
else
    echo "File not found."
fi
echo ""

# CPU information
safe_run lscpu

# Memory information
safe_run free -h

# Block devices
safe_run lsblk

# PCI devices
safe_run lspci

# USB devices
safe_run lsusb

# Network interfaces (brief)
safe_run ip -brief address

# Disk usage
safe_run df -h

# System uptime
safe_run uptime

# Hardware sensors (lm-sensors)
safe_run sensors

echo "============================================"
echo "  Collection complete."
echo "  Review output for sensitive information."
echo "============================================"
