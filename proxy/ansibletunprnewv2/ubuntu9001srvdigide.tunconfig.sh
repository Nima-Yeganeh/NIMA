sudo ip tunnel add 6to4tundg001018 mode sit remote 185.26.32.13 local 157.90.71.217
sudo ip -6 addr add fc00:18:1::254/64 dev 6to4tundg001018
sudo ip link set 6to4tundg001018 mtu 1400
sudo ip link set 6to4tundg001018 up
sudo ip -6 tunnel add gre6tundg001018 mode ip6gre remote fc00:18:1::253 local fc00:18:1::254
sudo ip addr add 10.18.1.254/30 dev gre6tundg001018
sudo ip link set gre6tundg001018 mtu 1300
sudo ip link set gre6tundg001018 up
sudo ip tunnel add 6to4tundg001019 mode sit remote 185.26.32.160 local 157.90.71.217
sudo ip -6 addr add fc00:19:1::254/64 dev 6to4tundg001019
sudo ip link set 6to4tundg001019 mtu 1400
sudo ip link set 6to4tundg001019 up
sudo ip -6 tunnel add gre6tundg001019 mode ip6gre remote fc00:19:1::253 local fc00:19:1::254
sudo ip addr add 10.19.1.254/30 dev gre6tundg001019
sudo ip link set gre6tundg001019 mtu 1300
sudo ip link set gre6tundg001019 up
sudo ip tunnel add 6to4tundg001020 mode sit remote 185.26.32.137 local 157.90.71.217
sudo ip -6 addr add fc00:20:1::254/64 dev 6to4tundg001020
sudo ip link set 6to4tundg001020 mtu 1400
sudo ip link set 6to4tundg001020 up
sudo ip -6 tunnel add gre6tundg001020 mode ip6gre remote fc00:20:1::253 local fc00:20:1::254
sudo ip addr add 10.20.1.254/30 dev gre6tundg001020
sudo ip link set gre6tundg001020 mtu 1300
sudo ip link set gre6tundg001020 up
sudo ip tunnel add 6to4tundg001032 mode sit remote 185.26.32.226 local 157.90.71.217
sudo ip -6 addr add fc00:32:1::254/64 dev 6to4tundg001032
sudo ip link set 6to4tundg001032 mtu 1400
sudo ip link set 6to4tundg001032 up
sudo ip -6 tunnel add gre6tundg001032 mode ip6gre remote fc00:32:1::253 local fc00:32:1::254
sudo ip addr add 10.32.1.254/30 dev gre6tundg001032
sudo ip link set gre6tundg001032 mtu 1300
sudo ip link set gre6tundg001032 up
sudo ip tunnel add 6to4tundg001034 mode sit remote 185.26.32.238 local 157.90.71.217
sudo ip -6 addr add fc00:34:1::254/64 dev 6to4tundg001034
sudo ip link set 6to4tundg001034 mtu 1400
sudo ip link set 6to4tundg001034 up
sudo ip -6 tunnel add gre6tundg001034 mode ip6gre remote fc00:34:1::253 local fc00:34:1::254
sudo ip addr add 10.34.1.254/30 dev gre6tundg001034
sudo ip link set gre6tundg001034 mtu 1300
sudo ip link set gre6tundg001034 up
sudo ip tunnel add 6to4tundg001035 mode sit remote 185.26.32.252 local 157.90.71.217
sudo ip -6 addr add fc00:35:1::254/64 dev 6to4tundg001035
sudo ip link set 6to4tundg001035 mtu 1400
sudo ip link set 6to4tundg001035 up
sudo ip -6 tunnel add gre6tundg001035 mode ip6gre remote fc00:35:1::253 local fc00:35:1::254
sudo ip addr add 10.35.1.254/30 dev gre6tundg001035
sudo ip link set gre6tundg001035 mtu 1300
sudo ip link set gre6tundg001035 up
