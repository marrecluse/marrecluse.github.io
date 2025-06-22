#!/bin/bash
# Disk usage monitoring script

THRESHOLD=90

df -H | grep -vE '^Filesystem|tmpfs|cdrom' | while read output; do
  usage=$(echo $output | awk '{ print $5 }' | sed 's/%//')
  partition=$(echo $output | awk '{ print $6 }')
  if [ $usage -ge $THRESHOLD ]; then
    echo "Warning: $partition usage is at ${usage}%"
  fi
done
