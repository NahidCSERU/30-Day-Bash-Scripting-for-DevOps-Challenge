#!/usr/bin/env bash
# simple-linux-logger
# Day 15 project: basic logging and debugging demo
# Author: <Nahid Hasan>
# Date: 09.10..2025

set -euo pipefail

LOGFILE="logs/app.log"
mkdir -p logs

read -p "Enter a message to log: " MESSAGE

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
ENTRY="$TIMESTAMP [INFO] $MESSAGE"

# Write to log file
echo "$ENTRY" >> "$LOGFILE"

# Also send to syslog
logger -t simple-linux-logger "$MESSAGE"

echo "✅ Message logged successfully!"
echo "📄 Check logs/app.log or run: journalctl -t simple-linux-logger"
