
sleeptime=0
echo "Started!"
git pull
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
sudo bash zupdate_nameservers_org.sh
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
# if [ ! -e "/usr/share/keyrings/docker-archive-keyring.gpg" ]; then
#     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# fi
# echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt install docker docker-compose docker.io -y
# sudo apt-get install docker-ce docker-ce-cli containerd.io -y
# sudo apt install docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker rm -f $(sudo docker ps -q)
sleep $sleeptime
cd utils
sudo bash bbr.sh
sleep $sleeptime
cd ..
sudo bash zupdate_nameservers.sh
cd v2new/v2ray-bridge-server/
ls -anp
# sudo bash ipconfig.sh
docker-compose up -d
docker ps -a
sudo bash info.sh
cd ..
cd ..
python3 vmess_for_bridge.py
sudo bash zupdate_nameservers_org.sh
ls -anp

