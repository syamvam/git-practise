#!/bin/bash

USERID=$(id -u)
#echo "User ID is: $USERID"

VALIDATE(){
    
    if [ $1 -ne 0 ]
    then 
        echo "$2 is ... FAILED"
    else 
        echo "$2 is.... success"
    fi        
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git # Just checking whether installed or not



if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install git -y # here installing
    VALIDATE $? "installing git"
else
    echo "Git is already installed, nothing to do.."
fi

dnf list installed mysql 

if [ $? -ne 0 ]
then
    echo "MySQL is not installed...going to install"
    dnf install mysql -y
    VALIDATE $? "installing"
else
    echo "MySQL is already installed..nothing to do"
fi