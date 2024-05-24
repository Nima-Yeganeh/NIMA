sudo ip tunnel add 6to4tunir022001 mode sit remote 157.90.71.217 local 185.26.32.124
sudo ip -6 addr add fc00:22:1::253/64 dev 6to4tunir022001
sudo ip link set 6to4tunir022001 mtu 1400
sudo ip link set 6to4tunir022001 up
sudo ip -6 tunnel add gre6tunir022001 mode ip6gre remote fc00:22:1::254 local fc00:22:1::253
sudo ip addr add 10.22.1.253/30 dev gre6tunir022001
sudo ip link set gre6tunir022001 mtu 1300
sudo ip link set gre6tunir022001 up
sudo ip tunnel add 6to4tunir022002 mode sit remote 148.251.119.123 local 185.26.32.124
sudo ip -6 addr add fc00:22:2::253/64 dev 6to4tunir022002
sudo ip link set 6to4tunir022002 mtu 1400
sudo ip link set 6to4tunir022002 up
sudo ip -6 tunnel add gre6tunir022002 mode ip6gre remote fc00:22:2::254 local fc00:22:2::253
sudo ip addr add 10.22.2.253/30 dev gre6tunir022002
sudo ip link set gre6tunir022002 mtu 1300
sudo ip link set gre6tunir022002 up
sudo ip tunnel add 6to4tunir022003 mode sit remote 136.243.26.216 local 185.26.32.124
sudo ip -6 addr add fc00:22:3::253/64 dev 6to4tunir022003
sudo ip link set 6to4tunir022003 mtu 1400
sudo ip link set 6to4tunir022003 up
sudo ip -6 tunnel add gre6tunir022003 mode ip6gre remote fc00:22:3::254 local fc00:22:3::253
sudo ip addr add 10.22.3.253/30 dev gre6tunir022003
sudo ip link set gre6tunir022003 mtu 1300
sudo ip link set gre6tunir022003 up
sudo ip tunnel add 6to4tunir022004 mode sit remote 209.38.36.161 local 185.26.32.124
sudo ip -6 addr add fc00:22:4::253/64 dev 6to4tunir022004
sudo ip link set 6to4tunir022004 mtu 1400
sudo ip link set 6to4tunir022004 up
sudo ip -6 tunnel add gre6tunir022004 mode ip6gre remote fc00:22:4::254 local fc00:22:4::253
sudo ip addr add 10.22.4.253/30 dev gre6tunir022004
sudo ip link set gre6tunir022004 mtu 1300
sudo ip link set gre6tunir022004 up
sudo ip tunnel add 6to4tunir022005 mode sit remote 136.243.26.215 local 185.26.32.124
sudo ip -6 addr add fc00:22:5::253/64 dev 6to4tunir022005
sudo ip link set 6to4tunir022005 mtu 1400
sudo ip link set 6to4tunir022005 up
sudo ip -6 tunnel add gre6tunir022005 mode ip6gre remote fc00:22:5::254 local fc00:22:5::253
sudo ip addr add 10.22.5.253/30 dev gre6tunir022005
sudo ip link set gre6tunir022005 mtu 1300
sudo ip link set gre6tunir022005 up
sudo ip tunnel add 6to4tunir022006 mode sit remote 152.42.137.215 local 185.26.32.124
sudo ip -6 addr add fc00:22:6::253/64 dev 6to4tunir022006
sudo ip link set 6to4tunir022006 mtu 1400
sudo ip link set 6to4tunir022006 up
sudo ip -6 tunnel add gre6tunir022006 mode ip6gre remote fc00:22:6::254 local fc00:22:6::253
sudo ip addr add 10.22.6.253/30 dev gre6tunir022006
sudo ip link set gre6tunir022006 mtu 1300
sudo ip link set gre6tunir022006 up
sudo ip tunnel add 6to4tunir022007 mode sit remote 139.59.167.164 local 185.26.32.124
sudo ip -6 addr add fc00:22:7::253/64 dev 6to4tunir022007
sudo ip link set 6to4tunir022007 mtu 1400
sudo ip link set 6to4tunir022007 up
sudo ip -6 tunnel add gre6tunir022007 mode ip6gre remote fc00:22:7::254 local fc00:22:7::253
sudo ip addr add 10.22.7.253/30 dev gre6tunir022007
sudo ip link set gre6tunir022007 mtu 1300
sudo ip link set gre6tunir022007 up
sudo ip tunnel add 6to4tunir022008 mode sit remote 206.189.24.175 local 185.26.32.124
sudo ip -6 addr add fc00:22:8::253/64 dev 6to4tunir022008
sudo ip link set 6to4tunir022008 mtu 1400
sudo ip link set 6to4tunir022008 up
sudo ip -6 tunnel add gre6tunir022008 mode ip6gre remote fc00:22:8::254 local fc00:22:8::253
sudo ip addr add 10.22.8.253/30 dev gre6tunir022008
sudo ip link set gre6tunir022008 mtu 1300
sudo ip link set gre6tunir022008 up
sudo ip tunnel add 6to4tunir022009 mode sit remote 142.93.238.98 local 185.26.32.124
sudo ip -6 addr add fc00:22:9::253/64 dev 6to4tunir022009
sudo ip link set 6to4tunir022009 mtu 1400
sudo ip link set 6to4tunir022009 up
sudo ip -6 tunnel add gre6tunir022009 mode ip6gre remote fc00:22:9::254 local fc00:22:9::253
sudo ip addr add 10.22.9.253/30 dev gre6tunir022009
sudo ip link set gre6tunir022009 mtu 1300
sudo ip link set gre6tunir022009 up
