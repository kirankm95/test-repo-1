#!/bin/bash

userid=`id -u`

if [ $userid -eq 0 ]
then 
    yum install -y mysql
else
    echo "pora non-root ga"
fi