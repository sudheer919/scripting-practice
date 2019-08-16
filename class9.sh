#!/bin/bash
<< hide
echo "hi sudheer how r u"
read -p "enter the value i am lisining you :" var_read
echo "yuo enter the:$var_read"

hide
read -p "enter your service:" service_var
status=`systemctl status $service_var |awk 'NR==3 {print $2}'`
echo -e "$service_var service status is :\e[32m$status\e[0m" 
