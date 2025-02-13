#!/bin/bash

function find(){
len=0
num=$1
temp=$num
while [ $temp -ne 0 ]
do
	((len++))
	temp=$((temp/10))
done

org=$num
sum=0
while [ $num -ne 0 ]
do
	digit=$((num%10))
	digit=$((digit**len))
	sum=`expr $sum + $digit`
	num=$((num/10))
done
echo $org $sum
if [ $org -eq $sum ]
then 
	echo $org is ARMSTRONG
else
	echo $org is NOT ARMSTRONG
fi
}

echo "Enter a number:"
read num
find $num
