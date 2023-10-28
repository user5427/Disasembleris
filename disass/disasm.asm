.model small
.stack 100h
.data

    fn_in db 127 dup(?)      ; input file name (must be .com)
    msg db "Error!", 24h     ; numbers_in_binary error message if something went wrong
    fh_in dw 0               ; used to save file handles

    buff db 200h dup(?)      ; the buffer which will be used to read the input file later

.code
start:

    mov ax, @data            ; get data
    mov ds, ax     

    mov ah, 0ah              ; why?
    mov dx, offset fn_in     ; no but why?
    int 21h                  ; why is this needed?

    xor cx, cx               ; i have no idea how this works and at this point i am too scared to ask
    mov cl, es:[80h]         ; the length of the argument?
    mov si, 81h              ; the start of the argument?
    mov di, offset fn_in     ; move the adress of file name to register dx
    jcxz error

    SKAITYTI:           
    mov al, es:[si]          ; move to register al one symbol from start of the argument
    mov [di], al             ; save the symbol in the file name 'array'
    inc si                   ; inc si to check another symbol in the argument
    inc di                   ; inc di to save another symbol in the file name 'array'
    loop SKAITYTI            ; loop till cx register is equal to zero

    mov ax, 3d00h            ; open existing file in read mode only
    mov dx, offset fn_in     ; return file handle to register AX
    inc dx                   ; ignore the whitespace at start
    int 21h                  ; return: CF set on error, AX = error code. CR clear if successful, AX = file handle

    JC error                 ; jump if carry flag = 1 (CF = 1)
    mov fh_in, ax            ; save the file handle in the double word type for later use

    mov dx, offset buff      ; the start adress of the array "buff"

    ;l:

    ; if my_brain_works:
    ;     output_code()


    ;jmp l:

    mov ah, 9
    mov dx, offset fn_in
    int 21h

    mov ax, 4c00h           ; end the program
    int 21h  

    error:                  ; output error msg
    mov ah, 9
    mov dx, offset msg
    int 21h

    mov ax, 4c01h           ; vienetas reiskia visi kiti baitai, o ne 0 yra klaida <- no idea what this means
    int 21h 

end start

