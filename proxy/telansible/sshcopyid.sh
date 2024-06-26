#!/bin/bash

# Check if hosts.ini exists
if [ ! -f "hosts.ini" ]; then
    echo "hosts.ini file not found!"
    exit 1
fi

# Read each line of hosts.ini and execute ssh-copy-id for each IP
while IFS= read -r line; do
    # Extract IP address from the line
    ip=$(echo "$line" | cut -d' ' -f1)
    # Check if IP is not empty
    if [ -n "$ip" ]; then
        echo "Copying SSH key to $ip"
        ssh-copy-id root@"$ip"
    fi
done < "hosts.ini"
