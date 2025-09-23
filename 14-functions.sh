#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please runt this script with root privilage"
    exit 1 # failure is other than 0
fi
VALIDATE(){
        if [ $1 -ne 0 ]; then 
            echo "ERROR:: instaling $2 is failure"
            exit 1
        else
            echo " Installing $2 is success"
            exit 0

        fi

}
dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install ngnix -y
VALIDATE $? "nginx"  

dnf install mongodb-mongosh -y
VALIDATE $? "mongodb-mongosh" 