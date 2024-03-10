

nameservers=("8.8.8.8" "1.1.1.1")

sed -i '/nameserver/d' /etc/resolv.conf
for ns in "${nameservers[@]}"; do
    echo "nameserver $ns" >> /etc/resolv.conf
done
echo "Nameservers updated successfully."

