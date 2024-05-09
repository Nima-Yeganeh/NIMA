sudo ip tunnel add 6to4tunir009001 mode sit remote 164.92.246.10 local 94.182.152.106
sudo ip -6 addr add fc00:9:1::253/64 dev 6to4tunir009001
sudo ip link set 6to4tunir009001 mtu 1400
sudo ip link set 6to4tunir009001 up
sudo ip -6 tunnel add gre6tunir009001 mode ip6gre remote fc00:9:1::254 local fc00:9:1::253
sudo ip addr add 10.9.1.253/30 dev gre6tunir009001
sudo ip link set gre6tunir009001 mtu 1300
sudo ip link set gre6tunir009001 up
sudo ip tunnel add 6to4tunir009002 mode sit remote 157.245.41.172 local 94.182.152.106
sudo ip -6 addr add fc00:9:2::253/64 dev 6to4tunir009002
sudo ip link set 6to4tunir009002 mtu 1400
sudo ip link set 6to4tunir009002 up
sudo ip -6 tunnel add gre6tunir009002 mode ip6gre remote fc00:9:2::254 local fc00:9:2::253
sudo ip addr add 10.9.2.253/30 dev gre6tunir009002
sudo ip link set gre6tunir009002 mtu 1300
sudo ip link set gre6tunir009002 up
sudo ip tunnel add 6to4tunir009003 mode sit remote 138.68.74.97 local 94.182.152.106
sudo ip -6 addr add fc00:9:3::253/64 dev 6to4tunir009003
sudo ip link set 6to4tunir009003 mtu 1400
sudo ip link set 6to4tunir009003 up
sudo ip -6 tunnel add gre6tunir009003 mode ip6gre remote fc00:9:3::254 local fc00:9:3::253
sudo ip addr add 10.9.3.253/30 dev gre6tunir009003
sudo ip link set gre6tunir009003 mtu 1300
sudo ip link set gre6tunir009003 up
sudo ip tunnel add 6to4tunir009004 mode sit remote 174.138.5.192 local 94.182.152.106
sudo ip -6 addr add fc00:9:4::253/64 dev 6to4tunir009004
sudo ip link set 6to4tunir009004 mtu 1400
sudo ip link set 6to4tunir009004 up
sudo ip -6 tunnel add gre6tunir009004 mode ip6gre remote fc00:9:4::254 local fc00:9:4::253
sudo ip addr add 10.9.4.253/30 dev gre6tunir009004
sudo ip link set gre6tunir009004 mtu 1300
sudo ip link set gre6tunir009004 up
sudo ip tunnel add 6to4tunir009005 mode sit remote 165.232.76.77 local 94.182.152.106
sudo ip -6 addr add fc00:9:5::253/64 dev 6to4tunir009005
sudo ip link set 6to4tunir009005 mtu 1400
sudo ip link set 6to4tunir009005 up
sudo ip -6 tunnel add gre6tunir009005 mode ip6gre remote fc00:9:5::254 local fc00:9:5::253
sudo ip addr add 10.9.5.253/30 dev gre6tunir009005
sudo ip link set gre6tunir009005 mtu 1300
sudo ip link set gre6tunir009005 up
