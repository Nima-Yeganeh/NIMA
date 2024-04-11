
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
echo "" > /etc/script12.sh
sudo chmod +x /etc/script12.sh
echo "sudo ip tunnel del 6to4tun_IR12">> /etc/script12.sh
echo "sudo ip tunnel del GRE6Tun_IR12">> /etc/script12.sh
echo "sudo ip tunnel add 6to4tun_IR12 mode sit remote $remote_ip local $local_ip">> /etc/script12.sh
echo "sudo ip -6 addr add 2001:2001:2001:12::1/64 dev 6to4tun_IR12">> /etc/script12.sh
echo "sudo ip link set 6to4tun_IR12 mtu 1480">> /etc/script12.sh
echo "sudo ip link set 6to4tun_IR12 up">> /etc/script12.sh
echo "sudo ip -6 tunnel add GRE6Tun_IR12 mode ip6gre remote 2001:2001:2001:12::2 local 2001:2001:2001:12::1">> /etc/script12.sh
echo "sudo ip addr add 172.16.12.1/30 dev GRE6Tun_IR12">> /etc/script12.sh
echo "sudo ip link set GRE6Tun_IR12 mtu 1436">> /etc/script12.sh
echo "sudo ip link set GRE6Tun_IR12 up">> /etc/script12.sh
sudo bash /etc/script12.sh
sudo cat /etc/script12.sh >> /etc/script.sh
sudo ip tunnel show
