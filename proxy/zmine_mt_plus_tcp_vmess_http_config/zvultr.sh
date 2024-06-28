sudo ip addr add 10.255.255.254/32 dev lo
ip addr show lo
swapoff -a
rm -f /swapfile
sudo lsb_release -a
if [ ! -e "/swapfile" ]; then
    sudo fallocate -l 4G /swapfile
    ls -anp /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi
sudo apt update -y
sudo apt install iftop mtr screen net-tools docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker ps -a
sudo docker run --cap-add=NET_ADMIN --device=/dev/net/tun -d --name mikrotik -p 5443:443 --restart always -ti nimaxnimax/dockermtnimaxsectestlab
sudo docker ps -a
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
docker ps -a

