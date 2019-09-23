#!/bin/bash

#find the two numbers which is grater from command line

if [ $# -eq 2 ]
then

	x=$1
	y=$2

	if [ $x -gt $y ]
	then 
	echo "The first aurgment is grater than second aurgment"
	elif [ $y -gt $x ]
	then
	echo "The second aurgment is grate than first aurgment"
	else 
	echo "the two aurgments are equal "
	fi
else
	echo -e "your entery is \e[31mwrong"
fi
