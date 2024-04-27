#!/bin/bash

# Arrays to store srvir and srvdigi servers
srvir_servers=()
srvir_ips=()
srvir_numbers=()
srvdigi_servers=()
srvdigi_ips=()
srvdigi_numbers=()

# Function to echo server details
echo_server_combinations() {
    local srvir_ip="$1"
    local srvir_name="$2"
    local srvir_num="$3"
    local srvir_xnum=$((srvir_num - 9000))
    local srvdigi_ip="$4"
    local srvdigi_name="$5"
    local srvdigi_num="$6"
    local srvdigi_xnum=$((srvdigi_num - 9000))
    local irtun="6to4tunir$srvir_num$srvdigi_num"
    local irtungre="gre6tunir$srvir_num$srvdigi_num"
    local digitun="6to4tundigi$srvdigi_num$srvir_num"
    local digitungre="gre6tundigi$srvdigi_num$srvir_num"

    # echo "$srvir_ip $srvir_name $srvir_num $srvdigi_ip $srvdigi_name $srvdigi_num"
    srvirtunconfigfilename="$srvir_name.tunconfig.sh"    
    srvdigitunconfigfilename="$srvdigi_name.tunconfig.sh"

    # echo $srvirtunconfigfilename
    # echo $srvdigitunconfigfilename
    # echo "$srvir_ip $srvir_name $srvir_num $srvdigi_ip $srvdigi_name $srvdigi_num" >> $srvirtunconfigfilename
    # echo "$srvir_ip $srvir_name $srvir_num $srvdigi_ip $srvdigi_name $srvdigi_num" >> $srvdigitunconfigfilename

    echo "sudo ip tunnel add $irtun mode sit remote $srvdigi_ip local $srvir_ip" >> $srvirtunconfigfilename
    echo "sudo ip -6 addr add fc00:$srvir_xnum:$srvdigi_xnum::1/64 dev $irtun" >> $srvirtunconfigfilename
    echo "sudo ip link set $irtun mtu 1400" >> $srvirtunconfigfilename
    echo "sudo ip link set $irtun up" >> $srvirtunconfigfilename
    echo "sudo ip -6 tunnel add $irtungre mode ip6gre remote fc00:$srvir_xnum:$srvdigi_xnum::2 local fc00:$srvir_xnum:$srvdigi_xnum::1" >> $srvirtunconfigfilename
    echo "sudo ip addr add 10.$srvir_xnum.$srvdigi_xnum.1/30 dev $irtungre" >> $srvirtunconfigfilename
    echo "sudo ip link set $irtungre mtu 1300" >> $srvirtunconfigfilename
    echo "sudo ip link set $irtungre up" >> $srvirtunconfigfilename

    echo "sudo ip tunnel add $digitun mode sit remote $srvir_ip local $srvdigi_ip" >> $srvdigitunconfigfilename
    echo "sudo ip -6 addr add fc00:$srvir_xnum:$srvdigi_xnum::1/64 dev $digitun" >> $srvdigitunconfigfilename
    echo "sudo ip link set $digitun mtu 1400" >> $srvdigitunconfigfilename
    echo "sudo ip link set $digitun up" >> $srvdigitunconfigfilename
    echo "sudo ip -6 tunnel add $digitungre mode ip6gre remote fc00:$srvir_xnum:$srvdigi_xnum::1 local fc00:$srvir_xnum:$srvdigi_xnum::2" >> $srvdigitunconfigfilename
    echo "sudo ip addr add 10.$srvir_xnum.$srvdigi_xnum.1/30 dev $digitungre" >> $srvdigitunconfigfilename
    echo "sudo ip link set $digitungre mtu 1300" >> $srvdigitunconfigfilename
    echo "sudo ip link set $digitungre up" >> $srvdigitunconfigfilename

}

rm -rf *.tunconfig.sh

# Read from hosts.ini file
while IFS=' ' read -r ip name; do
    if [[ $name == *srvir* ]]; then
        srvir_servers+=("$name")
        srvir_ips+=("$ip")
        num=$(echo "$name" | grep -oE '[0-9]+' | head -1)
        srvir_numbers+=("$num")
    elif [[ $name == *srvdigi* ]]; then
        srvdigi_servers+=("$name")
        srvdigi_ips+=("$ip")
        num=$(echo "$name" | grep -oE '[0-9]+' | head -1)
        srvdigi_numbers+=("$num")
    fi
done < hosts.ini

# Output combinations
for srvir_index in "${!srvir_servers[@]}"; do
    for srvdigi_index in "${!srvdigi_servers[@]}"; do
        srvir_num="${srvir_numbers[$srvir_index]}"
        srvdigi_num="${srvdigi_numbers[$srvdigi_index]}"
        if [[ $srvir_num -ge 9000 && $srvir_num -le 9999 && $srvdigi_num -ge 9000 && $srvdigi_num -le 9999 ]]; then
            echo_server_combinations "${srvir_ips[$srvir_index]}" "${srvir_servers[$srvir_index]}" "$srvir_num" "${srvdigi_ips[$srvdigi_index]}" "${srvdigi_servers[$srvdigi_index]}" "$srvdigi_num"
        fi
    done
done
