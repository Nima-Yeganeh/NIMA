sudo ip tunnel add 6to4tunir019001 mode sit remote 157.90.71.217 local 185.26.32.160
sudo ip -6 addr add fc00:19:1::253/64 dev 6to4tunir019001
sudo ip link set 6to4tunir019001 mtu 1400
sudo ip link set 6to4tunir019001 up
sudo ip -6 tunnel add gre6tunir019001 mode ip6gre remote fc00:19:1::254 local fc00:19:1::253
sudo ip addr add 10.19.1.253/30 dev gre6tunir019001
sudo ip link set gre6tunir019001 mtu 1300
sudo ip link set gre6tunir019001 up
sudo ip tunnel add 6to4tunir019002 mode sit remote 148.251.119.123 local 185.26.32.160
sudo ip -6 addr add fc00:19:2::253/64 dev 6to4tunir019002
sudo ip link set 6to4tunir019002 mtu 1400
sudo ip link set 6to4tunir019002 up
sudo ip -6 tunnel add gre6tunir019002 mode ip6gre remote fc00:19:2::254 local fc00:19:2::253
sudo ip addr add 10.19.2.253/30 dev gre6tunir019002
sudo ip link set gre6tunir019002 mtu 1300
sudo ip link set gre6tunir019002 up
sudo ip tunnel add 6to4tunir019003 mode sit remote 136.243.26.216 local 185.26.32.160
sudo ip -6 addr add fc00:19:3::253/64 dev 6to4tunir019003
sudo ip link set 6to4tunir019003 mtu 1400
sudo ip link set 6to4tunir019003 up
sudo ip -6 tunnel add gre6tunir019003 mode ip6gre remote fc00:19:3::254 local fc00:19:3::253
sudo ip addr add 10.19.3.253/30 dev gre6tunir019003
sudo ip link set gre6tunir019003 mtu 1300
sudo ip link set gre6tunir019003 up
sudo ip tunnel add 6to4tunir019004 mode sit remote 185.223.235.100 local 185.26.32.160
sudo ip -6 addr add fc00:19:4::253/64 dev 6to4tunir019004
sudo ip link set 6to4tunir019004 mtu 1400
sudo ip link set 6to4tunir019004 up
sudo ip -6 tunnel add gre6tunir019004 mode ip6gre remote fc00:19:4::254 local fc00:19:4::253
sudo ip addr add 10.19.4.253/30 dev gre6tunir019004
sudo ip link set gre6tunir019004 mtu 1300
sudo ip link set gre6tunir019004 up
sudo ip tunnel add 6to4tunir019005 mode sit remote 136.243.26.215 local 185.26.32.160
sudo ip -6 addr add fc00:19:5::253/64 dev 6to4tunir019005
sudo ip link set 6to4tunir019005 mtu 1400
sudo ip link set 6to4tunir019005 up
sudo ip -6 tunnel add gre6tunir019005 mode ip6gre remote fc00:19:5::254 local fc00:19:5::253
sudo ip addr add 10.19.5.253/30 dev gre6tunir019005
sudo ip link set gre6tunir019005 mtu 1300
sudo ip link set gre6tunir019005 up
sudo ip tunnel add 6to4tunir019006 mode sit remote 152.42.137.215 local 185.26.32.160
sudo ip -6 addr add fc00:19:6::253/64 dev 6to4tunir019006
sudo ip link set 6to4tunir019006 mtu 1400
sudo ip link set 6to4tunir019006 up
sudo ip -6 tunnel add gre6tunir019006 mode ip6gre remote fc00:19:6::254 local fc00:19:6::253
sudo ip addr add 10.19.6.253/30 dev gre6tunir019006
sudo ip link set gre6tunir019006 mtu 1300
sudo ip link set gre6tunir019006 up
sudo ip tunnel add 6to4tunir019007 mode sit remote 139.59.167.164 local 185.26.32.160
sudo ip -6 addr add fc00:19:7::253/64 dev 6to4tunir019007
sudo ip link set 6to4tunir019007 mtu 1400
sudo ip link set 6to4tunir019007 up
sudo ip -6 tunnel add gre6tunir019007 mode ip6gre remote fc00:19:7::254 local fc00:19:7::253
sudo ip addr add 10.19.7.253/30 dev gre6tunir019007
sudo ip link set gre6tunir019007 mtu 1300
sudo ip link set gre6tunir019007 up
sudo ip tunnel add 6to4tunir019008 mode sit remote 206.189.24.175 local 185.26.32.160
sudo ip -6 addr add fc00:19:8::253/64 dev 6to4tunir019008
sudo ip link set 6to4tunir019008 mtu 1400
sudo ip link set 6to4tunir019008 up
sudo ip -6 tunnel add gre6tunir019008 mode ip6gre remote fc00:19:8::254 local fc00:19:8::253
sudo ip addr add 10.19.8.253/30 dev gre6tunir019008
sudo ip link set gre6tunir019008 mtu 1300
sudo ip link set gre6tunir019008 up
