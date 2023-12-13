#!/bin/bash
ID=$(id -u)

MYFUNCTION (){
if [ $? -ne 0 ]
then
    echo "Installing package failed"
    exit 1
else
    echo "installing package is SUCCESS buddy"
fi
}

if [ $ID -ne 0 ]
then
    echo "You are not root user, sorry"
    exit 1
else
    echo "You are root user, YEAH"
fi

yum install -y mysql
MYFUNCTION

yum install -y git
MYFUNCTION