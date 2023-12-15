#!/bin/bash
#usage: sh script-name.sh package1 package2 package3 package4 package5 .... packagen
DATE=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/tmp/$0-$DATE.log"
ID=$(id -u)

echo "Mama, mana script start ayndhi at $DATE" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 install $R fail ayndhi ra babu $N"
    else
        echo -e "$2 $G install baga ayndhi mama $N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R Orey babu you are not user gadivi.. poraaa babu $N" &>> $LOGFILE
    exit 1
else
    echo -e "$G Orey root user mama, Congrats ra $N" &>> $LOGFILE
fi

echo "mama nv e arguments anni pass chesav: $Y $@ $N" &>> $LOGFILE

for i in $@
do
    yum list installed $i
    if [ $? -ne 0 ]
    then
        yum install -y $i &>> $LOGFILE
        VALIDATE $? "Installation of $i" &>> $LOGFILE
    else 
        echo -e "$Y $i package already install ayyi vundhi ra babu $N" &>> $LOGFILE
    fi
done




