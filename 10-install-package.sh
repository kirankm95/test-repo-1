#!/bin/bash

userid=`id -u`

if [ $userid -eq 0 ]
then 
    echo "orey ROOT ga etlunnav! ra"
else
    echo "pora non-root ga"
fi