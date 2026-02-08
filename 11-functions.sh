#!/bin/bash
##dnf install nginx -y

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run this script with root user access"
   exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
       echo "$2...... failure"
       exit 1
    else
       echo "$2...... success"
    fi
}
dnf install nginx -y
VALIDATE $? "installing nginx"

dnf install mysql -y
VALIDATE $? "installing mysql"

dnf install nodejs -y
VALIDATE $? "installing nodejs"