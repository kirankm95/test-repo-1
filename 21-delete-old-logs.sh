#!/bin/bash
DATE=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/tmp/$0-$DATE.log"

SOURCE="/tmp/logs"

echo -e "$G Mama, mana script start ayndhi at $DATE $N" &>> $LOGFILE

if [ ! -d $SOURCE ]
then
    echo -e "$R mentioned source directory $SOURCE does not exist $N"
    exit 1
fi

DELETE=$(find $SOURCE -type f -name *.log -mtime +14)

while IFS= read -r line 
do
    echo -e "$Y Deleting $line $N"
    rm -rf $line
done <<< $DELETE

