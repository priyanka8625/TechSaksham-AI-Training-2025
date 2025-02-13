#!/bin/bash

i=1
while [ $i -lt 10 ]
do
echo $i

if [ $i -eq 6 ]
then 
break
fi 

((i++))

done
