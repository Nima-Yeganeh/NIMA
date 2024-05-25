[ $(sudo iptables -t nat -L | grep " dpt:80 " | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep " dpt:443 " | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep " dpt:8080 " | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep " dpt:8880 " | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 8880 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep " dpt:2052 " | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 2052 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep " dpt:2082 " | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 2082 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep " dpt:2086 " | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 2086 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep " dpt:2095 " | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 2095 -j DNAT --to-destination PUBLICIPADDR:7001

