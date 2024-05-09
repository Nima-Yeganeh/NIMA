sudo ip tunnel add 6to4tunir010001 mode sit remote 164.92.246.10 local 94.182.134.195
sudo ip -6 addr add fc00:10:1::253/64 dev 6to4tunir010001
sudo ip link set 6to4tunir010001 mtu 1400
sudo ip link set 6to4tunir010001 up
sudo ip -6 tunnel add gre6tunir010001 mode ip6gre remote fc00:10:1::254 local fc00:10:1::253
sudo ip addr add 10.10.1.253/30 dev gre6tunir010001
sudo ip link set gre6tunir010001 mtu 1300
sudo ip link set gre6tunir010001 up
sudo ip tunnel add 6to4tunir010002 mode sit remote 157.245.41.172 local 94.182.134.195
sudo ip -6 addr add fc00:10:2::253/64 dev 6to4tunir010002
sudo ip link set 6to4tunir010002 mtu 1400
sudo ip link set 6to4tunir010002 up
sudo ip -6 tunnel add gre6tunir010002 mode ip6gre remote fc00:10:2::254 local fc00:10:2::253
sudo ip addr add 10.10.2.253/30 dev gre6tunir010002
sudo ip link set gre6tunir010002 mtu 1300
sudo ip link set gre6tunir010002 up
sudo ip tunnel add 6to4tunir010003 mode sit remote 138.68.74.97 local 94.182.134.195
sudo ip -6 addr add fc00:10:3::253/64 dev 6to4tunir010003
sudo ip link set 6to4tunir010003 mtu 1400
sudo ip link set 6to4tunir010003 up
sudo ip -6 tunnel add gre6tunir010003 mode ip6gre remote fc00:10:3::254 local fc00:10:3::253
sudo ip addr add 10.10.3.253/30 dev gre6tunir010003
sudo ip link set gre6tunir010003 mtu 1300
sudo ip link set gre6tunir010003 up
