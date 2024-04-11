
echo "Started!"
sudo ip addr add 172.16.255.255/32 dev lo
if [ ! -e "/swapfile" ]; then
    sudo fallocate -l 4G /swapfile
    ls -anp /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi
if grep -q "^127.0.0.1[[:space:]]*$hostname$" /etc/hosts; then
    echo "Hostname $hostname already exists in /etc/hosts."
else
    echo "127.0.0.1 $hostname" | sudo tee -a /etc/hosts
    echo "Hostname $hostname added to /etc/hosts."
fi
sudo apt update -y
sudo apt install iftop mtr python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo bash bbr.sh
cd v2ray-upstream-server/
docker-compose up -d
cd ..
cd v2ray-bridge-server/
docker-compose up -d
cd ..
cd v2ray-bridge-server/
docker-compose up -d
cd ..
docker ps -a
python3 vmess_for_bridge.py
python3 vmess_for_bridge2.py
