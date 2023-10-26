sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT  # Allow SSH
sudo iptables -A INPUT -j DROP  # Drop all other incoming traffic
chmod 600 file.txt  # Set read and write permissions for the owner only
chown user:group file.txt  # Change file ownership
sudo auditd  # Start the audit daemon
journalctl -xe  # View system logs

sudo ufw enable               # Enable the firewall
sudo ufw status               # Display firewall status and rules
sudo ufw allow 22/tcp         # Allow SSH traffic
sudo ufw deny 80/tcp          # Deny HTTP traffic

sudo ufw allow from 192.168.1.0/24    # Allow traffic from a specific IP range

sudo tcpdump -i eth0             # Capture packets on a specific network interface
sudo tcpdump -n -i eth0 port 80   # Capture HTTP traffic on a specific interface

sudo tcpdump host 192.168.1.100   # Capture packets to/from a specific IP address

ncat -lvp 1234                    # Listen on port 1234 and display output to the console
ncat 192.168.1.100 1234           # Connect to the server on IP 192.168.1.100 and port 1234

# On the receiving end (server)
ncat -lvp 1234 > received_file.txt

# On the sending end (client)
ncat 192.168.1.100 1234 < local_file.txt

