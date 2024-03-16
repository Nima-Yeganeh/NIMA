
echo "Started!"
sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release iotop iftop mtr python3 docker-compose python3-pip -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker rm -f $(sudo docker ps -q)
cd utils
sudo bash bbr.sh
cd ..
cd v2ray-caddy-cdn
docker-compose up -d
python3 vmess.py
