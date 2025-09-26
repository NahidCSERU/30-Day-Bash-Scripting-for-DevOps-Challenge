#!/bin/bash
# Utility functions for file handling
# Author: <Nahid Hasan>
# Date: 26.09.2025
check_file_exists() {
    if [[ -f "$1" ]]; then
        echo "✔ File exists: $1"
    else
        echo "❌ File does not exist: $1"
    fi
}