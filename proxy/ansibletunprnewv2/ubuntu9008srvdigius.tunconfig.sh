sudo ip tunnel add 6to4tundg008001 mode sit remote 31.216.62.115 local 159.65.45.191
sudo ip -6 addr add fc00:1:8::254/64 dev 6to4tundg008001
sudo ip link set 6to4tundg008001 mtu 1400
sudo ip link set 6to4tundg008001 up
sudo ip -6 tunnel add gre6tundg008001 mode ip6gre remote fc00:1:8::253 local fc00:1:8::254
sudo ip addr add 10.1.8.254/30 dev gre6tundg008001
sudo ip link set gre6tundg008001 mtu 1300
sudo ip link set gre6tundg008001 up
