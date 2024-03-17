
echo "Started!"
git pull
sudo ip addr add 172.16.1.2/32 dev lo
ip addr show lo
sudo apt install iftop mtr -y
if [ ! -e "/swapfile" ]; then
    sudo fallocate -l 4G /swapfile
    ls -anp /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi
sudo apt update -y
sudo apt install python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release docker docker-compose docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
cd utils
sudo bash bbr.sh
cd ..
sudo bash zrestart_v2ray.sh

