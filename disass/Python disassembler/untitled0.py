# -*- coding: utf-8 -*-
"""
Created on Mon Oct 30 13:34:29 2023

@author: yeah
"""




from token import COMMA


f = open("DISASM.COM", "br")
input_data = f.read()
f.close()

f = open("COMMANDS.TXT", "r")
command_data = f.read()
f.close()

#print(type(command_data))

#for line in command_data:

#     print(line)

#print(type(input_data))
for binary in input_data:
    binary_number = ("{:08b}".format(binary))
    print(binary_number)
    #binary_number = binary_number[:-4]
    #if (binary_number == "1011"):
    #   print("mov ")
    


