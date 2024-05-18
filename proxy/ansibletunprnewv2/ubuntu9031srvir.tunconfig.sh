sudo ip tunnel add 6to4tunir031001 mode sit remote 157.90.71.217 local 193.134.100.62
sudo ip -6 addr add fc00:31:1::253/64 dev 6to4tunir031001
sudo ip link set 6to4tunir031001 mtu 1400
sudo ip link set 6to4tunir031001 up
sudo ip -6 tunnel add gre6tunir031001 mode ip6gre remote fc00:31:1::254 local fc00:31:1::253
sudo ip addr add 10.31.1.253/30 dev gre6tunir031001
sudo ip link set gre6tunir031001 mtu 1300
sudo ip link set gre6tunir031001 up
sudo ip tunnel add 6to4tunir031002 mode sit remote 148.251.119.123 local 193.134.100.62
sudo ip -6 addr add fc00:31:2::253/64 dev 6to4tunir031002
sudo ip link set 6to4tunir031002 mtu 1400
sudo ip link set 6to4tunir031002 up
sudo ip -6 tunnel add gre6tunir031002 mode ip6gre remote fc00:31:2::254 local fc00:31:2::253
sudo ip addr add 10.31.2.253/30 dev gre6tunir031002
sudo ip link set gre6tunir031002 mtu 1300
sudo ip link set gre6tunir031002 up
sudo ip tunnel add 6to4tunir031003 mode sit remote 136.243.26.216 local 193.134.100.62
sudo ip -6 addr add fc00:31:3::253/64 dev 6to4tunir031003
sudo ip link set 6to4tunir031003 mtu 1400
sudo ip link set 6to4tunir031003 up
sudo ip -6 tunnel add gre6tunir031003 mode ip6gre remote fc00:31:3::254 local fc00:31:3::253
sudo ip addr add 10.31.3.253/30 dev gre6tunir031003
sudo ip link set gre6tunir031003 mtu 1300
sudo ip link set gre6tunir031003 up
sudo ip tunnel add 6to4tunir031004 mode sit remote 185.223.235.100 local 193.134.100.62
sudo ip -6 addr add fc00:31:4::253/64 dev 6to4tunir031004
sudo ip link set 6to4tunir031004 mtu 1400
sudo ip link set 6to4tunir031004 up
sudo ip -6 tunnel add gre6tunir031004 mode ip6gre remote fc00:31:4::254 local fc00:31:4::253
sudo ip addr add 10.31.4.253/30 dev gre6tunir031004
sudo ip link set gre6tunir031004 mtu 1300
sudo ip link set gre6tunir031004 up
sudo ip tunnel add 6to4tunir031005 mode sit remote 136.243.26.215 local 193.134.100.62
sudo ip -6 addr add fc00:31:5::253/64 dev 6to4tunir031005
sudo ip link set 6to4tunir031005 mtu 1400
sudo ip link set 6to4tunir031005 up
sudo ip -6 tunnel add gre6tunir031005 mode ip6gre remote fc00:31:5::254 local fc00:31:5::253
sudo ip addr add 10.31.5.253/30 dev gre6tunir031005
sudo ip link set gre6tunir031005 mtu 1300
sudo ip link set gre6tunir031005 up
