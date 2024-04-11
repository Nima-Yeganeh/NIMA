
echo "Started!"
sudo ip tunnel show
cd v2ray-upstream-server/
docker-compose up -d
docker ps -a
