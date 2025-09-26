#!/bin/bash
# Script: write_file.sh
# Usage: ./write_file.sh filename "content"
# Author: <Nahid Hasan>
# Date: 26.09.2025
FILE=$1
CONTENT=$2

echo "$CONTENT" > "$FILE"
echo "✅ Written to $FILE"