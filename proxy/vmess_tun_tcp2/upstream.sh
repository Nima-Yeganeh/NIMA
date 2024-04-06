
echo "Started!"
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
if [ ! -e "/swapfile" ]; then
    sudo fallocate -l 4G /swapfile
    ls -anp /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi
echo "Local IP: $local_ip"
echo "Remote IP: $remote_ip"
sudo ip tunnel show
sudo ip tunnel del 6to4tun_IR12
sudo ip tunnel del GRE6Tun_IR12
sudo ip tunnel add 6to4tun_IR12 mode sit remote $remote_ip local $local_ip
sudo ip -6 addr add 2001:2001:2001:12::2/64 dev 6to4tun_IR12
sudo ip link set 6to4tun_IR12 mtu 1480
sudo ip link set 6to4tun_IR12 up
sudo ip -6 tunnel add GRE6Tun_IR12 mode ip6gre remote 2001:2001:2001:12::1 local 2001:2001:2001:12::2
sudo ip addr add 172.16.12.2/30 dev GRE6Tun_IR12
sudo ip link set GRE6Tun_IR12 mtu 1436
sudo ip link set GRE6Tun_IR12 up
sudo ip tunnel show
sudo apt update -y
sudo apt install iftop mtr python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo bash bbr.sh
cd v2ray-upstream-server/
docker-compose up -d
docker ps -a
