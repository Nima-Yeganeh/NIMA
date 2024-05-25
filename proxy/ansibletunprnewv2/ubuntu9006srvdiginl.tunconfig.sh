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
sudo ip tunnel add 6to4tundg006032 mode sit remote 185.26.32.226 local 152.42.137.215
sudo ip -6 addr add fc00:32:6::254/64 dev 6to4tundg006032
sudo ip link set 6to4tundg006032 mtu 1400
sudo ip link set 6to4tundg006032 up
sudo ip -6 tunnel add gre6tundg006032 mode ip6gre remote fc00:32:6::253 local fc00:32:6::254
sudo ip addr add 10.32.6.254/30 dev gre6tundg006032
sudo ip link set gre6tundg006032 mtu 1300
sudo ip link set gre6tundg006032 up
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
