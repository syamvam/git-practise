#!/bin/bash


VALIDATE(){
    
    if [ $1 -ne 0 ]
    then 
        echo "$2 is ... FAILED"
    else 
        echo "$2 is.... success"
    fi        
}

# sh 15-loops.sh git mysql postfix nginx
for package in $@ #refers to all arguments passed to it
do
   #echo $package

   dnf list installed $package
   if [ $? -ne 0 ]
   then

       echo "$package is not installed going to install it"
       dnf install $package -y
       validate $? "intalling $package"
   else
       echo "$package is already installed"
    fi   

done