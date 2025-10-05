#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)
DISK_THRESHOLD=2 # generally it will be 75%
IP_ADDRESS=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
MESSAGE=""

while IFS= read -r line

do 

    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk '{print $7}')
    if [ $USAGE -ge $DISK_THRESHOLD ]; then

        MESSAGE+="High disk usage on $PARTITION: $USAGE % \n"

    fi

done  <<< $DISK_USAGE

echo -e "Message body: $MESSAGE"

sh mail.sh "anilchinna13@gmail.com" "High disk usage alert" "High disk usage" "$MESSAGE" "$IP_ADDRESS" "DEVOPS TEAM"

# TO_ADDRESS=$1
# SUBJECT=$2
# ALERT_TYPE=$3
# MESSAGE_BODY=$4
# IP_ADDRESS=$5
# TO_TEAM=$6

