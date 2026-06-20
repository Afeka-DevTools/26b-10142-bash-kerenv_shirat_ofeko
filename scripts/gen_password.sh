#!/bin/bash

length=10

uppercase=$(tr -dc 'A-Z' < /dev/urandom | head -c 1)
lowercase=$(tr -dc 'a-z' < /dev/urandom | head -c 1)
digit=$(tr -dc '0-9' < /dev/urandom | head -c 1)
symbol=$(tr -dc '!@#$%^&*()_+-=[]{}|;:,.<>?' < /dev/urandom | head -c 1)

remaining=$((length - 4))
rest=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+-=[]{}|;:,.<>?' < /dev/urandom | head -c "$remaining")

password=$(echo "${uppercase}${lowercase}${digit}${symbol}${rest}" | fold -w1 | shuf | tr -d '\n')

echo "$password"
