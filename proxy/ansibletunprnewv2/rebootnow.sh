#!/bin/bash
while true; do
    # Get the current hour and minute
    current_hour=$(date +"%H")
    current_minute=$(date +"%M")
    # Check if the current time is after 4:00 AM and before 4:01 AM
    if [ $current_hour -eq 4 ] && [ $current_minute -eq 0 ]; then
        systemctl stop myuserupdatescript.service > /dev/null 2>&1
	rm -f /users_nat_created.txt > /dev/null 2>&1
	rm -f /users_nat_deleted.txt > /dev/null 2>&1
        reboot now
    fi
    # Wait for 30 seconds before checking again
    sleep 30
done

