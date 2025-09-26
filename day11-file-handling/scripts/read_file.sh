#!/bin/bash
# Script: read_file.sh
# Usage: ./read_file.sh filename
# Author: <Nahid Hasan>
# Date: 26.09.2025

FILE=$1

if [[ -f "$FILE" ]]; then
    echo "📖 Reading file: $FILE"
    cat "$FILE"
else
    echo "❌ File not found: $FILE"
fi