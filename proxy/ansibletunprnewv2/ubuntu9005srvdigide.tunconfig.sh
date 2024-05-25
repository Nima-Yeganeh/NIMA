sudo ip tunnel add 6to4tundg005018 mode sit remote 185.26.32.13 local 136.243.26.215
sudo ip -6 addr add fc00:18:5::254/64 dev 6to4tundg005018
sudo ip link set 6to4tundg005018 mtu 1400
sudo ip link set 6to4tundg005018 up
sudo ip -6 tunnel add gre6tundg005018 mode ip6gre remote fc00:18:5::253 local fc00:18:5::254
sudo ip addr add 10.18.5.254/30 dev gre6tundg005018
sudo ip link set gre6tundg005018 mtu 1300
sudo ip link set gre6tundg005018 up
sudo ip tunnel add 6to4tundg005019 mode sit remote 185.26.32.160 local 136.243.26.215
sudo ip -6 addr add fc00:19:5::254/64 dev 6to4tundg005019
sudo ip link set 6to4tundg005019 mtu 1400
sudo ip link set 6to4tundg005019 up
sudo ip -6 tunnel add gre6tundg005019 mode ip6gre remote fc00:19:5::253 local fc00:19:5::254
sudo ip addr add 10.19.5.254/30 dev gre6tundg005019
sudo ip link set gre6tundg005019 mtu 1300
sudo ip link set gre6tundg005019 up
sudo ip tunnel add 6to4tundg005020 mode sit remote 185.26.32.137 local 136.243.26.215
sudo ip -6 addr add fc00:20:5::254/64 dev 6to4tundg005020
sudo ip link set 6to4tundg005020 mtu 1400
sudo ip link set 6to4tundg005020 up
sudo ip -6 tunnel add gre6tundg005020 mode ip6gre remote fc00:20:5::253 local fc00:20:5::254
sudo ip addr add 10.20.5.254/30 dev gre6tundg005020
sudo ip link set gre6tundg005020 mtu 1300
sudo ip link set gre6tundg005020 up
sudo ip tunnel add 6to4tundg005032 mode sit remote 185.26.32.226 local 136.243.26.215
sudo ip -6 addr add fc00:32:5::254/64 dev 6to4tundg005032
sudo ip link set 6to4tundg005032 mtu 1400
sudo ip link set 6to4tundg005032 up
sudo ip -6 tunnel add gre6tundg005032 mode ip6gre remote fc00:32:5::253 local fc00:32:5::254
sudo ip addr add 10.32.5.254/30 dev gre6tundg005032
sudo ip link set gre6tundg005032 mtu 1300
sudo ip link set gre6tundg005032 up
sudo ip tunnel add 6to4tundg005034 mode sit remote 185.26.32.238 local 136.243.26.215
sudo ip -6 addr add fc00:34:5::254/64 dev 6to4tundg005034
sudo ip link set 6to4tundg005034 mtu 1400
sudo ip link set 6to4tundg005034 up
sudo ip -6 tunnel add gre6tundg005034 mode ip6gre remote fc00:34:5::253 local fc00:34:5::254
sudo ip addr add 10.34.5.254/30 dev gre6tundg005034
sudo ip link set gre6tundg005034 mtu 1300
sudo ip link set gre6tundg005034 up
sudo ip tunnel add 6to4tundg005035 mode sit remote 185.26.32.252 local 136.243.26.215
sudo ip -6 addr add fc00:35:5::254/64 dev 6to4tundg005035
sudo ip link set 6to4tundg005035 mtu 1400
sudo ip link set 6to4tundg005035 up
sudo ip -6 tunnel add gre6tundg005035 mode ip6gre remote fc00:35:5::253 local fc00:35:5::254
sudo ip addr add 10.35.5.254/30 dev gre6tundg005035
sudo ip link set gre6tundg005035 mtu 1300
sudo ip link set gre6tundg005035 up
