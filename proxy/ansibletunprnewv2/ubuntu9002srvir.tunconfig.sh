sudo ip tunnel add 6to4tunir90029001 mode sit remote 192.168.1.21 local 192.168.1.12
sudo ip -6 addr add fc00:2:1::1/64 dev 6to4tunir90029001
sudo ip link set 6to4tunir90029001 mtu 1400
sudo ip link set 6to4tunir90029001 up
sudo ip -6 tunnel add gre6tunir90029001 mode ip6gre remote fc00:2:1::2 local fc00:2:1::1
sudo ip addr add 10.2.1.1/30 dev gre6tunir90029001
sudo ip link set gre6tunir90029001 mtu 1300
sudo ip link set gre6tunir90029001 up
sudo ip tunnel add 6to4tunir90029002 mode sit remote 192.168.1.22 local 192.168.1.12
sudo ip -6 addr add fc00:2:2::1/64 dev 6to4tunir90029002
sudo ip link set 6to4tunir90029002 mtu 1400
sudo ip link set 6to4tunir90029002 up
sudo ip -6 tunnel add gre6tunir90029002 mode ip6gre remote fc00:2:2::2 local fc00:2:2::1
sudo ip addr add 10.2.2.1/30 dev gre6tunir90029002
sudo ip link set gre6tunir90029002 mtu 1300
sudo ip link set gre6tunir90029002 up
sudo ip tunnel add 6to4tunir90029003 mode sit remote 192.168.1.23 local 192.168.1.12
sudo ip -6 addr add fc00:2:3::1/64 dev 6to4tunir90029003
sudo ip link set 6to4tunir90029003 mtu 1400
sudo ip link set 6to4tunir90029003 up
sudo ip -6 tunnel add gre6tunir90029003 mode ip6gre remote fc00:2:3::2 local fc00:2:3::1
sudo ip addr add 10.2.3.1/30 dev gre6tunir90029003
sudo ip link set gre6tunir90029003 mtu 1300
sudo ip link set gre6tunir90029003 up
sudo ip tunnel add 6to4tunir90029004 mode sit remote 192.168.1.24 local 192.168.1.12
sudo ip -6 addr add fc00:2:4::1/64 dev 6to4tunir90029004
sudo ip link set 6to4tunir90029004 mtu 1400
sudo ip link set 6to4tunir90029004 up
sudo ip -6 tunnel add gre6tunir90029004 mode ip6gre remote fc00:2:4::2 local fc00:2:4::1
sudo ip addr add 10.2.4.1/30 dev gre6tunir90029004
sudo ip link set gre6tunir90029004 mtu 1300
sudo ip link set gre6tunir90029004 up
