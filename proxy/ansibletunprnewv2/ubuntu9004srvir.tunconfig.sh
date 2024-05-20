sudo ip tunnel add 6to4tunir004001 mode sit remote 157.90.71.217 ansible_user=root ansible_port=22 local 94.182.150.22 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:4:1::253/64 dev 6to4tunir004001
sudo ip link set 6to4tunir004001 mtu 1400
sudo ip link set 6to4tunir004001 up
sudo ip -6 tunnel add gre6tunir004001 mode ip6gre remote fc00:4:1::254 local fc00:4:1::253
sudo ip addr add 10.4.1.253/30 dev gre6tunir004001
sudo ip link set gre6tunir004001 mtu 1300
sudo ip link set gre6tunir004001 up
sudo ip tunnel add 6to4tunir004002 mode sit remote 148.251.119.123 ansible_user=root ansible_port=22 local 94.182.150.22 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:4:2::253/64 dev 6to4tunir004002
sudo ip link set 6to4tunir004002 mtu 1400
sudo ip link set 6to4tunir004002 up
sudo ip -6 tunnel add gre6tunir004002 mode ip6gre remote fc00:4:2::254 local fc00:4:2::253
sudo ip addr add 10.4.2.253/30 dev gre6tunir004002
sudo ip link set gre6tunir004002 mtu 1300
sudo ip link set gre6tunir004002 up
sudo ip tunnel add 6to4tunir004003 mode sit remote 136.243.26.216 ansible_user=root ansible_port=22 local 94.182.150.22 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:4:3::253/64 dev 6to4tunir004003
sudo ip link set 6to4tunir004003 mtu 1400
sudo ip link set 6to4tunir004003 up
sudo ip -6 tunnel add gre6tunir004003 mode ip6gre remote fc00:4:3::254 local fc00:4:3::253
sudo ip addr add 10.4.3.253/30 dev gre6tunir004003
sudo ip link set gre6tunir004003 mtu 1300
sudo ip link set gre6tunir004003 up
sudo ip tunnel add 6to4tunir004004 mode sit remote 185.223.235.100 ansible_user=root ansible_port=22 local 94.182.150.22 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:4:4::253/64 dev 6to4tunir004004
sudo ip link set 6to4tunir004004 mtu 1400
sudo ip link set 6to4tunir004004 up
sudo ip -6 tunnel add gre6tunir004004 mode ip6gre remote fc00:4:4::254 local fc00:4:4::253
sudo ip addr add 10.4.4.253/30 dev gre6tunir004004
sudo ip link set gre6tunir004004 mtu 1300
sudo ip link set gre6tunir004004 up
sudo ip tunnel add 6to4tunir004005 mode sit remote 136.243.26.215 ansible_user=root ansible_port=22 local 94.182.150.22 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:4:5::253/64 dev 6to4tunir004005
sudo ip link set 6to4tunir004005 mtu 1400
sudo ip link set 6to4tunir004005 up
sudo ip -6 tunnel add gre6tunir004005 mode ip6gre remote fc00:4:5::254 local fc00:4:5::253
sudo ip addr add 10.4.5.253/30 dev gre6tunir004005
sudo ip link set gre6tunir004005 mtu 1300
sudo ip link set gre6tunir004005 up
sudo ip tunnel add 6to4tunir004006 mode sit remote 152.42.137.215 ansible_user=root ansible_port=22 local 94.182.150.22 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:4:6::253/64 dev 6to4tunir004006
sudo ip link set 6to4tunir004006 mtu 1400
sudo ip link set 6to4tunir004006 up
sudo ip -6 tunnel add gre6tunir004006 mode ip6gre remote fc00:4:6::254 local fc00:4:6::253
sudo ip addr add 10.4.6.253/30 dev gre6tunir004006
sudo ip link set gre6tunir004006 mtu 1300
sudo ip link set gre6tunir004006 up
