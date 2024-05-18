sudo ip tunnel add 6to4tunir020001 mode sit remote 157.90.71.217 local 185.26.32.137
sudo ip -6 addr add fc00:20:1::253/64 dev 6to4tunir020001
sudo ip link set 6to4tunir020001 mtu 1400
sudo ip link set 6to4tunir020001 up
sudo ip -6 tunnel add gre6tunir020001 mode ip6gre remote fc00:20:1::254 local fc00:20:1::253
sudo ip addr add 10.20.1.253/30 dev gre6tunir020001
sudo ip link set gre6tunir020001 mtu 1300
sudo ip link set gre6tunir020001 up
sudo ip tunnel add 6to4tunir020002 mode sit remote 157.245.41.172 local 185.26.32.137
sudo ip -6 addr add fc00:20:2::253/64 dev 6to4tunir020002
sudo ip link set 6to4tunir020002 mtu 1400
sudo ip link set 6to4tunir020002 up
sudo ip -6 tunnel add gre6tunir020002 mode ip6gre remote fc00:20:2::254 local fc00:20:2::253
sudo ip addr add 10.20.2.253/30 dev gre6tunir020002
sudo ip link set gre6tunir020002 mtu 1300
sudo ip link set gre6tunir020002 up
sudo ip tunnel add 6to4tunir020003 mode sit remote 138.68.74.97 local 185.26.32.137
sudo ip -6 addr add fc00:20:3::253/64 dev 6to4tunir020003
sudo ip link set 6to4tunir020003 mtu 1400
sudo ip link set 6to4tunir020003 up
sudo ip -6 tunnel add gre6tunir020003 mode ip6gre remote fc00:20:3::254 local fc00:20:3::253
sudo ip addr add 10.20.3.253/30 dev gre6tunir020003
sudo ip link set gre6tunir020003 mtu 1300
sudo ip link set gre6tunir020003 up
sudo ip tunnel add 6to4tunir020004 mode sit remote 185.223.235.100 local 185.26.32.137
sudo ip -6 addr add fc00:20:4::253/64 dev 6to4tunir020004
sudo ip link set 6to4tunir020004 mtu 1400
sudo ip link set 6to4tunir020004 up
sudo ip -6 tunnel add gre6tunir020004 mode ip6gre remote fc00:20:4::254 local fc00:20:4::253
sudo ip addr add 10.20.4.253/30 dev gre6tunir020004
sudo ip link set gre6tunir020004 mtu 1300
sudo ip link set gre6tunir020004 up
sudo ip tunnel add 6to4tunir020005 mode sit remote 165.232.76.77 local 185.26.32.137
sudo ip -6 addr add fc00:20:5::253/64 dev 6to4tunir020005
sudo ip link set 6to4tunir020005 mtu 1400
sudo ip link set 6to4tunir020005 up
sudo ip -6 tunnel add gre6tunir020005 mode ip6gre remote fc00:20:5::254 local fc00:20:5::253
sudo ip addr add 10.20.5.253/30 dev gre6tunir020005
sudo ip link set gre6tunir020005 mtu 1300
sudo ip link set gre6tunir020005 up
