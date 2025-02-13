#!/bin/bash

function is_prime(){
prime=1
num=$1
for ((i=2; i<=num/2; i++))
do
	if [ $((num%i)) -eq 0 ]
	then 
		prime=0
		break
	fi
done
if [ $prime -eq 1 ]
then
echo "$num is PRIME"
else
echo "$num is NOT PRIME"
fi
}

echo "Enter a number:"
read num

is_prime $num
