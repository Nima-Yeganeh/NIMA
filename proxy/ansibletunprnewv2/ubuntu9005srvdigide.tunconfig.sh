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
sudo ip tunnel add 6to4tundg005008 mode sit remote 193.111.234.222 local 136.243.26.215
sudo ip -6 addr add fc00:8:5::254/64 dev 6to4tundg005008
sudo ip link set 6to4tundg005008 mtu 1400
sudo ip link set 6to4tundg005008 up
sudo ip -6 tunnel add gre6tundg005008 mode ip6gre remote fc00:8:5::253 local fc00:8:5::254
sudo ip addr add 10.8.5.254/30 dev gre6tundg005008
sudo ip link set gre6tundg005008 mtu 1300
sudo ip link set gre6tundg005008 up
sudo ip tunnel add 6to4tundg005009 mode sit remote 94.182.152.106 local 136.243.26.215
sudo ip -6 addr add fc00:9:5::254/64 dev 6to4tundg005009
sudo ip link set 6to4tundg005009 mtu 1400
sudo ip link set 6to4tundg005009 up
sudo ip -6 tunnel add gre6tundg005009 mode ip6gre remote fc00:9:5::253 local fc00:9:5::254
sudo ip addr add 10.9.5.254/30 dev gre6tundg005009
sudo ip link set gre6tundg005009 mtu 1300
sudo ip link set gre6tundg005009 up
sudo ip tunnel add 6to4tundg005010 mode sit remote 94.182.134.195 local 136.243.26.215
sudo ip -6 addr add fc00:10:5::254/64 dev 6to4tundg005010
sudo ip link set 6to4tundg005010 mtu 1400
sudo ip link set 6to4tundg005010 up
sudo ip -6 tunnel add gre6tundg005010 mode ip6gre remote fc00:10:5::253 local fc00:10:5::254
sudo ip addr add 10.10.5.254/30 dev gre6tundg005010
sudo ip link set gre6tundg005010 mtu 1300
sudo ip link set gre6tundg005010 up
sudo ip tunnel add 6to4tundg005011 mode sit remote 185.73.3.82 local 136.243.26.215
sudo ip -6 addr add fc00:11:5::254/64 dev 6to4tundg005011
sudo ip link set 6to4tundg005011 mtu 1400
sudo ip link set 6to4tundg005011 up
sudo ip -6 tunnel add gre6tundg005011 mode ip6gre remote fc00:11:5::253 local fc00:11:5::254
sudo ip addr add 10.11.5.254/30 dev gre6tundg005011
sudo ip link set gre6tundg005011 mtu 1300
sudo ip link set gre6tundg005011 up
sudo ip tunnel add 6to4tundg005012 mode sit remote 193.111.234.56 local 136.243.26.215
sudo ip -6 addr add fc00:12:5::254/64 dev 6to4tundg005012
sudo ip link set 6to4tundg005012 mtu 1400
sudo ip link set 6to4tundg005012 up
sudo ip -6 tunnel add gre6tundg005012 mode ip6gre remote fc00:12:5::253 local fc00:12:5::254
sudo ip addr add 10.12.5.254/30 dev gre6tundg005012
sudo ip link set gre6tundg005012 mtu 1300
sudo ip link set gre6tundg005012 up
sudo ip tunnel add 6to4tundg005013 mode sit remote 193.111.234.213 local 136.243.26.215
sudo ip -6 addr add fc00:13:5::254/64 dev 6to4tundg005013
sudo ip link set 6to4tundg005013 mtu 1400
sudo ip link set 6to4tundg005013 up
sudo ip -6 tunnel add gre6tundg005013 mode ip6gre remote fc00:13:5::253 local fc00:13:5::254
sudo ip addr add 10.13.5.254/30 dev gre6tundg005013
sudo ip link set gre6tundg005013 mtu 1300
sudo ip link set gre6tundg005013 up
sudo ip tunnel add 6to4tundg005014 mode sit remote 193.111.234.118 local 136.243.26.215
sudo ip -6 addr add fc00:14:5::254/64 dev 6to4tundg005014
sudo ip link set 6to4tundg005014 mtu 1400
sudo ip link set 6to4tundg005014 up
sudo ip -6 tunnel add gre6tundg005014 mode ip6gre remote fc00:14:5::253 local fc00:14:5::254
sudo ip addr add 10.14.5.254/30 dev gre6tundg005014
sudo ip link set gre6tundg005014 mtu 1300
sudo ip link set gre6tundg005014 up
sudo ip tunnel add 6to4tundg005015 mode sit remote 94.182.138.86 local 136.243.26.215
sudo ip -6 addr add fc00:15:5::254/64 dev 6to4tundg005015
sudo ip link set 6to4tundg005015 mtu 1400
sudo ip link set 6to4tundg005015 up
sudo ip -6 tunnel add gre6tundg005015 mode ip6gre remote fc00:15:5::253 local fc00:15:5::254
sudo ip addr add 10.15.5.254/30 dev gre6tundg005015
sudo ip link set gre6tundg005015 mtu 1300
sudo ip link set gre6tundg005015 up
sudo ip tunnel add 6to4tundg005016 mode sit remote 94.182.138.87 local 136.243.26.215
sudo ip -6 addr add fc00:16:5::254/64 dev 6to4tundg005016
sudo ip link set 6to4tundg005016 mtu 1400
sudo ip link set 6to4tundg005016 up
sudo ip -6 tunnel add gre6tundg005016 mode ip6gre remote fc00:16:5::253 local fc00:16:5::254
sudo ip addr add 10.16.5.254/30 dev gre6tundg005016
sudo ip link set gre6tundg005016 mtu 1300
sudo ip link set gre6tundg005016 up
sudo ip tunnel add 6to4tundg005017 mode sit remote 94.182.138.88 local 136.243.26.215
sudo ip -6 addr add fc00:17:5::254/64 dev 6to4tundg005017
sudo ip link set 6to4tundg005017 mtu 1400
sudo ip link set 6to4tundg005017 up
sudo ip -6 tunnel add gre6tundg005017 mode ip6gre remote fc00:17:5::253 local fc00:17:5::254
sudo ip addr add 10.17.5.254/30 dev gre6tundg005017
sudo ip link set gre6tundg005017 mtu 1300
sudo ip link set gre6tundg005017 up
sudo ip tunnel add 6to4tundg005018 mode sit remote 85.133.194.228 local 136.243.26.215
sudo ip -6 addr add fc00:18:5::254/64 dev 6to4tundg005018
sudo ip link set 6to4tundg005018 mtu 1400
sudo ip link set 6to4tundg005018 up
sudo ip -6 tunnel add gre6tundg005018 mode ip6gre remote fc00:18:5::253 local fc00:18:5::254
sudo ip addr add 10.18.5.254/30 dev gre6tundg005018
sudo ip link set gre6tundg005018 mtu 1300
sudo ip link set gre6tundg005018 up
sudo ip tunnel add 6to4tundg005019 mode sit remote 185.26.32.160 local 136.243.26.215
sudo ip -6 addr add fc00:19:5::254/64 dev 6to4tundg005019
sudo ip link set 6to4tundg005019 mtu 1400
sudo ip link set 6to4tundg005019 up
sudo ip -6 tunnel add gre6tundg005019 mode ip6gre remote fc00:19:5::253 local fc00:19:5::254
sudo ip addr add 10.19.5.254/30 dev gre6tundg005019
sudo ip link set gre6tundg005019 mtu 1300
sudo ip link set gre6tundg005019 up
sudo ip tunnel add 6to4tundg005020 mode sit remote 185.26.32.137 local 136.243.26.215
sudo ip -6 addr add fc00:20:5::254/64 dev 6to4tundg005020
sudo ip link set 6to4tundg005020 mtu 1400
sudo ip link set 6to4tundg005020 up
sudo ip -6 tunnel add gre6tundg005020 mode ip6gre remote fc00:20:5::253 local fc00:20:5::254
sudo ip addr add 10.20.5.254/30 dev gre6tundg005020
sudo ip link set gre6tundg005020 mtu 1300
sudo ip link set gre6tundg005020 up
sudo ip tunnel add 6to4tundg005021 mode sit remote 185.26.32.175 local 136.243.26.215
sudo ip -6 addr add fc00:21:5::254/64 dev 6to4tundg005021
sudo ip link set 6to4tundg005021 mtu 1400
sudo ip link set 6to4tundg005021 up
sudo ip -6 tunnel add gre6tundg005021 mode ip6gre remote fc00:21:5::253 local fc00:21:5::254
sudo ip addr add 10.21.5.254/30 dev gre6tundg005021
sudo ip link set gre6tundg005021 mtu 1300
sudo ip link set gre6tundg005021 up
sudo ip tunnel add 6to4tundg005022 mode sit remote 185.26.32.124 local 136.243.26.215
sudo ip -6 addr add fc00:22:5::254/64 dev 6to4tundg005022
sudo ip link set 6to4tundg005022 mtu 1400
sudo ip link set 6to4tundg005022 up
sudo ip -6 tunnel add gre6tundg005022 mode ip6gre remote fc00:22:5::253 local fc00:22:5::254
sudo ip addr add 10.22.5.254/30 dev gre6tundg005022
sudo ip link set gre6tundg005022 mtu 1300
sudo ip link set gre6tundg005022 up
sudo ip tunnel add 6to4tundg005030 mode sit remote 193.111.234.211 local 136.243.26.215
sudo ip -6 addr add fc00:30:5::254/64 dev 6to4tundg005030
sudo ip link set 6to4tundg005030 mtu 1400
sudo ip link set 6to4tundg005030 up
sudo ip -6 tunnel add gre6tundg005030 mode ip6gre remote fc00:30:5::253 local fc00:30:5::254
sudo ip addr add 10.30.5.254/30 dev gre6tundg005030
sudo ip link set gre6tundg005030 mtu 1300
sudo ip link set gre6tundg005030 up
sudo ip tunnel add 6to4tundg005031 mode sit remote 193.134.100.62 local 136.243.26.215
sudo ip -6 addr add fc00:31:5::254/64 dev 6to4tundg005031
sudo ip link set 6to4tundg005031 mtu 1400
sudo ip link set 6to4tundg005031 up
sudo ip -6 tunnel add gre6tundg005031 mode ip6gre remote fc00:31:5::253 local fc00:31:5::254
sudo ip addr add 10.31.5.254/30 dev gre6tundg005031
sudo ip link set gre6tundg005031 mtu 1300
sudo ip link set gre6tundg005031 up
sudo ip tunnel add 6to4tundg005032 mode sit remote 185.26.32.226 local 136.243.26.215
sudo ip -6 addr add fc00:32:5::254/64 dev 6to4tundg005032
sudo ip link set 6to4tundg005032 mtu 1400
sudo ip link set 6to4tundg005032 up
sudo ip -6 tunnel add gre6tundg005032 mode ip6gre remote fc00:32:5::253 local fc00:32:5::254
sudo ip addr add 10.32.5.254/30 dev gre6tundg005032
sudo ip link set gre6tundg005032 mtu 1300
sudo ip link set gre6tundg005032 up
sudo ip tunnel add 6to4tundg005033 mode sit remote 185.26.32.231 local 136.243.26.215
sudo ip -6 addr add fc00:33:5::254/64 dev 6to4tundg005033
sudo ip link set 6to4tundg005033 mtu 1400
sudo ip link set 6to4tundg005033 up
sudo ip -6 tunnel add gre6tundg005033 mode ip6gre remote fc00:33:5::253 local fc00:33:5::254
sudo ip addr add 10.33.5.254/30 dev gre6tundg005033
sudo ip link set gre6tundg005033 mtu 1300
sudo ip link set gre6tundg005033 up
sudo ip tunnel add 6to4tundg005034 mode sit remote 185.26.32.238 local 136.243.26.215
sudo ip -6 addr add fc00:34:5::254/64 dev 6to4tundg005034
sudo ip link set 6to4tundg005034 mtu 1400
sudo ip link set 6to4tundg005034 up
sudo ip -6 tunnel add gre6tundg005034 mode ip6gre remote fc00:34:5::253 local fc00:34:5::254
sudo ip addr add 10.34.5.254/30 dev gre6tundg005034
sudo ip link set gre6tundg005034 mtu 1300
sudo ip link set gre6tundg005034 up
sudo ip tunnel add 6to4tundg005035 mode sit remote 185.26.32.252 local 136.243.26.215
sudo ip -6 addr add fc00:35:5::254/64 dev 6to4tundg005035
sudo ip link set 6to4tundg005035 mtu 1400
sudo ip link set 6to4tundg005035 up
sudo ip -6 tunnel add gre6tundg005035 mode ip6gre remote fc00:35:5::253 local fc00:35:5::254
sudo ip addr add 10.35.5.254/30 dev gre6tundg005035
sudo ip link set gre6tundg005035 mtu 1300
sudo ip link set gre6tundg005035 up
