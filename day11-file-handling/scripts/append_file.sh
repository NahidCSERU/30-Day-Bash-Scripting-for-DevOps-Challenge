#!/bin/bash
# Script: append_file.sh
# Usage: ./append_file.sh filename "content"
# Author: <Nahid Hasan>
# Date: 26.09.2025
FILE=$1
CONTENT=$2

echo "$CONTENT" >> "$FILE"
echo "➕ Appended to $FILE"