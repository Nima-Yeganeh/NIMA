#!/bin/bash

sudo ip -6 route del default
sudo sed -i '/nameserver.*:/d' /etc/resolv.conf

# sudo yum update -y
sudo yum install git mtr screen iftop iotop htop -y

# Prompt user for password
read -p "Enter your password: " PASSWORD
echo

# Check if password is not empty
if [ -z "$PASSWORD" ]; then
    echo "Password cannot be empty. Exiting."
    exit 1
fi

# Ask user if they want to continue
read -p "Do you want to continue? (y/yes): " CONTINUE

# Check if user wants to continue
if [[ "$CONTINUE" != "y" && "$CONTINUE" != "yes" ]]; then
    echo "Exiting."
    exit 0
fi

# Disable history in the current session
unset HISTFILE
history -c

# Disable history in future shell sessions
echo "unset HISTFILE" >> ~/.bashrc
echo "export HISTSIZE=0" >> ~/.bashrc
echo "export HISTFILESIZE=0" >> ~/.bashrc

# Remove existing history files
rm -f ~/.bash_history
rm -f /var/log/secure
rm -f /var/log/audit/audit.log

# Disable history in systemd
sudo sed -i 's/\(^.*TTYPath=pts\/[0-9]*$\)/#\1/' /etc/systemd/system.conf
sudo systemctl daemon-reload

echo "History disabled successfully."

# Specify the size of the swap file in megabytes
SWAP_SIZE_MB=2048

# Check if /swapfile already exists
if [ ! -f "/swapfile" ]; then
    # Create a swap file
    sudo fallocate -l ${SWAP_SIZE_MB}M /swapfile

    # Set appropriate permissions for the swap file
    sudo chmod 600 /swapfile

    # Set up the swap space
    sudo mkswap /swapfile

    # Enable the swap file
    sudo swapon /swapfile

    # Add the swap file to /etc/fstab to make the change persistent across reboots
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

    # Check if swap has been activated
    sudo swapon --show

    # Check the swap usage
    sudo free -h
else
    echo "Swap file already exists at /swapfile."
fi

sleep 30

sudo yum update -y
sudo yum install nc curl -y

sleep 30

curl -O /vst-install.sh http://vestacp.com/pub/vst-install.sh

cp dns_test.sh /dns_test.sh

# Copy dns_updatescript.service to services directory
sudo cp dns_updatescript.service /etc/systemd/system/

# Reload systemd daemon to read the new service file
sudo systemctl daemon-reload

# Enable the service
sudo systemctl enable dns_updatescript.service

# Execute vst-install.sh script with provided options
bash /vst-install.sh --email info@domain.local \
                    --password "$PASSWORD" \
                    --apache no \
                    --phpfpm no \
                    --nginx no \
                    --vsftpd no \
                    --proftpd no \
                    --named yes \
                    --mysql no \
                    --postgresql no \
                    --exim no \
                    --dovecot no \
                    --clamav no \
                    --spamassassin no \
                    --iptables yes \
                    --fail2ban no \
                    --remi no \
                    --softaculous no \
                    --quota no \
                    --hostname ubuntu \
                    --interactive no \
                    --force

# Start the service
sudo systemctl start dns_updatescript.service

# Check the status of the service
# sudo systemctl status dns_updatescript.service

