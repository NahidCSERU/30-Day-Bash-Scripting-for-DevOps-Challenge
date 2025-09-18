#!/bin/bash
# Usage: ./03_service_disk_check.sh <service-name> <disk-threshold-percent> <path>
# Example: ./03_service_disk_check.sh nginx 80 /var
# Author: <Nahid Hasan>
# Date: 18.09.2025

SERVICE=${1:-nginx}
THRESHOLD=${2:-80}
PATH_CHECK=${3:-/}

echo "=== 03_service_disk_check.sh ==="
echo "Service: $SERVICE  Threshold: $THRESHOLD%  Path: $PATH_CHECK"

# 1) Check service active
if systemctl is-active --quiet "$SERVICE"; then
  echo "Service $SERVICE is running."
else
  # If service inactive, check why
  STATUS=$(systemctl is-failed "$SERVICE" 2>/dev/null)
  if [ "$STATUS" = "failed" ]; then
    echo "Service $SERVICE has failed. Check logs:"
    journalctl -u "$SERVICE" -n 20 --no-pager
  else
    echo "Service $SERVICE is not running (status: $STATUS). Try starting..."
    sudo systemctl start "$SERVICE" && echo "Started $SERVICE" || echo "Failed to start $SERVICE"
  fi
fi

# 2) Disk usage check (percent)
USAGE=$(df -h --output=pcent,target "$PATH_CHECK" | awk 'NR==2 {print $1}' | tr -d '%')
if [ -z "$USAGE" ]; then
  echo "Couldn't read disk usage for $PATH_CHECK"
else
  echo "Disk usage on $PATH_CHECK: ${USAGE}%"
  if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Warning: disk usage >= $THRESHOLD%. Take action (clean logs / rotate / extend disk)."
  elif [ "$USAGE" -ge 70 ]; then
    echo "Notice: disk usage >= 70%."
  else
    echo "Disk usage OK."
  fi
fi
