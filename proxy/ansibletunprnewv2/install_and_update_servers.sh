#!/bin/bash

# Function to display options
display_options() {
    echo "Options:"
    echo "1. Install and Update - NAT Update"
    echo "2. Docker Update and Restart"
    echo "3. Tunnel Reconfigure and Update on All Hosts"
    echo "7. Uptime Check on All Hosts"
    echo "8. Update SSH Key"
    echo "9. Change Root Password on All Hosts"
    echo "10. Check Traffic"
    echo "11. Traffic Rate >> Mbps"
    echo "12. NAT Config - 35000"
    echo "21. Generate New User"
    echo "22. Update Users on IR Servers"
    echo "31. Check >> Storage"
    echo "32. Check >> NAT >> Count"
    echo "33. Restart User NAT Service"
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
        12) natconfig35000;;
        21) generate_new_user;;
        22) update_users_on_ir_servers;;
        31) check_storage;;
        32) check_nat_table;;
        33) restart_user_nat_service;;
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
            # ssh-keygen -f "/root/.ssh/known_hosts" -R "$ip"
            ssh-keygen -f "$HOME/.ssh/known_hosts" -R "$ip"
            echo "Copying SSH key to $ip"
            ssh-copy-id -o StrictHostKeyChecking=no -f root@"$ip" >/dev/null 2>&1
            # ssh-copy-id root@"$ip"
        fi
    done < "hosts.ini"
}

install_update() {
    check_host_ssh_copy
    bash configupdate.sh
    ansible -i hosts.ini -u root -m ping all
    ansible-playbook -i hosts.ini -u root hostupdate.yml
    ansible-playbook -i hosts.ini -u root natconfig.yml
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

change_password() {
    # Prompt user for new password
    read -s -p "Enter new password for root user: " new_password
    echo
    # Change root password
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

natconfig35000() {
    bash configupdate.sh
    ansible-playbook -i hosts.ini -u root natconfig.yml
}

update_users_on_ir_servers() {
    ansible-playbook -i hosts.ini -u root nat_user_update.yml
}

generate_new_user() {
    bash user_generate.sh
    update_users_on_ir_servers
}

check_storage() {
    ansible-playbook -i hosts.ini -u root check_storage.yml
}

check_nat_table() {
    ansible-playbook -i hosts.ini -u root check_nat_table.yml
}

restart_user_nat_service() {
    ansible-playbook -i hosts.ini -u root restart_user_nat_service.yml
}

# Main script
display_options
get_user_input

