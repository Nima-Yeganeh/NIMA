sudo ip tunnel add 6to4tunir035001 mode sit remote 157.90.71.217 local 185.26.32.252
sudo ip -6 addr add fc00:35:1::253/64 dev 6to4tunir035001
sudo ip link set 6to4tunir035001 mtu 1400
sudo ip link set 6to4tunir035001 up
sudo ip -6 tunnel add gre6tunir035001 mode ip6gre remote fc00:35:1::254 local fc00:35:1::253
sudo ip addr add 10.35.1.253/30 dev gre6tunir035001
sudo ip link set gre6tunir035001 mtu 1300
sudo ip link set gre6tunir035001 up
sudo ip tunnel add 6to4tunir035002 mode sit remote 148.251.119.123 local 185.26.32.252
sudo ip -6 addr add fc00:35:2::253/64 dev 6to4tunir035002
sudo ip link set 6to4tunir035002 mtu 1400
sudo ip link set 6to4tunir035002 up
sudo ip -6 tunnel add gre6tunir035002 mode ip6gre remote fc00:35:2::254 local fc00:35:2::253
sudo ip addr add 10.35.2.253/30 dev gre6tunir035002
sudo ip link set gre6tunir035002 mtu 1300
sudo ip link set gre6tunir035002 up
sudo ip tunnel add 6to4tunir035003 mode sit remote 136.243.26.216 local 185.26.32.252
sudo ip -6 addr add fc00:35:3::253/64 dev 6to4tunir035003
sudo ip link set 6to4tunir035003 mtu 1400
sudo ip link set 6to4tunir035003 up
sudo ip -6 tunnel add gre6tunir035003 mode ip6gre remote fc00:35:3::254 local fc00:35:3::253
sudo ip addr add 10.35.3.253/30 dev gre6tunir035003
sudo ip link set gre6tunir035003 mtu 1300
sudo ip link set gre6tunir035003 up
sudo ip tunnel add 6to4tunir035004 mode sit remote 209.38.36.161 local 185.26.32.252
sudo ip -6 addr add fc00:35:4::253/64 dev 6to4tunir035004
sudo ip link set 6to4tunir035004 mtu 1400
sudo ip link set 6to4tunir035004 up
sudo ip -6 tunnel add gre6tunir035004 mode ip6gre remote fc00:35:4::254 local fc00:35:4::253
sudo ip addr add 10.35.4.253/30 dev gre6tunir035004
sudo ip link set gre6tunir035004 mtu 1300
sudo ip link set gre6tunir035004 up
sudo ip tunnel add 6to4tunir035005 mode sit remote 136.243.26.215 local 185.26.32.252
sudo ip -6 addr add fc00:35:5::253/64 dev 6to4tunir035005
sudo ip link set 6to4tunir035005 mtu 1400
sudo ip link set 6to4tunir035005 up
sudo ip -6 tunnel add gre6tunir035005 mode ip6gre remote fc00:35:5::254 local fc00:35:5::253
sudo ip addr add 10.35.5.253/30 dev gre6tunir035005
sudo ip link set gre6tunir035005 mtu 1300
sudo ip link set gre6tunir035005 up
sudo ip tunnel add 6to4tunir035006 mode sit remote 152.42.137.215 local 185.26.32.252
sudo ip -6 addr add fc00:35:6::253/64 dev 6to4tunir035006
sudo ip link set 6to4tunir035006 mtu 1400
sudo ip link set 6to4tunir035006 up
sudo ip -6 tunnel add gre6tunir035006 mode ip6gre remote fc00:35:6::254 local fc00:35:6::253
sudo ip addr add 10.35.6.253/30 dev gre6tunir035006
sudo ip link set gre6tunir035006 mtu 1300
sudo ip link set gre6tunir035006 up
sudo ip tunnel add 6to4tunir035007 mode sit remote 139.59.167.164 local 185.26.32.252
sudo ip -6 addr add fc00:35:7::253/64 dev 6to4tunir035007
sudo ip link set 6to4tunir035007 mtu 1400
sudo ip link set 6to4tunir035007 up
sudo ip -6 tunnel add gre6tunir035007 mode ip6gre remote fc00:35:7::254 local fc00:35:7::253
sudo ip addr add 10.35.7.253/30 dev gre6tunir035007
sudo ip link set gre6tunir035007 mtu 1300
sudo ip link set gre6tunir035007 up
sudo ip tunnel add 6to4tunir035008 mode sit remote 78.46.205.34 local 185.26.32.252
sudo ip -6 addr add fc00:35:8::253/64 dev 6to4tunir035008
sudo ip link set 6to4tunir035008 mtu 1400
sudo ip link set 6to4tunir035008 up
sudo ip -6 tunnel add gre6tunir035008 mode ip6gre remote fc00:35:8::254 local fc00:35:8::253
sudo ip addr add 10.35.8.253/30 dev gre6tunir035008
sudo ip link set gre6tunir035008 mtu 1300
sudo ip link set gre6tunir035008 up
sudo ip tunnel add 6to4tunir035009 mode sit remote 142.93.238.98 local 185.26.32.252
sudo ip -6 addr add fc00:35:9::253/64 dev 6to4tunir035009
sudo ip link set 6to4tunir035009 mtu 1400
sudo ip link set 6to4tunir035009 up
sudo ip -6 tunnel add gre6tunir035009 mode ip6gre remote fc00:35:9::254 local fc00:35:9::253
sudo ip addr add 10.35.9.253/30 dev gre6tunir035009
sudo ip link set gre6tunir035009 mtu 1300
sudo ip link set gre6tunir035009 up
