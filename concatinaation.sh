var1="sudheer"
var2="automation"
var3="$var1 $var2"
#printf "%60s\n" "printing the 'var2' :$var3"
#printf "%90b\n" "printing the count of the var3: ${#var3}"
var4=`printf "%90b\n" "printing the count of the var3: ${#var3}"`
#echo $var4
printf "%60s\n" "$var4"
printf "%-40s%60s\n" "printing variable one:$var1" "this is another string"


