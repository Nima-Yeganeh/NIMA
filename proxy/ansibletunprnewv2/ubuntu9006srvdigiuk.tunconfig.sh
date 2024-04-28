sudo ip tunnel add 6to4tundg006001 mode sit remote 31.216.62.115 local 142.93.36.60
sudo ip -6 addr add fc00:1:6::254/64 dev 6to4tundg006001
sudo ip link set 6to4tundg006001 mtu 1400
sudo ip link set 6to4tundg006001 up
sudo ip -6 tunnel add gre6tundg006001 mode ip6gre remote fc00:1:6::253 local fc00:1:6::254
sudo ip addr add 10.1.6.254/30 dev gre6tundg006001
sudo ip link set gre6tundg006001 mtu 1300
sudo ip link set gre6tundg006001 up
