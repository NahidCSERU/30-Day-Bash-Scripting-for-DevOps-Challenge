#!/bin/bash
# Example: Exit codes
# Author: <Nahid Hasan>
# Date: 02.10.2025

echo "Running a command that succeeds..."
ls > /dev/null
echo "Exit code: $?"

echo "Running a command that fails..."
ls /not_exist_dir > /dev/null
echo "Exit code: $?"

if [ $? -ne 0 ]; then
  echo "❌ Error: Previous command failed!"
fi
