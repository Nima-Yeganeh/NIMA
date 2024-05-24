sudo ip tunnel add 6to4tunir032001 mode sit remote 157.90.71.217 local 185.26.32.226
sudo ip -6 addr add fc00:32:1::253/64 dev 6to4tunir032001
sudo ip link set 6to4tunir032001 mtu 1400
sudo ip link set 6to4tunir032001 up
sudo ip -6 tunnel add gre6tunir032001 mode ip6gre remote fc00:32:1::254 local fc00:32:1::253
sudo ip addr add 10.32.1.253/30 dev gre6tunir032001
sudo ip link set gre6tunir032001 mtu 1300
sudo ip link set gre6tunir032001 up
sudo ip tunnel add 6to4tunir032002 mode sit remote 148.251.119.123 local 185.26.32.226
sudo ip -6 addr add fc00:32:2::253/64 dev 6to4tunir032002
sudo ip link set 6to4tunir032002 mtu 1400
sudo ip link set 6to4tunir032002 up
sudo ip -6 tunnel add gre6tunir032002 mode ip6gre remote fc00:32:2::254 local fc00:32:2::253
sudo ip addr add 10.32.2.253/30 dev gre6tunir032002
sudo ip link set gre6tunir032002 mtu 1300
sudo ip link set gre6tunir032002 up
sudo ip tunnel add 6to4tunir032003 mode sit remote 136.243.26.216 local 185.26.32.226
sudo ip -6 addr add fc00:32:3::253/64 dev 6to4tunir032003
sudo ip link set 6to4tunir032003 mtu 1400
sudo ip link set 6to4tunir032003 up
sudo ip -6 tunnel add gre6tunir032003 mode ip6gre remote fc00:32:3::254 local fc00:32:3::253
sudo ip addr add 10.32.3.253/30 dev gre6tunir032003
sudo ip link set gre6tunir032003 mtu 1300
sudo ip link set gre6tunir032003 up
sudo ip tunnel add 6to4tunir032004 mode sit remote 209.38.36.161 local 185.26.32.226
sudo ip -6 addr add fc00:32:4::253/64 dev 6to4tunir032004
sudo ip link set 6to4tunir032004 mtu 1400
sudo ip link set 6to4tunir032004 up
sudo ip -6 tunnel add gre6tunir032004 mode ip6gre remote fc00:32:4::254 local fc00:32:4::253
sudo ip addr add 10.32.4.253/30 dev gre6tunir032004
sudo ip link set gre6tunir032004 mtu 1300
sudo ip link set gre6tunir032004 up
sudo ip tunnel add 6to4tunir032005 mode sit remote 136.243.26.215 local 185.26.32.226
sudo ip -6 addr add fc00:32:5::253/64 dev 6to4tunir032005
sudo ip link set 6to4tunir032005 mtu 1400
sudo ip link set 6to4tunir032005 up
sudo ip -6 tunnel add gre6tunir032005 mode ip6gre remote fc00:32:5::254 local fc00:32:5::253
sudo ip addr add 10.32.5.253/30 dev gre6tunir032005
sudo ip link set gre6tunir032005 mtu 1300
sudo ip link set gre6tunir032005 up
sudo ip tunnel add 6to4tunir032006 mode sit remote 152.42.137.215 local 185.26.32.226
sudo ip -6 addr add fc00:32:6::253/64 dev 6to4tunir032006
sudo ip link set 6to4tunir032006 mtu 1400
sudo ip link set 6to4tunir032006 up
sudo ip -6 tunnel add gre6tunir032006 mode ip6gre remote fc00:32:6::254 local fc00:32:6::253
sudo ip addr add 10.32.6.253/30 dev gre6tunir032006
sudo ip link set gre6tunir032006 mtu 1300
sudo ip link set gre6tunir032006 up
sudo ip tunnel add 6to4tunir032007 mode sit remote 139.59.167.164 local 185.26.32.226
sudo ip -6 addr add fc00:32:7::253/64 dev 6to4tunir032007
sudo ip link set 6to4tunir032007 mtu 1400
sudo ip link set 6to4tunir032007 up
sudo ip -6 tunnel add gre6tunir032007 mode ip6gre remote fc00:32:7::254 local fc00:32:7::253
sudo ip addr add 10.32.7.253/30 dev gre6tunir032007
sudo ip link set gre6tunir032007 mtu 1300
sudo ip link set gre6tunir032007 up
sudo ip tunnel add 6to4tunir032008 mode sit remote 206.189.24.175 local 185.26.32.226
sudo ip -6 addr add fc00:32:8::253/64 dev 6to4tunir032008
sudo ip link set 6to4tunir032008 mtu 1400
sudo ip link set 6to4tunir032008 up
sudo ip -6 tunnel add gre6tunir032008 mode ip6gre remote fc00:32:8::254 local fc00:32:8::253
sudo ip addr add 10.32.8.253/30 dev gre6tunir032008
sudo ip link set gre6tunir032008 mtu 1300
sudo ip link set gre6tunir032008 up
sudo ip tunnel add 6to4tunir032009 mode sit remote 142.93.238.98 local 185.26.32.226
sudo ip -6 addr add fc00:32:9::253/64 dev 6to4tunir032009
sudo ip link set 6to4tunir032009 mtu 1400
sudo ip link set 6to4tunir032009 up
sudo ip -6 tunnel add gre6tunir032009 mode ip6gre remote fc00:32:9::254 local fc00:32:9::253
sudo ip addr add 10.32.9.253/30 dev gre6tunir032009
sudo ip link set gre6tunir032009 mtu 1300
sudo ip link set gre6tunir032009 up
