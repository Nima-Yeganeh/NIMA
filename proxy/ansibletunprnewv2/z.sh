
while IFS=' ' read -r name zip zzuser zzport; do
    if [[ $name == *srvir* ]]; then
        srvir_servers+=("$name")
        ip="${zip#*=}"
        echo $ip
        srvir_ips+=("$ip")
        num=$(echo "$name" | grep -oE '[0-9]+' | head -1)
        srvir_numbers+=("$num")
    elif [[ $name == *srvdigi* ]]; then
        srvdigi_servers+=("$name")
        ip="${zip#*=}"
        echo $ip
        srvdigi_ips+=("$ip")
        num=$(echo "$name" | grep -oE '[0-9]+' | head -1)
        srvdigi_numbers+=("$num")
    fi
done < hosts.ini
