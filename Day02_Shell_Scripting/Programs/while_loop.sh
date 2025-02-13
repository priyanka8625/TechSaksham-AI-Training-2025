#!/bin/bash

echo Enter a number:
read a
i=1

while [ $i -lt $a ]
do
	echo $i
	i=`expr $i + 1`
done
