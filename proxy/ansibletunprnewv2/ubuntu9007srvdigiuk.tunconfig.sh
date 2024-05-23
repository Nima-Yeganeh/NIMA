sudo ip tunnel add 6to4tundg007001 mode sit remote 31.216.62.115 local 139.59.167.164
sudo ip -6 addr add fc00:1:7::254/64 dev 6to4tundg007001
sudo ip link set 6to4tundg007001 mtu 1400
sudo ip link set 6to4tundg007001 up
sudo ip -6 tunnel add gre6tundg007001 mode ip6gre remote fc00:1:7::253 local fc00:1:7::254
sudo ip addr add 10.1.7.254/30 dev gre6tundg007001
sudo ip link set gre6tundg007001 mtu 1300
sudo ip link set gre6tundg007001 up
sudo ip tunnel add 6to4tundg007002 mode sit remote 5.57.33.8 local 139.59.167.164
sudo ip -6 addr add fc00:2:7::254/64 dev 6to4tundg007002
sudo ip link set 6to4tundg007002 mtu 1400
sudo ip link set 6to4tundg007002 up
sudo ip -6 tunnel add gre6tundg007002 mode ip6gre remote fc00:2:7::253 local fc00:2:7::254
sudo ip addr add 10.2.7.254/30 dev gre6tundg007002
sudo ip link set gre6tundg007002 mtu 1300
sudo ip link set gre6tundg007002 up
sudo ip tunnel add 6to4tundg007003 mode sit remote 94.182.223.249 local 139.59.167.164
sudo ip -6 addr add fc00:3:7::254/64 dev 6to4tundg007003
sudo ip link set 6to4tundg007003 mtu 1400
sudo ip link set 6to4tundg007003 up
sudo ip -6 tunnel add gre6tundg007003 mode ip6gre remote fc00:3:7::253 local fc00:3:7::254
sudo ip addr add 10.3.7.254/30 dev gre6tundg007003
sudo ip link set gre6tundg007003 mtu 1300
sudo ip link set gre6tundg007003 up
sudo ip tunnel add 6to4tundg007004 mode sit remote 94.182.150.22 local 139.59.167.164
sudo ip -6 addr add fc00:4:7::254/64 dev 6to4tundg007004
sudo ip link set 6to4tundg007004 mtu 1400
sudo ip link set 6to4tundg007004 up
sudo ip -6 tunnel add gre6tundg007004 mode ip6gre remote fc00:4:7::253 local fc00:4:7::254
sudo ip addr add 10.4.7.254/30 dev gre6tundg007004
sudo ip link set gre6tundg007004 mtu 1300
sudo ip link set gre6tundg007004 up
sudo ip tunnel add 6to4tundg007005 mode sit remote 31.216.62.66 local 139.59.167.164
sudo ip -6 addr add fc00:5:7::254/64 dev 6to4tundg007005
sudo ip link set 6to4tundg007005 mtu 1400
sudo ip link set 6to4tundg007005 up
sudo ip -6 tunnel add gre6tundg007005 mode ip6gre remote fc00:5:7::253 local fc00:5:7::254
sudo ip addr add 10.5.7.254/30 dev gre6tundg007005
sudo ip link set gre6tundg007005 mtu 1300
sudo ip link set gre6tundg007005 up
sudo ip tunnel add 6to4tundg007006 mode sit remote 185.73.0.205 local 139.59.167.164
sudo ip -6 addr add fc00:6:7::254/64 dev 6to4tundg007006
sudo ip link set 6to4tundg007006 mtu 1400
sudo ip link set 6to4tundg007006 up
sudo ip -6 tunnel add gre6tundg007006 mode ip6gre remote fc00:6:7::253 local fc00:6:7::254
sudo ip addr add 10.6.7.254/30 dev gre6tundg007006
sudo ip link set gre6tundg007006 mtu 1300
sudo ip link set gre6tundg007006 up
sudo ip tunnel add 6to4tundg007007 mode sit remote 31.216.62.162 local 139.59.167.164
sudo ip -6 addr add fc00:7:7::254/64 dev 6to4tundg007007
sudo ip link set 6to4tundg007007 mtu 1400
sudo ip link set 6to4tundg007007 up
sudo ip -6 tunnel add gre6tundg007007 mode ip6gre remote fc00:7:7::253 local fc00:7:7::254
sudo ip addr add 10.7.7.254/30 dev gre6tundg007007
sudo ip link set gre6tundg007007 mtu 1300
sudo ip link set gre6tundg007007 up
sudo ip tunnel add 6to4tundg007008 mode sit remote 193.111.234.222 local 139.59.167.164
sudo ip -6 addr add fc00:8:7::254/64 dev 6to4tundg007008
sudo ip link set 6to4tundg007008 mtu 1400
sudo ip link set 6to4tundg007008 up
sudo ip -6 tunnel add gre6tundg007008 mode ip6gre remote fc00:8:7::253 local fc00:8:7::254
sudo ip addr add 10.8.7.254/30 dev gre6tundg007008
sudo ip link set gre6tundg007008 mtu 1300
sudo ip link set gre6tundg007008 up
sudo ip tunnel add 6to4tundg007009 mode sit remote 94.182.152.106 local 139.59.167.164
sudo ip -6 addr add fc00:9:7::254/64 dev 6to4tundg007009
sudo ip link set 6to4tundg007009 mtu 1400
sudo ip link set 6to4tundg007009 up
sudo ip -6 tunnel add gre6tundg007009 mode ip6gre remote fc00:9:7::253 local fc00:9:7::254
sudo ip addr add 10.9.7.254/30 dev gre6tundg007009
sudo ip link set gre6tundg007009 mtu 1300
sudo ip link set gre6tundg007009 up
sudo ip tunnel add 6to4tundg007010 mode sit remote 94.182.134.195 local 139.59.167.164
sudo ip -6 addr add fc00:10:7::254/64 dev 6to4tundg007010
sudo ip link set 6to4tundg007010 mtu 1400
sudo ip link set 6to4tundg007010 up
sudo ip -6 tunnel add gre6tundg007010 mode ip6gre remote fc00:10:7::253 local fc00:10:7::254
sudo ip addr add 10.10.7.254/30 dev gre6tundg007010
sudo ip link set gre6tundg007010 mtu 1300
sudo ip link set gre6tundg007010 up
sudo ip tunnel add 6to4tundg007011 mode sit remote 185.73.3.82 local 139.59.167.164
sudo ip -6 addr add fc00:11:7::254/64 dev 6to4tundg007011
sudo ip link set 6to4tundg007011 mtu 1400
sudo ip link set 6to4tundg007011 up
sudo ip -6 tunnel add gre6tundg007011 mode ip6gre remote fc00:11:7::253 local fc00:11:7::254
sudo ip addr add 10.11.7.254/30 dev gre6tundg007011
sudo ip link set gre6tundg007011 mtu 1300
sudo ip link set gre6tundg007011 up
sudo ip tunnel add 6to4tundg007012 mode sit remote 193.111.234.56 local 139.59.167.164
sudo ip -6 addr add fc00:12:7::254/64 dev 6to4tundg007012
sudo ip link set 6to4tundg007012 mtu 1400
sudo ip link set 6to4tundg007012 up
sudo ip -6 tunnel add gre6tundg007012 mode ip6gre remote fc00:12:7::253 local fc00:12:7::254
sudo ip addr add 10.12.7.254/30 dev gre6tundg007012
sudo ip link set gre6tundg007012 mtu 1300
sudo ip link set gre6tundg007012 up
sudo ip tunnel add 6to4tundg007013 mode sit remote 193.111.234.213 local 139.59.167.164
sudo ip -6 addr add fc00:13:7::254/64 dev 6to4tundg007013
sudo ip link set 6to4tundg007013 mtu 1400
sudo ip link set 6to4tundg007013 up
sudo ip -6 tunnel add gre6tundg007013 mode ip6gre remote fc00:13:7::253 local fc00:13:7::254
sudo ip addr add 10.13.7.254/30 dev gre6tundg007013
sudo ip link set gre6tundg007013 mtu 1300
sudo ip link set gre6tundg007013 up
sudo ip tunnel add 6to4tundg007014 mode sit remote 193.111.234.118 local 139.59.167.164
sudo ip -6 addr add fc00:14:7::254/64 dev 6to4tundg007014
sudo ip link set 6to4tundg007014 mtu 1400
sudo ip link set 6to4tundg007014 up
sudo ip -6 tunnel add gre6tundg007014 mode ip6gre remote fc00:14:7::253 local fc00:14:7::254
sudo ip addr add 10.14.7.254/30 dev gre6tundg007014
sudo ip link set gre6tundg007014 mtu 1300
sudo ip link set gre6tundg007014 up
sudo ip tunnel add 6to4tundg007015 mode sit remote 94.182.138.86 local 139.59.167.164
sudo ip -6 addr add fc00:15:7::254/64 dev 6to4tundg007015
sudo ip link set 6to4tundg007015 mtu 1400
sudo ip link set 6to4tundg007015 up
sudo ip -6 tunnel add gre6tundg007015 mode ip6gre remote fc00:15:7::253 local fc00:15:7::254
sudo ip addr add 10.15.7.254/30 dev gre6tundg007015
sudo ip link set gre6tundg007015 mtu 1300
sudo ip link set gre6tundg007015 up
sudo ip tunnel add 6to4tundg007016 mode sit remote 94.182.138.87 local 139.59.167.164
sudo ip -6 addr add fc00:16:7::254/64 dev 6to4tundg007016
sudo ip link set 6to4tundg007016 mtu 1400
sudo ip link set 6to4tundg007016 up
sudo ip -6 tunnel add gre6tundg007016 mode ip6gre remote fc00:16:7::253 local fc00:16:7::254
sudo ip addr add 10.16.7.254/30 dev gre6tundg007016
sudo ip link set gre6tundg007016 mtu 1300
sudo ip link set gre6tundg007016 up
sudo ip tunnel add 6to4tundg007017 mode sit remote 94.182.138.88 local 139.59.167.164
sudo ip -6 addr add fc00:17:7::254/64 dev 6to4tundg007017
sudo ip link set 6to4tundg007017 mtu 1400
sudo ip link set 6to4tundg007017 up
sudo ip -6 tunnel add gre6tundg007017 mode ip6gre remote fc00:17:7::253 local fc00:17:7::254
sudo ip addr add 10.17.7.254/30 dev gre6tundg007017
sudo ip link set gre6tundg007017 mtu 1300
sudo ip link set gre6tundg007017 up
sudo ip tunnel add 6to4tundg007018 mode sit remote 185.26.32.13 local 139.59.167.164
sudo ip -6 addr add fc00:18:7::254/64 dev 6to4tundg007018
sudo ip link set 6to4tundg007018 mtu 1400
sudo ip link set 6to4tundg007018 up
sudo ip -6 tunnel add gre6tundg007018 mode ip6gre remote fc00:18:7::253 local fc00:18:7::254
sudo ip addr add 10.18.7.254/30 dev gre6tundg007018
sudo ip link set gre6tundg007018 mtu 1300
sudo ip link set gre6tundg007018 up
sudo ip tunnel add 6to4tundg007019 mode sit remote 185.26.32.160 local 139.59.167.164
sudo ip -6 addr add fc00:19:7::254/64 dev 6to4tundg007019
sudo ip link set 6to4tundg007019 mtu 1400
sudo ip link set 6to4tundg007019 up
sudo ip -6 tunnel add gre6tundg007019 mode ip6gre remote fc00:19:7::253 local fc00:19:7::254
sudo ip addr add 10.19.7.254/30 dev gre6tundg007019
sudo ip link set gre6tundg007019 mtu 1300
sudo ip link set gre6tundg007019 up
sudo ip tunnel add 6to4tundg007020 mode sit remote 185.26.32.137 local 139.59.167.164
sudo ip -6 addr add fc00:20:7::254/64 dev 6to4tundg007020
sudo ip link set 6to4tundg007020 mtu 1400
sudo ip link set 6to4tundg007020 up
sudo ip -6 tunnel add gre6tundg007020 mode ip6gre remote fc00:20:7::253 local fc00:20:7::254
sudo ip addr add 10.20.7.254/30 dev gre6tundg007020
sudo ip link set gre6tundg007020 mtu 1300
sudo ip link set gre6tundg007020 up
sudo ip tunnel add 6to4tundg007021 mode sit remote 185.26.32.175 local 139.59.167.164
sudo ip -6 addr add fc00:21:7::254/64 dev 6to4tundg007021
sudo ip link set 6to4tundg007021 mtu 1400
sudo ip link set 6to4tundg007021 up
sudo ip -6 tunnel add gre6tundg007021 mode ip6gre remote fc00:21:7::253 local fc00:21:7::254
sudo ip addr add 10.21.7.254/30 dev gre6tundg007021
sudo ip link set gre6tundg007021 mtu 1300
sudo ip link set gre6tundg007021 up
sudo ip tunnel add 6to4tundg007022 mode sit remote 185.26.32.124 local 139.59.167.164
sudo ip -6 addr add fc00:22:7::254/64 dev 6to4tundg007022
sudo ip link set 6to4tundg007022 mtu 1400
sudo ip link set 6to4tundg007022 up
sudo ip -6 tunnel add gre6tundg007022 mode ip6gre remote fc00:22:7::253 local fc00:22:7::254
sudo ip addr add 10.22.7.254/30 dev gre6tundg007022
sudo ip link set gre6tundg007022 mtu 1300
sudo ip link set gre6tundg007022 up
sudo ip tunnel add 6to4tundg007030 mode sit remote 193.111.234.211 local 139.59.167.164
sudo ip -6 addr add fc00:30:7::254/64 dev 6to4tundg007030
sudo ip link set 6to4tundg007030 mtu 1400
sudo ip link set 6to4tundg007030 up
sudo ip -6 tunnel add gre6tundg007030 mode ip6gre remote fc00:30:7::253 local fc00:30:7::254
sudo ip addr add 10.30.7.254/30 dev gre6tundg007030
sudo ip link set gre6tundg007030 mtu 1300
sudo ip link set gre6tundg007030 up
sudo ip tunnel add 6to4tundg007031 mode sit remote 193.134.100.62 local 139.59.167.164
sudo ip -6 addr add fc00:31:7::254/64 dev 6to4tundg007031
sudo ip link set 6to4tundg007031 mtu 1400
sudo ip link set 6to4tundg007031 up
sudo ip -6 tunnel add gre6tundg007031 mode ip6gre remote fc00:31:7::253 local fc00:31:7::254
sudo ip addr add 10.31.7.254/30 dev gre6tundg007031
sudo ip link set gre6tundg007031 mtu 1300
sudo ip link set gre6tundg007031 up
sudo ip tunnel add 6to4tundg007032 mode sit remote 185.26.32.226 local 139.59.167.164
sudo ip -6 addr add fc00:32:7::254/64 dev 6to4tundg007032
sudo ip link set 6to4tundg007032 mtu 1400
sudo ip link set 6to4tundg007032 up
sudo ip -6 tunnel add gre6tundg007032 mode ip6gre remote fc00:32:7::253 local fc00:32:7::254
sudo ip addr add 10.32.7.254/30 dev gre6tundg007032
sudo ip link set gre6tundg007032 mtu 1300
sudo ip link set gre6tundg007032 up
sudo ip tunnel add 6to4tundg007033 mode sit remote 185.26.32.231 local 139.59.167.164
sudo ip -6 addr add fc00:33:7::254/64 dev 6to4tundg007033
sudo ip link set 6to4tundg007033 mtu 1400
sudo ip link set 6to4tundg007033 up
sudo ip -6 tunnel add gre6tundg007033 mode ip6gre remote fc00:33:7::253 local fc00:33:7::254
sudo ip addr add 10.33.7.254/30 dev gre6tundg007033
sudo ip link set gre6tundg007033 mtu 1300
sudo ip link set gre6tundg007033 up
sudo ip tunnel add 6to4tundg007034 mode sit remote 185.26.32.238 local 139.59.167.164
sudo ip -6 addr add fc00:34:7::254/64 dev 6to4tundg007034
sudo ip link set 6to4tundg007034 mtu 1400
sudo ip link set 6to4tundg007034 up
sudo ip -6 tunnel add gre6tundg007034 mode ip6gre remote fc00:34:7::253 local fc00:34:7::254
sudo ip addr add 10.34.7.254/30 dev gre6tundg007034
sudo ip link set gre6tundg007034 mtu 1300
sudo ip link set gre6tundg007034 up
sudo ip tunnel add 6to4tundg007035 mode sit remote 185.26.32.252 local 139.59.167.164
sudo ip -6 addr add fc00:35:7::254/64 dev 6to4tundg007035
sudo ip link set 6to4tundg007035 mtu 1400
sudo ip link set 6to4tundg007035 up
sudo ip -6 tunnel add gre6tundg007035 mode ip6gre remote fc00:35:7::253 local fc00:35:7::254
sudo ip addr add 10.35.7.254/30 dev gre6tundg007035
sudo ip link set gre6tundg007035 mtu 1300
sudo ip link set gre6tundg007035 up
