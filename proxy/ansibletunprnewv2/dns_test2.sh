#!/bin/bash

# Execute the command to list cron jobs for user admin and filter for backup
jobs=$(v-list-cron-jobs admin | grep backup)

# Check if there are any jobs found
if [ -n "$jobs" ]; then
    # Loop through each line of the result
    while IFS= read -r line; do
        # Extract the first column as job_id
        job_id=$(echo "$line" | awk '{print $1}')
        # Execute the command to delete the cron job
        v-delete-cron-job admin "$job_id"
        echo "Deleted cron job with ID: $job_id"
    done <<< "$jobs"
else
    echo "No backup cron jobs found for user admin."
fi
