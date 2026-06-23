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

echo "Starting cleanup in directory: $DIR"

find "$DIR" -type f -name "*.class" -exec rm -f {} +
echo "Removed .class files."

find "$DIR" -type f -name "*.pyc" -exec rm -f {} +
echo "Removed .pyc files."

find "$DIR" -type d -name "node_modules" -prune -exec rm -rf {} +
echo "Removed node_modules directories."

echo "Cleanup complete!"
