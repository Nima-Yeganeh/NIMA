sudo ip tunnel add 6to4tunir020001 mode sit remote 157.90.71.217 local 185.26.32.137
sudo ip -6 addr add fc00:20:1::253/64 dev 6to4tunir020001
sudo ip link set 6to4tunir020001 mtu 1400
sudo ip link set 6to4tunir020001 up
sudo ip -6 tunnel add gre6tunir020001 mode ip6gre remote fc00:20:1::254 local fc00:20:1::253
sudo ip addr add 10.20.1.253/30 dev gre6tunir020001
sudo ip link set gre6tunir020001 mtu 1300
sudo ip link set gre6tunir020001 up
sudo ip tunnel add 6to4tunir020002 mode sit remote 148.251.119.123 local 185.26.32.137
sudo ip -6 addr add fc00:20:2::253/64 dev 6to4tunir020002
sudo ip link set 6to4tunir020002 mtu 1400
sudo ip link set 6to4tunir020002 up
sudo ip -6 tunnel add gre6tunir020002 mode ip6gre remote fc00:20:2::254 local fc00:20:2::253
sudo ip addr add 10.20.2.253/30 dev gre6tunir020002
sudo ip link set gre6tunir020002 mtu 1300
sudo ip link set gre6tunir020002 up
sudo ip tunnel add 6to4tunir020003 mode sit remote 136.243.26.216 local 185.26.32.137
sudo ip -6 addr add fc00:20:3::253/64 dev 6to4tunir020003
sudo ip link set 6to4tunir020003 mtu 1400
sudo ip link set 6to4tunir020003 up
sudo ip -6 tunnel add gre6tunir020003 mode ip6gre remote fc00:20:3::254 local fc00:20:3::253
sudo ip addr add 10.20.3.253/30 dev gre6tunir020003
sudo ip link set gre6tunir020003 mtu 1300
sudo ip link set gre6tunir020003 up
sudo ip tunnel add 6to4tunir020004 mode sit remote 185.223.235.100 local 185.26.32.137
sudo ip -6 addr add fc00:20:4::253/64 dev 6to4tunir020004
sudo ip link set 6to4tunir020004 mtu 1400
sudo ip link set 6to4tunir020004 up
sudo ip -6 tunnel add gre6tunir020004 mode ip6gre remote fc00:20:4::254 local fc00:20:4::253
sudo ip addr add 10.20.4.253/30 dev gre6tunir020004
sudo ip link set gre6tunir020004 mtu 1300
sudo ip link set gre6tunir020004 up
sudo ip tunnel add 6to4tunir020005 mode sit remote 136.243.26.215 local 185.26.32.137
sudo ip -6 addr add fc00:20:5::253/64 dev 6to4tunir020005
sudo ip link set 6to4tunir020005 mtu 1400
sudo ip link set 6to4tunir020005 up
sudo ip -6 tunnel add gre6tunir020005 mode ip6gre remote fc00:20:5::254 local fc00:20:5::253
sudo ip addr add 10.20.5.253/30 dev gre6tunir020005
sudo ip link set gre6tunir020005 mtu 1300
sudo ip link set gre6tunir020005 up
sudo ip tunnel add 6to4tunir020006 mode sit remote 152.42.137.215 local 185.26.32.137
sudo ip -6 addr add fc00:20:6::253/64 dev 6to4tunir020006
sudo ip link set 6to4tunir020006 mtu 1400
sudo ip link set 6to4tunir020006 up
sudo ip -6 tunnel add gre6tunir020006 mode ip6gre remote fc00:20:6::254 local fc00:20:6::253
sudo ip addr add 10.20.6.253/30 dev gre6tunir020006
sudo ip link set gre6tunir020006 mtu 1300
sudo ip link set gre6tunir020006 up
sudo ip tunnel add 6to4tunir020007 mode sit remote 139.59.167.164 local 185.26.32.137
sudo ip -6 addr add fc00:20:7::253/64 dev 6to4tunir020007
sudo ip link set 6to4tunir020007 mtu 1400
sudo ip link set 6to4tunir020007 up
sudo ip -6 tunnel add gre6tunir020007 mode ip6gre remote fc00:20:7::254 local fc00:20:7::253
sudo ip addr add 10.20.7.253/30 dev gre6tunir020007
sudo ip link set gre6tunir020007 mtu 1300
sudo ip link set gre6tunir020007 up
sudo ip tunnel add 6to4tunir020008 mode sit remote 206.189.24.175 local 185.26.32.137
sudo ip -6 addr add fc00:20:8::253/64 dev 6to4tunir020008
sudo ip link set 6to4tunir020008 mtu 1400
sudo ip link set 6to4tunir020008 up
sudo ip -6 tunnel add gre6tunir020008 mode ip6gre remote fc00:20:8::254 local fc00:20:8::253
sudo ip addr add 10.20.8.253/30 dev gre6tunir020008
sudo ip link set gre6tunir020008 mtu 1300
sudo ip link set gre6tunir020008 up
