sudo ip tunnel add 6to4tunir013001 mode sit remote 157.90.71.217 local 193.111.234.213
sudo ip -6 addr add fc00:13:1::253/64 dev 6to4tunir013001
sudo ip link set 6to4tunir013001 mtu 1400
sudo ip link set 6to4tunir013001 up
sudo ip -6 tunnel add gre6tunir013001 mode ip6gre remote fc00:13:1::254 local fc00:13:1::253
sudo ip addr add 10.13.1.253/30 dev gre6tunir013001
sudo ip link set gre6tunir013001 mtu 1300
sudo ip link set gre6tunir013001 up
sudo ip tunnel add 6to4tunir013002 mode sit remote 148.251.119.123 local 193.111.234.213
sudo ip -6 addr add fc00:13:2::253/64 dev 6to4tunir013002
sudo ip link set 6to4tunir013002 mtu 1400
sudo ip link set 6to4tunir013002 up
sudo ip -6 tunnel add gre6tunir013002 mode ip6gre remote fc00:13:2::254 local fc00:13:2::253
sudo ip addr add 10.13.2.253/30 dev gre6tunir013002
sudo ip link set gre6tunir013002 mtu 1300
sudo ip link set gre6tunir013002 up
sudo ip tunnel add 6to4tunir013003 mode sit remote 136.243.26.216 local 193.111.234.213
sudo ip -6 addr add fc00:13:3::253/64 dev 6to4tunir013003
sudo ip link set 6to4tunir013003 mtu 1400
sudo ip link set 6to4tunir013003 up
sudo ip -6 tunnel add gre6tunir013003 mode ip6gre remote fc00:13:3::254 local fc00:13:3::253
sudo ip addr add 10.13.3.253/30 dev gre6tunir013003
sudo ip link set gre6tunir013003 mtu 1300
sudo ip link set gre6tunir013003 up
sudo ip tunnel add 6to4tunir013004 mode sit remote 209.38.36.161 local 193.111.234.213
sudo ip -6 addr add fc00:13:4::253/64 dev 6to4tunir013004
sudo ip link set 6to4tunir013004 mtu 1400
sudo ip link set 6to4tunir013004 up
sudo ip -6 tunnel add gre6tunir013004 mode ip6gre remote fc00:13:4::254 local fc00:13:4::253
sudo ip addr add 10.13.4.253/30 dev gre6tunir013004
sudo ip link set gre6tunir013004 mtu 1300
sudo ip link set gre6tunir013004 up
sudo ip tunnel add 6to4tunir013005 mode sit remote 136.243.26.215 local 193.111.234.213
sudo ip -6 addr add fc00:13:5::253/64 dev 6to4tunir013005
sudo ip link set 6to4tunir013005 mtu 1400
sudo ip link set 6to4tunir013005 up
sudo ip -6 tunnel add gre6tunir013005 mode ip6gre remote fc00:13:5::254 local fc00:13:5::253
sudo ip addr add 10.13.5.253/30 dev gre6tunir013005
sudo ip link set gre6tunir013005 mtu 1300
sudo ip link set gre6tunir013005 up
sudo ip tunnel add 6to4tunir013006 mode sit remote 152.42.137.215 local 193.111.234.213
sudo ip -6 addr add fc00:13:6::253/64 dev 6to4tunir013006
sudo ip link set 6to4tunir013006 mtu 1400
sudo ip link set 6to4tunir013006 up
sudo ip -6 tunnel add gre6tunir013006 mode ip6gre remote fc00:13:6::254 local fc00:13:6::253
sudo ip addr add 10.13.6.253/30 dev gre6tunir013006
sudo ip link set gre6tunir013006 mtu 1300
sudo ip link set gre6tunir013006 up
sudo ip tunnel add 6to4tunir013007 mode sit remote 139.59.167.164 local 193.111.234.213
sudo ip -6 addr add fc00:13:7::253/64 dev 6to4tunir013007
sudo ip link set 6to4tunir013007 mtu 1400
sudo ip link set 6to4tunir013007 up
sudo ip -6 tunnel add gre6tunir013007 mode ip6gre remote fc00:13:7::254 local fc00:13:7::253
sudo ip addr add 10.13.7.253/30 dev gre6tunir013007
sudo ip link set gre6tunir013007 mtu 1300
sudo ip link set gre6tunir013007 up
sudo ip tunnel add 6to4tunir013008 mode sit remote 206.189.24.175 local 193.111.234.213
sudo ip -6 addr add fc00:13:8::253/64 dev 6to4tunir013008
sudo ip link set 6to4tunir013008 mtu 1400
sudo ip link set 6to4tunir013008 up
sudo ip -6 tunnel add gre6tunir013008 mode ip6gre remote fc00:13:8::254 local fc00:13:8::253
sudo ip addr add 10.13.8.253/30 dev gre6tunir013008
sudo ip link set gre6tunir013008 mtu 1300
sudo ip link set gre6tunir013008 up
sudo ip tunnel add 6to4tunir013009 mode sit remote 142.93.238.98 local 193.111.234.213
sudo ip -6 addr add fc00:13:9::253/64 dev 6to4tunir013009
sudo ip link set 6to4tunir013009 mtu 1400
sudo ip link set 6to4tunir013009 up
sudo ip -6 tunnel add gre6tunir013009 mode ip6gre remote fc00:13:9::254 local fc00:13:9::253
sudo ip addr add 10.13.9.253/30 dev gre6tunir013009
sudo ip link set gre6tunir013009 mtu 1300
sudo ip link set gre6tunir013009 up
