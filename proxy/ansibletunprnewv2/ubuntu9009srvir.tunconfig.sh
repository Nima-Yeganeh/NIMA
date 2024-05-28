sudo ip tunnel add 6to4tunir009001 mode sit remote 192.248.183.34 local 185.26.32.124
sudo ip -6 addr add fc00:9:1::253/64 dev 6to4tunir009001
sudo ip link set 6to4tunir009001 mtu 1400
sudo ip link set 6to4tunir009001 up
sudo ip -6 tunnel add gre6tunir009001 mode ip6gre remote fc00:9:1::254 local fc00:9:1::253
sudo ip addr add 10.9.1.253/30 dev gre6tunir009001
sudo ip link set gre6tunir009001 mtu 1300
sudo ip link set gre6tunir009001 up
