#!/bin/bash

# Log file path
log_file="dns_logs.txt"

# Configs
zuser="admin"
zdomain="test.zmodinso.ir"
zhostname="srv1"
zcheckport1=35011
zcheckport2=35021
zchecktimeout=4
zns1="ns1.modinso.ir"
zns2="ns2.modinso.ir"
zdnsttl=60

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

# Function to check if IP address can be pinged and ports $zcheckport1 and $zcheckport2 are open
check_ip_ports() {
    local ip=$1
    local max_attempts=4
    local attempt=1
    
    # Retry up to max_attempts
    while [ $attempt -le $max_attempts ]; do
        if ping -c 1 -W $zchecktimeout "$ip" &>/dev/null; then
            if nc -z -w $zchecktimeout "$ip" $zcheckport1 &>/dev/null && nc -z -w $zchecktimeout "$ip" $zcheckport2 &>/dev/null; then
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
    if ! v-list-dns-records $zuser $zdomain | grep "$ip" &>/dev/null; then
        v-add-dns-record $zuser $zdomain $zhostname a "$ip" 1 $ip_number
    fi
}

# Function to check for existing DNS records excluding the current IP and delete them
check_existing_dns_records() {
    local ip=$1
    local dns_records=()
    local records_count=$(v-list-dns-records $zuser $zdomain | grep "$zhostname.*A" | grep -v "$ip" | wc -l)
    
    if [ "$records_count" -gt 0 ]; then
        while IFS= read -r line; do
            dns_records+=("$line")
        done < <(v-list-dns-records $zuser $zdomain | grep "$zhostname.*A" | grep -v "$ip" | awk '{print $1}')
        
        echo "Existing DNS Records for $zhostname A (excluding $ip):"
        printf '%s\n' "${dns_records[@]}"
        
        # Delete existing DNS records
        for record in "${dns_records[@]}"; do
            v-delete-dns-record $zuser $zdomain "$record"
        done
    fi
}

# Function to check if an IP address is valid
is_valid_ip() {
    local ip=$1
    if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        return 0
    else
        return 1
    fi
}

# Function to delete DNS record
zdelete_dns_record() {
    local id="$1"
    v-delete-dns-record $zuser $zdomain "$id"
}

# Loop until a valid public IP address is obtained
while true; do
    public_ip=$(curl -s ifconfig.me)
    if [[ -z $public_ip ]]; then
        echo "Failed to retrieve public IP. Trying again..."
    elif ! is_valid_ip $public_ip; then
        echo "Invalid public IP format: $public_ip. Trying again..."
    else
        echo "Public IP address obtained: $public_ip"
        break
    fi
    sleep 1
done

v-delete-dns-domain $zuser $zdomain >/dev/null 2>&1
v-add-dns-domain $zuser $zdomain "$public_ip" $zns1 $zns2
v-change-dns-domain-ttl $zuser $zdomain $zdnsttl
# v-list-dns-domains $zuser

# Array of services
services=("www" "ftp" "imap" "mail" "smtp" "pop" "spf")

# Loop through services
for service in "${services[@]}"; do
    # Get DNS records for the service
    dns_records=$(v-list-dns-records $zuser $zdomain | grep "$service")

    # Check if there are any records
    if [ -n "$dns_records" ]; then
        # Loop through each line of DNS records
        while IFS= read -r line; do
            # Get the first column (ID)
            id=$(echo "$line" | awk '{print $1}')

            # Delete DNS record
            zdelete_dns_record "$id"
        done <<< "$dns_records"
    fi
done

# Run the v-list-firewall command and filter out unwanted lines
# filtered_output=$(v-list-firewall | grep -v 'ACCEPT.*ICMP.*0' | grep -v 'ACCEPT.*TCP.*22' | grep -v 'ACCEPT.*UDP.*53' | grep -v 'ACCEPT.*TCP.*8083' | grep ACCEPT)
filtered_output=$(v-list-firewall | grep -v 'ACCEPT.*ICMP.*0' | grep -v 'ACCEPT.*TCP.*22' | grep -v 'ACCEPT.*UDP.*53' | grep ACCEPT)

# Check if the filtered output is not empty
if [ -n "$filtered_output" ]; then
    # Iterate over each line of the filtered output
    while IFS= read -r line; do
        # Extract the first column as rule_id
        rule_id=$(echo "$line" | awk '{print $1}')
        # Execute the v-delete-firewall-rule command with the extracted rule_id
        v-delete-firewall-rule "$rule_id"
    done <<< "$filtered_output"
fi

# Execute the command to list cron jobs for user admin and filter for backup
jobs=$(v-list-cron-jobs admin | grep backup)

# Check if there are any jobs found
if [ -n "$jobs" ]; then
    # Loop through each line of the result
    while IFS= read -r line; do
        # Extract the first column as job_id
        job_id=$(echo "$line" | awk '{print $1}')
        # Execute the command to delete the cron job
        v-delete-cron-job admin "$job_id" >/dev/null 2>&1
        # echo "Deleted cron job with ID: $job_id"
    done <<< "$jobs"
fi

# Execute the command and store the result in a variable
result=$(v-list-user-backups admin | grep tar)

# Check if the result is not empty
if [ -n "$result" ]; then
    # Loop through each line in the result
    while IFS= read -r line; do
        # Extract the first column as backup_file_name
        backup_file_name=$(echo "$line" | awk '{print $1}')
        
        # Execute the delete command
        v-delete-user-backup admin "$backup_file_name"
        
        # echo "Backup $backup_file_name deleted."
    done <<< "$result"
fi

# Main loop to run the script forever
while true; do
    # Read IP addresses from file
    ip_addresses=()
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
            echo "Ports $zcheckport1 and $zcheckport2 closed for IP address: $ip"
        else
            echo "Ping to IP address $ip failed after $max_attempts attempts"
        fi

        # Sleep for 10 seconds before the next iteration
        sleep 10
    done
    
    # Sleep for 1 seconds before the next iteration
    sleep 1
done

