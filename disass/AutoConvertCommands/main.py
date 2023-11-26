# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


def separate_commands(text):
    lines = []
    for line in text:
        line = line.split('â', 1)[0]
        lines.append(line)

    return lines
def separate_command_words(lines):
    new_lines = []
    for line_ in lines:
        line_ = line_.strip().split(' ')
        new_lines.append(line_)

    return new_lines
def change_word_names(lines):
    bad_names = ["mod", "[poslinkis]", "poslinkis", "[bovb]"]
    corrected_names = ["md", "poslinki", "poslinki", "bovb"]
    new_lines = []
    for line in lines:
        line_ = []
        for word in line:

            for i in range(0, 4):
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



file = open("commands.txt", "r")
text = file.read()
text = text.strip().split('\n')

lines = separate_commands(text)
lines = separate_command_words(lines)
# i want to actually represent each command name in a way that its name would represent the length of command
lines = change_word_names(lines)
# now i will just copy 8 symbols to make a byte
lines = make_bytes(lines)
lines = join_subbytes(lines)

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
            if not(symbol == '0' or symbol == '1'):
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

        if len1 > 0 or non_numbers_.__len__() == 0:
            non_numbers_.append(start_index)
            non_numbers_.append(len1)
            new_byte.append(non_numbers_[:])
            non_numbers_.clear()
            
        new_byte.append(byte)
        new_line.append(new_byte[:])
        print(new_byte)

    new_lines.append(new_line[:])

















# See PyCharm help at https://www.jetbrains.com/help/pycharm/
