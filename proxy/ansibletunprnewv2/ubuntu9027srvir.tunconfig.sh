sudo ip tunnel add 6to4tunir027001 mode sit remote 164.92.246.10 local 146.190.227.145
sudo ip -6 addr add fc00:27:1::253/64 dev 6to4tunir027001
sudo ip link set 6to4tunir027001 mtu 1400
sudo ip link set 6to4tunir027001 up
sudo ip -6 tunnel add gre6tunir027001 mode ip6gre remote fc00:27:1::254 local fc00:27:1::253
sudo ip addr add 10.27.1.253/30 dev gre6tunir027001
sudo ip link set gre6tunir027001 mtu 1300
sudo ip link set gre6tunir027001 up
sudo ip tunnel add 6to4tunir027002 mode sit remote 157.245.41.172 local 146.190.227.145
sudo ip -6 addr add fc00:27:2::253/64 dev 6to4tunir027002
sudo ip link set 6to4tunir027002 mtu 1400
sudo ip link set 6to4tunir027002 up
sudo ip -6 tunnel add gre6tunir027002 mode ip6gre remote fc00:27:2::254 local fc00:27:2::253
sudo ip addr add 10.27.2.253/30 dev gre6tunir027002
sudo ip link set gre6tunir027002 mtu 1300
sudo ip link set gre6tunir027002 up
sudo ip tunnel add 6to4tunir027003 mode sit remote 138.68.74.97 local 146.190.227.145
sudo ip -6 addr add fc00:27:3::253/64 dev 6to4tunir027003
sudo ip link set 6to4tunir027003 mtu 1400
sudo ip link set 6to4tunir027003 up
sudo ip -6 tunnel add gre6tunir027003 mode ip6gre remote fc00:27:3::254 local fc00:27:3::253
sudo ip addr add 10.27.3.253/30 dev gre6tunir027003
sudo ip link set gre6tunir027003 mtu 1300
sudo ip link set gre6tunir027003 up
sudo ip tunnel add 6to4tunir027004 mode sit remote 174.138.5.192 local 146.190.227.145
sudo ip -6 addr add fc00:27:4::253/64 dev 6to4tunir027004
sudo ip link set 6to4tunir027004 mtu 1400
sudo ip link set 6to4tunir027004 up
sudo ip -6 tunnel add gre6tunir027004 mode ip6gre remote fc00:27:4::254 local fc00:27:4::253
sudo ip addr add 10.27.4.253/30 dev gre6tunir027004
sudo ip link set gre6tunir027004 mtu 1300
sudo ip link set gre6tunir027004 up
sudo ip tunnel add 6to4tunir027005 mode sit remote 165.232.76.77 local 146.190.227.145
sudo ip -6 addr add fc00:27:5::253/64 dev 6to4tunir027005
sudo ip link set 6to4tunir027005 mtu 1400
sudo ip link set 6to4tunir027005 up
sudo ip -6 tunnel add gre6tunir027005 mode ip6gre remote fc00:27:5::254 local fc00:27:5::253
sudo ip addr add 10.27.5.253/30 dev gre6tunir027005
sudo ip link set gre6tunir027005 mtu 1300
sudo ip link set gre6tunir027005 up
