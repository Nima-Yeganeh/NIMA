sudo ip tunnel add 6to4tundg004001 mode sit remote 31.216.62.115 local 174.138.5.192
sudo ip -6 addr add fc00:1:4::254/64 dev 6to4tundg004001
sudo ip link set 6to4tundg004001 mtu 1400
sudo ip link set 6to4tundg004001 up
sudo ip -6 tunnel add gre6tundg004001 mode ip6gre remote fc00:1:4::253 local fc00:1:4::254
sudo ip addr add 10.1.4.254/30 dev gre6tundg004001
sudo ip link set gre6tundg004001 mtu 1300
sudo ip link set gre6tundg004001 up
sudo ip tunnel add 6to4tundg004002 mode sit remote 5.57.33.8 local 174.138.5.192
sudo ip -6 addr add fc00:2:4::254/64 dev 6to4tundg004002
sudo ip link set 6to4tundg004002 mtu 1400
sudo ip link set 6to4tundg004002 up
sudo ip -6 tunnel add gre6tundg004002 mode ip6gre remote fc00:2:4::253 local fc00:2:4::254
sudo ip addr add 10.2.4.254/30 dev gre6tundg004002
sudo ip link set gre6tundg004002 mtu 1300
sudo ip link set gre6tundg004002 up
sudo ip tunnel add 6to4tundg004003 mode sit remote 94.182.223.249 local 174.138.5.192
sudo ip -6 addr add fc00:3:4::254/64 dev 6to4tundg004003
sudo ip link set 6to4tundg004003 mtu 1400
sudo ip link set 6to4tundg004003 up
sudo ip -6 tunnel add gre6tundg004003 mode ip6gre remote fc00:3:4::253 local fc00:3:4::254
sudo ip addr add 10.3.4.254/30 dev gre6tundg004003
sudo ip link set gre6tundg004003 mtu 1300
sudo ip link set gre6tundg004003 up
sudo ip tunnel add 6to4tundg004004 mode sit remote 94.182.150.22 local 174.138.5.192
sudo ip -6 addr add fc00:4:4::254/64 dev 6to4tundg004004
sudo ip link set 6to4tundg004004 mtu 1400
sudo ip link set 6to4tundg004004 up
sudo ip -6 tunnel add gre6tundg004004 mode ip6gre remote fc00:4:4::253 local fc00:4:4::254
sudo ip addr add 10.4.4.254/30 dev gre6tundg004004
sudo ip link set gre6tundg004004 mtu 1300
sudo ip link set gre6tundg004004 up
sudo ip tunnel add 6to4tundg004005 mode sit remote 31.216.62.66 local 174.138.5.192
sudo ip -6 addr add fc00:5:4::254/64 dev 6to4tundg004005
sudo ip link set 6to4tundg004005 mtu 1400
sudo ip link set 6to4tundg004005 up
sudo ip -6 tunnel add gre6tundg004005 mode ip6gre remote fc00:5:4::253 local fc00:5:4::254
sudo ip addr add 10.5.4.254/30 dev gre6tundg004005
sudo ip link set gre6tundg004005 mtu 1300
sudo ip link set gre6tundg004005 up
sudo ip tunnel add 6to4tundg004006 mode sit remote 185.73.0.205 local 174.138.5.192
sudo ip -6 addr add fc00:6:4::254/64 dev 6to4tundg004006
sudo ip link set 6to4tundg004006 mtu 1400
sudo ip link set 6to4tundg004006 up
sudo ip -6 tunnel add gre6tundg004006 mode ip6gre remote fc00:6:4::253 local fc00:6:4::254
sudo ip addr add 10.6.4.254/30 dev gre6tundg004006
sudo ip link set gre6tundg004006 mtu 1300
sudo ip link set gre6tundg004006 up
sudo ip tunnel add 6to4tundg004007 mode sit remote 31.216.62.162 local 174.138.5.192
sudo ip -6 addr add fc00:7:4::254/64 dev 6to4tundg004007
sudo ip link set 6to4tundg004007 mtu 1400
sudo ip link set 6to4tundg004007 up
sudo ip -6 tunnel add gre6tundg004007 mode ip6gre remote fc00:7:4::253 local fc00:7:4::254
sudo ip addr add 10.7.4.254/30 dev gre6tundg004007
sudo ip link set gre6tundg004007 mtu 1300
sudo ip link set gre6tundg004007 up
sudo ip tunnel add 6to4tundg004008 mode sit remote 193.111.234.222 local 174.138.5.192
sudo ip -6 addr add fc00:8:4::254/64 dev 6to4tundg004008
sudo ip link set 6to4tundg004008 mtu 1400
sudo ip link set 6to4tundg004008 up
sudo ip -6 tunnel add gre6tundg004008 mode ip6gre remote fc00:8:4::253 local fc00:8:4::254
sudo ip addr add 10.8.4.254/30 dev gre6tundg004008
sudo ip link set gre6tundg004008 mtu 1300
sudo ip link set gre6tundg004008 up
sudo ip tunnel add 6to4tundg004009 mode sit remote 94.182.152.106 local 174.138.5.192
sudo ip -6 addr add fc00:9:4::254/64 dev 6to4tundg004009
sudo ip link set 6to4tundg004009 mtu 1400
sudo ip link set 6to4tundg004009 up
sudo ip -6 tunnel add gre6tundg004009 mode ip6gre remote fc00:9:4::253 local fc00:9:4::254
sudo ip addr add 10.9.4.254/30 dev gre6tundg004009
sudo ip link set gre6tundg004009 mtu 1300
sudo ip link set gre6tundg004009 up
sudo ip tunnel add 6to4tundg004010 mode sit remote 94.182.134.195 local 174.138.5.192
sudo ip -6 addr add fc00:10:4::254/64 dev 6to4tundg004010
sudo ip link set 6to4tundg004010 mtu 1400
sudo ip link set 6to4tundg004010 up
sudo ip -6 tunnel add gre6tundg004010 mode ip6gre remote fc00:10:4::253 local fc00:10:4::254
sudo ip addr add 10.10.4.254/30 dev gre6tundg004010
sudo ip link set gre6tundg004010 mtu 1300
sudo ip link set gre6tundg004010 up
sudo ip tunnel add 6to4tundg004011 mode sit remote 185.73.3.82 local 174.138.5.192
sudo ip -6 addr add fc00:11:4::254/64 dev 6to4tundg004011
sudo ip link set 6to4tundg004011 mtu 1400
sudo ip link set 6to4tundg004011 up
sudo ip -6 tunnel add gre6tundg004011 mode ip6gre remote fc00:11:4::253 local fc00:11:4::254
sudo ip addr add 10.11.4.254/30 dev gre6tundg004011
sudo ip link set gre6tundg004011 mtu 1300
sudo ip link set gre6tundg004011 up