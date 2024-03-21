
echo "Started!"
if [ ! -e "/swapfile" ]; then
    sudo fallocate -l 4G /swapfile
    ls -anp /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi
sudo apt update -y
sudo apt install screen iftop mtr python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
cd utils
sudo bash bbr.sh
cd ..
sudo docker-compose up -d
sudo docker ps -a
python3 vmess.py
echo "Done!"
