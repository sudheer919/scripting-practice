#!/bin/bash
tot_mem=`free -m|awk '/^Mem/ {print $2}'`
used_mem=`free -m |awk '/^Mem/ {print $3}'`
free_mem=`free -m |awk '/^Mem/ {print $4}'`

echo -e "Total memory is: \e[5;32m$tot_mem\e[0m"
echo -e "Total used_memory is: \e[5;32m$used_mem\e[0m"
echo -e "Total free_memory is: \e[5;32m$free_mem\e[0m"

per=$((used_mem*100))
per=$(($pre/$tot_mem))

echo "$er"

