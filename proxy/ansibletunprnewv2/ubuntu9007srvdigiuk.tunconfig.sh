sudo ip tunnel add 6to4tundg007001 mode sit remote 31.216.62.115 local 139.59.167.164
sudo ip -6 addr add fc00:1:7::254/64 dev 6to4tundg007001
sudo ip link set 6to4tundg007001 mtu 1400
sudo ip link set 6to4tundg007001 up
sudo ip -6 tunnel add gre6tundg007001 mode ip6gre remote fc00:1:7::253 local fc00:1:7::254
sudo ip addr add 10.1.7.254/30 dev gre6tundg007001
sudo ip link set gre6tundg007001 mtu 1300
sudo ip link set gre6tundg007001 up
sudo ip tunnel add 6to4tundg007002 mode sit remote 5.57.33.8 local 139.59.167.164
sudo ip -6 addr add fc00:2:7::254/64 dev 6to4tundg007002
sudo ip link set 6to4tundg007002 mtu 1400
sudo ip link set 6to4tundg007002 up
sudo ip -6 tunnel add gre6tundg007002 mode ip6gre remote fc00:2:7::253 local fc00:2:7::254
sudo ip addr add 10.2.7.254/30 dev gre6tundg007002
sudo ip link set gre6tundg007002 mtu 1300
sudo ip link set gre6tundg007002 up
sudo ip tunnel add 6to4tundg007003 mode sit remote 94.182.223.249 local 139.59.167.164
sudo ip -6 addr add fc00:3:7::254/64 dev 6to4tundg007003
sudo ip link set 6to4tundg007003 mtu 1400
sudo ip link set 6to4tundg007003 up
sudo ip -6 tunnel add gre6tundg007003 mode ip6gre remote fc00:3:7::253 local fc00:3:7::254
sudo ip addr add 10.3.7.254/30 dev gre6tundg007003
sudo ip link set gre6tundg007003 mtu 1300
sudo ip link set gre6tundg007003 up
sudo ip tunnel add 6to4tundg007004 mode sit remote 94.182.150.22 local 139.59.167.164
sudo ip -6 addr add fc00:4:7::254/64 dev 6to4tundg007004
sudo ip link set 6to4tundg007004 mtu 1400
sudo ip link set 6to4tundg007004 up
sudo ip -6 tunnel add gre6tundg007004 mode ip6gre remote fc00:4:7::253 local fc00:4:7::254
sudo ip addr add 10.4.7.254/30 dev gre6tundg007004
sudo ip link set gre6tundg007004 mtu 1300
sudo ip link set gre6tundg007004 up
sudo ip tunnel add 6to4tundg007005 mode sit remote 31.216.62.66 local 139.59.167.164
sudo ip -6 addr add fc00:5:7::254/64 dev 6to4tundg007005
sudo ip link set 6to4tundg007005 mtu 1400
sudo ip link set 6to4tundg007005 up
sudo ip -6 tunnel add gre6tundg007005 mode ip6gre remote fc00:5:7::253 local fc00:5:7::254
sudo ip addr add 10.5.7.254/30 dev gre6tundg007005
sudo ip link set gre6tundg007005 mtu 1300
sudo ip link set gre6tundg007005 up
sudo ip tunnel add 6to4tundg007006 mode sit remote 185.73.0.205 local 139.59.167.164
sudo ip -6 addr add fc00:6:7::254/64 dev 6to4tundg007006
sudo ip link set 6to4tundg007006 mtu 1400
sudo ip link set 6to4tundg007006 up
sudo ip -6 tunnel add gre6tundg007006 mode ip6gre remote fc00:6:7::253 local fc00:6:7::254
sudo ip addr add 10.6.7.254/30 dev gre6tundg007006
sudo ip link set gre6tundg007006 mtu 1300
sudo ip link set gre6tundg007006 up
sudo ip tunnel add 6to4tundg007007 mode sit remote 31.216.62.162 local 139.59.167.164
sudo ip -6 addr add fc00:7:7::254/64 dev 6to4tundg007007
sudo ip link set 6to4tundg007007 mtu 1400
sudo ip link set 6to4tundg007007 up
sudo ip -6 tunnel add gre6tundg007007 mode ip6gre remote fc00:7:7::253 local fc00:7:7::254
sudo ip addr add 10.7.7.254/30 dev gre6tundg007007
sudo ip link set gre6tundg007007 mtu 1300
sudo ip link set gre6tundg007007 up
