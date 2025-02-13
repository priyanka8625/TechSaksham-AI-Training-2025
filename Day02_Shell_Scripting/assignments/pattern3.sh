#!/bin/bash

#   1
#  2 2
# 3 3 3

echo "Enter number of rows:"
read n

for((i=1;i<=n;i++))
do
	#print space
	for((k=1;k<=n-i;k++))
	do
		echo -n  " "
	done
	#print stars
	for((j=1;j<=i;j++))
	do
		echo -n  "$i "
	done
	echo ""
done
