.model tiny
.386                        ; Just to show at what position it has to be
;.stack 100h
.data

    fn_in db 127 dup(?)      ; input file name (must be .com) ;Filename is limited to 12 characters
    fn_out db 127 dup(?)
    msg db "Error!", 24h     ; numbers_in_binary error message if something went wrong
    fh_in dw 0               ; used to save file handles
    fh_out dw 0

    buff db 200h dup(?)      ; the buffer which will be used to read the input file later
    index db -1              ; index used to get byte from buffer and remember last location
    file_end db 0            ; is set to 1 when file end is reached
    byte_ db 8 dup(?)        ; used to get a byte from buffer

    write_buff db 200h (?)
    write_index db 0

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

write_to_file ; call this and give it a text string, this will save it in buffer and when buffer reaches limit it will write to file *.asm

RET

check_byte:
    xor ax, ax

    mov al, byte_ ; 0000 00dw mod reg r/m [poslinkis] – ADD registras += registras/atmintis
    shr al, 2 ;  0000 00dw -> 0000 0000
    cmp al, 0 
    jne not_1 

    not_1:

    mov al, byte_ ; 0000 010w bojb [bovb] – ADD akumuliatorius += betarpiškas operandas
    shr al, 1 ; 0000 010w -> 0000 0010
    shl al, 1 ; 000 0010 -> 0000 0100
    cmp al, 4 
    jne not_2 

    not_2:

    mov al, byte_ ; 000sr 110 – PUSH segmento registras 
    shr al, 5 ; 000sr 110 -> 0000 0000
    mov ah, byte_
    shl ah, 5 ; 000sr 110 -> 1100 0000
    shr ah, 5 ; 1100 0000 -> 0000 0110
    add al, ah ; 0000 0000 + 0000 0100 -> 0000 0110
    cmp al, 6 ; check 0000 0110
    jne not_3
    
    not_3:
    
    mov al, byte_ ; 000sr 111 – POP segmento registras
    shr al, 5 ; 000sr 111 -> 0000 0000
    mov ah, byte_
    shl ah, 5 ; 000sr 111 -> 1110 0000
    shr ah, 5 ; 1110 0000 -> 0000 0111
    add al, ah ; 0000 0000 + 0000 0111 -> 0000 0111
    cmp al, 7 ; check 111
    jne not_4

    not_4:

    mov al, byte_ ; 0000 10dw mod reg r/m [poslinkis] – OR registras V registras/atmintis
    shr al, 2
    cmp al, 




RET




; ignore everything below, it is pointless

    ;mov ah, 9
    ;mov dx, offset fn_in
    ;int 21h

    mov ax, 4c00h           ; end the program
    int 21h  

end start

