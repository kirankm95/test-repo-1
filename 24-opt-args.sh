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