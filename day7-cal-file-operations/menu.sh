#!/bin/bash
# Simple menu to run other scripts
# Author: <Nahid Hasan>
# Date: 22.09.2025
while true; do
  echo "====================="
  echo " Bash Practice Menu"
  echo "====================="
  echo "1. Calculator"
  echo "2. File Operations"
  echo "3. Exit"
  read -p "Enter choice: " choice

  case $choice in
    1) ./calculator.sh ;;
    2) ./file_operations.sh ;;
    3) echo "Goodbye!"; exit 0 ;;
    *) echo "Invalid choice";;
  esac
done
