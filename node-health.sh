#!/bin/bash
#
#
##############
#Author: Siva
#Date: 21-10-2024
#this script execute output of node health
#version : V1
#############
set -x #Debug Mode
#echo " Disk Spce"
df -h 

#echo" free momory"
free -g

#echo" Print all memory information"
top

#echo" Print number of CPUs"
nproc

ps -ef | grep "bash" | awk -F" " '{print $2}'
