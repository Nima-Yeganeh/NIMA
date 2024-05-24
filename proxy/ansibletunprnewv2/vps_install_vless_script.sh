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

sudo ps aux | grep apt | grep -v grep | awk '{print $2}' | xargs -r kill -9
sudo dpkg --configure -a >/dev/null 2>&1
sudo apt update -y > /dev/null 2>&1
sudo dpkg --configure -a >/dev/null 2>&1
sudo apt install iftop -y >/dev/null 2>&1
sudo apt install iotop -y >/dev/null 2>&1
sudo apt install mtr -y >/dev/null 2>&1
sudo apt install htop -y >/dev/null 2>&1
sudo apt install screen -y >/dev/null 2>&1
sudo apt install traceroute -y >/dev/null 2>&1
sudo ps aux | grep apt | grep -v grep | awk '{print $2}' | xargs -r kill -9
sudo dpkg --configure -a >/dev/null 2>&1
sudo apt install net-tools -y >/dev/null 2>&1
sudo apt install apt-transport-https -y >/dev/null 2>&1
sudo apt install ca-certificates -y >/dev/null 2>&1
sudo apt install curl -y >/dev/null 2>&1
sudo apt install gnupg -y >/dev/null 2>&1
sudo apt install lsb-release -y >/dev/null 2>&1
sudo ps aux | grep apt | grep -v grep | awk '{print $2}' | xargs -r kill -9
sudo dpkg --configure -a >/dev/null 2>&1
sudo apt install iftop iotop mtr htop mtr screen traceroute net-tools apt-transport-https ca-certificates curl gnupg lsb-release -y >/dev/null 2>&1

echo "1" > /proc/sys/net/ipv4/ip_forward
echo "120" > /proc/sys/net/ipv4/tcp_keepalive_time

echo "unset HISTFILE" | sudo tee -a /etc/profile > /dev/null
echo "export HISTSIZE=0" | sudo tee -a /etc/bash.bashrc > /dev/null

sudo timedatectl set-timezone Asia/Tehran

# sudo cp -f $ZGITPATH/fwsave.sh /fwsave.sh

# sudo bash /fwsave.sh > /dev/null 2>&1

public_ip=$(curl -s ifconfig.me)

# ipv4_address=$(ifconfig enp1s0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
# if [ -z "$ipv4_address" ]; then
#     ipv4_address=$(ip -o -4 addr show enp1s0 | awk '{print $4}' | cut -d'/' -f1)
# fi

ipv4_address=$(ifconfig enp1s0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
[ -z "$ipv4_address" ] && ipv4_address=$(ifconfig eth0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
[ -z "$ipv4_address" ] && ipv4_address=$(ifconfig ens3 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
[ -z "$ipv4_address" ] && ipv4_address=$(ifconfig enp3s0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
echo $ipv4_address

sudo cp -f $ZGITPATH/rebootnow.sh /etc/rebootnow.sh

echo $ipv4_address > /serverip.txt

curl -L https://bootstrap.saltstack.com -o /install_salt.sh > /dev/null 2>&1
sudo bash /install_salt.sh > /dev/null 2>&1
result="master: $(head -n 1 /nima/proxy/ansibletunprnewv2/saltmaster.txt)"; grep -qxF "$result" /etc/salt/minion || echo "$result" | sudo tee -a /etc/salt/minion
sudo systemctl restart salt-minion > /dev/null 2>&1

# Define the service file name
SERVICE_FILE="myrebootscript.service"

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

# sudo bash /fwsave.sh > /dev/null 2>&1

sudo ufw disable
sudo systemctl disable ufw
sudo systemctl stop ufw


