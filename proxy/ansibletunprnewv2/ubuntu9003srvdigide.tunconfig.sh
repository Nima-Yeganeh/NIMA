sudo ip tunnel add 6to4tundg003018 mode sit remote 185.26.32.13 local 136.243.26.216
sudo ip -6 addr add fc00:18:3::254/64 dev 6to4tundg003018
sudo ip link set 6to4tundg003018 mtu 1400
sudo ip link set 6to4tundg003018 up
sudo ip -6 tunnel add gre6tundg003018 mode ip6gre remote fc00:18:3::253 local fc00:18:3::254
sudo ip addr add 10.18.3.254/30 dev gre6tundg003018
sudo ip link set gre6tundg003018 mtu 1300
sudo ip link set gre6tundg003018 up
sudo ip tunnel add 6to4tundg003019 mode sit remote 185.26.32.160 local 136.243.26.216
sudo ip -6 addr add fc00:19:3::254/64 dev 6to4tundg003019
sudo ip link set 6to4tundg003019 mtu 1400
sudo ip link set 6to4tundg003019 up
sudo ip -6 tunnel add gre6tundg003019 mode ip6gre remote fc00:19:3::253 local fc00:19:3::254
sudo ip addr add 10.19.3.254/30 dev gre6tundg003019
sudo ip link set gre6tundg003019 mtu 1300
sudo ip link set gre6tundg003019 up
sudo ip tunnel add 6to4tundg003020 mode sit remote 185.26.32.137 local 136.243.26.216
sudo ip -6 addr add fc00:20:3::254/64 dev 6to4tundg003020
sudo ip link set 6to4tundg003020 mtu 1400
sudo ip link set 6to4tundg003020 up
sudo ip -6 tunnel add gre6tundg003020 mode ip6gre remote fc00:20:3::253 local fc00:20:3::254
sudo ip addr add 10.20.3.254/30 dev gre6tundg003020
sudo ip link set gre6tundg003020 mtu 1300
sudo ip link set gre6tundg003020 up
sudo ip tunnel add 6to4tundg003032 mode sit remote 185.26.32.226 local 136.243.26.216
sudo ip -6 addr add fc00:32:3::254/64 dev 6to4tundg003032
sudo ip link set 6to4tundg003032 mtu 1400
sudo ip link set 6to4tundg003032 up
sudo ip -6 tunnel add gre6tundg003032 mode ip6gre remote fc00:32:3::253 local fc00:32:3::254
sudo ip addr add 10.32.3.254/30 dev gre6tundg003032
sudo ip link set gre6tundg003032 mtu 1300
sudo ip link set gre6tundg003032 up
sudo ip tunnel add 6to4tundg003034 mode sit remote 185.26.32.238 local 136.243.26.216
sudo ip -6 addr add fc00:34:3::254/64 dev 6to4tundg003034
sudo ip link set 6to4tundg003034 mtu 1400
sudo ip link set 6to4tundg003034 up
sudo ip -6 tunnel add gre6tundg003034 mode ip6gre remote fc00:34:3::253 local fc00:34:3::254
sudo ip addr add 10.34.3.254/30 dev gre6tundg003034
sudo ip link set gre6tundg003034 mtu 1300
sudo ip link set gre6tundg003034 up
sudo ip tunnel add 6to4tundg003035 mode sit remote 185.26.32.252 local 136.243.26.216
sudo ip -6 addr add fc00:35:3::254/64 dev 6to4tundg003035
sudo ip link set 6to4tundg003035 mtu 1400
sudo ip link set 6to4tundg003035 up
sudo ip -6 tunnel add gre6tundg003035 mode ip6gre remote fc00:35:3::253 local fc00:35:3::254
sudo ip addr add 10.35.3.254/30 dev gre6tundg003035
sudo ip link set gre6tundg003035 mtu 1300
sudo ip link set gre6tundg003035 up
