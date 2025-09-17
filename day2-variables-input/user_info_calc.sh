#!/bin/bash
# Day 2 Project: Variables, Strings, Numbers, User Input
# Author: <Nahid Hasan>
# Date: 17.09.2025

echo "=== Welcome to User Info & Calculator Script ==="

# Read user info
read -p "Enter your name: " name
read -p "Enter your age: " age

# Use variables in a string
echo "Hello, $name! You are $age years old."
# Simple calculation
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Arithmetic
sum=$((num1 + num2))
product=$((num1 * num2))

# Show results
echo "✅ Results:"
echo "$num1 + $num2 = $sum"
echo "$num1 * $num2 = $product"

# String length example
echo "Your name has ${#name} characters."