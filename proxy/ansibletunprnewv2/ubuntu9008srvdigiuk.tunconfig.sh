sudo ip tunnel add 6to4tundg008001 mode sit remote 31.216.62.115 local 206.189.24.175
sudo ip -6 addr add fc00:1:8::254/64 dev 6to4tundg008001
sudo ip link set 6to4tundg008001 mtu 1400
sudo ip link set 6to4tundg008001 up
sudo ip -6 tunnel add gre6tundg008001 mode ip6gre remote fc00:1:8::253 local fc00:1:8::254
sudo ip addr add 10.1.8.254/30 dev gre6tundg008001
sudo ip link set gre6tundg008001 mtu 1300
sudo ip link set gre6tundg008001 up
sudo ip tunnel add 6to4tundg008002 mode sit remote 5.57.33.8 local 206.189.24.175
sudo ip -6 addr add fc00:2:8::254/64 dev 6to4tundg008002
sudo ip link set 6to4tundg008002 mtu 1400
sudo ip link set 6to4tundg008002 up
sudo ip -6 tunnel add gre6tundg008002 mode ip6gre remote fc00:2:8::253 local fc00:2:8::254
sudo ip addr add 10.2.8.254/30 dev gre6tundg008002
sudo ip link set gre6tundg008002 mtu 1300
sudo ip link set gre6tundg008002 up
sudo ip tunnel add 6to4tundg008003 mode sit remote 94.182.223.249 local 206.189.24.175
sudo ip -6 addr add fc00:3:8::254/64 dev 6to4tundg008003
sudo ip link set 6to4tundg008003 mtu 1400
sudo ip link set 6to4tundg008003 up
sudo ip -6 tunnel add gre6tundg008003 mode ip6gre remote fc00:3:8::253 local fc00:3:8::254
sudo ip addr add 10.3.8.254/30 dev gre6tundg008003
sudo ip link set gre6tundg008003 mtu 1300
sudo ip link set gre6tundg008003 up
sudo ip tunnel add 6to4tundg008004 mode sit remote 94.182.150.22 local 206.189.24.175
sudo ip -6 addr add fc00:4:8::254/64 dev 6to4tundg008004
sudo ip link set 6to4tundg008004 mtu 1400
sudo ip link set 6to4tundg008004 up
sudo ip -6 tunnel add gre6tundg008004 mode ip6gre remote fc00:4:8::253 local fc00:4:8::254
sudo ip addr add 10.4.8.254/30 dev gre6tundg008004
sudo ip link set gre6tundg008004 mtu 1300
sudo ip link set gre6tundg008004 up
sudo ip tunnel add 6to4tundg008005 mode sit remote 31.216.62.66 local 206.189.24.175
sudo ip -6 addr add fc00:5:8::254/64 dev 6to4tundg008005
sudo ip link set 6to4tundg008005 mtu 1400
sudo ip link set 6to4tundg008005 up
sudo ip -6 tunnel add gre6tundg008005 mode ip6gre remote fc00:5:8::253 local fc00:5:8::254
sudo ip addr add 10.5.8.254/30 dev gre6tundg008005
sudo ip link set gre6tundg008005 mtu 1300
sudo ip link set gre6tundg008005 up
sudo ip tunnel add 6to4tundg008006 mode sit remote 185.73.0.205 local 206.189.24.175
sudo ip -6 addr add fc00:6:8::254/64 dev 6to4tundg008006
sudo ip link set 6to4tundg008006 mtu 1400
sudo ip link set 6to4tundg008006 up
sudo ip -6 tunnel add gre6tundg008006 mode ip6gre remote fc00:6:8::253 local fc00:6:8::254
sudo ip addr add 10.6.8.254/30 dev gre6tundg008006
sudo ip link set gre6tundg008006 mtu 1300
sudo ip link set gre6tundg008006 up
sudo ip tunnel add 6to4tundg008007 mode sit remote 31.216.62.162 local 206.189.24.175
sudo ip -6 addr add fc00:7:8::254/64 dev 6to4tundg008007
sudo ip link set 6to4tundg008007 mtu 1400
sudo ip link set 6to4tundg008007 up
sudo ip -6 tunnel add gre6tundg008007 mode ip6gre remote fc00:7:8::253 local fc00:7:8::254
sudo ip addr add 10.7.8.254/30 dev gre6tundg008007
sudo ip link set gre6tundg008007 mtu 1300
sudo ip link set gre6tundg008007 up
