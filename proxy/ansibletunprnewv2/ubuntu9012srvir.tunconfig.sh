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
sudo ip tunnel add 6to4tunir012004 mode sit remote 185.223.235.100 local 193.111.234.56
sudo ip -6 addr add fc00:12:4::253/64 dev 6to4tunir012004
sudo ip link set 6to4tunir012004 mtu 1400
sudo ip link set 6to4tunir012004 up
sudo ip -6 tunnel add gre6tunir012004 mode ip6gre remote fc00:12:4::254 local fc00:12:4::253
sudo ip addr add 10.12.4.253/30 dev gre6tunir012004
sudo ip link set gre6tunir012004 mtu 1300
sudo ip link set gre6tunir012004 up
sudo ip tunnel add 6to4tunir012005 mode sit remote 165.232.76.77 local 193.111.234.56
sudo ip -6 addr add fc00:12:5::253/64 dev 6to4tunir012005
sudo ip link set 6to4tunir012005 mtu 1400
sudo ip link set 6to4tunir012005 up
sudo ip -6 tunnel add gre6tunir012005 mode ip6gre remote fc00:12:5::254 local fc00:12:5::253
sudo ip addr add 10.12.5.253/30 dev gre6tunir012005
sudo ip link set gre6tunir012005 mtu 1300
sudo ip link set gre6tunir012005 up
