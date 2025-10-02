#!/bin/bash
# Example: trap (catch errors/signals)
# Author: <Nahid Hasan>
# Date: 02.10.2025

trap 'echo "⚠️ Error occurred at line $LINENO. Exit code $?."' ERR

echo "Running safe command..."
ls > /dev/null

echo "Running failing command..."
ls /not_exist_dir

echo "This line will still run because we are trapping ERR"
