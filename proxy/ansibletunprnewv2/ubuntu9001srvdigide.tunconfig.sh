sudo ip tunnel add 6to4tundg001001 mode sit remote 31.216.62.115 local 164.92.246.10
sudo ip -6 addr add fc00:1:1::254/64 dev 6to4tundg001001
sudo ip link set 6to4tundg001001 mtu 1400
sudo ip link set 6to4tundg001001 up
sudo ip -6 tunnel add gre6tundg001001 mode ip6gre remote fc00:1:1::253 local fc00:1:1::254
sudo ip addr add 10.1.1.254/30 dev gre6tundg001001
sudo ip link set gre6tundg001001 mtu 1300
sudo ip link set gre6tundg001001 up
sudo ip tunnel add 6to4tundg001002 mode sit remote 5.57.33.8 local 164.92.246.10
sudo ip -6 addr add fc00:2:1::254/64 dev 6to4tundg001002
sudo ip link set 6to4tundg001002 mtu 1400
sudo ip link set 6to4tundg001002 up
sudo ip -6 tunnel add gre6tundg001002 mode ip6gre remote fc00:2:1::253 local fc00:2:1::254
sudo ip addr add 10.2.1.254/30 dev gre6tundg001002
sudo ip link set gre6tundg001002 mtu 1300
sudo ip link set gre6tundg001002 up
sudo ip tunnel add 6to4tundg001003 mode sit remote 94.182.223.249 local 164.92.246.10
sudo ip -6 addr add fc00:3:1::254/64 dev 6to4tundg001003
sudo ip link set 6to4tundg001003 mtu 1400
sudo ip link set 6to4tundg001003 up
sudo ip -6 tunnel add gre6tundg001003 mode ip6gre remote fc00:3:1::253 local fc00:3:1::254
sudo ip addr add 10.3.1.254/30 dev gre6tundg001003
sudo ip link set gre6tundg001003 mtu 1300
sudo ip link set gre6tundg001003 up
sudo ip tunnel add 6to4tundg001004 mode sit remote 94.182.150.22 local 164.92.246.10
sudo ip -6 addr add fc00:4:1::254/64 dev 6to4tundg001004
sudo ip link set 6to4tundg001004 mtu 1400
sudo ip link set 6to4tundg001004 up
sudo ip -6 tunnel add gre6tundg001004 mode ip6gre remote fc00:4:1::253 local fc00:4:1::254
sudo ip addr add 10.4.1.254/30 dev gre6tundg001004
sudo ip link set gre6tundg001004 mtu 1300
sudo ip link set gre6tundg001004 up
sudo ip tunnel add 6to4tundg001005 mode sit remote 31.216.62.66 local 164.92.246.10
sudo ip -6 addr add fc00:5:1::254/64 dev 6to4tundg001005
sudo ip link set 6to4tundg001005 mtu 1400
sudo ip link set 6to4tundg001005 up
sudo ip -6 tunnel add gre6tundg001005 mode ip6gre remote fc00:5:1::253 local fc00:5:1::254
sudo ip addr add 10.5.1.254/30 dev gre6tundg001005
sudo ip link set gre6tundg001005 mtu 1300
sudo ip link set gre6tundg001005 up
sudo ip tunnel add 6to4tundg001006 mode sit remote 185.73.0.205 local 164.92.246.10
sudo ip -6 addr add fc00:6:1::254/64 dev 6to4tundg001006
sudo ip link set 6to4tundg001006 mtu 1400
sudo ip link set 6to4tundg001006 up
sudo ip -6 tunnel add gre6tundg001006 mode ip6gre remote fc00:6:1::253 local fc00:6:1::254
sudo ip addr add 10.6.1.254/30 dev gre6tundg001006
sudo ip link set gre6tundg001006 mtu 1300
sudo ip link set gre6tundg001006 up
sudo ip tunnel add 6to4tundg001007 mode sit remote 31.216.62.162 local 164.92.246.10
sudo ip -6 addr add fc00:7:1::254/64 dev 6to4tundg001007
sudo ip link set 6to4tundg001007 mtu 1400
sudo ip link set 6to4tundg001007 up
sudo ip -6 tunnel add gre6tundg001007 mode ip6gre remote fc00:7:1::253 local fc00:7:1::254
sudo ip addr add 10.7.1.254/30 dev gre6tundg001007
sudo ip link set gre6tundg001007 mtu 1300
sudo ip link set gre6tundg001007 up
sudo ip tunnel add 6to4tundg001008 mode sit remote 193.111.234.222 local 164.92.246.10
sudo ip -6 addr add fc00:8:1::254/64 dev 6to4tundg001008
sudo ip link set 6to4tundg001008 mtu 1400
sudo ip link set 6to4tundg001008 up
sudo ip -6 tunnel add gre6tundg001008 mode ip6gre remote fc00:8:1::253 local fc00:8:1::254
sudo ip addr add 10.8.1.254/30 dev gre6tundg001008
sudo ip link set gre6tundg001008 mtu 1300
sudo ip link set gre6tundg001008 up
sudo ip tunnel add 6to4tundg001009 mode sit remote 94.182.152.106 local 164.92.246.10
sudo ip -6 addr add fc00:9:1::254/64 dev 6to4tundg001009
sudo ip link set 6to4tundg001009 mtu 1400
sudo ip link set 6to4tundg001009 up
sudo ip -6 tunnel add gre6tundg001009 mode ip6gre remote fc00:9:1::253 local fc00:9:1::254
sudo ip addr add 10.9.1.254/30 dev gre6tundg001009
sudo ip link set gre6tundg001009 mtu 1300
sudo ip link set gre6tundg001009 up
sudo ip tunnel add 6to4tundg001010 mode sit remote 94.182.134.195 local 164.92.246.10
sudo ip -6 addr add fc00:10:1::254/64 dev 6to4tundg001010
sudo ip link set 6to4tundg001010 mtu 1400
sudo ip link set 6to4tundg001010 up
sudo ip -6 tunnel add gre6tundg001010 mode ip6gre remote fc00:10:1::253 local fc00:10:1::254
sudo ip addr add 10.10.1.254/30 dev gre6tundg001010
sudo ip link set gre6tundg001010 mtu 1300
sudo ip link set gre6tundg001010 up
sudo ip tunnel add 6to4tundg001011 mode sit remote 185.73.3.82 local 164.92.246.10
sudo ip -6 addr add fc00:11:1::254/64 dev 6to4tundg001011
sudo ip link set 6to4tundg001011 mtu 1400
sudo ip link set 6to4tundg001011 up
sudo ip -6 tunnel add gre6tundg001011 mode ip6gre remote fc00:11:1::253 local fc00:11:1::254
sudo ip addr add 10.11.1.254/30 dev gre6tundg001011
sudo ip link set gre6tundg001011 mtu 1300
sudo ip link set gre6tundg001011 up
sudo ip tunnel add 6to4tundg001012 mode sit remote 193.111.234.56 local 164.92.246.10
sudo ip -6 addr add fc00:12:1::254/64 dev 6to4tundg001012
sudo ip link set 6to4tundg001012 mtu 1400
sudo ip link set 6to4tundg001012 up
sudo ip -6 tunnel add gre6tundg001012 mode ip6gre remote fc00:12:1::253 local fc00:12:1::254
sudo ip addr add 10.12.1.254/30 dev gre6tundg001012
sudo ip link set gre6tundg001012 mtu 1300
sudo ip link set gre6tundg001012 up
sudo ip tunnel add 6to4tundg001013 mode sit remote 193.111.234.213 local 164.92.246.10
sudo ip -6 addr add fc00:13:1::254/64 dev 6to4tundg001013
sudo ip link set 6to4tundg001013 mtu 1400
sudo ip link set 6to4tundg001013 up
sudo ip -6 tunnel add gre6tundg001013 mode ip6gre remote fc00:13:1::253 local fc00:13:1::254
sudo ip addr add 10.13.1.254/30 dev gre6tundg001013
sudo ip link set gre6tundg001013 mtu 1300
sudo ip link set gre6tundg001013 up
sudo ip tunnel add 6to4tundg001014 mode sit remote 193.111.234.118 local 164.92.246.10
sudo ip -6 addr add fc00:14:1::254/64 dev 6to4tundg001014
sudo ip link set 6to4tundg001014 mtu 1400
sudo ip link set 6to4tundg001014 up
sudo ip -6 tunnel add gre6tundg001014 mode ip6gre remote fc00:14:1::253 local fc00:14:1::254
sudo ip addr add 10.14.1.254/30 dev gre6tundg001014
sudo ip link set gre6tundg001014 mtu 1300
sudo ip link set gre6tundg001014 up
sudo ip tunnel add 6to4tundg001015 mode sit remote 94.182.138.86 local 164.92.246.10
sudo ip -6 addr add fc00:15:1::254/64 dev 6to4tundg001015
sudo ip link set 6to4tundg001015 mtu 1400
sudo ip link set 6to4tundg001015 up
sudo ip -6 tunnel add gre6tundg001015 mode ip6gre remote fc00:15:1::253 local fc00:15:1::254
sudo ip addr add 10.15.1.254/30 dev gre6tundg001015
sudo ip link set gre6tundg001015 mtu 1300
sudo ip link set gre6tundg001015 up
sudo ip tunnel add 6to4tundg001016 mode sit remote 94.182.138.87 local 164.92.246.10
sudo ip -6 addr add fc00:16:1::254/64 dev 6to4tundg001016
sudo ip link set 6to4tundg001016 mtu 1400
sudo ip link set 6to4tundg001016 up
sudo ip -6 tunnel add gre6tundg001016 mode ip6gre remote fc00:16:1::253 local fc00:16:1::254
sudo ip addr add 10.16.1.254/30 dev gre6tundg001016
sudo ip link set gre6tundg001016 mtu 1300
sudo ip link set gre6tundg001016 up
sudo ip tunnel add 6to4tundg001017 mode sit remote 94.182.138.88 local 164.92.246.10
sudo ip -6 addr add fc00:17:1::254/64 dev 6to4tundg001017
sudo ip link set 6to4tundg001017 mtu 1400
sudo ip link set 6to4tundg001017 up
sudo ip -6 tunnel add gre6tundg001017 mode ip6gre remote fc00:17:1::253 local fc00:17:1::254
sudo ip addr add 10.17.1.254/30 dev gre6tundg001017
sudo ip link set gre6tundg001017 mtu 1300
sudo ip link set gre6tundg001017 up
sudo ip tunnel add 6to4tundg001018 mode sit remote 85.133.194.228 local 164.92.246.10
sudo ip -6 addr add fc00:18:1::254/64 dev 6to4tundg001018
sudo ip link set 6to4tundg001018 mtu 1400
sudo ip link set 6to4tundg001018 up
sudo ip -6 tunnel add gre6tundg001018 mode ip6gre remote fc00:18:1::253 local fc00:18:1::254
sudo ip addr add 10.18.1.254/30 dev gre6tundg001018
sudo ip link set gre6tundg001018 mtu 1300
sudo ip link set gre6tundg001018 up
sudo ip tunnel add 6to4tundg001019 mode sit remote 185.26.32.160 local 164.92.246.10
sudo ip -6 addr add fc00:19:1::254/64 dev 6to4tundg001019
sudo ip link set 6to4tundg001019 mtu 1400
sudo ip link set 6to4tundg001019 up
sudo ip -6 tunnel add gre6tundg001019 mode ip6gre remote fc00:19:1::253 local fc00:19:1::254
sudo ip addr add 10.19.1.254/30 dev gre6tundg001019
sudo ip link set gre6tundg001019 mtu 1300
sudo ip link set gre6tundg001019 up
sudo ip tunnel add 6to4tundg001020 mode sit remote 185.26.32.137 local 164.92.246.10
sudo ip -6 addr add fc00:20:1::254/64 dev 6to4tundg001020
sudo ip link set 6to4tundg001020 mtu 1400
sudo ip link set 6to4tundg001020 up
sudo ip -6 tunnel add gre6tundg001020 mode ip6gre remote fc00:20:1::253 local fc00:20:1::254
sudo ip addr add 10.20.1.254/30 dev gre6tundg001020
sudo ip link set gre6tundg001020 mtu 1300
sudo ip link set gre6tundg001020 up
sudo ip tunnel add 6to4tundg001021 mode sit remote 185.26.32.175 local 164.92.246.10
sudo ip -6 addr add fc00:21:1::254/64 dev 6to4tundg001021
sudo ip link set 6to4tundg001021 mtu 1400
sudo ip link set 6to4tundg001021 up
sudo ip -6 tunnel add gre6tundg001021 mode ip6gre remote fc00:21:1::253 local fc00:21:1::254
sudo ip addr add 10.21.1.254/30 dev gre6tundg001021
sudo ip link set gre6tundg001021 mtu 1300
sudo ip link set gre6tundg001021 up
sudo ip tunnel add 6to4tundg001023 mode sit remote 159.223.208.119 local 164.92.246.10
sudo ip -6 addr add fc00:23:1::254/64 dev 6to4tundg001023
sudo ip link set 6to4tundg001023 mtu 1400
sudo ip link set 6to4tundg001023 up
sudo ip -6 tunnel add gre6tundg001023 mode ip6gre remote fc00:23:1::253 local fc00:23:1::254
sudo ip addr add 10.23.1.254/30 dev gre6tundg001023
sudo ip link set gre6tundg001023 mtu 1300
sudo ip link set gre6tundg001023 up
sudo ip tunnel add 6to4tundg001024 mode sit remote 159.223.220.182 local 164.92.246.10
sudo ip -6 addr add fc00:24:1::254/64 dev 6to4tundg001024
sudo ip link set 6to4tundg001024 mtu 1400
sudo ip link set 6to4tundg001024 up
sudo ip -6 tunnel add gre6tundg001024 mode ip6gre remote fc00:24:1::253 local fc00:24:1::254
sudo ip addr add 10.24.1.254/30 dev gre6tundg001024
sudo ip link set gre6tundg001024 mtu 1300
sudo ip link set gre6tundg001024 up
sudo ip tunnel add 6to4tundg001025 mode sit remote 146.190.235.0 local 164.92.246.10
sudo ip -6 addr add fc00:25:1::254/64 dev 6to4tundg001025
sudo ip link set 6to4tundg001025 mtu 1400
sudo ip link set 6to4tundg001025 up
sudo ip -6 tunnel add gre6tundg001025 mode ip6gre remote fc00:25:1::253 local fc00:25:1::254
sudo ip addr add 10.25.1.254/30 dev gre6tundg001025
sudo ip link set gre6tundg001025 mtu 1300
sudo ip link set gre6tundg001025 up
sudo ip tunnel add 6to4tundg001026 mode sit remote 159.223.212.119 local 164.92.246.10
sudo ip -6 addr add fc00:26:1::254/64 dev 6to4tundg001026
sudo ip link set 6to4tundg001026 mtu 1400
sudo ip link set 6to4tundg001026 up
sudo ip -6 tunnel add gre6tundg001026 mode ip6gre remote fc00:26:1::253 local fc00:26:1::254
sudo ip addr add 10.26.1.254/30 dev gre6tundg001026
sudo ip link set gre6tundg001026 mtu 1300
sudo ip link set gre6tundg001026 up
sudo ip tunnel add 6to4tundg001027 mode sit remote 146.190.227.145 local 164.92.246.10
sudo ip -6 addr add fc00:27:1::254/64 dev 6to4tundg001027
sudo ip link set 6to4tundg001027 mtu 1400
sudo ip link set 6to4tundg001027 up
sudo ip -6 tunnel add gre6tundg001027 mode ip6gre remote fc00:27:1::253 local fc00:27:1::254
sudo ip addr add 10.27.1.254/30 dev gre6tundg001027
sudo ip link set gre6tundg001027 mtu 1300
sudo ip link set gre6tundg001027 up
sudo ip tunnel add 6to4tundg001028 mode sit remote 142.93.133.38 local 164.92.246.10
sudo ip -6 addr add fc00:28:1::254/64 dev 6to4tundg001028
sudo ip link set 6to4tundg001028 mtu 1400
sudo ip link set 6to4tundg001028 up
sudo ip -6 tunnel add gre6tundg001028 mode ip6gre remote fc00:28:1::253 local fc00:28:1::254
sudo ip addr add 10.28.1.254/30 dev gre6tundg001028
sudo ip link set gre6tundg001028 mtu 1300
sudo ip link set gre6tundg001028 up
sudo ip tunnel add 6to4tundg001029 mode sit remote 142.93.133.247 local 164.92.246.10
sudo ip -6 addr add fc00:29:1::254/64 dev 6to4tundg001029
sudo ip link set 6to4tundg001029 mtu 1400
sudo ip link set 6to4tundg001029 up
sudo ip -6 tunnel add gre6tundg001029 mode ip6gre remote fc00:29:1::253 local fc00:29:1::254
sudo ip addr add 10.29.1.254/30 dev gre6tundg001029
sudo ip link set gre6tundg001029 mtu 1300
sudo ip link set gre6tundg001029 up
