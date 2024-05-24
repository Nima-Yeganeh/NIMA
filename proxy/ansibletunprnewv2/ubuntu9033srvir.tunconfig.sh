sudo ip tunnel add 6to4tunir033001 mode sit remote 157.90.71.217 local 185.26.32.231
sudo ip -6 addr add fc00:33:1::253/64 dev 6to4tunir033001
sudo ip link set 6to4tunir033001 mtu 1400
sudo ip link set 6to4tunir033001 up
sudo ip -6 tunnel add gre6tunir033001 mode ip6gre remote fc00:33:1::254 local fc00:33:1::253
sudo ip addr add 10.33.1.253/30 dev gre6tunir033001
sudo ip link set gre6tunir033001 mtu 1300
sudo ip link set gre6tunir033001 up
sudo ip tunnel add 6to4tunir033002 mode sit remote 148.251.119.123 local 185.26.32.231
sudo ip -6 addr add fc00:33:2::253/64 dev 6to4tunir033002
sudo ip link set 6to4tunir033002 mtu 1400
sudo ip link set 6to4tunir033002 up
sudo ip -6 tunnel add gre6tunir033002 mode ip6gre remote fc00:33:2::254 local fc00:33:2::253
sudo ip addr add 10.33.2.253/30 dev gre6tunir033002
sudo ip link set gre6tunir033002 mtu 1300
sudo ip link set gre6tunir033002 up
sudo ip tunnel add 6to4tunir033003 mode sit remote 136.243.26.216 local 185.26.32.231
sudo ip -6 addr add fc00:33:3::253/64 dev 6to4tunir033003
sudo ip link set 6to4tunir033003 mtu 1400
sudo ip link set 6to4tunir033003 up
sudo ip -6 tunnel add gre6tunir033003 mode ip6gre remote fc00:33:3::254 local fc00:33:3::253
sudo ip addr add 10.33.3.253/30 dev gre6tunir033003
sudo ip link set gre6tunir033003 mtu 1300
sudo ip link set gre6tunir033003 up
sudo ip tunnel add 6to4tunir033004 mode sit remote 209.38.36.161 local 185.26.32.231
sudo ip -6 addr add fc00:33:4::253/64 dev 6to4tunir033004
sudo ip link set 6to4tunir033004 mtu 1400
sudo ip link set 6to4tunir033004 up
sudo ip -6 tunnel add gre6tunir033004 mode ip6gre remote fc00:33:4::254 local fc00:33:4::253
sudo ip addr add 10.33.4.253/30 dev gre6tunir033004
sudo ip link set gre6tunir033004 mtu 1300
sudo ip link set gre6tunir033004 up
sudo ip tunnel add 6to4tunir033005 mode sit remote 136.243.26.215 local 185.26.32.231
sudo ip -6 addr add fc00:33:5::253/64 dev 6to4tunir033005
sudo ip link set 6to4tunir033005 mtu 1400
sudo ip link set 6to4tunir033005 up
sudo ip -6 tunnel add gre6tunir033005 mode ip6gre remote fc00:33:5::254 local fc00:33:5::253
sudo ip addr add 10.33.5.253/30 dev gre6tunir033005
sudo ip link set gre6tunir033005 mtu 1300
sudo ip link set gre6tunir033005 up
sudo ip tunnel add 6to4tunir033006 mode sit remote 152.42.137.215 local 185.26.32.231
sudo ip -6 addr add fc00:33:6::253/64 dev 6to4tunir033006
sudo ip link set 6to4tunir033006 mtu 1400
sudo ip link set 6to4tunir033006 up
sudo ip -6 tunnel add gre6tunir033006 mode ip6gre remote fc00:33:6::254 local fc00:33:6::253
sudo ip addr add 10.33.6.253/30 dev gre6tunir033006
sudo ip link set gre6tunir033006 mtu 1300
sudo ip link set gre6tunir033006 up
sudo ip tunnel add 6to4tunir033007 mode sit remote 139.59.167.164 local 185.26.32.231
sudo ip -6 addr add fc00:33:7::253/64 dev 6to4tunir033007
sudo ip link set 6to4tunir033007 mtu 1400
sudo ip link set 6to4tunir033007 up
sudo ip -6 tunnel add gre6tunir033007 mode ip6gre remote fc00:33:7::254 local fc00:33:7::253
sudo ip addr add 10.33.7.253/30 dev gre6tunir033007
sudo ip link set gre6tunir033007 mtu 1300
sudo ip link set gre6tunir033007 up
sudo ip tunnel add 6to4tunir033008 mode sit remote 206.189.24.175 local 185.26.32.231
sudo ip -6 addr add fc00:33:8::253/64 dev 6to4tunir033008
sudo ip link set 6to4tunir033008 mtu 1400
sudo ip link set 6to4tunir033008 up
sudo ip -6 tunnel add gre6tunir033008 mode ip6gre remote fc00:33:8::254 local fc00:33:8::253
sudo ip addr add 10.33.8.253/30 dev gre6tunir033008
sudo ip link set gre6tunir033008 mtu 1300
sudo ip link set gre6tunir033008 up
sudo ip tunnel add 6to4tunir033009 mode sit remote 142.93.238.98 local 185.26.32.231
sudo ip -6 addr add fc00:33:9::253/64 dev 6to4tunir033009
sudo ip link set 6to4tunir033009 mtu 1400
sudo ip link set 6to4tunir033009 up
sudo ip -6 tunnel add gre6tunir033009 mode ip6gre remote fc00:33:9::254 local fc00:33:9::253
sudo ip addr add 10.33.9.253/30 dev gre6tunir033009
sudo ip link set gre6tunir033009 mtu 1300
sudo ip link set gre6tunir033009 up
