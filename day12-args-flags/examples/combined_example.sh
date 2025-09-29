#!/bin/bash
# Example: Combined argument and flag parsing
# Author: <Nahid Hasan>
# Date: 29.09.2025
usage() {
  echo "Usage: $0 -u username -v version"
  exit 1
}

while getopts ":u:v:" opt; do
  case ${opt} in
    u )
      username=$OPTARG
      ;;
    v )
      version=$OPTARG
      ;;
    \? )
      echo "Invalid option: $OPTARG" 1>&2
      usage
      ;;
    : )
      echo "Invalid option: $OPTARG requires an argument" 1>&2
      usage
      ;;
  esac
done

if [ -z "$username" ] || [ -z "$version" ]; then
    usage
fi

echo "Username: $username"
echo "Version: $version"