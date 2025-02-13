#!/bin/bash

function print(){
n=$1
for((i=1;i<=n;i++))
do
if [ $((i%2)) -ne 0 ]
then 
echo "$i "
fi
done
}

read -p "Enter value of n:" n
print $n
