.model tiny
.386                        ; Just to show at what position it has to be
;.stack 100h
.data

    fn_in db 127 dup(?)      ; input file name (must be .com) ;Filename is limited to 12 characters
    msg db "Error!", 24h     ; numbers_in_binary error message if something went wrong
    fh_in dw 0               ; used to save file handles

    buff db 200h dup(?)      ; the buffer which will be used to read the input file later
    index db -1              ; index used to get byte from buffer and remember last location
    file_end db 0            ; is set to 1 when file end is reached
    byte_ db 8 dup(?)    ; used to get a byte from buffer

.code
ORG 100h
start:
    
    call read_argument
    call open_file 
    call loop_over_bytes     

    mov ax, 4c01h
    int 21h 

; -- The end.

error:                  ; output error msg
    mov ah, 9
    mov dx, offset msg
    int 21h
;error

read_argument:
    xor cx, cx               ; i have no idea how this works and at this point i am too scared to ask
    mov cl, es:[80h]         ; the length of the argument?
    mov si, 82h                 ;We can start from 82h, since 81h              ; the start of the argument? will always contain a space bar
    dec cl                      ;We need to adjust C so that it truthfully represents the character amount
    mov di, offset fn_in     ; move the adress of file name to register dx
    jcxz error

    SKAITYTI:           
    mov al, es:[si]          ; move to register al one symbol from start of the argument
    mov [di], al             ; save the symbol in the file name 'array'
    inc si                   ; inc si to check another symbol in the argument
    inc di                   ; inc di to save another symbol in the file name 'array'
    loop SKAITYTI            ; loop till cx register is equal to zero

RET

open_file:
    mov ax, 3d00h            ; open existing file in read mode only
    mov dx, offset fn_in     ; return file handle to register AX
    inc dx                   ; ignore the whitespace at start
    int 21h                  ; return: CF set on error, AX = error code. CR clear if successful, AX = file handle

    JC error                 ; jump if carry flag = 1 (CF = 1)
    mov fh_in, ax            ; save the file handle in the double word type for later use

RET

loop_over_bytes:

    loop_bytes:                ; do this until the end of file
    
    call get_byte              ; returns byte to byte_ from buffer
    call check_byte            ; check the command

    jmp loop_bytes

RET

read_buffer:
    mov dx, offset buff      ; the start adress of the array "buff"
    xor cx, cx               ; just in case
    mov ax, 3f00h            ; 3f - read file with handle, ax - subinstruction
    mov bx, fh_in            ; bx- the input file handle
    mov cx, 00A0h            ; cx - number of bytes to read
    int 21h                  ;
    JC error                 ; if there are errors, stop the program
RET

get_byte:
    push ax
    push bx
    push cx
    push dx

    cmp index, -1
    jne skip_first_time_reading
    mov index, 0
    call read_buffer
    skip_first_time_reading:

    cmp index, 160
    jnae skip_reading
    mov index, 0
    call read_buffer
    skip_reading:

    jcxz file_end_reached

    mov SI, offset buff
    mov DI, offset byte_
    mov cx, 8

    okay:
    mov al, [SI + index]
    mov [DI], al
    inc SI
    inc DI
    loop okay

    add index, 8
    
    jmp skip_file_end_indicator
    file_end_reached:
    mov file_end, 1
    skip_file_end_indicator:
    
    pop dx
    pop cx
    pop bx
    pop ax

RET

check_byte:
    xor ax, ax
    mov al, byte_

    
    




RET




; ignore everything below, it is pointless

    ;mov ah, 9
    ;mov dx, offset fn_in
    ;int 21h

    mov ax, 4c00h           ; end the program
    int 21h  

end start

