#!/bin/bash
read -p "enter your value-1 : " a
read -p "enter your value-2 : " b

read -p "enter your operater{ADD|SUB|MUL|DIV} :" op

op=$(echo $op|tr [:lower:] [:upper:])
 
case $op in 
	ADD) echo "addition = $((a+b))" ;;
	sub) echo "subtract = $((a-b))" ;;
	mul) echo "multiplicate = $((a*b))" ;;
	div) echo "Division = $((a/b))" ;;
	*) echo -e"\e[31INVALID OPERATER\e[0m" 
	exit 1 ;; 
esac
