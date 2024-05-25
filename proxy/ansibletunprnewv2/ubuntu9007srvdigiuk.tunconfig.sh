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
sudo ip tunnel add 6to4tundg007032 mode sit remote 185.26.32.226 local 139.59.167.164
sudo ip -6 addr add fc00:32:7::254/64 dev 6to4tundg007032
sudo ip link set 6to4tundg007032 mtu 1400
sudo ip link set 6to4tundg007032 up
sudo ip -6 tunnel add gre6tundg007032 mode ip6gre remote fc00:32:7::253 local fc00:32:7::254
sudo ip addr add 10.32.7.254/30 dev gre6tundg007032
sudo ip link set gre6tundg007032 mtu 1300
sudo ip link set gre6tundg007032 up
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
