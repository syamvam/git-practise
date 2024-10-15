@!/bin/bash

USERID=$(id -u)
echo "user id is : $USERID"

if [ $USERID -ne 0 ]
then 
   echo "please run this script with root priviliges"
   exit 1
fi
dnf install git -y  

if [ $? -ne 0 ]
   echo "Git is not installed going to install it"
   dnf install git -y
else
   echo "git is already installed nothing to do"
fi   





