#!/bin/bash

# Read the activeuserports.txt file and store ports in an array
mapfile -t active_ports < activeuserports.txt

# Add port numbers 35011 and 35021 to the active_ports array
active_ports+=(35011 35021)

# Generate a random port number between 35001 and 65535, excluding the ports listed in activeuserports.txt
while :
do
    random_port=$((RANDOM % (65535 - 35001 + 1) + 35001))
    if ! [[ " ${active_ports[*]} " =~ " $random_port " ]]; then
        break
    fi
done

echo "Random NAT Port Number: $random_port"
