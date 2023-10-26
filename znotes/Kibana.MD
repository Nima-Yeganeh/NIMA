Kibana is a web-based interface for searching, analyzing, and visualizing log data stored in Elasticsearch. It provides various visualization options such as charts, graphs, and maps.

# Kibana:
Default port: 5601

# install
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/kibana-7.x.list'
sudo apt-get update
sudo apt-get install kibana
sudo nano /etc/kibana/kibana.yml
server.host: "0.0.0.0"
sudo service kibana start

# Check Kibana Status:
Visit http://your_server_ip:5601 in a web browser. Kibana should be accessible, and you'll see the Kibana login screen.

# Note:
Kibana configuration files are typically located in /etc/kibana/.
Ensure that your server firewall allows traffic on port 5601.

