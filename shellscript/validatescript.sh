#!/bin/bash
DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$DATE.log

R="/e[31m"
G="/e[32m"
N="/e[0m"
Y="/e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R failure $N"
    else    
        echo "$2...$G success $N"
    fi
}
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo " please run this script with root user"
    exit 1
else
    echo "you are super user"
fi

yum install mysql -y &>>$LOG_FILE
VALIDATE $? "installing mysql"

yum install postfix -y &>>$LOG_FILE
VALIDATE $? "installing postfix"


