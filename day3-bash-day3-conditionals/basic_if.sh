#!/bin/bash
# Basic if/else/elif examples (Day 3)
# Author: <Nahid Hasan>
# Date: 18.09.2025

echo "=== 01_basic_if.sh ==="

# Numeric comparison
read -p "Enter a number: " num
if [ "$num" -lt 0 ]; then
  echo "Number is negative"
elif [ "$num" -eq 0 ]; then
  echo "Number is zero"
else
  echo "Number is positive"
fi

# String comparison
read -p "Enter your name: " name
if [ -z "$name" ]; then
  echo "You didn't enter a name."
else
  if [ "$name" = "root" ]; then
    echo "Hello superuser!"
  else
    echo "Hello, $name"
  fi
fi

# Combined conditions
read -p "Enter a number between 1 and 100: " n
if [ "$n" -ge 1 ] && [ "$n" -le 100 ]; then
  echo "$n is in range 1..100"
else
  echo "$n is out of range"
fi