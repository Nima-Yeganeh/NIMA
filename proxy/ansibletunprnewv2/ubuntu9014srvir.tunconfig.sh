sudo ip tunnel add 6to4tunir014001 mode sit remote 157.90.71.217 local 193.111.234.118
sudo ip -6 addr add fc00:14:1::253/64 dev 6to4tunir014001
sudo ip link set 6to4tunir014001 mtu 1400
sudo ip link set 6to4tunir014001 up
sudo ip -6 tunnel add gre6tunir014001 mode ip6gre remote fc00:14:1::254 local fc00:14:1::253
sudo ip addr add 10.14.1.253/30 dev gre6tunir014001
sudo ip link set gre6tunir014001 mtu 1300
sudo ip link set gre6tunir014001 up
sudo ip tunnel add 6to4tunir014002 mode sit remote 148.251.119.123 local 193.111.234.118
sudo ip -6 addr add fc00:14:2::253/64 dev 6to4tunir014002
sudo ip link set 6to4tunir014002 mtu 1400
sudo ip link set 6to4tunir014002 up
sudo ip -6 tunnel add gre6tunir014002 mode ip6gre remote fc00:14:2::254 local fc00:14:2::253
sudo ip addr add 10.14.2.253/30 dev gre6tunir014002
sudo ip link set gre6tunir014002 mtu 1300
sudo ip link set gre6tunir014002 up
sudo ip tunnel add 6to4tunir014003 mode sit remote 136.243.26.216 local 193.111.234.118
sudo ip -6 addr add fc00:14:3::253/64 dev 6to4tunir014003
sudo ip link set 6to4tunir014003 mtu 1400
sudo ip link set 6to4tunir014003 up
sudo ip -6 tunnel add gre6tunir014003 mode ip6gre remote fc00:14:3::254 local fc00:14:3::253
sudo ip addr add 10.14.3.253/30 dev gre6tunir014003
sudo ip link set gre6tunir014003 mtu 1300
sudo ip link set gre6tunir014003 up
sudo ip tunnel add 6to4tunir014004 mode sit remote 185.223.235.100 local 193.111.234.118
sudo ip -6 addr add fc00:14:4::253/64 dev 6to4tunir014004
sudo ip link set 6to4tunir014004 mtu 1400
sudo ip link set 6to4tunir014004 up
sudo ip -6 tunnel add gre6tunir014004 mode ip6gre remote fc00:14:4::254 local fc00:14:4::253
sudo ip addr add 10.14.4.253/30 dev gre6tunir014004
sudo ip link set gre6tunir014004 mtu 1300
sudo ip link set gre6tunir014004 up
sudo ip tunnel add 6to4tunir014005 mode sit remote 136.243.26.215 local 193.111.234.118
sudo ip -6 addr add fc00:14:5::253/64 dev 6to4tunir014005
sudo ip link set 6to4tunir014005 mtu 1400
sudo ip link set 6to4tunir014005 up
sudo ip -6 tunnel add gre6tunir014005 mode ip6gre remote fc00:14:5::254 local fc00:14:5::253
sudo ip addr add 10.14.5.253/30 dev gre6tunir014005
sudo ip link set gre6tunir014005 mtu 1300
sudo ip link set gre6tunir014005 up
sudo ip tunnel add 6to4tunir014006 mode sit remote 152.42.137.215 local 193.111.234.118
sudo ip -6 addr add fc00:14:6::253/64 dev 6to4tunir014006
sudo ip link set 6to4tunir014006 mtu 1400
sudo ip link set 6to4tunir014006 up
sudo ip -6 tunnel add gre6tunir014006 mode ip6gre remote fc00:14:6::254 local fc00:14:6::253
sudo ip addr add 10.14.6.253/30 dev gre6tunir014006
sudo ip link set gre6tunir014006 mtu 1300
sudo ip link set gre6tunir014006 up
sudo ip tunnel add 6to4tunir014007 mode sit remote 139.59.167.164 local 193.111.234.118
sudo ip -6 addr add fc00:14:7::253/64 dev 6to4tunir014007
sudo ip link set 6to4tunir014007 mtu 1400
sudo ip link set 6to4tunir014007 up
sudo ip -6 tunnel add gre6tunir014007 mode ip6gre remote fc00:14:7::254 local fc00:14:7::253
sudo ip addr add 10.14.7.253/30 dev gre6tunir014007
sudo ip link set gre6tunir014007 mtu 1300
sudo ip link set gre6tunir014007 up
sudo ip tunnel add 6to4tunir014008 mode sit remote 206.189.24.175 local 193.111.234.118
sudo ip -6 addr add fc00:14:8::253/64 dev 6to4tunir014008
sudo ip link set 6to4tunir014008 mtu 1400
sudo ip link set 6to4tunir014008 up
sudo ip -6 tunnel add gre6tunir014008 mode ip6gre remote fc00:14:8::254 local fc00:14:8::253
sudo ip addr add 10.14.8.253/30 dev gre6tunir014008
sudo ip link set gre6tunir014008 mtu 1300
sudo ip link set gre6tunir014008 up
