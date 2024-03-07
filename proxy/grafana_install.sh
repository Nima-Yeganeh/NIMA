
sudo apt update -y
sudo apt install -y software-properties-common
sudo apt install ca-certificates -y
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 963FA27710458545
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
sudo sed -i 's/deb https:\/\/packages.grafana.com\/oss\/deb stable main/deb [arch=amd64] https:\/\/packages.grafana.com\/oss\/deb stable main/' /etc/apt/sources.list
sudo apt update -y
sudo apt install grafana -y
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
sudo ufw allow 3000/tcp
sudo systemctl restart grafana-server
sudo apt update -y
sudo groupadd --system prometheus
sudo useradd -s /sbin/nologin --system -g prometheus prometheus
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.45.0/prometheus-2.45.0.linux-amd64.tar.gz
tar vxf prometheus*.tar.gz
cd prometheus*/
sudo mv prometheus /usr/local/bin
sudo mv promtool /usr/local/bin
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool
sudo mv consoles /etc/prometheus
sudo mv console_libraries /etc/prometheus
sudo mv prometheus.yml /etc/prometheus
sudo chown prometheus:prometheus /etc/prometheus
sudo chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries
sudo chown -R prometheus:prometheus /var/lib/prometheus
sudo cat /etc/prometheus/prometheus.yml
cd ..
sudo cp promservice.conf /etc/systemd/system/prometheus.service
sudo systemctl daemon-reload
sudo systemctl enable prometheus
sudo systemctl start prometheus
sudo ufw allow 9090/tcp
cat /etc/prometheus/prometheus.yml
sudo systemctl restart prometheus

