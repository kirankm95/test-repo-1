#!/bin/bash
#PERSON=$1
#echo "Hello $PERSON, good morning. We are learning shell scripting"

NAME=""
WISHES="Good Morning"

HELP(){
    echo "Usage: $(basename $0) -n <name> -w <wishes>"
}

while getopts ":n:w:h" opt;
do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; HELP; exit;;
        :) HELP; exit;;
        h) HELP; exit;;
    esac
done

#if [ $# -eq 0 ]
if [ -z "$NAME" ];
then 
    echo "no option passed to script. -n option have to provide. check with -h"
    HELP
    exit 1
fi

echo "Hello $NAME, $WISHES I am learning something else"