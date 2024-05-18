sudo ip tunnel add 6to4tunir002001 mode sit remote 157.90.71.217 local 5.57.33.8
sudo ip -6 addr add fc00:2:1::253/64 dev 6to4tunir002001
sudo ip link set 6to4tunir002001 mtu 1400
sudo ip link set 6to4tunir002001 up
sudo ip -6 tunnel add gre6tunir002001 mode ip6gre remote fc00:2:1::254 local fc00:2:1::253
sudo ip addr add 10.2.1.253/30 dev gre6tunir002001
sudo ip link set gre6tunir002001 mtu 1300
sudo ip link set gre6tunir002001 up
sudo ip tunnel add 6to4tunir002002 mode sit remote 157.245.41.172 local 5.57.33.8
sudo ip -6 addr add fc00:2:2::253/64 dev 6to4tunir002002
sudo ip link set 6to4tunir002002 mtu 1400
sudo ip link set 6to4tunir002002 up
sudo ip -6 tunnel add gre6tunir002002 mode ip6gre remote fc00:2:2::254 local fc00:2:2::253
sudo ip addr add 10.2.2.253/30 dev gre6tunir002002
sudo ip link set gre6tunir002002 mtu 1300
sudo ip link set gre6tunir002002 up
sudo ip tunnel add 6to4tunir002003 mode sit remote 138.68.74.97 local 5.57.33.8
sudo ip -6 addr add fc00:2:3::253/64 dev 6to4tunir002003
sudo ip link set 6to4tunir002003 mtu 1400
sudo ip link set 6to4tunir002003 up
sudo ip -6 tunnel add gre6tunir002003 mode ip6gre remote fc00:2:3::254 local fc00:2:3::253
sudo ip addr add 10.2.3.253/30 dev gre6tunir002003
sudo ip link set gre6tunir002003 mtu 1300
sudo ip link set gre6tunir002003 up
sudo ip tunnel add 6to4tunir002004 mode sit remote 185.223.235.100 local 5.57.33.8
sudo ip -6 addr add fc00:2:4::253/64 dev 6to4tunir002004
sudo ip link set 6to4tunir002004 mtu 1400
sudo ip link set 6to4tunir002004 up
sudo ip -6 tunnel add gre6tunir002004 mode ip6gre remote fc00:2:4::254 local fc00:2:4::253
sudo ip addr add 10.2.4.253/30 dev gre6tunir002004
sudo ip link set gre6tunir002004 mtu 1300
sudo ip link set gre6tunir002004 up
sudo ip tunnel add 6to4tunir002005 mode sit remote 165.232.76.77 local 5.57.33.8
sudo ip -6 addr add fc00:2:5::253/64 dev 6to4tunir002005
sudo ip link set 6to4tunir002005 mtu 1400
sudo ip link set 6to4tunir002005 up
sudo ip -6 tunnel add gre6tunir002005 mode ip6gre remote fc00:2:5::254 local fc00:2:5::253
sudo ip addr add 10.2.5.253/30 dev gre6tunir002005
sudo ip link set gre6tunir002005 mtu 1300
sudo ip link set gre6tunir002005 up
