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
sudo ip tunnel add 6to4tundg004032 mode sit remote 185.26.32.226 local 209.38.36.161
sudo ip -6 addr add fc00:32:4::254/64 dev 6to4tundg004032
sudo ip link set 6to4tundg004032 mtu 1400
sudo ip link set 6to4tundg004032 up
sudo ip -6 tunnel add gre6tundg004032 mode ip6gre remote fc00:32:4::253 local fc00:32:4::254
sudo ip addr add 10.32.4.254/30 dev gre6tundg004032
sudo ip link set gre6tundg004032 mtu 1300
sudo ip link set gre6tundg004032 up
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
