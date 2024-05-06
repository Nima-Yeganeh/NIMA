#!/bin/bash

activeusers="activeusers.txt"
rm -f $activeusers
activeuserports="activeuserports.txt"

# Get yesterday's date in YYYY-MM-DD format
yesterday_date=$(date -d "yesterday" +'%Y-%m-%d')

# Read the userdb.txt file line by line
while IFS=',' read -r -a fields; do
    # Extract the 7th column (startdate)
    column_7="${fields[6]}"
    column_5="${fields[4]}"

    # Compare the startdate with yesterday's date
    if [[ "$column_7" > "$yesterday_date" ]]; then
        # Join the fields array with commas and echo the line
        echo "$(IFS=','; echo "${fields[*]}")" >> $activeusers
        echo $column_5 >> $activeuserports
    fi
done < "userdb.txt"
