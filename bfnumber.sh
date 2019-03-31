export n=$1
sh -c 'sh dectobf.sh $n | timeout -s 9 0.47 bf /dev/stdin'>/dev/null 2>&1
[ $? != 137 ] && echo 1 && exit # whether or not we halt
[ $? = 137 ] && echo 0 && exit # doesn't halt in time
echo 0 # say doesn't halt if not sure
