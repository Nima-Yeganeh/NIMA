sudo ip tunnel add 6to4tunir005001 mode sit remote 136.243.26.215 local 185.26.32.160
sudo ip -6 addr add fc00:5:1::253/64 dev 6to4tunir005001
sudo ip link set 6to4tunir005001 mtu 1400
sudo ip link set 6to4tunir005001 up
sudo ip -6 tunnel add gre6tunir005001 mode ip6gre remote fc00:5:1::254 local fc00:5:1::253
sudo ip addr add 10.5.1.253/30 dev gre6tunir005001
sudo ip link set gre6tunir005001 mtu 1300
sudo ip link set gre6tunir005001 up
