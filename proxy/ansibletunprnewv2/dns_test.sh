#!/bin/bash

# Log file path
log_file="dns_logs.txt"

# Function to log messages
log_message() {
    local message="$1"
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $message" >> "$log_file"
}

# Initialize an empty array to store IP addresses
ip_addresses=()

# Read each line from dns_host_ip_addr.txt
while IFS= read -r line; do
    # Check if the line contains an IP address
    if [[ $line =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
        # Add the IP address to the array
        ip_addresses+=("$line")
    fi
done < dns_host_ip_addr.txt

# Function to check if IP address can be pinged and ports 35011 and 35021 are open
check_ip_ports() {
    local ip=$1
    local max_attempts=4
    local attempt=1
    
    # Retry up to max_attempts
    while [ $attempt -le $max_attempts ]; do
        if ping -c 1 -W 4 "$ip" &>/dev/null; then
            if nc -z -w 4 "$ip" 35011 &>/dev/null && nc -z -w 4 "$ip" 35021 &>/dev/null; then
                echo "ok"
                return
            else
                log_message "$ip,port-problem"
                return
            fi
        fi
        attempt=$((attempt + 1))
    done
    
    log_message "$ip,icmp-problem"
    echo "ping_failed"
}

# Loop through each IP address in the array and check ports
for ip in "${ip_addresses[@]}"; do
    result=$(check_ip_ports "$ip")
    
    # Check the result and echo the IP address if ping and port checks are successful
    if [ "$result" = "ok" ]; then
        echo "IP address: $ip"
    elif [ "$result" = "ports_closed" ]; then
        echo "Ports 35011 and 35021 closed for IP address: $ip"
    else
        echo "Ping to IP address $ip failed after $max_attempts attempts"
    fi
done
