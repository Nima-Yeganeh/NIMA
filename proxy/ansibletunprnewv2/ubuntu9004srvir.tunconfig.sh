sudo ip tunnel add 6to4tunir004001 mode sit remote 164.92.246.10 local 94.182.150.22
sudo ip -6 addr add fc00:4:1::253/64 dev 6to4tunir004001
sudo ip link set 6to4tunir004001 mtu 1400
sudo ip link set 6to4tunir004001 up
sudo ip -6 tunnel add gre6tunir004001 mode ip6gre remote fc00:4:1::254 local fc00:4:1::253
sudo ip addr add 10.4.1.253/30 dev gre6tunir004001
sudo ip link set gre6tunir004001 mtu 1300
sudo ip link set gre6tunir004001 up
