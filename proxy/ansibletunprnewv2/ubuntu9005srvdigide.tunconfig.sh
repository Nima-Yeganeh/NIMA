sudo ip tunnel add 6to4tundg005001 mode sit remote 31.216.62.115 local 136.243.26.215
sudo ip -6 addr add fc00:1:5::254/64 dev 6to4tundg005001
sudo ip link set 6to4tundg005001 mtu 1400
sudo ip link set 6to4tundg005001 up
sudo ip -6 tunnel add gre6tundg005001 mode ip6gre remote fc00:1:5::253 local fc00:1:5::254
sudo ip addr add 10.1.5.254/30 dev gre6tundg005001
sudo ip link set gre6tundg005001 mtu 1300
sudo ip link set gre6tundg005001 up
sudo ip tunnel add 6to4tundg005002 mode sit remote 5.57.33.8 local 136.243.26.215
sudo ip -6 addr add fc00:2:5::254/64 dev 6to4tundg005002
sudo ip link set 6to4tundg005002 mtu 1400
sudo ip link set 6to4tundg005002 up
sudo ip -6 tunnel add gre6tundg005002 mode ip6gre remote fc00:2:5::253 local fc00:2:5::254
sudo ip addr add 10.2.5.254/30 dev gre6tundg005002
sudo ip link set gre6tundg005002 mtu 1300
sudo ip link set gre6tundg005002 up
sudo ip tunnel add 6to4tundg005003 mode sit remote 94.182.223.249 local 136.243.26.215
sudo ip -6 addr add fc00:3:5::254/64 dev 6to4tundg005003
sudo ip link set 6to4tundg005003 mtu 1400
sudo ip link set 6to4tundg005003 up
sudo ip -6 tunnel add gre6tundg005003 mode ip6gre remote fc00:3:5::253 local fc00:3:5::254
sudo ip addr add 10.3.5.254/30 dev gre6tundg005003
sudo ip link set gre6tundg005003 mtu 1300
sudo ip link set gre6tundg005003 up
sudo ip tunnel add 6to4tundg005004 mode sit remote 94.182.150.22 local 136.243.26.215
sudo ip -6 addr add fc00:4:5::254/64 dev 6to4tundg005004
sudo ip link set 6to4tundg005004 mtu 1400
sudo ip link set 6to4tundg005004 up
sudo ip -6 tunnel add gre6tundg005004 mode ip6gre remote fc00:4:5::253 local fc00:4:5::254
sudo ip addr add 10.4.5.254/30 dev gre6tundg005004
sudo ip link set gre6tundg005004 mtu 1300
sudo ip link set gre6tundg005004 up
sudo ip tunnel add 6to4tundg005005 mode sit remote 31.216.62.66 local 136.243.26.215
sudo ip -6 addr add fc00:5:5::254/64 dev 6to4tundg005005
sudo ip link set 6to4tundg005005 mtu 1400
sudo ip link set 6to4tundg005005 up
sudo ip -6 tunnel add gre6tundg005005 mode ip6gre remote fc00:5:5::253 local fc00:5:5::254
sudo ip addr add 10.5.5.254/30 dev gre6tundg005005
sudo ip link set gre6tundg005005 mtu 1300
sudo ip link set gre6tundg005005 up
sudo ip tunnel add 6to4tundg005006 mode sit remote 185.73.0.205 local 136.243.26.215
sudo ip -6 addr add fc00:6:5::254/64 dev 6to4tundg005006
sudo ip link set 6to4tundg005006 mtu 1400
sudo ip link set 6to4tundg005006 up
sudo ip -6 tunnel add gre6tundg005006 mode ip6gre remote fc00:6:5::253 local fc00:6:5::254
sudo ip addr add 10.6.5.254/30 dev gre6tundg005006
sudo ip link set gre6tundg005006 mtu 1300
sudo ip link set gre6tundg005006 up
sudo ip tunnel add 6to4tundg005007 mode sit remote 31.216.62.162 local 136.243.26.215
sudo ip -6 addr add fc00:7:5::254/64 dev 6to4tundg005007
sudo ip link set 6to4tundg005007 mtu 1400
sudo ip link set 6to4tundg005007 up
sudo ip -6 tunnel add gre6tundg005007 mode ip6gre remote fc00:7:5::253 local fc00:7:5::254
sudo ip addr add 10.7.5.254/30 dev gre6tundg005007
sudo ip link set gre6tundg005007 mtu 1300
sudo ip link set gre6tundg005007 up
