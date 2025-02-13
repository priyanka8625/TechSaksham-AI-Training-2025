#!/bin/bash

function print_outer(){
n=$1

for((i=1; i<=n; i++))
do
	print_first $i $n
done

for((i=n;i>=1;i--))
do
	print_sec $i $n
done
}

function print_first(){
i=$1
n=$2
for((j=1;j<=n-i;j++))
do
	echo -n " "
done
for((k=1;k<=i;k++))
do
	echo -n "* "
done
echo ""
}

function print_sec(){
i=$1
n=$2
for((j=1;j<=n-i;j++))
do
	echo -n " "
done
for((k=1;k<=i;k++))
do
	echo -n "* "
done
echo ""
}

read -p "Enter number of rows:" n
print_outer $n
