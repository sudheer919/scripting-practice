#!/bin/bash
#writting scripts for read command
clear
<< lol
read -p "enter the value : " var_num
echo "the value you entered is $var_num"
echo
echo
read -p "enter value '1' : " var_1
read -p "enter value '2' : " var_2
echo "your value'1'is : $var_1 and your value '2' is :$var_2" 
#
read -e -i "919" -p "enter your randam value :" var_3
echo "the default value $var_3"

#setting time oute for read command
read -t 3 -p "enter youe data : " string_var
echo
echo "you entred data is : $string_var"
echo "time out"
lol
# reading the password
echo -n "enter your password : " 

read -s var_pass
echo
echo "yuor password is : $var_pass"
#default variable name for read command
read -p "select your value : "
echo "you selection is $REPLY"
