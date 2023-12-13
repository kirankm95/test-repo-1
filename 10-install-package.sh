#!/bin/bash

userid=`id -u`

if [ $userid -eq 0 ]
then 
    yum install -y mysql
    yum list installed mysql 
    if [ $? -eq 0 ]
    then 
    echo "package install ayndhoroy"
    else
    echo "install avvaledhu ra babu"
    fi
else
    echo "pora non-root ga"
fi