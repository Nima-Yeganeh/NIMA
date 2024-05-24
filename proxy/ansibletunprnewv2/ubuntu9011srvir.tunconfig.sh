sudo ip tunnel add 6to4tunir011001 mode sit remote 157.90.71.217 local 185.73.3.82
sudo ip -6 addr add fc00:11:1::253/64 dev 6to4tunir011001
sudo ip link set 6to4tunir011001 mtu 1400
sudo ip link set 6to4tunir011001 up
sudo ip -6 tunnel add gre6tunir011001 mode ip6gre remote fc00:11:1::254 local fc00:11:1::253
sudo ip addr add 10.11.1.253/30 dev gre6tunir011001
sudo ip link set gre6tunir011001 mtu 1300
sudo ip link set gre6tunir011001 up
sudo ip tunnel add 6to4tunir011002 mode sit remote 148.251.119.123 local 185.73.3.82
sudo ip -6 addr add fc00:11:2::253/64 dev 6to4tunir011002
sudo ip link set 6to4tunir011002 mtu 1400
sudo ip link set 6to4tunir011002 up
sudo ip -6 tunnel add gre6tunir011002 mode ip6gre remote fc00:11:2::254 local fc00:11:2::253
sudo ip addr add 10.11.2.253/30 dev gre6tunir011002
sudo ip link set gre6tunir011002 mtu 1300
sudo ip link set gre6tunir011002 up
sudo ip tunnel add 6to4tunir011003 mode sit remote 136.243.26.216 local 185.73.3.82
sudo ip -6 addr add fc00:11:3::253/64 dev 6to4tunir011003
sudo ip link set 6to4tunir011003 mtu 1400
sudo ip link set 6to4tunir011003 up
sudo ip -6 tunnel add gre6tunir011003 mode ip6gre remote fc00:11:3::254 local fc00:11:3::253
sudo ip addr add 10.11.3.253/30 dev gre6tunir011003
sudo ip link set gre6tunir011003 mtu 1300
sudo ip link set gre6tunir011003 up
sudo ip tunnel add 6to4tunir011004 mode sit remote 209.38.36.161 local 185.73.3.82
sudo ip -6 addr add fc00:11:4::253/64 dev 6to4tunir011004
sudo ip link set 6to4tunir011004 mtu 1400
sudo ip link set 6to4tunir011004 up
sudo ip -6 tunnel add gre6tunir011004 mode ip6gre remote fc00:11:4::254 local fc00:11:4::253
sudo ip addr add 10.11.4.253/30 dev gre6tunir011004
sudo ip link set gre6tunir011004 mtu 1300
sudo ip link set gre6tunir011004 up
sudo ip tunnel add 6to4tunir011005 mode sit remote 136.243.26.215 local 185.73.3.82
sudo ip -6 addr add fc00:11:5::253/64 dev 6to4tunir011005
sudo ip link set 6to4tunir011005 mtu 1400
sudo ip link set 6to4tunir011005 up
sudo ip -6 tunnel add gre6tunir011005 mode ip6gre remote fc00:11:5::254 local fc00:11:5::253
sudo ip addr add 10.11.5.253/30 dev gre6tunir011005
sudo ip link set gre6tunir011005 mtu 1300
sudo ip link set gre6tunir011005 up
sudo ip tunnel add 6to4tunir011006 mode sit remote 152.42.137.215 local 185.73.3.82
sudo ip -6 addr add fc00:11:6::253/64 dev 6to4tunir011006
sudo ip link set 6to4tunir011006 mtu 1400
sudo ip link set 6to4tunir011006 up
sudo ip -6 tunnel add gre6tunir011006 mode ip6gre remote fc00:11:6::254 local fc00:11:6::253
sudo ip addr add 10.11.6.253/30 dev gre6tunir011006
sudo ip link set gre6tunir011006 mtu 1300
sudo ip link set gre6tunir011006 up
sudo ip tunnel add 6to4tunir011007 mode sit remote 139.59.167.164 local 185.73.3.82
sudo ip -6 addr add fc00:11:7::253/64 dev 6to4tunir011007
sudo ip link set 6to4tunir011007 mtu 1400
sudo ip link set 6to4tunir011007 up
sudo ip -6 tunnel add gre6tunir011007 mode ip6gre remote fc00:11:7::254 local fc00:11:7::253
sudo ip addr add 10.11.7.253/30 dev gre6tunir011007
sudo ip link set gre6tunir011007 mtu 1300
sudo ip link set gre6tunir011007 up
sudo ip tunnel add 6to4tunir011008 mode sit remote 206.189.24.175 local 185.73.3.82
sudo ip -6 addr add fc00:11:8::253/64 dev 6to4tunir011008
sudo ip link set 6to4tunir011008 mtu 1400
sudo ip link set 6to4tunir011008 up
sudo ip -6 tunnel add gre6tunir011008 mode ip6gre remote fc00:11:8::254 local fc00:11:8::253
sudo ip addr add 10.11.8.253/30 dev gre6tunir011008
sudo ip link set gre6tunir011008 mtu 1300
sudo ip link set gre6tunir011008 up
sudo ip tunnel add 6to4tunir011009 mode sit remote 142.93.238.98 local 185.73.3.82
sudo ip -6 addr add fc00:11:9::253/64 dev 6to4tunir011009
sudo ip link set 6to4tunir011009 mtu 1400
sudo ip link set 6to4tunir011009 up
sudo ip -6 tunnel add gre6tunir011009 mode ip6gre remote fc00:11:9::254 local fc00:11:9::253
sudo ip addr add 10.11.9.253/30 dev gre6tunir011009
sudo ip link set gre6tunir011009 mtu 1300
sudo ip link set gre6tunir011009 up
