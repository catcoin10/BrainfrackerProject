echo -n 0.
n=35
while n=$(( $n + 1 )); do
	[ $(sh bfnumber.sh $n) = 0 ] && echo -n $n | tail -c 1
done
