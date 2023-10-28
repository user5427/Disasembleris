.model small
.stack 100h
.data

    fn_in db 127 dup(?)      ; input file name (must be .com)
    msg db "Error!", 24h     ; numbers_in_binary error message if something went wrong
    fh_in dw 0               ; used to save file handles

.code
start:

    mov ax, @data            ; get data
    mov ds, ax     

    mov ah, 0ah             ;wot? imsi inputa ne tik is parametru bet ir per terminala?
    mov dx, offset fn_in
    int 21h

    xor cx, cx                ; read the argument
    mov cl, es:[80h]
    mov si, 82h                 ;We can start from 82h, since 81h will always contain a space bar
    dec cl                      ;We need to adjust C so that it truthfully represents the character amount
    mov di, offset fn_in
    jcxz error

    SKAITYTI:                 ;
    mov al, es:[si]
    mov [di], al
    inc si
    inc di
    loop SKAITYTI

    mov ah, 9
    mov dx, offset fn_in
    int 21h


    error:                       ; move this before end_search if it does not behave normaly
    mov ah, 9
    mov dx, offset msg
    int 21h

    mov ax, 4c01h            ; vienetas reiskia visi kiti baitai, o ne 0 yra klaida
    int 21h 

end start

