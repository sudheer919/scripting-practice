#!/bin/bash 

MENU() {

echo -e "\e[\t5;34mMonitring Menu\e[0m"
echo $SKIP


echo -e "--->\t1. Check Memory"

echo -e "--->\t2. Check CPU"


echo -e "--->\t3. Check DISK usage"

echo -e "--->\t4. exit"

echo "-------------------------"

read -p "select your option---> : " op

echo "-------------------------"
}
########---This is Main ProgRam---#######

MENU

case $op in

  1) echo -e "Total Memory     \t = `free -m |awk '/^Mem/ {print $2}'`" 
     echo -e "Total used Memory\t = `free -m |awk '/^Mem/ {print $3}'`"
     echo -e "Total Free Memory\t = `free -m |awk '/^Mem/ {print $4}'`"
     ;;
  2) uptime  |awk -F , '{print $3}'
     ;;
      
  3) echo
     echo -e "Total DISK space\t = `df -h / |awk 'NR==2 {print $2}'`"

     echo -e "Used DISK space \t = `df -h / |awk 'NR==2 {print $3}'`"

     echo -e "Free DISK space \t = `df -h / |awk 'NR==2 {print $4}'`"
     ;;
  4) exit ;;
  *) MENU ;;

esac
