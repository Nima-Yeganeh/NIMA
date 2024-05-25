sudo ip tunnel add 6to4tundg002018 mode sit remote 185.26.32.13 local 148.251.119.123
sudo ip -6 addr add fc00:18:2::254/64 dev 6to4tundg002018
sudo ip link set 6to4tundg002018 mtu 1400
sudo ip link set 6to4tundg002018 up
sudo ip -6 tunnel add gre6tundg002018 mode ip6gre remote fc00:18:2::253 local fc00:18:2::254
sudo ip addr add 10.18.2.254/30 dev gre6tundg002018
sudo ip link set gre6tundg002018 mtu 1300
sudo ip link set gre6tundg002018 up
sudo ip tunnel add 6to4tundg002019 mode sit remote 185.26.32.160 local 148.251.119.123
sudo ip -6 addr add fc00:19:2::254/64 dev 6to4tundg002019
sudo ip link set 6to4tundg002019 mtu 1400
sudo ip link set 6to4tundg002019 up
sudo ip -6 tunnel add gre6tundg002019 mode ip6gre remote fc00:19:2::253 local fc00:19:2::254
sudo ip addr add 10.19.2.254/30 dev gre6tundg002019
sudo ip link set gre6tundg002019 mtu 1300
sudo ip link set gre6tundg002019 up
sudo ip tunnel add 6to4tundg002020 mode sit remote 185.26.32.137 local 148.251.119.123
sudo ip -6 addr add fc00:20:2::254/64 dev 6to4tundg002020
sudo ip link set 6to4tundg002020 mtu 1400
sudo ip link set 6to4tundg002020 up
sudo ip -6 tunnel add gre6tundg002020 mode ip6gre remote fc00:20:2::253 local fc00:20:2::254
sudo ip addr add 10.20.2.254/30 dev gre6tundg002020
sudo ip link set gre6tundg002020 mtu 1300
sudo ip link set gre6tundg002020 up
sudo ip tunnel add 6to4tundg002032 mode sit remote 185.26.32.226 local 148.251.119.123
sudo ip -6 addr add fc00:32:2::254/64 dev 6to4tundg002032
sudo ip link set 6to4tundg002032 mtu 1400
sudo ip link set 6to4tundg002032 up
sudo ip -6 tunnel add gre6tundg002032 mode ip6gre remote fc00:32:2::253 local fc00:32:2::254
sudo ip addr add 10.32.2.254/30 dev gre6tundg002032
sudo ip link set gre6tundg002032 mtu 1300
sudo ip link set gre6tundg002032 up
sudo ip tunnel add 6to4tundg002034 mode sit remote 185.26.32.238 local 148.251.119.123
sudo ip -6 addr add fc00:34:2::254/64 dev 6to4tundg002034
sudo ip link set 6to4tundg002034 mtu 1400
sudo ip link set 6to4tundg002034 up
sudo ip -6 tunnel add gre6tundg002034 mode ip6gre remote fc00:34:2::253 local fc00:34:2::254
sudo ip addr add 10.34.2.254/30 dev gre6tundg002034
sudo ip link set gre6tundg002034 mtu 1300
sudo ip link set gre6tundg002034 up
sudo ip tunnel add 6to4tundg002035 mode sit remote 185.26.32.252 local 148.251.119.123
sudo ip -6 addr add fc00:35:2::254/64 dev 6to4tundg002035
sudo ip link set 6to4tundg002035 mtu 1400
sudo ip link set 6to4tundg002035 up
sudo ip -6 tunnel add gre6tundg002035 mode ip6gre remote fc00:35:2::253 local fc00:35:2::254
sudo ip addr add 10.35.2.254/30 dev gre6tundg002035
sudo ip link set gre6tundg002035 mtu 1300
sudo ip link set gre6tundg002035 up
