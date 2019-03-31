export n=$1
sh -c 'sh dectobf.sh $n | timeout -s 9 0.47 bf /dev/stdin' 2>&1
