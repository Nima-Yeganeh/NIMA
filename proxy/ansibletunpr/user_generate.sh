#!/bin/bash

# Default values
protocol="tcp"
days=30
tunnel_id=101
min_port=10001
max_port=65535
ztcpport=8901
zwsport=8902

# Prompt user for protocol
read -p "Enter protocol (tcp/ws) [default: tcp]: " user_protocol
protocol="${user_protocol:-$protocol}"

# Prompt user for number of days
read -p "Enter number of days [default: 30]: " user_days
days="${user_days:-$days}"

# Prompt user for tunnel ID
read -p "Enter tunnel ID [default: 101]: " user_tunnel_id
tunnel_id="${user_tunnel_id:-$tunnel_id}"

# Function to generate a random port number
generate_random_port() {
    shuf -i $min_port-$max_port -n 1
}

# Function to check if a port number exists in userdb.txt
port_exists() {
    local port=$1
    local file=$2
    grep -q ",$port," "$file"
}

# Generate a random port number
random_port=$(generate_random_port)

# Check if the random port number exists in userdb.txt
while port_exists "$random_port" "userdb.txt"; do
    random_port=$(generate_random_port)
done

# Prompt user for port number
read -p "Enter port number [default: random port between $min_port and $max_port]: " user_port
port="${user_port:-$random_port}"

# Username is user + port number
username="user$port"

# Get current date
current_date=$(date +%Y-%m-%d)

# Get future date
future_date=$(date -d "+$days days" +%Y-%m-%d)

# Output the variables
echo "Protocol: $protocol"
echo "Number of days: $days"
echo "Tunnel ID: $tunnel_id"
echo "Port Number: $port"
echo "Username: $username"
echo "Current Date: $current_date"
echo "Future Date: $future_date"

# Generate config based on protocol
rm -f zcurrentnatconfig.txt
if [ "$protocol" == "tcp" ]; then
    echo "sudo iptables -t nat -A PREROUTING -p tcp --dport $port -j DNAT --to-destination 172.16.$tunnel_id.2:$ztcpport" >> zcurrentnatconfig.txt
#    echo "sudo iptables -t nat -A POSTROUTING -d 172.16.$tunnel_id.2 -p tcp --dport $ztcpport -j SNAT --to-source 172.16.$tunnel_id.1" >> zcurrentnatconfig.txt
    echo "$future_date sudo iptables -t nat -D PREROUTING -p tcp --dport $port -j DNAT --to-destination 172.16.$tunnel_id.2:$ztcpport" >> zexpirenatconfig.txt
elif [ "$protocol" == "ws" ]; then
    echo "sudo iptables -t nat -A PREROUTING -p tcp --dport $port -j DNAT --to-destination 172.16.$tunnel_id.2:$zwsport" >> zcurrentnatconfig.txt
#    echo "sudo iptables -t nat -A POSTROUTING -d 172.16.$tunnel_id.2 -p tcp --dport $zwsport -j SNAT --to-source 172.16.$tunnel_id.1" >> zcurrentnatconfig.txt
    echo "$future_date sudo iptables -t nat -D PREROUTING -p tcp --dport $port -j DNAT --to-destination 172.16.$tunnel_id.2:$zwsport" >> zexpirenatconfig.txt
fi
cat zcurrentnatconfig.txt >> zallnatconfig.txt

# Write data to userdb.txt
echo "$username,$protocol,$days,$tunnel_id,$port,$current_date,$future_date" >> userdb.txt
echo "Data appended to userdb.txt."
ansible-playbook -i 10_hosts.ini -u root newusernatconfig.yml
echo "" > zcurrentnatconfig.txt

dnsdate=$(date +"%m%d")

dns="cosmicwondersandbeyondcosmicwondersandbeyond${dnsdate}01srv.cosmicwondersandbeyondcosmicwondersandbeyond.ir"

if [ "$protocol" == "tcp" ]; then
    python3 vmessconfig1.py "$username" "$dns" "$port"
elif [ "$protocol" == "ws" ]; then
    python3 vmessconfig2.py "$username" "$dns" "$port"
fi
