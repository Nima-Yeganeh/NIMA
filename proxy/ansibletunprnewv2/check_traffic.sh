#!/bin/bash

# Interface name
interface=$({ ip link show eth0 &>/dev/null && echo "eth0"; } || { ip link show enp1s0 &>/dev/null && echo "enp1s0"; } || { ip link show ens3 &>/dev/null && echo "ens3"; })

# Extract send and receive statistics
send=$(ifconfig $interface | grep "TX packets" | awk '{print $6 " " $7}')
receive=$(ifconfig $interface | grep "RX packets" | awk '{print $6 " " $7}')

# echo $send
# echo $receive

# Display statistics
echo "$(hostname) >> IP:$(head -n1 /serverip.txt 2>/dev/null) >> Send Traffic: $send packets and Receive Traffic: $receive packets"


