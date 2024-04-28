sudo ip tunnel add 6to4tundg010001 mode sit remote 31.216.62.115 local 134.209.31.57
sudo ip -6 addr add fc00:1:10::254/64 dev 6to4tundg010001
sudo ip link set 6to4tundg010001 mtu 1400
sudo ip link set 6to4tundg010001 up
sudo ip -6 tunnel add gre6tundg010001 mode ip6gre remote fc00:1:10::253 local fc00:1:10::254
sudo ip addr add 10.1.10.254/30 dev gre6tundg010001
sudo ip link set gre6tundg010001 mtu 1300
sudo ip link set gre6tundg010001 up
