sudo ip tunnel add 6to4tundg003001 mode sit remote 31.216.62.115 local 136.243.26.216
sudo ip -6 addr add fc00:1:3::254/64 dev 6to4tundg003001
sudo ip link set 6to4tundg003001 mtu 1400
sudo ip link set 6to4tundg003001 up
sudo ip -6 tunnel add gre6tundg003001 mode ip6gre remote fc00:1:3::253 local fc00:1:3::254
sudo ip addr add 10.1.3.254/30 dev gre6tundg003001
sudo ip link set gre6tundg003001 mtu 1300
sudo ip link set gre6tundg003001 up
sudo ip tunnel add 6to4tundg003002 mode sit remote 5.57.33.8 local 136.243.26.216
sudo ip -6 addr add fc00:2:3::254/64 dev 6to4tundg003002
sudo ip link set 6to4tundg003002 mtu 1400
sudo ip link set 6to4tundg003002 up
sudo ip -6 tunnel add gre6tundg003002 mode ip6gre remote fc00:2:3::253 local fc00:2:3::254
sudo ip addr add 10.2.3.254/30 dev gre6tundg003002
sudo ip link set gre6tundg003002 mtu 1300
sudo ip link set gre6tundg003002 up
sudo ip tunnel add 6to4tundg003003 mode sit remote 94.182.223.249 local 136.243.26.216
sudo ip -6 addr add fc00:3:3::254/64 dev 6to4tundg003003
sudo ip link set 6to4tundg003003 mtu 1400
sudo ip link set 6to4tundg003003 up
sudo ip -6 tunnel add gre6tundg003003 mode ip6gre remote fc00:3:3::253 local fc00:3:3::254
sudo ip addr add 10.3.3.254/30 dev gre6tundg003003
sudo ip link set gre6tundg003003 mtu 1300
sudo ip link set gre6tundg003003 up
sudo ip tunnel add 6to4tundg003004 mode sit remote 94.182.150.22 local 136.243.26.216
sudo ip -6 addr add fc00:4:3::254/64 dev 6to4tundg003004
sudo ip link set 6to4tundg003004 mtu 1400
sudo ip link set 6to4tundg003004 up
sudo ip -6 tunnel add gre6tundg003004 mode ip6gre remote fc00:4:3::253 local fc00:4:3::254
sudo ip addr add 10.4.3.254/30 dev gre6tundg003004
sudo ip link set gre6tundg003004 mtu 1300
sudo ip link set gre6tundg003004 up
sudo ip tunnel add 6to4tundg003005 mode sit remote 31.216.62.66 local 136.243.26.216
sudo ip -6 addr add fc00:5:3::254/64 dev 6to4tundg003005
sudo ip link set 6to4tundg003005 mtu 1400
sudo ip link set 6to4tundg003005 up
sudo ip -6 tunnel add gre6tundg003005 mode ip6gre remote fc00:5:3::253 local fc00:5:3::254
sudo ip addr add 10.5.3.254/30 dev gre6tundg003005
sudo ip link set gre6tundg003005 mtu 1300
sudo ip link set gre6tundg003005 up
sudo ip tunnel add 6to4tundg003006 mode sit remote 185.73.0.205 local 136.243.26.216
sudo ip -6 addr add fc00:6:3::254/64 dev 6to4tundg003006
sudo ip link set 6to4tundg003006 mtu 1400
sudo ip link set 6to4tundg003006 up
sudo ip -6 tunnel add gre6tundg003006 mode ip6gre remote fc00:6:3::253 local fc00:6:3::254
sudo ip addr add 10.6.3.254/30 dev gre6tundg003006
sudo ip link set gre6tundg003006 mtu 1300
sudo ip link set gre6tundg003006 up
sudo ip tunnel add 6to4tundg003007 mode sit remote 31.216.62.162 local 136.243.26.216
sudo ip -6 addr add fc00:7:3::254/64 dev 6to4tundg003007
sudo ip link set 6to4tundg003007 mtu 1400
sudo ip link set 6to4tundg003007 up
sudo ip -6 tunnel add gre6tundg003007 mode ip6gre remote fc00:7:3::253 local fc00:7:3::254
sudo ip addr add 10.7.3.254/30 dev gre6tundg003007
sudo ip link set gre6tundg003007 mtu 1300
sudo ip link set gre6tundg003007 up
