# -*- coding: utf-8 -*-
"""
Created on Fri Nov  3 18:25:42 2023

@author: topto
"""

from brainfuckery import Brainfuckery

textToConvert = input("text: ")
result = Brainfuckery().convert(textToConvert)

print(result)