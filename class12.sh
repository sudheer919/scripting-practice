#!/bin/bash
#simple caliculater
clear
echo "==============================================="
echo "   menu driven simple arthmatic caliculater    "
echo "==============================================="
echo 
echo "	choice operation "
echo "--------------------"
echo "1 --> addition"
echo "2 --> subtraction"
echo "3 --> multiplication"
echo "4 --> Division"
echo "5 --> reminder"
echo "--------------------"

read -p "enter your choice :" choice
read -p "enter your value-1 :" a
read -p "enter your value-2 :" b

case $choice in
	1) add=`expr "$a + $b"|bc`
	   echo "addition of two numbers is :$add"
	   ;;	
	2) sub=`expr "$a - $b"|bc`
	   echo "subtraction of two values is :$sub"
	   ;;
	3) mul=`expr "$a * $b"|bc`
	   echo "multiplication of two values is :$mul"
	   ;;
	4) Div=`expr "scale=3;$a / $b "|bc -l`
	   echo "division of two values is :$Div"
	   ;;
	5) rem=`expr "$a % $b"|bc`
	   echo "the reminder of a and b is :$rem"
	   ;;
	*) echo "sorry your option is invalid"
esac
