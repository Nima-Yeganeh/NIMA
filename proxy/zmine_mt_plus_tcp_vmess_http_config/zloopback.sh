sudo ip link add name lo:1 type dummy
sudo ip link set dev lo:1 up
sudo ip addr add 10.255.255.254/32 dev lo:1
ip addr show lo:1
