#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <url_file>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: File '$1' does not exist."
    exit 1
fi

while read -r url; do
    status=$(curl -o /dev/null -s -w "%{http_code}" "$url")

    if [ "$status" -ge 200 ] && [ "$status" -lt 400 ]; then
        echo "$url : Accessible (HTTP $status)"
    else
        echo "$url : Not Accessible (HTTP $status)"
    fi
done < "$1"
