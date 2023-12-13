#!/bin/bash

userid=`id -u`

if [ $userid -eq 0 ]
then 
    echo "Hey man you are ROOT"
else
    echo "Bye bye"
fi