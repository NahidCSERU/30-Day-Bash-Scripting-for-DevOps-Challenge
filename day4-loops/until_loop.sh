#!/bin/bash
# Author: <Nahid Hasan>
# Date: 19.09.2025
i=1
until [ $i -gt 5 ]
do
  echo "Number: $i"
  ((i++))
done
