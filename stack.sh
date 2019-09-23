#!/bin/bash
LOG=/tmp/stack.log
rm -rf ${LOG}
yum remove httpd -y &>>$LOG


Head() {

	echo -e "\t\e[1;5;36m$1\e[0m"
}

Task_print(){
 	echo -ne "--->	$1  \t =\t"
}


stat() {

if [ $1 -eq 0 ]; then
  echo -e "\e[34msuccess\e[0m"
else
  echo -e "\e[35mfailure\e[0m"
  echo "chuck the log file :: $LOG for more information "
fi

}

USER_ID=$(id -u)

if [ ${USER_ID} -ne 0 ]; then
  echo "you have to run this script with root user or use sudo comand"
  exit 1
fi

Head "<<--WEB SERVER INSTALLATION-->>"

Task_print  "web server is setting \t\t "

yum install httpd -y &>>$LOG

stat $?
Task_print "Updating proxy config \t\t"
echo 'ProxyPass "/student" "http://localhost:8080/student"
ProxyPassReverse "/student"  "http://localhost:8080/student"
' >/etc/httpd/conf.d/app-proxy.conf 
stat $?

Task_print "update index file \t\t"
curl -s https://s3-us-west-2.amazonaws.com/studentapi-cit/index.html -o /var/www/html/index.html
stat $?

Task_print "Starting the web service\t"
sudo systemctl enable httpd &>>$LOG
sudo systemctl restart httpd &>>$LOG
stat $?





