
echo "Started!"
git pull
sudo ip addr add 172.16.1.2/32 dev lo
ip addr show lo
if [ ! -e "/swapfile" ]; then
    sudo fallocate -l 4G /swapfile
    ls -anp /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi
sudo apt update -y
sudo apt install iftop mtr net-tools python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release docker-compose docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
cd utils
sudo bash bbr.sh
cd ..
git pull
sudo docker rm -f v2ray-upstream-server_v2ray_1 v2ray-bridge-server_v2ray_1
cd v2new/v2ray-upstream-server/
docker-compose up -d
cd ..
cd ..
cd v2new/v2ray-bridge-server/
docker-compose up -d
docker ps -a
cd ..
cd ..
python3 vmess_for_bridge.py

