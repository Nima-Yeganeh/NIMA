sudo ip tunnel add 6to4tundg004001 mode sit remote 31.216.62.115 local 185.223.235.100
sudo ip -6 addr add fc00:1:4::254/64 dev 6to4tundg004001
sudo ip link set 6to4tundg004001 mtu 1400
sudo ip link set 6to4tundg004001 up
sudo ip -6 tunnel add gre6tundg004001 mode ip6gre remote fc00:1:4::253 local fc00:1:4::254
sudo ip addr add 10.1.4.254/30 dev gre6tundg004001
sudo ip link set gre6tundg004001 mtu 1300
sudo ip link set gre6tundg004001 up
sudo ip tunnel add 6to4tundg004002 mode sit remote 5.57.33.8 local 185.223.235.100
sudo ip -6 addr add fc00:2:4::254/64 dev 6to4tundg004002
sudo ip link set 6to4tundg004002 mtu 1400
sudo ip link set 6to4tundg004002 up
sudo ip -6 tunnel add gre6tundg004002 mode ip6gre remote fc00:2:4::253 local fc00:2:4::254
sudo ip addr add 10.2.4.254/30 dev gre6tundg004002
sudo ip link set gre6tundg004002 mtu 1300
sudo ip link set gre6tundg004002 up
sudo ip tunnel add 6to4tundg004003 mode sit remote 94.182.223.249 local 185.223.235.100
sudo ip -6 addr add fc00:3:4::254/64 dev 6to4tundg004003
sudo ip link set 6to4tundg004003 mtu 1400
sudo ip link set 6to4tundg004003 up
sudo ip -6 tunnel add gre6tundg004003 mode ip6gre remote fc00:3:4::253 local fc00:3:4::254
sudo ip addr add 10.3.4.254/30 dev gre6tundg004003
sudo ip link set gre6tundg004003 mtu 1300
sudo ip link set gre6tundg004003 up
sudo ip tunnel add 6to4tundg004004 mode sit remote 94.182.150.22 local 185.223.235.100
sudo ip -6 addr add fc00:4:4::254/64 dev 6to4tundg004004
sudo ip link set 6to4tundg004004 mtu 1400
sudo ip link set 6to4tundg004004 up
sudo ip -6 tunnel add gre6tundg004004 mode ip6gre remote fc00:4:4::253 local fc00:4:4::254
sudo ip addr add 10.4.4.254/30 dev gre6tundg004004
sudo ip link set gre6tundg004004 mtu 1300
sudo ip link set gre6tundg004004 up
sudo ip tunnel add 6to4tundg004005 mode sit remote 31.216.62.66 local 185.223.235.100
sudo ip -6 addr add fc00:5:4::254/64 dev 6to4tundg004005
sudo ip link set 6to4tundg004005 mtu 1400
sudo ip link set 6to4tundg004005 up
sudo ip -6 tunnel add gre6tundg004005 mode ip6gre remote fc00:5:4::253 local fc00:5:4::254
sudo ip addr add 10.5.4.254/30 dev gre6tundg004005
sudo ip link set gre6tundg004005 mtu 1300
sudo ip link set gre6tundg004005 up
sudo ip tunnel add 6to4tundg004006 mode sit remote 185.73.0.205 local 185.223.235.100
sudo ip -6 addr add fc00:6:4::254/64 dev 6to4tundg004006
sudo ip link set 6to4tundg004006 mtu 1400
sudo ip link set 6to4tundg004006 up
sudo ip -6 tunnel add gre6tundg004006 mode ip6gre remote fc00:6:4::253 local fc00:6:4::254
sudo ip addr add 10.6.4.254/30 dev gre6tundg004006
sudo ip link set gre6tundg004006 mtu 1300
sudo ip link set gre6tundg004006 up
sudo ip tunnel add 6to4tundg004007 mode sit remote 31.216.62.162 local 185.223.235.100
sudo ip -6 addr add fc00:7:4::254/64 dev 6to4tundg004007
sudo ip link set 6to4tundg004007 mtu 1400
sudo ip link set 6to4tundg004007 up
sudo ip -6 tunnel add gre6tundg004007 mode ip6gre remote fc00:7:4::253 local fc00:7:4::254
sudo ip addr add 10.7.4.254/30 dev gre6tundg004007
sudo ip link set gre6tundg004007 mtu 1300
sudo ip link set gre6tundg004007 up
