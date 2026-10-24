#!/bin/bash
###################
#logs script to check the logs of the node
#author : chandhu sane
#date : 2024-06-10
#version : v1.0
###################
set -x
set -o
set -e

logs_folder="/var/log/shellscripts"
logs_file="${logs_folder}/$0.log"
user_id=$(id -u)
if [ $user_id -ne 0 ]; then
    echo "you are not a root user"
    exit 1  
fi
echo "script execution started at : $(date)+%f %d) )"
validate(){
    if ($1 -ne 0); then
        echo "$2 .. installation failed | tee -a $logs_file"
    else
        echo "$2 .. installed successfully | tee -a $logs_file"
    fi
}
mkdir -p $logs_folder
dnf install nginx -y &>> logs_file
systemctl restart nginx
validate ($? "nginx")
dnf install mysql -y &>> logs_file
validate ($? "mysql")
systemctl restart mysql
echo "script executed successfully completed at : $(date)+%f %d) )"

