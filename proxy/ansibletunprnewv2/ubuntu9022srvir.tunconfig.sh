sudo ip tunnel add 6to4tunir022001 mode sit remote 164.92.246.10 local 185.26.32.124
sudo ip -6 addr add fc00:22:1::253/64 dev 6to4tunir022001
sudo ip link set 6to4tunir022001 mtu 1400
sudo ip link set 6to4tunir022001 up
sudo ip -6 tunnel add gre6tunir022001 mode ip6gre remote fc00:22:1::254 local fc00:22:1::253
sudo ip addr add 10.22.1.253/30 dev gre6tunir022001
sudo ip link set gre6tunir022001 mtu 1300
sudo ip link set gre6tunir022001 up
sudo ip tunnel add 6to4tunir022002 mode sit remote 157.245.41.172 local 185.26.32.124
sudo ip -6 addr add fc00:22:2::253/64 dev 6to4tunir022002
sudo ip link set 6to4tunir022002 mtu 1400
sudo ip link set 6to4tunir022002 up
sudo ip -6 tunnel add gre6tunir022002 mode ip6gre remote fc00:22:2::254 local fc00:22:2::253
sudo ip addr add 10.22.2.253/30 dev gre6tunir022002
sudo ip link set gre6tunir022002 mtu 1300
sudo ip link set gre6tunir022002 up
sudo ip tunnel add 6to4tunir022003 mode sit remote 138.68.74.97 local 185.26.32.124
sudo ip -6 addr add fc00:22:3::253/64 dev 6to4tunir022003
sudo ip link set 6to4tunir022003 mtu 1400
sudo ip link set 6to4tunir022003 up
sudo ip -6 tunnel add gre6tunir022003 mode ip6gre remote fc00:22:3::254 local fc00:22:3::253
sudo ip addr add 10.22.3.253/30 dev gre6tunir022003
sudo ip link set gre6tunir022003 mtu 1300
sudo ip link set gre6tunir022003 up
sudo ip tunnel add 6to4tunir022004 mode sit remote 174.138.5.192 local 185.26.32.124
sudo ip -6 addr add fc00:22:4::253/64 dev 6to4tunir022004
sudo ip link set 6to4tunir022004 mtu 1400
sudo ip link set 6to4tunir022004 up
sudo ip -6 tunnel add gre6tunir022004 mode ip6gre remote fc00:22:4::254 local fc00:22:4::253
sudo ip addr add 10.22.4.253/30 dev gre6tunir022004
sudo ip link set gre6tunir022004 mtu 1300
sudo ip link set gre6tunir022004 up
sudo ip tunnel add 6to4tunir022005 mode sit remote 165.232.76.77 local 185.26.32.124
sudo ip -6 addr add fc00:22:5::253/64 dev 6to4tunir022005
sudo ip link set 6to4tunir022005 mtu 1400
sudo ip link set 6to4tunir022005 up
sudo ip -6 tunnel add gre6tunir022005 mode ip6gre remote fc00:22:5::254 local fc00:22:5::253
sudo ip addr add 10.22.5.253/30 dev gre6tunir022005
sudo ip link set gre6tunir022005 mtu 1300
sudo ip link set gre6tunir022005 up