n=$(cat var/n)
output=x
input=$(echo $1 | xxd -r -p)
while n=$(( $n + 1 )) && [ $(echo -n "$input" | base64 | tr -d \\n) != $output ]; do
	output=$(sh runbfnumber.sh $n | base64 | tr -d \\n | head -c 40)
	echo $output
	[ ${#output} = 0 ] && output=x
	echo $n>var/n
done
cat var/n
echo 0 >var/n
