#!/bin/bash
# Display basic system information

echo "===== System Info ====="
echo "Hostname: $(hostname)"         # Show the hostname of the system
echo "Uptime: $(uptime -p)"         # Show system uptime
echo "Kernel: $(uname -r)"          # Show the current kernel version
echo "Memory Usage:"
free -h                              # Show memory usage in human-readable format
echo "Disk Usage:"
df -h /                              # Show disk usage for root partition
