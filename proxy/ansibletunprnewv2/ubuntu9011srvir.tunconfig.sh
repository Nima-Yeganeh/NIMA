sudo ip tunnel add 6to4tunir011001 mode sit remote 164.92.246.10 local 185.73.3.82
sudo ip -6 addr add fc00:11:1::253/64 dev 6to4tunir011001
sudo ip link set 6to4tunir011001 mtu 1400
sudo ip link set 6to4tunir011001 up
sudo ip -6 tunnel add gre6tunir011001 mode ip6gre remote fc00:11:1::254 local fc00:11:1::253
sudo ip addr add 10.11.1.253/30 dev gre6tunir011001
sudo ip link set gre6tunir011001 mtu 1300
sudo ip link set gre6tunir011001 up
sudo ip tunnel add 6to4tunir011002 mode sit remote 157.245.41.172 local 185.73.3.82
sudo ip -6 addr add fc00:11:2::253/64 dev 6to4tunir011002
sudo ip link set 6to4tunir011002 mtu 1400
sudo ip link set 6to4tunir011002 up
sudo ip -6 tunnel add gre6tunir011002 mode ip6gre remote fc00:11:2::254 local fc00:11:2::253
sudo ip addr add 10.11.2.253/30 dev gre6tunir011002
sudo ip link set gre6tunir011002 mtu 1300
sudo ip link set gre6tunir011002 up
sudo ip tunnel add 6to4tunir011003 mode sit remote 138.68.74.97 local 185.73.3.82
sudo ip -6 addr add fc00:11:3::253/64 dev 6to4tunir011003
sudo ip link set 6to4tunir011003 mtu 1400
sudo ip link set 6to4tunir011003 up
sudo ip -6 tunnel add gre6tunir011003 mode ip6gre remote fc00:11:3::254 local fc00:11:3::253
sudo ip addr add 10.11.3.253/30 dev gre6tunir011003
sudo ip link set gre6tunir011003 mtu 1300
sudo ip link set gre6tunir011003 up
