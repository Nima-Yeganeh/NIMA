#!/bin/bash
ztimersleep=60
zgitfolder="/nima"
zgitpath="/nima/proxy/ansibletunprnewv2"
userdbfile="userdb.txt"
userdb="/$userdbfile"
serveripfile="/serverip.txt"
users_nat_deleted="/users_nat_deleted.txt"
users_nat_created="/users_nat_created.txt"
tempfile1="/tempfile1.txt"
tempfile2="/tempfile2.txt"
while true; do
    cd $zgitfolder
    git pull
    cd /
    sudo cp -f $zgitpath/$userdbfile $userdb
    # echo "test"
    # rm -f $users_nat_deleted
    [ ! -f "$users_nat_deleted" ] && touch "$users_nat_deleted"
    [ ! -f "$users_nat_created" ] && touch "$users_nat_created"
    grep -vFf $users_nat_deleted $userdb > $tempfile1
    grep -vFf $users_nat_created $tempfile1 > $tempfile2
    # Get today's date in YYYY-MM-DD format
    today=$(date +%Y-%m-%d)
    serverip=$(cat $serveripfile | head -n 1)
    # Read the userdb.txt file line by line
    while IFS=',' read -r -a fields; do
        # Extract the 7th column (expire date)
        expire_date="${fields[6]}"
        # Compare the expire date with today's date
        if [[ "$expire_date" < "$today" ]]; then
            # echo "Less than today"
            natport="${fields[4]}"
            dnatport="${fields[7]}"
            dnatport="${fields[7]:0:1}001"
            # echo $natport    
            # Run the iptables command and count occurrences of natport
            count=$(sudo iptables -t nat -L | grep $natport | wc -l)
            # Check if the count is greater than 0
            # count=1
            if [ "$count" -gt 0 ]; then
                # echo "Action >> Delete"
                sudo iptables -t nat -D PREROUTING -p tcp --dport $natport -j DNAT --to-destination $serverip:$dnatport > /dev/null 2>&1
            fi
            # Join the fields array with commas and echo the line
            echo "$(IFS=','; echo "${fields[*]}")" >> $users_nat_deleted
        else
            # echo "Greater than or equal to today"
            natport="${fields[4]}"
            dnatport="${fields[7]}"
            dnatport="${fields[7]:0:1}001"
            # echo $natport
            # Run the iptables command and count occurrences of natport
            count=$(sudo iptables -t nat -L | grep $natport | wc -l)
            # echo $count
            # count=0
            if [ "$count" -eq 0 ]; then
                # echo "Action >> Create"
                sudo iptables -t nat -A PREROUTING -p tcp --dport $natport -j DNAT --to-destination $serverip:$dnatport > /dev/null 2>&1
                # Join the fields array with commas and echo the line
                # echo "$(IFS=','; echo "${fields[*]}")" >> $users_nat_created
            fi
     	    # Join the fields array with commas and echo the line
            echo "$(IFS=','; echo "${fields[*]}")" >> $users_nat_created
        fi
    done < $tempfile2
    rm -f $tempfile1
    rm -f $tempfile2
    # sudo bash /fwsave.sh > /dev/null 2>&1
    sleep $ztimersleep
done

