#!/bin/bash

TO_TEAM=$1
ALERT_TYPE=$2
BODY=$3
TO_ADDRESS=$4
SUBJECT=$5

FINAL_BODY=$(sed -e 's/To_Team/$TO_TEAM/g' -e 's/TYPE/$ALERT_TYPE/g' -e 's/BODY/$BODY/g' template.sh)

echo "$FINAL_BODY" | mail -s "$SUBJECT" "$TO_ADDRESS"

