#!/bin/bash
ID=$(id -u)
DATE=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$DATE"

MYFUNCTION (){
if [ $1 -ne 0 ]
then
    echo -e "Installing $2 package \e[33m failed \e[0m"
    exit 1
else
    echo -e "installing $2 package is \e[32m SUCCESS buddy \e[0m"
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