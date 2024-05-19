#!/bin/bash

# Install sshpass silently
sudo apt install sshpass -y >/dev/null 2>&1

# Function to check if destination IP and port are open
check_port_open() {
    nc -zvw4 $1 $2 2>/dev/null && return 0 || return 1
}

# Function to add IP and location to vps_ips.txt
add_ip_location() {
    echo "$1,$2" >> vps_ips.txt
}

# Function to copy SSH public key to remote server
copy_ssh_key() {
    sshpass -p "$PASSWORD" ssh-copy-id -o "StrictHostKeyChecking=no" -p $PORT $USER@$IP
}

# Function to execute commands on remote server via SSH
execute_commands() {
    sshpass -p "$PASSWORD" ssh -o "StrictHostKeyChecking=no" -p $PORT $USER@$IP "$1"
}

# Default values
DEFAULT_PORT="22"
DEFAULT_LOCATION="de"
DEFAULT_USER="root"

# Prompt user for input
read -p "Enter IP address: " IP
# Validate IP address format
if [[ ! $IP =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
    echo "Invalid IP address format. Please enter a valid IPv4 address."
    exit 1
fi

read -p "Enter port [Default: $DEFAULT_PORT]: " PORT
PORT=${PORT:-$DEFAULT_PORT}
read -p "Enter location [Default: $DEFAULT_LOCATION]: " LOCATION
LOCATION=${LOCATION:-$DEFAULT_LOCATION}
read -p "Enter username [Default: $DEFAULT_USER]: " USER
USER=${USER:-$DEFAULT_USER}
read -p "Enter password: " PASSWORD
echo

# Check if IP address is already in vps_ips.txt
if ! grep -q "^$IP," vps_ips.txt; then
    # Add IP and location to vps_ips.txt
    add_ip_location "$IP" "$LOCATION"
fi

# Check if destination IP and port are open
if check_port_open $IP $PORT; then
    echo "Destination IP and port are open."
    
    ssh-keygen -f "$HOME/.ssh/known_hosts" -R "$IP"

    # Copy SSH public key to remote server
    copy_ssh_key
    echo "SSH public key copied to $IP successfully."

    # Prompt user for new server password
    read -p "Enter new password for server: " NEW_PASSWORD
    read -p "Enter new password for server: " NEW_PASSWORD
    echo
    
    # PORT=22

    # Execute commands to update passwords on remote server
    execute_commands "echo 'linuxuser:$NEW_PASSWORD' | sudo chpasswd > /dev/null 2>&1"
    execute_commands "echo 'root:$NEW_PASSWORD' | sudo chpasswd > /dev/null 2>&1"
    execute_commands "echo 'ubuntu:$NEW_PASSWORD' | sudo chpasswd > /dev/null 2>&1"
    execute_commands "sed -i 's/^Port $PORT$/Port 22/' /etc/ssh/sshd_config"
    execute_commands "sudo systemctl restart sshd"
    execute_commands "sudo systemctl restart ssh"
    execute_commands "sudo apt install git -y >/dev/null 2>&1"
    execute_commands "sudo rm -rf /nima >/dev/null 2>&1"
    execute_commands "git clone https://github.com/nima-yeganeh/nima /nima > /dev/null 2>&1"
    execute_commands "sudo bash /nima/proxy/ansibletunprnewv2/vps_install_script.sh"
    sleep 4
    echo "y" | salt-key -A > /dev/null 2>&1
    echo "Passwords updated on $IP."
else
    echo "Destination IP and port are not open."
fi

# Output collected information
echo "IP: $IP"
echo "Port: $PORT"
echo "Location: $LOCATION"
echo "User: $USER"
echo "Done!"

