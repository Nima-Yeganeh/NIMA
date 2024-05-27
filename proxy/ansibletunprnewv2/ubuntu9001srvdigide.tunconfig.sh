sudo ip tunnel add 6to4tundg001001 mode sit remote 185.26.32.226 local 136.243.26.215
sudo ip -6 addr add fc00:1:1::254/64 dev 6to4tundg001001
sudo ip link set 6to4tundg001001 mtu 1400
sudo ip link set 6to4tundg001001 up
sudo ip -6 tunnel add gre6tundg001001 mode ip6gre remote fc00:1:1::253 local fc00:1:1::254
sudo ip addr add 10.1.1.254/30 dev gre6tundg001001
sudo ip link set gre6tundg001001 mtu 1300
sudo ip link set gre6tundg001001 up
sudo ip tunnel add 6to4tundg001002 mode sit remote 185.26.32.231 local 136.243.26.215
sudo ip -6 addr add fc00:2:1::254/64 dev 6to4tundg001002
sudo ip link set 6to4tundg001002 mtu 1400
sudo ip link set 6to4tundg001002 up
sudo ip -6 tunnel add gre6tundg001002 mode ip6gre remote fc00:2:1::253 local fc00:2:1::254
sudo ip addr add 10.2.1.254/30 dev gre6tundg001002
sudo ip link set gre6tundg001002 mtu 1300
sudo ip link set gre6tundg001002 up
sudo ip tunnel add 6to4tundg001003 mode sit remote 185.26.32.238 local 136.243.26.215
sudo ip -6 addr add fc00:3:1::254/64 dev 6to4tundg001003
sudo ip link set 6to4tundg001003 mtu 1400
sudo ip link set 6to4tundg001003 up
sudo ip -6 tunnel add gre6tundg001003 mode ip6gre remote fc00:3:1::253 local fc00:3:1::254
sudo ip addr add 10.3.1.254/30 dev gre6tundg001003
sudo ip link set gre6tundg001003 mtu 1300
sudo ip link set gre6tundg001003 up
sudo ip tunnel add 6to4tundg001004 mode sit remote 185.26.32.252 local 136.243.26.215
sudo ip -6 addr add fc00:4:1::254/64 dev 6to4tundg001004
sudo ip link set 6to4tundg001004 mtu 1400
sudo ip link set 6to4tundg001004 up
sudo ip -6 tunnel add gre6tundg001004 mode ip6gre remote fc00:4:1::253 local fc00:4:1::254
sudo ip addr add 10.4.1.254/30 dev gre6tundg001004
sudo ip link set gre6tundg001004 mtu 1300
sudo ip link set gre6tundg001004 up
sudo ip tunnel add 6to4tundg001005 mode sit remote 185.26.32.160 local 136.243.26.215
sudo ip -6 addr add fc00:5:1::254/64 dev 6to4tundg001005
sudo ip link set 6to4tundg001005 mtu 1400
sudo ip link set 6to4tundg001005 up
sudo ip -6 tunnel add gre6tundg001005 mode ip6gre remote fc00:5:1::253 local fc00:5:1::254
sudo ip addr add 10.5.1.254/30 dev gre6tundg001005
sudo ip link set gre6tundg001005 mtu 1300
sudo ip link set gre6tundg001005 up
sudo ip tunnel add 6to4tundg001006 mode sit remote 185.26.32.13 local 136.243.26.215
sudo ip -6 addr add fc00:6:1::254/64 dev 6to4tundg001006
sudo ip link set 6to4tundg001006 mtu 1400
sudo ip link set 6to4tundg001006 up
sudo ip -6 tunnel add gre6tundg001006 mode ip6gre remote fc00:6:1::253 local fc00:6:1::254
sudo ip addr add 10.6.1.254/30 dev gre6tundg001006
sudo ip link set gre6tundg001006 mtu 1300
sudo ip link set gre6tundg001006 up
sudo ip tunnel add 6to4tundg001007 mode sit remote 185.26.32.137 local 136.243.26.215
sudo ip -6 addr add fc00:7:1::254/64 dev 6to4tundg001007
sudo ip link set 6to4tundg001007 mtu 1400
sudo ip link set 6to4tundg001007 up
sudo ip -6 tunnel add gre6tundg001007 mode ip6gre remote fc00:7:1::253 local fc00:7:1::254
sudo ip addr add 10.7.1.254/30 dev gre6tundg001007
sudo ip link set gre6tundg001007 mtu 1300
sudo ip link set gre6tundg001007 up
sudo ip tunnel add 6to4tundg001008 mode sit remote 185.26.32.175 local 136.243.26.215
sudo ip -6 addr add fc00:8:1::254/64 dev 6to4tundg001008
sudo ip link set 6to4tundg001008 mtu 1400
sudo ip link set 6to4tundg001008 up
sudo ip -6 tunnel add gre6tundg001008 mode ip6gre remote fc00:8:1::253 local fc00:8:1::254
sudo ip addr add 10.8.1.254/30 dev gre6tundg001008
sudo ip link set gre6tundg001008 mtu 1300
sudo ip link set gre6tundg001008 up
sudo ip tunnel add 6to4tundg001009 mode sit remote 185.26.32.124 local 136.243.26.215
sudo ip -6 addr add fc00:9:1::254/64 dev 6to4tundg001009
sudo ip link set 6to4tundg001009 mtu 1400
sudo ip link set 6to4tundg001009 up
sudo ip -6 tunnel add gre6tundg001009 mode ip6gre remote fc00:9:1::253 local fc00:9:1::254
sudo ip addr add 10.9.1.254/30 dev gre6tundg001009
sudo ip link set gre6tundg001009 mtu 1300
sudo ip link set gre6tundg001009 up
