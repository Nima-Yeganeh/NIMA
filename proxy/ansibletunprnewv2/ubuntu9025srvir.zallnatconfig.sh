
[ $(sudo iptables -t nat -L | grep '35011' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35011 -j DNAT --to-destination 146.190.235.0:8001
[ $(sudo iptables -t nat -L | grep '35012' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35012 -j DNAT --to-destination 146.190.235.0:8001
[ $(sudo iptables -t nat -L | grep '35013' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35013 -j DNAT --to-destination 146.190.235.0:8001
[ $(sudo iptables -t nat -L | grep '35014' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35014 -j DNAT --to-destination 146.190.235.0:8001
[ $(sudo iptables -t nat -L | grep '35015' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35015 -j DNAT --to-destination 146.190.235.0:8001
[ $(sudo iptables -t nat -L | grep '35021' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35021 -j DNAT --to-destination 146.190.235.0:7001
[ $(sudo iptables -t nat -L | grep '35022' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35022 -j DNAT --to-destination 146.190.235.0:7001
[ $(sudo iptables -t nat -L | grep '35023' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35023 -j DNAT --to-destination 146.190.235.0:7001
[ $(sudo iptables -t nat -L | grep '35024' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35024 -j DNAT --to-destination 146.190.235.0:7001
[ $(sudo iptables -t nat -L | grep '35025' | wc -l) -eq 0 ] && sudo iptables -t nat -A PREROUTING -p tcp --dport 35025 -j DNAT --to-destination 146.190.235.0:7001
