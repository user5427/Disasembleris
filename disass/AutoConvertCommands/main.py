# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
# Author: tari9925

import re

def separate_commands(text, seperator):
    lines = []
    for line in text:
        line = line.split(seperator, 1)[0]
        lines.append(line)

    return lines
def separate_command_words(lines):
    new_lines = []
    for line_ in lines:
        line_ = line_.strip().split(' ')
        new_lines.append(line_)

    return new_lines
def change_word_names(lines):
    bad_names = ["mod", "[poslinkis]", "poslinkis", "[bovb]", "portas"]
    corrected_names = ["md", "poslinki", "poslinki", "bovb", "portas--"]
    new_lines = []
    for line in lines:
        line_ = []
        for word in line:

            for i in range(0, len(bad_names)):
                if bad_names[i] == word:
                    word = corrected_names[i]

            line_.append(word)

        new_lines.append(line_)

    return new_lines
def make_bytes(lines):
    new_lines = []
    for line in lines:
        new_line = []
        byte_len = 0
        byte = []
        for word in line:
            if byte_len + len(word) <= 8:
                byte.append(word)
                byte_len += len(word)
            else:
                new_line.append(byte[:])
                byte.clear()
                byte.append(word)
                byte_len = len(word)

        if (byte_len > 0):
            new_line.append(byte[:])
            byte.clear()

        new_lines.append(new_line)

    return new_lines
def join_subbytes(lines):
    new_lines = []
    for line in lines:
        new_line = []
        for bytes in line:
            new_byte = ""
            for sub_bytes in bytes:
                new_byte += sub_bytes

            new_line.append(new_byte)
        new_lines.append(new_line)

    return new_lines
def find_non_numbers(lines):
    new_lines = []
    for line in lines:
        new_line = []
        for byte in line:

            new_byte = []
            non_numbers_ = []

            index = 0
            start_index = 0
            len1 = 0
            not_number = 0

            for symbol in byte:
                if not (symbol == '0' or symbol == '1'):
                    if not not_number:
                        not_number = 1
                        start_index = index
                        len1 += 1
                    elif not_number:
                        len1 += 1
                else:
                    not_number = 0
                    if len1 > 0:
                        non_numbers_.append(start_index)
                        non_numbers_.append(len1)
                        new_byte.append(non_numbers_[:])
                        non_numbers_.clear()

                        len1 = 0

                index += 1

            if len1 > 0 or new_byte.__len__() == 0: # changed from non_numbers to new_byte
                non_numbers_.append(start_index)
                non_numbers_.append(len1)
                new_byte.append(non_numbers_[:])
                non_numbers_.clear()

            new_byte.append(byte)
            new_line.append(new_byte[:])

        new_lines.append(new_line[:])
    return new_lines

file = open("commands.txt", "r")
text = file.read()
text = text.strip().split('\n')
lines = separate_commands(text, 'â')
lines = separate_command_words(lines)
# i want to actually represent each command name in a way that its name would represent the length of command
lines = change_word_names(lines)
# now i will just copy 8 symbols to make a byte
lines = make_bytes(lines)
lines = join_subbytes(lines)
lines = find_non_numbers(lines)


file_2 = open("names.txt")
names = file_2.read()
names = names.strip().split('\n')
names = separate_commands(names, 'n')

def binary_to_string(string):
    lenght_of_num = len(string)
    number = 0
    for symbol in string:
        lenght_of_num -= 1
        number += int(symbol) * pow(2, lenght_of_num)

    return number

output_lines = [] # this does not have anything in common with lines or names
command_number = 0
for line in lines:
    output_lines.append(";" + str(line))
    for byte in line:
        output_lines.append(";---the byte: " + byte[len(byte) - 1] + " ---")
        output_lines.append("mov al, byte_")

        compensate_for_shift = 0
        binary_number = byte[len(byte) - 1]
        print_compare = 0
        for command in byte[:-1]:
            command_sum = command[0] + command[1]
            index = command[0]
            length = command[1]

            if index == 0 and length < 8: # the word is at the start of the command
                output_lines.append("shl al, " + str(length))
                binary_number = binary_number[length:]
                compensate_for_shift += length
                print_compare = 1
            elif command_sum == 8 and length < 8: # the word is at the end of the command
                output_lines.append("shr al, " + str(length + compensate_for_shift))
                binary_number = binary_number[:-length]
                print_compare = 1
            elif index > 0 and length < 8: # the word is somewhere in the middle of the command
                output_lines.append("shr al, " + str(8-index))
                output_lines.append("shl al, " + str(8-index))
                output_lines.append("mov ah, byte_")
                output_lines.append("shl ah, " + str(index + length))
                output_lines.append("shr ah, " + str(index + length))
                output_lines.append("add al, ah")
                print_compare = 1
                binary_number = re.sub(r"[a-zA-Z]", "0", binary_number)

        if print_compare == 1:
            number = binary_to_string(binary_number)
            output_lines.append("cmp al, " + str(number))
            output_lines.append("jne not_" + str(command_number))


    output_lines.append("not_" + str(command_number))
    output_lines.append('\n')
    command_number += 1

f = open("output.txt", "w")
for line in output_lines:
    print(line)
    f.write(line + '\n')

















# See PyCharm help at https://www.jetbrains.com/help/pycharm/
