sudo ip tunnel add 6to4tunir001001 mode sit remote 164.92.246.10 local 31.216.62.115
sudo ip -6 addr add fc00:1:1::253/64 dev 6to4tunir001001
sudo ip link set 6to4tunir001001 mtu 1400
sudo ip link set 6to4tunir001001 up
sudo ip -6 tunnel add gre6tunir001001 mode ip6gre remote fc00:1:1::254 local fc00:1:1::253
sudo ip addr add 10.1.1.253/30 dev gre6tunir001001
sudo ip link set gre6tunir001001 mtu 1300
sudo ip link set gre6tunir001001 up
sudo ip tunnel add 6to4tunir001002 mode sit remote 157.245.41.172 local 31.216.62.115
sudo ip -6 addr add fc00:1:2::253/64 dev 6to4tunir001002
sudo ip link set 6to4tunir001002 mtu 1400
sudo ip link set 6to4tunir001002 up
sudo ip -6 tunnel add gre6tunir001002 mode ip6gre remote fc00:1:2::254 local fc00:1:2::253
sudo ip addr add 10.1.2.253/30 dev gre6tunir001002
sudo ip link set gre6tunir001002 mtu 1300
sudo ip link set gre6tunir001002 up
sudo ip tunnel add 6to4tunir001003 mode sit remote 138.68.74.97 local 31.216.62.115
sudo ip -6 addr add fc00:1:3::253/64 dev 6to4tunir001003
sudo ip link set 6to4tunir001003 mtu 1400
sudo ip link set 6to4tunir001003 up
sudo ip -6 tunnel add gre6tunir001003 mode ip6gre remote fc00:1:3::254 local fc00:1:3::253
sudo ip addr add 10.1.3.253/30 dev gre6tunir001003
sudo ip link set gre6tunir001003 mtu 1300
sudo ip link set gre6tunir001003 up
