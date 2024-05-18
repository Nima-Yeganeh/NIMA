sudo ip tunnel add 6to4tunir007001 mode sit remote 157.90.71.217 local 31.216.62.162
sudo ip -6 addr add fc00:7:1::253/64 dev 6to4tunir007001
sudo ip link set 6to4tunir007001 mtu 1400
sudo ip link set 6to4tunir007001 up
sudo ip -6 tunnel add gre6tunir007001 mode ip6gre remote fc00:7:1::254 local fc00:7:1::253
sudo ip addr add 10.7.1.253/30 dev gre6tunir007001
sudo ip link set gre6tunir007001 mtu 1300
sudo ip link set gre6tunir007001 up
sudo ip tunnel add 6to4tunir007002 mode sit remote 148.251.119.123 local 31.216.62.162
sudo ip -6 addr add fc00:7:2::253/64 dev 6to4tunir007002
sudo ip link set 6to4tunir007002 mtu 1400
sudo ip link set 6to4tunir007002 up
sudo ip -6 tunnel add gre6tunir007002 mode ip6gre remote fc00:7:2::254 local fc00:7:2::253
sudo ip addr add 10.7.2.253/30 dev gre6tunir007002
sudo ip link set gre6tunir007002 mtu 1300
sudo ip link set gre6tunir007002 up
sudo ip tunnel add 6to4tunir007003 mode sit remote 138.68.74.97 local 31.216.62.162
sudo ip -6 addr add fc00:7:3::253/64 dev 6to4tunir007003
sudo ip link set 6to4tunir007003 mtu 1400
sudo ip link set 6to4tunir007003 up
sudo ip -6 tunnel add gre6tunir007003 mode ip6gre remote fc00:7:3::254 local fc00:7:3::253
sudo ip addr add 10.7.3.253/30 dev gre6tunir007003
sudo ip link set gre6tunir007003 mtu 1300
sudo ip link set gre6tunir007003 up
sudo ip tunnel add 6to4tunir007004 mode sit remote 185.223.235.100 local 31.216.62.162
sudo ip -6 addr add fc00:7:4::253/64 dev 6to4tunir007004
sudo ip link set 6to4tunir007004 mtu 1400
sudo ip link set 6to4tunir007004 up
sudo ip -6 tunnel add gre6tunir007004 mode ip6gre remote fc00:7:4::254 local fc00:7:4::253
sudo ip addr add 10.7.4.253/30 dev gre6tunir007004
sudo ip link set gre6tunir007004 mtu 1300
sudo ip link set gre6tunir007004 up
sudo ip tunnel add 6to4tunir007005 mode sit remote 165.232.76.77 local 31.216.62.162
sudo ip -6 addr add fc00:7:5::253/64 dev 6to4tunir007005
sudo ip link set 6to4tunir007005 mtu 1400
sudo ip link set 6to4tunir007005 up
sudo ip -6 tunnel add gre6tunir007005 mode ip6gre remote fc00:7:5::254 local fc00:7:5::253
sudo ip addr add 10.7.5.253/30 dev gre6tunir007005
sudo ip link set gre6tunir007005 mtu 1300
sudo ip link set gre6tunir007005 up
