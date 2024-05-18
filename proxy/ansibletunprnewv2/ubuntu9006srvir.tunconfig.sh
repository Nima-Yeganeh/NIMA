sudo ip tunnel add 6to4tunir006001 mode sit remote 157.90.71.217 local 185.73.0.205
sudo ip -6 addr add fc00:6:1::253/64 dev 6to4tunir006001
sudo ip link set 6to4tunir006001 mtu 1400
sudo ip link set 6to4tunir006001 up
sudo ip -6 tunnel add gre6tunir006001 mode ip6gre remote fc00:6:1::254 local fc00:6:1::253
sudo ip addr add 10.6.1.253/30 dev gre6tunir006001
sudo ip link set gre6tunir006001 mtu 1300
sudo ip link set gre6tunir006001 up
sudo ip tunnel add 6to4tunir006002 mode sit remote 148.251.119.123 local 185.73.0.205
sudo ip -6 addr add fc00:6:2::253/64 dev 6to4tunir006002
sudo ip link set 6to4tunir006002 mtu 1400
sudo ip link set 6to4tunir006002 up
sudo ip -6 tunnel add gre6tunir006002 mode ip6gre remote fc00:6:2::254 local fc00:6:2::253
sudo ip addr add 10.6.2.253/30 dev gre6tunir006002
sudo ip link set gre6tunir006002 mtu 1300
sudo ip link set gre6tunir006002 up
sudo ip tunnel add 6to4tunir006003 mode sit remote 138.68.74.97 local 185.73.0.205
sudo ip -6 addr add fc00:6:3::253/64 dev 6to4tunir006003
sudo ip link set 6to4tunir006003 mtu 1400
sudo ip link set 6to4tunir006003 up
sudo ip -6 tunnel add gre6tunir006003 mode ip6gre remote fc00:6:3::254 local fc00:6:3::253
sudo ip addr add 10.6.3.253/30 dev gre6tunir006003
sudo ip link set gre6tunir006003 mtu 1300
sudo ip link set gre6tunir006003 up
sudo ip tunnel add 6to4tunir006004 mode sit remote 185.223.235.100 local 185.73.0.205
sudo ip -6 addr add fc00:6:4::253/64 dev 6to4tunir006004
sudo ip link set 6to4tunir006004 mtu 1400
sudo ip link set 6to4tunir006004 up
sudo ip -6 tunnel add gre6tunir006004 mode ip6gre remote fc00:6:4::254 local fc00:6:4::253
sudo ip addr add 10.6.4.253/30 dev gre6tunir006004
sudo ip link set gre6tunir006004 mtu 1300
sudo ip link set gre6tunir006004 up
sudo ip tunnel add 6to4tunir006005 mode sit remote 165.232.76.77 local 185.73.0.205
sudo ip -6 addr add fc00:6:5::253/64 dev 6to4tunir006005
sudo ip link set 6to4tunir006005 mtu 1400
sudo ip link set 6to4tunir006005 up
sudo ip -6 tunnel add gre6tunir006005 mode ip6gre remote fc00:6:5::254 local fc00:6:5::253
sudo ip addr add 10.6.5.253/30 dev gre6tunir006005
sudo ip link set gre6tunir006005 mtu 1300
sudo ip link set gre6tunir006005 up
