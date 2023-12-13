#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "You are not root user, sorry"
    #exit 1
else
    echo "You are root user, YEAH"
fi
echo "Continuing"