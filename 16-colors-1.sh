#!/bin/bash
ID=$(id -u)
DATE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$DATE"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

MYFUNCTION (){
if [ $1 -ne 0 ]
then
    echo -e "Installing $2 package $R failed $N"
    exit 1
else
    echo -e "installing $2 package is $G SUCCESS $N buddy"
fi
}

if [ $ID -ne 0 ]
then
    echo "You are not root user, sorry"
    exit 1
else
    echo -e "$Y You are root user, YEAH $N"
fi

yum install -y mysql &>> $LOGFILE
MYFUNCTION $? "mysql"

yum install -y git &>> $LOGFILE
MYFUNCTION $? "GIT"