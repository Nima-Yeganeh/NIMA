sudo ip tunnel add 6to4tunir024001 mode sit remote 164.92.246.10 local 159.223.220.182
sudo ip -6 addr add fc00:24:1::253/64 dev 6to4tunir024001
sudo ip link set 6to4tunir024001 mtu 1400
sudo ip link set 6to4tunir024001 up
sudo ip -6 tunnel add gre6tunir024001 mode ip6gre remote fc00:24:1::254 local fc00:24:1::253
sudo ip addr add 10.24.1.253/30 dev gre6tunir024001
sudo ip link set gre6tunir024001 mtu 1300
sudo ip link set gre6tunir024001 up
sudo ip tunnel add 6to4tunir024002 mode sit remote 157.245.41.172 local 159.223.220.182
sudo ip -6 addr add fc00:24:2::253/64 dev 6to4tunir024002
sudo ip link set 6to4tunir024002 mtu 1400
sudo ip link set 6to4tunir024002 up
sudo ip -6 tunnel add gre6tunir024002 mode ip6gre remote fc00:24:2::254 local fc00:24:2::253
sudo ip addr add 10.24.2.253/30 dev gre6tunir024002
sudo ip link set gre6tunir024002 mtu 1300
sudo ip link set gre6tunir024002 up
sudo ip tunnel add 6to4tunir024003 mode sit remote 138.68.74.97 local 159.223.220.182
sudo ip -6 addr add fc00:24:3::253/64 dev 6to4tunir024003
sudo ip link set 6to4tunir024003 mtu 1400
sudo ip link set 6to4tunir024003 up
sudo ip -6 tunnel add gre6tunir024003 mode ip6gre remote fc00:24:3::254 local fc00:24:3::253
sudo ip addr add 10.24.3.253/30 dev gre6tunir024003
sudo ip link set gre6tunir024003 mtu 1300
sudo ip link set gre6tunir024003 up
sudo ip tunnel add 6to4tunir024004 mode sit remote 174.138.5.192 local 159.223.220.182
sudo ip -6 addr add fc00:24:4::253/64 dev 6to4tunir024004
sudo ip link set 6to4tunir024004 mtu 1400
sudo ip link set 6to4tunir024004 up
sudo ip -6 tunnel add gre6tunir024004 mode ip6gre remote fc00:24:4::254 local fc00:24:4::253
sudo ip addr add 10.24.4.253/30 dev gre6tunir024004
sudo ip link set gre6tunir024004 mtu 1300
sudo ip link set gre6tunir024004 up
sudo ip tunnel add 6to4tunir024005 mode sit remote 165.232.76.77 local 159.223.220.182
sudo ip -6 addr add fc00:24:5::253/64 dev 6to4tunir024005
sudo ip link set 6to4tunir024005 mtu 1400
sudo ip link set 6to4tunir024005 up
sudo ip -6 tunnel add gre6tunir024005 mode ip6gre remote fc00:24:5::254 local fc00:24:5::253
sudo ip addr add 10.24.5.253/30 dev gre6tunir024005
sudo ip link set gre6tunir024005 mtu 1300
sudo ip link set gre6tunir024005 up
