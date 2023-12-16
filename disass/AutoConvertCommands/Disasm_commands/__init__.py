# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
# Author: tari9925

import re


def command_detection(output_file):
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
        bad_names = old_var_names
        corrected_names = new_var_names
        new_lines = []
        for line in lines:
            line_ = []
            for word in line:

                for i in range(0, len(bad_names)):
                    for bad_name in bad_names[i]:
                        if bad_name == word:
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

                if len1 > 0 or new_byte.__len__() == 0:  # changed from non_numbers to new_byte
                    non_numbers_.append(start_index)
                    non_numbers_.append(len1)
                    new_byte.append(non_numbers_[:])
                    non_numbers_.clear()

                new_byte.append(byte)
                new_line.append(new_byte[:])

            new_lines.append(new_line[:])
        return new_lines

    variables_file = open("Files/variables.txt", "r")
    cm_val_file_lines = variables_file.read()
    cm_val_file_lines = cm_val_file_lines.split('\n')
    new_cm_val_lines = []
    old_var_names = []
    new_var_names = []
    for line in cm_val_file_lines:
        new_line = line.strip().split('|')
        temp = new_line[0]
        old_var_names.append(temp.strip().split(' '))
        if len(new_line) > 1:
            cm_val_line = new_line[1]
            cm_val_line = cm_val_line.strip().split(' ')
            new_var_names.append(cm_val_line[0])
            new_cm_val_lines.append(cm_val_line)
    cm_val_file_lines = new_cm_val_lines

    file = open("Files/commands.txt", "r")
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

    file_2 = open("Files/names.txt")
    names = file_2.read()
    names = names.strip().split('\n')
    new_names = []
    for name in names:
        name = name.strip().split(' ')
        name = name[:2]
        new_names.append(name)

    file = open("Files/commands.txt", "r")
    command_names = file.read()
    command_names = command_names.strip().split('\n')
    new_command_names = []
    for line in command_names:
        line = line.split("â")
        if len(line) > 1:
            new_command_names.append(line)

    command_names = new_command_names

    file = open("Files/auto_functions.txt", "r")
    auto_functions = file.read()
    auto_functions = auto_functions.strip().split('\n')
    new_auto_functions = []
    for function in auto_functions:
        function = function.strip().split('|')
        new_line = []
        new_line.append(function[0].strip())
        if len(function) > 1:
            new_line.append(function[1].strip())

        new_auto_functions.append(new_line)
    auto_functions = new_auto_functions

    file = open("Files/manual_functions.txt", "r")
    manual_functions = file.read()
    manual_functions = manual_functions.strip().split('\n')
    new_manual_functions = []
    for line in manual_functions:
        function = line.strip().split('|')
        new_line = "-"
        if len(function) > 1:
            new_line = function[1].strip()

        new_manual_functions.append(new_line)
    manual_functions = new_manual_functions

    def binary_to_number(string):
        lenght_of_num = len(string)
        number = 0
        for symbol in string:
            lenght_of_num -= 1
            number += int(symbol) * pow(2, lenght_of_num)

        return number


    def byte_commands(byte, byte_name, spec_jump):
        output_lines = []
        output_lines.append("mov al, " + byte_name)
        compensate_for_shift = 0
        binary_number = byte[len(byte) - 1]
        print_compare = 0
        for command in byte[:-1]:  # remove the actual command with :-1
            command_sum = command[0] + command[1]
            index = command[0]
            length = command[1]

            if index == 0 and length < 8:  # the word is at the start of the command
                if not length == 0: #FIXME
                    output_lines.append("shl al, " + str(length))
                    binary_number = binary_number[length:]
                    compensate_for_shift += length
                print_compare = 1
            elif command_sum == 8 and length < 8:  # the word is at the end of the command
                if not length + compensate_for_shift == 0:  #FIXME
                    output_lines.append("shr al, " + str(length + compensate_for_shift))
                    binary_number = binary_number[:-length]
                print_compare = 1
            elif index > 0 and length < 8:  # the word is somewhere in the middle of the command
                if not str(8 - index) == 0: #FIXME
                    output_lines.append("shr al, " + str(8 - index))
                    output_lines.append("shl al, " + str(8 - index))
                if not str(index + length):
                    output_lines.append("mov ah, " + byte_name)
                    output_lines.append("shl ah, " + str(index + length))
                    output_lines.append("shr ah, " + str(index + length))
                    output_lines.append("add al, ah")
                print_compare = 1
                binary_number = re.sub(r"[a-zA-Z]", "0", binary_number)

        if print_compare == 1:
            number = binary_to_number(binary_number)
            output_lines.append("cmp al, " + str(number))
            output_lines.append("je yes_" + str(command_number) + "_" + str(spec_jump))
            output_lines.append("jmp not_" + str(command_number))
            output_lines.append("yes_" + str(command_number) + "_" + str(spec_jump) + ":")
            spec_jump += 1

        return output_lines, spec_jump

    def num_there(s):
        return any(i.isdigit() for i in s)

    def decode_special_variable(start, length, db_var):
        output_lines = []
        if start == 0 and length < 8:  # the word is at the start of the command
            output_lines.append("shr al, " + str(8 - length))
        elif start + length == 8 and length < 8:  # the word is at the end of the command
            output_lines.append("shl al, " + str(8 - length))
            output_lines.append("shr al, " + str(8 - length))
        elif start > 0 and length < 8:  # the word is somewhere in the middle of the command
            output_lines.append("shl al, " + str(start))
            output_lines.append("shr al, " + str(8 - length))

        output_lines.append(f"mov {db_var}, al")
        return output_lines

    def strip_numbers(o_line):
        n_line = re.sub(r'[0-9]+', "", o_line).strip()
        return n_line


    output_lines = []  # this does not have anything in common with lines or names
    output_lines.append("check_commands:")
    command_number = 0
    for line in lines:
        spec_jump = 0
        output_lines.append(f";--> {command_names[command_number][0]}-{command_names[command_number][1]} <--")

        # do the command detection
        use_two_bytes = 2
        print_word_type_command = 0
        for byte in line:
            temp_byte = re.sub(r'[0-9]+', "", byte[len(byte) - 1]).strip()
            if len(temp_byte) == 1 and "w" in temp_byte:
                print_word_type_command = 1
            else:
                print_word_type_command = 0

            if num_there(byte[len(byte) - 1]):
                output_lines.append(";--> The byte: " + byte[len(byte) - 1] + " <--")
                if use_two_bytes == 2:
                    use_two_bytes = 0
                    temp_line = byte_commands(byte, "byte_", spec_jump)
                    output_lines += temp_line[0]
                    spec_jump = temp_line[1]
                else:
                    use_two_bytes = 1
                    output_lines.append("cmp next_byte_available, 1")
                    output_lines.append("je yes_" + str(command_number) + "_" + str(spec_jump))
                    output_lines.append(f"jmp not_{str(command_number)}")
                    output_lines.append("yes_" + str(command_number) + "_" + str(spec_jump) + ":")
                    spec_jump += 1
                    temp_line = byte_commands(byte, "next_byte", spec_jump)
                    output_lines += temp_line[0]
                    spec_jump = temp_line[1]

        if print_word_type_command == 0:
            output_lines.append(f"mov ptr_, offset {new_names[command_number][0]}")
            output_lines.append("call write_to_line")

        # do the variable detection
        for byte in line:
            byte_string = byte[len(byte) - 1]

            element_in_list = 0
            no_read_bytes = 0
            for cm_val in cm_val_file_lines:
                special_variable = cm_val[0]
                move_to_db = cm_val[1]

                if special_variable in byte_string:
                    if move_to_db == "#":
                        output_lines.append(
                            f";--> The variable '{special_variable}' cannot be decoded by this function <--")
                        no_read_bytes = 1
                        break

                    output_lines.append(f";--> The variable '{special_variable}' in reformed byte: '{byte_string}' <--")
                    start = byte_string.index(special_variable)
                    length = len(special_variable)

                    replacement_value = ""  # remove the variable from byte to avoid decoding problems with one symbol variables like 's' 'w' 'd'
                    for i in range(0, length):
                        replacement_value += '.'
                    byte_string = byte_string.replace(special_variable, replacement_value)

                    if not move_to_db == '-':
                        output_lines.append("mov al, byte_")
                        output_lines += decode_special_variable(start, length, move_to_db)
                    else:
                        output_lines.append(";--> Failed to find. Missing global variable. <--")

            element_in_list += 1
            if no_read_bytes == 0:
                output_lines.append("call read_bytes")

        if print_word_type_command == 1:
            output_lines.append(";--> Two names found <--")
            output_lines.append("cmp w_, 1")
            output_lines.append(f"je other_name_{command_number}")
            output_lines.append(f"mov ptr_, offset {new_names[command_number][0]}")
            output_lines.append(f"jmp simple_name_{command_number}")
            output_lines.append(f"other_name_{command_number}:")
            output_lines.append(f"mov ptr_, offset {new_names[command_number][1]}")
            output_lines.append(f"simple_name_{command_number}:")
            output_lines.append("call write_to_line")

        commands = []
        stripped_command_name = strip_numbers(command_names[command_number][0])
        for funct in auto_functions:
            if funct[0] == stripped_command_name:
                #print(f"{funct[0]} - {stripped_command_name}")
                if len(funct[1]) > 0:
                    #print("A function for command was found!")
                    commands.append(funct[1])
                    break

        funct = manual_functions[command_number]
        skip_other_funcs = 0
        if not funct == '-':
            if "--force" in funct:
                skip_other_funcs = 1
                funct = funct.replace("--force", "")
                funct = funct.strip()

            output_lines.append(f"call {funct}")

        # execute other functions if --force was not used in manual_functions.txt
        if skip_other_funcs == 0:
            # execute functions based on what variables were used
            for command in commands:
                output_lines.append(f"call {command}")

        output_lines.append("call end_line")

        output_lines.append(f"quick_exit_{str(command_number)}:")
        output_lines.append(f"jmp quick_exit_{str(command_number + 1)}")

        output_lines.append("not_" + str(command_number) + ":")
        output_lines.append('\n')
        command_number += 1

    output_lines.append(f";call com_check_done")
    output_lines.append(f"mov ptr_, offset wtf_n")
    output_lines.append(f"call write_to_line")
    output_lines.append(f"call end_line")
    output_lines.append(f"call read_bytes")
    output_lines.append(f"quick_exit_{str(command_number)}:")
    output_lines.append("")
    output_lines.append("RET")

    f = open(output_file, "w")
    for line in output_lines:
        f.write('   ' + line + '\n')


    # See PyCharm help at https://www.jetbrains.com/help/pycharm/

def function_detection(output_file):
    file = open("Files/commands.txt", "r")
    lines = file.read()
    lines = lines.strip().split('\n')

    new_lines = []
    for line in lines:
        line = line.strip().split('â')[0].strip()
        line = re.sub(r'[0-9]+', "", line).strip()
        new_lines.append(line)

    lines = new_lines
    new_lines = []
    for line in lines:
        if not (line in new_lines):
            new_lines.append(line)
    lines = new_lines

    output_f = open(output_file, "w")
    for line in lines:
        output_f.write(line + "\n")
