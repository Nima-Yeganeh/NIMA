sudo lsb_release -a
sudo apt update -y
sudo apt install iftop mtr screen net-tools docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker ps -a
sudo docker run --cap-add=NET_ADMIN --device=/dev/net/tun -d --name mikrotik -p 5443:443 --restart always -ti nimaxnimax/dockermtnimaxsectestlab
sudo docker ps -a

