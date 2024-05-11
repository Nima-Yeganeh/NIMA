sudo ip tunnel add 6to4tunir015001 mode sit remote 164.92.246.10 local 94.182.138.86
sudo ip -6 addr add fc00:15:1::253/64 dev 6to4tunir015001
sudo ip link set 6to4tunir015001 mtu 1400
sudo ip link set 6to4tunir015001 up
sudo ip -6 tunnel add gre6tunir015001 mode ip6gre remote fc00:15:1::254 local fc00:15:1::253
sudo ip addr add 10.15.1.253/30 dev gre6tunir015001
sudo ip link set gre6tunir015001 mtu 1300
sudo ip link set gre6tunir015001 up
sudo ip tunnel add 6to4tunir015002 mode sit remote 157.245.41.172 local 94.182.138.86
sudo ip -6 addr add fc00:15:2::253/64 dev 6to4tunir015002
sudo ip link set 6to4tunir015002 mtu 1400
sudo ip link set 6to4tunir015002 up
sudo ip -6 tunnel add gre6tunir015002 mode ip6gre remote fc00:15:2::254 local fc00:15:2::253
sudo ip addr add 10.15.2.253/30 dev gre6tunir015002
sudo ip link set gre6tunir015002 mtu 1300
sudo ip link set gre6tunir015002 up
sudo ip tunnel add 6to4tunir015003 mode sit remote 138.68.74.97 local 94.182.138.86
sudo ip -6 addr add fc00:15:3::253/64 dev 6to4tunir015003
sudo ip link set 6to4tunir015003 mtu 1400
sudo ip link set 6to4tunir015003 up
sudo ip -6 tunnel add gre6tunir015003 mode ip6gre remote fc00:15:3::254 local fc00:15:3::253
sudo ip addr add 10.15.3.253/30 dev gre6tunir015003
sudo ip link set gre6tunir015003 mtu 1300
sudo ip link set gre6tunir015003 up
sudo ip tunnel add 6to4tunir015004 mode sit remote 174.138.5.192 local 94.182.138.86
sudo ip -6 addr add fc00:15:4::253/64 dev 6to4tunir015004
sudo ip link set 6to4tunir015004 mtu 1400
sudo ip link set 6to4tunir015004 up
sudo ip -6 tunnel add gre6tunir015004 mode ip6gre remote fc00:15:4::254 local fc00:15:4::253
sudo ip addr add 10.15.4.253/30 dev gre6tunir015004
sudo ip link set gre6tunir015004 mtu 1300
sudo ip link set gre6tunir015004 up
sudo ip tunnel add 6to4tunir015005 mode sit remote 165.232.76.77 local 94.182.138.86
sudo ip -6 addr add fc00:15:5::253/64 dev 6to4tunir015005
sudo ip link set 6to4tunir015005 mtu 1400
sudo ip link set 6to4tunir015005 up
sudo ip -6 tunnel add gre6tunir015005 mode ip6gre remote fc00:15:5::254 local fc00:15:5::253
sudo ip addr add 10.15.5.253/30 dev gre6tunir015005
sudo ip link set gre6tunir015005 mtu 1300
sudo ip link set gre6tunir015005 up
