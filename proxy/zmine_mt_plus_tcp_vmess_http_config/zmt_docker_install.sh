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

