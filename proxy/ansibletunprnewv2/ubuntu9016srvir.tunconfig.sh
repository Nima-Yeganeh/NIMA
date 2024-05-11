sudo ip tunnel add 6to4tunir016001 mode sit remote 164.92.246.10 local 94.182.138.87
sudo ip -6 addr add fc00:16:1::253/64 dev 6to4tunir016001
sudo ip link set 6to4tunir016001 mtu 1400
sudo ip link set 6to4tunir016001 up
sudo ip -6 tunnel add gre6tunir016001 mode ip6gre remote fc00:16:1::254 local fc00:16:1::253
sudo ip addr add 10.16.1.253/30 dev gre6tunir016001
sudo ip link set gre6tunir016001 mtu 1300
sudo ip link set gre6tunir016001 up
sudo ip tunnel add 6to4tunir016002 mode sit remote 157.245.41.172 local 94.182.138.87
sudo ip -6 addr add fc00:16:2::253/64 dev 6to4tunir016002
sudo ip link set 6to4tunir016002 mtu 1400
sudo ip link set 6to4tunir016002 up
sudo ip -6 tunnel add gre6tunir016002 mode ip6gre remote fc00:16:2::254 local fc00:16:2::253
sudo ip addr add 10.16.2.253/30 dev gre6tunir016002
sudo ip link set gre6tunir016002 mtu 1300
sudo ip link set gre6tunir016002 up
sudo ip tunnel add 6to4tunir016003 mode sit remote 138.68.74.97 local 94.182.138.87
sudo ip -6 addr add fc00:16:3::253/64 dev 6to4tunir016003
sudo ip link set 6to4tunir016003 mtu 1400
sudo ip link set 6to4tunir016003 up
sudo ip -6 tunnel add gre6tunir016003 mode ip6gre remote fc00:16:3::254 local fc00:16:3::253
sudo ip addr add 10.16.3.253/30 dev gre6tunir016003
sudo ip link set gre6tunir016003 mtu 1300
sudo ip link set gre6tunir016003 up
sudo ip tunnel add 6to4tunir016004 mode sit remote 174.138.5.192 local 94.182.138.87
sudo ip -6 addr add fc00:16:4::253/64 dev 6to4tunir016004
sudo ip link set 6to4tunir016004 mtu 1400
sudo ip link set 6to4tunir016004 up
sudo ip -6 tunnel add gre6tunir016004 mode ip6gre remote fc00:16:4::254 local fc00:16:4::253
sudo ip addr add 10.16.4.253/30 dev gre6tunir016004
sudo ip link set gre6tunir016004 mtu 1300
sudo ip link set gre6tunir016004 up
sudo ip tunnel add 6to4tunir016005 mode sit remote 165.232.76.77 local 94.182.138.87
sudo ip -6 addr add fc00:16:5::253/64 dev 6to4tunir016005
sudo ip link set 6to4tunir016005 mtu 1400
sudo ip link set 6to4tunir016005 up
sudo ip -6 tunnel add gre6tunir016005 mode ip6gre remote fc00:16:5::254 local fc00:16:5::253
sudo ip addr add 10.16.5.253/30 dev gre6tunir016005
sudo ip link set gre6tunir016005 mtu 1300
sudo ip link set gre6tunir016005 up
