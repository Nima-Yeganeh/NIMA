#!/bin/bash

# Define the file path
file="natconfigtunneloptions.txt"

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File $file not found."
    exit 1
fi

# Read the file line by line and store server names and numbers in separate arrays
server_names=()
numbers=()
while IFS=, read -r server_name number; do
    server_names+=("$server_name")
    numbers+=("$number")
done < "$file"

# Display the server names and numbers with corresponding indices
echo "Server List:"
for i in "${!server_names[@]}"; do
    echo "(Number: ${numbers[$i]}). ${server_names[$i]} "
done

# Ask user to select a server
read -p "Enter the number corresponding to the server you want to select: " choice

# Set default choice to 1 if user doesn't input anything
choice="${choice:-1}"

# Check if the choice is valid
if [[ ! "$choice" =~ ^[0-9]+$ || "$choice" -lt 1 ]]; then
    echo "Invalid selection."
    exit 1
fi

echo "You selected server: $choice"

# Ask user to select TCP or WebSocket
read -p "Select TCP (t) or WebSocket (w) [default: WS]: " protocol

# Set default protocol to TCP if user didn't choose
protocol="${protocol:-w}"

# Check if the protocol choice is valid
if [ "$protocol" != "t" ] && [ "$protocol" != "w" ]; then
    echo "Invalid protocol selection. Defaulting to TCP."
    protocol="w"
fi

# Determine port number based on protocol choice
if [ "$protocol" == "t" ]; then
    port=$((8000 + $choice))
    protocoltype="tcp"
    echo "You selected >> Protocol: $protocoltype, Port: $port"
else
    port=$((7000 + $choice))
    protocoltype="ws"
    echo "You selected >> Protocol: protocoltype, Port: $port"
fi

# Default number of days
default_days=30

# Prompt user for the number of days
read -p "Enter the number of days (default is $default_days): " days

# If days is not provided or not a valid number, set it to the default value
if [[ -z "$days" || ! "$days" =~ ^[0-9]+$ ]]; then
    days=$default_days
fi

# Get current date in YYYY-MM-DD format
current_date=$(date +'%Y-%m-%d')

# Calculate the expiration date
expire_date=$(date -d "$current_date + $days days" +'%Y-%m-%d')

# Output the start date and expiration date
echo $days
echo "Start Date: $current_date"
echo "Expiration Date: $expire_date"

activeusers="activeusers.txt"
rm -f $activeusers
activeuserports="activeuserports.txt"
rm -f $activeuserports

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

# Read the activeuserports.txt file and store ports in an array
mapfile -t active_ports < activeuserports.txt

# Add port numbers 35011 and 35021 to the active_ports array
active_ports+=(35011 35021 35012 35022 35013 35023 35014 35024 35015 35025)

# Generate a random port number between 35001 and 65535, excluding the ports listed in activeuserports.txt
while :
do
    random_port=$((RANDOM % (65535 - 35001 + 1) + 35001))
    if ! [[ " ${active_ports[*]} " =~ " $random_port " ]]; then
        break
    fi
done

echo "Random NAT Port Number: $random_port"

echo "user$random_port,$protocoltype,$days,$choice,$random_port,$current_date,$expire_date,$port" >> userdb.txt

dnsdate=$(date +"%m%d")

dns="cosmicwondersandbeyondcosmicwondersandbeyond${dnsdate}01srv.xyz.cosmicwondersandbeyondcosmicwondersandbeyond.ir"

if [ "$protocoltype" == "tcp" ]; then
    python3 vmessconfig1.py "user$random_port" "$dns" "$random_port"
elif [ "$protocoltype" == "ws" ]; then
    python3 vmessconfig2.py "user$random_port" "$dns" "$random_port"
fi

