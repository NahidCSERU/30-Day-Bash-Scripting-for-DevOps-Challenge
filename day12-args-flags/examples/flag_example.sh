#!/bin/bash
# Example: Flag parsing with getopts
# Author: <Nahid Hasan>
# Date: 29.09.2025
while getopts "ab" flag; do
  case "${flag}" in
    a) echo "Flag -a is set";;
    b) echo "Flag -b is set";;
    *) echo "Unknown flag";;
  esac
done