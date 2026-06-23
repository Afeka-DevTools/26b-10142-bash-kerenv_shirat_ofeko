#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

DIR=$1

if [ ! -d "$DIR" ]; then
    echo "Error: Directory '$DIR' does not exist."
    exit 1
fi

for subdir in "$DIR"/*/; do
    
    if [ -d "$subdir" ]; then
        echo "================================================"
        echo "Directory: $subdir"
        
        if [ -d "${subdir}.git" ]; then
            git -C "$subdir" status
        else
            echo "Status: Not a Git repository."
        fi
        
        echo "================================================"
        echo ""
    fi
done
