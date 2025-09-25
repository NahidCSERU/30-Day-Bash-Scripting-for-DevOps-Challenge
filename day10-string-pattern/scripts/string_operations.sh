#!/bin/bash
# Author: <Nahid Hasan>
# Date: 25.09.2025
# Advanced string manipulation

str=" Linux Scripting Day 10 "

# Trim spaces
trimmed="${str##*([[:space:]])}"
trimmed="${trimmed%%*([[:space:]])}"
echo "Trimmed String: '$trimmed'"

# Uppercase
upper=${trimmed^^}
echo "Uppercase: $upper"

# Lowercase
lower=${trimmed,,}
echo "Lowercase: $lower"

# Replace substring
replaced=${trimmed/Linux/Bash}
echo "Replaced String: $replaced"