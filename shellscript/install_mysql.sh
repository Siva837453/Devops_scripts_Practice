USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo " please run this script with root user"
    exit 1
fi

yum install mysql -y
if [ $? -ne 0 ]
then    
    echo "installation of mysql is failure"
else
    echo "installation of mysql is success"
fi

yum install postfix -y
if [ $? -ne 0 ]
then    
    echo "installation of postfix is failure"
    exit
else
    echo "installation of postfix is success"
fi