
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
sudo cp service /etc/systemd/system/myscript.service
echo "" >> /etc/script.sh
sudo chmod +x /etc/script.sh
sudo systemctl daemon-reload
sudo systemctl enable myscript.service
echo "" > /etc/script13.sh
sudo chmod +x /etc/script13.sh
echo "sudo ip tunnel del 6to4tun_IR13">> /etc/script13.sh
echo "sudo ip tunnel del GRE6Tun_IR13">> /etc/script13.sh
echo "sudo ip tunnel add 6to4tun_IR13 mode sit remote $remote_ip local $local_ip">> /etc/script13.sh
echo "sudo ip -6 addr add 2001:2001:2001:13::1/64 dev 6to4tun_IR13">> /etc/script13.sh
echo "sudo ip link set 6to4tun_IR13 mtu 1480">> /etc/script13.sh
echo "sudo ip link set 6to4tun_IR13 up">> /etc/script13.sh
echo "sudo ip -6 tunnel add GRE6Tun_IR13 mode ip6gre remote 2001:2001:2001:13::2 local 2001:2001:2001:13::1">> /etc/script13.sh
echo "sudo ip addr add 172.16.13.1/30 dev GRE6Tun_IR13">> /etc/script13.sh
echo "sudo ip link set GRE6Tun_IR13 mtu 1436">> /etc/script13.sh
echo "sudo ip link set GRE6Tun_IR13 up">> /etc/script13.sh
sudo bash /etc/script13.sh
sudo cat /etc/script13.sh >> /etc/script.sh
sudo ip tunnel show
