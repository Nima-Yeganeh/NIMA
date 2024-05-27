sudo ip tunnel add 6to4tunir036010 mode sit remote 136.243.26.215 local 185.26.32.231
sudo ip -6 addr add fc00:36:10::253/64 dev 6to4tunir036010
sudo ip link set 6to4tunir036010 mtu 1400
sudo ip link set 6to4tunir036010 up
sudo ip -6 tunnel add gre6tunir036010 mode ip6gre remote fc00:36:10::254 local fc00:36:10::253
sudo ip addr add 10.36.10.253/30 dev gre6tunir036010
sudo ip link set gre6tunir036010 mtu 1300
sudo ip link set gre6tunir036010 up
