#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "You are not root user, sorry"
else
    echo "You are root user, YEAH"
fi