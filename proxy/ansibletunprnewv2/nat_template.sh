[ $(sudo iptables -t nat -L | grep 'dpt:35011' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35011 -j DNAT --to-destination PUBLICIPADDR:8001
[ $(sudo iptables -t nat -L | grep 'dpt:35012' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35012 -j DNAT --to-destination PUBLICIPADDR:8001
[ $(sudo iptables -t nat -L | grep 'dpt:35013' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35013 -j DNAT --to-destination PUBLICIPADDR:8001
[ $(sudo iptables -t nat -L | grep 'dpt:35014' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35014 -j DNAT --to-destination PUBLICIPADDR:8001
[ $(sudo iptables -t nat -L | grep 'dpt:35015' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35015 -j DNAT --to-destination PUBLICIPADDR:8001
[ $(sudo iptables -t nat -L | grep 'dpt:35021' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35021 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:35022' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35022 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:35023' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35023 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:35024' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35024 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:35025' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35025 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:8080' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:8880' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 8880 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:2052' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 2052 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:2082' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 2082 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:2086' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 2086 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:2095' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 2095 -j DNAT --to-destination PUBLICIPADDR:7001
[ $(sudo iptables -t nat -L | grep 'dpt:80' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination PUBLICIPADDR:7001

