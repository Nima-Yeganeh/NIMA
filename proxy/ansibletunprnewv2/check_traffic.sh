#!/bin/bash

# Interface name
interface="eth0"

# Extract send and receive statistics
send=$(ifconfig $interface | grep "TX packets" | awk '{print $6 " " $7}')
receive=$(ifconfig $interface | grep "RX packets" | awk '{print $6 " " $7}')

# Display statistics
echo "Send Traffic: $send packets and Receive Traffic: $receive packets"

# interface="eth0"; send=$(ifconfig $interface | grep "TX packets" | awk '{print $6 " " $7}'); receive=$(ifconfig $interface | grep "RX packets" | awk '{print $6 " " $7}'); echo "Send Traffic: $send packets and Receive Traffic: $receive packets"

