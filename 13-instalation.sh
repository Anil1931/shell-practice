#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please runt this script with root privilage"
    exit 1 # failure is other than 0
fi

dnf install mysql -y

    if [ $? -ne 0 ]; then 
        echo "ERROR:: instaling mysql is failure"
        exit 1
    else
        echo " Installing mysql is success"
        exit 0

    fi


dnf install ngnix -y

    if [ $? -ne 0 ]; then 
        echo "ERROR:: instaling mysql is failure"
        exit 1
    else
        echo " Installing mysql is success"
        exit 0

    fi

dnf install mongodb-mongosh -y

    if [ $? -ne 0 ]; then 
        echo "ERROR:: instaling mongodb-mongosh is failure"
        exit 1
    else
        echo " Installing mongodb-mongosh is success"
        exit 0

    fi