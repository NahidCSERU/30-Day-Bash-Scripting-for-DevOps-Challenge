#!/bin/bash
# Author: <Nahid Hasan>
# Date: 19.09.2025
read -p "Enter a number: " n
for i in {1..10}; do
  echo "$n x $i = $((n*i))"
done