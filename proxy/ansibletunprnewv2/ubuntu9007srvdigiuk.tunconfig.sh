sudo ip tunnel add 6to4tundg007001 mode sit remote 31.216.62.115 local 178.128.40.246
sudo ip -6 addr add fc00:1:7::254/64 dev 6to4tundg007001
sudo ip link set 6to4tundg007001 mtu 1400
sudo ip link set 6to4tundg007001 up
sudo ip -6 tunnel add gre6tundg007001 mode ip6gre remote fc00:1:7::253 local fc00:1:7::254
sudo ip addr add 10.1.7.254/30 dev gre6tundg007001
sudo ip link set gre6tundg007001 mtu 1300
sudo ip link set gre6tundg007001 up
sudo ip tunnel add 6to4tundg007002 mode sit remote 159.223.28.71 local 178.128.40.246
sudo ip -6 addr add fc00:2:7::254/64 dev 6to4tundg007002
sudo ip link set 6to4tundg007002 mtu 1400
sudo ip link set 6to4tundg007002 up
sudo ip -6 tunnel add gre6tundg007002 mode ip6gre remote fc00:2:7::253 local fc00:2:7::254
sudo ip addr add 10.2.7.254/30 dev gre6tundg007002
sudo ip link set gre6tundg007002 mtu 1300
sudo ip link set gre6tundg007002 up
