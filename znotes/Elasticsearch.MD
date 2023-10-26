Elasticsearch is a distributed, RESTful search and analytics engine. It is designed to store, search, and analyze large volumes of data quickly and in near real-time.

# What is an index in Elasticsearch?
Answer: In Elasticsearch, an index is a collection of documents that share a similar structure. It is used to organize and optimize the search and retrieval of data.

# Elasticsearch:
Default HTTP REST port: 9200
Default transport port: 9300


# install
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'
sudo apt-get update
sudo apt-get install elasticsearch
sudo service elasticsearch start
curl -X GET "localhost:9200/"
sudo systemctl enable elasticsearch

# Note:
Elasticsearch should be accessible at http://localhost:9200/ by default.
The configuration files for Elasticsearch are typically located in /etc/elasticsearch/.
Ensure that your server has enough resources (RAM, CPU) allocated to Elasticsearch based on your needs.

