#!/bin/bash
# Pattern matching examples
# Author: <Nahid Hasan>
# Date: 25.09.2025

cd ../examples || exit

# List all txt files
for file in *.txt; do
[ -e "$file" ] || continue
echo "Found text file: $file"
done

# Check for word 'admin' in users.log
if [ -f users.log ]; then
echo "Lines containing 'admin':"
grep 'admin' users.log
fi