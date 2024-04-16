sudo apt update -y
sudo apt install ansible -y
ssh-keygen
ssh-copy-id
ansible -i servers.ini -m ping servers
ansible -i servers.ini -u root -m ping servers

