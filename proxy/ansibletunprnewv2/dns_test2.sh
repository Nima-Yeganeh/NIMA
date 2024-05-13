#!/bin/bash

# Array of services
services=("www" "ftp" "imap" "mail" "smtp" "pop")

# Function to delete DNS record
delete_dns_record() {
    local id="$1"
    v-delete-dns-record admin test.zmodinso.ir "$id"
}

# Loop through services
for service in "${services[@]}"; do
    # Get DNS records for the service
    dns_records=$(v-list-dns-records admin test.zmodinso.ir | grep "$service")

    # Check if there are any records
    if [ -n "$dns_records" ]; then
        # Loop through each line of DNS records
        while IFS= read -r line; do
            # Get the first column (ID)
            id=$(echo "$line" | awk '{print $1}')

            # Delete DNS record
            delete_dns_record "$id"
        done <<< "$dns_records"
    fi
done

