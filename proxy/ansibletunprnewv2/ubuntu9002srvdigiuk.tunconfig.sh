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
sudo ip tunnel add 6to4tundg002012 mode sit remote 193.111.234.56 local 157.245.41.172
sudo ip -6 addr add fc00:12:2::254/64 dev 6to4tundg002012
sudo ip link set 6to4tundg002012 mtu 1400
sudo ip link set 6to4tundg002012 up
sudo ip -6 tunnel add gre6tundg002012 mode ip6gre remote fc00:12:2::253 local fc00:12:2::254
sudo ip addr add 10.12.2.254/30 dev gre6tundg002012
sudo ip link set gre6tundg002012 mtu 1300
sudo ip link set gre6tundg002012 up
sudo ip tunnel add 6to4tundg002013 mode sit remote 193.111.234.213 local 157.245.41.172
sudo ip -6 addr add fc00:13:2::254/64 dev 6to4tundg002013
sudo ip link set 6to4tundg002013 mtu 1400
sudo ip link set 6to4tundg002013 up
sudo ip -6 tunnel add gre6tundg002013 mode ip6gre remote fc00:13:2::253 local fc00:13:2::254
sudo ip addr add 10.13.2.254/30 dev gre6tundg002013
sudo ip link set gre6tundg002013 mtu 1300
sudo ip link set gre6tundg002013 up
sudo ip tunnel add 6to4tundg002014 mode sit remote 193.111.234.118 local 157.245.41.172
sudo ip -6 addr add fc00:14:2::254/64 dev 6to4tundg002014
sudo ip link set 6to4tundg002014 mtu 1400
sudo ip link set 6to4tundg002014 up
sudo ip -6 tunnel add gre6tundg002014 mode ip6gre remote fc00:14:2::253 local fc00:14:2::254
sudo ip addr add 10.14.2.254/30 dev gre6tundg002014
sudo ip link set gre6tundg002014 mtu 1300
sudo ip link set gre6tundg002014 up
sudo ip tunnel add 6to4tundg002015 mode sit remote 94.182.138.86 local 157.245.41.172
sudo ip -6 addr add fc00:15:2::254/64 dev 6to4tundg002015
sudo ip link set 6to4tundg002015 mtu 1400
sudo ip link set 6to4tundg002015 up
sudo ip -6 tunnel add gre6tundg002015 mode ip6gre remote fc00:15:2::253 local fc00:15:2::254
sudo ip addr add 10.15.2.254/30 dev gre6tundg002015
sudo ip link set gre6tundg002015 mtu 1300
sudo ip link set gre6tundg002015 up
sudo ip tunnel add 6to4tundg002016 mode sit remote 94.182.138.87 local 157.245.41.172
sudo ip -6 addr add fc00:16:2::254/64 dev 6to4tundg002016
sudo ip link set 6to4tundg002016 mtu 1400
sudo ip link set 6to4tundg002016 up
sudo ip -6 tunnel add gre6tundg002016 mode ip6gre remote fc00:16:2::253 local fc00:16:2::254
sudo ip addr add 10.16.2.254/30 dev gre6tundg002016
sudo ip link set gre6tundg002016 mtu 1300
sudo ip link set gre6tundg002016 up
sudo ip tunnel add 6to4tundg002017 mode sit remote 94.182.138.88 local 157.245.41.172
sudo ip -6 addr add fc00:17:2::254/64 dev 6to4tundg002017
sudo ip link set 6to4tundg002017 mtu 1400
sudo ip link set 6to4tundg002017 up
sudo ip -6 tunnel add gre6tundg002017 mode ip6gre remote fc00:17:2::253 local fc00:17:2::254
sudo ip addr add 10.17.2.254/30 dev gre6tundg002017
sudo ip link set gre6tundg002017 mtu 1300
sudo ip link set gre6tundg002017 up
sudo ip tunnel add 6to4tundg002018 mode sit remote 85.133.194.228 local 157.245.41.172
sudo ip -6 addr add fc00:18:2::254/64 dev 6to4tundg002018
sudo ip link set 6to4tundg002018 mtu 1400
sudo ip link set 6to4tundg002018 up
sudo ip -6 tunnel add gre6tundg002018 mode ip6gre remote fc00:18:2::253 local fc00:18:2::254
sudo ip addr add 10.18.2.254/30 dev gre6tundg002018
sudo ip link set gre6tundg002018 mtu 1300
sudo ip link set gre6tundg002018 up
sudo ip tunnel add 6to4tundg002019 mode sit remote 185.26.32.160 local 157.245.41.172
sudo ip -6 addr add fc00:19:2::254/64 dev 6to4tundg002019
sudo ip link set 6to4tundg002019 mtu 1400
sudo ip link set 6to4tundg002019 up
sudo ip -6 tunnel add gre6tundg002019 mode ip6gre remote fc00:19:2::253 local fc00:19:2::254
sudo ip addr add 10.19.2.254/30 dev gre6tundg002019
sudo ip link set gre6tundg002019 mtu 1300
sudo ip link set gre6tundg002019 up
sudo ip tunnel add 6to4tundg002020 mode sit remote 185.26.32.137 local 157.245.41.172
sudo ip -6 addr add fc00:20:2::254/64 dev 6to4tundg002020
sudo ip link set 6to4tundg002020 mtu 1400
sudo ip link set 6to4tundg002020 up
sudo ip -6 tunnel add gre6tundg002020 mode ip6gre remote fc00:20:2::253 local fc00:20:2::254
sudo ip addr add 10.20.2.254/30 dev gre6tundg002020
sudo ip link set gre6tundg002020 mtu 1300
sudo ip link set gre6tundg002020 up
sudo ip tunnel add 6to4tundg002021 mode sit remote 185.26.32.175 local 157.245.41.172
sudo ip -6 addr add fc00:21:2::254/64 dev 6to4tundg002021
sudo ip link set 6to4tundg002021 mtu 1400
sudo ip link set 6to4tundg002021 up
sudo ip -6 tunnel add gre6tundg002021 mode ip6gre remote fc00:21:2::253 local fc00:21:2::254
sudo ip addr add 10.21.2.254/30 dev gre6tundg002021
sudo ip link set gre6tundg002021 mtu 1300
sudo ip link set gre6tundg002021 up
sudo ip tunnel add 6to4tundg002022 mode sit remote 185.26.32.124 local 157.245.41.172
sudo ip -6 addr add fc00:22:2::254/64 dev 6to4tundg002022
sudo ip link set 6to4tundg002022 mtu 1400
sudo ip link set 6to4tundg002022 up
sudo ip -6 tunnel add gre6tundg002022 mode ip6gre remote fc00:22:2::253 local fc00:22:2::254
sudo ip addr add 10.22.2.254/30 dev gre6tundg002022
sudo ip link set gre6tundg002022 mtu 1300
sudo ip link set gre6tundg002022 up
sudo ip tunnel add 6to4tundg002030 mode sit remote 193.111.234.211 local 157.245.41.172
sudo ip -6 addr add fc00:30:2::254/64 dev 6to4tundg002030
sudo ip link set 6to4tundg002030 mtu 1400
sudo ip link set 6to4tundg002030 up
sudo ip -6 tunnel add gre6tundg002030 mode ip6gre remote fc00:30:2::253 local fc00:30:2::254
sudo ip addr add 10.30.2.254/30 dev gre6tundg002030
sudo ip link set gre6tundg002030 mtu 1300
sudo ip link set gre6tundg002030 up
sudo ip tunnel add 6to4tundg002031 mode sit remote 193.134.100.62 local 157.245.41.172
sudo ip -6 addr add fc00:31:2::254/64 dev 6to4tundg002031
sudo ip link set 6to4tundg002031 mtu 1400
sudo ip link set 6to4tundg002031 up
sudo ip -6 tunnel add gre6tundg002031 mode ip6gre remote fc00:31:2::253 local fc00:31:2::254
sudo ip addr add 10.31.2.254/30 dev gre6tundg002031
sudo ip link set gre6tundg002031 mtu 1300
sudo ip link set gre6tundg002031 up
