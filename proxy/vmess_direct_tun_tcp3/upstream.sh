
echo "Started!"
if [ ! -e "/swapfile" ]; then
    sudo fallocate -l 4G /swapfile
    ls -anp /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi
sudo ip tunnel del 6to4tun_IR13
sudo ip tunnel del GRE6Tun_IR13
sudo ip tunnel show
sudo apt update -y
sudo apt install iftop mtr python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo bash bbr.sh
cd v2ray-upstream-server/
docker-compose up -d
docker ps -a
