.model small
.stack 100h
.data
    buff  db 127 dup(?)
.code
start:
    push @data
    pop ds

    mov ah, 0ah
    mov dx, offset buff
    int 21h

    xor cx, cx
    mov cl, es:[80h]
    mov si, 81h
    mov di, offset buff
    jcxz exit
l:
    mov al, es:[si]
    mov [di], al
    inc si
    inc di
    loop l
exit:
    mov ax, 4000h
    mov bx, 1
    xor cx, cx
    mov cl, es:[80h]
    mov dx, offset buff
    int 21h

    mov ax, 4c00h
    int 21h
end start
