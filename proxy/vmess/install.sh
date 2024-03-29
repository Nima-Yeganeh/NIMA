

sleeptime=0
echo "Started!"
sleep $sleeptime
hostname=$(hostname)
if grep -q "^127.0.0.1[[:space:]]*$hostname$" /etc/hosts; then
    echo "Hostname $hostname already exists in /etc/hosts."
else
    # Add the hostname and IP address to /etc/hosts
    echo "127.0.0.1 $hostname" | sudo tee -a /etc/hosts
    echo "Hostname $hostname added to /etc/hosts."
fi
cat /etc/hosts
git pull
# apt install sudo -y
sudo apt update -y
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
if [ ! -e "/usr/share/keyrings/docker-archive-keyring.gpg" ]; then
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
fi
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo apt install docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker rm -f $(sudo docker ps -q)
sleep $sleeptime
sudo bash z
cd utils
sudo bash bbr.sh
sleep $sleeptime
cd ..
cd v2ray-upstream-server
sudo bash start.sh
sleep $sleeptime
cd ..
cd v2ray-bridge-server
sudo bash ipconfig.sh
sleep $sleeptime
sudo bash start.sh
sleep $sleeptime
sudo bash info.sh
cd ..
echo "Done!"
# shadowsocks_port=$(cat shadowsocks_port.conf)
vmess_port=$(cat vmess_port.conf)
# echo "Allow On Your Cloud/VPS >> TCP Shadowsocks Port: $shadowsocks_port"
echo "Allow On Your Cloud/VPS >> TCP VMess Port: $vmess_port"

