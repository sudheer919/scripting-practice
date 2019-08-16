read -p "enter '1st' value : " a
read -p "enter '2nd' value : " b

add=`expr "$a+$b"|bc `
div=`expr "scale=3;$a / $b"|bc -l`
echo "$add"
echo "$div"
