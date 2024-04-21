#!/bin/bash

# Check if remotehosts.ini exists
if [ ! -f "remotehosts.ini" ]; then
    echo "remotehosts.ini file not found!"
    exit 1
fi

# Read each line of remotehosts.ini and execute ssh-copy-id for each IP
while IFS= read -r line; do
    # Extract IP address from the line
    ip=$(echo "$line" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")
    # Check if IP is not empty
    if [ -n "$ip" ]; then
        echo "Copying SSH key to $ip"
        ssh-copy-id root@"$ip"
    fi
done < "remotehosts.ini"
