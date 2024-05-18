sudo ip tunnel add 6to4tunir003001 mode sit remote 157.90.71.217 local 94.182.223.249
sudo ip -6 addr add fc00:3:1::253/64 dev 6to4tunir003001
sudo ip link set 6to4tunir003001 mtu 1400
sudo ip link set 6to4tunir003001 up
sudo ip -6 tunnel add gre6tunir003001 mode ip6gre remote fc00:3:1::254 local fc00:3:1::253
sudo ip addr add 10.3.1.253/30 dev gre6tunir003001
sudo ip link set gre6tunir003001 mtu 1300
sudo ip link set gre6tunir003001 up
sudo ip tunnel add 6to4tunir003002 mode sit remote 148.251.119.123 local 94.182.223.249
sudo ip -6 addr add fc00:3:2::253/64 dev 6to4tunir003002
sudo ip link set 6to4tunir003002 mtu 1400
sudo ip link set 6to4tunir003002 up
sudo ip -6 tunnel add gre6tunir003002 mode ip6gre remote fc00:3:2::254 local fc00:3:2::253
sudo ip addr add 10.3.2.253/30 dev gre6tunir003002
sudo ip link set gre6tunir003002 mtu 1300
sudo ip link set gre6tunir003002 up
sudo ip tunnel add 6to4tunir003003 mode sit remote 136.243.26.216 local 94.182.223.249
sudo ip -6 addr add fc00:3:3::253/64 dev 6to4tunir003003
sudo ip link set 6to4tunir003003 mtu 1400
sudo ip link set 6to4tunir003003 up
sudo ip -6 tunnel add gre6tunir003003 mode ip6gre remote fc00:3:3::254 local fc00:3:3::253
sudo ip addr add 10.3.3.253/30 dev gre6tunir003003
sudo ip link set gre6tunir003003 mtu 1300
sudo ip link set gre6tunir003003 up
sudo ip tunnel add 6to4tunir003004 mode sit remote 185.223.235.100 local 94.182.223.249
sudo ip -6 addr add fc00:3:4::253/64 dev 6to4tunir003004
sudo ip link set 6to4tunir003004 mtu 1400
sudo ip link set 6to4tunir003004 up
sudo ip -6 tunnel add gre6tunir003004 mode ip6gre remote fc00:3:4::254 local fc00:3:4::253
sudo ip addr add 10.3.4.253/30 dev gre6tunir003004
sudo ip link set gre6tunir003004 mtu 1300
sudo ip link set gre6tunir003004 up
sudo ip tunnel add 6to4tunir003005 mode sit remote 165.232.76.77 local 94.182.223.249
sudo ip -6 addr add fc00:3:5::253/64 dev 6to4tunir003005
sudo ip link set 6to4tunir003005 mtu 1400
sudo ip link set 6to4tunir003005 up
sudo ip -6 tunnel add gre6tunir003005 mode ip6gre remote fc00:3:5::254 local fc00:3:5::253
sudo ip addr add 10.3.5.253/30 dev gre6tunir003005
sudo ip link set gre6tunir003005 mtu 1300
sudo ip link set gre6tunir003005 up
