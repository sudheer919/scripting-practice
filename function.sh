#!/bin/bash

A="\e[32m"
N="\e[0m"

ECH() {

echo -en "$A$1$N"

}

ECH "enter your name : "
read name
ECH "Enter your location : "
read loc

echo -e "your name is :$A$name$N\nyour location is :$loc"
