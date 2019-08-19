path_tom=/opt/apache-tomcat-9.0.22.tar.gz

echo "/opt/apache-tomcat-9.0.22.tar.gz
"
echo "${path_tom%.tar.gz}"
echo
echo "${path_tom#/opt/}"
echo "${path_tom%.*}"
echo "${path_tom%%.*}"
echo "${path_tom#*.}"
echo "${path_tom##*.}"
