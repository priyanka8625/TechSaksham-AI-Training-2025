#!/bin/bash

function print(){
n=$1

for((i=1; i<=n; i++))
do
	for((j=1;j<=n-i;j++))
	do
		echo -n " "
	done
	for((k=1;k<=i;k++))
	do
		echo -n "* "
	done
	echo ""
done

for((i=n;i>=1;i--))
do
	for((j=1;j<=n-i;j++))
	do
		echo -n " "
	done
	for((k=1;k<=i;k++))
	do
		echo -n "* "
	done
	echo ""
done
}

read -p "Enter number of rows:" n
print $n
