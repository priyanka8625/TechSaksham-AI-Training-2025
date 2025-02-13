#!/bin/bash

#first way
echo "first way:"
for i in {1..10}
do 
echo $i
done

#second way
echo "second way:"
for i in 1 2 3 4 5
do 
echo $i
done

#third way
echo "third way:"
for ((i=1; i<=10; i++))
do
echo $i
done
