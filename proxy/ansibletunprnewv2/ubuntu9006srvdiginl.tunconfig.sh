sudo ip tunnel add 6to4tundg006001 mode sit remote 31.216.62.115 local 152.42.137.215
sudo ip -6 addr add fc00:1:6::254/64 dev 6to4tundg006001
sudo ip link set 6to4tundg006001 mtu 1400
sudo ip link set 6to4tundg006001 up
sudo ip -6 tunnel add gre6tundg006001 mode ip6gre remote fc00:1:6::253 local fc00:1:6::254
sudo ip addr add 10.1.6.254/30 dev gre6tundg006001
sudo ip link set gre6tundg006001 mtu 1300
sudo ip link set gre6tundg006001 up
sudo ip tunnel add 6to4tundg006002 mode sit remote 5.57.33.8 local 152.42.137.215
sudo ip -6 addr add fc00:2:6::254/64 dev 6to4tundg006002
sudo ip link set 6to4tundg006002 mtu 1400
sudo ip link set 6to4tundg006002 up
sudo ip -6 tunnel add gre6tundg006002 mode ip6gre remote fc00:2:6::253 local fc00:2:6::254
sudo ip addr add 10.2.6.254/30 dev gre6tundg006002
sudo ip link set gre6tundg006002 mtu 1300
sudo ip link set gre6tundg006002 up
sudo ip tunnel add 6to4tundg006003 mode sit remote 94.182.223.249 local 152.42.137.215
sudo ip -6 addr add fc00:3:6::254/64 dev 6to4tundg006003
sudo ip link set 6to4tundg006003 mtu 1400
sudo ip link set 6to4tundg006003 up
sudo ip -6 tunnel add gre6tundg006003 mode ip6gre remote fc00:3:6::253 local fc00:3:6::254
sudo ip addr add 10.3.6.254/30 dev gre6tundg006003
sudo ip link set gre6tundg006003 mtu 1300
sudo ip link set gre6tundg006003 up
sudo ip tunnel add 6to4tundg006004 mode sit remote 94.182.150.22 local 152.42.137.215
sudo ip -6 addr add fc00:4:6::254/64 dev 6to4tundg006004
sudo ip link set 6to4tundg006004 mtu 1400
sudo ip link set 6to4tundg006004 up
sudo ip -6 tunnel add gre6tundg006004 mode ip6gre remote fc00:4:6::253 local fc00:4:6::254
sudo ip addr add 10.4.6.254/30 dev gre6tundg006004
sudo ip link set gre6tundg006004 mtu 1300
sudo ip link set gre6tundg006004 up
sudo ip tunnel add 6to4tundg006005 mode sit remote 31.216.62.66 local 152.42.137.215
sudo ip -6 addr add fc00:5:6::254/64 dev 6to4tundg006005
sudo ip link set 6to4tundg006005 mtu 1400
sudo ip link set 6to4tundg006005 up
sudo ip -6 tunnel add gre6tundg006005 mode ip6gre remote fc00:5:6::253 local fc00:5:6::254
sudo ip addr add 10.5.6.254/30 dev gre6tundg006005
sudo ip link set gre6tundg006005 mtu 1300
sudo ip link set gre6tundg006005 up
sudo ip tunnel add 6to4tundg006006 mode sit remote 185.73.0.205 local 152.42.137.215
sudo ip -6 addr add fc00:6:6::254/64 dev 6to4tundg006006
sudo ip link set 6to4tundg006006 mtu 1400
sudo ip link set 6to4tundg006006 up
sudo ip -6 tunnel add gre6tundg006006 mode ip6gre remote fc00:6:6::253 local fc00:6:6::254
sudo ip addr add 10.6.6.254/30 dev gre6tundg006006
sudo ip link set gre6tundg006006 mtu 1300
sudo ip link set gre6tundg006006 up
sudo ip tunnel add 6to4tundg006007 mode sit remote 31.216.62.162 local 152.42.137.215
sudo ip -6 addr add fc00:7:6::254/64 dev 6to4tundg006007
sudo ip link set 6to4tundg006007 mtu 1400
sudo ip link set 6to4tundg006007 up
sudo ip -6 tunnel add gre6tundg006007 mode ip6gre remote fc00:7:6::253 local fc00:7:6::254
sudo ip addr add 10.7.6.254/30 dev gre6tundg006007
sudo ip link set gre6tundg006007 mtu 1300
sudo ip link set gre6tundg006007 up
sudo ip tunnel add 6to4tundg006008 mode sit remote 193.111.234.222 local 152.42.137.215
sudo ip -6 addr add fc00:8:6::254/64 dev 6to4tundg006008
sudo ip link set 6to4tundg006008 mtu 1400
sudo ip link set 6to4tundg006008 up
sudo ip -6 tunnel add gre6tundg006008 mode ip6gre remote fc00:8:6::253 local fc00:8:6::254
sudo ip addr add 10.8.6.254/30 dev gre6tundg006008
sudo ip link set gre6tundg006008 mtu 1300
sudo ip link set gre6tundg006008 up
sudo ip tunnel add 6to4tundg006009 mode sit remote 94.182.152.106 local 152.42.137.215
sudo ip -6 addr add fc00:9:6::254/64 dev 6to4tundg006009
sudo ip link set 6to4tundg006009 mtu 1400
sudo ip link set 6to4tundg006009 up
sudo ip -6 tunnel add gre6tundg006009 mode ip6gre remote fc00:9:6::253 local fc00:9:6::254
sudo ip addr add 10.9.6.254/30 dev gre6tundg006009
sudo ip link set gre6tundg006009 mtu 1300
sudo ip link set gre6tundg006009 up
sudo ip tunnel add 6to4tundg006010 mode sit remote 94.182.134.195 local 152.42.137.215
sudo ip -6 addr add fc00:10:6::254/64 dev 6to4tundg006010
sudo ip link set 6to4tundg006010 mtu 1400
sudo ip link set 6to4tundg006010 up
sudo ip -6 tunnel add gre6tundg006010 mode ip6gre remote fc00:10:6::253 local fc00:10:6::254
sudo ip addr add 10.10.6.254/30 dev gre6tundg006010
sudo ip link set gre6tundg006010 mtu 1300
sudo ip link set gre6tundg006010 up
sudo ip tunnel add 6to4tundg006011 mode sit remote 185.73.3.82 local 152.42.137.215
sudo ip -6 addr add fc00:11:6::254/64 dev 6to4tundg006011
sudo ip link set 6to4tundg006011 mtu 1400
sudo ip link set 6to4tundg006011 up
sudo ip -6 tunnel add gre6tundg006011 mode ip6gre remote fc00:11:6::253 local fc00:11:6::254
sudo ip addr add 10.11.6.254/30 dev gre6tundg006011
sudo ip link set gre6tundg006011 mtu 1300
sudo ip link set gre6tundg006011 up
sudo ip tunnel add 6to4tundg006012 mode sit remote 193.111.234.56 local 152.42.137.215
sudo ip -6 addr add fc00:12:6::254/64 dev 6to4tundg006012
sudo ip link set 6to4tundg006012 mtu 1400
sudo ip link set 6to4tundg006012 up
sudo ip -6 tunnel add gre6tundg006012 mode ip6gre remote fc00:12:6::253 local fc00:12:6::254
sudo ip addr add 10.12.6.254/30 dev gre6tundg006012
sudo ip link set gre6tundg006012 mtu 1300
sudo ip link set gre6tundg006012 up
sudo ip tunnel add 6to4tundg006013 mode sit remote 193.111.234.213 local 152.42.137.215
sudo ip -6 addr add fc00:13:6::254/64 dev 6to4tundg006013
sudo ip link set 6to4tundg006013 mtu 1400
sudo ip link set 6to4tundg006013 up
sudo ip -6 tunnel add gre6tundg006013 mode ip6gre remote fc00:13:6::253 local fc00:13:6::254
sudo ip addr add 10.13.6.254/30 dev gre6tundg006013
sudo ip link set gre6tundg006013 mtu 1300
sudo ip link set gre6tundg006013 up
sudo ip tunnel add 6to4tundg006014 mode sit remote 193.111.234.118 local 152.42.137.215
sudo ip -6 addr add fc00:14:6::254/64 dev 6to4tundg006014
sudo ip link set 6to4tundg006014 mtu 1400
sudo ip link set 6to4tundg006014 up
sudo ip -6 tunnel add gre6tundg006014 mode ip6gre remote fc00:14:6::253 local fc00:14:6::254
sudo ip addr add 10.14.6.254/30 dev gre6tundg006014
sudo ip link set gre6tundg006014 mtu 1300
sudo ip link set gre6tundg006014 up
sudo ip tunnel add 6to4tundg006015 mode sit remote 94.182.138.86 local 152.42.137.215
sudo ip -6 addr add fc00:15:6::254/64 dev 6to4tundg006015
sudo ip link set 6to4tundg006015 mtu 1400
sudo ip link set 6to4tundg006015 up
sudo ip -6 tunnel add gre6tundg006015 mode ip6gre remote fc00:15:6::253 local fc00:15:6::254
sudo ip addr add 10.15.6.254/30 dev gre6tundg006015
sudo ip link set gre6tundg006015 mtu 1300
sudo ip link set gre6tundg006015 up
sudo ip tunnel add 6to4tundg006016 mode sit remote 94.182.138.87 local 152.42.137.215
sudo ip -6 addr add fc00:16:6::254/64 dev 6to4tundg006016
sudo ip link set 6to4tundg006016 mtu 1400
sudo ip link set 6to4tundg006016 up
sudo ip -6 tunnel add gre6tundg006016 mode ip6gre remote fc00:16:6::253 local fc00:16:6::254
sudo ip addr add 10.16.6.254/30 dev gre6tundg006016
sudo ip link set gre6tundg006016 mtu 1300
sudo ip link set gre6tundg006016 up
sudo ip tunnel add 6to4tundg006017 mode sit remote 94.182.138.88 local 152.42.137.215
sudo ip -6 addr add fc00:17:6::254/64 dev 6to4tundg006017
sudo ip link set 6to4tundg006017 mtu 1400
sudo ip link set 6to4tundg006017 up
sudo ip -6 tunnel add gre6tundg006017 mode ip6gre remote fc00:17:6::253 local fc00:17:6::254
sudo ip addr add 10.17.6.254/30 dev gre6tundg006017
sudo ip link set gre6tundg006017 mtu 1300
sudo ip link set gre6tundg006017 up
sudo ip tunnel add 6to4tundg006018 mode sit remote 185.26.32.13 local 152.42.137.215
sudo ip -6 addr add fc00:18:6::254/64 dev 6to4tundg006018
sudo ip link set 6to4tundg006018 mtu 1400
sudo ip link set 6to4tundg006018 up
sudo ip -6 tunnel add gre6tundg006018 mode ip6gre remote fc00:18:6::253 local fc00:18:6::254
sudo ip addr add 10.18.6.254/30 dev gre6tundg006018
sudo ip link set gre6tundg006018 mtu 1300
sudo ip link set gre6tundg006018 up
sudo ip tunnel add 6to4tundg006019 mode sit remote 185.26.32.160 local 152.42.137.215
sudo ip -6 addr add fc00:19:6::254/64 dev 6to4tundg006019
sudo ip link set 6to4tundg006019 mtu 1400
sudo ip link set 6to4tundg006019 up
sudo ip -6 tunnel add gre6tundg006019 mode ip6gre remote fc00:19:6::253 local fc00:19:6::254
sudo ip addr add 10.19.6.254/30 dev gre6tundg006019
sudo ip link set gre6tundg006019 mtu 1300
sudo ip link set gre6tundg006019 up
sudo ip tunnel add 6to4tundg006020 mode sit remote 185.26.32.137 local 152.42.137.215
sudo ip -6 addr add fc00:20:6::254/64 dev 6to4tundg006020
sudo ip link set 6to4tundg006020 mtu 1400
sudo ip link set 6to4tundg006020 up
sudo ip -6 tunnel add gre6tundg006020 mode ip6gre remote fc00:20:6::253 local fc00:20:6::254
sudo ip addr add 10.20.6.254/30 dev gre6tundg006020
sudo ip link set gre6tundg006020 mtu 1300
sudo ip link set gre6tundg006020 up
sudo ip tunnel add 6to4tundg006021 mode sit remote 185.26.32.175 local 152.42.137.215
sudo ip -6 addr add fc00:21:6::254/64 dev 6to4tundg006021
sudo ip link set 6to4tundg006021 mtu 1400
sudo ip link set 6to4tundg006021 up
sudo ip -6 tunnel add gre6tundg006021 mode ip6gre remote fc00:21:6::253 local fc00:21:6::254
sudo ip addr add 10.21.6.254/30 dev gre6tundg006021
sudo ip link set gre6tundg006021 mtu 1300
sudo ip link set gre6tundg006021 up
sudo ip tunnel add 6to4tundg006022 mode sit remote 185.26.32.124 local 152.42.137.215
sudo ip -6 addr add fc00:22:6::254/64 dev 6to4tundg006022
sudo ip link set 6to4tundg006022 mtu 1400
sudo ip link set 6to4tundg006022 up
sudo ip -6 tunnel add gre6tundg006022 mode ip6gre remote fc00:22:6::253 local fc00:22:6::254
sudo ip addr add 10.22.6.254/30 dev gre6tundg006022
sudo ip link set gre6tundg006022 mtu 1300
sudo ip link set gre6tundg006022 up
sudo ip tunnel add 6to4tundg006030 mode sit remote 193.111.234.211 local 152.42.137.215
sudo ip -6 addr add fc00:30:6::254/64 dev 6to4tundg006030
sudo ip link set 6to4tundg006030 mtu 1400
sudo ip link set 6to4tundg006030 up
sudo ip -6 tunnel add gre6tundg006030 mode ip6gre remote fc00:30:6::253 local fc00:30:6::254
sudo ip addr add 10.30.6.254/30 dev gre6tundg006030
sudo ip link set gre6tundg006030 mtu 1300
sudo ip link set gre6tundg006030 up
sudo ip tunnel add 6to4tundg006031 mode sit remote 193.134.100.62 local 152.42.137.215
sudo ip -6 addr add fc00:31:6::254/64 dev 6to4tundg006031
sudo ip link set 6to4tundg006031 mtu 1400
sudo ip link set 6to4tundg006031 up
sudo ip -6 tunnel add gre6tundg006031 mode ip6gre remote fc00:31:6::253 local fc00:31:6::254
sudo ip addr add 10.31.6.254/30 dev gre6tundg006031
sudo ip link set gre6tundg006031 mtu 1300
sudo ip link set gre6tundg006031 up
sudo ip tunnel add 6to4tundg006032 mode sit remote 185.26.32.226 local 152.42.137.215
sudo ip -6 addr add fc00:32:6::254/64 dev 6to4tundg006032
sudo ip link set 6to4tundg006032 mtu 1400
sudo ip link set 6to4tundg006032 up
sudo ip -6 tunnel add gre6tundg006032 mode ip6gre remote fc00:32:6::253 local fc00:32:6::254
sudo ip addr add 10.32.6.254/30 dev gre6tundg006032
sudo ip link set gre6tundg006032 mtu 1300
sudo ip link set gre6tundg006032 up
sudo ip tunnel add 6to4tundg006033 mode sit remote 185.26.32.231 local 152.42.137.215
sudo ip -6 addr add fc00:33:6::254/64 dev 6to4tundg006033
sudo ip link set 6to4tundg006033 mtu 1400
sudo ip link set 6to4tundg006033 up
sudo ip -6 tunnel add gre6tundg006033 mode ip6gre remote fc00:33:6::253 local fc00:33:6::254
sudo ip addr add 10.33.6.254/30 dev gre6tundg006033
sudo ip link set gre6tundg006033 mtu 1300
sudo ip link set gre6tundg006033 up
sudo ip tunnel add 6to4tundg006034 mode sit remote 185.26.32.238 local 152.42.137.215
sudo ip -6 addr add fc00:34:6::254/64 dev 6to4tundg006034
sudo ip link set 6to4tundg006034 mtu 1400
sudo ip link set 6to4tundg006034 up
sudo ip -6 tunnel add gre6tundg006034 mode ip6gre remote fc00:34:6::253 local fc00:34:6::254
sudo ip addr add 10.34.6.254/30 dev gre6tundg006034
sudo ip link set gre6tundg006034 mtu 1300
sudo ip link set gre6tundg006034 up
sudo ip tunnel add 6to4tundg006035 mode sit remote 185.26.32.252 local 152.42.137.215
sudo ip -6 addr add fc00:35:6::254/64 dev 6to4tundg006035
sudo ip link set 6to4tundg006035 mtu 1400
sudo ip link set 6to4tundg006035 up
sudo ip -6 tunnel add gre6tundg006035 mode ip6gre remote fc00:35:6::253 local fc00:35:6::254
sudo ip addr add 10.35.6.254/30 dev gre6tundg006035
sudo ip link set gre6tundg006035 mtu 1300
sudo ip link set gre6tundg006035 up
