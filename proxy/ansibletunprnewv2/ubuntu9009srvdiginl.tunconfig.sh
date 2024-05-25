sudo ip tunnel add 6to4tundg009018 mode sit remote 185.26.32.13 local 142.93.238.98
sudo ip -6 addr add fc00:18:9::254/64 dev 6to4tundg009018
sudo ip link set 6to4tundg009018 mtu 1400
sudo ip link set 6to4tundg009018 up
sudo ip -6 tunnel add gre6tundg009018 mode ip6gre remote fc00:18:9::253 local fc00:18:9::254
sudo ip addr add 10.18.9.254/30 dev gre6tundg009018
sudo ip link set gre6tundg009018 mtu 1300
sudo ip link set gre6tundg009018 up
sudo ip tunnel add 6to4tundg009019 mode sit remote 185.26.32.160 local 142.93.238.98
sudo ip -6 addr add fc00:19:9::254/64 dev 6to4tundg009019
sudo ip link set 6to4tundg009019 mtu 1400
sudo ip link set 6to4tundg009019 up
sudo ip -6 tunnel add gre6tundg009019 mode ip6gre remote fc00:19:9::253 local fc00:19:9::254
sudo ip addr add 10.19.9.254/30 dev gre6tundg009019
sudo ip link set gre6tundg009019 mtu 1300
sudo ip link set gre6tundg009019 up
sudo ip tunnel add 6to4tundg009020 mode sit remote 185.26.32.137 local 142.93.238.98
sudo ip -6 addr add fc00:20:9::254/64 dev 6to4tundg009020
sudo ip link set 6to4tundg009020 mtu 1400
sudo ip link set 6to4tundg009020 up
sudo ip -6 tunnel add gre6tundg009020 mode ip6gre remote fc00:20:9::253 local fc00:20:9::254
sudo ip addr add 10.20.9.254/30 dev gre6tundg009020
sudo ip link set gre6tundg009020 mtu 1300
sudo ip link set gre6tundg009020 up
sudo ip tunnel add 6to4tundg009032 mode sit remote 185.26.32.226 local 142.93.238.98
sudo ip -6 addr add fc00:32:9::254/64 dev 6to4tundg009032
sudo ip link set 6to4tundg009032 mtu 1400
sudo ip link set 6to4tundg009032 up
sudo ip -6 tunnel add gre6tundg009032 mode ip6gre remote fc00:32:9::253 local fc00:32:9::254
sudo ip addr add 10.32.9.254/30 dev gre6tundg009032
sudo ip link set gre6tundg009032 mtu 1300
sudo ip link set gre6tundg009032 up
sudo ip tunnel add 6to4tundg009034 mode sit remote 185.26.32.238 local 142.93.238.98
sudo ip -6 addr add fc00:34:9::254/64 dev 6to4tundg009034
sudo ip link set 6to4tundg009034 mtu 1400
sudo ip link set 6to4tundg009034 up
sudo ip -6 tunnel add gre6tundg009034 mode ip6gre remote fc00:34:9::253 local fc00:34:9::254
sudo ip addr add 10.34.9.254/30 dev gre6tundg009034
sudo ip link set gre6tundg009034 mtu 1300
sudo ip link set gre6tundg009034 up
sudo ip tunnel add 6to4tundg009035 mode sit remote 185.26.32.252 local 142.93.238.98
sudo ip -6 addr add fc00:35:9::254/64 dev 6to4tundg009035
sudo ip link set 6to4tundg009035 mtu 1400
sudo ip link set 6to4tundg009035 up
sudo ip -6 tunnel add gre6tundg009035 mode ip6gre remote fc00:35:9::253 local fc00:35:9::254
sudo ip addr add 10.35.9.254/30 dev gre6tundg009035
sudo ip link set gre6tundg009035 mtu 1300
sudo ip link set gre6tundg009035 up
