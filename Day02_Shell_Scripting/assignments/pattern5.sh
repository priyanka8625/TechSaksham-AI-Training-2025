#!/bin/bash

function print(){
n=$1
for((i=n;i>=1;i--))
do
	for((j=i;j>=1;j--))
	do
		echo -n "* "
	done
	echo ""
done
}

read -p "Enter number of rows:" n

print $n
