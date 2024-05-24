sudo ip tunnel add 6to4tundg009001 mode sit remote 31.216.62.115 local 142.93.238.98
sudo ip -6 addr add fc00:1:9::254/64 dev 6to4tundg009001
sudo ip link set 6to4tundg009001 mtu 1400
sudo ip link set 6to4tundg009001 up
sudo ip -6 tunnel add gre6tundg009001 mode ip6gre remote fc00:1:9::253 local fc00:1:9::254
sudo ip addr add 10.1.9.254/30 dev gre6tundg009001
sudo ip link set gre6tundg009001 mtu 1300
sudo ip link set gre6tundg009001 up
sudo ip tunnel add 6to4tundg009002 mode sit remote 5.57.33.8 local 142.93.238.98
sudo ip -6 addr add fc00:2:9::254/64 dev 6to4tundg009002
sudo ip link set 6to4tundg009002 mtu 1400
sudo ip link set 6to4tundg009002 up
sudo ip -6 tunnel add gre6tundg009002 mode ip6gre remote fc00:2:9::253 local fc00:2:9::254
sudo ip addr add 10.2.9.254/30 dev gre6tundg009002
sudo ip link set gre6tundg009002 mtu 1300
sudo ip link set gre6tundg009002 up
sudo ip tunnel add 6to4tundg009003 mode sit remote 94.182.223.249 local 142.93.238.98
sudo ip -6 addr add fc00:3:9::254/64 dev 6to4tundg009003
sudo ip link set 6to4tundg009003 mtu 1400
sudo ip link set 6to4tundg009003 up
sudo ip -6 tunnel add gre6tundg009003 mode ip6gre remote fc00:3:9::253 local fc00:3:9::254
sudo ip addr add 10.3.9.254/30 dev gre6tundg009003
sudo ip link set gre6tundg009003 mtu 1300
sudo ip link set gre6tundg009003 up
sudo ip tunnel add 6to4tundg009004 mode sit remote 94.182.150.22 local 142.93.238.98
sudo ip -6 addr add fc00:4:9::254/64 dev 6to4tundg009004
sudo ip link set 6to4tundg009004 mtu 1400
sudo ip link set 6to4tundg009004 up
sudo ip -6 tunnel add gre6tundg009004 mode ip6gre remote fc00:4:9::253 local fc00:4:9::254
sudo ip addr add 10.4.9.254/30 dev gre6tundg009004
sudo ip link set gre6tundg009004 mtu 1300
sudo ip link set gre6tundg009004 up
sudo ip tunnel add 6to4tundg009005 mode sit remote 31.216.62.66 local 142.93.238.98
sudo ip -6 addr add fc00:5:9::254/64 dev 6to4tundg009005
sudo ip link set 6to4tundg009005 mtu 1400
sudo ip link set 6to4tundg009005 up
sudo ip -6 tunnel add gre6tundg009005 mode ip6gre remote fc00:5:9::253 local fc00:5:9::254
sudo ip addr add 10.5.9.254/30 dev gre6tundg009005
sudo ip link set gre6tundg009005 mtu 1300
sudo ip link set gre6tundg009005 up
sudo ip tunnel add 6to4tundg009006 mode sit remote 185.73.0.205 local 142.93.238.98
sudo ip -6 addr add fc00:6:9::254/64 dev 6to4tundg009006
sudo ip link set 6to4tundg009006 mtu 1400
sudo ip link set 6to4tundg009006 up
sudo ip -6 tunnel add gre6tundg009006 mode ip6gre remote fc00:6:9::253 local fc00:6:9::254
sudo ip addr add 10.6.9.254/30 dev gre6tundg009006
sudo ip link set gre6tundg009006 mtu 1300
sudo ip link set gre6tundg009006 up
sudo ip tunnel add 6to4tundg009007 mode sit remote 31.216.62.162 local 142.93.238.98
sudo ip -6 addr add fc00:7:9::254/64 dev 6to4tundg009007
sudo ip link set 6to4tundg009007 mtu 1400
sudo ip link set 6to4tundg009007 up
sudo ip -6 tunnel add gre6tundg009007 mode ip6gre remote fc00:7:9::253 local fc00:7:9::254
sudo ip addr add 10.7.9.254/30 dev gre6tundg009007
sudo ip link set gre6tundg009007 mtu 1300
sudo ip link set gre6tundg009007 up
sudo ip tunnel add 6to4tundg009008 mode sit remote 193.111.234.222 local 142.93.238.98
sudo ip -6 addr add fc00:8:9::254/64 dev 6to4tundg009008
sudo ip link set 6to4tundg009008 mtu 1400
sudo ip link set 6to4tundg009008 up
sudo ip -6 tunnel add gre6tundg009008 mode ip6gre remote fc00:8:9::253 local fc00:8:9::254
sudo ip addr add 10.8.9.254/30 dev gre6tundg009008
sudo ip link set gre6tundg009008 mtu 1300
sudo ip link set gre6tundg009008 up
sudo ip tunnel add 6to4tundg009009 mode sit remote 94.182.152.106 local 142.93.238.98
sudo ip -6 addr add fc00:9:9::254/64 dev 6to4tundg009009
sudo ip link set 6to4tundg009009 mtu 1400
sudo ip link set 6to4tundg009009 up
sudo ip -6 tunnel add gre6tundg009009 mode ip6gre remote fc00:9:9::253 local fc00:9:9::254
sudo ip addr add 10.9.9.254/30 dev gre6tundg009009
sudo ip link set gre6tundg009009 mtu 1300
sudo ip link set gre6tundg009009 up
sudo ip tunnel add 6to4tundg009010 mode sit remote 94.182.134.195 local 142.93.238.98
sudo ip -6 addr add fc00:10:9::254/64 dev 6to4tundg009010
sudo ip link set 6to4tundg009010 mtu 1400
sudo ip link set 6to4tundg009010 up
sudo ip -6 tunnel add gre6tundg009010 mode ip6gre remote fc00:10:9::253 local fc00:10:9::254
sudo ip addr add 10.10.9.254/30 dev gre6tundg009010
sudo ip link set gre6tundg009010 mtu 1300
sudo ip link set gre6tundg009010 up
sudo ip tunnel add 6to4tundg009011 mode sit remote 185.73.3.82 local 142.93.238.98
sudo ip -6 addr add fc00:11:9::254/64 dev 6to4tundg009011
sudo ip link set 6to4tundg009011 mtu 1400
sudo ip link set 6to4tundg009011 up
sudo ip -6 tunnel add gre6tundg009011 mode ip6gre remote fc00:11:9::253 local fc00:11:9::254
sudo ip addr add 10.11.9.254/30 dev gre6tundg009011
sudo ip link set gre6tundg009011 mtu 1300
sudo ip link set gre6tundg009011 up
sudo ip tunnel add 6to4tundg009012 mode sit remote 193.111.234.56 local 142.93.238.98
sudo ip -6 addr add fc00:12:9::254/64 dev 6to4tundg009012
sudo ip link set 6to4tundg009012 mtu 1400
sudo ip link set 6to4tundg009012 up
sudo ip -6 tunnel add gre6tundg009012 mode ip6gre remote fc00:12:9::253 local fc00:12:9::254
sudo ip addr add 10.12.9.254/30 dev gre6tundg009012
sudo ip link set gre6tundg009012 mtu 1300
sudo ip link set gre6tundg009012 up
sudo ip tunnel add 6to4tundg009013 mode sit remote 193.111.234.213 local 142.93.238.98
sudo ip -6 addr add fc00:13:9::254/64 dev 6to4tundg009013
sudo ip link set 6to4tundg009013 mtu 1400
sudo ip link set 6to4tundg009013 up
sudo ip -6 tunnel add gre6tundg009013 mode ip6gre remote fc00:13:9::253 local fc00:13:9::254
sudo ip addr add 10.13.9.254/30 dev gre6tundg009013
sudo ip link set gre6tundg009013 mtu 1300
sudo ip link set gre6tundg009013 up
sudo ip tunnel add 6to4tundg009014 mode sit remote 193.111.234.118 local 142.93.238.98
sudo ip -6 addr add fc00:14:9::254/64 dev 6to4tundg009014
sudo ip link set 6to4tundg009014 mtu 1400
sudo ip link set 6to4tundg009014 up
sudo ip -6 tunnel add gre6tundg009014 mode ip6gre remote fc00:14:9::253 local fc00:14:9::254
sudo ip addr add 10.14.9.254/30 dev gre6tundg009014
sudo ip link set gre6tundg009014 mtu 1300
sudo ip link set gre6tundg009014 up
sudo ip tunnel add 6to4tundg009015 mode sit remote 94.182.138.86 local 142.93.238.98
sudo ip -6 addr add fc00:15:9::254/64 dev 6to4tundg009015
sudo ip link set 6to4tundg009015 mtu 1400
sudo ip link set 6to4tundg009015 up
sudo ip -6 tunnel add gre6tundg009015 mode ip6gre remote fc00:15:9::253 local fc00:15:9::254
sudo ip addr add 10.15.9.254/30 dev gre6tundg009015
sudo ip link set gre6tundg009015 mtu 1300
sudo ip link set gre6tundg009015 up
sudo ip tunnel add 6to4tundg009016 mode sit remote 94.182.138.87 local 142.93.238.98
sudo ip -6 addr add fc00:16:9::254/64 dev 6to4tundg009016
sudo ip link set 6to4tundg009016 mtu 1400
sudo ip link set 6to4tundg009016 up
sudo ip -6 tunnel add gre6tundg009016 mode ip6gre remote fc00:16:9::253 local fc00:16:9::254
sudo ip addr add 10.16.9.254/30 dev gre6tundg009016
sudo ip link set gre6tundg009016 mtu 1300
sudo ip link set gre6tundg009016 up
sudo ip tunnel add 6to4tundg009017 mode sit remote 94.182.138.88 local 142.93.238.98
sudo ip -6 addr add fc00:17:9::254/64 dev 6to4tundg009017
sudo ip link set 6to4tundg009017 mtu 1400
sudo ip link set 6to4tundg009017 up
sudo ip -6 tunnel add gre6tundg009017 mode ip6gre remote fc00:17:9::253 local fc00:17:9::254
sudo ip addr add 10.17.9.254/30 dev gre6tundg009017
sudo ip link set gre6tundg009017 mtu 1300
sudo ip link set gre6tundg009017 up
sudo ip tunnel add 6to4tundg009018 mode sit remote 185.26.32.13 local 142.93.238.98
sudo ip -6 addr add fc00:18:9::254/64 dev 6to4tundg009018
sudo ip link set 6to4tundg009018 mtu 1400
sudo ip link set 6to4tundg009018 up
sudo ip -6 tunnel add gre6tundg009018 mode ip6gre remote fc00:18:9::253 local fc00:18:9::254
sudo ip addr add 10.18.9.254/30 dev gre6tundg009018
sudo ip link set gre6tundg009018 mtu 1300
sudo ip link set gre6tundg009018 up
sudo ip tunnel add 6to4tundg009019 mode sit remote 185.26.32.160 local 142.93.238.98
sudo ip -6 addr add fc00:19:9::254/64 dev 6to4tundg009019
sudo ip link set 6to4tundg009019 mtu 1400
sudo ip link set 6to4tundg009019 up
sudo ip -6 tunnel add gre6tundg009019 mode ip6gre remote fc00:19:9::253 local fc00:19:9::254
sudo ip addr add 10.19.9.254/30 dev gre6tundg009019
sudo ip link set gre6tundg009019 mtu 1300
sudo ip link set gre6tundg009019 up
sudo ip tunnel add 6to4tundg009020 mode sit remote 185.26.32.137 local 142.93.238.98
sudo ip -6 addr add fc00:20:9::254/64 dev 6to4tundg009020
sudo ip link set 6to4tundg009020 mtu 1400
sudo ip link set 6to4tundg009020 up
sudo ip -6 tunnel add gre6tundg009020 mode ip6gre remote fc00:20:9::253 local fc00:20:9::254
sudo ip addr add 10.20.9.254/30 dev gre6tundg009020
sudo ip link set gre6tundg009020 mtu 1300
sudo ip link set gre6tundg009020 up
sudo ip tunnel add 6to4tundg009021 mode sit remote 185.26.32.175 local 142.93.238.98
sudo ip -6 addr add fc00:21:9::254/64 dev 6to4tundg009021
sudo ip link set 6to4tundg009021 mtu 1400
sudo ip link set 6to4tundg009021 up
sudo ip -6 tunnel add gre6tundg009021 mode ip6gre remote fc00:21:9::253 local fc00:21:9::254
sudo ip addr add 10.21.9.254/30 dev gre6tundg009021
sudo ip link set gre6tundg009021 mtu 1300
sudo ip link set gre6tundg009021 up
sudo ip tunnel add 6to4tundg009022 mode sit remote 185.26.32.124 local 142.93.238.98
sudo ip -6 addr add fc00:22:9::254/64 dev 6to4tundg009022
sudo ip link set 6to4tundg009022 mtu 1400
sudo ip link set 6to4tundg009022 up
sudo ip -6 tunnel add gre6tundg009022 mode ip6gre remote fc00:22:9::253 local fc00:22:9::254
sudo ip addr add 10.22.9.254/30 dev gre6tundg009022
sudo ip link set gre6tundg009022 mtu 1300
sudo ip link set gre6tundg009022 up
sudo ip tunnel add 6to4tundg009030 mode sit remote 193.111.234.211 local 142.93.238.98
sudo ip -6 addr add fc00:30:9::254/64 dev 6to4tundg009030
sudo ip link set 6to4tundg009030 mtu 1400
sudo ip link set 6to4tundg009030 up
sudo ip -6 tunnel add gre6tundg009030 mode ip6gre remote fc00:30:9::253 local fc00:30:9::254
sudo ip addr add 10.30.9.254/30 dev gre6tundg009030
sudo ip link set gre6tundg009030 mtu 1300
sudo ip link set gre6tundg009030 up
sudo ip tunnel add 6to4tundg009031 mode sit remote 193.134.100.62 local 142.93.238.98
sudo ip -6 addr add fc00:31:9::254/64 dev 6to4tundg009031
sudo ip link set 6to4tundg009031 mtu 1400
sudo ip link set 6to4tundg009031 up
sudo ip -6 tunnel add gre6tundg009031 mode ip6gre remote fc00:31:9::253 local fc00:31:9::254
sudo ip addr add 10.31.9.254/30 dev gre6tundg009031
sudo ip link set gre6tundg009031 mtu 1300
sudo ip link set gre6tundg009031 up
sudo ip tunnel add 6to4tundg009032 mode sit remote 185.26.32.226 local 142.93.238.98
sudo ip -6 addr add fc00:32:9::254/64 dev 6to4tundg009032
sudo ip link set 6to4tundg009032 mtu 1400
sudo ip link set 6to4tundg009032 up
sudo ip -6 tunnel add gre6tundg009032 mode ip6gre remote fc00:32:9::253 local fc00:32:9::254
sudo ip addr add 10.32.9.254/30 dev gre6tundg009032
sudo ip link set gre6tundg009032 mtu 1300
sudo ip link set gre6tundg009032 up
sudo ip tunnel add 6to4tundg009033 mode sit remote 185.26.32.231 local 142.93.238.98
sudo ip -6 addr add fc00:33:9::254/64 dev 6to4tundg009033
sudo ip link set 6to4tundg009033 mtu 1400
sudo ip link set 6to4tundg009033 up
sudo ip -6 tunnel add gre6tundg009033 mode ip6gre remote fc00:33:9::253 local fc00:33:9::254
sudo ip addr add 10.33.9.254/30 dev gre6tundg009033
sudo ip link set gre6tundg009033 mtu 1300
sudo ip link set gre6tundg009033 up
sudo ip tunnel add 6to4tundg009034 mode sit remote 185.26.32.238 local 142.93.238.98
sudo ip -6 addr add fc00:34:9::254/64 dev 6to4tundg009034
sudo ip link set 6to4tundg009034 mtu 1400
sudo ip link set 6to4tundg009034 up
sudo ip -6 tunnel add gre6tundg009034 mode ip6gre remote fc00:34:9::253 local fc00:34:9::254
sudo ip addr add 10.34.9.254/30 dev gre6tundg009034
sudo ip link set gre6tundg009034 mtu 1300
sudo ip link set gre6tundg009034 up
sudo ip tunnel add 6to4tundg009035 mode sit remote 185.26.32.252 local 142.93.238.98
sudo ip -6 addr add fc00:35:9::254/64 dev 6to4tundg009035
sudo ip link set 6to4tundg009035 mtu 1400
sudo ip link set 6to4tundg009035 up
sudo ip -6 tunnel add gre6tundg009035 mode ip6gre remote fc00:35:9::253 local fc00:35:9::254
sudo ip addr add 10.35.9.254/30 dev gre6tundg009035
sudo ip link set gre6tundg009035 mtu 1300
sudo ip link set gre6tundg009035 up
