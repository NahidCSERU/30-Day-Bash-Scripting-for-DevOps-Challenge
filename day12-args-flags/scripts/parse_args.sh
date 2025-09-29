#!/bin/bash
# General-purpose argument parser example
# Author: <Nahid Hasan>
# Date: 29.09.2025
for arg in "$@"
do
    case $arg in
        -h|--help)
        echo "Help requested"
        ;;
        -v|--version)
        echo "Version 1.0"
        ;;
        *)
        echo "Unknown argument: $arg"
        ;;
    esac
done