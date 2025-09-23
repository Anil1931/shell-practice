#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please runt this script with root privilage"
    exit 1 # failure is other than 0
fi
VALIDATE(){
        if [ $1 -ne 0 ]; then 
            echo -e "instaling $2... $R failure $N"
            exit 1
        else
            echo -e " Installing $2....$G is success $N"


        fi

}

dnf list installed mysql
if [ $? -ne 0 ];then 
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo -e "Mysql already exist...$G Skipping $N"
fi
dnf list installed nginx
if [ $? -ne 0 ];then
    dnf install nginx -y
    VALIDATE $? "nginx"  
else
    echo -e "Nginx already exist...$G skipping $N"
fi
dnf list installed python3
if [ $? -ne 0 ];then 
    dnf install python3 -y
    VALIDATE $? "python3" 
else
    echo -e "Python3 already exist ...$G skipping $N"
fi