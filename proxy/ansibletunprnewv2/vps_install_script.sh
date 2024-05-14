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
ipv4_address=$(ifconfig enp1s0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
if [ -z "$ipv4_address" ]; then
    ipv4_address=$(ip -o -4 addr show enp1s0 | awk '{print $4}' | cut -d'/' -f1)
fi
echo "IPv4 address of enp1s0: $ipv4_address"
cp -f vps_v2ray_up.conf /vps_v2ray_up.conf
cp -f vps_v2ray_br.conf /vps_v2ray_br.conf
cp -f vps_docker_compose.yml /docker-compose.yml
sed -i "s/PUBLICIPADDR/$ipv4_address/g" /vps_v2ray_br.conf
cd /
pwd
sudo docker-compose up -d
sudo docker ps -a
