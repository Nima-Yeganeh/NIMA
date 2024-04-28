sudo ip tunnel add 6to4tundg009001 mode sit remote 31.216.62.115 local 146.190.112.99
sudo ip -6 addr add fc00:1:9::254/64 dev 6to4tundg009001
sudo ip link set 6to4tundg009001 mtu 1400
sudo ip link set 6to4tundg009001 up
sudo ip -6 tunnel add gre6tundg009001 mode ip6gre remote fc00:1:9::253 local fc00:1:9::254
sudo ip addr add 10.1.9.254/30 dev gre6tundg009001
sudo ip link set gre6tundg009001 mtu 1300
sudo ip link set gre6tundg009001 up
sudo ip tunnel add 6to4tundg009002 mode sit remote 159.223.28.71 local 146.190.112.99
sudo ip -6 addr add fc00:2:9::254/64 dev 6to4tundg009002
sudo ip link set 6to4tundg009002 mtu 1400
sudo ip link set 6to4tundg009002 up
sudo ip -6 tunnel add gre6tundg009002 mode ip6gre remote fc00:2:9::253 local fc00:2:9::254
sudo ip addr add 10.2.9.254/30 dev gre6tundg009002
sudo ip link set gre6tundg009002 mtu 1300
sudo ip link set gre6tundg009002 up
