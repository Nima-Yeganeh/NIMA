sudo ip tunnel add 6to4tundigi90019001 mode sit remote 31.216.62.115 local 178.62.236.174
sudo ip -6 addr add fc00:1:1::254/64 dev 6to4tundigi90019001
sudo ip link set 6to4tundigi90019001 mtu 1400
sudo ip link set 6to4tundigi90019001 up
sudo ip -6 tunnel add gre6tundigi90019001 mode ip6gre remote fc00:1:1::253 local fc00:1:1::254
sudo ip addr add 10.1.1.254/30 dev gre6tundigi90019001
sudo ip link set gre6tundigi90019001 mtu 1300
sudo ip link set gre6tundigi90019001 up
