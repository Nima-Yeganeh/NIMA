
sudo iptables -t nat -D PREROUTING -p tcp --dport 35011 -j DNAT --to-destination 94.182.223.249:8001
sudo iptables -t nat -D PREROUTING -p tcp --dport 35012 -j DNAT --to-destination 94.182.223.249:8001
sudo iptables -t nat -D PREROUTING -p tcp --dport 35013 -j DNAT --to-destination 94.182.223.249:8001
sudo iptables -t nat -D PREROUTING -p tcp --dport 35014 -j DNAT --to-destination 94.182.223.249:8001
sudo iptables -t nat -D PREROUTING -p tcp --dport 35015 -j DNAT --to-destination 94.182.223.249:8001
sudo iptables -t nat -D PREROUTING -p tcp --dport 35021 -j DNAT --to-destination 94.182.223.249:7001
sudo iptables -t nat -D PREROUTING -p tcp --dport 35022 -j DNAT --to-destination 94.182.223.249:7001
sudo iptables -t nat -D PREROUTING -p tcp --dport 35023 -j DNAT --to-destination 94.182.223.249:7001
sudo iptables -t nat -D PREROUTING -p tcp --dport 35024 -j DNAT --to-destination 94.182.223.249:7001
sudo iptables -t nat -D PREROUTING -p tcp --dport 35025 -j DNAT --to-destination 94.182.223.249:7001