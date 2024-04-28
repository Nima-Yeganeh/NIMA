sudo ip tunnel add 6to4tunir002001 mode sit remote 178.62.236.174 local 159.223.28.71
sudo ip -6 addr add fc00:2:1::253/64 dev 6to4tunir002001
sudo ip link set 6to4tunir002001 mtu 1400
sudo ip link set 6to4tunir002001 up
sudo ip -6 tunnel add gre6tunir002001 mode ip6gre remote fc00:2:1::254 local fc00:2:1::253
sudo ip addr add 10.2.1.253/30 dev gre6tunir002001
sudo ip link set gre6tunir002001 mtu 1300
sudo ip link set gre6tunir002001 up
sudo ip tunnel add 6to4tunir002002 mode sit remote 165.22.115.63 local 159.223.28.71
sudo ip -6 addr add fc00:2:2::253/64 dev 6to4tunir002002
sudo ip link set 6to4tunir002002 mtu 1400
sudo ip link set 6to4tunir002002 up
sudo ip -6 tunnel add gre6tunir002002 mode ip6gre remote fc00:2:2::254 local fc00:2:2::253
sudo ip addr add 10.2.2.253/30 dev gre6tunir002002
sudo ip link set gre6tunir002002 mtu 1300
sudo ip link set gre6tunir002002 up
sudo ip tunnel add 6to4tunir002003 mode sit remote 165.232.66.46 local 159.223.28.71
sudo ip -6 addr add fc00:2:3::253/64 dev 6to4tunir002003
sudo ip link set 6to4tunir002003 mtu 1400
sudo ip link set 6to4tunir002003 up
sudo ip -6 tunnel add gre6tunir002003 mode ip6gre remote fc00:2:3::254 local fc00:2:3::253
sudo ip addr add 10.2.3.253/30 dev gre6tunir002003
sudo ip link set gre6tunir002003 mtu 1300
sudo ip link set gre6tunir002003 up
sudo ip tunnel add 6to4tunir002004 mode sit remote 159.203.98.51 local 159.223.28.71
sudo ip -6 addr add fc00:2:4::253/64 dev 6to4tunir002004
sudo ip link set 6to4tunir002004 mtu 1400
sudo ip link set 6to4tunir002004 up
sudo ip -6 tunnel add gre6tunir002004 mode ip6gre remote fc00:2:4::254 local fc00:2:4::253
sudo ip addr add 10.2.4.253/30 dev gre6tunir002004
sudo ip link set gre6tunir002004 mtu 1300
sudo ip link set gre6tunir002004 up
sudo ip tunnel add 6to4tunir002005 mode sit remote 143.110.213.176 local 159.223.28.71
sudo ip -6 addr add fc00:2:5::253/64 dev 6to4tunir002005
sudo ip link set 6to4tunir002005 mtu 1400
sudo ip link set 6to4tunir002005 up
sudo ip -6 tunnel add gre6tunir002005 mode ip6gre remote fc00:2:5::254 local fc00:2:5::253
sudo ip addr add 10.2.5.253/30 dev gre6tunir002005
sudo ip link set gre6tunir002005 mtu 1300
sudo ip link set gre6tunir002005 up
sudo ip tunnel add 6to4tunir002006 mode sit remote 209.38.32.113 local 159.223.28.71
sudo ip -6 addr add fc00:2:6::253/64 dev 6to4tunir002006
sudo ip link set 6to4tunir002006 mtu 1400
sudo ip link set 6to4tunir002006 up
sudo ip -6 tunnel add gre6tunir002006 mode ip6gre remote fc00:2:6::254 local fc00:2:6::253
sudo ip addr add 10.2.6.253/30 dev gre6tunir002006
sudo ip link set gre6tunir002006 mtu 1300
sudo ip link set gre6tunir002006 up
sudo ip tunnel add 6to4tunir002007 mode sit remote 178.128.40.246 local 159.223.28.71
sudo ip -6 addr add fc00:2:7::253/64 dev 6to4tunir002007
sudo ip link set 6to4tunir002007 mtu 1400
sudo ip link set 6to4tunir002007 up
sudo ip -6 tunnel add gre6tunir002007 mode ip6gre remote fc00:2:7::254 local fc00:2:7::253
sudo ip addr add 10.2.7.253/30 dev gre6tunir002007
sudo ip link set gre6tunir002007 mtu 1300
sudo ip link set gre6tunir002007 up
sudo ip tunnel add 6to4tunir002008 mode sit remote 68.183.66.203 local 159.223.28.71
sudo ip -6 addr add fc00:2:8::253/64 dev 6to4tunir002008
sudo ip link set 6to4tunir002008 mtu 1400
sudo ip link set 6to4tunir002008 up
sudo ip -6 tunnel add gre6tunir002008 mode ip6gre remote fc00:2:8::254 local fc00:2:8::253
sudo ip addr add 10.2.8.253/30 dev gre6tunir002008
sudo ip link set gre6tunir002008 mtu 1300
sudo ip link set gre6tunir002008 up
sudo ip tunnel add 6to4tunir002009 mode sit remote 146.190.112.99 local 159.223.28.71
sudo ip -6 addr add fc00:2:9::253/64 dev 6to4tunir002009
sudo ip link set 6to4tunir002009 mtu 1400
sudo ip link set 6to4tunir002009 up
sudo ip -6 tunnel add gre6tunir002009 mode ip6gre remote fc00:2:9::254 local fc00:2:9::253
sudo ip addr add 10.2.9.253/30 dev gre6tunir002009
sudo ip link set gre6tunir002009 mtu 1300
sudo ip link set gre6tunir002009 up
