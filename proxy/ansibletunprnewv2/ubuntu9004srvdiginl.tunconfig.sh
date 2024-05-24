sudo ip tunnel add 6to4tundg004001 mode sit remote 31.216.62.115 local 209.38.36.161
sudo ip -6 addr add fc00:1:4::254/64 dev 6to4tundg004001
sudo ip link set 6to4tundg004001 mtu 1400
sudo ip link set 6to4tundg004001 up
sudo ip -6 tunnel add gre6tundg004001 mode ip6gre remote fc00:1:4::253 local fc00:1:4::254
sudo ip addr add 10.1.4.254/30 dev gre6tundg004001
sudo ip link set gre6tundg004001 mtu 1300
sudo ip link set gre6tundg004001 up
sudo ip tunnel add 6to4tundg004002 mode sit remote 5.57.33.8 local 209.38.36.161
sudo ip -6 addr add fc00:2:4::254/64 dev 6to4tundg004002
sudo ip link set 6to4tundg004002 mtu 1400
sudo ip link set 6to4tundg004002 up
sudo ip -6 tunnel add gre6tundg004002 mode ip6gre remote fc00:2:4::253 local fc00:2:4::254
sudo ip addr add 10.2.4.254/30 dev gre6tundg004002
sudo ip link set gre6tundg004002 mtu 1300
sudo ip link set gre6tundg004002 up
sudo ip tunnel add 6to4tundg004003 mode sit remote 94.182.223.249 local 209.38.36.161
sudo ip -6 addr add fc00:3:4::254/64 dev 6to4tundg004003
sudo ip link set 6to4tundg004003 mtu 1400
sudo ip link set 6to4tundg004003 up
sudo ip -6 tunnel add gre6tundg004003 mode ip6gre remote fc00:3:4::253 local fc00:3:4::254
sudo ip addr add 10.3.4.254/30 dev gre6tundg004003
sudo ip link set gre6tundg004003 mtu 1300
sudo ip link set gre6tundg004003 up
sudo ip tunnel add 6to4tundg004004 mode sit remote 94.182.150.22 local 209.38.36.161
sudo ip -6 addr add fc00:4:4::254/64 dev 6to4tundg004004
sudo ip link set 6to4tundg004004 mtu 1400
sudo ip link set 6to4tundg004004 up
sudo ip -6 tunnel add gre6tundg004004 mode ip6gre remote fc00:4:4::253 local fc00:4:4::254
sudo ip addr add 10.4.4.254/30 dev gre6tundg004004
sudo ip link set gre6tundg004004 mtu 1300
sudo ip link set gre6tundg004004 up
sudo ip tunnel add 6to4tundg004005 mode sit remote 31.216.62.66 local 209.38.36.161
sudo ip -6 addr add fc00:5:4::254/64 dev 6to4tundg004005
sudo ip link set 6to4tundg004005 mtu 1400
sudo ip link set 6to4tundg004005 up
sudo ip -6 tunnel add gre6tundg004005 mode ip6gre remote fc00:5:4::253 local fc00:5:4::254
sudo ip addr add 10.5.4.254/30 dev gre6tundg004005
sudo ip link set gre6tundg004005 mtu 1300
sudo ip link set gre6tundg004005 up
sudo ip tunnel add 6to4tundg004006 mode sit remote 185.73.0.205 local 209.38.36.161
sudo ip -6 addr add fc00:6:4::254/64 dev 6to4tundg004006
sudo ip link set 6to4tundg004006 mtu 1400
sudo ip link set 6to4tundg004006 up
sudo ip -6 tunnel add gre6tundg004006 mode ip6gre remote fc00:6:4::253 local fc00:6:4::254
sudo ip addr add 10.6.4.254/30 dev gre6tundg004006
sudo ip link set gre6tundg004006 mtu 1300
sudo ip link set gre6tundg004006 up
sudo ip tunnel add 6to4tundg004007 mode sit remote 31.216.62.162 local 209.38.36.161
sudo ip -6 addr add fc00:7:4::254/64 dev 6to4tundg004007
sudo ip link set 6to4tundg004007 mtu 1400
sudo ip link set 6to4tundg004007 up
sudo ip -6 tunnel add gre6tundg004007 mode ip6gre remote fc00:7:4::253 local fc00:7:4::254
sudo ip addr add 10.7.4.254/30 dev gre6tundg004007
sudo ip link set gre6tundg004007 mtu 1300
sudo ip link set gre6tundg004007 up
sudo ip tunnel add 6to4tundg004008 mode sit remote 193.111.234.222 local 209.38.36.161
sudo ip -6 addr add fc00:8:4::254/64 dev 6to4tundg004008
sudo ip link set 6to4tundg004008 mtu 1400
sudo ip link set 6to4tundg004008 up
sudo ip -6 tunnel add gre6tundg004008 mode ip6gre remote fc00:8:4::253 local fc00:8:4::254
sudo ip addr add 10.8.4.254/30 dev gre6tundg004008
sudo ip link set gre6tundg004008 mtu 1300
sudo ip link set gre6tundg004008 up
sudo ip tunnel add 6to4tundg004009 mode sit remote 94.182.152.106 local 209.38.36.161
sudo ip -6 addr add fc00:9:4::254/64 dev 6to4tundg004009
sudo ip link set 6to4tundg004009 mtu 1400
sudo ip link set 6to4tundg004009 up
sudo ip -6 tunnel add gre6tundg004009 mode ip6gre remote fc00:9:4::253 local fc00:9:4::254
sudo ip addr add 10.9.4.254/30 dev gre6tundg004009
sudo ip link set gre6tundg004009 mtu 1300
sudo ip link set gre6tundg004009 up
sudo ip tunnel add 6to4tundg004010 mode sit remote 94.182.134.195 local 209.38.36.161
sudo ip -6 addr add fc00:10:4::254/64 dev 6to4tundg004010
sudo ip link set 6to4tundg004010 mtu 1400
sudo ip link set 6to4tundg004010 up
sudo ip -6 tunnel add gre6tundg004010 mode ip6gre remote fc00:10:4::253 local fc00:10:4::254
sudo ip addr add 10.10.4.254/30 dev gre6tundg004010
sudo ip link set gre6tundg004010 mtu 1300
sudo ip link set gre6tundg004010 up
sudo ip tunnel add 6to4tundg004011 mode sit remote 185.73.3.82 local 209.38.36.161
sudo ip -6 addr add fc00:11:4::254/64 dev 6to4tundg004011
sudo ip link set 6to4tundg004011 mtu 1400
sudo ip link set 6to4tundg004011 up
sudo ip -6 tunnel add gre6tundg004011 mode ip6gre remote fc00:11:4::253 local fc00:11:4::254
sudo ip addr add 10.11.4.254/30 dev gre6tundg004011
sudo ip link set gre6tundg004011 mtu 1300
sudo ip link set gre6tundg004011 up
sudo ip tunnel add 6to4tundg004012 mode sit remote 193.111.234.56 local 209.38.36.161
sudo ip -6 addr add fc00:12:4::254/64 dev 6to4tundg004012
sudo ip link set 6to4tundg004012 mtu 1400
sudo ip link set 6to4tundg004012 up
sudo ip -6 tunnel add gre6tundg004012 mode ip6gre remote fc00:12:4::253 local fc00:12:4::254
sudo ip addr add 10.12.4.254/30 dev gre6tundg004012
sudo ip link set gre6tundg004012 mtu 1300
sudo ip link set gre6tundg004012 up
sudo ip tunnel add 6to4tundg004013 mode sit remote 193.111.234.213 local 209.38.36.161
sudo ip -6 addr add fc00:13:4::254/64 dev 6to4tundg004013
sudo ip link set 6to4tundg004013 mtu 1400
sudo ip link set 6to4tundg004013 up
sudo ip -6 tunnel add gre6tundg004013 mode ip6gre remote fc00:13:4::253 local fc00:13:4::254
sudo ip addr add 10.13.4.254/30 dev gre6tundg004013
sudo ip link set gre6tundg004013 mtu 1300
sudo ip link set gre6tundg004013 up
sudo ip tunnel add 6to4tundg004014 mode sit remote 193.111.234.118 local 209.38.36.161
sudo ip -6 addr add fc00:14:4::254/64 dev 6to4tundg004014
sudo ip link set 6to4tundg004014 mtu 1400
sudo ip link set 6to4tundg004014 up
sudo ip -6 tunnel add gre6tundg004014 mode ip6gre remote fc00:14:4::253 local fc00:14:4::254
sudo ip addr add 10.14.4.254/30 dev gre6tundg004014
sudo ip link set gre6tundg004014 mtu 1300
sudo ip link set gre6tundg004014 up
sudo ip tunnel add 6to4tundg004015 mode sit remote 94.182.138.86 local 209.38.36.161
sudo ip -6 addr add fc00:15:4::254/64 dev 6to4tundg004015
sudo ip link set 6to4tundg004015 mtu 1400
sudo ip link set 6to4tundg004015 up
sudo ip -6 tunnel add gre6tundg004015 mode ip6gre remote fc00:15:4::253 local fc00:15:4::254
sudo ip addr add 10.15.4.254/30 dev gre6tundg004015
sudo ip link set gre6tundg004015 mtu 1300
sudo ip link set gre6tundg004015 up
sudo ip tunnel add 6to4tundg004016 mode sit remote 94.182.138.87 local 209.38.36.161
sudo ip -6 addr add fc00:16:4::254/64 dev 6to4tundg004016
sudo ip link set 6to4tundg004016 mtu 1400
sudo ip link set 6to4tundg004016 up
sudo ip -6 tunnel add gre6tundg004016 mode ip6gre remote fc00:16:4::253 local fc00:16:4::254
sudo ip addr add 10.16.4.254/30 dev gre6tundg004016
sudo ip link set gre6tundg004016 mtu 1300
sudo ip link set gre6tundg004016 up
sudo ip tunnel add 6to4tundg004017 mode sit remote 94.182.138.88 local 209.38.36.161
sudo ip -6 addr add fc00:17:4::254/64 dev 6to4tundg004017
sudo ip link set 6to4tundg004017 mtu 1400
sudo ip link set 6to4tundg004017 up
sudo ip -6 tunnel add gre6tundg004017 mode ip6gre remote fc00:17:4::253 local fc00:17:4::254
sudo ip addr add 10.17.4.254/30 dev gre6tundg004017
sudo ip link set gre6tundg004017 mtu 1300
sudo ip link set gre6tundg004017 up
sudo ip tunnel add 6to4tundg004018 mode sit remote 185.26.32.13 local 209.38.36.161
sudo ip -6 addr add fc00:18:4::254/64 dev 6to4tundg004018
sudo ip link set 6to4tundg004018 mtu 1400
sudo ip link set 6to4tundg004018 up
sudo ip -6 tunnel add gre6tundg004018 mode ip6gre remote fc00:18:4::253 local fc00:18:4::254
sudo ip addr add 10.18.4.254/30 dev gre6tundg004018
sudo ip link set gre6tundg004018 mtu 1300
sudo ip link set gre6tundg004018 up
sudo ip tunnel add 6to4tundg004019 mode sit remote 185.26.32.160 local 209.38.36.161
sudo ip -6 addr add fc00:19:4::254/64 dev 6to4tundg004019
sudo ip link set 6to4tundg004019 mtu 1400
sudo ip link set 6to4tundg004019 up
sudo ip -6 tunnel add gre6tundg004019 mode ip6gre remote fc00:19:4::253 local fc00:19:4::254
sudo ip addr add 10.19.4.254/30 dev gre6tundg004019
sudo ip link set gre6tundg004019 mtu 1300
sudo ip link set gre6tundg004019 up
sudo ip tunnel add 6to4tundg004020 mode sit remote 185.26.32.137 local 209.38.36.161
sudo ip -6 addr add fc00:20:4::254/64 dev 6to4tundg004020
sudo ip link set 6to4tundg004020 mtu 1400
sudo ip link set 6to4tundg004020 up
sudo ip -6 tunnel add gre6tundg004020 mode ip6gre remote fc00:20:4::253 local fc00:20:4::254
sudo ip addr add 10.20.4.254/30 dev gre6tundg004020
sudo ip link set gre6tundg004020 mtu 1300
sudo ip link set gre6tundg004020 up
sudo ip tunnel add 6to4tundg004021 mode sit remote 185.26.32.175 local 209.38.36.161
sudo ip -6 addr add fc00:21:4::254/64 dev 6to4tundg004021
sudo ip link set 6to4tundg004021 mtu 1400
sudo ip link set 6to4tundg004021 up
sudo ip -6 tunnel add gre6tundg004021 mode ip6gre remote fc00:21:4::253 local fc00:21:4::254
sudo ip addr add 10.21.4.254/30 dev gre6tundg004021
sudo ip link set gre6tundg004021 mtu 1300
sudo ip link set gre6tundg004021 up
sudo ip tunnel add 6to4tundg004022 mode sit remote 185.26.32.124 local 209.38.36.161
sudo ip -6 addr add fc00:22:4::254/64 dev 6to4tundg004022
sudo ip link set 6to4tundg004022 mtu 1400
sudo ip link set 6to4tundg004022 up
sudo ip -6 tunnel add gre6tundg004022 mode ip6gre remote fc00:22:4::253 local fc00:22:4::254
sudo ip addr add 10.22.4.254/30 dev gre6tundg004022
sudo ip link set gre6tundg004022 mtu 1300
sudo ip link set gre6tundg004022 up
sudo ip tunnel add 6to4tundg004030 mode sit remote 193.111.234.211 local 209.38.36.161
sudo ip -6 addr add fc00:30:4::254/64 dev 6to4tundg004030
sudo ip link set 6to4tundg004030 mtu 1400
sudo ip link set 6to4tundg004030 up
sudo ip -6 tunnel add gre6tundg004030 mode ip6gre remote fc00:30:4::253 local fc00:30:4::254
sudo ip addr add 10.30.4.254/30 dev gre6tundg004030
sudo ip link set gre6tundg004030 mtu 1300
sudo ip link set gre6tundg004030 up
sudo ip tunnel add 6to4tundg004031 mode sit remote 193.134.100.62 local 209.38.36.161
sudo ip -6 addr add fc00:31:4::254/64 dev 6to4tundg004031
sudo ip link set 6to4tundg004031 mtu 1400
sudo ip link set 6to4tundg004031 up
sudo ip -6 tunnel add gre6tundg004031 mode ip6gre remote fc00:31:4::253 local fc00:31:4::254
sudo ip addr add 10.31.4.254/30 dev gre6tundg004031
sudo ip link set gre6tundg004031 mtu 1300
sudo ip link set gre6tundg004031 up
sudo ip tunnel add 6to4tundg004032 mode sit remote 185.26.32.226 local 209.38.36.161
sudo ip -6 addr add fc00:32:4::254/64 dev 6to4tundg004032
sudo ip link set 6to4tundg004032 mtu 1400
sudo ip link set 6to4tundg004032 up
sudo ip -6 tunnel add gre6tundg004032 mode ip6gre remote fc00:32:4::253 local fc00:32:4::254
sudo ip addr add 10.32.4.254/30 dev gre6tundg004032
sudo ip link set gre6tundg004032 mtu 1300
sudo ip link set gre6tundg004032 up
sudo ip tunnel add 6to4tundg004033 mode sit remote 185.26.32.231 local 209.38.36.161
sudo ip -6 addr add fc00:33:4::254/64 dev 6to4tundg004033
sudo ip link set 6to4tundg004033 mtu 1400
sudo ip link set 6to4tundg004033 up
sudo ip -6 tunnel add gre6tundg004033 mode ip6gre remote fc00:33:4::253 local fc00:33:4::254
sudo ip addr add 10.33.4.254/30 dev gre6tundg004033
sudo ip link set gre6tundg004033 mtu 1300
sudo ip link set gre6tundg004033 up
sudo ip tunnel add 6to4tundg004034 mode sit remote 185.26.32.238 local 209.38.36.161
sudo ip -6 addr add fc00:34:4::254/64 dev 6to4tundg004034
sudo ip link set 6to4tundg004034 mtu 1400
sudo ip link set 6to4tundg004034 up
sudo ip -6 tunnel add gre6tundg004034 mode ip6gre remote fc00:34:4::253 local fc00:34:4::254
sudo ip addr add 10.34.4.254/30 dev gre6tundg004034
sudo ip link set gre6tundg004034 mtu 1300
sudo ip link set gre6tundg004034 up
sudo ip tunnel add 6to4tundg004035 mode sit remote 185.26.32.252 local 209.38.36.161
sudo ip -6 addr add fc00:35:4::254/64 dev 6to4tundg004035
sudo ip link set 6to4tundg004035 mtu 1400
sudo ip link set 6to4tundg004035 up
sudo ip -6 tunnel add gre6tundg004035 mode ip6gre remote fc00:35:4::253 local fc00:35:4::254
sudo ip addr add 10.35.4.254/30 dev gre6tundg004035
sudo ip link set gre6tundg004035 mtu 1300
sudo ip link set gre6tundg004035 up
