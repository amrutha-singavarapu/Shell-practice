#!/bin/bash
##dnf install nginx -y

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run this script with root user access"
   exit 1
fi

echo "installing nginx"
dnf install nginx -y

if [ $? ne 0 ]; then
   echo "installing nginx...... failure"
   exit 1
else
   echo "installing nginx...... success"
fi

dnf install mysql -y

if [ $? ne 0 ]; then
   echo "installing mysql...... failure"
   exit 1
else
   echo "installing mysqlx...... success"
fi

dnf install nodejs -y

if [ $? ne 0 ]; then
   echo "installing nodejs...... failure"
   exit 1
else
   echo "installing nodejs...... success"
fi