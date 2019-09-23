#!/bin/bash
user_name=$1

useradd $user_name
echo `date|md5sum|cut -c 1-5`|passwd --stdin $user_name

echo "user is created"
echo "user is : '$user_name' "
echo "passwd  : `date|md5sum|cut -c 1-5` "
chage -d 0 $user_name
