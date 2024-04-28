sudo ip tunnel add 6to4tundg004001 mode sit remote 31.216.62.115 local 167.172.252.251
sudo ip -6 addr add fc00:1:4::254/64 dev 6to4tundg004001
sudo ip link set 6to4tundg004001 mtu 1400
sudo ip link set 6to4tundg004001 up
sudo ip -6 tunnel add gre6tundg004001 mode ip6gre remote fc00:1:4::253 local fc00:1:4::254
sudo ip addr add 10.1.4.254/30 dev gre6tundg004001
sudo ip link set gre6tundg004001 mtu 1300
sudo ip link set gre6tundg004001 up
