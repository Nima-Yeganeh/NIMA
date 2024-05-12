sudo ip tunnel add 6to4tundg003001 mode sit remote 31.216.62.115 local 138.68.74.97
sudo ip -6 addr add fc00:1:3::254/64 dev 6to4tundg003001
sudo ip link set 6to4tundg003001 mtu 1400
sudo ip link set 6to4tundg003001 up
sudo ip -6 tunnel add gre6tundg003001 mode ip6gre remote fc00:1:3::253 local fc00:1:3::254
sudo ip addr add 10.1.3.254/30 dev gre6tundg003001
sudo ip link set gre6tundg003001 mtu 1300
sudo ip link set gre6tundg003001 up
sudo ip tunnel add 6to4tundg003002 mode sit remote 5.57.33.8 local 138.68.74.97
sudo ip -6 addr add fc00:2:3::254/64 dev 6to4tundg003002
sudo ip link set 6to4tundg003002 mtu 1400
sudo ip link set 6to4tundg003002 up
sudo ip -6 tunnel add gre6tundg003002 mode ip6gre remote fc00:2:3::253 local fc00:2:3::254
sudo ip addr add 10.2.3.254/30 dev gre6tundg003002
sudo ip link set gre6tundg003002 mtu 1300
sudo ip link set gre6tundg003002 up
sudo ip tunnel add 6to4tundg003003 mode sit remote 94.182.223.249 local 138.68.74.97
sudo ip -6 addr add fc00:3:3::254/64 dev 6to4tundg003003
sudo ip link set 6to4tundg003003 mtu 1400
sudo ip link set 6to4tundg003003 up
sudo ip -6 tunnel add gre6tundg003003 mode ip6gre remote fc00:3:3::253 local fc00:3:3::254
sudo ip addr add 10.3.3.254/30 dev gre6tundg003003
sudo ip link set gre6tundg003003 mtu 1300
sudo ip link set gre6tundg003003 up
sudo ip tunnel add 6to4tundg003004 mode sit remote 94.182.150.22 local 138.68.74.97
sudo ip -6 addr add fc00:4:3::254/64 dev 6to4tundg003004
sudo ip link set 6to4tundg003004 mtu 1400
sudo ip link set 6to4tundg003004 up
sudo ip -6 tunnel add gre6tundg003004 mode ip6gre remote fc00:4:3::253 local fc00:4:3::254
sudo ip addr add 10.4.3.254/30 dev gre6tundg003004
sudo ip link set gre6tundg003004 mtu 1300
sudo ip link set gre6tundg003004 up
sudo ip tunnel add 6to4tundg003005 mode sit remote 31.216.62.66 local 138.68.74.97
sudo ip -6 addr add fc00:5:3::254/64 dev 6to4tundg003005
sudo ip link set 6to4tundg003005 mtu 1400
sudo ip link set 6to4tundg003005 up
sudo ip -6 tunnel add gre6tundg003005 mode ip6gre remote fc00:5:3::253 local fc00:5:3::254
sudo ip addr add 10.5.3.254/30 dev gre6tundg003005
sudo ip link set gre6tundg003005 mtu 1300
sudo ip link set gre6tundg003005 up
sudo ip tunnel add 6to4tundg003006 mode sit remote 185.73.0.205 local 138.68.74.97
sudo ip -6 addr add fc00:6:3::254/64 dev 6to4tundg003006
sudo ip link set 6to4tundg003006 mtu 1400
sudo ip link set 6to4tundg003006 up
sudo ip -6 tunnel add gre6tundg003006 mode ip6gre remote fc00:6:3::253 local fc00:6:3::254
sudo ip addr add 10.6.3.254/30 dev gre6tundg003006
sudo ip link set gre6tundg003006 mtu 1300
sudo ip link set gre6tundg003006 up
sudo ip tunnel add 6to4tundg003007 mode sit remote 31.216.62.162 local 138.68.74.97
sudo ip -6 addr add fc00:7:3::254/64 dev 6to4tundg003007
sudo ip link set 6to4tundg003007 mtu 1400
sudo ip link set 6to4tundg003007 up
sudo ip -6 tunnel add gre6tundg003007 mode ip6gre remote fc00:7:3::253 local fc00:7:3::254
sudo ip addr add 10.7.3.254/30 dev gre6tundg003007
sudo ip link set gre6tundg003007 mtu 1300
sudo ip link set gre6tundg003007 up
sudo ip tunnel add 6to4tundg003008 mode sit remote 193.111.234.222 local 138.68.74.97
sudo ip -6 addr add fc00:8:3::254/64 dev 6to4tundg003008
sudo ip link set 6to4tundg003008 mtu 1400
sudo ip link set 6to4tundg003008 up
sudo ip -6 tunnel add gre6tundg003008 mode ip6gre remote fc00:8:3::253 local fc00:8:3::254
sudo ip addr add 10.8.3.254/30 dev gre6tundg003008
sudo ip link set gre6tundg003008 mtu 1300
sudo ip link set gre6tundg003008 up
sudo ip tunnel add 6to4tundg003009 mode sit remote 94.182.152.106 local 138.68.74.97
sudo ip -6 addr add fc00:9:3::254/64 dev 6to4tundg003009
sudo ip link set 6to4tundg003009 mtu 1400
sudo ip link set 6to4tundg003009 up
sudo ip -6 tunnel add gre6tundg003009 mode ip6gre remote fc00:9:3::253 local fc00:9:3::254
sudo ip addr add 10.9.3.254/30 dev gre6tundg003009
sudo ip link set gre6tundg003009 mtu 1300
sudo ip link set gre6tundg003009 up
sudo ip tunnel add 6to4tundg003010 mode sit remote 94.182.134.195 local 138.68.74.97
sudo ip -6 addr add fc00:10:3::254/64 dev 6to4tundg003010
sudo ip link set 6to4tundg003010 mtu 1400
sudo ip link set 6to4tundg003010 up
sudo ip -6 tunnel add gre6tundg003010 mode ip6gre remote fc00:10:3::253 local fc00:10:3::254
sudo ip addr add 10.10.3.254/30 dev gre6tundg003010
sudo ip link set gre6tundg003010 mtu 1300
sudo ip link set gre6tundg003010 up
sudo ip tunnel add 6to4tundg003011 mode sit remote 185.73.3.82 local 138.68.74.97
sudo ip -6 addr add fc00:11:3::254/64 dev 6to4tundg003011
sudo ip link set 6to4tundg003011 mtu 1400
sudo ip link set 6to4tundg003011 up
sudo ip -6 tunnel add gre6tundg003011 mode ip6gre remote fc00:11:3::253 local fc00:11:3::254
sudo ip addr add 10.11.3.254/30 dev gre6tundg003011
sudo ip link set gre6tundg003011 mtu 1300
sudo ip link set gre6tundg003011 up
sudo ip tunnel add 6to4tundg003012 mode sit remote 193.111.234.56 local 138.68.74.97
sudo ip -6 addr add fc00:12:3::254/64 dev 6to4tundg003012
sudo ip link set 6to4tundg003012 mtu 1400
sudo ip link set 6to4tundg003012 up
sudo ip -6 tunnel add gre6tundg003012 mode ip6gre remote fc00:12:3::253 local fc00:12:3::254
sudo ip addr add 10.12.3.254/30 dev gre6tundg003012
sudo ip link set gre6tundg003012 mtu 1300
sudo ip link set gre6tundg003012 up
sudo ip tunnel add 6to4tundg003013 mode sit remote 193.111.234.213 local 138.68.74.97
sudo ip -6 addr add fc00:13:3::254/64 dev 6to4tundg003013
sudo ip link set 6to4tundg003013 mtu 1400
sudo ip link set 6to4tundg003013 up
sudo ip -6 tunnel add gre6tundg003013 mode ip6gre remote fc00:13:3::253 local fc00:13:3::254
sudo ip addr add 10.13.3.254/30 dev gre6tundg003013
sudo ip link set gre6tundg003013 mtu 1300
sudo ip link set gre6tundg003013 up
sudo ip tunnel add 6to4tundg003014 mode sit remote 193.111.234.118 local 138.68.74.97
sudo ip -6 addr add fc00:14:3::254/64 dev 6to4tundg003014
sudo ip link set 6to4tundg003014 mtu 1400
sudo ip link set 6to4tundg003014 up
sudo ip -6 tunnel add gre6tundg003014 mode ip6gre remote fc00:14:3::253 local fc00:14:3::254
sudo ip addr add 10.14.3.254/30 dev gre6tundg003014
sudo ip link set gre6tundg003014 mtu 1300
sudo ip link set gre6tundg003014 up
sudo ip tunnel add 6to4tundg003015 mode sit remote 94.182.138.86 local 138.68.74.97
sudo ip -6 addr add fc00:15:3::254/64 dev 6to4tundg003015
sudo ip link set 6to4tundg003015 mtu 1400
sudo ip link set 6to4tundg003015 up
sudo ip -6 tunnel add gre6tundg003015 mode ip6gre remote fc00:15:3::253 local fc00:15:3::254
sudo ip addr add 10.15.3.254/30 dev gre6tundg003015
sudo ip link set gre6tundg003015 mtu 1300
sudo ip link set gre6tundg003015 up
sudo ip tunnel add 6to4tundg003016 mode sit remote 94.182.138.87 local 138.68.74.97
sudo ip -6 addr add fc00:16:3::254/64 dev 6to4tundg003016
sudo ip link set 6to4tundg003016 mtu 1400
sudo ip link set 6to4tundg003016 up
sudo ip -6 tunnel add gre6tundg003016 mode ip6gre remote fc00:16:3::253 local fc00:16:3::254
sudo ip addr add 10.16.3.254/30 dev gre6tundg003016
sudo ip link set gre6tundg003016 mtu 1300
sudo ip link set gre6tundg003016 up
sudo ip tunnel add 6to4tundg003017 mode sit remote 94.182.138.88 local 138.68.74.97
sudo ip -6 addr add fc00:17:3::254/64 dev 6to4tundg003017
sudo ip link set 6to4tundg003017 mtu 1400
sudo ip link set 6to4tundg003017 up
sudo ip -6 tunnel add gre6tundg003017 mode ip6gre remote fc00:17:3::253 local fc00:17:3::254
sudo ip addr add 10.17.3.254/30 dev gre6tundg003017
sudo ip link set gre6tundg003017 mtu 1300
sudo ip link set gre6tundg003017 up
sudo ip tunnel add 6to4tundg003018 mode sit remote 85.133.194.228 local 138.68.74.97
sudo ip -6 addr add fc00:18:3::254/64 dev 6to4tundg003018
sudo ip link set 6to4tundg003018 mtu 1400
sudo ip link set 6to4tundg003018 up
sudo ip -6 tunnel add gre6tundg003018 mode ip6gre remote fc00:18:3::253 local fc00:18:3::254
sudo ip addr add 10.18.3.254/30 dev gre6tundg003018
sudo ip link set gre6tundg003018 mtu 1300
sudo ip link set gre6tundg003018 up
sudo ip tunnel add 6to4tundg003019 mode sit remote 185.26.32.160 local 138.68.74.97
sudo ip -6 addr add fc00:19:3::254/64 dev 6to4tundg003019
sudo ip link set 6to4tundg003019 mtu 1400
sudo ip link set 6to4tundg003019 up
sudo ip -6 tunnel add gre6tundg003019 mode ip6gre remote fc00:19:3::253 local fc00:19:3::254
sudo ip addr add 10.19.3.254/30 dev gre6tundg003019
sudo ip link set gre6tundg003019 mtu 1300
sudo ip link set gre6tundg003019 up
sudo ip tunnel add 6to4tundg003020 mode sit remote 185.26.32.137 local 138.68.74.97
sudo ip -6 addr add fc00:20:3::254/64 dev 6to4tundg003020
sudo ip link set 6to4tundg003020 mtu 1400
sudo ip link set 6to4tundg003020 up
sudo ip -6 tunnel add gre6tundg003020 mode ip6gre remote fc00:20:3::253 local fc00:20:3::254
sudo ip addr add 10.20.3.254/30 dev gre6tundg003020
sudo ip link set gre6tundg003020 mtu 1300
sudo ip link set gre6tundg003020 up
sudo ip tunnel add 6to4tundg003021 mode sit remote 185.26.32.175 local 138.68.74.97
sudo ip -6 addr add fc00:21:3::254/64 dev 6to4tundg003021
sudo ip link set 6to4tundg003021 mtu 1400
sudo ip link set 6to4tundg003021 up
sudo ip -6 tunnel add gre6tundg003021 mode ip6gre remote fc00:21:3::253 local fc00:21:3::254
sudo ip addr add 10.21.3.254/30 dev gre6tundg003021
sudo ip link set gre6tundg003021 mtu 1300
sudo ip link set gre6tundg003021 up
sudo ip tunnel add 6to4tundg003023 mode sit remote 159.223.208.119 local 138.68.74.97
sudo ip -6 addr add fc00:23:3::254/64 dev 6to4tundg003023
sudo ip link set 6to4tundg003023 mtu 1400
sudo ip link set 6to4tundg003023 up
sudo ip -6 tunnel add gre6tundg003023 mode ip6gre remote fc00:23:3::253 local fc00:23:3::254
sudo ip addr add 10.23.3.254/30 dev gre6tundg003023
sudo ip link set gre6tundg003023 mtu 1300
sudo ip link set gre6tundg003023 up
sudo ip tunnel add 6to4tundg003024 mode sit remote 159.223.220.182 local 138.68.74.97
sudo ip -6 addr add fc00:24:3::254/64 dev 6to4tundg003024
sudo ip link set 6to4tundg003024 mtu 1400
sudo ip link set 6to4tundg003024 up
sudo ip -6 tunnel add gre6tundg003024 mode ip6gre remote fc00:24:3::253 local fc00:24:3::254
sudo ip addr add 10.24.3.254/30 dev gre6tundg003024
sudo ip link set gre6tundg003024 mtu 1300
sudo ip link set gre6tundg003024 up
sudo ip tunnel add 6to4tundg003025 mode sit remote 146.190.235.0 local 138.68.74.97
sudo ip -6 addr add fc00:25:3::254/64 dev 6to4tundg003025
sudo ip link set 6to4tundg003025 mtu 1400
sudo ip link set 6to4tundg003025 up
sudo ip -6 tunnel add gre6tundg003025 mode ip6gre remote fc00:25:3::253 local fc00:25:3::254
sudo ip addr add 10.25.3.254/30 dev gre6tundg003025
sudo ip link set gre6tundg003025 mtu 1300
sudo ip link set gre6tundg003025 up
sudo ip tunnel add 6to4tundg003026 mode sit remote 159.223.212.119 local 138.68.74.97
sudo ip -6 addr add fc00:26:3::254/64 dev 6to4tundg003026
sudo ip link set 6to4tundg003026 mtu 1400
sudo ip link set 6to4tundg003026 up
sudo ip -6 tunnel add gre6tundg003026 mode ip6gre remote fc00:26:3::253 local fc00:26:3::254
sudo ip addr add 10.26.3.254/30 dev gre6tundg003026
sudo ip link set gre6tundg003026 mtu 1300
sudo ip link set gre6tundg003026 up
sudo ip tunnel add 6to4tundg003027 mode sit remote 146.190.227.145 local 138.68.74.97
sudo ip -6 addr add fc00:27:3::254/64 dev 6to4tundg003027
sudo ip link set 6to4tundg003027 mtu 1400
sudo ip link set 6to4tundg003027 up
sudo ip -6 tunnel add gre6tundg003027 mode ip6gre remote fc00:27:3::253 local fc00:27:3::254
sudo ip addr add 10.27.3.254/30 dev gre6tundg003027
sudo ip link set gre6tundg003027 mtu 1300
sudo ip link set gre6tundg003027 up
sudo ip tunnel add 6to4tundg003028 mode sit remote 142.93.133.38 local 138.68.74.97
sudo ip -6 addr add fc00:28:3::254/64 dev 6to4tundg003028
sudo ip link set 6to4tundg003028 mtu 1400
sudo ip link set 6to4tundg003028 up
sudo ip -6 tunnel add gre6tundg003028 mode ip6gre remote fc00:28:3::253 local fc00:28:3::254
sudo ip addr add 10.28.3.254/30 dev gre6tundg003028
sudo ip link set gre6tundg003028 mtu 1300
sudo ip link set gre6tundg003028 up
sudo ip tunnel add 6to4tundg003029 mode sit remote 142.93.133.247 local 138.68.74.97
sudo ip -6 addr add fc00:29:3::254/64 dev 6to4tundg003029
sudo ip link set 6to4tundg003029 mtu 1400
sudo ip link set 6to4tundg003029 up
sudo ip -6 tunnel add gre6tundg003029 mode ip6gre remote fc00:29:3::253 local fc00:29:3::254
sudo ip addr add 10.29.3.254/30 dev gre6tundg003029
sudo ip link set gre6tundg003029 mtu 1300
sudo ip link set gre6tundg003029 up
