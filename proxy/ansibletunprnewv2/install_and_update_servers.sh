#!/bin/bash

# Check if hosts.ini exists
if [ ! -f "hosts.ini" ]; then
    echo "hosts.ini file not found!"
    exit 1
fi

bash configupdate.sh

# Read each line of hosts.ini and execute ssh-copy-id for each IP
while IFS= read -r line; do
    # Extract IP address from the line
    ip=$(echo "$line" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")
    # Check if IP is not empty
    if [ -n "$ip" ]; then
        echo "Copying SSH key to $ip"
        ssh-copy-id root@"$ip" >/dev/null 2>&1
        # ssh-copy-id root@"$ip"
    fi
done < "hosts.ini"

ansible -i hosts.ini -u root -m ping all
ansible-playbook -i hosts.ini -u root hostupdate.yml

