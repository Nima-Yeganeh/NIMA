
while true; do
    read -p "Enter an IP address: " ip_address
    ip_regex="^([0-9]{1,3}\.){3}[0-9]{1,3}$"
    if [[ $ip_address =~ $ip_regex ]]; then
        echo "Entered IP address: $ip_address"
        break
    else
        echo "Invalid or blank IP address format. Please try again."
    fi
done
echo "$ip_address"
cat v2ray/config/config.json | grep address
sed -i "s/<UPSTREAM-IP>/$ip_address/g" v2ray/config/config.json
cat v2ray/config/config.json | grep address
echo "IP Address Changed - Done!"

