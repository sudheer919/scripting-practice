#!/bin/bash
  LOG=/tmp/stack.sh
  rm -rf $LOG

  USER_ID=$(id -u)
  
  if [ ${USER_ID} -ne 0 ]; then
  echo "you shoud bre running this script as root user or with sudo command "
  exit 1
  fi

yum install httpd -y &>>$LOG

if [ $? -eq 0 ]; then	
echo "command is success"
else
echo "comand is failure"
echo "chuck the log files :: $LOG for more information"
exit 1
fi


 
