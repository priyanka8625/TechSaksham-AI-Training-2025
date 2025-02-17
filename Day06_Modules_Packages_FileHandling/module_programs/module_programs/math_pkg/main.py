# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 11:06:25 2025

@author: ksund
"""
import math_operations 

a = int(input("Enter a:"))
b = int(input("Enter b:"))
print("Enter your choice:")
print("1. ADD")
print("2. SUBTRACT")
print("3. MULTIPLY")
print("4. DIVIDE")
ch = int(input())

if ch == 1:
    print(math_operations.add(a, b))
elif ch==2:
    print(math_operations.subtract(a, b))
elif ch==3:
    print(math_operations.multiply(a, b))
elif ch==4:
    print(math_operations.divide(a, b))

