#!/bin/bash

# ASCII Real-Time Clock (pure Bash - no external dependencies)
# Displays the current time using a custom block-style ASCII font.
# Press Ctrl+C to exit.

digit_row() {
    local char="$1" row="$2"
    case "$char$row" in
        00) echo " ### " ;; 01) echo "#   #" ;; 02) echo "#   #" ;; 03) echo "#   #" ;; 04) echo " ### " ;;
        10) echo "  #  " ;; 11) echo " ##  " ;; 12) echo "  #  " ;; 13) echo "  #  " ;; 14) echo " ### " ;;
        20) echo " ### " ;; 21) echo "#   #" ;; 22) echo "   # " ;; 23) echo "  #  " ;; 24) echo "#####" ;;
        30) echo " ### " ;; 31) echo "#   #" ;; 32) echo "  ## " ;; 33) echo "#   #" ;; 34) echo " ### " ;;
        40) echo "#   #" ;; 41) echo "#   #" ;; 42) echo "#####" ;; 43) echo "    #" ;; 44) echo "    #" ;;
        50) echo "#####" ;; 51) echo "#    " ;; 52) echo "#### " ;; 53) echo "    #" ;; 54) echo "#### " ;;
        60) echo " ### " ;; 61) echo "#    " ;; 62) echo "#### " ;; 63) echo "#   #" ;; 64) echo " ### " ;;
        70) echo "#####" ;; 71) echo "    #" ;; 72) echo "   # " ;; 73) echo "  #  " ;; 74) echo "  #  " ;;
        80) echo " ### " ;; 81) echo "#   #" ;; 82) echo " ### " ;; 83) echo "#   #" ;; 84) echo " ### " ;;
        90) echo " ### " ;; 91) echo "#   #" ;; 92) echo " ####" ;; 93) echo "    #" ;; 94) echo " ### " ;;
        :0) echo "     " ;; :1) echo "  #  " ;; :2) echo "     " ;; :3) echo "  #  " ;; :4) echo "     " ;;
        *)  echo "     " ;;
    esac
}

render_clock() {
    local time_str
    time_str=$(date +"%H:%M:%S")
    local row line i ch
    for row in 0 1 2 3 4; do
        line=""
        for (( i=0; i<${#time_str}; i++ )); do
            ch="${time_str:$i:1}"
            line+="$(digit_row "$ch" "$row")  "
        done
        echo "$line"
    done
}

cleanup() {
    tput cnorm
    echo -e "\nExiting ASCII clock. Goodbye!"
    exit 0
}

trap cleanup SIGINT SIGTERM

tput civis

while true; do
    clear
    echo
    render_clock
    echo
    sleep 1
done
