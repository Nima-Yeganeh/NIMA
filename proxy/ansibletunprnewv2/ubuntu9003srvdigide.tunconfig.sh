sudo ip tunnel add 6to4tundg003001 mode sit remote 31.216.62.115 local 165.232.66.46
sudo ip -6 addr add fc00:1:3::254/64 dev 6to4tundg003001
sudo ip link set 6to4tundg003001 mtu 1400
sudo ip link set 6to4tundg003001 up
sudo ip -6 tunnel add gre6tundg003001 mode ip6gre remote fc00:1:3::253 local fc00:1:3::254
sudo ip addr add 10.1.3.254/30 dev gre6tundg003001
sudo ip link set gre6tundg003001 mtu 1300
sudo ip link set gre6tundg003001 up
