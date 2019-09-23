#!/bin/bash

LOG=/tmp/stack.sh
rm -rf ${LOG}
yum remove httpd -y &>>$LOG

Head() {
    echo -e "\n------- $1 ------- \n" >>$LOG
    echo -e "\t\t\t\e[1;5;34m$1\e[0m"
}
Task_print() {
    echo -e "\n ------- $1 ------- \n" >>$LOG
    echo -ne "    $1 =\t"
}

stat(){

    if [ $1 -eq 0 ]; then 
    echo "Success"
    else
    echo "failure"
fi    

}

### validating the user##

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "you should be root user to run this script or use sudo command"
    exit 1
fi

#### WEB SERVER SETUP ####

Head "WEB SERVER SETUP"
Task_print "HTTPD is setting up..\t\t"

yum install httpd -y &>>$LOG

stat $?

Task_print "Updating proxy config \t\t"
echo 'ProxyPass "/student" "http://localhost:8080/student"
ProxyPassReverse "/student"  "http://localhost:8080/student"
'>/etc/httpd/conf.d/app-proxy.conf 

stat $?

Task_print "Download index file \t\t"
curl -s https://s3-us-west-2.amazonaws.com/studentapi-cit/index.html -o /var/www/html/index.html
stat $?

Task_print "restarting Httpd service \t\t"
sudo systemctl enable httpd &>>$LOG
sudo systemctl restart httpd &>>$LOG
stat $?

Task_print "creating 'student user' \t\t\n"

#useradd student
exit 1
stat $? 
