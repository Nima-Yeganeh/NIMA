#!/bin/bash

# Interface name
interface=$({ ip link show eth0 &>/dev/null && echo "eth0"; } || { ip link show enp1s0 &>/dev/null && echo "enp1s0"; } || { ip link show enp1s0 &>/dev/null && echo "enp1s0"; })

# Get current time in nanoseconds
current_time=$(date +%s%N)

# Get current bytes transmitted and received
tx_bytes_before=$(cat /sys/class/net/$interface/statistics/tx_bytes)
rx_bytes_before=$(cat /sys/class/net/$interface/statistics/rx_bytes)

# Sleep for a short time
sleep 1

# Get bytes transmitted and received after sleep
tx_bytes_after=$(cat /sys/class/net/$interface/statistics/tx_bytes)
rx_bytes_after=$(cat /sys/class/net/$interface/statistics/rx_bytes)

# Calculate the elapsed time in seconds
elapsed_time=$(echo "scale=9; ($current_time - $(date +%s%N)) / 1000000000" | bc)

# Calculate the traffic rate in Mbps
tx_rate=$(echo "scale=2; ($tx_bytes_after - $tx_bytes_before) / $elapsed_time / 125000" | bc)
rx_rate=$(echo "scale=2; ($rx_bytes_after - $rx_bytes_before) / $elapsed_time / 125000" | bc)

# Display traffic rate
echo "$(hostname) >> IP:$(head -n1 /serverip.txt 2>/dev/null) >> Send Traffic Rate: $tx_rate Mbps and Receive Traffic Rate: $rx_rate Mbps" | sed 's/-//g' | sed 's/Rate: \./Rate: 0\./g'


