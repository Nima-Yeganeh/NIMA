
echo "Started!"
sudo bash zupdate_nameservers_org.sh
sudo docker rm -f $(sudo docker ps -q)
cd utils
sudo bash bbr.sh
cd ..
cd v2new/v2ray-bridge-server/
ls -anp
docker-compose up -d
docker ps -a
sudo bash info.sh
cd ..
cd ..
ls -anp
