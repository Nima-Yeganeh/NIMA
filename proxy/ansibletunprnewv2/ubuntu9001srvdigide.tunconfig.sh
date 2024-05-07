sudo ip tunnel add 6to4tundg001001 mode sit remote 31.216.62.115 local 164.92.246.10
sudo ip -6 addr add fc00:1:1::254/64 dev 6to4tundg001001
sudo ip link set 6to4tundg001001 mtu 1400
sudo ip link set 6to4tundg001001 up
sudo ip -6 tunnel add gre6tundg001001 mode ip6gre remote fc00:1:1::253 local fc00:1:1::254
sudo ip addr add 10.1.1.254/30 dev gre6tundg001001
sudo ip link set gre6tundg001001 mtu 1300
sudo ip link set gre6tundg001001 up
sudo ip tunnel add 6to4tundg001002 mode sit remote 5.57.33.8 local 164.92.246.10
sudo ip -6 addr add fc00:2:1::254/64 dev 6to4tundg001002
sudo ip link set 6to4tundg001002 mtu 1400
sudo ip link set 6to4tundg001002 up
sudo ip -6 tunnel add gre6tundg001002 mode ip6gre remote fc00:2:1::253 local fc00:2:1::254
sudo ip addr add 10.2.1.254/30 dev gre6tundg001002
sudo ip link set gre6tundg001002 mtu 1300
sudo ip link set gre6tundg001002 up
sudo ip tunnel add 6to4tundg001003 mode sit remote 94.182.223.249 local 164.92.246.10
sudo ip -6 addr add fc00:3:1::254/64 dev 6to4tundg001003
sudo ip link set 6to4tundg001003 mtu 1400
sudo ip link set 6to4tundg001003 up
sudo ip -6 tunnel add gre6tundg001003 mode ip6gre remote fc00:3:1::253 local fc00:3:1::254
sudo ip addr add 10.3.1.254/30 dev gre6tundg001003
sudo ip link set gre6tundg001003 mtu 1300
sudo ip link set gre6tundg001003 up
sudo ip tunnel add 6to4tundg001004 mode sit remote 94.182.150.22 local 164.92.246.10
sudo ip -6 addr add fc00:4:1::254/64 dev 6to4tundg001004
sudo ip link set 6to4tundg001004 mtu 1400
sudo ip link set 6to4tundg001004 up
sudo ip -6 tunnel add gre6tundg001004 mode ip6gre remote fc00:4:1::253 local fc00:4:1::254
sudo ip addr add 10.4.1.254/30 dev gre6tundg001004
sudo ip link set gre6tundg001004 mtu 1300
sudo ip link set gre6tundg001004 up
