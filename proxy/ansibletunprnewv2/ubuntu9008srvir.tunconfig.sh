sudo ip tunnel add 6to4tunir008001 mode sit remote 157.90.71.217 ansible_user=root ansible_port=22 local 193.111.234.222 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:8:1::253/64 dev 6to4tunir008001
sudo ip link set 6to4tunir008001 mtu 1400
sudo ip link set 6to4tunir008001 up
sudo ip -6 tunnel add gre6tunir008001 mode ip6gre remote fc00:8:1::254 local fc00:8:1::253
sudo ip addr add 10.8.1.253/30 dev gre6tunir008001
sudo ip link set gre6tunir008001 mtu 1300
sudo ip link set gre6tunir008001 up
sudo ip tunnel add 6to4tunir008002 mode sit remote 148.251.119.123 ansible_user=root ansible_port=22 local 193.111.234.222 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:8:2::253/64 dev 6to4tunir008002
sudo ip link set 6to4tunir008002 mtu 1400
sudo ip link set 6to4tunir008002 up
sudo ip -6 tunnel add gre6tunir008002 mode ip6gre remote fc00:8:2::254 local fc00:8:2::253
sudo ip addr add 10.8.2.253/30 dev gre6tunir008002
sudo ip link set gre6tunir008002 mtu 1300
sudo ip link set gre6tunir008002 up
sudo ip tunnel add 6to4tunir008003 mode sit remote 136.243.26.216 ansible_user=root ansible_port=22 local 193.111.234.222 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:8:3::253/64 dev 6to4tunir008003
sudo ip link set 6to4tunir008003 mtu 1400
sudo ip link set 6to4tunir008003 up
sudo ip -6 tunnel add gre6tunir008003 mode ip6gre remote fc00:8:3::254 local fc00:8:3::253
sudo ip addr add 10.8.3.253/30 dev gre6tunir008003
sudo ip link set gre6tunir008003 mtu 1300
sudo ip link set gre6tunir008003 up
sudo ip tunnel add 6to4tunir008004 mode sit remote 185.223.235.100 ansible_user=root ansible_port=22 local 193.111.234.222 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:8:4::253/64 dev 6to4tunir008004
sudo ip link set 6to4tunir008004 mtu 1400
sudo ip link set 6to4tunir008004 up
sudo ip -6 tunnel add gre6tunir008004 mode ip6gre remote fc00:8:4::254 local fc00:8:4::253
sudo ip addr add 10.8.4.253/30 dev gre6tunir008004
sudo ip link set gre6tunir008004 mtu 1300
sudo ip link set gre6tunir008004 up
sudo ip tunnel add 6to4tunir008005 mode sit remote 136.243.26.215 ansible_user=root ansible_port=22 local 193.111.234.222 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:8:5::253/64 dev 6to4tunir008005
sudo ip link set 6to4tunir008005 mtu 1400
sudo ip link set 6to4tunir008005 up
sudo ip -6 tunnel add gre6tunir008005 mode ip6gre remote fc00:8:5::254 local fc00:8:5::253
sudo ip addr add 10.8.5.253/30 dev gre6tunir008005
sudo ip link set gre6tunir008005 mtu 1300
sudo ip link set gre6tunir008005 up
sudo ip tunnel add 6to4tunir008006 mode sit remote 152.42.137.215 ansible_user=root ansible_port=22 local 193.111.234.222 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:8:6::253/64 dev 6to4tunir008006
sudo ip link set 6to4tunir008006 mtu 1400
sudo ip link set 6to4tunir008006 up
sudo ip -6 tunnel add gre6tunir008006 mode ip6gre remote fc00:8:6::254 local fc00:8:6::253
sudo ip addr add 10.8.6.253/30 dev gre6tunir008006
sudo ip link set gre6tunir008006 mtu 1300
sudo ip link set gre6tunir008006 up
