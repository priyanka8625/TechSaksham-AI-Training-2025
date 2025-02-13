#!/bin/bash

#    1
#   2 3
#  3 4 5
# 6 7 8 9


function print(){
num=1
n=$1
for((i=1;i<=n;i++))
do
	#print space
	for((k=1;k<=n-i;k++))
	do
		echo -n  " "
	done
	#print numbers
	for((j=1;j<=i;j++))
	do
		echo -n  "$num "
		((num++))
	done
	echo ""
done
}

echo "Enter number of rows:"
read n
print $n
