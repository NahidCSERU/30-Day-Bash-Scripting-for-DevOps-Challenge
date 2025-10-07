#!/bin/bash
# Author: <Nahid Hasan>
# Date: 07.10..2025

# Usage: ./organize_files.sh <directory>
SRC_DIR=$1
DEST_DIR="organized"

if [ -z "$SRC_DIR" ]; then
    echo "Please provide a source directory"
    exit 1
fi

if [ ! -d "$SRC_DIR" ]; then
    echo "Source directory does not exist!"
    exit 1
fi

# Create destination directory
mkdir -p $DEST_DIR

# Create subfolders
mkdir -p $DEST_DIR/Documents
mkdir -p $DEST_DIR/Images
mkdir -p $DEST_DIR/Music
mkdir -p $DEST_DIR/Archives
mkdir -p $DEST_DIR/Scripts
mkdir -p $DEST_DIR/Others

# Loop through files and organize
for file in "$SRC_DIR"/*; do
    if [ -f "$file" ]; then
        ext="${file##*.}"
        case "$ext" in
            pdf|doc|docx|txt) mv "$file" "$DEST_DIR/Documents/" ;;
            jpg|jpeg|png|gif) mv "$file" "$DEST_DIR/Images/" ;;
            mp3|wav) mv "$file" "$DEST_DIR/Music/" ;;
            zip|tar|gz|rar) mv "$file" "$DEST_DIR/Archives/" ;;
            sh|py|js) mv "$file" "$DEST_DIR/Scripts/" ;;
            *) mv "$file" "$DEST_DIR/Others/" ;;
        esac
    fi
done

echo "Files organized successfully into $DEST_DIR/"