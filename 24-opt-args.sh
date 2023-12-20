#!/bin/bash
#PERSON=$1
#echo "Hello $PERSON, good morning. We are learning shell scripting"

NAME=""
WISHES=""

HELP(){
    echo "Usage: $(basename $0) -n <name> -w <wishes>"
}

while getopts ":n:w:h" opt;
do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        h|*) HELP; exit;;
    esac
done

if [ $@ -eq 0 ]
then 
    echo "orey em options ivvalendhu enti. ivvali ra options. chudu help -h tho"
    HELP
fi

echo "Hello $NAME, $WISHES I am learning something else"