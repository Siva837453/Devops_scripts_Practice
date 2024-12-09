#!/bin/bash

# APP_DIR_LOGS=/tmp/app-logs

# DATE=$(date +%F-%H-%M-%S)

# LOGS_DIR=/home/ec2-user/shellscript-logs

# SCRIPT_NAME=$0

# LOGFILE=$LOGS_DIR/$0-$DATE.log

# FILES_TO_DELETE=$(find $APP_DIR_LOGS -name "*.log" -type f mtime +14)
# echo "script start executing at $DATE" &>>$LOGFILE

# while read line
# do
#     echo "deleting $line &>>$LOGFILE
#     rm -rf $line
# done <<< $FILES_TO_DELETE


###################

source_directory=/tmp/logs

if [ -d $source_directory]
then
    echo "source directory exists"
else
    echo "please make sure to $source_directory exists"
    exit 1
fi

FILES_TO_DELETE=$(find $source_directory -name "*.log" -mtime +14)

while IFS= read -r line
do 
    rm -rf $line
done <<< $FILES_TO_DELETE