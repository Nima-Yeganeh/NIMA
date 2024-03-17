
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

