sudo ip tunnel add 6to4tunir021001 mode sit remote 157.90.71.217 local 185.26.32.175
sudo ip -6 addr add fc00:21:1::253/64 dev 6to4tunir021001
sudo ip link set 6to4tunir021001 mtu 1400
sudo ip link set 6to4tunir021001 up
sudo ip -6 tunnel add gre6tunir021001 mode ip6gre remote fc00:21:1::254 local fc00:21:1::253
sudo ip addr add 10.21.1.253/30 dev gre6tunir021001
sudo ip link set gre6tunir021001 mtu 1300
sudo ip link set gre6tunir021001 up
sudo ip tunnel add 6to4tunir021002 mode sit remote 148.251.119.123 local 185.26.32.175
sudo ip -6 addr add fc00:21:2::253/64 dev 6to4tunir021002
sudo ip link set 6to4tunir021002 mtu 1400
sudo ip link set 6to4tunir021002 up
sudo ip -6 tunnel add gre6tunir021002 mode ip6gre remote fc00:21:2::254 local fc00:21:2::253
sudo ip addr add 10.21.2.253/30 dev gre6tunir021002
sudo ip link set gre6tunir021002 mtu 1300
sudo ip link set gre6tunir021002 up
sudo ip tunnel add 6to4tunir021003 mode sit remote 136.243.26.216 local 185.26.32.175
sudo ip -6 addr add fc00:21:3::253/64 dev 6to4tunir021003
sudo ip link set 6to4tunir021003 mtu 1400
sudo ip link set 6to4tunir021003 up
sudo ip -6 tunnel add gre6tunir021003 mode ip6gre remote fc00:21:3::254 local fc00:21:3::253
sudo ip addr add 10.21.3.253/30 dev gre6tunir021003
sudo ip link set gre6tunir021003 mtu 1300
sudo ip link set gre6tunir021003 up
sudo ip tunnel add 6to4tunir021004 mode sit remote 185.223.235.100 local 185.26.32.175
sudo ip -6 addr add fc00:21:4::253/64 dev 6to4tunir021004
sudo ip link set 6to4tunir021004 mtu 1400
sudo ip link set 6to4tunir021004 up
sudo ip -6 tunnel add gre6tunir021004 mode ip6gre remote fc00:21:4::254 local fc00:21:4::253
sudo ip addr add 10.21.4.253/30 dev gre6tunir021004
sudo ip link set gre6tunir021004 mtu 1300
sudo ip link set gre6tunir021004 up
sudo ip tunnel add 6to4tunir021005 mode sit remote 136.243.26.215 local 185.26.32.175
sudo ip -6 addr add fc00:21:5::253/64 dev 6to4tunir021005
sudo ip link set 6to4tunir021005 mtu 1400
sudo ip link set 6to4tunir021005 up
sudo ip -6 tunnel add gre6tunir021005 mode ip6gre remote fc00:21:5::254 local fc00:21:5::253
sudo ip addr add 10.21.5.253/30 dev gre6tunir021005
sudo ip link set gre6tunir021005 mtu 1300
sudo ip link set gre6tunir021005 up
