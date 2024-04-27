sudo ip tunnel add 6to4tunir90019001 mode sit remote 192.168.1.21 local 192.168.1.11
sudo ip -6 addr add fc00:1:1::1/64 dev 6to4tunir90019001
sudo ip link set 6to4tunir90019001 mtu 1400
sudo ip link set 6to4tunir90019001 up
sudo ip -6 tunnel add gre6tunir90019001 mode ip6gre remote fc00:1:1::2 local fc00:1:1::1
sudo ip addr add 10.1.1.1/30 dev gre6tunir90019001
sudo ip link set gre6tunir90019001 mtu 1300
sudo ip link set gre6tunir90019001 up
sudo ip tunnel add 6to4tunir90019002 mode sit remote 192.168.1.22 local 192.168.1.11
sudo ip -6 addr add fc00:1:2::1/64 dev 6to4tunir90019002
sudo ip link set 6to4tunir90019002 mtu 1400
sudo ip link set 6to4tunir90019002 up
sudo ip -6 tunnel add gre6tunir90019002 mode ip6gre remote fc00:1:2::2 local fc00:1:2::1
sudo ip addr add 10.1.2.1/30 dev gre6tunir90019002
sudo ip link set gre6tunir90019002 mtu 1300
sudo ip link set gre6tunir90019002 up
sudo ip tunnel add 6to4tunir90019003 mode sit remote 192.168.1.23 local 192.168.1.11
sudo ip -6 addr add fc00:1:3::1/64 dev 6to4tunir90019003
sudo ip link set 6to4tunir90019003 mtu 1400
sudo ip link set 6to4tunir90019003 up
sudo ip -6 tunnel add gre6tunir90019003 mode ip6gre remote fc00:1:3::2 local fc00:1:3::1
sudo ip addr add 10.1.3.1/30 dev gre6tunir90019003
sudo ip link set gre6tunir90019003 mtu 1300
sudo ip link set gre6tunir90019003 up
sudo ip tunnel add 6to4tunir90019004 mode sit remote 192.168.1.24 local 192.168.1.11
sudo ip -6 addr add fc00:1:4::1/64 dev 6to4tunir90019004
sudo ip link set 6to4tunir90019004 mtu 1400
sudo ip link set 6to4tunir90019004 up
sudo ip -6 tunnel add gre6tunir90019004 mode ip6gre remote fc00:1:4::2 local fc00:1:4::1
sudo ip addr add 10.1.4.1/30 dev gre6tunir90019004
sudo ip link set gre6tunir90019004 mtu 1300
sudo ip link set gre6tunir90019004 up
