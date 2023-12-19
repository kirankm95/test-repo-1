#!/bin/bash
DISK_USAGE=$(df -khT | grep -vE 'tmp|File')
DISK_THRESHOLD=2
messege=""

while IFS= read -r line
do

usage=$(echo $lline | awk '{print $6F}' | cut -d % f1)
partition=$(echo $lline | awk '{print $1F}'

if [ $usage -gt $DISK_THRESHOLD ]
then
    messege+="High Disk usage on $partition: $usage\n"
fi
done <<< $DISK_USAGE
echo -e "Messege: $messege"