sudo ip tunnel add 6to4tunir029001 mode sit remote 164.92.246.10 local 142.93.133.247
sudo ip -6 addr add fc00:29:1::253/64 dev 6to4tunir029001
sudo ip link set 6to4tunir029001 mtu 1400
sudo ip link set 6to4tunir029001 up
sudo ip -6 tunnel add gre6tunir029001 mode ip6gre remote fc00:29:1::254 local fc00:29:1::253
sudo ip addr add 10.29.1.253/30 dev gre6tunir029001
sudo ip link set gre6tunir029001 mtu 1300
sudo ip link set gre6tunir029001 up
sudo ip tunnel add 6to4tunir029002 mode sit remote 157.245.41.172 local 142.93.133.247
sudo ip -6 addr add fc00:29:2::253/64 dev 6to4tunir029002
sudo ip link set 6to4tunir029002 mtu 1400
sudo ip link set 6to4tunir029002 up
sudo ip -6 tunnel add gre6tunir029002 mode ip6gre remote fc00:29:2::254 local fc00:29:2::253
sudo ip addr add 10.29.2.253/30 dev gre6tunir029002
sudo ip link set gre6tunir029002 mtu 1300
sudo ip link set gre6tunir029002 up
sudo ip tunnel add 6to4tunir029003 mode sit remote 138.68.74.97 local 142.93.133.247
sudo ip -6 addr add fc00:29:3::253/64 dev 6to4tunir029003
sudo ip link set 6to4tunir029003 mtu 1400
sudo ip link set 6to4tunir029003 up
sudo ip -6 tunnel add gre6tunir029003 mode ip6gre remote fc00:29:3::254 local fc00:29:3::253
sudo ip addr add 10.29.3.253/30 dev gre6tunir029003
sudo ip link set gre6tunir029003 mtu 1300
sudo ip link set gre6tunir029003 up
sudo ip tunnel add 6to4tunir029004 mode sit remote 174.138.5.192 local 142.93.133.247
sudo ip -6 addr add fc00:29:4::253/64 dev 6to4tunir029004
sudo ip link set 6to4tunir029004 mtu 1400
sudo ip link set 6to4tunir029004 up
sudo ip -6 tunnel add gre6tunir029004 mode ip6gre remote fc00:29:4::254 local fc00:29:4::253
sudo ip addr add 10.29.4.253/30 dev gre6tunir029004
sudo ip link set gre6tunir029004 mtu 1300
sudo ip link set gre6tunir029004 up
sudo ip tunnel add 6to4tunir029005 mode sit remote 165.232.76.77 local 142.93.133.247
sudo ip -6 addr add fc00:29:5::253/64 dev 6to4tunir029005
sudo ip link set 6to4tunir029005 mtu 1400
sudo ip link set 6to4tunir029005 up
sudo ip -6 tunnel add gre6tunir029005 mode ip6gre remote fc00:29:5::254 local fc00:29:5::253
sudo ip addr add 10.29.5.253/30 dev gre6tunir029005
sudo ip link set gre6tunir029005 mtu 1300
sudo ip link set gre6tunir029005 up