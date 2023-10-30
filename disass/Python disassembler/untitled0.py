# -*- coding: utf-8 -*-
"""
Created on Mon Oct 30 13:34:29 2023

@author: yeah
"""




f = open("DISASM.COM", "br")
data = f.read()

print(type(data))
for binary in data:
    print("{:08b}".format(binary))

f.close()
