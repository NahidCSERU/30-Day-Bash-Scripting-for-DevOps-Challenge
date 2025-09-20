#!/bin/bash
# Day 5 Bash Project: Command Substitution + Arithmetic Operations
# Author: <Nahid Hasan>
# Date: 20.09.2025

LOG_FILE="logs.txt"

# 1. System Info using Command Substitution
USER_NAME=$(whoami)
UPTIME_INFO=$(uptime -p)
CURRENT_DATE=$(date)