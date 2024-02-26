
sudo apt update -y
wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
tar xvf node_exporter-1.6.1.linux-amd64.tar.gz
cd node_exporter-1.6.1.linux-amd64
sudo cp node_exporter /usr/local/bin
sudo useradd --no-create-home --shell /bin/false node_exporter
sudo chown node_exporter:node_exporter /usr/local/bin/node_exporter
ls -ltr /usr/local/bin/node_exporter
cd ..
ls -anp
pwd 
sudo cp neservice.confg /etc/systemd/system/node_exporter.service
sudo cat /etc/systemd/system/node_exporter.service
sudo systemctl daemon-reload
sudo systemctl enable node_exporter
sudo systemctl start node_exporter
sudo systemctl status node_exporter
sudo ufw allow 9100
sudo ps aux | grep node
sudo netstat -anp | grep 9100
