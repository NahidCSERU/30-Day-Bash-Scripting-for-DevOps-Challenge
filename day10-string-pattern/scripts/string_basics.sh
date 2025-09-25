#!/bin/bash
# Basic string operations
# Author: <Nahid Hasan>
# Date: 25.09.2025

str="Hello Linux"
echo "Original String: $str"

# Length
echo "Length: ${#str}"

# Substring
echo "Substring (0-5): ${str:0:5}"

# Concatenation
str2=" Scripting"
echo "Concatenated: $str$str2"