#!/bin/bash

NUMBER=$1

echo "user entered number is $NUMBER"

if [ $NUMBER -gt 20 ] #gt lt eq -ne
then
   echo "given number: $NUMBER IS GREATE THAN 20"
else
   echo "given number: $NUMBER IS less THAN 20"   
fi