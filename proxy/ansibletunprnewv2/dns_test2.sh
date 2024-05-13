#!/bin/bash

# Run the v-list-firewall command and filter out unwanted lines
filtered_output=$(v-list-firewall | grep -v 'ACCEPT.*ICMP.*0' | grep -v 'ACCEPT.*TCP.*22' | grep -v 'ACCEPT.*UDP.*53' | grep -v 'ACCEPT.*TCP.*8083')

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
