#!/bin/bash
DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$DATE.log




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

yum install mysql -y &>>LOGFILE
VALIDATE $? "installing mysql"

yum install postfix -y &>>LOGFILE
VALIDATE $? "installing postfix"
