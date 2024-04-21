#!/bin/bash

# Define file paths
expirenattempfile="zexpirenattempfile.txt"
cleanupnatfile="zcleanupnat.txt"
expirenatconfighistory="zexpirenatconfighistory.txt"
expirenatconfig="zexpirenatconfig.txt"

# Get the current date
current_date=$(date +%Y-%m-%d)

# Grep lines less than or equal to the current date from the file and then filter based on the date
grep -E "^[0-9]{4}-[0-9]{2}-[0-9]{2} .*" $expirenatconfig | awk -v current_date="$current_date" '$1 <= current_date' > $expirenattempfile
rm -f $cleanupnatfile
touch $cleanupnatfile

# Use grep to filter lines
# Check if the filtered result is not in zexpirenatconfighistory.txt
grep -vFf "$expirenatconfighistory" "$expirenattempfile" | grep nat > "$cleanupnatfile"
cat "$cleanupnatfile" >> $expirenatconfighistory
rm -f $expirenattempfile
cat $cleanupnatfile | cut -d ' ' -f 2- | grep nat > $expirenattempfile
cat $expirenattempfile > $cleanupnatfile

# Ansible
# Check if the cleanupnatfile exists and has more than 0 lines
if [ -s "$cleanupnatfile" ]; then
    echo "NAT Config Found >> Wait for ansible to remove..."
    ansible-playbook -i hosts.ini -u root natconfigremove.yml
    echo "Done!"
else
    echo "No NAT Config to Remove"
fi

# rm -f $cleanupnatfile
# touch $cleanupnatfile
