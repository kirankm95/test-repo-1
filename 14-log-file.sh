#!/bin/bash
ID=$(id -u)
DATE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$DATE.log"

MYFUNCTION (){
if [ $1 -ne 0 ]
then
    echo "Installing $2 package failed"
    exit 1
else
    echo "installing $2 package is SUCCESS buddy"
fi
}

if [ $ID -ne 0 ]
then
    echo "You are not root user, sorry"
    exit 1
else
    echo "You are root user, YEAH"
fi

yum install -y mysql &>> $LOGFILE
MYFUNCTION $? "mysql"

yum install -y git &>> $LOGFILE
MYFUNCTION $? "GIT"