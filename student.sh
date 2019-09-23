#!/bin/bash

student=(sudheer sridheer alaikhya hakeesh)
echo  'student[0]' = " ${student[0]}"
echo  'student[1]' = " ${student[1]}"
echo  'student[2]' = " ${student[2]}"
echo  'student[3]' = " ${student[3]}"
echo
echo 'student[*]' = "${student[*]:2:3}"
