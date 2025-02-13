#!/bin/bash

#5 4 3 2 1
# 4 3 2 1
#  3 2 1 
#   2 1
#    1
echo "Enter number of rows:"
read n

for((i=n; i>=1; i--))
do
	#spaces
	for((j=1;j<=n-i;j++))
	do
		echo -n " "
	done
	#numbers
	for((k=i;k>=1;k--))
	do
		echo -n "$k "
	done
	echo ""
done
