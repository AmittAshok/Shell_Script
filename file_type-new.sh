#!/bin/bash

# Check if no file name is provided as argument
if [ $# -eq 0 ]; then
    echo "Kindly enter the file name."
    exit 1
fi

file="$1"

# Check if file exists
if [ -e "$file" ]; then
    # Check if it's a regular file
    if [ -f "$file" ]; then
        echo "This is a regular file."
    # Check if it's a directory
    elif [ -d "$file" ]; then
        echo "This is a directory."
    else
        echo "This is a different kind of file."
    fi
else
    echo "File '$file' does not exist."
    exit 1
fi

# List files in the directory (if it's a directory)
if [ -d "$file" ]; then
    cd "$file" || exit 1  # Change directory or exit if it fails
    ls -ltr  # List files in long format sorted by modification time
fi

