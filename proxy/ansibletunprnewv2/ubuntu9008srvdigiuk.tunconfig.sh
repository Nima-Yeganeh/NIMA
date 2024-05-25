sudo ip tunnel add 6to4tundg008018 mode sit remote 185.26.32.13 local 78.46.205.34
sudo ip -6 addr add fc00:18:8::254/64 dev 6to4tundg008018
sudo ip link set 6to4tundg008018 mtu 1400
sudo ip link set 6to4tundg008018 up
sudo ip -6 tunnel add gre6tundg008018 mode ip6gre remote fc00:18:8::253 local fc00:18:8::254
sudo ip addr add 10.18.8.254/30 dev gre6tundg008018
sudo ip link set gre6tundg008018 mtu 1300
sudo ip link set gre6tundg008018 up
sudo ip tunnel add 6to4tundg008019 mode sit remote 185.26.32.160 local 78.46.205.34
sudo ip -6 addr add fc00:19:8::254/64 dev 6to4tundg008019
sudo ip link set 6to4tundg008019 mtu 1400
sudo ip link set 6to4tundg008019 up
sudo ip -6 tunnel add gre6tundg008019 mode ip6gre remote fc00:19:8::253 local fc00:19:8::254
sudo ip addr add 10.19.8.254/30 dev gre6tundg008019
sudo ip link set gre6tundg008019 mtu 1300
sudo ip link set gre6tundg008019 up
sudo ip tunnel add 6to4tundg008020 mode sit remote 185.26.32.137 local 78.46.205.34
sudo ip -6 addr add fc00:20:8::254/64 dev 6to4tundg008020
sudo ip link set 6to4tundg008020 mtu 1400
sudo ip link set 6to4tundg008020 up
sudo ip -6 tunnel add gre6tundg008020 mode ip6gre remote fc00:20:8::253 local fc00:20:8::254
sudo ip addr add 10.20.8.254/30 dev gre6tundg008020
sudo ip link set gre6tundg008020 mtu 1300
sudo ip link set gre6tundg008020 up
sudo ip tunnel add 6to4tundg008032 mode sit remote 185.26.32.226 local 78.46.205.34
sudo ip -6 addr add fc00:32:8::254/64 dev 6to4tundg008032
sudo ip link set 6to4tundg008032 mtu 1400
sudo ip link set 6to4tundg008032 up
sudo ip -6 tunnel add gre6tundg008032 mode ip6gre remote fc00:32:8::253 local fc00:32:8::254
sudo ip addr add 10.32.8.254/30 dev gre6tundg008032
sudo ip link set gre6tundg008032 mtu 1300
sudo ip link set gre6tundg008032 up
sudo ip tunnel add 6to4tundg008034 mode sit remote 185.26.32.238 local 78.46.205.34
sudo ip -6 addr add fc00:34:8::254/64 dev 6to4tundg008034
sudo ip link set 6to4tundg008034 mtu 1400
sudo ip link set 6to4tundg008034 up
sudo ip -6 tunnel add gre6tundg008034 mode ip6gre remote fc00:34:8::253 local fc00:34:8::254
sudo ip addr add 10.34.8.254/30 dev gre6tundg008034
sudo ip link set gre6tundg008034 mtu 1300
sudo ip link set gre6tundg008034 up
sudo ip tunnel add 6to4tundg008035 mode sit remote 185.26.32.252 local 78.46.205.34
sudo ip -6 addr add fc00:35:8::254/64 dev 6to4tundg008035
sudo ip link set 6to4tundg008035 mtu 1400
sudo ip link set 6to4tundg008035 up
sudo ip -6 tunnel add gre6tundg008035 mode ip6gre remote fc00:35:8::253 local fc00:35:8::254
sudo ip addr add 10.35.8.254/30 dev gre6tundg008035
sudo ip link set gre6tundg008035 mtu 1300
sudo ip link set gre6tundg008035 up
