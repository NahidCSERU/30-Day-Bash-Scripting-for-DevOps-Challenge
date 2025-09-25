#!/bin/bash
# Regular expression examples
# Author: <Nahid Hasan>
# Date: 25.09.2025
cd ../examples || exit

# grep regex
echo "Emails in data.csv:"
grep -E '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' data.csv

# awk example
echo "User names in users.log:"
awk -F',' '{print $1}' users.log

# sed example
echo "Replace 'Admin' with 'User' in users.log:"
sed 's/Admin/User/g' users.log