# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 10:28:10 2025

@author: ksund
"""

def add(a, b):
    return a+b

def multiply(a, b):
    return a*b

def divide(a, b):
    return a/b

def subtract(a, b):
    if b==0:
        raise ValueError("Cannot divide by zero")
    return a-b
