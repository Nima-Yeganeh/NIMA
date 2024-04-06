
#!/bin/bash
nameservers=("185.51.200.2" "178.22.122.100")

sed -i '/nameserver/d' /etc/resolv.conf
for ns in "${nameservers[@]}"; do
    echo "nameserver $ns" >> /etc/resolv.conf
done
echo "Nameservers updated successfully."
