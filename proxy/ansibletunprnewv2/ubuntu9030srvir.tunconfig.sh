sudo ip tunnel add 6to4tunir030001 mode sit remote 157.90.71.217 local 193.111.234.211
sudo ip -6 addr add fc00:30:1::253/64 dev 6to4tunir030001
sudo ip link set 6to4tunir030001 mtu 1400
sudo ip link set 6to4tunir030001 up
sudo ip -6 tunnel add gre6tunir030001 mode ip6gre remote fc00:30:1::254 local fc00:30:1::253
sudo ip addr add 10.30.1.253/30 dev gre6tunir030001
sudo ip link set gre6tunir030001 mtu 1300
sudo ip link set gre6tunir030001 up
sudo ip tunnel add 6to4tunir030002 mode sit remote 148.251.119.123 local 193.111.234.211
sudo ip -6 addr add fc00:30:2::253/64 dev 6to4tunir030002
sudo ip link set 6to4tunir030002 mtu 1400
sudo ip link set 6to4tunir030002 up
sudo ip -6 tunnel add gre6tunir030002 mode ip6gre remote fc00:30:2::254 local fc00:30:2::253
sudo ip addr add 10.30.2.253/30 dev gre6tunir030002
sudo ip link set gre6tunir030002 mtu 1300
sudo ip link set gre6tunir030002 up
sudo ip tunnel add 6to4tunir030003 mode sit remote 136.243.26.216 local 193.111.234.211
sudo ip -6 addr add fc00:30:3::253/64 dev 6to4tunir030003
sudo ip link set 6to4tunir030003 mtu 1400
sudo ip link set 6to4tunir030003 up
sudo ip -6 tunnel add gre6tunir030003 mode ip6gre remote fc00:30:3::254 local fc00:30:3::253
sudo ip addr add 10.30.3.253/30 dev gre6tunir030003
sudo ip link set gre6tunir030003 mtu 1300
sudo ip link set gre6tunir030003 up
sudo ip tunnel add 6to4tunir030004 mode sit remote 185.223.235.100 local 193.111.234.211
sudo ip -6 addr add fc00:30:4::253/64 dev 6to4tunir030004
sudo ip link set 6to4tunir030004 mtu 1400
sudo ip link set 6to4tunir030004 up
sudo ip -6 tunnel add gre6tunir030004 mode ip6gre remote fc00:30:4::254 local fc00:30:4::253
sudo ip addr add 10.30.4.253/30 dev gre6tunir030004
sudo ip link set gre6tunir030004 mtu 1300
sudo ip link set gre6tunir030004 up
sudo ip tunnel add 6to4tunir030005 mode sit remote 165.232.76.77 local 193.111.234.211
sudo ip -6 addr add fc00:30:5::253/64 dev 6to4tunir030005
sudo ip link set 6to4tunir030005 mtu 1400
sudo ip link set 6to4tunir030005 up
sudo ip -6 tunnel add gre6tunir030005 mode ip6gre remote fc00:30:5::254 local fc00:30:5::253
sudo ip addr add 10.30.5.253/30 dev gre6tunir030005
sudo ip link set gre6tunir030005 mtu 1300
sudo ip link set gre6tunir030005 up
