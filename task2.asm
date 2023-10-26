.model small
.stack 100h
.data

    fn_in db 127 dup(?)      ; input file names
    msg db "Error!", 24h     ; numbers_in_binary error message if something went wrong
    fh_in dw 0               ; used to save file handles
                             
    buff db 200h dup(?)      
    numbers_in_binary db 10 dup(0)     ; symb, words, lowC, highC
    output_symbols db "Symboliu yra: ", 24h
    output_words db "Zodziu yra: ", 24h
    output_low db "Mazuju raidziu yra: ", 24h
    output_high db "Didziuju raidziu yra: ", 24h   
    endl db 0dh, 0ah, 24h
    limit_reached db 0       ; stop reading if the number has reached its maximum value
    limit_reached_msg db "Pasiektas skaiciu maksimumas!", 24h
    
    number_in_ASCII db 0, 255 dup(?)

.code
start:
    mov ax, @data            ; get data
    mov ds, ax     

    mov ah, 0ah
    mov dx, offset fn_in
    int 21h

    xor cx, cx
    mov cl, es:[80h]
    mov si, 81h
    mov di, offset fn_in
    jcxz error

    SKAITYTI:
    mov al, es:[si]
    mov [di], al
    inc si
    inc di
    loop SKAITYTI

    mov ax, 3d00h            ; open existing file in read mode only
    mov dx, offset fn_in     ; return file handle to register AX
    inc dx
    int 21h                  ; return: CF set on error, AX = error code. CR clear if successful, AX = file handle

    JC error                 ; jump if carry flag = 1 (CF = 1)
    mov fh_in, ax            ; save the file handle in the double word type for later use

    mov dx, offset buff      ; the start adress of the array "buff"

                             ; dx is the adress of the buffer which will be used by
                             ; both the read and the write instructions

l:                           ; the loop is continous. It will only stop if there is an error or the program has reached file end
    xor cx, cx               ; just in case
    mov ax, 3f00h            ; 3f - read file with handle, ax - subinstruction
    mov bx, fh_in            ; bx- the input file handle
    mov cx, 200h             ; cx - number of bytes to read
    int 21h                  
    JC error                 ; if there is an error, skip the rest of the code         
    
    mov cx, ax               ; if the program reached file end, exit the loop. AX register returns number of bytes read
    jcxz end_search          ; jump if cx is zero
    
    mov cx, ax
    push ax
    push dx                                                               
    call search_buff         ; loop through all elements in the buff
    pop dx
    pop ax  

    cmp limit_reached, 1
    je end_search

    call print_progress      ; show that the program is doing something
    jmp l                    ; the loop jump, like do {} while();

error:                       ; move this before end_search if it does not behave normaly
    mov ah, 9
    mov dx, offset msg
    int 21h

    mov ax, 4c01h            ; vienetas reiskia visi kiti baitai, o ne 0 yra klaida
    int 21h 

end_search:                  ; used as a pointer for the jump when the program finished reading files

    mov ax, 3e00h            ; close file with a handle
    mov bx, offset fh_in     ; move file handle to register bx
    int 21h      
                             ; print new line
    mov ah, 9
    mov dx, offset endl
    int 21h
    
    mov SI, offset numbers_in_binary
    mov dx, [SI + 1]
    call convert_decimal     ; convert the number to ASCII symbols, this will set DI to output aswell    
    mov dx, offset output_symbols ; set dx to have the adress of the string
    call print_line
    
    mov dx, [SI + 3]
    call convert_decimal     ; convert the number to ASCII symbols      
    mov dx, offset output_words
    call print_line
        
    mov dx, [SI + 5]
    call convert_decimal     ; convert the number to ASCII symbols   
    mov dx, offset output_low 
    call print_line
    
    mov dx, [SI + 7]
    call convert_decimal     ; convert the number to ASCII symbols    
    mov dx, offset output_high
    call print_line

    cmp limit_reached, 1
    jne skip_size_error
    call print_size_error
    skip_size_error:
    mov ax, 4c00h            ; vienetas reiskia visi kiti baitai, o ne 0 yra klaida
    int 21h            

print_progress:
    push dx
    mov ah, 2
    mov dl, '.'
    int 21h
    pop dx                   ; return dx register back to its previous state    
    RET                                                                    
    
print_line:                  ; set dx to message adress
    mov ah, 9
    int 21h                                                          
    
    mov ax, 4000h                    
    mov bx, 1
    xor cx, cx
    xor dx, dx
    mov cx, [DI]             ; the length of number
    mov ch, 0
    mov dx, offset number_in_ASCII + 1          ; the number symbol array
    int 21h  
    
    mov dl, 0                ; reset number length in the output array
    mov [DI], dl
    
    mov ah, 9
    mov dx, offset endl
    int 21h
    RET

print_size_error:
    mov ah, 9
    mov dx, offset limit_reached_msg
    int 21h
    RET

