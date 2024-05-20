sudo ip tunnel add 6to4tunir015001 mode sit remote 157.90.71.217 ansible_user=root ansible_port=22 local 94.182.138.86 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:15:1::253/64 dev 6to4tunir015001
sudo ip link set 6to4tunir015001 mtu 1400
sudo ip link set 6to4tunir015001 up
sudo ip -6 tunnel add gre6tunir015001 mode ip6gre remote fc00:15:1::254 local fc00:15:1::253
sudo ip addr add 10.15.1.253/30 dev gre6tunir015001
sudo ip link set gre6tunir015001 mtu 1300
sudo ip link set gre6tunir015001 up
sudo ip tunnel add 6to4tunir015002 mode sit remote 148.251.119.123 ansible_user=root ansible_port=22 local 94.182.138.86 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:15:2::253/64 dev 6to4tunir015002
sudo ip link set 6to4tunir015002 mtu 1400
sudo ip link set 6to4tunir015002 up
sudo ip -6 tunnel add gre6tunir015002 mode ip6gre remote fc00:15:2::254 local fc00:15:2::253
sudo ip addr add 10.15.2.253/30 dev gre6tunir015002
sudo ip link set gre6tunir015002 mtu 1300
sudo ip link set gre6tunir015002 up
sudo ip tunnel add 6to4tunir015003 mode sit remote 136.243.26.216 ansible_user=root ansible_port=22 local 94.182.138.86 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:15:3::253/64 dev 6to4tunir015003
sudo ip link set 6to4tunir015003 mtu 1400
sudo ip link set 6to4tunir015003 up
sudo ip -6 tunnel add gre6tunir015003 mode ip6gre remote fc00:15:3::254 local fc00:15:3::253
sudo ip addr add 10.15.3.253/30 dev gre6tunir015003
sudo ip link set gre6tunir015003 mtu 1300
sudo ip link set gre6tunir015003 up
sudo ip tunnel add 6to4tunir015004 mode sit remote 185.223.235.100 ansible_user=root ansible_port=22 local 94.182.138.86 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:15:4::253/64 dev 6to4tunir015004
sudo ip link set 6to4tunir015004 mtu 1400
sudo ip link set 6to4tunir015004 up
sudo ip -6 tunnel add gre6tunir015004 mode ip6gre remote fc00:15:4::254 local fc00:15:4::253
sudo ip addr add 10.15.4.253/30 dev gre6tunir015004
sudo ip link set gre6tunir015004 mtu 1300
sudo ip link set gre6tunir015004 up
sudo ip tunnel add 6to4tunir015005 mode sit remote 136.243.26.215 ansible_user=root ansible_port=22 local 94.182.138.86 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:15:5::253/64 dev 6to4tunir015005
sudo ip link set 6to4tunir015005 mtu 1400
sudo ip link set 6to4tunir015005 up
sudo ip -6 tunnel add gre6tunir015005 mode ip6gre remote fc00:15:5::254 local fc00:15:5::253
sudo ip addr add 10.15.5.253/30 dev gre6tunir015005
sudo ip link set gre6tunir015005 mtu 1300
sudo ip link set gre6tunir015005 up
sudo ip tunnel add 6to4tunir015006 mode sit remote 152.42.137.215 ansible_user=root ansible_port=22 local 94.182.138.86 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:15:6::253/64 dev 6to4tunir015006
sudo ip link set 6to4tunir015006 mtu 1400
sudo ip link set 6to4tunir015006 up
sudo ip -6 tunnel add gre6tunir015006 mode ip6gre remote fc00:15:6::254 local fc00:15:6::253
sudo ip addr add 10.15.6.253/30 dev gre6tunir015006
sudo ip link set gre6tunir015006 mtu 1300
sudo ip link set gre6tunir015006 up
