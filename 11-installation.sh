@!/bin/bash

USERID=$(id -u)
#echo "user id is : $USERID"

#if [ $USERID -ne 0 ]
#then 
 #  echo "please run this script with root priviliges"
 #  exit 1
#fi

dnf list installed gittttt 

if [ $? -ne 0 ]
then
   echo "Git is not installed going to install it"
   dnf install gittttt -y
   if [ $? -ne 0 ]
   then 
      echo "git installation is not success check it"
      exit 1
    else
      echo "git installation is success"
    fi      
else
   echo "git is already installed nothing to do"
fi   





