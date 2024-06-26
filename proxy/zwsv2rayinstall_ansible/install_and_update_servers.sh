#!/bin/bash

# Function to display options
display_options() {
    echo "Options:"
    echo "1. Install and Update"
    echo "2. Docker Update and Restart"
    echo "7. Uptime Check on All Hosts"
    echo "8. Update SSH Key"
    echo "9. Change Root Password on All Hosts"
    echo "10. Check Traffic"
    echo "11. Traffic Rate >> Mbps"
    echo "99. Exit"
}

# Function to get user input and echo the chosen option
get_user_input() {
    read -p "Enter the number corresponding to your choice: " choice
    case $choice in
        1) install_update;;
        2) docker_update_restart;;
        3) tunnel_reconfig;;
        7) uptime_check;;
        8) check_host_ssh_copy;;
    	9) change_password;;
    	10) check_traffic;;
    	11) traffic_rate;;
        99) echo "Exiting..."; exit;;
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
    ansible -i hosts.ini -u root -m ping all
    ansible-playbook -i hosts.ini -u root hostupdate.yml
}

docker_update_restart() {
    ansible-playbook -i hosts.ini -u root dockerupdate.yml
}

uptime_check() {
    ansible-playbook -i hosts.ini -u root uptime_check.yml
}

change_password() {
    read -s -p "Enter new password for root user: " new_password
    echo
    cat change_root_password.yml | sed "s/9999999999/$new_password/g" > change_root_password_tempfile.yml
    ansible-playbook -i hosts.ini -u root change_root_password_tempfile.yml
    sudo rm -f change_root_password_tempfile.yml    
    echo "Root password changed successfully."
}

check_traffic() {
    ansible-playbook -i hosts.ini -u root check_traffic.yml | grep "packets"
}

traffic_rate() {
    ansible-playbook -i hosts.ini -u root traffic_rate.yml | grep "Mbps"
}

# Main script
display_options
get_user_input

