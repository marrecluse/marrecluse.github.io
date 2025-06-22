#!/bin/bash
# Clean logs older than 7 days in /var/log

LOG_DIR="/var/log"
find $LOG_DIR -type f -name "*.log" -mtime +7 -exec rm -v {} \;

echo "Old logs deleted from $LOG_DIR"
