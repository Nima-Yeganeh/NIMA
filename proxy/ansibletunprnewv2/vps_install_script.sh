sudo apt update -y
sudo apt install docker-compose iftop iotop mtr htop mtr screen traceroute iptables-persistent net-tools socat python3 python3-pip apt-transport-https ca-certificates curl gnupg lsb-release -y
echo "1" > /proc/sys/net/ipv4/ip_forward
echo "120" > /proc/sys/net/ipv4/tcp_keepalive_time
echo "unset HISTFILE" | sudo tee -a /etc/profile > /dev/null
echo "export HISTSIZE=0" | sudo tee -a /etc/bash.bashrc > /dev/null
sudo timedatectl set-timezone Asia/Tehran
cp -f fwsave.sh /fwsave.sh
sudo bash /fwsave.sh
public_ip=$(curl -s ifconfig.me)
echo "Public IP address: $public_ip"
