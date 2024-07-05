#!/bin/bash

# Check if no file name is provided as argument
if [ $# -eq 0 ]; then
    echo "Kindly enter the file name."
    exit 1
fi

file_name="$1"

# Check if file exists
if [ -e "$file_name" ]; then
    # Check if it's a regular file
    if [ -f "$file_name" ]; then
        echo "File is a regular file."
    # Check if it's a directory
    elif [ -d "$file_name" ]; then
        echo "File is a directory."
    else
        echo "This is a different kind of file."
    fi
else
    echo "File '$file_name' does not exist."
    exit 1
fi

