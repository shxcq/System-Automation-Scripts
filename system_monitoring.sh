#!/bin/bash

# Set thresholds
disk_usage_threshold=90
memory_usage_threshold=80

# Get current disk and memory usage
disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')
memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

# Check disk usage
if [ $disk_usage -gt $disk_usage_threshold ]; then
  echo "Disk usage is above threshold: ${disk_usage}%"
  # Optionally, send an email or a system notification
fi

# Check memory usage
if (( $(echo "$memory_usage > $memory_usage_threshold" | bc -l) )); then
  echo "Memory usage is above threshold: ${memory_usage}%"
  # Optionally, send an email or a system notification
fi
