#!/bin/bash

userid=`id -u`

if [ $userid -eq 0 ]
then 
    yum install -y mysqll
    yum list installed mysqll
    if [ $? -eq 0 ]
    then 
    echo "package install ayndhoroy"
    else
    echo "install avvaledhu ra babu"
    fi
else
    echo "pora non-root ga"
fi