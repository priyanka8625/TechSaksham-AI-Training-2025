#!/bin/bash
echo -n Enter the count:
read count
if [ $count -eq 100 ]
then 
echo "100 is correct"
elif [ $count -gt 100 ]
then 
echo "Too much"
else 
echo "Not enough"
fi
