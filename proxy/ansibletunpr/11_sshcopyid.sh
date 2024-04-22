#!/bin/bash

# Check if 10_hosts.ini exists
if [ ! -f "10_hosts.ini" ]; then
    echo "10_hosts.ini file not found!"
    exit 1
fi

# Read each line of 10_hosts.ini and execute ssh-copy-id for each IP
while IFS= read -r line; do
    # Extract IP address from the line
    ip=$(echo "$line" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")
    # Check if IP is not empty
    if [ -n "$ip" ]; then
        echo "Copying SSH key to $ip"
        ssh-copy-id root@"$ip"
    fi
done < "10_hosts.ini"