convert_decimal:             ; takes number in dx register  
    push ax
    push dx
    push cx
    push bx
    
    mov DI, offset number_in_ASCII               
    
    xor cx, cx
    mov ax, dx                  ; move the number from dx to register ax
    mov bl, [DI]                ; the lenght of numbers_in_binary

    ASCII_values_loop:   
    inc bl
    push bx
    
    cmp ah, 0
    jne large_number
    
    xor dx, dx
    mov dl, 10
    div dl
    add ah, 48                  ; fix the ASCII stuff, this is value 
    mov dl, ah   
    xor ah, ah                  ; reset ah so it does not break division
    jmp save_number
 
    large_number:       
    xor dx, dx
    mov bx, 10
    div bx
    add dl, 48
    
    save_number:
    pop bx
    mov [DI + bx], dl           ; move the location of the symbol to our symbol array, similar to array[i] = location      
    
    
    xor dx, dx                  ; this one is used for comparing two values
    cmp ax, dx
    jle exit_loop               ; if the number is 0 after division, exit the loop

    jmp ASCII_values_loop       ; continue the loop if the number is not 0 for further divisions

    exit_loop:
        
    mov dl, bl                  ; save a copy
    mov ax, [DI]                ; save the previous last position             
    mov ah, 0                   ; remove the senior byte
    mov [DI], bl                ; save the bx value
    add al, 1                   ; get the begining of element
    
    mov cl, dl
    sub cl, al                  ; get how many times to loop
    
    flip_loop:                  ; change the number from 4321 to its real value 1234                              
                                ; al - the left element
                                ; dl - the right element                    
    mov bl, al
    mov ah, [DI + bx]           ; get the left element
    mov bl, dl
    mov dh, [DI + bx]           ; get the right element  
    cmp ah, dh                  ; compare these two values
    je skip                     ; if they are the same, skip then
    
    mov bl, al                  ; flip the two numbers in the array
    mov [DI + bx], dh   
    mov bl, dl
    mov [DI + bx], ah
    
    skip:
    inc al
    dec dl
    
    jcxz exi_loop     
    loop flip_loop    
 
    exi_loop:
    
    pop bx
    pop cx
    pop dx
    pop ax
    
    RET
                             ; return back to loop   

search_buff:                 ; search for information about the elements (amount of symbols, lower case, higher case, letters)
    
    push bx
    mov DI, offset numbers_in_binary    ; get the numbers_in_binary array address 
    
    mov ax, [DI + 1]         ; get the symbol amount
    add ax, cx               ; add the value with register cx to find how many symbols the file has now    
    cmp ax, cx
    jnl number_not_higher_than_max
    xor ax, ax
    not ax
    number_not_higher_than_max:
    mov [DI + 1], ax         ; save the value back in the numbers_in_binary array        
    
    xor ax, ax               ; reset register ax.
    xor dx, dx               ; if dx register is set to one, then it is checking a word, otherwise, there is a special symbol

    xor dx, dx
    mov dl, [DI]             ; the info about previous check, if the program is checking the buffer first time, then this value is set to 0

    mov SI, offset buff      ; the address of the buffer
    
    j:                       ; loop until register CX is equal to zero
    
    mov al, 65               ; the letter 'A'
    mov ah, [SI]             ; move the first value in the buffer to the register ah
    cmp ah, al               ; if previously there was a space but now there is a letter, then it is a new word. 
    jnae not_letter          ; if value is less than 65, then it is definetely not a letter

    mov al, 90               ; the letter 'Z'
    cmp ah, al    
    jb higher_case           ; if the letter is higher case, then jump to the higher_case pointer, otherwise, the program needs to check if it is lower case letter

    mov al, 97               ; the letter 'a'    
    cmp ah, al
    jnae not_letter          ; if the value is not above or equal, then it is a symbol between higher and lower case letters

    mov al, 122              ; the letter 'z'
    cmp ah, al    
    jb lower_case            ; if the letter is lower case, then jump to the lower_case pointer, otherwise, it is not a letter
            
    jmp not_letter

    higher_case:             ; save how much higher case letters there are in the numbers_in_binary array
    mov ax, [DI + 7]
    mov bx, ax
    inc ax
    cmp ax, bx
    jnl number_not_higher_than_max_two
    xor ax, ax
    not ax
    number_not_higher_than_max_two:
    mov [DI + 7], ax
    jmp check_new_word

    lower_case:              ; save how much lower case letters there are in the numbers_in_binary array
    mov ax, [DI + 5]
    mov bx, ax
    inc ax
    cmp ax, bx
    jnl number_not_higher_than_max_three
    xor ax, ax
    not ax
    number_not_higher_than_max_three:
    mov [DI + 5], ax
    
    jmp check_new_word

    not_letter:              ; if it is not letter, check if it is a space or new line
    ;mov al, 9                ; tab
    ;cmp ah, al
    ;je special_symbol
    ;mov al, 10               ; newl
    ;cmp ah, al
    ;je special_symbol
    ;mov al, 13               ; create
    ;cmp ah, al
    ;je special_symbol
    ;mov al, 32               ; space
    ;cmp ah, al
    ;je special_symbol
    jmp special_symbol
    jmp exit_check           ; if it is not a special symbol, then skip the rest of the checking
    
    special_symbol:          ; if it is a special symbol, set register dx to zero
    mov dx, 0                ; it is a special symbol, do nothing
    jmp exit_check

    check_new_word:          ; check if the current symbol is the beggining of a new word
    mov ax, 1
    cmp ax, dx
    je exit_check            ; if previously the program was checking a word too, then it is not a new word
    
    mov dx, ax               ; set dx to one to indicate that it is a new word
    mov ax, [DI + 3]         ; word counter  
    mov bx, ax
    inc ax     
    cmp ax, bx
    jnl number_not_higher_than_max_four
    xor ax, ax
    not ax
    number_not_higher_than_max_four:
    mov [DI + 3], ax         ; save word counts

    exit_check:              ; skip checking symbol
    inc SI                   ; lastly increment SI to check the next element in the buffer
    loop j

    mov [DI], dl             ; save the info if the program was checing word or special symbol for the next time

    xor bx, bx
    not bx
    cmp [DI + 1], bx
    je limit_r
    cmp [DI + 3], bx
    je limit_r
    cmp [DI + 5], bx
    je limit_r
    cmp [DI + 7], bx
    je limit_r

    jmp limit_not_reached

    limit_r:
    mov limit_reached, 1

    limit_not_reached:

    pop bx    
    RET


end start
