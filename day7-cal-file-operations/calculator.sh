#!/bin/bash
# Simple calculator script
# Author: <Nahid Hasan>
# Date: 22.09.2025

echo "Enter first number: "
read num1
echo "Enter operator (+, -, *, /): "
read op
echo "Enter second number: "
read num2

case $op in
  +) result=$((num1 + num2));;
  -) result=$((num1 - num2));;
  \*) result=$((num1 * num2));;
  /) result=$((num1 / num2));;
  *) echo "Invalid operator"; exit 1;;
esac

echo "Result: $result"
