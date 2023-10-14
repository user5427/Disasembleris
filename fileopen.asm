.model small
.stack 100h
.data
    buff1 db 9 dup(0)
    buff2 db 9 dup(0)
    file1 db 0
    file2 db 0
    buff db 200 dup (0)
.code
start:
    push @data
    pop ds
    