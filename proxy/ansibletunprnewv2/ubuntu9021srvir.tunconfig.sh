sudo ip tunnel add 6to4tunir021001 mode sit remote 164.92.246.10 local 185.26.32.175
sudo ip -6 addr add fc00:21:1::253/64 dev 6to4tunir021001
sudo ip link set 6to4tunir021001 mtu 1400
sudo ip link set 6to4tunir021001 up
sudo ip -6 tunnel add gre6tunir021001 mode ip6gre remote fc00:21:1::254 local fc00:21:1::253
sudo ip addr add 10.21.1.253/30 dev gre6tunir021001
sudo ip link set gre6tunir021001 mtu 1300
sudo ip link set gre6tunir021001 up
sudo ip tunnel add 6to4tunir021002 mode sit remote 157.245.41.172 local 185.26.32.175
sudo ip -6 addr add fc00:21:2::253/64 dev 6to4tunir021002
sudo ip link set 6to4tunir021002 mtu 1400
sudo ip link set 6to4tunir021002 up
sudo ip -6 tunnel add gre6tunir021002 mode ip6gre remote fc00:21:2::254 local fc00:21:2::253
sudo ip addr add 10.21.2.253/30 dev gre6tunir021002
sudo ip link set gre6tunir021002 mtu 1300
sudo ip link set gre6tunir021002 up
sudo ip tunnel add 6to4tunir021003 mode sit remote 138.68.74.97 local 185.26.32.175
sudo ip -6 addr add fc00:21:3::253/64 dev 6to4tunir021003
sudo ip link set 6to4tunir021003 mtu 1400
sudo ip link set 6to4tunir021003 up
sudo ip -6 tunnel add gre6tunir021003 mode ip6gre remote fc00:21:3::254 local fc00:21:3::253
sudo ip addr add 10.21.3.253/30 dev gre6tunir021003
sudo ip link set gre6tunir021003 mtu 1300
sudo ip link set gre6tunir021003 up
sudo ip tunnel add 6to4tunir021004 mode sit remote 174.138.5.192 local 185.26.32.175
sudo ip -6 addr add fc00:21:4::253/64 dev 6to4tunir021004
sudo ip link set 6to4tunir021004 mtu 1400
sudo ip link set 6to4tunir021004 up
sudo ip -6 tunnel add gre6tunir021004 mode ip6gre remote fc00:21:4::254 local fc00:21:4::253
sudo ip addr add 10.21.4.253/30 dev gre6tunir021004
sudo ip link set gre6tunir021004 mtu 1300
sudo ip link set gre6tunir021004 up
sudo ip tunnel add 6to4tunir021005 mode sit remote 165.232.76.77 local 185.26.32.175
sudo ip -6 addr add fc00:21:5::253/64 dev 6to4tunir021005
sudo ip link set 6to4tunir021005 mtu 1400
sudo ip link set 6to4tunir021005 up
sudo ip -6 tunnel add gre6tunir021005 mode ip6gre remote fc00:21:5::254 local fc00:21:5::253
sudo ip addr add 10.21.5.253/30 dev gre6tunir021005
sudo ip link set gre6tunir021005 mtu 1300
sudo ip link set gre6tunir021005 up