
echo "Started!"
sudo ip tunnel show
sudo apt update -y
cd v2ray-upstream-server/
docker-compose up -d
docker ps -a
