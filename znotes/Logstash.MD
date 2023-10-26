Logstash is a server-side data processing pipeline that ingests data from multiple sources, transforms it, and then sends it to a "stash" like Elasticsearch.

# Explain how Logstash works.
Answer: Logstash works as a data pipeline. It ingests data from various sources, processes it through filters, and then sends it to a specified output, often Elasticsearch. Filters can be applied to parse, transform, and enrich the data.

# What is the purpose of Beats in ELK Stack?
Answer: Beats are lightweight data shippers that send data from various sources to Logstash or Elasticsearch directly. They are used for collecting and forwarding different types of operational data.

# Logstash:
Default port for receiving logs (input): 5044
Default port for forwarding processed logs (output): 9200 (same as Elasticsearch HTTP port)

# install
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/logstash-7.x.list'
sudo apt-get update
sudo apt-get install logstash
sudo service logstash start
sudo service logstash status

# Note:
Logstash configuration files are typically located in /etc/logstash/conf.d/.
You can create your Logstash configuration files based on your needs.


