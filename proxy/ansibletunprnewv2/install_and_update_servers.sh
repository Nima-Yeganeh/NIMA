#!/bin/bash

# Function to display options
display_options() {
    echo "Options:"
    echo "1. Install and Update"
    echo "2. Docker Update and Restart"
    echo "3. Tunnel Reconfigure and Update on All Hosts"
    echo "4. DNAT Update"
    echo "5. User NAT Update (Expire and Cleanup)"
    echo "6. Create V2RAY User"
    echo "7. Uptime Check on All Hosts"
    echo "8. Exit"
}

# Function to get user input and echo the chosen option
get_user_input() {
    read -p "Enter the number corresponding to your choice: " choice
    case $choice in
        1) install_update;;
        2) docker_update_restart;;
        3) tunnel_reconfig;;
        4) echo "4 DNAT Update";;
        5) echo "5 User NAT Update (Expire and Cleanup)";;
        6) echo "6 Create V2RAY User";;
        7) uptime_check;;
        8) echo "Exiting..."; exit;;
        *) echo "Invalid option!!";;
    esac
}

check_host_ssh_copy() {
    # Check if hosts.ini exists
    if [ ! -f "hosts.ini" ]; then
        echo "hosts.ini file not found!"
        exit 1
    fi
    # Read each line of hosts.ini and execute ssh-copy-id for each IP
    while IFS= read -r line; do
        # Extract IP address from the line
        ip=$(echo "$line" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")
        # Check if IP is not empty
        if [ -n "$ip" ]; then
            echo "Copying SSH key to $ip"
            ssh-copy-id root@"$ip" >/dev/null 2>&1
            # ssh-copy-id root@"$ip"
        fi
    done < "hosts.ini"
}

install_update() {
    check_host_ssh_copy
    bash configupdate.sh
    ansible -i hosts.ini -u root -m ping all
    ansible-playbook -i hosts.ini -u root hostupdate.yml
}

docker_update_restart() {
    # check_host_ssh_copy
    bash configupdate.sh
    # ansible -i hosts.ini -u root -m ping all
    ansible-playbook -i hosts.ini -u root dockerupdate.yml
}

tunnel_reconfig() {
    # check_host_ssh_copy
    bash configupdate.sh
    # ansible -i hosts.ini -u root -m ping all
    ansible-playbook -i hosts.ini -u root tunnelupdate.yml
}

uptime_check() {
    ansible-playbook -i hosts.ini -u root uptime_check.yml
}

# Main script
display_options
get_user_input

