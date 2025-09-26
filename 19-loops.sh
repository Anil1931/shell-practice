#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"




mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)" 

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please runt this script with root privilage" | tee -a $LOG_FILE
    exit 1 # failure is other than 0
fi

VALIDATE(){
        if [ $1 -ne 0 ]; then 
            echo -e "instaling $2... $R failure $N" | tee -a $LOG_FILE
            exit 1
        else
            echo -e " Installing $2....$G is success $N" | tee -a $LOG_FILE


        fi
}

# "$@"" this is the sepecial variable to get all the arguments which are passed on Scripts 

for package in $@
do 
    echo "Package is: $package"
done