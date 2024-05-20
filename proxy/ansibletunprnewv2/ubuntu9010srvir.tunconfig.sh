sudo ip tunnel add 6to4tunir010001 mode sit remote 157.90.71.217 ansible_user=root ansible_port=22 local 94.182.134.195 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:10:1::253/64 dev 6to4tunir010001
sudo ip link set 6to4tunir010001 mtu 1400
sudo ip link set 6to4tunir010001 up
sudo ip -6 tunnel add gre6tunir010001 mode ip6gre remote fc00:10:1::254 local fc00:10:1::253
sudo ip addr add 10.10.1.253/30 dev gre6tunir010001
sudo ip link set gre6tunir010001 mtu 1300
sudo ip link set gre6tunir010001 up
sudo ip tunnel add 6to4tunir010002 mode sit remote 148.251.119.123 ansible_user=root ansible_port=22 local 94.182.134.195 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:10:2::253/64 dev 6to4tunir010002
sudo ip link set 6to4tunir010002 mtu 1400
sudo ip link set 6to4tunir010002 up
sudo ip -6 tunnel add gre6tunir010002 mode ip6gre remote fc00:10:2::254 local fc00:10:2::253
sudo ip addr add 10.10.2.253/30 dev gre6tunir010002
sudo ip link set gre6tunir010002 mtu 1300
sudo ip link set gre6tunir010002 up
sudo ip tunnel add 6to4tunir010003 mode sit remote 136.243.26.216 ansible_user=root ansible_port=22 local 94.182.134.195 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:10:3::253/64 dev 6to4tunir010003
sudo ip link set 6to4tunir010003 mtu 1400
sudo ip link set 6to4tunir010003 up
sudo ip -6 tunnel add gre6tunir010003 mode ip6gre remote fc00:10:3::254 local fc00:10:3::253
sudo ip addr add 10.10.3.253/30 dev gre6tunir010003
sudo ip link set gre6tunir010003 mtu 1300
sudo ip link set gre6tunir010003 up
sudo ip tunnel add 6to4tunir010004 mode sit remote 185.223.235.100 ansible_user=root ansible_port=22 local 94.182.134.195 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:10:4::253/64 dev 6to4tunir010004
sudo ip link set 6to4tunir010004 mtu 1400
sudo ip link set 6to4tunir010004 up
sudo ip -6 tunnel add gre6tunir010004 mode ip6gre remote fc00:10:4::254 local fc00:10:4::253
sudo ip addr add 10.10.4.253/30 dev gre6tunir010004
sudo ip link set gre6tunir010004 mtu 1300
sudo ip link set gre6tunir010004 up
sudo ip tunnel add 6to4tunir010005 mode sit remote 136.243.26.215 ansible_user=root ansible_port=22 local 94.182.134.195 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:10:5::253/64 dev 6to4tunir010005
sudo ip link set 6to4tunir010005 mtu 1400
sudo ip link set 6to4tunir010005 up
sudo ip -6 tunnel add gre6tunir010005 mode ip6gre remote fc00:10:5::254 local fc00:10:5::253
sudo ip addr add 10.10.5.253/30 dev gre6tunir010005
sudo ip link set gre6tunir010005 mtu 1300
sudo ip link set gre6tunir010005 up
sudo ip tunnel add 6to4tunir010006 mode sit remote 152.42.137.215 ansible_user=root ansible_port=22 local 94.182.134.195 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:10:6::253/64 dev 6to4tunir010006
sudo ip link set 6to4tunir010006 mtu 1400
sudo ip link set 6to4tunir010006 up
sudo ip -6 tunnel add gre6tunir010006 mode ip6gre remote fc00:10:6::254 local fc00:10:6::253
sudo ip addr add 10.10.6.253/30 dev gre6tunir010006
sudo ip link set gre6tunir010006 mtu 1300
sudo ip link set gre6tunir010006 up
