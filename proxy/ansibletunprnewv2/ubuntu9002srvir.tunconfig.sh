sudo ip tunnel add 6to4tunir002001 mode sit remote 164.92.246.10 local 5.57.33.8
sudo ip -6 addr add fc00:2:1::253/64 dev 6to4tunir002001
sudo ip link set 6to4tunir002001 mtu 1400
sudo ip link set 6to4tunir002001 up
sudo ip -6 tunnel add gre6tunir002001 mode ip6gre remote fc00:2:1::254 local fc00:2:1::253
sudo ip addr add 10.2.1.253/30 dev gre6tunir002001
sudo ip link set gre6tunir002001 mtu 1300
sudo ip link set gre6tunir002001 up