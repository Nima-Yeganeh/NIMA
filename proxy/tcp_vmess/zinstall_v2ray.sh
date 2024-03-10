

echo "Started!"
sudo apt update -y
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
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
python3 --version
sudo apt update -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y
sudo apt-get update -y
sudo apt install docker docker-compose docker.io -y
sudo apt-get update -y
sudo systemctl start docker
sudo systemctl enable docker
# sudo docker rm -f $(sudo docker ps -q)
cd utils
sudo bash bbr.sh
cd ..
cd v2new/v2ray-upstream-server/
ls -anp
docker-compose up -d
docker ps -a
cd ..
cd ..
ls -anp
cd v2new/v2ray-bridge-server/
ls -anp
docker-compose up -d
docker ps -a
cd ..
cd ..
sudo bash zupdate_nameservers_org.sh
python3 vmess_for_upstream.py
python3 vmess_for_bridge.py
ls -anp

