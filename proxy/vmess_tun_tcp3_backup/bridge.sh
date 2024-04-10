
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
echo "Local IP: $local_ip"
echo "Remote IP: $remote_ip"
echo "" >> /etc/script33.sh
sudo chmod +x /etc/script33.sh
echo "sudo ip tunnel del 6to4tun_IR33">> /etc/script33.sh
echo "sudo ip tunnel del GRE6Tun_IR33">> /etc/script33.sh
echo "sudo ip tunnel add 6to4tun_IR33 mode sit remote $remote_ip local $local_ip">> /etc/script33.sh
echo "sudo ip -6 addr add 2001:2001:2001:33::1/64 dev 6to4tun_IR33">> /etc/script33.sh
echo "sudo ip link set 6to4tun_IR33 mtu 1480">> /etc/script33.sh
echo "sudo ip link set 6to4tun_IR33 up">> /etc/script33.sh
echo "sudo ip -6 tunnel add GRE6Tun_IR33 mode ip6gre remote 2001:2001:2001:33::2 local 2001:2001:2001:33::1">> /etc/script33.sh
echo "sudo ip addr add 172.16.33.1/30 dev GRE6Tun_IR33">> /etc/script33.sh
echo "sudo ip link set GRE6Tun_IR33 mtu 1436">> /etc/script33.sh
echo "sudo ip link set GRE6Tun_IR33 up">> /etc/script33.sh
sudo bash /etc/script33.sh
sudo cat /etc/script33.sh >> /etc/script.sh
sudo ip tunnel show
git pull
cd v2ray-bridge-server/
docker-compose up -d
docker ps -a
cd ..
sudo bash zupdate_nameservers_org.sh
python3 vmess_for_bridge.py
