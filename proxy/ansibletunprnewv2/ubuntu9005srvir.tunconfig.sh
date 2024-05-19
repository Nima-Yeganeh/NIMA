sudo ip tunnel add 6to4tunir005001 mode sit remote 157.90.71.217 ansible_user=root ansible_port=22 local 31.216.62.66 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:5:1::253/64 dev 6to4tunir005001
sudo ip link set 6to4tunir005001 mtu 1400
sudo ip link set 6to4tunir005001 up
sudo ip -6 tunnel add gre6tunir005001 mode ip6gre remote fc00:5:1::254 local fc00:5:1::253
sudo ip addr add 10.5.1.253/30 dev gre6tunir005001
sudo ip link set gre6tunir005001 mtu 1300
sudo ip link set gre6tunir005001 up
sudo ip tunnel add 6to4tunir005002 mode sit remote 148.251.119.123 ansible_user=root ansible_port=22 local 31.216.62.66 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:5:2::253/64 dev 6to4tunir005002
sudo ip link set 6to4tunir005002 mtu 1400
sudo ip link set 6to4tunir005002 up
sudo ip -6 tunnel add gre6tunir005002 mode ip6gre remote fc00:5:2::254 local fc00:5:2::253
sudo ip addr add 10.5.2.253/30 dev gre6tunir005002
sudo ip link set gre6tunir005002 mtu 1300
sudo ip link set gre6tunir005002 up
sudo ip tunnel add 6to4tunir005003 mode sit remote 136.243.26.216 ansible_user=root ansible_port=22 local 31.216.62.66 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:5:3::253/64 dev 6to4tunir005003
sudo ip link set 6to4tunir005003 mtu 1400
sudo ip link set 6to4tunir005003 up
sudo ip -6 tunnel add gre6tunir005003 mode ip6gre remote fc00:5:3::254 local fc00:5:3::253
sudo ip addr add 10.5.3.253/30 dev gre6tunir005003
sudo ip link set gre6tunir005003 mtu 1300
sudo ip link set gre6tunir005003 up
sudo ip tunnel add 6to4tunir005004 mode sit remote 185.223.235.100 ansible_user=root ansible_port=22 local 31.216.62.66 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:5:4::253/64 dev 6to4tunir005004
sudo ip link set 6to4tunir005004 mtu 1400
sudo ip link set 6to4tunir005004 up
sudo ip -6 tunnel add gre6tunir005004 mode ip6gre remote fc00:5:4::254 local fc00:5:4::253
sudo ip addr add 10.5.4.253/30 dev gre6tunir005004
sudo ip link set gre6tunir005004 mtu 1300
sudo ip link set gre6tunir005004 up
sudo ip tunnel add 6to4tunir005005 mode sit remote 136.243.26.215 ansible_user=root ansible_port=22 local 31.216.62.66 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:5:5::253/64 dev 6to4tunir005005
sudo ip link set 6to4tunir005005 mtu 1400
sudo ip link set 6to4tunir005005 up
sudo ip -6 tunnel add gre6tunir005005 mode ip6gre remote fc00:5:5::254 local fc00:5:5::253
sudo ip addr add 10.5.5.253/30 dev gre6tunir005005
sudo ip link set gre6tunir005005 mtu 1300
sudo ip link set gre6tunir005005 up
sudo ip tunnel add 6to4tunir005006 mode sit remote 109.61.42.82 ansible_user=ubuntu ansible_port=22 local 31.216.62.66 ansible_user=root ansible_port=22
sudo ip -6 addr add fc00:5:6::253/64 dev 6to4tunir005006
sudo ip link set 6to4tunir005006 mtu 1400
sudo ip link set 6to4tunir005006 up
sudo ip -6 tunnel add gre6tunir005006 mode ip6gre remote fc00:5:6::254 local fc00:5:6::253
sudo ip addr add 10.5.6.253/30 dev gre6tunir005006
sudo ip link set gre6tunir005006 mtu 1300
sudo ip link set gre6tunir005006 up
