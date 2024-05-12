sudo ip tunnel add 6to4tunir025001 mode sit remote 164.92.246.10 local 146.190.235.0
sudo ip -6 addr add fc00:25:1::253/64 dev 6to4tunir025001
sudo ip link set 6to4tunir025001 mtu 1400
sudo ip link set 6to4tunir025001 up
sudo ip -6 tunnel add gre6tunir025001 mode ip6gre remote fc00:25:1::254 local fc00:25:1::253
sudo ip addr add 10.25.1.253/30 dev gre6tunir025001
sudo ip link set gre6tunir025001 mtu 1300
sudo ip link set gre6tunir025001 up
sudo ip tunnel add 6to4tunir025002 mode sit remote 157.245.41.172 local 146.190.235.0
sudo ip -6 addr add fc00:25:2::253/64 dev 6to4tunir025002
sudo ip link set 6to4tunir025002 mtu 1400
sudo ip link set 6to4tunir025002 up
sudo ip -6 tunnel add gre6tunir025002 mode ip6gre remote fc00:25:2::254 local fc00:25:2::253
sudo ip addr add 10.25.2.253/30 dev gre6tunir025002
sudo ip link set gre6tunir025002 mtu 1300
sudo ip link set gre6tunir025002 up
sudo ip tunnel add 6to4tunir025003 mode sit remote 138.68.74.97 local 146.190.235.0
sudo ip -6 addr add fc00:25:3::253/64 dev 6to4tunir025003
sudo ip link set 6to4tunir025003 mtu 1400
sudo ip link set 6to4tunir025003 up
sudo ip -6 tunnel add gre6tunir025003 mode ip6gre remote fc00:25:3::254 local fc00:25:3::253
sudo ip addr add 10.25.3.253/30 dev gre6tunir025003
sudo ip link set gre6tunir025003 mtu 1300
sudo ip link set gre6tunir025003 up
sudo ip tunnel add 6to4tunir025004 mode sit remote 174.138.5.192 local 146.190.235.0
sudo ip -6 addr add fc00:25:4::253/64 dev 6to4tunir025004
sudo ip link set 6to4tunir025004 mtu 1400
sudo ip link set 6to4tunir025004 up
sudo ip -6 tunnel add gre6tunir025004 mode ip6gre remote fc00:25:4::254 local fc00:25:4::253
sudo ip addr add 10.25.4.253/30 dev gre6tunir025004
sudo ip link set gre6tunir025004 mtu 1300
sudo ip link set gre6tunir025004 up
sudo ip tunnel add 6to4tunir025005 mode sit remote 165.232.76.77 local 146.190.235.0
sudo ip -6 addr add fc00:25:5::253/64 dev 6to4tunir025005
sudo ip link set 6to4tunir025005 mtu 1400
sudo ip link set 6to4tunir025005 up
sudo ip -6 tunnel add gre6tunir025005 mode ip6gre remote fc00:25:5::254 local fc00:25:5::253
sudo ip addr add 10.25.5.253/30 dev gre6tunir025005
sudo ip link set gre6tunir025005 mtu 1300
sudo ip link set gre6tunir025005 up
