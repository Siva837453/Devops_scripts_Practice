#!/bin/bash

################
# Date: 29/10/2024
# Author : Siva
# version: V1
# This script gives output of aws resource usage
* * * * *
set -x
# aws s3 list
echo " print s3 list"
aws s3 ls >> ResourceTracker

# aws describe instances
echo " print ec2 list"
aws ec2 describe-instances >> ResourceTracker

# list lambda
echo " print lambda function"
aws lambda list-functions >> ResourceTracker

#list users
echo " print iam users list"
aws iam list-users >> ResourceTracker

aws iam list-users | jq '.Users[].UserId' >> ResourceTracker
