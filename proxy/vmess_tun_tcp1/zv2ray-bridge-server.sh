
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
hostname=$(hostname)
if grep -q "^127.0.0.1[[:space:]]*$hostname$" /etc/hosts; then
    echo "Hostname $hostname already exists in /etc/hosts."
else
    echo "127.0.0.1 $hostname" | sudo tee -a /etc/hosts
    echo "Hostname $hostname added to /etc/hosts."
fi
echo "Local IP: $local_ip"
echo "Remote IP: $remote_ip"
sudo ip tunnel show
sudo ip tunnel del 6to4tun_IR11
sudo ip tunnel del GRE6Tun_IR11
sudo ip tunnel add 6to4tun_IR11 mode sit remote $remote_ip local $local_ip
sudo ip -6 addr add 2001:2001:2001:11::1/64 dev 6to4tun_IR11
sudo ip link set 6to4tun_IR11 mtu 1480
sudo ip link set 6to4tun_IR11 up
sudo ip -6 tunnel add GRE6Tun_IR11 mode ip6gre remote 2001:2001:2001:11::2 local 2001:2001:2001:11::1
sudo ip addr add 172.16.11.1/30 dev GRE6Tun_IR11
sudo ip link set GRE6Tun_IR11 mtu 1436
sudo ip link set GRE6Tun_IR11 up
sudo ip tunnel show
git pull
sudo bash zupdate_nameservers_org.sh
sudo apt update -y
sudo apt install iftop mtr python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo bash bbr.sh
sudo bash zupdate_nameservers.sh
cd v2ray-bridge-server/
docker-compose up -d
docker ps -a
cd ..
sudo bash zupdate_nameservers_org.sh
python3 vmess_for_bridge.py
