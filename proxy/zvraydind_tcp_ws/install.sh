git pull
sudo ip addr del 10.255.255.255/32 dev lo
sudo ip addr add 10.255.255.255/32 dev lo
sudo docker-compose down
sudo docker-compose up -d
sudo docker ps -a
