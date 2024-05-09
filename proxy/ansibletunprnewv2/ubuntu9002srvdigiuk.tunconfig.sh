sudo ip tunnel add 6to4tundg002001 mode sit remote 31.216.62.115 local 157.245.41.172
sudo ip -6 addr add fc00:1:2::254/64 dev 6to4tundg002001
sudo ip link set 6to4tundg002001 mtu 1400
sudo ip link set 6to4tundg002001 up
sudo ip -6 tunnel add gre6tundg002001 mode ip6gre remote fc00:1:2::253 local fc00:1:2::254
sudo ip addr add 10.1.2.254/30 dev gre6tundg002001
sudo ip link set gre6tundg002001 mtu 1300
sudo ip link set gre6tundg002001 up
sudo ip tunnel add 6to4tundg002002 mode sit remote 5.57.33.8 local 157.245.41.172
sudo ip -6 addr add fc00:2:2::254/64 dev 6to4tundg002002
sudo ip link set 6to4tundg002002 mtu 1400
sudo ip link set 6to4tundg002002 up
sudo ip -6 tunnel add gre6tundg002002 mode ip6gre remote fc00:2:2::253 local fc00:2:2::254
sudo ip addr add 10.2.2.254/30 dev gre6tundg002002
sudo ip link set gre6tundg002002 mtu 1300
sudo ip link set gre6tundg002002 up
sudo ip tunnel add 6to4tundg002003 mode sit remote 94.182.223.249 local 157.245.41.172
sudo ip -6 addr add fc00:3:2::254/64 dev 6to4tundg002003
sudo ip link set 6to4tundg002003 mtu 1400
sudo ip link set 6to4tundg002003 up
sudo ip -6 tunnel add gre6tundg002003 mode ip6gre remote fc00:3:2::253 local fc00:3:2::254
sudo ip addr add 10.3.2.254/30 dev gre6tundg002003
sudo ip link set gre6tundg002003 mtu 1300
sudo ip link set gre6tundg002003 up
sudo ip tunnel add 6to4tundg002004 mode sit remote 94.182.150.22 local 157.245.41.172
sudo ip -6 addr add fc00:4:2::254/64 dev 6to4tundg002004
sudo ip link set 6to4tundg002004 mtu 1400
sudo ip link set 6to4tundg002004 up
sudo ip -6 tunnel add gre6tundg002004 mode ip6gre remote fc00:4:2::253 local fc00:4:2::254
sudo ip addr add 10.4.2.254/30 dev gre6tundg002004
sudo ip link set gre6tundg002004 mtu 1300
sudo ip link set gre6tundg002004 up
sudo ip tunnel add 6to4tundg002005 mode sit remote 31.216.62.66 local 157.245.41.172
sudo ip -6 addr add fc00:5:2::254/64 dev 6to4tundg002005
sudo ip link set 6to4tundg002005 mtu 1400
sudo ip link set 6to4tundg002005 up
sudo ip -6 tunnel add gre6tundg002005 mode ip6gre remote fc00:5:2::253 local fc00:5:2::254
sudo ip addr add 10.5.2.254/30 dev gre6tundg002005
sudo ip link set gre6tundg002005 mtu 1300
sudo ip link set gre6tundg002005 up
sudo ip tunnel add 6to4tundg002006 mode sit remote 185.73.0.205 local 157.245.41.172
sudo ip -6 addr add fc00:6:2::254/64 dev 6to4tundg002006
sudo ip link set 6to4tundg002006 mtu 1400
sudo ip link set 6to4tundg002006 up
sudo ip -6 tunnel add gre6tundg002006 mode ip6gre remote fc00:6:2::253 local fc00:6:2::254
sudo ip addr add 10.6.2.254/30 dev gre6tundg002006
sudo ip link set gre6tundg002006 mtu 1300
sudo ip link set gre6tundg002006 up
sudo ip tunnel add 6to4tundg002007 mode sit remote 31.216.62.162 local 157.245.41.172
sudo ip -6 addr add fc00:7:2::254/64 dev 6to4tundg002007
sudo ip link set 6to4tundg002007 mtu 1400
sudo ip link set 6to4tundg002007 up
sudo ip -6 tunnel add gre6tundg002007 mode ip6gre remote fc00:7:2::253 local fc00:7:2::254
sudo ip addr add 10.7.2.254/30 dev gre6tundg002007
sudo ip link set gre6tundg002007 mtu 1300
sudo ip link set gre6tundg002007 up
sudo ip tunnel add 6to4tundg002008 mode sit remote 193.111.234.222 local 157.245.41.172
sudo ip -6 addr add fc00:8:2::254/64 dev 6to4tundg002008
sudo ip link set 6to4tundg002008 mtu 1400
sudo ip link set 6to4tundg002008 up
sudo ip -6 tunnel add gre6tundg002008 mode ip6gre remote fc00:8:2::253 local fc00:8:2::254
sudo ip addr add 10.8.2.254/30 dev gre6tundg002008
sudo ip link set gre6tundg002008 mtu 1300
sudo ip link set gre6tundg002008 up
sudo ip tunnel add 6to4tundg002009 mode sit remote 94.182.152.106 local 157.245.41.172
sudo ip -6 addr add fc00:9:2::254/64 dev 6to4tundg002009
sudo ip link set 6to4tundg002009 mtu 1400
sudo ip link set 6to4tundg002009 up
sudo ip -6 tunnel add gre6tundg002009 mode ip6gre remote fc00:9:2::253 local fc00:9:2::254
sudo ip addr add 10.9.2.254/30 dev gre6tundg002009
sudo ip link set gre6tundg002009 mtu 1300
sudo ip link set gre6tundg002009 up
sudo ip tunnel add 6to4tundg002010 mode sit remote 94.182.134.195 local 157.245.41.172
sudo ip -6 addr add fc00:10:2::254/64 dev 6to4tundg002010
sudo ip link set 6to4tundg002010 mtu 1400
sudo ip link set 6to4tundg002010 up
sudo ip -6 tunnel add gre6tundg002010 mode ip6gre remote fc00:10:2::253 local fc00:10:2::254
sudo ip addr add 10.10.2.254/30 dev gre6tundg002010
sudo ip link set gre6tundg002010 mtu 1300
sudo ip link set gre6tundg002010 up
sudo ip tunnel add 6to4tundg002011 mode sit remote 185.73.3.82 local 157.245.41.172
sudo ip -6 addr add fc00:11:2::254/64 dev 6to4tundg002011
sudo ip link set 6to4tundg002011 mtu 1400
sudo ip link set 6to4tundg002011 up
sudo ip -6 tunnel add gre6tundg002011 mode ip6gre remote fc00:11:2::253 local fc00:11:2::254
sudo ip addr add 10.11.2.254/30 dev gre6tundg002011
sudo ip link set gre6tundg002011 mtu 1300
sudo ip link set gre6tundg002011 up
