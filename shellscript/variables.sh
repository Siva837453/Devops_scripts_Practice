#!/bin/bash

echo "Hello im learning Devops"
############################
# PERSON1=Ramesh
# PERSON2=suresh
# echo $PERSON1: "HI $PERSON2 HOW ARE YOU"
# echo $PERSON2: "HELLO $PERSON1 IM GOOD"
# echo $PERSON1: "where are you working now"
# echo $PERSON2: "IM working in TCS"
###########################
# PERSON1=$1
# PERSON2=$2
# echo $PERSON1: "HI $PERSON2 HOW ARE YOU"
# echo $PERSON2: "HELLO $PERSON1 IM GOOD"
# echo $PERSON1: "where are you working now"
# echo $PERSON2: "IM working in TCS"
##########################
# num1=$1
# num2=$2

# sum=$(( $num1 + $num2 ))
# echo "sum of $num1 and $num2 is $sum"
##########################
# echo "Please enter username"
# read -s USERNAME

# echo "please enter password"
# read -s PASSWORD

# echo " this is your username $USERNAME and password $PASSWORD"

###################

MOVIES=("BAHUBALI" "KALKI" "RRR" "KGF")
echo "MOVIE_NAME IS: ${MOVIES[2]}"

echo "second movie is ${MOVIES[1]}"

echo "all movies : ${MOVIES[@]}"
echo "script name : $0"
