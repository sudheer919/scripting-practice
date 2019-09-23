#!/bin/bash

read -p "enter your option for httpd service to 'start''stop''restart': " action

if [ "${action}" == "start" ]
then
   echo "starting the httpd service"
   sudo systemctl start httpd
   echo -e "httpd is \e[1;33mstarted\e[0m"

elif [ "${action}" == "stop" ]
then
   echo "stoping the https service"
   sudo systemctl stop httpd
   echo -e "httpd is \e[31mstoped\e[0m"
elif [ "${action}" == "restart" ]
then
   echo "restarting the httpd service"
   sudo systemctl restart httpd
   echo -e "https is \e[35mrestarting\e[0m"
else
	echo -e "yuor enterd invalid option \e[31m"${action}"\e[0m"
fi
