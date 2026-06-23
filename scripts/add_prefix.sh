#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory_path> <prefix>"
    exit 1
fi

DIR=$1
PREFIX=$2

if [ ! -d "$DIR" ]; then
    echo "Error: Directory '$DIR' does not exist."
    exit 1
fi

for file in "$DIR"/*.txt; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        
        mv "$file" "$DIR/${PREFIX}${filename}"
        
        echo "Renamed: $filename -> ${PREFIX}${filename}"
    fi
done

echo "Done!"
