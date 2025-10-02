#!/bin/bash
# Example: set -e (stop on error)
# Author: <Nahid Hasan>
# Date: 02.10.2025
set -e  # exit immediately if a command fails

echo "This will run"
ls > /dev/null

echo "This will fail and stop script"
ls /not_exist_dir

echo "You will never see this line because of set -e"
