#!/bin/bash
#PERSON=$1
#echo "Hello $PERSON, good morning. We are learning shell scripting"

NAME=""
WISHES="Good Morning ra macha"

HELP(){
    echo "Usage: $(basename $0) -n <name> -w <wishes>"
}

while getopts ":n:w:h" opt;
do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
        :) USAGE; exit;;
        h) HELP; exit;;
    esac
done

#if [ $# -eq 0 ]
if [ -z "$NAME" ];
then 
    echo "orey em options ivvalendhu enti. ivvali ra options. chudu help -h tho"
    HELP
    exit 1
fi

echo "Hello $NAME, $WISHES I am learning something else"