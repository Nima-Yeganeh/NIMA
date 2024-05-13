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

# Function to read IP addresses from dns_host_ip_addr.txt and store them in the array
read_ip_addresses() {
    while IFS= read -r line; do
        # Check if the line contains an IP address
        if [[ $line =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
            # Add the IP address to the array
            ip_addresses+=("$line")
        fi
    done < dns_host_ip_addr.txt
}

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

# Function to add DNS record if not exists
add_dns_record() {
    local ip=$1
    local ip_number=$2
    echo "Adding DNS record for IP address $ip_number: $ip"
    if ! v-list-dns-records admin test.zmodinso.ir | grep "$ip" &>/dev/null; then
        v-add-dns-record admin test.zmodinso.ir srv1 a "$ip" 1 $ip_number
    fi
}

# Function to check for existing DNS records excluding the current IP and delete them
check_existing_dns_records() {
    local ip=$1
    local dns_records=()
    local records_count=$(v-list-dns-records admin test.zmodinso.ir | grep "srv1.*A" | grep -v "$ip" | wc -l)
    
    if [ "$records_count" -gt 0 ]; then
        while IFS= read -r line; do
            dns_records+=("$line")
        done < <(v-list-dns-records admin test.zmodinso.ir | grep "srv1.*A" | grep -v "$ip" | awk '{print $1}')
        
        echo "Existing DNS Records for srv1 A (excluding $ip):"
        printf '%s\n' "${dns_records[@]}"
        
        # Delete existing DNS records
        for record in "${dns_records[@]}"; do
            v-delete-dns-record admin test.zmodinso.ir "$record"
        done
    fi
}

# Main loop to run the script forever
while true; do
    # Read IP addresses from file
    read_ip_addresses
    
    # Loop through each IP address in the array and check ports
    for i in "${!ip_addresses[@]}"; do
        ip=${ip_addresses[$i]}
        result=$(check_ip_ports "$ip")
        
        # Check the result and echo the IP address if ping and port checks are successful
        if [ "$result" = "ok" ]; then
            echo "IP address: $ip"
            add_dns_record "$ip" "$((i+1000))"
            check_existing_dns_records "$ip"
        elif [ "$result" = "ports_closed" ]; then
            echo "Ports 35011 and 35021 closed for IP address: $ip"
        else
            echo "Ping to IP address $ip failed after $max_attempts attempts"
        fi

        # Sleep for 1 seconds before the next iteration
        sleep 1
    done
    
    # Sleep for 1 seconds before the next iteration
    sleep 1
done

