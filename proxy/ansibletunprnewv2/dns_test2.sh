#!/bin/bash

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
        
        echo "Backup $backup_file_name deleted."
    done <<< "$result"
else
    echo "No backup files found."
fi
