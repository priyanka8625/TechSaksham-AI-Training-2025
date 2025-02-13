#!/bin/bash

echo "Enter a number to print fibonacci series:"
read n

n1=0
n2=1
echo -n "$n1 $n2 "
for((i=3;i<=n;i++))
do
	n3=$((n1+n2))
	echo -n "$n3 "
	n1=$n2
	n2=$n3
done

