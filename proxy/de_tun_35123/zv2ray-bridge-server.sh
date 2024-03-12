

sleeptime=0
echo "Started!"
cd v2new/v2ray-bridge-server/
ls -anp
docker-compose up -d
docker ps -a
cd ..
cd ..
python3 vmess_for_bridge.py
ls -anp

