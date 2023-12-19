#!/bin/bash
DATE=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/tmp/$0-$DATE.log"

SOURCE="/tmp/logs"

echo "Mama, mana script start ayndhi at $DATE" &>> $LOGFILE

if [ ! -d $SOURCE ]
then
    echo "mentioned source directory $SOURCE does not exist"
fi

DELETE=$(find $SOURCE -type f -name *.log -mtime +14)

while IFS = read -r line 
do
echo "Deleting $line"
done

