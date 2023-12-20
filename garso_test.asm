.model small
.stack 100h
.code
start:
    mov ax, 0e07h
    int 10h
    mov ax, 4c00h
    int 21h
end start