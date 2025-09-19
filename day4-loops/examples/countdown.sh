#!/bin/bash
# Author: <Nahid Hasan>
# Date: 19.09.2025
i=10
while [ $i -ge 1 ]; do
  echo "Countdown: $i"
  ((i--))
  sleep 1
done