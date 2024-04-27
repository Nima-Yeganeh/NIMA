# notes
docker run -d -p 443:443 \
           -v ./nginx.conf:/etc/nginx/conf.d/default.conf \
           -v ./zcert/domain.crt:/etc/nginx/ssl/domain.crt \
           -v ./zcert/domain.key:/etc/nginx/ssl/domain.key \
           nginx

#!/bin/bash

# Run the command and store the output
output=$(sudo netstat -pln | grep :80)

# Check if the output contains the process you want to kill
if [[ $output == */socat* ]]; then
    # Extract the process ID
    pid=$(echo "$output" | awk '{print $7}' | cut -d'/' -f1)

    # Kill the process using SIGKILL (-9)
    sudo kill -9 $pid

    echo "Process $pid killed."
else
    echo "Process not found."
fi

#!/bin/bash

# Run the command and store the output
output=$(sudo netstat -pln | grep :443)

# Check if the output contains the process you want to kill
if [[ $output == */socat* ]]; then
    # Extract the process ID
    pid=$(echo "$output" | awk '{print $7}' | cut -d'/' -f1)

    # Kill the process using SIGKILL (-9)
    sudo kill -9 $pid

    echo "Process $pid killed."
else
    echo "Process not found."
fi

#!/bin/bash

# Run the command and store the output
output=$(netstat -anp | grep 443)

# Check if the output contains the process you want to kill
if [[ $output == */socat* ]]; then
    # Extract the process ID
    pid=$(echo "$output" | awk '{print $7}' | cut -d'/' -f1)

    # Kill the process using SIGKILL (-9)
    sudo kill -9 $pid

    echo "Process $pid killed."
else
    echo "Process not found."
fi

#!/bin/bash

# Check if socat processes exist and kill them
if pgrep -x "socat" > /dev/null
then
    ps aux | grep "socat" | grep -v grep | awk '{print $2}' | xargs sudo kill -9
    echo "socat processes killed."
else
    echo "No socat processes found."
fi


server {
    listen 443 ssl;
    server_name zcert.zizigooloovpn.com;

    ssl_certificate /etc/nginx/ssl/domain.crt;
    ssl_certificate_key /etc/nginx/ssl/domain.key;

    location / {
        root /usr/share/nginx/html;
        index index.html;
    }
}

docker run -d -p 80:80 nginx
docker run -d -p 80:80 -v ./html/:/usr/share/nginx/html nginx
sudo socat TCP-LISTEN:443,fork TCP:142.251.39.110:443
sudo socat TCP-LISTEN:80,fork TCP:142.251.39.110:80

sudo socat TCP-LISTEN:443,fork TCP:142.251.39.110:443 & sudo socat TCP-LISTEN:80,fork TCP:142.251.39.110:80 &
