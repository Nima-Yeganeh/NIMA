sudo ip tunnel add 6to4tunir001001 mode sit remote 159.223.232.98 local 31.216.62.115
sudo ip -6 addr add fc00:1:1::253/64 dev 6to4tunir001001
sudo ip link set 6to4tunir001001 mtu 1400
sudo ip link set 6to4tunir001001 up
sudo ip -6 tunnel add gre6tunir001001 mode ip6gre remote fc00:1:1::254 local fc00:1:1::253
sudo ip addr add 10.1.1.253/30 dev gre6tunir001001
sudo ip link set gre6tunir001001 mtu 1300
sudo ip link set gre6tunir001001 up
sudo ip tunnel add 6to4tunir001002 mode sit remote 134.209.188.24 local 31.216.62.115
sudo ip -6 addr add fc00:1:2::253/64 dev 6to4tunir001002
sudo ip link set 6to4tunir001002 mtu 1400
sudo ip link set 6to4tunir001002 up
sudo ip -6 tunnel add gre6tunir001002 mode ip6gre remote fc00:1:2::254 local fc00:1:2::253
sudo ip addr add 10.1.2.253/30 dev gre6tunir001002
sudo ip link set gre6tunir001002 mtu 1300
sudo ip link set gre6tunir001002 up
sudo ip tunnel add 6to4tunir001003 mode sit remote 139.59.153.194 local 31.216.62.115
sudo ip -6 addr add fc00:1:3::253/64 dev 6to4tunir001003
sudo ip link set 6to4tunir001003 mtu 1400
sudo ip link set 6to4tunir001003 up
sudo ip -6 tunnel add gre6tunir001003 mode ip6gre remote fc00:1:3::254 local fc00:1:3::253
sudo ip addr add 10.1.3.253/30 dev gre6tunir001003
sudo ip link set gre6tunir001003 mtu 1300
sudo ip link set gre6tunir001003 up
sudo ip tunnel add 6to4tunir001004 mode sit remote 167.172.252.251 local 31.216.62.115
sudo ip -6 addr add fc00:1:4::253/64 dev 6to4tunir001004
sudo ip link set 6to4tunir001004 mtu 1400
sudo ip link set 6to4tunir001004 up
sudo ip -6 tunnel add gre6tunir001004 mode ip6gre remote fc00:1:4::254 local fc00:1:4::253
sudo ip addr add 10.1.4.253/30 dev gre6tunir001004
sudo ip link set gre6tunir001004 mtu 1300
sudo ip link set gre6tunir001004 up
sudo ip tunnel add 6to4tunir001005 mode sit remote 159.223.218.156 local 31.216.62.115
sudo ip -6 addr add fc00:1:5::253/64 dev 6to4tunir001005
sudo ip link set 6to4tunir001005 mtu 1400
sudo ip link set 6to4tunir001005 up
sudo ip -6 tunnel add gre6tunir001005 mode ip6gre remote fc00:1:5::254 local fc00:1:5::253
sudo ip addr add 10.1.5.253/30 dev gre6tunir001005
sudo ip link set gre6tunir001005 mtu 1300
sudo ip link set gre6tunir001005 up
sudo ip tunnel add 6to4tunir001006 mode sit remote 142.93.36.60 local 31.216.62.115
sudo ip -6 addr add fc00:1:6::253/64 dev 6to4tunir001006
sudo ip link set 6to4tunir001006 mtu 1400
sudo ip link set 6to4tunir001006 up
sudo ip -6 tunnel add gre6tunir001006 mode ip6gre remote fc00:1:6::254 local fc00:1:6::253
sudo ip addr add 10.1.6.253/30 dev gre6tunir001006
sudo ip link set gre6tunir001006 mtu 1300
sudo ip link set gre6tunir001006 up
sudo ip tunnel add 6to4tunir001007 mode sit remote 164.92.225.12 local 31.216.62.115
sudo ip -6 addr add fc00:1:7::253/64 dev 6to4tunir001007
sudo ip link set 6to4tunir001007 mtu 1400
sudo ip link set 6to4tunir001007 up
sudo ip -6 tunnel add gre6tunir001007 mode ip6gre remote fc00:1:7::254 local fc00:1:7::253
sudo ip addr add 10.1.7.253/30 dev gre6tunir001007
sudo ip link set gre6tunir001007 mtu 1300
sudo ip link set gre6tunir001007 up
sudo ip tunnel add 6to4tunir001008 mode sit remote 159.65.45.191 local 31.216.62.115
sudo ip -6 addr add fc00:1:8::253/64 dev 6to4tunir001008
sudo ip link set 6to4tunir001008 mtu 1400
sudo ip link set 6to4tunir001008 up
sudo ip -6 tunnel add gre6tunir001008 mode ip6gre remote fc00:1:8::254 local fc00:1:8::253
sudo ip addr add 10.1.8.253/30 dev gre6tunir001008
sudo ip link set gre6tunir001008 mtu 1300
sudo ip link set gre6tunir001008 up
sudo ip tunnel add 6to4tunir001009 mode sit remote 167.172.37.71 local 31.216.62.115
sudo ip -6 addr add fc00:1:9::253/64 dev 6to4tunir001009
sudo ip link set 6to4tunir001009 mtu 1400
sudo ip link set 6to4tunir001009 up
sudo ip -6 tunnel add gre6tunir001009 mode ip6gre remote fc00:1:9::254 local fc00:1:9::253
sudo ip addr add 10.1.9.253/30 dev gre6tunir001009
sudo ip link set gre6tunir001009 mtu 1300
sudo ip link set gre6tunir001009 up
sudo ip tunnel add 6to4tunir001010 mode sit remote 134.209.31.57 local 31.216.62.115
sudo ip -6 addr add fc00:1:10::253/64 dev 6to4tunir001010
sudo ip link set 6to4tunir001010 mtu 1400
sudo ip link set 6to4tunir001010 up
sudo ip -6 tunnel add gre6tunir001010 mode ip6gre remote fc00:1:10::254 local fc00:1:10::253
sudo ip addr add 10.1.10.253/30 dev gre6tunir001010
sudo ip link set gre6tunir001010 mtu 1300
sudo ip link set gre6tunir001010 up
