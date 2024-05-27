sudo ip tunnel add 6to4tunir008001 mode sit remote 136.243.26.215 local 185.26.32.175
sudo ip -6 addr add fc00:8:1::253/64 dev 6to4tunir008001
sudo ip link set 6to4tunir008001 mtu 1400
sudo ip link set 6to4tunir008001 up
sudo ip -6 tunnel add gre6tunir008001 mode ip6gre remote fc00:8:1::254 local fc00:8:1::253
sudo ip addr add 10.8.1.253/30 dev gre6tunir008001
sudo ip link set gre6tunir008001 mtu 1300
sudo ip link set gre6tunir008001 up
