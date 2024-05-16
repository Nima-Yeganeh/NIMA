#!/bin/bash

ZGITPATH="/nima/proxy/ansibletunprnewv2"
SWAPFILE="/swapfile"
SWAPSIZE="2G"

# Check if /swapfile already exists
if [ ! -f "$SWAPFILE" ]; then
    sudo fallocate -l $SWAPSIZE $SWAPFILE
    sudo chmod 600 $SWAPFILE
    sudo mkswap $SWAPFILE
    sudo swapon $SWAPFILE
    echo "$SWAPFILE none swap sw 0 0" | sudo tee -a /etc/fstab > /dev/null
fi

sudo apt update -y > /dev/null 2>&1

# sudo apt install docker-compose iftop iotop mtr htop mtr screen traceroute iptables-persistent net-tools socat python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release -y >/dev/null 2>&1
sudo apt install docker-compose -y >/dev/null 2>&1
sudo apt install iftop -y >/dev/null 2>&1
sudo apt install iotop -y >/dev/null 2>&1
sudo apt install mtr -y >/dev/null 2>&1
sudo apt install htop -y >/dev/null 2>&1
sudo apt install screen -y >/dev/null 2>&1
sudo apt install traceroute -y >/dev/null 2>&1
sudo apt install iptables-persistent -y >/dev/null 2>&1
sudo apt install net-tools -y >/dev/null 2>&1
sudo apt install socat -y >/dev/null 2>&1
sudo apt install python3 -y >/dev/null 2>&1
sudo apt install python3-pip -y >/dev/null 2>&1
sudo apt install apt-transport-https -y >/dev/null 2>&1
sudo apt install ca-certificates -y >/dev/null 2>&1
sudo apt install curl -y >/dev/null 2>&1
sudo apt install gnupg -y >/dev/null 2>&1
sudo apt install lsb-release -y >/dev/null 2>&1

echo "1" > /proc/sys/net/ipv4/ip_forward
echo "120" > /proc/sys/net/ipv4/tcp_keepalive_time

echo "unset HISTFILE" | sudo tee -a /etc/profile > /dev/null
echo "export HISTSIZE=0" | sudo tee -a /etc/bash.bashrc > /dev/null

sudo timedatectl set-timezone Asia/Tehran

sudo cp -f $ZGITPATH/fwsave.sh /fwsave.sh

sudo bash /fwsave.sh > /dev/null 2>&1

public_ip=$(curl -s ifconfig.me)

ipv4_address=$(ifconfig enp1s0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
if [ -z "$ipv4_address" ]; then
    ipv4_address=$(ip -o -4 addr show enp1s0 | awk '{print $4}' | cut -d'/' -f1)
fi

sudo cp -f $ZGITPATH/bbr.sh /bbr.sh
sudo cp -f $ZGITPATH/vps_v2ray_up.conf /vps_v2ray_up.conf
sudo cp -f $ZGITPATH/vps_v2ray_br.conf /vps_v2ray_br.conf
sudo cp -f $ZGITPATH/vps_docker_compose.yml /docker-compose.yml
sed -i "s/PUBLICIPADDR/$ipv4_address/g" /vps_v2ray_br.conf
sudo cp -f $ZGITPATH/nat_template.sh /nat_template.sh
sed -i "s/PUBLICIPADDR/$ipv4_address/g" /nat_template.sh

sudo cp -f $ZGITPATH/rebootnow.sh /etc/rebootnow.sh
sudo cp -f $ZGITPATH/httpconfignow.sh /etc/httpconfignow.sh
sudo cp -f $ZGITPATH/httpsconfignow.sh /etc/httpsconfignow.sh

echo $ipv4_address > /serverip.txt
sudo cp -f $ZGITPATH/update_user_nat_config_one_vps_mode.sh /update_user_nat_config.sh
sudo cp -f $ZGITPATH/myuserupdatescript.service /etc/myuserupdatescript.service

# Define the service file name
SERVICE_FILE="myrebootscript.service"

# Copy the service file to systemd directory
sudo cp -f "$ZGITPATH/$SERVICE_FILE" /etc/systemd/system/

# Reload systemd daemon to reflect changes
sudo systemctl daemon-reload > /dev/null 2>&1

# Enable the service to start on boot
sudo systemctl enable "$SERVICE_FILE" > /dev/null 2>&1

# Start the service
sudo systemctl start "$SERVICE_FILE" > /dev/null 2>&1

# Define the service file name
SERVICE_FILE="myhttpscript.service"

# Copy the service file to systemd directory
sudo cp -f "$ZGITPATH/$SERVICE_FILE" /etc/systemd/system/

# Reload systemd daemon to reflect changes
sudo systemctl daemon-reload > /dev/null 2>&1

# Enable the service to start on boot
sudo systemctl enable "$SERVICE_FILE" > /dev/null 2>&1

# Start the service
sudo systemctl start "$SERVICE_FILE" > /dev/null 2>&1

# Define the service file name
SERVICE_FILE="myhttpsscript.service"

# Copy the service file to systemd directory
sudo cp -f "$ZGITPATH/$SERVICE_FILE" /etc/systemd/system/

# Reload systemd daemon to reflect changes
sudo systemctl daemon-reload > /dev/null 2>&1

# Enable the service to start on boot
sudo systemctl enable "$SERVICE_FILE" > /dev/null 2>&1

# Start the service
sudo systemctl start "$SERVICE_FILE" > /dev/null 2>&1

sudo bash /bbr.sh > /dev/null 2>&1

docker rm -f $(docker ps -aq) > /dev/null 2>&1
sudo docker-compose up -d

sudo bash /nat_template.sh > /dev/null 2>&1
sudo bash /fwsave.sh > /dev/null 2>&1

# Define the service file name
SERVICE_FILE="myuserupdatescript.service"

# Copy the service file to systemd directory
sudo cp -f "$ZGITPATH/$SERVICE_FILE" /etc/systemd/system/

# Reload systemd daemon to reflect changes
sudo systemctl daemon-reload > /dev/null 2>&1

# Enable the service to start on boot
sudo systemctl enable "$SERVICE_FILE" > /dev/null 2>&1

# Stop the service
sudo systemctl stop "$SERVICE_FILE" > /dev/null 2>&1

# Start the service
sudo systemctl start "$SERVICE_FILE" > /dev/null 2>&1

