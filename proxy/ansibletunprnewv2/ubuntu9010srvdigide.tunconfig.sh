sudo ip tunnel add 6to4tundg010036 mode sit remote 185.26.32.226 local 136.243.26.215
sudo ip -6 addr add fc00:36:10::254/64 dev 6to4tundg010036
sudo ip link set 6to4tundg010036 mtu 1400
sudo ip link set 6to4tundg010036 up
sudo ip -6 tunnel add gre6tundg010036 mode ip6gre remote fc00:36:10::253 local fc00:36:10::254
sudo ip addr add 10.36.10.254/30 dev gre6tundg010036
sudo ip link set gre6tundg010036 mtu 1300
sudo ip link set gre6tundg010036 up
