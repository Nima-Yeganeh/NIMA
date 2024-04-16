#!/bin/bash

echo "" > telpr.txt

# Check if hosts.ini exists
if [ ! -f "hosts.ini" ]; then
    echo "hosts.ini file not found!"
    exit 1
fi

# Read each line of hosts.ini and echo the URL format
while IFS= read -r line; do
    # Extract IP address from the line
    ip=$(echo "$line" | cut -d' ' -f1)
    # Check if IP is not empty
    if [ -n "$ip" ]; then
        echo "https://t.me/proxy?server=$ip&port=35123&secret=ddd0d6e111bada5511fcce9584deadbeef" >> telpr.txt
        echo "" >> telpr.txt
    fi
done < "hosts.ini"

cat telpr.txt
