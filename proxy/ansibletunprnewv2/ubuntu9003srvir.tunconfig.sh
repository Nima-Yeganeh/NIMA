sudo ip tunnel add 6to4tunir003001 mode sit remote 164.92.246.10 local 94.182.223.249
sudo ip -6 addr add fc00:3:1::253/64 dev 6to4tunir003001
sudo ip link set 6to4tunir003001 mtu 1400
sudo ip link set 6to4tunir003001 up
sudo ip -6 tunnel add gre6tunir003001 mode ip6gre remote fc00:3:1::254 local fc00:3:1::253
sudo ip addr add 10.3.1.253/30 dev gre6tunir003001
sudo ip link set gre6tunir003001 mtu 1300
sudo ip link set gre6tunir003001 up
