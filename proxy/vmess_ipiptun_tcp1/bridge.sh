
echo "Started!"
if [ ! -e "/swapfile" ]; then
    sudo fallocate -l 4G /swapfile
    ls -anp /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi
sudo cp service /etc/systemd/system/myscript.service
sudo touch /etc/script.sh 
echo "" > /etc/script.sh
sudo chmod +x /etc/script.sh
sudo systemctl daemon-reload
sudo systemctl enable myscript.service
sudo systemctl start myscript.service
while true; do
    read -p "Enter local IP address: " local_ip
    read -p "Enter remote IP address: " remote_ip
    if [[ ! $local_ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "Error: Invalid local IP address format. Try again."
        continue
    fi
    if [[ ! $remote_ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "Error: Invalid remote IP address format. Try again."
        continue
    fi
    break
done
echo "br" | sudo tee /etc/hostname >/dev/null
hostname br
set hostname br
hostname=$(hostname)
if grep -q "^127.0.0.1[[:space:]]*$hostname$" /etc/hosts; then
    echo "Hostname $hostname already exists in /etc/hosts."
else
    echo "127.0.0.1 $hostname" | sudo tee -a /etc/hosts
    echo "Hostname $hostname added to /etc/hosts."
fi
echo "Local IP: $local_ip"
echo "Remote IP: $remote_ip"
echo "" >> /etc/script11.sh
sudo chmod +x /etc/script11.sh
echo "sudo ip tunnel del 6to4tun_IR11">> /etc/script11.sh
echo "sudo ip tunnel del IPIP6Tun_IR11">> /etc/script11.sh
echo "sudo ip tunnel add 6to4tun_IR11 mode ipip remote $remote_ip local $local_ip">> /etc/script11.sh
echo "sudo ip -6 addr add 2001:2001:2001:11::1/64 dev 6to4tun_IR11">> /etc/script11.sh
echo "sudo ip link set 6to4tun_IR11 mtu 1480">> /etc/script11.sh
echo "sudo ip link set 6to4tun_IR11 up">> /etc/script11.sh
echo "sudo ip -6 tunnel add IPIP6Tun_IR11 mode ipip6 remote 2001:2001:2001:11::2 local 2001:2001:2001:11::1">> /etc/script11.sh
echo "sudo ip addr add 172.16.11.1/30 dev IPIP6Tun_IR11">> /etc/script11.sh
echo "sudo ip link set IPIP6Tun_IR11 mtu 1436">> /etc/script11.sh
echo "sudo ip link set IPIP6Tun_IR11 up">> /etc/script11.sh
sudo bash /etc/script11.sh
sudo cat /etc/script11.sh >> /etc/script.sh
sudo ip tunnel show
git pull
sudo bash zupdate_nameservers_org.sh
sudo apt update -y
sudo apt install iftop mtr python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo bash bbr.sh
sudo bash zupdate_nameservers.sh
cd v2ray-bridge-server/
docker-compose up -d
docker ps -a
cd ..
sudo bash zupdate_nameservers_org.sh
python3 vmess_for_bridge.py
