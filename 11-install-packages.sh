#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "You are not root user, sorry"
    exit 1
else
    echo "You are root user, YEAH"
fi

yum install -y mysql

if [ $? -ne 0 ]
then
    echo "Installing mysql failed"
    exit 1
else
    echo "installing mysql SUCCESS"
fi