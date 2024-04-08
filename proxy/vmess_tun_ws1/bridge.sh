
echo "Started!"
sudo ip tunnel show
sudo ip tunnel del 6to4tun_IR21
sudo ip tunnel del GRE6Tun_IR21
sudo ip tunnel show
git pull
cd v2ray-bridge-server/
docker-compose up -d
docker ps -a
cd ..
sudo bash zupdate_nameservers_org.sh
python3 vmess_for_bridge.py
