#!/bin/bash

# List of ports to exclude
exclude_ports=("35011" "35021" "35013" "35023")

# Generate a random port number between 35001 and 65535, excluding the excluded ports
while :
do
    random_port=$((RANDOM % (65535 - 35001 + 1) + 35001))
    if ! [[ " ${exclude_ports[@]} " =~ " $random_port " ]]; then
        break
    fi
done

echo "Random NAT Port Number: $random_port"

