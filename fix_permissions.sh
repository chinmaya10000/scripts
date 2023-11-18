#!/bin/bash

read -p "Enter directory: " dir

# Check if the directory exists
if [ ! -d "$dir" ]; then
    echo "Error: Directory not found."
    exit 1
fi

echo -n "Changing files permissions to 644 recursively..."
find "$dir" -type f -exec chmod 644 {} \;
echo "Done"

echo -n "Changing subdirectories permissions to 755 recursively..."
find "$dir" -type d -exec chmod 755 {} \;
echo "Done"

