#!/bin/bash
DISK_USAGE=$(df -khT | grep -vE 'tmp|File')
DISK_THRESHOLD=2
messege=""

while IFS= read line
do

usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
partition=$(echo $line | awk '{print $1F}')

if [ $usage -ge $DISK_THRESHOLD ]
then
    messege+="High Disk usage on $partition: $usage\n"
fi
done <<< $DISK_USAGE
echo -e "Messege: $messege"

echo "$messege" | mail -s "High disk usage:" kirankm95@gmail.com