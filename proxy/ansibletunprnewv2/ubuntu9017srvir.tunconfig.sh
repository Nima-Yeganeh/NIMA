sudo ip tunnel add 6to4tunir017001 mode sit remote 157.90.71.217 local 94.182.138.88
sudo ip -6 addr add fc00:17:1::253/64 dev 6to4tunir017001
sudo ip link set 6to4tunir017001 mtu 1400
sudo ip link set 6to4tunir017001 up
sudo ip -6 tunnel add gre6tunir017001 mode ip6gre remote fc00:17:1::254 local fc00:17:1::253
sudo ip addr add 10.17.1.253/30 dev gre6tunir017001
sudo ip link set gre6tunir017001 mtu 1300
sudo ip link set gre6tunir017001 up
sudo ip tunnel add 6to4tunir017002 mode sit remote 148.251.119.123 local 94.182.138.88
sudo ip -6 addr add fc00:17:2::253/64 dev 6to4tunir017002
sudo ip link set 6to4tunir017002 mtu 1400
sudo ip link set 6to4tunir017002 up
sudo ip -6 tunnel add gre6tunir017002 mode ip6gre remote fc00:17:2::254 local fc00:17:2::253
sudo ip addr add 10.17.2.253/30 dev gre6tunir017002
sudo ip link set gre6tunir017002 mtu 1300
sudo ip link set gre6tunir017002 up
sudo ip tunnel add 6to4tunir017003 mode sit remote 136.243.26.216 local 94.182.138.88
sudo ip -6 addr add fc00:17:3::253/64 dev 6to4tunir017003
sudo ip link set 6to4tunir017003 mtu 1400
sudo ip link set 6to4tunir017003 up
sudo ip -6 tunnel add gre6tunir017003 mode ip6gre remote fc00:17:3::254 local fc00:17:3::253
sudo ip addr add 10.17.3.253/30 dev gre6tunir017003
sudo ip link set gre6tunir017003 mtu 1300
sudo ip link set gre6tunir017003 up
sudo ip tunnel add 6to4tunir017004 mode sit remote 185.223.235.100 local 94.182.138.88
sudo ip -6 addr add fc00:17:4::253/64 dev 6to4tunir017004
sudo ip link set 6to4tunir017004 mtu 1400
sudo ip link set 6to4tunir017004 up
sudo ip -6 tunnel add gre6tunir017004 mode ip6gre remote fc00:17:4::254 local fc00:17:4::253
sudo ip addr add 10.17.4.253/30 dev gre6tunir017004
sudo ip link set gre6tunir017004 mtu 1300
sudo ip link set gre6tunir017004 up
sudo ip tunnel add 6to4tunir017005 mode sit remote 136.243.26.215 local 94.182.138.88
sudo ip -6 addr add fc00:17:5::253/64 dev 6to4tunir017005
sudo ip link set 6to4tunir017005 mtu 1400
sudo ip link set 6to4tunir017005 up
sudo ip -6 tunnel add gre6tunir017005 mode ip6gre remote fc00:17:5::254 local fc00:17:5::253
sudo ip addr add 10.17.5.253/30 dev gre6tunir017005
sudo ip link set gre6tunir017005 mtu 1300
sudo ip link set gre6tunir017005 up
sudo ip tunnel add 6to4tunir017006 mode sit remote 152.42.137.215 local 94.182.138.88
sudo ip -6 addr add fc00:17:6::253/64 dev 6to4tunir017006
sudo ip link set 6to4tunir017006 mtu 1400
sudo ip link set 6to4tunir017006 up
sudo ip -6 tunnel add gre6tunir017006 mode ip6gre remote fc00:17:6::254 local fc00:17:6::253
sudo ip addr add 10.17.6.253/30 dev gre6tunir017006
sudo ip link set gre6tunir017006 mtu 1300
sudo ip link set gre6tunir017006 up
sudo ip tunnel add 6to4tunir017007 mode sit remote 139.59.167.164 local 94.182.138.88
sudo ip -6 addr add fc00:17:7::253/64 dev 6to4tunir017007
sudo ip link set 6to4tunir017007 mtu 1400
sudo ip link set 6to4tunir017007 up
sudo ip -6 tunnel add gre6tunir017007 mode ip6gre remote fc00:17:7::254 local fc00:17:7::253
sudo ip addr add 10.17.7.253/30 dev gre6tunir017007
sudo ip link set gre6tunir017007 mtu 1300
sudo ip link set gre6tunir017007 up
sudo ip tunnel add 6to4tunir017008 mode sit remote 206.189.24.175 local 94.182.138.88
sudo ip -6 addr add fc00:17:8::253/64 dev 6to4tunir017008
sudo ip link set 6to4tunir017008 mtu 1400
sudo ip link set 6to4tunir017008 up
sudo ip -6 tunnel add gre6tunir017008 mode ip6gre remote fc00:17:8::254 local fc00:17:8::253
sudo ip addr add 10.17.8.253/30 dev gre6tunir017008
sudo ip link set gre6tunir017008 mtu 1300
sudo ip link set gre6tunir017008 up
