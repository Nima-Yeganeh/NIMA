sudo ip tunnel add 6to4tunir018001 mode sit remote 157.90.71.217 local 85.133.194.228
sudo ip -6 addr add fc00:18:1::253/64 dev 6to4tunir018001
sudo ip link set 6to4tunir018001 mtu 1400
sudo ip link set 6to4tunir018001 up
sudo ip -6 tunnel add gre6tunir018001 mode ip6gre remote fc00:18:1::254 local fc00:18:1::253
sudo ip addr add 10.18.1.253/30 dev gre6tunir018001
sudo ip link set gre6tunir018001 mtu 1300
sudo ip link set gre6tunir018001 up
sudo ip tunnel add 6to4tunir018002 mode sit remote 157.245.41.172 local 85.133.194.228
sudo ip -6 addr add fc00:18:2::253/64 dev 6to4tunir018002
sudo ip link set 6to4tunir018002 mtu 1400
sudo ip link set 6to4tunir018002 up
sudo ip -6 tunnel add gre6tunir018002 mode ip6gre remote fc00:18:2::254 local fc00:18:2::253
sudo ip addr add 10.18.2.253/30 dev gre6tunir018002
sudo ip link set gre6tunir018002 mtu 1300
sudo ip link set gre6tunir018002 up
sudo ip tunnel add 6to4tunir018003 mode sit remote 138.68.74.97 local 85.133.194.228
sudo ip -6 addr add fc00:18:3::253/64 dev 6to4tunir018003
sudo ip link set 6to4tunir018003 mtu 1400
sudo ip link set 6to4tunir018003 up
sudo ip -6 tunnel add gre6tunir018003 mode ip6gre remote fc00:18:3::254 local fc00:18:3::253
sudo ip addr add 10.18.3.253/30 dev gre6tunir018003
sudo ip link set gre6tunir018003 mtu 1300
sudo ip link set gre6tunir018003 up
sudo ip tunnel add 6to4tunir018004 mode sit remote 185.223.235.100 local 85.133.194.228
sudo ip -6 addr add fc00:18:4::253/64 dev 6to4tunir018004
sudo ip link set 6to4tunir018004 mtu 1400
sudo ip link set 6to4tunir018004 up
sudo ip -6 tunnel add gre6tunir018004 mode ip6gre remote fc00:18:4::254 local fc00:18:4::253
sudo ip addr add 10.18.4.253/30 dev gre6tunir018004
sudo ip link set gre6tunir018004 mtu 1300
sudo ip link set gre6tunir018004 up
sudo ip tunnel add 6to4tunir018005 mode sit remote 165.232.76.77 local 85.133.194.228
sudo ip -6 addr add fc00:18:5::253/64 dev 6to4tunir018005
sudo ip link set 6to4tunir018005 mtu 1400
sudo ip link set 6to4tunir018005 up
sudo ip -6 tunnel add gre6tunir018005 mode ip6gre remote fc00:18:5::254 local fc00:18:5::253
sudo ip addr add 10.18.5.253/30 dev gre6tunir018005
sudo ip link set gre6tunir018005 mtu 1300
sudo ip link set gre6tunir018005 up
