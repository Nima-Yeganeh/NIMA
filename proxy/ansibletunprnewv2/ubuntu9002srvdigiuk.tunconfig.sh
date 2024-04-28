sudo ip tunnel add 6to4tundg002001 mode sit remote 31.216.62.115 local 165.22.115.63
sudo ip -6 addr add fc00:1:2::254/64 dev 6to4tundg002001
sudo ip link set 6to4tundg002001 mtu 1400
sudo ip link set 6to4tundg002001 up
sudo ip -6 tunnel add gre6tundg002001 mode ip6gre remote fc00:1:2::253 local fc00:1:2::254
sudo ip addr add 10.1.2.254/30 dev gre6tundg002001
sudo ip link set gre6tundg002001 mtu 1300
sudo ip link set gre6tundg002001 up
sudo ip tunnel add 6to4tundg002002 mode sit remote 159.223.28.71 local 165.22.115.63
sudo ip -6 addr add fc00:2:2::254/64 dev 6to4tundg002002
sudo ip link set 6to4tundg002002 mtu 1400
sudo ip link set 6to4tundg002002 up
sudo ip -6 tunnel add gre6tundg002002 mode ip6gre remote fc00:2:2::253 local fc00:2:2::254
sudo ip addr add 10.2.2.254/30 dev gre6tundg002002
sudo ip link set gre6tundg002002 mtu 1300
sudo ip link set gre6tundg002002 up
