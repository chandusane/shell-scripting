#!/bin/bash
###################
#functions lets discuss about the functions in bash scripting
#author : chandhu sane
#date : 2024-06-10
#version : v1.0
###################
set -x
set -o
set -e
user_id=$(id -u)
if [ $user_id -ne 0 ]; then
    echo "you are not a root user"
    exit 1
fi
validate(){
    if ($1 -eq 0); then
        echo "$2 .. installed successfully"
    else
        echo "$2 .. installation failed"
    fi
}
dnf install nginx -y
validate ($? "nginx")
dnf install mysql -y
validate ($? "mysql")