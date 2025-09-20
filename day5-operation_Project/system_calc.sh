#!/bin/bash
# Day 5 Bash Project: Command Substitution + Arithmetic Operations
# Author: <Nahid Hasan>
# Date: 20.09.2025

LOG_FILE="logs.txt"

# 1. System Info using Command Substitution
USER_NAME=$(whoami)
UPTIME_INFO=$(uptime -p)
CURRENT_DATE=$(date)

# 2. Print system info
echo "=== System Report ===" | tee -a $LOG_FILE
echo "User        : $USER_NAME" | tee -a $LOG_FILE
echo "Uptime      : $UPTIME_INFO" | tee -a $LOG_FILE
echo "Date & Time : $CURRENT_DATE" | tee -a $LOG_FILE
echo "=====================" | tee -a $LOG_FILE

# 3. Take user input
echo -n "Enter first number: "
read num1
echo -n "Enter second number: "
read num2

# 4. Arithmetic Operations 
sum=$((num1 + num2))
diff=$((num1 - num2))
mul=$((num1 * num2))
div=$((num1 / num2))

# 5. Print results
echo "=== Calculator Results ===" | tee -a $LOG_FILE
echo "$num1 + $num2 = $sum" | tee -a $LOG_FILE
echo "$num1 - $num2 = $diff" | tee -a $LOG_FILE
echo "$num1 * $num2 = $mul" | tee -a $LOG_FILE
echo "$num1 / $num2 = $div" | tee -a $LOG_FILE
echo "==========================" | tee -a $LOG_FILE