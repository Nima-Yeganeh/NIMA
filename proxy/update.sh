
sleeptime=0
echo "Started!"
sleep $sleeptime
sudo apt update -y
sudo apt install screen iftop mtr -y
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
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y
sleep $sleeptime
echo "Done!"
