#!/bin/bash
DATE=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/tmp/$0-$DATE.log"

SOURCE="/etc/passwd"

#echo -e "$G Mama, mana script start ayndhi at $DATE $N" &>> $LOGFILE

if [ ! -f $SOURCE ]
then
    echo -e "$R mentioned source directory $SOURCE does not exist $N"
    exit 1
fi

while IFS=":" read -r username passwd UID GID comment homefolder shell
do
    echo "username: $username"
    echo "password: $passwd"
    echo "UID: $UID"
    echo "GID: $GID"
    echo "comment: $comment"
    echo "homefolder: $homefolder"
    echo "shell: $shell"
done < $SOURCE