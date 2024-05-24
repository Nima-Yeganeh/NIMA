sudo ip tunnel add 6to4tunir034001 mode sit remote 157.90.71.217 local 185.26.32.238
sudo ip -6 addr add fc00:34:1::253/64 dev 6to4tunir034001
sudo ip link set 6to4tunir034001 mtu 1400
sudo ip link set 6to4tunir034001 up
sudo ip -6 tunnel add gre6tunir034001 mode ip6gre remote fc00:34:1::254 local fc00:34:1::253
sudo ip addr add 10.34.1.253/30 dev gre6tunir034001
sudo ip link set gre6tunir034001 mtu 1300
sudo ip link set gre6tunir034001 up
sudo ip tunnel add 6to4tunir034002 mode sit remote 148.251.119.123 local 185.26.32.238
sudo ip -6 addr add fc00:34:2::253/64 dev 6to4tunir034002
sudo ip link set 6to4tunir034002 mtu 1400
sudo ip link set 6to4tunir034002 up
sudo ip -6 tunnel add gre6tunir034002 mode ip6gre remote fc00:34:2::254 local fc00:34:2::253
sudo ip addr add 10.34.2.253/30 dev gre6tunir034002
sudo ip link set gre6tunir034002 mtu 1300
sudo ip link set gre6tunir034002 up
sudo ip tunnel add 6to4tunir034003 mode sit remote 136.243.26.216 local 185.26.32.238
sudo ip -6 addr add fc00:34:3::253/64 dev 6to4tunir034003
sudo ip link set 6to4tunir034003 mtu 1400
sudo ip link set 6to4tunir034003 up
sudo ip -6 tunnel add gre6tunir034003 mode ip6gre remote fc00:34:3::254 local fc00:34:3::253
sudo ip addr add 10.34.3.253/30 dev gre6tunir034003
sudo ip link set gre6tunir034003 mtu 1300
sudo ip link set gre6tunir034003 up
sudo ip tunnel add 6to4tunir034004 mode sit remote 209.38.36.161 local 185.26.32.238
sudo ip -6 addr add fc00:34:4::253/64 dev 6to4tunir034004
sudo ip link set 6to4tunir034004 mtu 1400
sudo ip link set 6to4tunir034004 up
sudo ip -6 tunnel add gre6tunir034004 mode ip6gre remote fc00:34:4::254 local fc00:34:4::253
sudo ip addr add 10.34.4.253/30 dev gre6tunir034004
sudo ip link set gre6tunir034004 mtu 1300
sudo ip link set gre6tunir034004 up
sudo ip tunnel add 6to4tunir034005 mode sit remote 136.243.26.215 local 185.26.32.238
sudo ip -6 addr add fc00:34:5::253/64 dev 6to4tunir034005
sudo ip link set 6to4tunir034005 mtu 1400
sudo ip link set 6to4tunir034005 up
sudo ip -6 tunnel add gre6tunir034005 mode ip6gre remote fc00:34:5::254 local fc00:34:5::253
sudo ip addr add 10.34.5.253/30 dev gre6tunir034005
sudo ip link set gre6tunir034005 mtu 1300
sudo ip link set gre6tunir034005 up
sudo ip tunnel add 6to4tunir034006 mode sit remote 152.42.137.215 local 185.26.32.238
sudo ip -6 addr add fc00:34:6::253/64 dev 6to4tunir034006
sudo ip link set 6to4tunir034006 mtu 1400
sudo ip link set 6to4tunir034006 up
sudo ip -6 tunnel add gre6tunir034006 mode ip6gre remote fc00:34:6::254 local fc00:34:6::253
sudo ip addr add 10.34.6.253/30 dev gre6tunir034006
sudo ip link set gre6tunir034006 mtu 1300
sudo ip link set gre6tunir034006 up
sudo ip tunnel add 6to4tunir034007 mode sit remote 139.59.167.164 local 185.26.32.238
sudo ip -6 addr add fc00:34:7::253/64 dev 6to4tunir034007
sudo ip link set 6to4tunir034007 mtu 1400
sudo ip link set 6to4tunir034007 up
sudo ip -6 tunnel add gre6tunir034007 mode ip6gre remote fc00:34:7::254 local fc00:34:7::253
sudo ip addr add 10.34.7.253/30 dev gre6tunir034007
sudo ip link set gre6tunir034007 mtu 1300
sudo ip link set gre6tunir034007 up
sudo ip tunnel add 6to4tunir034008 mode sit remote 206.189.24.175 local 185.26.32.238
sudo ip -6 addr add fc00:34:8::253/64 dev 6to4tunir034008
sudo ip link set 6to4tunir034008 mtu 1400
sudo ip link set 6to4tunir034008 up
sudo ip -6 tunnel add gre6tunir034008 mode ip6gre remote fc00:34:8::254 local fc00:34:8::253
sudo ip addr add 10.34.8.253/30 dev gre6tunir034008
sudo ip link set gre6tunir034008 mtu 1300
sudo ip link set gre6tunir034008 up
sudo ip tunnel add 6to4tunir034009 mode sit remote 142.93.238.98 local 185.26.32.238
sudo ip -6 addr add fc00:34:9::253/64 dev 6to4tunir034009
sudo ip link set 6to4tunir034009 mtu 1400
sudo ip link set 6to4tunir034009 up
sudo ip -6 tunnel add gre6tunir034009 mode ip6gre remote fc00:34:9::254 local fc00:34:9::253
sudo ip addr add 10.34.9.253/30 dev gre6tunir034009
sudo ip link set gre6tunir034009 mtu 1300
sudo ip link set gre6tunir034009 up
