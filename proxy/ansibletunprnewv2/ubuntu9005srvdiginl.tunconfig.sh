sudo ip tunnel add 6to4tundg005001 mode sit remote 31.216.62.115 local 159.223.218.156
sudo ip -6 addr add fc00:1:5::254/64 dev 6to4tundg005001
sudo ip link set 6to4tundg005001 mtu 1400
sudo ip link set 6to4tundg005001 up
sudo ip -6 tunnel add gre6tundg005001 mode ip6gre remote fc00:1:5::253 local fc00:1:5::254
sudo ip addr add 10.1.5.254/30 dev gre6tundg005001
sudo ip link set gre6tundg005001 mtu 1300
sudo ip link set gre6tundg005001 up