#!/bin/bash
# Usage: ./02_file_checks.sh /path/to/check
# Author: <Nahid Hasan>
# Date: 18.09.2025
TARGET=${1:-/tmp}
echo "=== 02_file_checks.sh ==="
echo "Checking: $TARGET"

if [ -e "$TARGET" ]; then
  echo "$TARGET exists."

  if [ -f "$TARGET" ]; then
    echo "It's a regular file."
  elif [ -d "$TARGET" ]; then
    echo "It's a directory."
  else
    echo "It's another type of node (symlink, device, etc.)"
  fi

  # Permission checks
  if [ -r "$TARGET" ]; then
    echo "Readable"
  else
    echo "Not readable"
  fi

  if [ -w "$TARGET" ]; then
    echo "Writable"
  else
    echo "Not writable"
  fi

else
  echo "$TARGET does not exist."
fi