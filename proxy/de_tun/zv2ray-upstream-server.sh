

sleeptime=0
echo "Started!"
sleep $sleeptime
while true; do
    read -p "Enter local IP address: " local_ip
    read -p "Enter remote IP address: " remote_ip
    if [[ ! $local_ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "Error: Invalid local IP address format. Try again."
        continue
    fi
    if [[ ! $remote_ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "Error: Invalid remote IP address format. Try again."
        continue
    fi
    break
done
echo "Local IP: $local_ip"
echo "Remote IP: $remote_ip"
sleep 50
sudo apt update -y
sudo ip tunnel show
sudo ip tunnel add 6to4tun_IR mode sit remote $remote_ip local $local_ip
sudo ip -6 addr add 2001:470:1f10:e1f::2/64 dev 6to4tun_IR
sudo ip link set 6to4tun_IR mtu 1480
sudo ip link set 6to4tun_IR up
sudo ip tunnel del GRE6Tun_IR
sudo ip -6 tunnel add GRE6Tun_IR mode ip6gre remote 2001:470:1f10:e1f::1 local 2001:470:1f10:e1f::2
sudo ip addr add 172.16.1.2/30 dev GRE6Tun_IR
sudo ip link set GRE6Tun_IR mtu 1436
sudo ip link set GRE6Tun_IR up
sudo ip tunnel show
sudo apt install iftop mtr -y
sleep $sleeptime
if [ ! -e "/swapfile" ]; then
    sudo fallocate -l 4G /swapfile
    ls -anp /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi
sleep $sleeptime
sudo apt update -y
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
python3 --version
sleep $sleeptime
sudo apt update -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y
sudo apt-get update -y
sudo apt install docker docker-compose docker.io -y
sudo apt-get update -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker rm -f $(sudo docker ps -q)
sleep $sleeptime
cd utils
sudo bash bbr.sh
sleep $sleeptime
cd ..
cd v2new/v2ray-upstream-server/
ls -anp
docker-compose up -d
docker ps -a
cd ..
cd ..
python3 vmess_for_upstream.py
ls -anp
