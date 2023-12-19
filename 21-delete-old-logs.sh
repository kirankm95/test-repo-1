#!/bin/bash
DATE=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/tmp/$0-$DATE.log"
ID=$(id -u)

echo "Mama, mana script start ayndhi at $DATE" &>> $LOGFILE

