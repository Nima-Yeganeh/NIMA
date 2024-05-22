sudo ip tunnel add 6to4tundg006001 mode sit remote 31.216.62.115 local 152.42.137.215
sudo ip -6 addr add fc00:1:6::254/64 dev 6to4tundg006001
sudo ip link set 6to4tundg006001 mtu 1400
sudo ip link set 6to4tundg006001 up
sudo ip -6 tunnel add gre6tundg006001 mode ip6gre remote fc00:1:6::253 local fc00:1:6::254
sudo ip addr add 10.1.6.254/30 dev gre6tundg006001
sudo ip link set gre6tundg006001 mtu 1300
sudo ip link set gre6tundg006001 up
sudo ip tunnel add 6to4tundg006002 mode sit remote 5.57.33.8 local 152.42.137.215
sudo ip -6 addr add fc00:2:6::254/64 dev 6to4tundg006002
sudo ip link set 6to4tundg006002 mtu 1400
sudo ip link set 6to4tundg006002 up
sudo ip -6 tunnel add gre6tundg006002 mode ip6gre remote fc00:2:6::253 local fc00:2:6::254
sudo ip addr add 10.2.6.254/30 dev gre6tundg006002
sudo ip link set gre6tundg006002 mtu 1300
sudo ip link set gre6tundg006002 up
sudo ip tunnel add 6to4tundg006003 mode sit remote 94.182.223.249 local 152.42.137.215
sudo ip -6 addr add fc00:3:6::254/64 dev 6to4tundg006003
sudo ip link set 6to4tundg006003 mtu 1400
sudo ip link set 6to4tundg006003 up
sudo ip -6 tunnel add gre6tundg006003 mode ip6gre remote fc00:3:6::253 local fc00:3:6::254
sudo ip addr add 10.3.6.254/30 dev gre6tundg006003
sudo ip link set gre6tundg006003 mtu 1300
sudo ip link set gre6tundg006003 up
sudo ip tunnel add 6to4tundg006004 mode sit remote 94.182.150.22 local 152.42.137.215
sudo ip -6 addr add fc00:4:6::254/64 dev 6to4tundg006004
sudo ip link set 6to4tundg006004 mtu 1400
sudo ip link set 6to4tundg006004 up
sudo ip -6 tunnel add gre6tundg006004 mode ip6gre remote fc00:4:6::253 local fc00:4:6::254
sudo ip addr add 10.4.6.254/30 dev gre6tundg006004
sudo ip link set gre6tundg006004 mtu 1300
sudo ip link set gre6tundg006004 up
sudo ip tunnel add 6to4tundg006005 mode sit remote 31.216.62.66 local 152.42.137.215
sudo ip -6 addr add fc00:5:6::254/64 dev 6to4tundg006005
sudo ip link set 6to4tundg006005 mtu 1400
sudo ip link set 6to4tundg006005 up
sudo ip -6 tunnel add gre6tundg006005 mode ip6gre remote fc00:5:6::253 local fc00:5:6::254
sudo ip addr add 10.5.6.254/30 dev gre6tundg006005
sudo ip link set gre6tundg006005 mtu 1300
sudo ip link set gre6tundg006005 up
sudo ip tunnel add 6to4tundg006006 mode sit remote 185.73.0.205 local 152.42.137.215
sudo ip -6 addr add fc00:6:6::254/64 dev 6to4tundg006006
sudo ip link set 6to4tundg006006 mtu 1400
sudo ip link set 6to4tundg006006 up
sudo ip -6 tunnel add gre6tundg006006 mode ip6gre remote fc00:6:6::253 local fc00:6:6::254
sudo ip addr add 10.6.6.254/30 dev gre6tundg006006
sudo ip link set gre6tundg006006 mtu 1300
sudo ip link set gre6tundg006006 up
sudo ip tunnel add 6to4tundg006007 mode sit remote 31.216.62.162 local 152.42.137.215
sudo ip -6 addr add fc00:7:6::254/64 dev 6to4tundg006007
sudo ip link set 6to4tundg006007 mtu 1400
sudo ip link set 6to4tundg006007 up
sudo ip -6 tunnel add gre6tundg006007 mode ip6gre remote fc00:7:6::253 local fc00:7:6::254
sudo ip addr add 10.7.6.254/30 dev gre6tundg006007
sudo ip link set gre6tundg006007 mtu 1300
sudo ip link set gre6tundg006007 up
