sudo ip tunnel add 6to4tunir023001 mode sit remote 164.92.246.10 local 159.223.208.119
sudo ip -6 addr add fc00:23:1::253/64 dev 6to4tunir023001
sudo ip link set 6to4tunir023001 mtu 1400
sudo ip link set 6to4tunir023001 up
sudo ip -6 tunnel add gre6tunir023001 mode ip6gre remote fc00:23:1::254 local fc00:23:1::253
sudo ip addr add 10.23.1.253/30 dev gre6tunir023001
sudo ip link set gre6tunir023001 mtu 1300
sudo ip link set gre6tunir023001 up
sudo ip tunnel add 6to4tunir023002 mode sit remote 157.245.41.172 local 159.223.208.119
sudo ip -6 addr add fc00:23:2::253/64 dev 6to4tunir023002
sudo ip link set 6to4tunir023002 mtu 1400
sudo ip link set 6to4tunir023002 up
sudo ip -6 tunnel add gre6tunir023002 mode ip6gre remote fc00:23:2::254 local fc00:23:2::253
sudo ip addr add 10.23.2.253/30 dev gre6tunir023002
sudo ip link set gre6tunir023002 mtu 1300
sudo ip link set gre6tunir023002 up
sudo ip tunnel add 6to4tunir023003 mode sit remote 138.68.74.97 local 159.223.208.119
sudo ip -6 addr add fc00:23:3::253/64 dev 6to4tunir023003
sudo ip link set 6to4tunir023003 mtu 1400
sudo ip link set 6to4tunir023003 up
sudo ip -6 tunnel add gre6tunir023003 mode ip6gre remote fc00:23:3::254 local fc00:23:3::253
sudo ip addr add 10.23.3.253/30 dev gre6tunir023003
sudo ip link set gre6tunir023003 mtu 1300
sudo ip link set gre6tunir023003 up
sudo ip tunnel add 6to4tunir023004 mode sit remote 174.138.5.192 local 159.223.208.119
sudo ip -6 addr add fc00:23:4::253/64 dev 6to4tunir023004
sudo ip link set 6to4tunir023004 mtu 1400
sudo ip link set 6to4tunir023004 up
sudo ip -6 tunnel add gre6tunir023004 mode ip6gre remote fc00:23:4::254 local fc00:23:4::253
sudo ip addr add 10.23.4.253/30 dev gre6tunir023004
sudo ip link set gre6tunir023004 mtu 1300
sudo ip link set gre6tunir023004 up
sudo ip tunnel add 6to4tunir023005 mode sit remote 165.232.76.77 local 159.223.208.119
sudo ip -6 addr add fc00:23:5::253/64 dev 6to4tunir023005
sudo ip link set 6to4tunir023005 mtu 1400
sudo ip link set 6to4tunir023005 up
sudo ip -6 tunnel add gre6tunir023005 mode ip6gre remote fc00:23:5::254 local fc00:23:5::253
sudo ip addr add 10.23.5.253/30 dev gre6tunir023005
sudo ip link set gre6tunir023005 mtu 1300
sudo ip link set gre6tunir023005 up
