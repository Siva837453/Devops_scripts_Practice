USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " please run this script with root user"
    exit 1
fi

yum install mysql -y
if [ $? -ne 0 ]
then    
    echo "installation of mysql is failure"
    exit 1
else
    echo "installation of mysql is success"
fi

yum install postfixxx -y
if [ $? -ne 0 ]
then    
    echo "installation of postfix is failure"
    exit 1
else
    echo "installation of postfix is success"
fi