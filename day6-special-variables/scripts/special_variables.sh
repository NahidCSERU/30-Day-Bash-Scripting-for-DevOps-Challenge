#!/bin/bash
# Author: <Nahid Hasan>
# Date: 21.09.2025

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Number of arguments: $#"

ls /nonexistent_folder
echo "Exit status of last command: $?"
