#!/bin/bash

AMI=ami-03265a0778a880afb
SG_ID=sg-02ac9dd2eb0288b52
INSTANCES=("mongodb" "redis" "mysql" "rebbitmq" "catalogue" "cart" "user" "shipping" "payment" "dispatch" "web")

for i in "${INSTANCES[@]}"
do  
    echo "instance is: $i"
    if [ $i == "mongodb" ] || [ $i == "mysql" ] || [ if $i == "shipping" ]
    then
        INSTANCE_TYPE="t3.small"
    else
        INSTANCE_TYPE="t2.micro"
    fi
    IP_ADDRESS=(aws ec2 run-instances --image-id $AMI --instance-type $INSTANCE_TYPE --security-group-ids $SG_ID --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" --query 'Instances[0].PrivateIpAddress' --output text)
    echo "$i: $IP_ADDRESS"
done      