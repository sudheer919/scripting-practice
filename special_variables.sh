#The filename of the current script.
echo $0
#the first argument is $1, the second argument is $2, and so on).
echo "$1"
echo "$2"
#The process ID of the current shell. For shell scripts, this is the process ID under which they are executing.
echo "$$"
#The number of arguments supplied to a script.
echo "$#"
#All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
echo "$@"
#All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
echo "$*"
#The exit status of the last command executed.
echo "$?"
#The process ID of the last background command.
echo "$!"
#The last argument of the previous command.
echo "$_"
