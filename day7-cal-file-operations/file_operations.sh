#!/bin/bash
# Simple file operations
# Author: <Nahid Hasan>
# Date: 22.09.2025
echo "Choose an option:"
echo "1. Create a file"
echo "2. Delete a file"
echo "3. Copy a file"
echo "4. Move a file"
read choice

case $choice in
  1)
    echo "Enter filename to create: "
    read fname
    touch "$fname"
    echo "File '$fname' created."
    ;;
  2)
    echo "Enter filename to delete: "
    read fname
    rm -i "$fname"
    ;;
  3)
    echo "Enter source file: "
    read src
    echo "Enter destination: "
    read dest
    cp "$src" "$dest"
    echo "File copied."
    ;;
  4)
    echo "Enter source file: "
    read src
    echo "Enter destination: "
    read dest
    mv "$src" "$dest"
    echo "File moved."
    ;;
  *)
    echo "Invalid choice"
    ;;
esac
