sudo ip tunnel add 6to4tunir005001 mode sit remote 164.92.246.10 local 31.216.62.66
sudo ip -6 addr add fc00:5:1::253/64 dev 6to4tunir005001
sudo ip link set 6to4tunir005001 mtu 1400
sudo ip link set 6to4tunir005001 up
sudo ip -6 tunnel add gre6tunir005001 mode ip6gre remote fc00:5:1::254 local fc00:5:1::253
sudo ip addr add 10.5.1.253/30 dev gre6tunir005001
sudo ip link set gre6tunir005001 mtu 1300
sudo ip link set gre6tunir005001 up
sudo ip tunnel add 6to4tunir005002 mode sit remote 157.245.41.172 local 31.216.62.66
sudo ip -6 addr add fc00:5:2::253/64 dev 6to4tunir005002
sudo ip link set 6to4tunir005002 mtu 1400
sudo ip link set 6to4tunir005002 up
sudo ip -6 tunnel add gre6tunir005002 mode ip6gre remote fc00:5:2::254 local fc00:5:2::253
sudo ip addr add 10.5.2.253/30 dev gre6tunir005002
sudo ip link set gre6tunir005002 mtu 1300
sudo ip link set gre6tunir005002 up
