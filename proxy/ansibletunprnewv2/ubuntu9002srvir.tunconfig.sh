sudo ip tunnel add 6to4tunir002001 mode sit remote 157.90.71.217 ansible_user=root ansible_port=22 local 5.57.33.8 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:2:1::253/64 dev 6to4tunir002001
sudo ip link set 6to4tunir002001 mtu 1400
sudo ip link set 6to4tunir002001 up
sudo ip -6 tunnel add gre6tunir002001 mode ip6gre remote fc00:2:1::254 local fc00:2:1::253
sudo ip addr add 10.2.1.253/30 dev gre6tunir002001
sudo ip link set gre6tunir002001 mtu 1300
sudo ip link set gre6tunir002001 up
sudo ip tunnel add 6to4tunir002002 mode sit remote 148.251.119.123 ansible_user=root ansible_port=22 local 5.57.33.8 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:2:2::253/64 dev 6to4tunir002002
sudo ip link set 6to4tunir002002 mtu 1400
sudo ip link set 6to4tunir002002 up
sudo ip -6 tunnel add gre6tunir002002 mode ip6gre remote fc00:2:2::254 local fc00:2:2::253
sudo ip addr add 10.2.2.253/30 dev gre6tunir002002
sudo ip link set gre6tunir002002 mtu 1300
sudo ip link set gre6tunir002002 up
sudo ip tunnel add 6to4tunir002003 mode sit remote 136.243.26.216 ansible_user=root ansible_port=22 local 5.57.33.8 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:2:3::253/64 dev 6to4tunir002003
sudo ip link set 6to4tunir002003 mtu 1400
sudo ip link set 6to4tunir002003 up
sudo ip -6 tunnel add gre6tunir002003 mode ip6gre remote fc00:2:3::254 local fc00:2:3::253
sudo ip addr add 10.2.3.253/30 dev gre6tunir002003
sudo ip link set gre6tunir002003 mtu 1300
sudo ip link set gre6tunir002003 up
sudo ip tunnel add 6to4tunir002004 mode sit remote 185.223.235.100 ansible_user=root ansible_port=22 local 5.57.33.8 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:2:4::253/64 dev 6to4tunir002004
sudo ip link set 6to4tunir002004 mtu 1400
sudo ip link set 6to4tunir002004 up
sudo ip -6 tunnel add gre6tunir002004 mode ip6gre remote fc00:2:4::254 local fc00:2:4::253
sudo ip addr add 10.2.4.253/30 dev gre6tunir002004
sudo ip link set gre6tunir002004 mtu 1300
sudo ip link set gre6tunir002004 up
sudo ip tunnel add 6to4tunir002005 mode sit remote 136.243.26.215 ansible_user=root ansible_port=22 local 5.57.33.8 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:2:5::253/64 dev 6to4tunir002005
sudo ip link set 6to4tunir002005 mtu 1400
sudo ip link set 6to4tunir002005 up
sudo ip -6 tunnel add gre6tunir002005 mode ip6gre remote fc00:2:5::254 local fc00:2:5::253
sudo ip addr add 10.2.5.253/30 dev gre6tunir002005
sudo ip link set gre6tunir002005 mtu 1300
sudo ip link set gre6tunir002005 up
sudo ip tunnel add 6to4tunir002006 mode sit remote 152.42.137.215 ansible_user=root ansible_port=22 local 5.57.33.8 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:2:6::253/64 dev 6to4tunir002006
sudo ip link set 6to4tunir002006 mtu 1400
sudo ip link set 6to4tunir002006 up
sudo ip -6 tunnel add gre6tunir002006 mode ip6gre remote fc00:2:6::254 local fc00:2:6::253
sudo ip addr add 10.2.6.253/30 dev gre6tunir002006
sudo ip link set gre6tunir002006 mtu 1300
sudo ip link set gre6tunir002006 up
