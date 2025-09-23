#!/bin/bash
# Author: <Nahid Hasan>
# Date: 23.09.2025
# global variable

name="Global Nahid"

# function with local variable
say_hello() {
    local name="Local Nahid"
    echo "Inside function: $name"
}

# function without local keyword (global overwrite হবে)
change_global() {
    name="Changed Global"
    echo "Inside change_global: $name"
}

echo "Before function call: $name"
say_hello
echo "After say_hello: $name"

change_global
echo "After change_global: $name"
