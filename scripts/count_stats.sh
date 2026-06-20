#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: '$1' is not a directory."
    exit 1
fi

for file in "$1"/*; do
    if [ -f "$file" ]; then
        lines=$(wc -l < "$file")
        words=$(wc -w < "$file")
        chars=$(wc -m < "$file")

        echo "File: $(basename "$file")"
        echo "Lines: $lines"
        echo "Words: $words"
        echo "Characters: $chars"
        echo "------------------------"
    fi
done
