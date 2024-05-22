sudo ip tunnel add 6to4tunir009001 mode sit remote 157.90.71.217 local 94.182.152.106
sudo ip -6 addr add fc00:9:1::253/64 dev 6to4tunir009001
sudo ip link set 6to4tunir009001 mtu 1400
sudo ip link set 6to4tunir009001 up
sudo ip -6 tunnel add gre6tunir009001 mode ip6gre remote fc00:9:1::254 local fc00:9:1::253
sudo ip addr add 10.9.1.253/30 dev gre6tunir009001
sudo ip link set gre6tunir009001 mtu 1300
sudo ip link set gre6tunir009001 up
sudo ip tunnel add 6to4tunir009002 mode sit remote 148.251.119.123 local 94.182.152.106
sudo ip -6 addr add fc00:9:2::253/64 dev 6to4tunir009002
sudo ip link set 6to4tunir009002 mtu 1400
sudo ip link set 6to4tunir009002 up
sudo ip -6 tunnel add gre6tunir009002 mode ip6gre remote fc00:9:2::254 local fc00:9:2::253
sudo ip addr add 10.9.2.253/30 dev gre6tunir009002
sudo ip link set gre6tunir009002 mtu 1300
sudo ip link set gre6tunir009002 up
sudo ip tunnel add 6to4tunir009003 mode sit remote 136.243.26.216 local 94.182.152.106
sudo ip -6 addr add fc00:9:3::253/64 dev 6to4tunir009003
sudo ip link set 6to4tunir009003 mtu 1400
sudo ip link set 6to4tunir009003 up
sudo ip -6 tunnel add gre6tunir009003 mode ip6gre remote fc00:9:3::254 local fc00:9:3::253
sudo ip addr add 10.9.3.253/30 dev gre6tunir009003
sudo ip link set gre6tunir009003 mtu 1300
sudo ip link set gre6tunir009003 up
sudo ip tunnel add 6to4tunir009004 mode sit remote 185.223.235.100 local 94.182.152.106
sudo ip -6 addr add fc00:9:4::253/64 dev 6to4tunir009004
sudo ip link set 6to4tunir009004 mtu 1400
sudo ip link set 6to4tunir009004 up
sudo ip -6 tunnel add gre6tunir009004 mode ip6gre remote fc00:9:4::254 local fc00:9:4::253
sudo ip addr add 10.9.4.253/30 dev gre6tunir009004
sudo ip link set gre6tunir009004 mtu 1300
sudo ip link set gre6tunir009004 up
sudo ip tunnel add 6to4tunir009005 mode sit remote 136.243.26.215 local 94.182.152.106
sudo ip -6 addr add fc00:9:5::253/64 dev 6to4tunir009005
sudo ip link set 6to4tunir009005 mtu 1400
sudo ip link set 6to4tunir009005 up
sudo ip -6 tunnel add gre6tunir009005 mode ip6gre remote fc00:9:5::254 local fc00:9:5::253
sudo ip addr add 10.9.5.253/30 dev gre6tunir009005
sudo ip link set gre6tunir009005 mtu 1300
sudo ip link set gre6tunir009005 up
sudo ip tunnel add 6to4tunir009006 mode sit remote 152.42.137.215 local 94.182.152.106
sudo ip -6 addr add fc00:9:6::253/64 dev 6to4tunir009006
sudo ip link set 6to4tunir009006 mtu 1400
sudo ip link set 6to4tunir009006 up
sudo ip -6 tunnel add gre6tunir009006 mode ip6gre remote fc00:9:6::254 local fc00:9:6::253
sudo ip addr add 10.9.6.253/30 dev gre6tunir009006
sudo ip link set gre6tunir009006 mtu 1300
sudo ip link set gre6tunir009006 up
sudo ip tunnel add 6to4tunir009007 mode sit remote 139.59.167.164 local 94.182.152.106
sudo ip -6 addr add fc00:9:7::253/64 dev 6to4tunir009007
sudo ip link set 6to4tunir009007 mtu 1400
sudo ip link set 6to4tunir009007 up
sudo ip -6 tunnel add gre6tunir009007 mode ip6gre remote fc00:9:7::254 local fc00:9:7::253
sudo ip addr add 10.9.7.253/30 dev gre6tunir009007
sudo ip link set gre6tunir009007 mtu 1300
sudo ip link set gre6tunir009007 up
sudo ip tunnel add 6to4tunir009008 mode sit remote 206.189.24.175 local 94.182.152.106
sudo ip -6 addr add fc00:9:8::253/64 dev 6to4tunir009008
sudo ip link set 6to4tunir009008 mtu 1400
sudo ip link set 6to4tunir009008 up
sudo ip -6 tunnel add gre6tunir009008 mode ip6gre remote fc00:9:8::254 local fc00:9:8::253
sudo ip addr add 10.9.8.253/30 dev gre6tunir009008
sudo ip link set gre6tunir009008 mtu 1300
sudo ip link set gre6tunir009008 up
