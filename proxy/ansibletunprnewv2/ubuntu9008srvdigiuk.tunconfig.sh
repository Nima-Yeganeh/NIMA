sudo ip tunnel add 6to4tundg008001 mode sit remote 31.216.62.115 local 206.189.24.175
sudo ip -6 addr add fc00:1:8::254/64 dev 6to4tundg008001
sudo ip link set 6to4tundg008001 mtu 1400
sudo ip link set 6to4tundg008001 up
sudo ip -6 tunnel add gre6tundg008001 mode ip6gre remote fc00:1:8::253 local fc00:1:8::254
sudo ip addr add 10.1.8.254/30 dev gre6tundg008001
sudo ip link set gre6tundg008001 mtu 1300
sudo ip link set gre6tundg008001 up
sudo ip tunnel add 6to4tundg008002 mode sit remote 5.57.33.8 local 206.189.24.175
sudo ip -6 addr add fc00:2:8::254/64 dev 6to4tundg008002
sudo ip link set 6to4tundg008002 mtu 1400
sudo ip link set 6to4tundg008002 up
sudo ip -6 tunnel add gre6tundg008002 mode ip6gre remote fc00:2:8::253 local fc00:2:8::254
sudo ip addr add 10.2.8.254/30 dev gre6tundg008002
sudo ip link set gre6tundg008002 mtu 1300
sudo ip link set gre6tundg008002 up
sudo ip tunnel add 6to4tundg008003 mode sit remote 94.182.223.249 local 206.189.24.175
sudo ip -6 addr add fc00:3:8::254/64 dev 6to4tundg008003
sudo ip link set 6to4tundg008003 mtu 1400
sudo ip link set 6to4tundg008003 up
sudo ip -6 tunnel add gre6tundg008003 mode ip6gre remote fc00:3:8::253 local fc00:3:8::254
sudo ip addr add 10.3.8.254/30 dev gre6tundg008003
sudo ip link set gre6tundg008003 mtu 1300
sudo ip link set gre6tundg008003 up
sudo ip tunnel add 6to4tundg008004 mode sit remote 94.182.150.22 local 206.189.24.175
sudo ip -6 addr add fc00:4:8::254/64 dev 6to4tundg008004
sudo ip link set 6to4tundg008004 mtu 1400
sudo ip link set 6to4tundg008004 up
sudo ip -6 tunnel add gre6tundg008004 mode ip6gre remote fc00:4:8::253 local fc00:4:8::254
sudo ip addr add 10.4.8.254/30 dev gre6tundg008004
sudo ip link set gre6tundg008004 mtu 1300
sudo ip link set gre6tundg008004 up
sudo ip tunnel add 6to4tundg008005 mode sit remote 31.216.62.66 local 206.189.24.175
sudo ip -6 addr add fc00:5:8::254/64 dev 6to4tundg008005
sudo ip link set 6to4tundg008005 mtu 1400
sudo ip link set 6to4tundg008005 up
sudo ip -6 tunnel add gre6tundg008005 mode ip6gre remote fc00:5:8::253 local fc00:5:8::254
sudo ip addr add 10.5.8.254/30 dev gre6tundg008005
sudo ip link set gre6tundg008005 mtu 1300
sudo ip link set gre6tundg008005 up
sudo ip tunnel add 6to4tundg008006 mode sit remote 185.73.0.205 local 206.189.24.175
sudo ip -6 addr add fc00:6:8::254/64 dev 6to4tundg008006
sudo ip link set 6to4tundg008006 mtu 1400
sudo ip link set 6to4tundg008006 up
sudo ip -6 tunnel add gre6tundg008006 mode ip6gre remote fc00:6:8::253 local fc00:6:8::254
sudo ip addr add 10.6.8.254/30 dev gre6tundg008006
sudo ip link set gre6tundg008006 mtu 1300
sudo ip link set gre6tundg008006 up
sudo ip tunnel add 6to4tundg008007 mode sit remote 31.216.62.162 local 206.189.24.175
sudo ip -6 addr add fc00:7:8::254/64 dev 6to4tundg008007
sudo ip link set 6to4tundg008007 mtu 1400
sudo ip link set 6to4tundg008007 up
sudo ip -6 tunnel add gre6tundg008007 mode ip6gre remote fc00:7:8::253 local fc00:7:8::254
sudo ip addr add 10.7.8.254/30 dev gre6tundg008007
sudo ip link set gre6tundg008007 mtu 1300
sudo ip link set gre6tundg008007 up
sudo ip tunnel add 6to4tundg008008 mode sit remote 193.111.234.222 local 206.189.24.175
sudo ip -6 addr add fc00:8:8::254/64 dev 6to4tundg008008
sudo ip link set 6to4tundg008008 mtu 1400
sudo ip link set 6to4tundg008008 up
sudo ip -6 tunnel add gre6tundg008008 mode ip6gre remote fc00:8:8::253 local fc00:8:8::254
sudo ip addr add 10.8.8.254/30 dev gre6tundg008008
sudo ip link set gre6tundg008008 mtu 1300
sudo ip link set gre6tundg008008 up
sudo ip tunnel add 6to4tundg008009 mode sit remote 94.182.152.106 local 206.189.24.175
sudo ip -6 addr add fc00:9:8::254/64 dev 6to4tundg008009
sudo ip link set 6to4tundg008009 mtu 1400
sudo ip link set 6to4tundg008009 up
sudo ip -6 tunnel add gre6tundg008009 mode ip6gre remote fc00:9:8::253 local fc00:9:8::254
sudo ip addr add 10.9.8.254/30 dev gre6tundg008009
sudo ip link set gre6tundg008009 mtu 1300
sudo ip link set gre6tundg008009 up
sudo ip tunnel add 6to4tundg008010 mode sit remote 94.182.134.195 local 206.189.24.175
sudo ip -6 addr add fc00:10:8::254/64 dev 6to4tundg008010
sudo ip link set 6to4tundg008010 mtu 1400
sudo ip link set 6to4tundg008010 up
sudo ip -6 tunnel add gre6tundg008010 mode ip6gre remote fc00:10:8::253 local fc00:10:8::254
sudo ip addr add 10.10.8.254/30 dev gre6tundg008010
sudo ip link set gre6tundg008010 mtu 1300
sudo ip link set gre6tundg008010 up
sudo ip tunnel add 6to4tundg008011 mode sit remote 185.73.3.82 local 206.189.24.175
sudo ip -6 addr add fc00:11:8::254/64 dev 6to4tundg008011
sudo ip link set 6to4tundg008011 mtu 1400
sudo ip link set 6to4tundg008011 up
sudo ip -6 tunnel add gre6tundg008011 mode ip6gre remote fc00:11:8::253 local fc00:11:8::254
sudo ip addr add 10.11.8.254/30 dev gre6tundg008011
sudo ip link set gre6tundg008011 mtu 1300
sudo ip link set gre6tundg008011 up
sudo ip tunnel add 6to4tundg008012 mode sit remote 193.111.234.56 local 206.189.24.175
sudo ip -6 addr add fc00:12:8::254/64 dev 6to4tundg008012
sudo ip link set 6to4tundg008012 mtu 1400
sudo ip link set 6to4tundg008012 up
sudo ip -6 tunnel add gre6tundg008012 mode ip6gre remote fc00:12:8::253 local fc00:12:8::254
sudo ip addr add 10.12.8.254/30 dev gre6tundg008012
sudo ip link set gre6tundg008012 mtu 1300
sudo ip link set gre6tundg008012 up
sudo ip tunnel add 6to4tundg008013 mode sit remote 193.111.234.213 local 206.189.24.175
sudo ip -6 addr add fc00:13:8::254/64 dev 6to4tundg008013
sudo ip link set 6to4tundg008013 mtu 1400
sudo ip link set 6to4tundg008013 up
sudo ip -6 tunnel add gre6tundg008013 mode ip6gre remote fc00:13:8::253 local fc00:13:8::254
sudo ip addr add 10.13.8.254/30 dev gre6tundg008013
sudo ip link set gre6tundg008013 mtu 1300
sudo ip link set gre6tundg008013 up
sudo ip tunnel add 6to4tundg008014 mode sit remote 193.111.234.118 local 206.189.24.175
sudo ip -6 addr add fc00:14:8::254/64 dev 6to4tundg008014
sudo ip link set 6to4tundg008014 mtu 1400
sudo ip link set 6to4tundg008014 up
sudo ip -6 tunnel add gre6tundg008014 mode ip6gre remote fc00:14:8::253 local fc00:14:8::254
sudo ip addr add 10.14.8.254/30 dev gre6tundg008014
sudo ip link set gre6tundg008014 mtu 1300
sudo ip link set gre6tundg008014 up
sudo ip tunnel add 6to4tundg008015 mode sit remote 94.182.138.86 local 206.189.24.175
sudo ip -6 addr add fc00:15:8::254/64 dev 6to4tundg008015
sudo ip link set 6to4tundg008015 mtu 1400
sudo ip link set 6to4tundg008015 up
sudo ip -6 tunnel add gre6tundg008015 mode ip6gre remote fc00:15:8::253 local fc00:15:8::254
sudo ip addr add 10.15.8.254/30 dev gre6tundg008015
sudo ip link set gre6tundg008015 mtu 1300
sudo ip link set gre6tundg008015 up
sudo ip tunnel add 6to4tundg008016 mode sit remote 94.182.138.87 local 206.189.24.175
sudo ip -6 addr add fc00:16:8::254/64 dev 6to4tundg008016
sudo ip link set 6to4tundg008016 mtu 1400
sudo ip link set 6to4tundg008016 up
sudo ip -6 tunnel add gre6tundg008016 mode ip6gre remote fc00:16:8::253 local fc00:16:8::254
sudo ip addr add 10.16.8.254/30 dev gre6tundg008016
sudo ip link set gre6tundg008016 mtu 1300
sudo ip link set gre6tundg008016 up
sudo ip tunnel add 6to4tundg008017 mode sit remote 94.182.138.88 local 206.189.24.175
sudo ip -6 addr add fc00:17:8::254/64 dev 6to4tundg008017
sudo ip link set 6to4tundg008017 mtu 1400
sudo ip link set 6to4tundg008017 up
sudo ip -6 tunnel add gre6tundg008017 mode ip6gre remote fc00:17:8::253 local fc00:17:8::254
sudo ip addr add 10.17.8.254/30 dev gre6tundg008017
sudo ip link set gre6tundg008017 mtu 1300
sudo ip link set gre6tundg008017 up
sudo ip tunnel add 6to4tundg008018 mode sit remote 185.26.32.13 local 206.189.24.175
sudo ip -6 addr add fc00:18:8::254/64 dev 6to4tundg008018
sudo ip link set 6to4tundg008018 mtu 1400
sudo ip link set 6to4tundg008018 up
sudo ip -6 tunnel add gre6tundg008018 mode ip6gre remote fc00:18:8::253 local fc00:18:8::254
sudo ip addr add 10.18.8.254/30 dev gre6tundg008018
sudo ip link set gre6tundg008018 mtu 1300
sudo ip link set gre6tundg008018 up
sudo ip tunnel add 6to4tundg008019 mode sit remote 185.26.32.160 local 206.189.24.175
sudo ip -6 addr add fc00:19:8::254/64 dev 6to4tundg008019
sudo ip link set 6to4tundg008019 mtu 1400
sudo ip link set 6to4tundg008019 up
sudo ip -6 tunnel add gre6tundg008019 mode ip6gre remote fc00:19:8::253 local fc00:19:8::254
sudo ip addr add 10.19.8.254/30 dev gre6tundg008019
sudo ip link set gre6tundg008019 mtu 1300
sudo ip link set gre6tundg008019 up
sudo ip tunnel add 6to4tundg008020 mode sit remote 185.26.32.137 local 206.189.24.175
sudo ip -6 addr add fc00:20:8::254/64 dev 6to4tundg008020
sudo ip link set 6to4tundg008020 mtu 1400
sudo ip link set 6to4tundg008020 up
sudo ip -6 tunnel add gre6tundg008020 mode ip6gre remote fc00:20:8::253 local fc00:20:8::254
sudo ip addr add 10.20.8.254/30 dev gre6tundg008020
sudo ip link set gre6tundg008020 mtu 1300
sudo ip link set gre6tundg008020 up
sudo ip tunnel add 6to4tundg008021 mode sit remote 185.26.32.175 local 206.189.24.175
sudo ip -6 addr add fc00:21:8::254/64 dev 6to4tundg008021
sudo ip link set 6to4tundg008021 mtu 1400
sudo ip link set 6to4tundg008021 up
sudo ip -6 tunnel add gre6tundg008021 mode ip6gre remote fc00:21:8::253 local fc00:21:8::254
sudo ip addr add 10.21.8.254/30 dev gre6tundg008021
sudo ip link set gre6tundg008021 mtu 1300
sudo ip link set gre6tundg008021 up
sudo ip tunnel add 6to4tundg008022 mode sit remote 185.26.32.124 local 206.189.24.175
sudo ip -6 addr add fc00:22:8::254/64 dev 6to4tundg008022
sudo ip link set 6to4tundg008022 mtu 1400
sudo ip link set 6to4tundg008022 up
sudo ip -6 tunnel add gre6tundg008022 mode ip6gre remote fc00:22:8::253 local fc00:22:8::254
sudo ip addr add 10.22.8.254/30 dev gre6tundg008022
sudo ip link set gre6tundg008022 mtu 1300
sudo ip link set gre6tundg008022 up
sudo ip tunnel add 6to4tundg008030 mode sit remote 193.111.234.211 local 206.189.24.175
sudo ip -6 addr add fc00:30:8::254/64 dev 6to4tundg008030
sudo ip link set 6to4tundg008030 mtu 1400
sudo ip link set 6to4tundg008030 up
sudo ip -6 tunnel add gre6tundg008030 mode ip6gre remote fc00:30:8::253 local fc00:30:8::254
sudo ip addr add 10.30.8.254/30 dev gre6tundg008030
sudo ip link set gre6tundg008030 mtu 1300
sudo ip link set gre6tundg008030 up
sudo ip tunnel add 6to4tundg008031 mode sit remote 193.134.100.62 local 206.189.24.175
sudo ip -6 addr add fc00:31:8::254/64 dev 6to4tundg008031
sudo ip link set 6to4tundg008031 mtu 1400
sudo ip link set 6to4tundg008031 up
sudo ip -6 tunnel add gre6tundg008031 mode ip6gre remote fc00:31:8::253 local fc00:31:8::254
sudo ip addr add 10.31.8.254/30 dev gre6tundg008031
sudo ip link set gre6tundg008031 mtu 1300
sudo ip link set gre6tundg008031 up
sudo ip tunnel add 6to4tundg008032 mode sit remote 185.26.32.226 local 206.189.24.175
sudo ip -6 addr add fc00:32:8::254/64 dev 6to4tundg008032
sudo ip link set 6to4tundg008032 mtu 1400
sudo ip link set 6to4tundg008032 up
sudo ip -6 tunnel add gre6tundg008032 mode ip6gre remote fc00:32:8::253 local fc00:32:8::254
sudo ip addr add 10.32.8.254/30 dev gre6tundg008032
sudo ip link set gre6tundg008032 mtu 1300
sudo ip link set gre6tundg008032 up
sudo ip tunnel add 6to4tundg008033 mode sit remote 185.26.32.231 local 206.189.24.175
sudo ip -6 addr add fc00:33:8::254/64 dev 6to4tundg008033
sudo ip link set 6to4tundg008033 mtu 1400
sudo ip link set 6to4tundg008033 up
sudo ip -6 tunnel add gre6tundg008033 mode ip6gre remote fc00:33:8::253 local fc00:33:8::254
sudo ip addr add 10.33.8.254/30 dev gre6tundg008033
sudo ip link set gre6tundg008033 mtu 1300
sudo ip link set gre6tundg008033 up
sudo ip tunnel add 6to4tundg008034 mode sit remote 185.26.32.238 local 206.189.24.175
sudo ip -6 addr add fc00:34:8::254/64 dev 6to4tundg008034
sudo ip link set 6to4tundg008034 mtu 1400
sudo ip link set 6to4tundg008034 up
sudo ip -6 tunnel add gre6tundg008034 mode ip6gre remote fc00:34:8::253 local fc00:34:8::254
sudo ip addr add 10.34.8.254/30 dev gre6tundg008034
sudo ip link set gre6tundg008034 mtu 1300
sudo ip link set gre6tundg008034 up
sudo ip tunnel add 6to4tundg008035 mode sit remote 185.26.32.252 local 206.189.24.175
sudo ip -6 addr add fc00:35:8::254/64 dev 6to4tundg008035
sudo ip link set 6to4tundg008035 mtu 1400
sudo ip link set 6to4tundg008035 up
sudo ip -6 tunnel add gre6tundg008035 mode ip6gre remote fc00:35:8::253 local fc00:35:8::254
sudo ip addr add 10.35.8.254/30 dev gre6tundg008035
sudo ip link set gre6tundg008035 mtu 1300
sudo ip link set gre6tundg008035 up
