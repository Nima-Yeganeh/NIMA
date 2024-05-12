sudo ip tunnel add 6to4tunir028001 mode sit remote 164.92.246.10 local 142.93.133.38
sudo ip -6 addr add fc00:28:1::253/64 dev 6to4tunir028001
sudo ip link set 6to4tunir028001 mtu 1400
sudo ip link set 6to4tunir028001 up
sudo ip -6 tunnel add gre6tunir028001 mode ip6gre remote fc00:28:1::254 local fc00:28:1::253
sudo ip addr add 10.28.1.253/30 dev gre6tunir028001
sudo ip link set gre6tunir028001 mtu 1300
sudo ip link set gre6tunir028001 up
sudo ip tunnel add 6to4tunir028002 mode sit remote 157.245.41.172 local 142.93.133.38
sudo ip -6 addr add fc00:28:2::253/64 dev 6to4tunir028002
sudo ip link set 6to4tunir028002 mtu 1400
sudo ip link set 6to4tunir028002 up
sudo ip -6 tunnel add gre6tunir028002 mode ip6gre remote fc00:28:2::254 local fc00:28:2::253
sudo ip addr add 10.28.2.253/30 dev gre6tunir028002
sudo ip link set gre6tunir028002 mtu 1300
sudo ip link set gre6tunir028002 up
sudo ip tunnel add 6to4tunir028003 mode sit remote 138.68.74.97 local 142.93.133.38
sudo ip -6 addr add fc00:28:3::253/64 dev 6to4tunir028003
sudo ip link set 6to4tunir028003 mtu 1400
sudo ip link set 6to4tunir028003 up
sudo ip -6 tunnel add gre6tunir028003 mode ip6gre remote fc00:28:3::254 local fc00:28:3::253
sudo ip addr add 10.28.3.253/30 dev gre6tunir028003
sudo ip link set gre6tunir028003 mtu 1300
sudo ip link set gre6tunir028003 up
sudo ip tunnel add 6to4tunir028004 mode sit remote 174.138.5.192 local 142.93.133.38
sudo ip -6 addr add fc00:28:4::253/64 dev 6to4tunir028004
sudo ip link set 6to4tunir028004 mtu 1400
sudo ip link set 6to4tunir028004 up
sudo ip -6 tunnel add gre6tunir028004 mode ip6gre remote fc00:28:4::254 local fc00:28:4::253
sudo ip addr add 10.28.4.253/30 dev gre6tunir028004
sudo ip link set gre6tunir028004 mtu 1300
sudo ip link set gre6tunir028004 up
sudo ip tunnel add 6to4tunir028005 mode sit remote 165.232.76.77 local 142.93.133.38
sudo ip -6 addr add fc00:28:5::253/64 dev 6to4tunir028005
sudo ip link set 6to4tunir028005 mtu 1400
sudo ip link set 6to4tunir028005 up
sudo ip -6 tunnel add gre6tunir028005 mode ip6gre remote fc00:28:5::254 local fc00:28:5::253
sudo ip addr add 10.28.5.253/30 dev gre6tunir028005
sudo ip link set gre6tunir028005 mtu 1300
sudo ip link set gre6tunir028005 up
