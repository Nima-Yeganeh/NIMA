sudo ip tunnel add 6to4tunir012001 mode sit remote 157.90.71.217 local 193.111.234.56
sudo ip -6 addr add fc00:12:1::253/64 dev 6to4tunir012001
sudo ip link set 6to4tunir012001 mtu 1400
sudo ip link set 6to4tunir012001 up
sudo ip -6 tunnel add gre6tunir012001 mode ip6gre remote fc00:12:1::254 local fc00:12:1::253
sudo ip addr add 10.12.1.253/30 dev gre6tunir012001
sudo ip link set gre6tunir012001 mtu 1300
sudo ip link set gre6tunir012001 up
sudo ip tunnel add 6to4tunir012002 mode sit remote 148.251.119.123 local 193.111.234.56
sudo ip -6 addr add fc00:12:2::253/64 dev 6to4tunir012002
sudo ip link set 6to4tunir012002 mtu 1400
sudo ip link set 6to4tunir012002 up
sudo ip -6 tunnel add gre6tunir012002 mode ip6gre remote fc00:12:2::254 local fc00:12:2::253
sudo ip addr add 10.12.2.253/30 dev gre6tunir012002
sudo ip link set gre6tunir012002 mtu 1300
sudo ip link set gre6tunir012002 up
sudo ip tunnel add 6to4tunir012003 mode sit remote 136.243.26.216 local 193.111.234.56
sudo ip -6 addr add fc00:12:3::253/64 dev 6to4tunir012003
sudo ip link set 6to4tunir012003 mtu 1400
sudo ip link set 6to4tunir012003 up
sudo ip -6 tunnel add gre6tunir012003 mode ip6gre remote fc00:12:3::254 local fc00:12:3::253
sudo ip addr add 10.12.3.253/30 dev gre6tunir012003
sudo ip link set gre6tunir012003 mtu 1300
sudo ip link set gre6tunir012003 up
sudo ip tunnel add 6to4tunir012004 mode sit remote 209.38.36.161 local 193.111.234.56
sudo ip -6 addr add fc00:12:4::253/64 dev 6to4tunir012004
sudo ip link set 6to4tunir012004 mtu 1400
sudo ip link set 6to4tunir012004 up
sudo ip -6 tunnel add gre6tunir012004 mode ip6gre remote fc00:12:4::254 local fc00:12:4::253
sudo ip addr add 10.12.4.253/30 dev gre6tunir012004
sudo ip link set gre6tunir012004 mtu 1300
sudo ip link set gre6tunir012004 up
sudo ip tunnel add 6to4tunir012005 mode sit remote 136.243.26.215 local 193.111.234.56
sudo ip -6 addr add fc00:12:5::253/64 dev 6to4tunir012005
sudo ip link set 6to4tunir012005 mtu 1400
sudo ip link set 6to4tunir012005 up
sudo ip -6 tunnel add gre6tunir012005 mode ip6gre remote fc00:12:5::254 local fc00:12:5::253
sudo ip addr add 10.12.5.253/30 dev gre6tunir012005
sudo ip link set gre6tunir012005 mtu 1300
sudo ip link set gre6tunir012005 up
sudo ip tunnel add 6to4tunir012006 mode sit remote 152.42.137.215 local 193.111.234.56
sudo ip -6 addr add fc00:12:6::253/64 dev 6to4tunir012006
sudo ip link set 6to4tunir012006 mtu 1400
sudo ip link set 6to4tunir012006 up
sudo ip -6 tunnel add gre6tunir012006 mode ip6gre remote fc00:12:6::254 local fc00:12:6::253
sudo ip addr add 10.12.6.253/30 dev gre6tunir012006
sudo ip link set gre6tunir012006 mtu 1300
sudo ip link set gre6tunir012006 up
sudo ip tunnel add 6to4tunir012007 mode sit remote 139.59.167.164 local 193.111.234.56
sudo ip -6 addr add fc00:12:7::253/64 dev 6to4tunir012007
sudo ip link set 6to4tunir012007 mtu 1400
sudo ip link set 6to4tunir012007 up
sudo ip -6 tunnel add gre6tunir012007 mode ip6gre remote fc00:12:7::254 local fc00:12:7::253
sudo ip addr add 10.12.7.253/30 dev gre6tunir012007
sudo ip link set gre6tunir012007 mtu 1300
sudo ip link set gre6tunir012007 up
sudo ip tunnel add 6to4tunir012008 mode sit remote 206.189.24.175 local 193.111.234.56
sudo ip -6 addr add fc00:12:8::253/64 dev 6to4tunir012008
sudo ip link set 6to4tunir012008 mtu 1400
sudo ip link set 6to4tunir012008 up
sudo ip -6 tunnel add gre6tunir012008 mode ip6gre remote fc00:12:8::254 local fc00:12:8::253
sudo ip addr add 10.12.8.253/30 dev gre6tunir012008
sudo ip link set gre6tunir012008 mtu 1300
sudo ip link set gre6tunir012008 up
sudo ip tunnel add 6to4tunir012009 mode sit remote 142.93.238.98 local 193.111.234.56
sudo ip -6 addr add fc00:12:9::253/64 dev 6to4tunir012009
sudo ip link set 6to4tunir012009 mtu 1400
sudo ip link set 6to4tunir012009 up
sudo ip -6 tunnel add gre6tunir012009 mode ip6gre remote fc00:12:9::254 local fc00:12:9::253
sudo ip addr add 10.12.9.253/30 dev gre6tunir012009
sudo ip link set gre6tunir012009 mtu 1300
sudo ip link set gre6tunir012009 up
