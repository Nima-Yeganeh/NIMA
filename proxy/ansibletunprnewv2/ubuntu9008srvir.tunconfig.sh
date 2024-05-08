sudo ip tunnel add 6to4tunir008001 mode sit remote 164.92.246.10 local 193.111.234.222
sudo ip -6 addr add fc00:8:1::253/64 dev 6to4tunir008001
sudo ip link set 6to4tunir008001 mtu 1400
sudo ip link set 6to4tunir008001 up
sudo ip -6 tunnel add gre6tunir008001 mode ip6gre remote fc00:8:1::254 local fc00:8:1::253
sudo ip addr add 10.8.1.253/30 dev gre6tunir008001
sudo ip link set gre6tunir008001 mtu 1300
sudo ip link set gre6tunir008001 up
sudo ip tunnel add 6to4tunir008002 mode sit remote 157.245.41.172 local 193.111.234.222
sudo ip -6 addr add fc00:8:2::253/64 dev 6to4tunir008002
sudo ip link set 6to4tunir008002 mtu 1400
sudo ip link set 6to4tunir008002 up
sudo ip -6 tunnel add gre6tunir008002 mode ip6gre remote fc00:8:2::254 local fc00:8:2::253
sudo ip addr add 10.8.2.253/30 dev gre6tunir008002
sudo ip link set gre6tunir008002 mtu 1300
sudo ip link set gre6tunir008002 up
