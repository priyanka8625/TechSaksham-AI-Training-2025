#!/bin/bash

function welcome(){
echo "Welcome to function"
}
welcome

echo "Function with arguments:"
function addition(){
res=$(($1 + $2))
echo "Addition of $1 and $2 = $res"
echo "Number of arguments are $#"
}

addition 1 2

function multiply(){
res=$(($1 * $2))
echo "$1 * $2 = $res"
}
echo "Enter 2 numbers:"
read a b
multiply a b

echo "Function with return"
function Return(){
return "my name is $1, my age is $2 and I live in $3"
}
Return Priyanka 19 Solapur

echo "$?"
