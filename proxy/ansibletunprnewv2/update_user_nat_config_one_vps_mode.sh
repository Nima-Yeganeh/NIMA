#!/bin/bash
ztimersleep=60
zgitfolder="/nima"
zgitpath="/nima/proxy/ansibletunprnewv2"
zgithub="https://github.com/nima-yeganeh/nima"
userdbfile="userdb.txt"
userdb="/$userdbfile"
serveripfile="/serverip.txt"
users_nat_deleted="/users_nat_deleted.txt"
users_nat_created="/users_nat_created.txt"
tempfile1="/tempfile1.txt"
tempfile2="/tempfile2.txt"
while true; do
    echo "Started..."
    sudo bash /fwsave.sh
    [ ! -d $zgitfolder ] && sudo git clone $zgithub $zgitfolder > /dev/null 2>&1
    cd $zgitfolder
    git pull > /dev/null 2>&1
    cd /
    sudo cp -f $zgitpath/$userdbfile $userdb
    [ ! -f "$users_nat_deleted" ] && touch "$users_nat_deleted"
    [ ! -f "$users_nat_created" ] && touch "$users_nat_created"
    awk -F',' -v today="$(date +%Y-%m-%d)" '$7 < today' $userdb | grep -vFf $users_nat_deleted > $tempfile1
    wc -l $tempfile1
    awk -F',' -v today="$(date +%Y-%m-%d)" '$7 >= today' $userdb | grep -vFf $users_nat_created > $tempfile2
    wc -l $tempfile2
    today=$(date +%Y-%m-%d)
    serverip=$(cat $serveripfile | head -n 1)
    while IFS=',' read -r -a fields; do
        expire_date="${fields[6]}"
        natport="${fields[4]}"
        dnatport="${fields[7]}"
        # count=$(sudo iptables -t nat -L | grep $natport | wc -l)
        count=$(sudo cat /etc/iptables/rules.v4 | grep $natport | wc -l)
        if [ "$count" -gt 0 ]; then
            echo "Action >> Delete" > /dev/null 2>&1
            sudo iptables -t nat -D PREROUTING -p tcp --dport $natport -j DNAT --to-destination $serverip:$dnatport > /dev/null 2>&1
        fi
        sudo bash /fwsave.sh
        echo "$(IFS=','; echo "${fields[*]}")" >> $users_nat_deleted
    done < $tempfile1
    while IFS=',' read -r -a fields; do
        expire_date="${fields[6]}"
        natport="${fields[4]}"
        dnatport="${fields[7]}"
        # count=$(sudo iptables -t nat -L | grep $natport | wc -l)
        count=$(sudo cat /etc/iptables/rules.v4 | grep $natport | wc -l)
        if [ "$count" -eq 0 ]; then
            echo "Action >> Create" > /dev/null 2>&1
            sudo iptables -t nat -A PREROUTING -p tcp --dport $natport -j DNAT --to-destination $serverip:$dnatport > /dev/null 2>&1
        fi
        sudo bash /fwsave.sh
        echo "$(IFS=','; echo "${fields[*]}")" >> $users_nat_created
    done < $tempfile2
    rm -f $tempfile1
    rm -f $tempfile2
    sudo bash /fwsave.sh
    echo "Done... Waiting..."
    sleep $ztimersleep
done
