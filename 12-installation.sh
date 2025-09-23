#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please runt his script with root privilage"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then 
    echo "ERROR:: instaling mysql is failure"
else
    echo " Installing mysql is success"

fi