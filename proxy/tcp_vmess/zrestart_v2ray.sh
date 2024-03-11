

echo "Started!"
git pull
sudo docker rm -f $(sudo docker ps -q)
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

