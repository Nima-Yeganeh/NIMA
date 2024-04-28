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
    local srvir_snum=$(printf "%03d" $(( (srvir_num - 9000) % 1000 )))
    local srvdigi_ip="$4"
    local srvdigi_name="$5"
    local srvdigi_num="$6"
    local srvdigi_xnum=$((srvdigi_num - 9000))
    local srvdigi_snum=$(printf "%03d" $(( (srvdigi_num - 9000) % 1000 )))
    local irtun="6to4tunir$srvir_snum$srvdigi_snum"
    local irtungre="gre6tunir$srvir_snum$srvdigi_snum"
    local digitun="6to4tundg$srvdigi_snum$srvir_snum"
    local digitungre="gre6tundg$srvdigi_snum$srvir_snum"
    local irtcpportnum=$((srvdigi_num - 9000 + 8000))
    local irwsportnum=$((srvdigi_num - 9000 + 7000))
    local srvirtundelconfigfilename="$srvir_name.tundelconfig.sh"
    local srvdigitundelconfigfilename="$srvdigi_name.tundelconfig.sh"
    local srvirtunconfigfilename="$srvir_name.tunconfig.sh"
    local srvdigitunconfigfilename="$srvdigi_name.tunconfig.sh"
    local srvirhttpconfigfilename="$srvir_name.httpconfig.sh"
    local srvdigihttpconfigfilename="$srvdigi_name.httpconfig.sh"
    local srvirv2rayconfigfilename="$srvir_name$srvdigi_name.v2rayconfig.conf"
    local srvdigiv2rayconfigfilename="$srvdigi_name.v2rayconfig.conf"
    local srvirdockerfilename="$srvir_name.dockerconfig.yml"
    local srvdigidockerfilename="$srvdigi_name.dockerconfig.yml"
    local srvirdockermakefilename="$srvir_name.dockermake.sh"
    local srvdigidockermakefilename="$srvdigi_name.dockermake.sh"

    # echo "$srvir_ip $srvir_name $srvir_num $srvdigi_ip $srvdigi_name $srvdigi_num"
    # echo $srvirtunconfigfilename
    # echo $srvdigitunconfigfilename
    # echo "$srvir_ip $srvir_name $srvir_num $srvdigi_ip $srvdigi_name $srvdigi_num" >> $srvirtunconfigfilename
    # echo "$srvir_ip $srvir_name $srvir_num $srvdigi_ip $srvdigi_name $srvdigi_num" >> $srvdigitunconfigfilename

    echo "sudo ip tunnel del $irtun" >> $srvirtundelconfigfilename
    echo "sudo ip -6 tunnel del $irtungre" >> $srvirtundelconfigfilename

    echo "sudo ip tunnel del $digitun" >> $srvdigitundelconfigfilename
    echo "sudo ip -6 tunnel del $digitungre" >> $srvdigitundelconfigfilename

    echo "sudo ip tunnel add $irtun mode sit remote $srvdigi_ip local $srvir_ip" >> $srvirtunconfigfilename
    echo "sudo ip -6 addr add fc00:$srvir_xnum:$srvdigi_xnum::253/64 dev $irtun" >> $srvirtunconfigfilename
    echo "sudo ip link set $irtun mtu 1400" >> $srvirtunconfigfilename
    echo "sudo ip link set $irtun up" >> $srvirtunconfigfilename
    echo "sudo ip -6 tunnel add $irtungre mode ip6gre remote fc00:$srvir_xnum:$srvdigi_xnum::254 local fc00:$srvir_xnum:$srvdigi_xnum::253" >> $srvirtunconfigfilename
    echo "sudo ip addr add 10.$srvir_xnum.$srvdigi_xnum.253/30 dev $irtungre" >> $srvirtunconfigfilename
    echo "sudo ip link set $irtungre mtu 1300" >> $srvirtunconfigfilename
    echo "sudo ip link set $irtungre up" >> $srvirtunconfigfilename

    echo "sudo ip tunnel add $digitun mode sit remote $srvir_ip local $srvdigi_ip" >> $srvdigitunconfigfilename
    echo "sudo ip -6 addr add fc00:$srvir_xnum:$srvdigi_xnum::254/64 dev $digitun" >> $srvdigitunconfigfilename
    echo "sudo ip link set $digitun mtu 1400" >> $srvdigitunconfigfilename
    echo "sudo ip link set $digitun up" >> $srvdigitunconfigfilename
    echo "sudo ip -6 tunnel add $digitungre mode ip6gre remote fc00:$srvir_xnum:$srvdigi_xnum::253 local fc00:$srvir_xnum:$srvdigi_xnum::254" >> $srvdigitunconfigfilename
    echo "sudo ip addr add 10.$srvir_xnum.$srvdigi_xnum.254/30 dev $digitungre" >> $srvdigitunconfigfilename
    echo "sudo ip link set $digitungre mtu 1300" >> $srvdigitunconfigfilename
    echo "sudo ip link set $digitungre up" >> $srvdigitunconfigfilename

    echo "sudo socat TCP-LISTEN:443,fork TCP:142.250.179.132:443 & sudo socat TCP-LISTEN:80,fork TCP:142.250.179.132:80 &" > $srvirhttpconfigfilename
    echo "sudo socat TCP-LISTEN:443,fork TCP:142.250.179.132:443 & sudo socat TCP-LISTEN:80,fork TCP:142.250.179.132:80 &" > $srvdigihttpconfigfilename

    # echo $irtcpportnum
    # echo $irwsportnum
    cat ztempirv2rayconfig.conf | sed "s/10\.255\.255\.255/10.$srvir_xnum.$srvdigi_xnum.254/g; s/7999/$irwsportnum/g; s/8999/$irtcpportnum/g" >> $srvirv2rayconfigfilename
    cat ztempdigiv2rayconfig.conf >> $srvdigiv2rayconfigfilename

    # echo "" >> $srvirdockerfilename
    # echo "" >> $srvdigidockerfilename

    echo "  v2ray_ir_$srvir_snum$srvdigi_snum:" >> $srvirdockerfilename
    echo "    image: ghcr.io/v2fly/v2ray:v5.14.1-64-std" >> $srvirdockerfilename
    echo "    restart: always" >> $srvirdockerfilename
    echo "    environment:" >> $srvirdockerfilename
    echo "      - v2ray.vmess.aead.forced=false" >> $srvirdockerfilename
    echo "    ports:" >> $srvirdockerfilename
    echo "      - '$irwsportnum:$irwsportnum'" >> $srvirdockerfilename
    echo "      - '$irtcpportnum:$irtcpportnum'" >> $srvirdockerfilename
    echo "    volumes:" >> $srvirdockerfilename
    echo "      - /$srvirv2rayconfigfilename:/etc/v2ray/config.json" >> $srvirdockerfilename

    echo "  v2ray_digi_$srvdigi_snum:" > $srvdigidockerfilename
    echo "    image: ghcr.io/v2fly/v2ray:v5.14.1-64-std" >> $srvdigidockerfilename
    echo "    restart: always" >> $srvdigidockerfilename
    echo "    environment:" >> $srvdigidockerfilename
    echo "      - v2ray.vmess.aead.forced=false" >> $srvdigidockerfilename
    echo "    ports:" >> $srvdigidockerfilename
    echo "      - '9000:9000'" >> $srvdigidockerfilename
    echo "    volumes:" >> $srvdigidockerfilename
    echo "      - /$srvdigiv2rayconfigfilename:/etc/v2ray/config.json" >> $srvdigidockerfilename

    echo "cat /$srvirdockerfilename >> /docker-compose.yml" > $srvirdockermakefilename
    echo "cat /$srvdigidockerfilename >> /docker-compose.yml" > $srvdigidockermakefilename

}

rm -rf *.tundelconfig.sh
rm -rf *.tunconfig.sh
rm -rf *.httpconfig.sh
rm -rf *.v2rayconfig.conf
rm -rf *.dockerconfig.yml

# Read from hosts.ini file
while IFS=' ' read -r name zip; do
    if [[ $name == *srvir* ]]; then
        srvir_servers+=("$name")
        ip="${zip#*=}"
        # echo $ip
        srvir_ips+=("$ip")
        num=$(echo "$name" | grep -oE '[0-9]+' | head -1)
        srvir_numbers+=("$num")
    elif [[ $name == *srvdigi* ]]; then
        srvdigi_servers+=("$name")
        ip="${zip#*=}"
        # echo $ip
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
