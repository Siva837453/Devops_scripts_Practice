#!/bin/bash



VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo  "$2...failure"
    else    
        echo "$2...success"
    fi
}
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo " please run this script with root user"
    exit 1
fi

yum install mysql -y
VALIDATE $? "installing mysql"

yum install postfix -y
VALIDATE $? "installing postfix"
