zhostname=$(hostname)
echo $zhostname
if grep -q "^127.0.0.1[[:space:]]*$zhostname$" /etc/hosts; then
    echo "Hostname $zhostname already exists in /etc/hosts."
else
    echo "127.0.0.1 $zhostname" | sudo tee -a /etc/hosts
    echo "Hostname $zhostname added to /etc/hosts."
fi
