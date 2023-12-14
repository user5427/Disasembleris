.model small
;.386                        ; Just to show at what position it has to be
.stack 100h
.data

    endl db 0dh, 0ah ;cr, lf
    argument db 127 dup('0')
    fn_in db "HELLO.COM0", 13 dup(0)    ; 127 dup(?)      ; input file name (must be .com) ;Filename is limited to 12 characters
    fn_out db "out555.txt0", 13 dup(0)   ; 127 dup(?)      ;filenames are 0 terminated
    error_msg db "Error!", 24h     ; numbers_in_binary error message if something went wrong
    fh_in dw 0               ; used to save file handles
    fh_out dw 0
    owner_msg db "Disassembleris. Studentai, kurie parase sia amazing programa: ", 24h
    help_msg db "Disassembleris. Iveskite ivesties ir isvesties failus atskirtus tarpais argumente.", 24h   
    help_called db 0
    test_msg db "test ", 24h

    buff db 200 dup(?)      ; the buffer which will be used to read the input file later
    read_symbols db 0

    write_buff db 200 dup(?)
    write_index db 0
    line db 50 dup(?)        ; line buffer, used so the code is not as crazy
    line_length db 0         ; line length
    ptr_ dw 0

    index db 0               ; index used to get byte from buffer and remember last location
    byte_ db 0               ; used to get a byte from buffer
    file_end db 0            ; is set to 1 when file end is reached
    next_byte db 0           
    next_byte_available db 0 
    first_byte_available db 2
    second_byte_used db 1    ; a quick way to tell the function that it should renew the current and following byte values. May only be used when the next_byte value was used
    ;operation parameters
    w_ db 0
    s_ db 0
    d_ db 0
    v_ db 0
    sr_ db 0
    mod_ db 0
    reg_ db 0
    r_m_ db 0
    com_num_ db 0

    double_byte_number db 5 dup(0)
    binary_number db 0
    number_in_ASCII db 10 dup(0)
    register_index db 0

    count_segment dw 0
    add_cs_bool db 0

;lots_of_names:
    wtf_n db "unknown", 24h   
    mov_n db "MOV", 24h   
    nop_n db "NOP", 24h
    add_n db "ADD", 24h
    push_n db "PUSH", 24h
    pop_n db "POP", 24h
    or_n db "OR", 24h
    adc_n db "ADC", 24h
    sbb_n db "SBB", 24h
    and_n db "AND", 24h
    daa_n db "DAA", 24h
    sub_n db "SUB", 24h
    das_n db "DAS", 24h
    xor_n db "XOR", 24h
    aaa_n db "AAA", 24h
    cmp_n db "CMP", 24h
    aas_n db "AAS", 24h
    inc_n db "INC", 24h
    dec_n db "DEC", 24h
    jo_n db "JO", 24h
    jno_n db "JNO", 24h
    jnae_n db "JNAE", 24h
    jb_n db "JB", 24h
    jc_n db "JC", 24h
    jae_n db "JAE", 24h
    jnb_n db "JNB", 24h
    jnc_n db "JNC", 24h
    je_n db "JE", 24h
    jz_n db "JZ", 24h
    jne_n db "JNE", 24h
    jnz_n db "JNZ", 24h
    jbe_n db "JBE", 24h
    jna_n db "JNA", 24h
    ja_n db "JA", 24h
    jnbe_n db "JNBE", 24h
    js_n db "JS", 24h
    jns_n db "JNS", 24h
    jp_n db "JP", 24h
    jpe_n db "JPE", 24h
    jnp_n db "JNP", 24h
    jpo_n db "JPO", 24h
    jl_n db "JL", 24h
    jnge_n db "JNGE", 24h
    jge_n db "JGE", 24h
    jnl_n db "JNL", 24h
    jle_n db "JLE", 24h
    jng_n db "JNG", 24h
    jg_n db "JG", 24h
    jnle_n db "JNLE", 24h
    test_n db "TEST", 24h
    xchg_n db "XCHG", 24h
    lea_n db "LEA", 24h
    cbv_n db "CBV", 24h
    cwd_n db "CWD", 24h
    call_n db "CALL", 24h
    wait_n db "WAIT", 24h
    pushf_n db "PUSHF", 24h
    popf_n db "POPF", 24h
    sahf_n db "SAHF", 24h
    lahf_n db "LAHF", 24h
    movsb_n db "MOVSB", 24h
    movsw_n db "MOVSW", 24h
    cmpsb_n db "CMPSB", 24h
    cmpsw_n db "CMPSW", 24h
    stosb_n db "STOSB", 24h
    stosw_n db "STOSW", 24h
    lodsb_n db "LODSB", 24h
    lodsw_n db "LODSW", 24h
    scasb_n db "SCASB", 24h
    scasw_n db "SCASW", 24h
    ret_n db "RET", 24h
    retn_n db "RETN", 24h
    les_n db "LES", 24h
    lds_n db "LDS", 24h
    retf_n db "RETF", 24h
    int_3_n db "INT 3", 24h
    int_n db "INT", 24h
    into_n db "INTO", 24h
    iret_n db "IRET", 24h
    rol_n db "ROL", 24h
    ror_n db "ROR", 24h
    rcl_n db "RCL", 24h
    rcr_n db "RCR", 24h
    shl_n db "SHL", 24h
    sal_n db "SAL", 24h
    shr_n db "SHR", 24h
    sar_n db "SAR", 24h
    aam_n db "AAM", 24h
    aad_n db "AAD", 24h
    xlat_n db "XLAT", 24h
    esc_n db "ESC", 24h
    loopne_n db "LOOPNE", 24h
    loopnz_n db "LOOPNZ", 24h
    loope_n db "LOOPE", 24h
    loopz_n db "LOOPZ", 24h
    loop_n db "LOOP", 24h
    jcxz_n db "JCXZ", 24h
    in_n db "IN", 24h
    out_n db "OUT", 24h
    jmp_n db "JMP", 24h
    lock_n db "LOCK", 24h
    repnz_n db "REPNZ", 24h
    repne_n db "REPNE", 24h
    rep_n db "REP", 24h
    repz_n db "REPZ", 24h
    repe_n db "REPE", 24h
    hlt_n db "HLT", 24h
    cmc_n db "CMC", 24h
    not_n db "NOT", 24h
    neg_n db "NEG", 24h
    mul_n db "MUL", 24h
    imul_n db "IMUL", 24h
    div_n db "DIV", 24h
    idiv_n db "IDIV", 24h
    clc_n db "CLC", 24h
    stc_n db "STC", 24h
    cli_n db "CLI", 24h
    sti_n db "STI", 24h
    cld_n db "CLD", 24h
    std_n db "STD", 24h

    ; registrai
    ax_n db "AX", 24h
    al_n db "AL", 24h
    ah_n db "AH", 24h
    bx_n db "BX", 24h
    bl_n db "BL", 24h
    bh_n db "BH", 24h
    cx_n db "CX", 24h
    cl_n db "CL", 24h
    ch_n db "CH", 24h
    dx_n db "DX", 24h
    dl_n db "DL", 24h
    dh_n db "DH", 24h

    ; segmento registrai
    es_n db "ES", 24h
    cs_n db "CS", 24h
    ss_n db "SS", 24h
    ds_n db "DS", 24h

    ; kiti registrai
    si_n db "SI", 24h
    di_n db "DI", 24h
    bp_n db "BP", 24h
    sp_n db "SP", 24h


.code

start:
    mov ax, @data
    mov ds, ax
    ;call read_argument
    ;call loop_over_argumet
    ;call help_argument

    ;cmp help_called, 1
    ;je end_work

    call open_input_file 
    call open_output_file
    call loop_over_bytes     
    end_work:
    mov ax, 4c00h
    int 21h 

; -- The end.
com_check_done:
    mov first_byte_available, 0
RET

debug:
    push ax
    pop ax
RET

loop_over_bytes:

    
    call read_bytes            ; returns byte to byte_ from buffer
    loop_bytes:                ; do this until the end of file
    cmp first_byte_available, 0            ; TODO?
    je exit_byte_loop

   
    call check_commands   ; check the command


    jmp loop_bytes

    exit_byte_loop:
    call force_write_to_file
RET

error:                  ; output error msg
    mov ah, 9
    mov dx, offset error_msg
    int 21h


    mov ax, 4c01h
    int 21h
RET

;error

read_argument:
    xor cx, cx               ; clear cx to avoid corruuption
    mov cl, es:[80h]         ; the length of the argument
    mov si, 82h                 ;We can start from 82h, since 81h always contain a space bar
    dec cl                      ;We need to adjust cx so that it truthfully represents the character amount
    mov di, offset argument     ; move the adress of file name to register dx
    jcxz error

    SKAITYTI:           
    mov al, es:[si]          ; move to register al one symbol from start of the argument
    mov [di], al             ; save the symbol in the file name 'array'
    inc si                   ; inc si to check another symbol in the argument
    inc di                   ; inc di to save another symbol in the file name 'array'
    loop SKAITYTI            ; loop till cx register is equal to zero

RET
loop_over_argumet: ; get the argument, try to find space, and dollar symbol whatever
    push ax
    push bx
    push cx
    push dx
    
    xor cx, cx ; counter
    xor ax, ax ; temp char saver
    mov SI, offset argument
    mov DI, offset fn_in

    loop_first_argument:
    mov dl, 32
    cmp [SI], dl ; space
    je second_argument
    mov dl, 0
    cmp [SI], dl ; end of line
    je end_argument_copy

    mov al, [SI]
    mov [DI], al
    inc SI
    inc DI
    inc cx
    cmp cx, 13
    jae end_argument_copy
    jmp loop_first_argument

    second_argument:
    inc SI
    ;mov [DI], 24h
    mov DI, offset fn_out
    xor cx, cx
    loop_second_argument:
    mov dl, 0
    cmp [SI], dl ; end of line
    je end_argument_copy

    mov al, [SI]
    mov [DI], al
    inc SI
    inc DI
    inc cx
    cmp cx, 13
    jae end_argument_copy
    jmp loop_second_argument
    ;mov [DI], 24h


    end_argument_copy:
    pop dx
    pop cx
    pop bx
    pop ax
RET
help_argument:
    push ax
    push bx
    push cx
    push dx

    mov SI, offset fn_in
    mov dl, 92
    cmp [SI], dl
    jne not_help_msg
    inc SI
    mov dl, 63
    cmp [SI], dl
    jne not_help_msg

    mov ah, 9
    mov dx, offset owner_msg
    int 21h
    mov ah, 9
    mov dx, offset endl
    int 21h
    mov ah, 9
    mov dx, offset help_msg
    int 21h
    mov help_called, 1

    not_help_msg:
    pop dx
    pop cx
    pop bx
    pop ax
RET

open_input_file:

    mov ax, 3d00h            ; open existing file in read mode only
    mov dx, offset fn_in     ; return file handle to register AX
    xor cx, cx
    int 21h                  ; return: CF set on error, AX = error code. CR clear if successful, AX = file handle

    JnC no_error
    call error                 ; jump if carry flag = 1 (CF = 1)
    no_error:
    mov fh_in, ax            ; save the file handle in the double word type for later use

RET
open_output_file:

    mov ax, 3c00h            ; open existing file in read mode only
    mov dx, offset fn_out     ; return file handle to register AX
    xor cx, cx
    int 21h                  ; return: CF set on error, AX = error code. CR clear if successful, AX = file handle

    JnC no_error_2
    call error                 ; jump if carry flag = 1 (CF = 1)
    no_error_2:
    mov fh_out, ax            ; save the file handle in the double word type for later use

RET

test_print:
    push ax
    push dx
    xor ax, ax
    mov ah, 9
    mov dx, offset test_msg
    int 21h
    pop dx
    pop ax
RET

read_bytes:
    push ax
    push cx
    mov al, second_byte_used


    cmp second_byte_used, 1
    jne skip_double_reading
    mov second_byte_used, 0 ; reset this so the program does not try to read two bytes at the same time next time
    mov cx, 2
    jmp skip_reseting_cx
    skip_double_reading:
    mov cx, 1
    skip_reseting_cx:

    get_bytes_loop:
    mov next_byte_available, 0
    mov al, next_byte
    mov byte_, al
    call get_byte
    loop get_bytes_loop

    cmp file_end, 1
    je end_func
    mov next_byte_available, 1
    end_func:

    pop cx
    pop ax
RET
get_byte:
    push ax
    push bx
    push cx
    push dx

    mov al, read_symbols
    cmp index, al
    jb skip_reading
    mov index, 0                ; reset index
    call read_buffer
    mov read_symbols, cl
    jcxz file_end_reached
    skip_reading:
    
    mov SI, offset buff

    xor bx, bx                  ; this is fine
    mov bl, index
    mov al, [SI + bx]
    mov next_byte, al           ; TODO there is a problem where this will be moved to byte_, but file_end will be set to 1
    inc index
    inc count_segment

    jmp skip_file_end_indicator

    file_end_reached:
    call test_print
    mov file_end, 1
    ;dec first_byte_available ; pasirodo baisiai sunkiai tam durnam assembleriui sumazinti sita vienu skaiciu tai tiesiog movinti i ji 0 ir tiketis kad kompas nesprogs
    mov first_byte_available, 0
    skip_file_end_indicator:

    pop dx
    pop cx
    pop bx
    pop ax

RET
read_buffer:
    mov dx, offset buff      ; the start adress of the array "buff"
    mov ax, 3f00h            ; 3f - read file with handle, ax - subinstruction
    mov bx, fh_in            ; bx- the input file handle
    mov cx, 200              ; cx - number of bytes to read
    int 21h                  ;
    JnC skip_error_3
    call error                 ; if there are errors, stop the program
    skip_error_3:
    mov cx, ax               ; move the amount of read symbols from ax to cx
RET


write_to_buff: ; call this and give it a text string, this will save it in buffer and when buffer reaches limit it will write to file *.asm
    push ax
    push bx
    push cx
    push dx

    xor ax, ax
    mov al, write_index
    add al, line_length
    cmp al, 200

    jnae skip_writing_to_file
    call write_to_file
    mov write_index, 0
    skip_writing_to_file:

    mov SI, offset line
    mov DI, offset write_buff
    xor cx, cx
    mov cl, line_length

    exchange_bytes:
    mov al, [SI]
    xor bx, bx          ;?
    mov bl, write_index
    mov [DI + bx], al
    inc write_index
    inc SI
    loop exchange_bytes
    mov line_length, 0

    pop dx
    pop cx
    pop bx
    pop ax
RET
write_to_file:
    mov ax, 4000h
    mov bx, fh_out
    xor cx, cx
    mov cl, write_index
    mov dx, offset write_buff
    int 21h
RET
write_to_line: ; takes a pointer and writes its contents to line, yes very simple
    push ax
    push bx
    push cx
    push dx

    mov SI, ptr_
    mov DI, offset line

    copy_values:
    mov al, [SI]

    cmp al, 24h   ; use 24h to detect string end
    je exit_copy_loop

    xor bx, bx
    mov bl, line_length
    mov [DI + bx], al
    inc line_length
    inc SI

    jmp copy_values
    exit_copy_loop:

    pop dx
    pop cx
    pop bx
    pop ax
RET
end_line: ; add endl to line and output line contents to the write buffer
    push ax
    push bx
    push cx
    push dx
    
    mov SI, offset endl
    mov DI, offset line
    xor bx, bx
    mov bl, line_length ; change offset line_length -> line_length

    mov cx, 2
    copy_endl:
    mov al, [SI]
    mov [DI + bx], al
    inc SI
    inc DI
    loop copy_endl

    add line_length, 2

    call write_to_buff

    pop dx
    pop cx
    pop bx
    pop ax
RET
force_write_to_file:
    push ax
    push bx
    push cx
    push dx
    call end_line
    call write_to_file ; this function does not have push or pop so it can mess up register values
    mov write_index, 0
    pop dx
    pop cx
    pop bx
    pop ax
RET

add_space_line:
    mov bx, offset line
    xor ax, ax
    mov al, line_length
    add bx, ax
    mov al, ' '
    mov [bx], al
    inc line_length
RET
add_left_bracket:
    mov bx, offset line
    xor ax, ax
    mov al, line_length
    add bx, ax
    mov al, '['
    mov [bx], al
    inc line_length
RET
add_right_bracket:
    mov bx, offset line
    xor ax, ax
    mov al, line_length
    add bx, ax
    mov al, ']'
    mov [bx], al
    inc line_length
RET
add_plus:
    mov bx, offset line
    xor ax, ax
    mov al, line_length
    add bx, ax
    mov al, '+'
    mov [bx], al
    inc line_length
RET
add_comma_line:
    mov bx, offset line
    xor ax, ax
    mov al, line_length
    add bx, ax
    mov al, ','
    mov [bx], al
    inc line_length
    call add_space_line
RET
add_h:
    mov bx, offset line
    xor ax, ax
    mov al, line_length
    add bx, ax
    mov al, 'h'
    mov [bx], al
    inc line_length
RET

; xddd doble xdddd
reset_double_byte_number:
    push ax
    mov DI, offset double_byte_number
    mov al, 0
    mov [DI], al
    mov [DI+1], al
    pop ax
RET
number_to_hex:
    push ax
    push bx
    push cx
    push dx

    mov dl, binary_number

    mov cl, dl
    shr cl, 4
    call convert_half_byte_to_HEX
    mov cl, dl
    shl cl, 4
    shr cl, 4
    call convert_half_byte_to_HEX

    call add_h

    pop dx
    pop cx
    pop bx
    pop ax
    call reset_double_byte_number
RET
double_byte_number_to_hex:
    push ax
    push bx
    push cx
    push dx

    mov SI, offset double_byte_number


    
    mov ah, [SI + 1]  ; while ah is for 00--
    mov cl, ah
    shr cl, 4
    call convert_half_byte_to_HEX
    mov ah, [SI + 1]  ; while ah is for 00--
    mov cl, ah
    shl cl, 4
    shr cl, 4
    call convert_half_byte_to_HEX

    mov al, [SI]      ; in reality al is actually --00
    mov cl, al
    shr cl, 4
    call convert_half_byte_to_HEX
    mov al, [SI]      ; in reality al is actually --00
    mov cl, al
    shl cl, 4
    shr cl, 4
    call convert_half_byte_to_HEX

    call add_h

    pop dx
    pop cx
    pop bx
    pop ax
    call reset_double_byte_number

RET
convert_half_byte_to_HEX: ; takes register 'cl' as input
    cmp cl, 9
    jbe number_
    add cl, 55
    jmp write_symbol

    number_:
    add cl, 48

    write_symbol:
    xor ch, ch
    xor bx, bx
    mov bx, offset line
    xor ax, ax
    mov al, line_length
    add bx, ax
    mov [bx], cl
    inc line_length
    
RET
add_counter_segment:
    mov add_cs_bool, 1
RET
convert_to_decimal:       ; takes number in the binary_number
    push ax
    push dx
    push cx
    push bx


    mov SI, offset double_byte_number
    mov dl, [SI]      ; in reality al is actually --00
    mov dh, [SI + 1]  ; while ah is for 00--
    mov DI, offset number_in_ASCII            
    mov al, 0   
    mov [DI], al ; reset digit count 
    
    xor cx, cx
    mov ax, dx                  ; move the number from dx to register ax
    mov bl, [DI]                ; the lenght of numbers_in_binary
    xor bx, bx

    cmp add_cs_bool, 1
    jne skip_cs_addition
    add ax, count_segment
    mov add_cs_bool, 0
    skip_cs_addition:

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
        
    mov [DI], bl                ; save the bx value
    xor cx, cx
    mov cl, [DI]

    xor bx, bx
    mov SI, offset number_in_ASCII
    mov DI, SI
    add SI, cx
    inc DI

    flip_loop:                  ; change the number from 4321 to its real value 1234                              
    
    cmp SI, DI
    jbe exi_loop

    mov dl, [DI]
    mov dh, [SI]

    mov [SI], dl
    mov [DI], dh

    inc DI
    dec SI
    
    jcxz exi_loop     
    loop flip_loop    
 
    exi_loop:

    ; add the $ symbol to number
    mov DI, offset number_in_ASCII
    xor bx, bx
    mov bl, [DI] ; the length of number
    mov al, 24h
    add bx, 1
    mov [DI + bx], al ; move the $ symbol

    mov ptr_, DI
    add ptr_, 1
    
    call write_to_line

    pop bx
    pop cx
    pop dx
    pop ax
    
    call reset_double_byte_number
RET


find_word_register: ; use register_index as input
    ; 000 AX
    ; 001 CX
    ; 010 DX
    ; 011 BX
    ; 100 SP
    ; 101 BP
    ; 110 SI
    ; 111 DI

    push ax
    push bx
    push cx
    push dx

    cmp register_index, 0 ; 000 AX
    jne not_ax
    mov ptr_, offset ax_n
    call write_to_line
    jmp end_checking_registers
    not_ax:

    cmp register_index, 1 ; 001 CX
    jne not_cx
    mov ptr_, offset cx_n
    call write_to_line
    jmp end_checking_registers
    not_cx:

    cmp register_index, 2 ; 010 DX
    jne not_dx
    mov ptr_, offset dx_n
    call write_to_line
    jmp end_checking_registers
    not_dx:

    cmp register_index, 3 ; 011 BX
    jne not_bx
    mov ptr_, offset bx_n
    call write_to_line
    jmp end_checking_registers
    not_bx:

    cmp register_index, 4 ; 100 SP
    jne not_sp
    mov ptr_, offset sp_n
    call write_to_line
    jmp end_checking_registers
    not_sp:

    cmp register_index, 5 ; 101 BP
    jne not_bp
    mov ptr_, offset bp_n
    call write_to_line
    jmp end_checking_registers
    not_bp:

    cmp register_index, 6 ; 110 SI
    jne not_si
    mov ptr_, offset si_n
    call write_to_line
    jmp end_checking_registers
    not_si:

    cmp register_index, 7 ; 111 DI
    jne not_di
    mov ptr_, offset di_n
    call write_to_line
    jmp end_checking_registers
    not_di:

    end_checking_registers:
    pop dx
    pop cx
    pop bx
    pop ax
RET
find_byte_register: ; use register_index as input
    ; 000 AL
    ; 001 CL
    ; 010 DL
    ; 011 BL
    ; 100 AH
    ; 101 CH
    ; 110 DH
    ; 111 BH

    push ax
    push bx
    push cx
    push dx

    cmp register_index, 0 ; 000 AL
    jne not_al
    mov ptr_, offset al_n
    call write_to_line
    jmp end_checking_byte_registers
    not_al:

    cmp register_index, 1 ; 001 CL
    jne not_cl
    mov ptr_, offset cl_n
    call write_to_line
    jmp end_checking_byte_registers
    not_cl:

    cmp register_index, 2 ; 010 DL
    jne not_dl
    mov ptr_, offset dl_n
    call write_to_line
    jmp end_checking_byte_registers
    not_dl:

    cmp register_index, 3 ; 011 BL
    jne not_bl
    mov ptr_, offset bl_n
    call write_to_line
    jmp end_checking_byte_registers
    not_bl:

    cmp register_index, 4 ; 100 AH
    jne not_ah
    mov ptr_, offset ah_n
    call write_to_line
    jmp end_checking_byte_registers
    not_ah:

    cmp register_index, 5 ; 101 CH
    jne not_ch
    mov ptr_, offset ch_n
    call write_to_line
    jmp end_checking_byte_registers
    not_ch:

    cmp register_index, 6 ; 110 DH
    jne not_dh
    mov ptr_, offset dh_n
    call write_to_line
    jmp end_checking_byte_registers
    not_dh:

    cmp register_index, 7 ; 111 BH
    jne not_bh
    mov ptr_, offset di_n
    call write_to_line
    jmp end_checking_byte_registers
    not_bh:

    end_checking_byte_registers:
    pop dx
    pop cx
    pop bx
    pop ax
RET
find_effective_address_registers: ; use register_index as input, and when there is direct address and mod_ for changing between address and BP reg
    cmp register_index, 0
    jne not_BX_SI
    mov ptr_, offset bx_n
    call write_to_line
    call add_plus
    mov ptr_, offset si_n
    call write_to_line
    jmp end_checking_address_reg
    not_BX_SI:


    cmp register_index, 1
    jne not_BX_DI
    mov ptr_, offset bx_n
    call write_to_line
    call add_plus
    mov ptr_, offset di_n
    call write_to_line
    jmp end_checking_address_reg
    not_BX_DI:

    cmp register_index, 2
    jne not_BP_SI
    mov ptr_, offset bp_n
    call write_to_line
    call add_plus
    mov ptr_, offset si_n
    call write_to_line
    jmp end_checking_address_reg
    not_BP_SI:

    cmp register_index, 3
    jne not_BP_DI
    mov ptr_, offset bp_n
    call write_to_line
    call add_plus
    mov ptr_, offset di_n
    call write_to_line
    jmp end_checking_address_reg
    not_BP_DI:

    cmp register_index, 4
    jne not_SI_address
    mov ptr_, offset si_n
    call write_to_line
    jmp end_checking_address_reg
    not_SI_address:

    cmp register_index, 5
    jne not_DI_address
    mov ptr_, offset di_n
    call write_to_line
    jmp end_checking_address_reg
    not_DI_address:

    cmp register_index, 6
    jne not_address
    cmp mod_, 0
    jne second_column_BP_offset
    call reset_double_byte_number
    mov al, byte_
    mov [byte ptr double_byte_number + 1], al
    call read_bytes
    mov al, byte_
    mov [byte ptr double_byte_number], al
    call read_bytes
    call double_byte_number_to_hex ;FIXME neveiks, reik double_byte_number skaiciu nurodyti
    jmp end_checking_address_reg

    second_column_BP_offset:
    mov ptr_, offset bp_n
    call write_to_line
    jmp end_checking_address_reg
    not_address:

    cmp register_index, 7
    jne bx_as_address
    mov ptr_, offset bx_n
    call write_to_line
    jmp end_checking_address_reg
    bx_as_address:


    end_checking_address_reg:
RET
find_seg_register: ; use register_index as input
    push ax
    push bx
    push cx
    push dx

    cmp register_index, 0
    jne skip_es
    mov ptr_, offset es_n
    call write_to_line
    jmp done_checking_seg
    skip_es:


    cmp register_index, 1
    jne skip_cs
    mov ptr_, offset cs_n
    call write_to_line
    jmp done_checking_seg
    skip_cs:

    
    cmp register_index, 2
    jne skip_ss
    mov ptr_, offset ss_n
    call write_to_line
    jmp done_checking_seg
    skip_ss:


    cmp register_index, 3
    jne skip_ds
    mov ptr_, offset ds_n
    call write_to_line
    jmp done_checking_seg 
    skip_ds:


    done_checking_seg:
    pop dx
    pop cx
    pop bx
    pop ax

RET
; mod_ = 01 for one byte poslinkis, 10 for two byte poslinkis
find_poslinkis: ; use mod_ as input, uses read_bytes function
    push ax
    push bx
    push cx
    push dx

    cmp mod_, 1
    je one_byte_poslinkis
    cmp mod_, 2
    je two_byte_poslinkis
    jmp exit_poslinkis_function

    one_byte_poslinkis:

    mov al, byte_
    mov binary_number, al
    call read_bytes
    call number_to_hex
    jmp exit_poslinkis_function


    two_byte_poslinkis:
    mov DI, offset double_byte_number

    mov al, byte_
    mov [DI], al
    call read_bytes
    mov ah, byte_
    mov [DI + 1], ah
    call read_bytes
    call double_byte_number_to_hex
    jmp exit_poslinkis_function

    exit_poslinkis_function:
    pop dx
    pop cx
    pop bx
    pop ax
RET

find_full_effective_address:    ;with brackets[]; takes mod, register_index, 'double_byte_number if there is adress'
    call add_left_bracket
    call find_effective_address_registers
    cmp mod_, 0
    je skip_poslinkis
    call add_plus
    call find_poslinkis
    skip_poslinkis:
    call add_right_bracket
RET

full_reg_detector:   ; takes register_index and w_
    cmp w_, 1
    jne not_word_sized_reg
    call find_word_register
    jmp skip_one_byte_reg
    not_word_sized_reg:
    call find_byte_register
    skip_one_byte_reg:
RET

full_r_m_detector: ; takes mod_, w_ and register_index as input
    cmp mod_, 3
    jne not_reg
    mov al, r_m_
    mov register_index, al
    call full_reg_detector
    jmp skip_effective_address
    not_reg:
    call find_full_effective_address
    skip_effective_address:

RET
                      
; functions used to decode variables and write text  to line 
CONVERT_dw_mod_reg_r_m_poslinki:
    call add_space_line
    push ax
        cmp d_, 0
        jne back
            mov al, r_m_
            mov register_index, al
            call full_r_m_detector
            call add_comma_line
            mov al, reg_
            mov register_index, al
            call full_reg_detector
            
        pop ax
        ret
        back:
            mov al, reg_
            mov register_index, al
            call full_reg_detector
            call add_comma_line
            mov al, r_m_
            mov register_index, al
            call full_r_m_detector
    pop ax
RET


CONVERT_w_bojb_bovb:
    push ax
    call add_space_line
    call reset_double_byte_number

    cmp w_, 1
    je two_bytes_num
    cmp w_, 0
    je one_byte_num

    one_byte_num:
    mov al, byte_
    mov double_byte_number, al
    call convert_to_decimal
    call read_bytes
    jmp exit_bojb_function

    two_bytes_num:
    mov al, byte_
    mov [byte ptr double_byte_number], al
    call read_bytes
    mov ah, byte_
    mov [byte ptr double_byte_number + 1], ah
    call read_bytes
    call convert_to_decimal
    jmp exit_bojb_function

    exit_bojb_function:
    pop ax
RET

CONVERT_sr: ; write IS, CS, SS, DS with one command
    push ax
    mov al, sr_
    mov register_index, al
    call find_seg_register
    pop ax
RET


CONVERT_reg: ; take reg_ variable and convert it to word sized register
    push ax
    call add_space_line
    mov al, reg_
    mov register_index, al
    call find_word_register
    pop ax
RET


CONVERT_poslinkis: ; this one is one byte only!
    call add_space_line
    mov mod_, 1 ; using the mod_, tell poslinkis function to only get one byte and convert it to hex number
    call find_poslinkis
RET


CONVERT_sw_mod_r_m_poslinkis_bojb_bovb:
    push ax
    call debug
    call reset_double_byte_number
    mov al, r_m_
    mov register_index, al
    call add_space_line
    call full_r_m_detector
    call add_comma_line
    call add_space_line
    cmp w_, 1
    je pab
    cmp s_, 1
    jne ba
    mov al, byte_
    mov [byte ptr double_byte_number], al
    call read_bytes
    mov al, byte_
    mov [byte ptr double_byte_number + 1], al
    call read_bytes
    jmp pab
    ba:
    mov al, byte_
    mov [byte ptr double_byte_number], al
    call read_bytes
    pab:
    call convert_to_decimal
    pop ax
RET


CONVERT_w_mod_reg_r_m_poslinkis:
    push ax
    mov al, reg_
    mov register_index, al
    call add_space_line
    call full_reg_detector
    call add_comma_line
    call add_space_line
    call full_r_m_detector
    pop ax

RET


CONVERT_d_mod_sr_r_m_poslinkis:
    push ax
    cmp d_, 1
    jne bac
    mov al, sr_
    mov register_index, al
    call find_seg_register
    call add_comma_line
    call add_space_line
    mov al, r_m_
    mov register_index, al
    call full_r_m_detector
    pop ax
    ret
    bac:
    mov al, r_m_
    mov register_index, al
    call full_r_m_detector
    call add_comma_line
    call add_space_line
    mov al, sr_
    mov register_index, al
    call find_seg_register
    pop ax
RET


CONVERT_mod_reg_r_m_poslinkis: ; lets say this one is main
    push ax
    call add_space_line
    mov al, reg_
    mov register_index, al
    call find_word_register
    call add_comma_line
    call add_space_line
    mov al, r_m_
    mov register_index, al
    call full_r_m_detector
    pop ax
RET


CONVERT_mod_r_m_poslinkis:; galimai neveikia 
    push ax
    call add_space_line
    call full_reg_detector
    call add_space_line
    call add_comma_line
    call add_space_line
    call find_poslinkis
    pop ax
RET


CONVERT_ajb_avb_srjb_srvb:;galimai neveikia nzn
push ax
    call reset_double_byte_number
    call read_bytes
    mov al, byte_
    mov [byte ptr double_byte_number], al
    call read_bytes
    mov al, byte_
    mov [byte ptr double_byte_number + 1], al
    call convert_to_decimal
    call add_comma_line
    call add_space_line
    call read_bytes
    mov al, byte_
    mov [byte ptr double_byte_number], al
    call read_bytes
    mov al, byte_
    mov [byte ptr double_byte_number + 1], al
    call read_bytes
    call convert_to_decimal
    pop ax
RET


CONVERT_w_ajb_avb:
    push ax
    call add_left_bracket
    call reset_double_byte_number
    cmp w_, 0
    jne big
        mov al, byte_
        mov [byte ptr double_byte_number], al
        call read_bytes
        call convert_to_decimal
    call add_right_bracket
    pop ax
ret
    big:
        mov al, byte_
        mov[byte ptr double_byte_number], al
        call read_bytes
        mov al, byte_
        mov [byte ptr double_byte_number + 1], al
        call read_bytes
        call convert_to_decimal  
    call add_right_bracket
    pop ax
RET


CONVERT_wreg_bojb_bovb_:
    mov al, reg_
    mov register_index, al

    call add_space_line
    call full_reg_detector
    call add_comma_line
    call reset_double_byte_number
    cmp w_, 0
    jne wordc
        mov al, byte_
        mov [byte ptr double_byte_number], al
        call read_bytes
        call convert_to_decimal
ret
    wordc:
        mov al, byte_
        mov [byte ptr double_byte_number], al
        call read_bytes
        mov al, byte_
        mov [byte ptr double_byte_number + 1], al
        call read_bytes
        call convert_to_decimal
RET


CONVERT_bojb_bovb:
    call add_space_line
    mov al, byte_
    mov[byte ptr double_byte_number], al
    call read_bytes
    mov al, byte_
    mov [byte ptr double_byte_number + 1], al
    call read_bytes
    call convert_to_decimal
RET


CONVERT_w_mod_r_m_poslinkis_bojb_bovb:
    push ax
    call add_space_line
    call reset_double_byte_number
    mov al, r_m_
    mov register_index, al
    call full_r_m_detector
    call add_comma_line
    call add_space_line
    cmp w_, 1
    jne smol
    mov al, byte_
    mov [byte ptr double_byte_number], al
    call read_bytes
    mov al, byte_
    mov [byte ptr double_byte_number + 1], al
    call read_bytes
    call convert_to_decimal
    jmp cv_end
    smol:
    mov al, byte_
    mov [byte ptr double_byte_number], al
    call read_bytes
    call convert_to_decimal
    cv_end:
    pop ax
RET


CONVERT_numeris:
    push ax
    xor ax, ax
    mov al, com_num_
    mov binary_number, al
    call add_space_line
    call number_to_hex
    pop ax
RET


CONVERT_vw_mod_r_m_poslinkis:;NEPABAIGTA!
    push ax
    mov al, v_
    cmp al, 0
    jne c_poslinkis
    mov al, r_m_
    mov register_index, al
    call full_r_m_detector
    call add_comma_line
    call add_space_line
    call reset_double_byte_number
    mov al, 1
    mov [byte ptr double_byte_number], al
    call convert_to_decimal
    jmp exit_v
    c_poslinkis:
    mov al, r_m_
    call full_reg_detector
    call add_comma_line
    call add_space_line
    call reset_double_byte_number
    xor bx, bx
    mov bl, line_length
    mov al, 'c'
    mov [byte ptr offset line + bx], al
    inc line_length
    mov al, 'x'
    mov [byte ptr offset line + bx], al
    inc line_length

    exit_v:
    pop ax
RET


CONVERT_xxx_mod_yyy_r_m_poslinkis:
    push ax
    mov ax, offset wtf_n
    mov ptr_, ax
    call write_to_line
    pop ax
RET


CONVERT_w_portas:
    push ax
    call reset_double_byte_number
    cmp w_, 1
    jne smal
    mov al, byte_
    mov [byte ptr double_byte_number], al
    smal:
    call read_bytes
    mov al, byte_
    mov [byte ptr double_byte_number + 1], al
    call read_bytes
    call convert_to_decimal
    pop ax
RET


CONVERT_pjb_pvb:
    call CONVERT_bojb_bovb
RET


CONVERT_w_mod_r_m_poslinkis:
    push ax
    call add_space_line
    mov al, r_m_
    mov register_index, al
    call full_r_m_detector
    pop ax
RET

CONVERT_reg_bef_adr:
    call add_space_line
    cmp w_, 1
    jne skip_ax
    mov ptr_, offset ax_n
    jmp skip_al
    skip_ax:
    mov ptr_, offset al_n
    skip_al:

    call write_to_line
    call add_comma_line
    call CONVERT_bojb_bovb
RET

CONVERT_reg_aft_adr:
    call add_space_line
    call CONVERT_bojb_bovb
    call add_comma_line
    cmp w_, 1
    jne skip_ax_1
    mov ptr_, offset ax_n
    jmp skip_al_1
    skip_ax_1:
    mov ptr_, offset al_n
    skip_al_1:
    call write_to_line
RET

;
check_commands:
   ;--> 0000 00dw mod reg r/m [poslinkis] -€“ ADD registras += registras/atmintis <--
   ;--> The byte: 000000dw <--
   mov al, byte_
   shr al, 2
   cmp al, 0
   je yes_0_0
   jmp not_0
   yes_0_0:
   mov ptr_, offset add_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '000000dw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   ;--> The variable 'w' in reformed byte: '000000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_dw_mod_reg_r_m_poslinki
   call end_line
   quick_exit_0:
   jmp quick_exit_1
   not_0:
   

   ;--> 0000 010w bojb [bovb] -€“ ADD akumuliatorius += betarpiÅ¡kas operandas <--
   ;--> The byte: 0000010w <--
   mov al, byte_
   shr al, 1
   cmp al, 2
   je yes_1_0
   jmp not_1
   yes_1_0:
   mov ptr_, offset add_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '0000010w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_bojb_bovb
   call end_line
   quick_exit_1:
   jmp quick_exit_2
   not_1:
   

   ;--> 000sr 110 -€“ PUSH segmento registras <--
   ;--> The byte: 000sr110 <--
   mov al, byte_
   shr al, 5
   shl al, 5
   cmp al, 6
   je yes_2_0
   jmp not_2
   yes_2_0:
   mov ptr_, offset push_n
   call write_to_line
   ;--> The variable 'sr' in reformed byte: '000sr110' <--
   mov al, byte_
   shl al, 3
   shr al, 6
   mov sr_, al
   call read_bytes
   call CONVERT_sr
   call end_line
   quick_exit_2:
   jmp quick_exit_3
   not_2:
   

   ;--> 000sr 111 -€“ POP segmento registras <--
   ;--> The byte: 000sr111 <--
   mov al, byte_
   shr al, 5
   shl al, 5
   cmp al, 7
   je yes_3_0
   jmp not_3
   yes_3_0:
   mov ptr_, offset pop_n
   call write_to_line
   ;--> The variable 'sr' in reformed byte: '000sr111' <--
   mov al, byte_
   shl al, 3
   shr al, 6
   mov sr_, al
   call read_bytes
   call CONVERT_sr
   call end_line
   quick_exit_3:
   jmp quick_exit_4
   not_3:
   

   ;--> 0000 10dw mod reg r/m [poslinkis] -€“ OR registras V registras/atmintis <--
   ;--> The byte: 000010dw <--
   mov al, byte_
   shr al, 2
   cmp al, 2
   je yes_4_0
   jmp not_4
   yes_4_0:
   mov ptr_, offset or_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '000010dw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   ;--> The variable 'w' in reformed byte: '000010.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_dw_mod_reg_r_m_poslinki
   call end_line
   quick_exit_4:
   jmp quick_exit_5
   not_4:
   

   ;--> 0000 110w bojb [bovb] -€“ OR akumuliatorius V betarpiÅ¡kas operandas <--
   ;--> The byte: 0000110w <--
   mov al, byte_
   shr al, 1
   cmp al, 6
   je yes_5_0
   jmp not_5
   yes_5_0:
   mov ptr_, offset or_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '0000110w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_bojb_bovb
   call end_line
   quick_exit_5:
   jmp quick_exit_6
   not_5:
   

   ;--> 0001 00dw mod reg r/m [poslinkis] -€“ ADC registras += registras/axtmintis <--
   ;--> The byte: 000100dw <--
   mov al, byte_
   shr al, 2
   cmp al, 4
   je yes_6_0
   jmp not_6
   yes_6_0:
   mov ptr_, offset adc_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '000100dw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   ;--> The variable 'w' in reformed byte: '000100.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_dw_mod_reg_r_m_poslinki
   call end_line
   quick_exit_6:
   jmp quick_exit_7
   not_6:
   

   ;--> 0001 010w bojb [bovb] -€“ ADC akumuliatorius += betarpiÅ¡kas operandas <--
   ;--> The byte: 0001010w <--
   mov al, byte_
   shr al, 1
   cmp al, 10
   je yes_7_0
   jmp not_7
   yes_7_0:
   mov ptr_, offset adc_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '0001010w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_bojb_bovb
   call end_line
   quick_exit_7:
   jmp quick_exit_8
   not_7:
   

   ;--> 0001 10dw mod reg r/m [poslinkis] -€“ SBB registras -= registras/atmintis <--
   ;--> The byte: 000110dw <--
   mov al, byte_
   shr al, 2
   cmp al, 6
   je yes_8_0
   jmp not_8
   yes_8_0:
   mov ptr_, offset sbb_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '000110dw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   ;--> The variable 'w' in reformed byte: '000110.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_dw_mod_reg_r_m_poslinki
   call end_line
   quick_exit_8:
   jmp quick_exit_9
   not_8:
   

   ;--> 0001 110w bojb [bovb] -€“ SBB akumuliatorius -= betarpiÅ¡kas operandas <--
   ;--> The byte: 0001110w <--
   mov al, byte_
   shr al, 1
   cmp al, 14
   je yes_9_0
   jmp not_9
   yes_9_0:
   mov ptr_, offset sbb_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '0001110w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_bojb_bovb
   call end_line
   quick_exit_9:
   jmp quick_exit_10
   not_9:
   

   ;--> 0010 00dw mod reg r/m [poslinkis] -€“ AND registras & registras/atmintis <--
   ;--> The byte: 001000dw <--
   mov al, byte_
   shr al, 2
   cmp al, 8
   je yes_10_0
   jmp not_10
   yes_10_0:
   mov ptr_, offset and_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '001000dw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   ;--> The variable 'w' in reformed byte: '001000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_dw_mod_reg_r_m_poslinki
   call end_line
   quick_exit_10:
   jmp quick_exit_11
   not_10:
   

   ;--> 0010 010w bojb [bovb] -€“ AND akumuliatorius & betarpiÅ¡kas operandas <--
   ;--> The byte: 0010010w <--
   mov al, byte_
   shr al, 1
   cmp al, 18
   je yes_11_0
   jmp not_11
   yes_11_0:
   mov ptr_, offset and_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '0010010w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_bojb_bovb
   call end_line
   quick_exit_11:
   jmp quick_exit_12
   not_11:
   

   ;--> 001sr 110 -€“ segmento registro keitimo prefiksas <--
   ;--> The byte: 001sr110 <--
   mov al, byte_
   shr al, 5
   shl al, 5
   cmp al, 38
   je yes_12_0
   jmp not_12
   yes_12_0:
   mov ptr_, offset wtf_n
   call write_to_line
   ;--> The variable 'sr' in reformed byte: '001sr110' <--
   mov al, byte_
   shl al, 3
   shr al, 6
   mov sr_, al
   call read_bytes
   call CONVERT_sr
   call end_line
   quick_exit_12:
   jmp quick_exit_13
   not_12:
   

   ;--> 0010 0111 -€“ DAA <--
   ;--> The byte: 00100111 <--
   mov al, byte_
   cmp al, 39
   je yes_13_0
   jmp not_13
   yes_13_0:
   mov ptr_, offset daa_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_13:
   jmp quick_exit_14
   not_13:
   

   ;--> 0010 10dw mod reg r/m [poslinkis] -€“ SUB registras -= registras/atmintis <--
   ;--> The byte: 001010dw <--
   mov al, byte_
   shr al, 2
   cmp al, 10
   je yes_14_0
   jmp not_14
   yes_14_0:
   mov ptr_, offset sub_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '001010dw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   ;--> The variable 'w' in reformed byte: '001010.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_dw_mod_reg_r_m_poslinki
   call end_line
   quick_exit_14:
   jmp quick_exit_15
   not_14:
   

   ;--> 0010 110w bojb [bovb] -€“ SUB akumuliatorius -= betarpiÅ¡kas operandas <--
   ;--> The byte: 0010110w <--
   mov al, byte_
   shr al, 1
   cmp al, 22
   je yes_15_0
   jmp not_15
   yes_15_0:
   mov ptr_, offset sub_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '0010110w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_bojb_bovb
   call end_line
   quick_exit_15:
   jmp quick_exit_16
   not_15:
   

   ;--> 0010 1111 -€“ DAS <--
   ;--> The byte: 00101111 <--
   mov al, byte_
   cmp al, 47
   je yes_16_0
   jmp not_16
   yes_16_0:
   mov ptr_, offset das_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_16:
   jmp quick_exit_17
   not_16:
   

   ;--> 0011 00dw mod reg r/m [poslinkis] -€“ XOR registras | registras/atmintis <--
   ;--> The byte: 001100dw <--
   mov al, byte_
   shr al, 2
   cmp al, 12
   je yes_17_0
   jmp not_17
   yes_17_0:
   mov ptr_, offset xor_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '001100dw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   ;--> The variable 'w' in reformed byte: '001100.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_dw_mod_reg_r_m_poslinki
   call end_line
   quick_exit_17:
   jmp quick_exit_18
   not_17:
   

   ;--> 0011 010w bojb [bovb] -€“ XOR akumuliatorius | betarpiÅ¡kas operandas <--
   ;--> The byte: 0011010w <--
   mov al, byte_
   shr al, 1
   cmp al, 26
   je yes_18_0
   jmp not_18
   yes_18_0:
   mov ptr_, offset xor_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '0011010w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_bojb_bovb
   call end_line
   quick_exit_18:
   jmp quick_exit_19
   not_18:
   

   ;--> 0011 0111 -€“ AAA <--
   ;--> The byte: 00110111 <--
   mov al, byte_
   cmp al, 55
   je yes_19_0
   jmp not_19
   yes_19_0:
   mov ptr_, offset aaa_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_19:
   jmp quick_exit_20
   not_19:
   

   ;--> 0011 10dw mod reg r/m [poslinkis] -€“ CMP registras ~ registras/atmintis <--
   ;--> The byte: 001110dw <--
   mov al, byte_
   shr al, 2
   cmp al, 14
   je yes_20_0
   jmp not_20
   yes_20_0:
   mov ptr_, offset cmp_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '001110dw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   ;--> The variable 'w' in reformed byte: '001110.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_dw_mod_reg_r_m_poslinki
   call end_line
   quick_exit_20:
   jmp quick_exit_21
   not_20:
   

   ;--> 0011 110w bojb [bovb] -€“ CMP akumuliatorius ~ betarpiÅ¡kas operandas <--
   ;--> The byte: 0011110w <--
   mov al, byte_
   shr al, 1
   cmp al, 30
   je yes_21_0
   jmp not_21
   yes_21_0:
   mov ptr_, offset cmp_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '0011110w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_bojb_bovb
   call end_line
   quick_exit_21:
   jmp quick_exit_22
   not_21:
   

   ;--> 0011 1111 -€“ AAS <--
   ;--> The byte: 00111111 <--
   mov al, byte_
   cmp al, 63
   je yes_22_0
   jmp not_22
   yes_22_0:
   mov ptr_, offset aas_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_22:
   jmp quick_exit_23
   not_22:
   

   ;--> 0100 0reg -€“ INC registras (Å¾odinis) <--
   ;--> The byte: 01000reg <--
   mov al, byte_
   shr al, 3
   cmp al, 8
   je yes_23_0
   jmp not_23
   yes_23_0:
   mov ptr_, offset inc_n
   call write_to_line
   ;--> The variable 'reg' in reformed byte: '01000reg' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov reg_, al
   call read_bytes
   call CONVERT_reg
   call end_line
   quick_exit_23:
   jmp quick_exit_24
   not_23:
   

   ;--> 0100 1reg -€“ DEC registras (Å¾odinis) <--
   ;--> The byte: 01001reg <--
   mov al, byte_
   shr al, 3
   cmp al, 9
   je yes_24_0
   jmp not_24
   yes_24_0:
   mov ptr_, offset dec_n
   call write_to_line
   ;--> The variable 'reg' in reformed byte: '01001reg' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov reg_, al
   call read_bytes
   call CONVERT_reg
   call end_line
   quick_exit_24:
   jmp quick_exit_25
   not_24:
   

   ;--> 0101 0reg -€“ PUSH registras (Å¾odinis) <--
   ;--> The byte: 01010reg <--
   mov al, byte_
   shr al, 3
   cmp al, 10
   je yes_25_0
   jmp not_25
   yes_25_0:
   mov ptr_, offset push_n
   call write_to_line
   ;--> The variable 'reg' in reformed byte: '01010reg' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov reg_, al
   call read_bytes
   call CONVERT_reg
   call end_line
   quick_exit_25:
   jmp quick_exit_26
   not_25:
   

   ;--> 0101 1reg -€“ POP registras (Å¾odinis) <--
   ;--> The byte: 01011reg <--
   mov al, byte_
   shr al, 3
   cmp al, 11
   je yes_26_0
   jmp not_26
   yes_26_0:
   mov ptr_, offset pop_n
   call write_to_line
   ;--> The variable 'reg' in reformed byte: '01011reg' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov reg_, al
   call read_bytes
   call CONVERT_reg
   call end_line
   quick_exit_26:
   jmp quick_exit_27
   not_26:
   

   ;--> 0111 0000 poslinkis -€“ JO Å¾ymÄ— <--
   ;--> The byte: 01110000 <--
   mov al, byte_
   cmp al, 112
   je yes_27_0
   jmp not_27
   yes_27_0:
   mov ptr_, offset jo_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_27:
   jmp quick_exit_28
   not_27:
   

   ;--> 0111 0001 poslinkis -€“ JNO Å¾ymÄ— <--
   ;--> The byte: 01110001 <--
   mov al, byte_
   cmp al, 113
   je yes_28_0
   jmp not_28
   yes_28_0:
   mov ptr_, offset jno_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_28:
   jmp quick_exit_29
   not_28:
   

   ;--> 0111 0010 poslinkis -€“ JNAE Å¾ymÄ—; JB Å¾ymÄ—; JC Å¾ymÄ— <--
   ;--> The byte: 01110010 <--
   mov al, byte_
   cmp al, 114
   je yes_29_0
   jmp not_29
   yes_29_0:
   mov ptr_, offset jnae_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_29:
   jmp quick_exit_30
   not_29:
   

   ;--> 0111 0011 poslinkis -€“ JAE Å¾ymÄ—; JNB Å¾ymÄ—; JNC Å¾ymÄ— <--
   ;--> The byte: 01110011 <--
   mov al, byte_
   cmp al, 115
   je yes_30_0
   jmp not_30
   yes_30_0:
   mov ptr_, offset jae_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_30:
   jmp quick_exit_31
   not_30:
   

   ;--> 0111 0100 poslinkis -€“ JE Å¾ymÄ—; JZ Å¾ymÄ— <--
   ;--> The byte: 01110100 <--
   mov al, byte_
   cmp al, 116
   je yes_31_0
   jmp not_31
   yes_31_0:
   mov ptr_, offset je_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_31:
   jmp quick_exit_32
   not_31:
   

   ;--> 0111 0101 poslinkis -€“ JNE Å¾ymÄ—; JNZ Å¾ymÄ— <--
   ;--> The byte: 01110101 <--
   mov al, byte_
   cmp al, 117
   je yes_32_0
   jmp not_32
   yes_32_0:
   mov ptr_, offset jne_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_32:
   jmp quick_exit_33
   not_32:
   

   ;--> 0111 0110 poslinkis -€“ JBE Å¾ymÄ—; JNA Å¾ymÄ— <--
   ;--> The byte: 01110110 <--
   mov al, byte_
   cmp al, 118
   je yes_33_0
   jmp not_33
   yes_33_0:
   mov ptr_, offset jbe_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_33:
   jmp quick_exit_34
   not_33:
   

   ;--> 0111 0111 poslinkis -€“ JA Å¾ymÄ—; JNBE Å¾ymÄ— <--
   ;--> The byte: 01110111 <--
   mov al, byte_
   cmp al, 119
   je yes_34_0
   jmp not_34
   yes_34_0:
   mov ptr_, offset ja_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_34:
   jmp quick_exit_35
   not_34:
   

   ;--> 0111 1000 poslinkis -€“ JS Å¾ymÄ— <--
   ;--> The byte: 01111000 <--
   mov al, byte_
   cmp al, 120
   je yes_35_0
   jmp not_35
   yes_35_0:
   mov ptr_, offset js_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_35:
   jmp quick_exit_36
   not_35:
   

   ;--> 0111 1001 poslinkis -€“ JNS Å¾ymÄ— <--
   ;--> The byte: 01111001 <--
   mov al, byte_
   cmp al, 121
   je yes_36_0
   jmp not_36
   yes_36_0:
   mov ptr_, offset jns_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_36:
   jmp quick_exit_37
   not_36:
   

   ;--> 0111 1010 poslinkis -€“ JP Å¾ymÄ—; JPE Å¾ymÄ— <--
   ;--> The byte: 01111010 <--
   mov al, byte_
   cmp al, 122
   je yes_37_0
   jmp not_37
   yes_37_0:
   mov ptr_, offset jp_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_37:
   jmp quick_exit_38
   not_37:
   

   ;--> 0111 1011 poslinkis -€“ JNP Å¾ymÄ—; JPO Å¾ymÄ— <--
   ;--> The byte: 01111011 <--
   mov al, byte_
   cmp al, 123
   je yes_38_0
   jmp not_38
   yes_38_0:
   mov ptr_, offset jnp_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_38:
   jmp quick_exit_39
   not_38:
   

   ;--> 0111 1100 poslinkis -€“ JL Å¾ymÄ—; JNGE Å¾ymÄ— <--
   ;--> The byte: 01111100 <--
   mov al, byte_
   cmp al, 124
   je yes_39_0
   jmp not_39
   yes_39_0:
   mov ptr_, offset jl_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_39:
   jmp quick_exit_40
   not_39:
   

   ;--> 0111 1101 poslinkis -€“ JGE Å¾ymÄ—; JNL Å¾ymÄ— <--
   ;--> The byte: 01111101 <--
   mov al, byte_
   cmp al, 125
   je yes_40_0
   jmp not_40
   yes_40_0:
   mov ptr_, offset jge_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_40:
   jmp quick_exit_41
   not_40:
   

   ;--> 0111 1110 poslinkis -€“ JLE Å¾ymÄ—; JNG Å¾ymÄ— <--
   ;--> The byte: 01111110 <--
   mov al, byte_
   cmp al, 126
   je yes_41_0
   jmp not_41
   yes_41_0:
   mov ptr_, offset jle_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_41:
   jmp quick_exit_42
   not_41:
   

   ;--> 0111 1111 poslinkis -€“ JG Å¾ymÄ—; JNLE Å¾ymÄ— <--
   ;--> The byte: 01111111 <--
   mov al, byte_
   cmp al, 127
   je yes_42_0
   jmp not_42
   yes_42_0:
   mov ptr_, offset jg_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_42:
   jmp quick_exit_43
   not_42:
   

   ;--> 1000 00sw mod 000 r/m [poslinkis] bojb [bovb] -€“ ADD registras/atmintis += betarpiÅ¡kas <--
   ;--> The byte: 100000sw <--
   mov al, byte_
   shr al, 2
   cmp al, 32
   je yes_43_0
   jmp not_43
   yes_43_0:
   ;--> The byte: md000r/m <--
   cmp next_byte_available, 1
   je yes_43_1
   jmp not_43
   yes_43_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 0
   je yes_43_2
   jmp not_43
   yes_43_2:
   mov ptr_, offset add_n
   call write_to_line
   ;--> The variable 's' in reformed byte: '100000sw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov s_, al
   ;--> The variable 'w' in reformed byte: '100000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md000r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..000r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_sw_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_43:
   jmp quick_exit_44
   not_43:
   

   ;--> 1000 00sw mod 001 r/m [poslinkis] bojb [bovb] -€“ OR registras/atmintis V betarpiÅ¡kas <--
   ;--> The byte: 100000sw <--
   mov al, byte_
   shr al, 2
   cmp al, 32
   je yes_44_0
   jmp not_44
   yes_44_0:
   ;--> The byte: md001r/m <--
   cmp next_byte_available, 1
   je yes_44_1
   jmp not_44
   yes_44_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 1
   je yes_44_2
   jmp not_44
   yes_44_2:
   mov ptr_, offset or_n
   call write_to_line
   ;--> The variable 's' in reformed byte: '100000sw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov s_, al
   ;--> The variable 'w' in reformed byte: '100000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md001r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..001r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_sw_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_44:
   jmp quick_exit_45
   not_44:
   

   ;--> 1000 00sw mod 010 r/m [poslinkis] bojb [bovb] -€“ ADC registras/atmintis += betarpiÅ¡kas <--
   ;--> The byte: 100000sw <--
   mov al, byte_
   shr al, 2
   cmp al, 32
   je yes_45_0
   jmp not_45
   yes_45_0:
   ;--> The byte: md010r/m <--
   cmp next_byte_available, 1
   je yes_45_1
   jmp not_45
   yes_45_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 2
   je yes_45_2
   jmp not_45
   yes_45_2:
   mov ptr_, offset adc_n
   call write_to_line
   ;--> The variable 's' in reformed byte: '100000sw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov s_, al
   ;--> The variable 'w' in reformed byte: '100000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md010r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..010r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_sw_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_45:
   jmp quick_exit_46
   not_45:
   

   ;--> 1000 00sw mod 011 r/m [poslinkis] bojb [bovb] -€“ SBB registras/atmintis -= betarpiÅ¡kas <--
   ;--> The byte: 100000sw <--
   mov al, byte_
   shr al, 2
   cmp al, 32
   je yes_46_0
   jmp not_46
   yes_46_0:
   ;--> The byte: md011r/m <--
   cmp next_byte_available, 1
   je yes_46_1
   jmp not_46
   yes_46_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 3
   je yes_46_2
   jmp not_46
   yes_46_2:
   mov ptr_, offset sbb_n
   call write_to_line
   ;--> The variable 's' in reformed byte: '100000sw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov s_, al
   ;--> The variable 'w' in reformed byte: '100000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md011r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..011r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_sw_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_46:
   jmp quick_exit_47
   not_46:
   

   ;--> 1000 00sw mod 100 r/m [poslinkis] bojb [bovb] -€“ AND registras/atmintis & betarpiÅ¡kas <--
   ;--> The byte: 100000sw <--
   mov al, byte_
   shr al, 2
   cmp al, 32
   je yes_47_0
   jmp not_47
   yes_47_0:
   ;--> The byte: md100r/m <--
   cmp next_byte_available, 1
   je yes_47_1
   jmp not_47
   yes_47_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 4
   je yes_47_2
   jmp not_47
   yes_47_2:
   mov ptr_, offset and_n
   call write_to_line
   ;--> The variable 's' in reformed byte: '100000sw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov s_, al
   ;--> The variable 'w' in reformed byte: '100000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md100r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..100r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_sw_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_47:
   jmp quick_exit_48
   not_47:
   

   ;--> 1000 00sw mod 101 r/m [poslinkis] bojb [bovb] -€“ SUB registras/atmintis -= betarpiÅ¡kas <--
   ;--> The byte: 100000sw <--
   mov al, byte_
   shr al, 2
   cmp al, 32
   je yes_48_0
   jmp not_48
   yes_48_0:
   ;--> The byte: md101r/m <--
   cmp next_byte_available, 1
   je yes_48_1
   jmp not_48
   yes_48_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 5
   je yes_48_2
   jmp not_48
   yes_48_2:
   mov ptr_, offset sub_n
   call write_to_line
   ;--> The variable 's' in reformed byte: '100000sw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov s_, al
   ;--> The variable 'w' in reformed byte: '100000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md101r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..101r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_sw_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_48:
   jmp quick_exit_49
   not_48:
   

   ;--> 1000 00sw mod 110 r/m [poslinkis] bojb [bovb] -€“ XOR registras/atmintis | betarpiÅ¡kas <--
   ;--> The byte: 100000sw <--
   mov al, byte_
   shr al, 2
   cmp al, 32
   je yes_49_0
   jmp not_49
   yes_49_0:
   ;--> The byte: md110r/m <--
   cmp next_byte_available, 1
   je yes_49_1
   jmp not_49
   yes_49_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 6
   je yes_49_2
   jmp not_49
   yes_49_2:
   mov ptr_, offset xor_n
   call write_to_line
   ;--> The variable 's' in reformed byte: '100000sw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov s_, al
   ;--> The variable 'w' in reformed byte: '100000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md110r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..110r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_sw_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_49:
   jmp quick_exit_50
   not_49:
   

   ;--> 1000 00sw mod 111 r/m [poslinkis] bojb [bovb] -€“ CMP registras/atmintis ~ betarpiÅ¡kas <--
   ;--> The byte: 100000sw <--
   mov al, byte_
   shr al, 2
   cmp al, 32
   je yes_50_0
   jmp not_50
   yes_50_0:
   ;--> The byte: md111r/m <--
   cmp next_byte_available, 1
   je yes_50_1
   jmp not_50
   yes_50_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 7
   je yes_50_2
   jmp not_50
   yes_50_2:
   mov ptr_, offset cmp_n
   call write_to_line
   ;--> The variable 's' in reformed byte: '100000sw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov s_, al
   ;--> The variable 'w' in reformed byte: '100000.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md111r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..111r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_sw_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_50:
   jmp quick_exit_51
   not_50:
   

   ;--> 1000 010w mod reg r/m [poslinkis] -€“ TEST registras ? registras/atmintis <--
   ;--> The byte: 1000010w <--
   mov al, byte_
   shr al, 1
   cmp al, 66
   je yes_51_0
   jmp not_51
   yes_51_0:
   mov ptr_, offset test_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1000010w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_reg_r_m_poslinkis
   call end_line
   quick_exit_51:
   jmp quick_exit_52
   not_51:
   

   ;--> 1000 011w mod reg r/m [poslinkis] -€“ XCHG registras ïƒŸïƒ  registras/atmintis <--
   ;--> The byte: 1000011w <--
   mov al, byte_
   shr al, 1
   cmp al, 67
   je yes_52_0
   jmp not_52
   yes_52_0:
   mov ptr_, offset xchg_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1000011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_reg_r_m_poslinkis
   call end_line
   quick_exit_52:
   jmp quick_exit_53
   not_52:
   

   ;--> 1000 10dw mod reg r/m [poslinkis] -€“ MOV registras ïƒŸïƒ  registras/atmintis <--
   ;--> The byte: 100010dw <--
   mov al, byte_
   shr al, 2
   cmp al, 34
   je yes_53_0
   jmp not_53
   yes_53_0:
   mov ptr_, offset mov_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '100010dw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   ;--> The variable 'w' in reformed byte: '100010.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_dw_mod_reg_r_m_poslinki
   call end_line
   quick_exit_53:
   jmp quick_exit_54
   not_53:
   

   ;--> 1000 11d0 mod 0sr r/m [poslinkis] -€“ MOV segmento registras ïƒŸïƒ  registras/atmintis <--
   ;--> The byte: 100011d0 <--
   mov al, byte_
   shr al, 2
   shl al, 2
   cmp al, 140
   je yes_54_0
   jmp not_54
   yes_54_0:
   ;--> The byte: md0srr/m <--
   cmp next_byte_available, 1
   je yes_54_1
   jmp not_54
   yes_54_1:
   mov al, next_byte
   shl al, 2
   shr al, 7
   cmp al, 0
   je yes_54_2
   jmp not_54
   yes_54_2:
   mov ptr_, offset mov_n
   call write_to_line
   ;--> The variable 'd' in reformed byte: '100011d0' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov d_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md0srr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..0srr/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   ;--> The variable 'sr' in reformed byte: '..0sr...' <--
   mov al, byte_
   shl al, 3
   shr al, 6
   mov sr_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_d_mod_sr_r_m_poslinkis
   call end_line
   quick_exit_54:
   jmp quick_exit_55
   not_54:
   

   ;--> 1000 1101 mod reg r/m [poslinkis] -€“ LEA registras ïƒŸ atmintis <--
   ;--> The byte: 10001101 <--
   mov al, byte_
   cmp al, 141
   je yes_55_0
   jmp not_55
   yes_55_0:
   mov ptr_, offset lea_n
   call write_to_line
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_mod_reg_r_m_poslinkis
   call end_line
   quick_exit_55:
   jmp quick_exit_56
   not_55:
   

   ;--> 1000 1111 mod 000 r/m [poslinkis] -€“ POP registras/atmintis <--
   ;--> The byte: 10001111 <--
   mov al, byte_
   cmp al, 143
   je yes_56_0
   jmp not_56
   yes_56_0:
   ;--> The byte: md000r/m <--
   cmp next_byte_available, 1
   je yes_56_1
   jmp not_56
   yes_56_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 0
   je yes_56_2
   jmp not_56
   yes_56_2:
   mov ptr_, offset pop_n
   call write_to_line
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md000r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..000r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_mod_r_m_poslinkis
   call end_line
   quick_exit_56:
   jmp quick_exit_57
   not_56:
   

   ;--> 1001 0000 -€“ NOP; XCHG ax, ax <--
   ;--> The byte: 10010000 <--
   mov al, byte_
   cmp al, 144
   je yes_57_0
   jmp not_57
   yes_57_0:
   mov ptr_, offset nop_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_57:
   jmp quick_exit_58
   not_57:
   

   ;--> 1001 0reg -€“ XCHG registras ïƒŸïƒ  ax <--
   ;--> The byte: 10010reg <--
   mov al, byte_
   shr al, 3
   cmp al, 18
   je yes_58_0
   jmp not_58
   yes_58_0:
   mov ptr_, offset xchg_n
   call write_to_line
   ;--> The variable 'reg' in reformed byte: '10010reg' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov reg_, al
   call read_bytes
   call CONVERT_reg
   call end_line
   quick_exit_58:
   jmp quick_exit_59
   not_58:
   

   ;--> 1001 1000 -€“ CBW <--
   ;--> The byte: 10011000 <--
   mov al, byte_
   cmp al, 152
   je yes_59_0
   jmp not_59
   yes_59_0:
   mov ptr_, offset cbv_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_59:
   jmp quick_exit_60
   not_59:
   

   ;--> 1001 1001 -€“ CWD <--
   ;--> The byte: 10011001 <--
   mov al, byte_
   cmp al, 153
   je yes_60_0
   jmp not_60
   yes_60_0:
   mov ptr_, offset cwd_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_60:
   jmp quick_exit_61
   not_60:
   

   ;--> 1001 1010 ajb avb srjb srvb -€“ CALL Å¾ymÄ— (iÅ¡orinis tiesioginis) <--
   ;--> The byte: 10011010 <--
   mov al, byte_
   cmp al, 154
   je yes_61_0
   jmp not_61
   yes_61_0:
   mov ptr_, offset call_n
   call write_to_line
   call read_bytes
   ;--> The variable 'avb-' cannot be decoded by this function <--
   ;--> The variable 'srjb' cannot be decoded by this function <--
   call add_counter_segment
   call CONVERT_ajb_avb_srjb_srvb
   call end_line
   quick_exit_61:
   jmp quick_exit_62
   not_61:
   

   ;--> 1001 1011 -€“ WAIT <--
   ;--> The byte: 10011011 <--
   mov al, byte_
   cmp al, 155
   je yes_62_0
   jmp not_62
   yes_62_0:
   mov ptr_, offset wait_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_62:
   jmp quick_exit_63
   not_62:
   

   ;--> 1001 1100 -€“ PUSHF <--
   ;--> The byte: 10011100 <--
   mov al, byte_
   cmp al, 156
   je yes_63_0
   jmp not_63
   yes_63_0:
   mov ptr_, offset pushf_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_63:
   jmp quick_exit_64
   not_63:
   

   ;--> 1001 1101 -€“ POPF <--
   ;--> The byte: 10011101 <--
   mov al, byte_
   cmp al, 157
   je yes_64_0
   jmp not_64
   yes_64_0:
   mov ptr_, offset popf_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_64:
   jmp quick_exit_65
   not_64:
   

   ;--> 1001 1110 -€“ SAHF <--
   ;--> The byte: 10011110 <--
   mov al, byte_
   cmp al, 158
   je yes_65_0
   jmp not_65
   yes_65_0:
   mov ptr_, offset sahf_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_65:
   jmp quick_exit_66
   not_65:
   

   ;--> 1001 1111 -€“ LAHF <--
   ;--> The byte: 10011111 <--
   mov al, byte_
   cmp al, 159
   je yes_66_0
   jmp not_66
   yes_66_0:
   mov ptr_, offset lahf_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_66:
   jmp quick_exit_67
   not_66:
   

   ;--> 1010 000w ajb avb -€“ MOV akumuliatorius ïƒŸ atmintis <--
   ;--> The byte: 1010000w <--
   mov al, byte_
   shr al, 1
   cmp al, 80
   je yes_67_0
   jmp not_67
   yes_67_0:
   mov ptr_, offset mov_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1010000w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'avb-' cannot be decoded by this function <--
   call CONVERT_reg_bef_adr
   call end_line
   quick_exit_67:
   jmp quick_exit_68
   not_67:
   

   ;--> 1010 001w ajb avb -€“ MOV atmintis ïƒŸ akumuliatorius <--
   ;--> The byte: 1010001w <--
   mov al, byte_
   shr al, 1
   cmp al, 81
   je yes_68_0
   jmp not_68
   yes_68_0:
   mov ptr_, offset mov_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1010001w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'avb-' cannot be decoded by this function <--
   call CONVERT_reg_aft_adr
   call end_line
   quick_exit_68:
   jmp quick_exit_69
   not_68:
   

   ;--> 1010 010w -€“ MOVSB; MOVSW <--
   ;--> The byte: 1010010w <--
   mov al, byte_
   shr al, 1
   cmp al, 82
   je yes_69_0
   jmp not_69
   yes_69_0:
   ;--> The variable 'w' in reformed byte: '1010010w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> Two names found <--
   cmp w_, 1
   je other_name_69
   mov ptr_, offset movsb_n
   jmp simple_name_69
   other_name_69:
   mov ptr_, offset movsw_n
   simple_name_69:
   call write_to_line
   call add_plus
   call end_line
   quick_exit_69:
   jmp quick_exit_70
   not_69:
   

   ;--> 1010 011w -€“ CMPSB; CMPSW <--
   ;--> The byte: 1010011w <--
   mov al, byte_
   shr al, 1
   cmp al, 83
   je yes_70_0
   jmp not_70
   yes_70_0:
   ;--> The variable 'w' in reformed byte: '1010011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> Two names found <--
   cmp w_, 1
   je other_name_70
   mov ptr_, offset cmpsb_n
   jmp simple_name_70
   other_name_70:
   mov ptr_, offset cmpsw_n
   simple_name_70:
   call write_to_line
   call end_line
   quick_exit_70:
   jmp quick_exit_71
   not_70:
   

   ;--> 1010 100w bojb [bovb] -€“ TEST akumuliatorius ? betarpiÅ¡kas operandas <--
   ;--> The byte: 1010100w <--
   mov al, byte_
   shr al, 1
   cmp al, 84
   je yes_71_0
   jmp not_71
   yes_71_0:
   mov ptr_, offset test_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1010100w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_bojb_bovb
   call end_line
   quick_exit_71:
   jmp quick_exit_72
   not_71:
   

   ;--> 1010 101w -€“ STOSB; STOSW <--
   ;--> The byte: 1010101w <--
   mov al, byte_
   shr al, 1
   cmp al, 85
   je yes_72_0
   jmp not_72
   yes_72_0:
   ;--> The variable 'w' in reformed byte: '1010101w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> Two names found <--
   cmp w_, 1
   je other_name_72
   mov ptr_, offset stosb_n
   jmp simple_name_72
   other_name_72:
   mov ptr_, offset stosw_n
   simple_name_72:
   call write_to_line
   call end_line
   quick_exit_72:
   jmp quick_exit_73
   not_72:
   

   ;--> 1010 110w -€“ LODSB; LODSW <--
   ;--> The byte: 1010110w <--
   mov al, byte_
   shr al, 1
   cmp al, 86
   je yes_73_0
   jmp not_73
   yes_73_0:
   ;--> The variable 'w' in reformed byte: '1010110w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> Two names found <--
   cmp w_, 1
   je other_name_73
   mov ptr_, offset lodsb_n
   jmp simple_name_73
   other_name_73:
   mov ptr_, offset lodsw_n
   simple_name_73:
   call write_to_line
   call end_line
   quick_exit_73:
   jmp quick_exit_74
   not_73:
   

   ;--> 1010 111w -€“ SCASB; SCASW <--
   ;--> The byte: 1010111w <--
   mov al, byte_
   shr al, 1
   cmp al, 87
   je yes_74_0
   jmp not_74
   yes_74_0:
   ;--> The variable 'w' in reformed byte: '1010111w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> Two names found <--
   cmp w_, 1
   je other_name_74
   mov ptr_, offset scasb_n
   jmp simple_name_74
   other_name_74:
   mov ptr_, offset scasw_n
   simple_name_74:
   call write_to_line
   call end_line
   quick_exit_74:
   jmp quick_exit_75
   not_74:
   

   ;--> 1011 wreg bojb [bovb] -€“ MOV registras ïƒŸ betarpiÅ¡kas operandas <--
   ;--> The byte: 1011wreg <--
   mov al, byte_
   shr al, 4
   cmp al, 11
   je yes_75_0
   jmp not_75
   yes_75_0:
   mov ptr_, offset mov_n
   call write_to_line
   ;--> The variable 'reg' in reformed byte: '1011wreg' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov reg_, al
   ;--> The variable 'w' in reformed byte: '1011w...' <--
   mov al, byte_
   shl al, 4
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_wreg_bojb_bovb_
   call end_line
   quick_exit_75:
   jmp quick_exit_76
   not_75:
   

   ;--> 1100 0010 bojb bovb -€“ RET betarpiÅ¡kas operandas; RETN betarpiÅ¡kas operandas <--
   ;--> The byte: 11000010 <--
   mov al, byte_
   cmp al, 194
   je yes_76_0
   jmp not_76
   yes_76_0:
   mov ptr_, offset ret_n
   call write_to_line
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_bojb_bovb
   call end_line
   quick_exit_76:
   jmp quick_exit_77
   not_76:
   

   ;--> 1100 0011 -€“ RET; RETN <--
   ;--> The byte: 11000011 <--
   mov al, byte_
   cmp al, 195
   je yes_77_0
   jmp not_77
   yes_77_0:
   mov ptr_, offset ret_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_77:
   jmp quick_exit_78
   not_77:
   

   ;--> 1100 0100 mod reg r/m [poslinkis] -€“ LES registras ïƒŸ atmintis <--
   ;--> The byte: 11000100 <--
   mov al, byte_
   cmp al, 196
   je yes_78_0
   jmp not_78
   yes_78_0:
   mov ptr_, offset les_n
   call write_to_line
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_mod_reg_r_m_poslinkis
   call end_line
   quick_exit_78:
   jmp quick_exit_79
   not_78:
   

   ;--> 1100 0101 mod reg r/m [poslinkis] -€“ LDS registras ïƒŸ atmintis <--
   ;--> The byte: 11000101 <--
   mov al, byte_
   cmp al, 197
   je yes_79_0
   jmp not_79
   yes_79_0:
   mov ptr_, offset lds_n
   call write_to_line
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdregr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'reg' in reformed byte: '..regr/m' <--
   mov al, byte_
   shl al, 2
   shr al, 5
   mov reg_, al
   ;--> The variable 'r/m' in reformed byte: '.....r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_mod_reg_r_m_poslinkis
   call end_line
   quick_exit_79:
   jmp quick_exit_80
   not_79:
   

   ;--> 1100 011w mod 000 r/m [poslinkis] bojb [bovb] -€“ MOV registras/atmintis ïƒŸ betarpiÅ¡kas <--
   ;--> The byte: 1100011w <--
   mov al, byte_
   shr al, 1
   cmp al, 99
   je yes_80_0
   jmp not_80
   yes_80_0:
   ;--> The byte: md000r/m <--
   cmp next_byte_available, 1
   je yes_80_1
   jmp not_80
   yes_80_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 0
   je yes_80_2
   jmp not_80
   yes_80_2:
   mov ptr_, offset mov_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1100011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md000r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..000r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_80:
   jmp quick_exit_81
   not_80:
   

   ;--> 1100 1010 bojb bovb -€“ RETF betarpiÅ¡kas operandas <--
   ;--> The byte: 11001010 <--
   mov al, byte_
   cmp al, 202
   je yes_81_0
   jmp not_81
   yes_81_0:
   mov ptr_, offset retf_n
   call write_to_line
   call read_bytes
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_bojb_bovb
   call end_line
   quick_exit_81:
   jmp quick_exit_82
   not_81:
   

   ;--> 1100 1011 -€“ RETF <--
   ;--> The byte: 11001011 <--
   mov al, byte_
   cmp al, 203
   je yes_82_0
   jmp not_82
   yes_82_0:
   mov ptr_, offset retf_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_82:
   jmp quick_exit_83
   not_82:
   

   ;--> 1100 1100 -€“ INT 3 <--
   ;--> The byte: 11001100 <--
   mov al, byte_
   cmp al, 204
   je yes_83_0
   jmp not_83
   yes_83_0:
   mov ptr_, offset int_3_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_83:
   jmp quick_exit_84
   not_83:
   

   ;--> 1100 1101 numeris -€“ INT numeris <--
   ;--> The byte: 11001101 <--
   mov al, byte_
   cmp al, 205
   je yes_84_0
   jmp not_84
   yes_84_0:
   mov ptr_, offset int_n
   call write_to_line
   call read_bytes
   ;--> The variable 'numberis-' in reformed byte: 'numberis-' <--
   mov al, byte_
   mov com_num_, al
   call read_bytes
   call CONVERT_numeris
   call end_line
   quick_exit_84:
   jmp quick_exit_85
   not_84:
   

   ;--> 1100 1110 -€“ INTO <--
   ;--> The byte: 11001110 <--
   mov al, byte_
   cmp al, 206
   je yes_85_0
   jmp not_85
   yes_85_0:
   mov ptr_, offset into_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_85:
   jmp quick_exit_86
   not_85:
   

   ;--> 1100 1111 -€“ IRET <--
   ;--> The byte: 11001111 <--
   mov al, byte_
   cmp al, 207
   je yes_86_0
   jmp not_86
   yes_86_0:
   mov ptr_, offset iret_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_86:
   jmp quick_exit_87
   not_86:
   

   ;--> 1101 00vw mod 000 r/m [poslinkis] -€“ ROL registras/atmintis, {1; CL} <--
   ;--> The byte: 110100vw <--
   mov al, byte_
   shr al, 2
   cmp al, 52
   je yes_87_0
   jmp not_87
   yes_87_0:
   ;--> The byte: md000r/m <--
   cmp next_byte_available, 1
   je yes_87_1
   jmp not_87
   yes_87_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 0
   je yes_87_2
   jmp not_87
   yes_87_2:
   mov ptr_, offset rol_n
   call write_to_line
   ;--> The variable 'v' in reformed byte: '110100vw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov v_, al
   ;--> The variable 'w' in reformed byte: '110100.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md000r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..000r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_vw_mod_r_m_poslinkis
   call end_line
   quick_exit_87:
   jmp quick_exit_88
   not_87:
   

   ;--> 1101 00vw mod 001 r/m [poslinkis] -€“ ROR registras/atmintis, {1; CL} <--
   ;--> The byte: 110100vw <--
   mov al, byte_
   shr al, 2
   cmp al, 52
   je yes_88_0
   jmp not_88
   yes_88_0:
   ;--> The byte: md001r/m <--
   cmp next_byte_available, 1
   je yes_88_1
   jmp not_88
   yes_88_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 1
   je yes_88_2
   jmp not_88
   yes_88_2:
   mov ptr_, offset ror_n
   call write_to_line
   ;--> The variable 'v' in reformed byte: '110100vw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov v_, al
   ;--> The variable 'w' in reformed byte: '110100.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md001r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..001r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_vw_mod_r_m_poslinkis
   call end_line
   quick_exit_88:
   jmp quick_exit_89
   not_88:
   

   ;--> 1101 00vw mod 010 r/m [poslinkis] -€“ RCL registras/atmintis, {1; CL} <--
   ;--> The byte: 110100vw <--
   mov al, byte_
   shr al, 2
   cmp al, 52
   je yes_89_0
   jmp not_89
   yes_89_0:
   ;--> The byte: md010r/m <--
   cmp next_byte_available, 1
   je yes_89_1
   jmp not_89
   yes_89_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 2
   je yes_89_2
   jmp not_89
   yes_89_2:
   mov ptr_, offset rcl_n
   call write_to_line
   ;--> The variable 'v' in reformed byte: '110100vw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov v_, al
   ;--> The variable 'w' in reformed byte: '110100.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md010r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..010r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_vw_mod_r_m_poslinkis
   call end_line
   quick_exit_89:
   jmp quick_exit_90
   not_89:
   

   ;--> 1101 00vw mod 011 r/m [poslinkis] -€“ RCR registras/atmintis, {1; CL} <--
   ;--> The byte: 110100vw <--
   mov al, byte_
   shr al, 2
   cmp al, 52
   je yes_90_0
   jmp not_90
   yes_90_0:
   ;--> The byte: md011r/m <--
   cmp next_byte_available, 1
   je yes_90_1
   jmp not_90
   yes_90_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 3
   je yes_90_2
   jmp not_90
   yes_90_2:
   mov ptr_, offset rcr_n
   call write_to_line
   ;--> The variable 'v' in reformed byte: '110100vw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov v_, al
   ;--> The variable 'w' in reformed byte: '110100.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md011r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..011r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_vw_mod_r_m_poslinkis
   call end_line
   quick_exit_90:
   jmp quick_exit_91
   not_90:
   

   ;--> 1101 00vw mod 100 r/m [poslinkis] -€“ SHL registras/atmintis, {1; CL}; SAL registras/atmintis, {1; CL} <--
   ;--> The byte: 110100vw <--
   mov al, byte_
   shr al, 2
   cmp al, 52
   je yes_91_0
   jmp not_91
   yes_91_0:
   ;--> The byte: md100r/m <--
   cmp next_byte_available, 1
   je yes_91_1
   jmp not_91
   yes_91_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 4
   je yes_91_2
   jmp not_91
   yes_91_2:
   mov ptr_, offset shl_n
   call write_to_line
   ;--> The variable 'v' in reformed byte: '110100vw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov v_, al
   ;--> The variable 'w' in reformed byte: '110100.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md100r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..100r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_vw_mod_r_m_poslinkis
   call end_line
   quick_exit_91:
   jmp quick_exit_92
   not_91:
   

   ;--> 1101 00vw mod 101 r/m [poslinkis] -€“ SHR registras/atmintis, {1; CL} <--
   ;--> The byte: 110100vw <--
   mov al, byte_
   shr al, 2
   cmp al, 52
   je yes_92_0
   jmp not_92
   yes_92_0:
   ;--> The byte: md101r/m <--
   cmp next_byte_available, 1
   je yes_92_1
   jmp not_92
   yes_92_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 5
   je yes_92_2
   jmp not_92
   yes_92_2:
   mov ptr_, offset shr_n
   call write_to_line
   ;--> The variable 'v' in reformed byte: '110100vw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov v_, al
   ;--> The variable 'w' in reformed byte: '110100.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md101r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..101r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_vw_mod_r_m_poslinkis
   call end_line
   quick_exit_92:
   jmp quick_exit_93
   not_92:
   

   ;--> 1101 00vw mod 111 r/m [poslinkis] -€“ SAR registras/atmintis, {1; CL} <--
   ;--> The byte: 110100vw <--
   mov al, byte_
   shr al, 2
   cmp al, 52
   je yes_93_0
   jmp not_93
   yes_93_0:
   ;--> The byte: md111r/m <--
   cmp next_byte_available, 1
   je yes_93_1
   jmp not_93
   yes_93_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 7
   je yes_93_2
   jmp not_93
   yes_93_2:
   mov ptr_, offset sar_n
   call write_to_line
   ;--> The variable 'v' in reformed byte: '110100vw' <--
   mov al, byte_
   shl al, 6
   shr al, 7
   mov v_, al
   ;--> The variable 'w' in reformed byte: '110100.w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md111r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..111r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_vw_mod_r_m_poslinkis
   call end_line
   quick_exit_93:
   jmp quick_exit_94
   not_93:
   

   ;--> 1101 0100 0000 1010 -€“ AAM <--
   ;--> The byte: 11010100 <--
   mov al, byte_
   cmp al, 212
   je yes_94_0
   jmp not_94
   yes_94_0:
   ;--> The byte: 00001010 <--
   cmp next_byte_available, 1
   je yes_94_1
   jmp not_94
   yes_94_1:
   mov al, next_byte
   cmp al, 10
   je yes_94_2
   jmp not_94
   yes_94_2:
   mov ptr_, offset aam_n
   call write_to_line
   call read_bytes
   call read_bytes
   call end_line
   quick_exit_94:
   jmp quick_exit_95
   not_94:
   

   ;--> 1101 0101 0000 1010 -€“ AAD <--
   ;--> The byte: 11010101 <--
   mov al, byte_
   cmp al, 213
   je yes_95_0
   jmp not_95
   yes_95_0:
   ;--> The byte: 00001010 <--
   cmp next_byte_available, 1
   je yes_95_1
   jmp not_95
   yes_95_1:
   mov al, next_byte
   cmp al, 10
   je yes_95_2
   jmp not_95
   yes_95_2:
   mov ptr_, offset aad_n
   call write_to_line
   call read_bytes
   call read_bytes
   call end_line
   quick_exit_95:
   jmp quick_exit_96
   not_95:
   

   ;--> 1101 0111 -€“ XLAT <--
   ;--> The byte: 11010111 <--
   mov al, byte_
   cmp al, 215
   je yes_96_0
   jmp not_96
   yes_96_0:
   mov ptr_, offset xlat_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_96:
   jmp quick_exit_97
   not_96:
   

   ;--> 1101 1xxx mod yyy r/m [poslinkis] -€“ ESC komanda, registras/atmintis <--
   ;--> The byte: 11011xxx <--
   mov al, byte_
   shr al, 3
   cmp al, 27
   je yes_97_0
   jmp not_97
   yes_97_0:
   mov ptr_, offset esc_n
   call write_to_line
   ;--> The variable 'xxx' in reformed byte: '11011xxx' <--
   ;--> Failed to find. Missing global variable. <--
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'mdyyyr/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..yyyr/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   ;--> The variable 'yyy' in reformed byte: '..yyy...' <--
   ;--> Failed to find. Missing global variable. <--
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_xxx_mod_yyy_r_m_poslinkis
   call end_line
   quick_exit_97:
   jmp quick_exit_98
   not_97:
   

   ;--> 1110 0000 poslinkis -€“ LOOPNE Å¾ymÄ—; LOOPNZ Å¾ymÄ— <--
   ;--> The byte: 11100000 <--
   mov al, byte_
   cmp al, 224
   je yes_98_0
   jmp not_98
   yes_98_0:
   mov ptr_, offset loopne_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_98:
   jmp quick_exit_99
   not_98:
   

   ;--> 1110 0001 poslinkis -€“ LOOPE Å¾ymÄ—; LOOPZ Å¾ymÄ— <--
   ;--> The byte: 11100001 <--
   mov al, byte_
   cmp al, 225
   je yes_99_0
   jmp not_99
   yes_99_0:
   mov ptr_, offset loope_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_99:
   jmp quick_exit_100
   not_99:
   

   ;--> 1110 0010 poslinkis -€“ LOOP Å¾ymÄ— <--
   ;--> The byte: 11100010 <--
   mov al, byte_
   cmp al, 226
   je yes_100_0
   jmp not_100
   yes_100_0:
   mov ptr_, offset loop_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_100:
   jmp quick_exit_101
   not_100:
   

   ;--> 1110 0011 poslinkis -€“ JCXZ Å¾ymÄ— <--
   ;--> The byte: 11100011 <--
   mov al, byte_
   cmp al, 227
   je yes_101_0
   jmp not_101
   yes_101_0:
   mov ptr_, offset jcxz_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_101:
   jmp quick_exit_102
   not_101:
   

   ;--> 1110 010w portas -€“ IN akumuliatorius ïƒŸ portas <--
   ;--> The byte: 1110010w <--
   mov al, byte_
   shr al, 1
   cmp al, 114
   je yes_102_0
   jmp not_102
   yes_102_0:
   mov ptr_, offset in_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1110010w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'portas--' cannot be decoded by this function <--
   call CONVERT_w_portas
   call end_line
   quick_exit_102:
   jmp quick_exit_103
   not_102:
   

   ;--> 1110 011w portas -€“ OUT akumuliatorius ïƒ  portas <--
   ;--> The byte: 1110011w <--
   mov al, byte_
   shr al, 1
   cmp al, 115
   je yes_103_0
   jmp not_103
   yes_103_0:
   mov ptr_, offset out_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1110011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'portas--' cannot be decoded by this function <--
   call CONVERT_w_portas
   call end_line
   quick_exit_103:
   jmp quick_exit_104
   not_103:
   

   ;--> 1110 1000 pjb pvb -€“ CALL Å¾ymÄ— (vidinis tiesioginis) <--
   ;--> The byte: 11101000 <--
   mov al, byte_
   cmp al, 232
   je yes_104_0
   jmp not_104
   yes_104_0:
   mov ptr_, offset call_n
   call write_to_line
   call read_bytes
   ;--> The variable 'pjb-' cannot be decoded by this function <--
   call add_counter_segment
   call CONVERT_pjb_pvb
   call end_line
   quick_exit_104:
   jmp quick_exit_105
   not_104:
   

   ;--> 1110 1001 pjb pvb -€“ JMP Å¾ymÄ— (vidinis tiesioginis) <--
   ;--> The byte: 11101001 <--
   mov al, byte_
   cmp al, 233
   je yes_105_0
   jmp not_105
   yes_105_0:
   mov ptr_, offset jmp_n
   call write_to_line
   call read_bytes
   ;--> The variable 'pjb-' cannot be decoded by this function <--
   call CONVERT_pjb_pvb
   call end_line
   quick_exit_105:
   jmp quick_exit_106
   not_105:
   

   ;--> 1110 1010 ajb avb srjb srvb -€“ JMP Å¾ymÄ— (iÅ¡orinis tiesioginis) <--
   ;--> The byte: 11101010 <--
   mov al, byte_
   cmp al, 234
   je yes_106_0
   jmp not_106
   yes_106_0:
   mov ptr_, offset jmp_n
   call write_to_line
   call read_bytes
   ;--> The variable 'avb-' cannot be decoded by this function <--
   ;--> The variable 'srjb' cannot be decoded by this function <--
   call CONVERT_ajb_avb_srjb_srvb
   call end_line
   quick_exit_106:
   jmp quick_exit_107
   not_106:
   

   ;--> 1110 1011 poslinkis -€“ JMP Å¾ymÄ— (vidinis artimas) <--
   ;--> The byte: 11101011 <--
   mov al, byte_
   cmp al, 235
   je yes_107_0
   jmp not_107
   yes_107_0:
   mov ptr_, offset jmp_n
   call write_to_line
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_poslinkis
   call end_line
   quick_exit_107:
   jmp quick_exit_108
   not_107:
   

   ;--> 1110 110w -€“ IN akumuliatorius ïƒŸ dx portas <--
   ;--> The byte: 1110110w <--
   mov al, byte_
   shr al, 1
   cmp al, 118
   je yes_108_0
   jmp not_108
   yes_108_0:
   ;--> The variable 'w' in reformed byte: '1110110w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> Two names found <--
   cmp w_, 1
   je other_name_108
   mov ptr_, offset in_n
   jmp simple_name_108
   other_name_108:
   mov ptr_, offset in_n
   simple_name_108:
   call write_to_line
   call end_line
   quick_exit_108:
   jmp quick_exit_109
   not_108:
   

   ;--> 1110 111w -€“ OUT akumuliatorius ïƒ  dx portas <--
   ;--> The byte: 1110111w <--
   mov al, byte_
   shr al, 1
   cmp al, 119
   je yes_109_0
   jmp not_109
   yes_109_0:
   ;--> The variable 'w' in reformed byte: '1110111w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> Two names found <--
   cmp w_, 1
   je other_name_109
   mov ptr_, offset out_n
   jmp simple_name_109
   other_name_109:
   mov ptr_, offset out_n
   simple_name_109:
   call write_to_line
   call end_line
   quick_exit_109:
   jmp quick_exit_110
   not_109:
   

   ;--> 1111 0000 -€“ LOCK <--
   ;--> The byte: 11110000 <--
   mov al, byte_
   cmp al, 240
   je yes_110_0
   jmp not_110
   yes_110_0:
   mov ptr_, offset lock_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_110:
   jmp quick_exit_111
   not_110:
   

   ;--> 1111 0010 -€“ REPNZ; REPNE <--
   ;--> The byte: 11110010 <--
   mov al, byte_
   cmp al, 242
   je yes_111_0
   jmp not_111
   yes_111_0:
   mov ptr_, offset repnz_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_111:
   jmp quick_exit_112
   not_111:
   

   ;--> 1111 0011 -€“ REP; REPZ; REPE <--
   ;--> The byte: 11110011 <--
   mov al, byte_
   cmp al, 243
   je yes_112_0
   jmp not_112
   yes_112_0:
   mov ptr_, offset rep_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_112:
   jmp quick_exit_113
   not_112:
   

   ;--> 1111 0100 -€“ HLT <--
   ;--> The byte: 11110100 <--
   mov al, byte_
   cmp al, 244
   je yes_113_0
   jmp not_113
   yes_113_0:
   mov ptr_, offset hlt_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_113:
   jmp quick_exit_114
   not_113:
   

   ;--> 1111 0101 -€“ CMC <--
   ;--> The byte: 11110101 <--
   mov al, byte_
   cmp al, 245
   je yes_114_0
   jmp not_114
   yes_114_0:
   mov ptr_, offset cmc_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_114:
   jmp quick_exit_115
   not_114:
   

   ;--> 1111 011w mod 000 r/m [poslinkis] bojb [bovb] -€“ TEST registras/atmintis ? betarpiÅ¡kasoperandas <--
   ;--> The byte: 1111011w <--
   mov al, byte_
   shr al, 1
   cmp al, 123
   je yes_115_0
   jmp not_115
   yes_115_0:
   ;--> The byte: md000r/m <--
   cmp next_byte_available, 1
   je yes_115_1
   jmp not_115
   yes_115_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 0
   je yes_115_2
   jmp not_115
   yes_115_2:
   mov ptr_, offset test_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1111011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md000r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..000r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   ;--> The variable 'bovb' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis_bojb_bovb
   call end_line
   quick_exit_115:
   jmp quick_exit_116
   not_115:
   

   ;--> 1111 011w mod 010 r/m [poslinkis] -€“ NOT registras/atmintis <--
   ;--> The byte: 1111011w <--
   mov al, byte_
   shr al, 1
   cmp al, 123
   je yes_116_0
   jmp not_116
   yes_116_0:
   ;--> The byte: md010r/m <--
   cmp next_byte_available, 1
   je yes_116_1
   jmp not_116
   yes_116_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 2
   je yes_116_2
   jmp not_116
   yes_116_2:
   mov ptr_, offset not_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1111011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md010r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..010r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis
   call end_line
   quick_exit_116:
   jmp quick_exit_117
   not_116:
   

   ;--> 1111 011w mod 011 r/m [poslinkis] -€“ NEG registras/atmintis <--
   ;--> The byte: 1111011w <--
   mov al, byte_
   shr al, 1
   cmp al, 123
   je yes_117_0
   jmp not_117
   yes_117_0:
   ;--> The byte: md011r/m <--
   cmp next_byte_available, 1
   je yes_117_1
   jmp not_117
   yes_117_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 3
   je yes_117_2
   jmp not_117
   yes_117_2:
   mov ptr_, offset neg_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1111011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md011r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..011r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis
   call end_line
   quick_exit_117:
   jmp quick_exit_118
   not_117:
   

   ;--> 1111 011w mod 100 r/m [poslinkis] -€“ MUL registras/atmintis <--
   ;--> The byte: 1111011w <--
   mov al, byte_
   shr al, 1
   cmp al, 123
   je yes_118_0
   jmp not_118
   yes_118_0:
   ;--> The byte: md100r/m <--
   cmp next_byte_available, 1
   je yes_118_1
   jmp not_118
   yes_118_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 4
   je yes_118_2
   jmp not_118
   yes_118_2:
   mov ptr_, offset mul_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1111011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md100r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..100r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis
   call end_line
   quick_exit_118:
   jmp quick_exit_119
   not_118:
   

   ;--> 1111 011w mod 101 r/m [poslinkis] -€“ IMUL registras/atmintis <--
   ;--> The byte: 1111011w <--
   mov al, byte_
   shr al, 1
   cmp al, 123
   je yes_119_0
   jmp not_119
   yes_119_0:
   ;--> The byte: md101r/m <--
   cmp next_byte_available, 1
   je yes_119_1
   jmp not_119
   yes_119_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 5
   je yes_119_2
   jmp not_119
   yes_119_2:
   mov ptr_, offset imul_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1111011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md101r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..101r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis
   call end_line
   quick_exit_119:
   jmp quick_exit_120
   not_119:
   

   ;--> 1111 011w mod 110 r/m [poslinkis] -€“ DIV registras/atmintis <--
   ;--> The byte: 1111011w <--
   mov al, byte_
   shr al, 1
   cmp al, 123
   je yes_120_0
   jmp not_120
   yes_120_0:
   ;--> The byte: md110r/m <--
   cmp next_byte_available, 1
   je yes_120_1
   jmp not_120
   yes_120_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 6
   je yes_120_2
   jmp not_120
   yes_120_2:
   mov ptr_, offset div_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1111011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md110r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..110r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis
   call end_line
   quick_exit_120:
   jmp quick_exit_121
   not_120:
   

   ;--> 1111 011w mod 111 r/m [poslinkis] -€“ IDIV registras/atmintis <--
   ;--> The byte: 1111011w <--
   mov al, byte_
   shr al, 1
   cmp al, 123
   je yes_121_0
   jmp not_121
   yes_121_0:
   ;--> The byte: md111r/m <--
   cmp next_byte_available, 1
   je yes_121_1
   jmp not_121
   yes_121_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 7
   je yes_121_2
   jmp not_121
   yes_121_2:
   mov ptr_, offset idiv_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1111011w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md111r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..111r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis
   call end_line
   quick_exit_121:
   jmp quick_exit_122
   not_121:
   

   ;--> 1111 1000 -€“ CLC <--
   ;--> The byte: 11111000 <--
   mov al, byte_
   cmp al, 248
   je yes_122_0
   jmp not_122
   yes_122_0:
   mov ptr_, offset clc_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_122:
   jmp quick_exit_123
   not_122:
   

   ;--> 1111 1001 -€“ STC <--
   ;--> The byte: 11111001 <--
   mov al, byte_
   cmp al, 249
   je yes_123_0
   jmp not_123
   yes_123_0:
   mov ptr_, offset stc_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_123:
   jmp quick_exit_124
   not_123:
   

   ;--> 1111 1010 -€“ CLI <--
   ;--> The byte: 11111010 <--
   mov al, byte_
   cmp al, 250
   je yes_124_0
   jmp not_124
   yes_124_0:
   mov ptr_, offset cli_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_124:
   jmp quick_exit_125
   not_124:
   

   ;--> 1111 1011 -€“ STI <--
   ;--> The byte: 11111011 <--
   mov al, byte_
   cmp al, 251
   je yes_125_0
   jmp not_125
   yes_125_0:
   mov ptr_, offset sti_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_125:
   jmp quick_exit_126
   not_125:
   

   ;--> 1111 1100 -€“ CLD <--
   ;--> The byte: 11111100 <--
   mov al, byte_
   cmp al, 252
   je yes_126_0
   jmp not_126
   yes_126_0:
   mov ptr_, offset cld_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_126:
   jmp quick_exit_127
   not_126:
   

   ;--> 1111 1101 -€“ STD <--
   ;--> The byte: 11111101 <--
   mov al, byte_
   cmp al, 253
   je yes_127_0
   jmp not_127
   yes_127_0:
   mov ptr_, offset std_n
   call write_to_line
   call read_bytes
   call end_line
   quick_exit_127:
   jmp quick_exit_128
   not_127:
   

   ;--> 1111 111w mod 000 r/m [poslinkis] -€“ INC registras/atmintis <--
   ;--> The byte: 1111111w <--
   mov al, byte_
   shr al, 1
   cmp al, 127
   je yes_128_0
   jmp not_128
   yes_128_0:
   ;--> The byte: md000r/m <--
   cmp next_byte_available, 1
   je yes_128_1
   jmp not_128
   yes_128_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 0
   je yes_128_2
   jmp not_128
   yes_128_2:
   mov ptr_, offset inc_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1111111w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md000r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..000r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis
   call end_line
   quick_exit_128:
   jmp quick_exit_129
   not_128:
   

   ;--> 1111 111w mod 001 r/m [poslinkis] -€“ DEC registras/atmintis <--
   ;--> The byte: 1111111w <--
   mov al, byte_
   shr al, 1
   cmp al, 127
   je yes_129_0
   jmp not_129
   yes_129_0:
   ;--> The byte: md001r/m <--
   cmp next_byte_available, 1
   je yes_129_1
   jmp not_129
   yes_129_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 1
   je yes_129_2
   jmp not_129
   yes_129_2:
   mov ptr_, offset dec_n
   call write_to_line
   ;--> The variable 'w' in reformed byte: '1111111w' <--
   mov al, byte_
   shl al, 7
   shr al, 7
   mov w_, al
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md001r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..001r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_w_mod_r_m_poslinkis
   call end_line
   quick_exit_129:
   jmp quick_exit_130
   not_129:
   

   ;--> 1111 1111 mod 010 r/m [poslinkis] -€“ CALL adresas (vidinis netiesioginis) <--
   ;--> The byte: 11111111 <--
   mov al, byte_
   cmp al, 255
   je yes_130_0
   jmp not_130
   yes_130_0:
   ;--> The byte: md010r/m <--
   cmp next_byte_available, 1
   je yes_130_1
   jmp not_130
   yes_130_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 2
   je yes_130_2
   jmp not_130
   yes_130_2:
   mov ptr_, offset call_n
   call write_to_line
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md010r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..010r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call add_counter_segment
   call CONVERT_mod_r_m_poslinkis
   call end_line
   quick_exit_130:
   jmp quick_exit_131
   not_130:
   

   ;--> 1111 1111 mod 011 r/m [poslinkis] -€“ CALL adresas (iÅ¡orinis netiesioginis) <--
   ;--> The byte: 11111111 <--
   mov al, byte_
   cmp al, 255
   je yes_131_0
   jmp not_131
   yes_131_0:
   ;--> The byte: md011r/m <--
   cmp next_byte_available, 1
   je yes_131_1
   jmp not_131
   yes_131_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 3
   je yes_131_2
   jmp not_131
   yes_131_2:
   mov ptr_, offset call_n
   call write_to_line
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md011r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..011r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call add_counter_segment
   call CONVERT_mod_r_m_poslinkis
   call end_line
   quick_exit_131:
   jmp quick_exit_132
   not_131:
   

   ;--> 1111 1111 mod 100 r/m [poslinkis] -€“ JMP adresas (vidinis netiesioginis) <--
   ;--> The byte: 11111111 <--
   mov al, byte_
   cmp al, 255
   je yes_132_0
   jmp not_132
   yes_132_0:
   ;--> The byte: md100r/m <--
   cmp next_byte_available, 1
   je yes_132_1
   jmp not_132
   yes_132_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 4
   je yes_132_2
   jmp not_132
   yes_132_2:
   mov ptr_, offset jmp_n
   call write_to_line
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md100r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..100r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_mod_r_m_poslinkis
   call end_line
   quick_exit_132:
   jmp quick_exit_133
   not_132:
   

   ;--> 1111 1111 mod 101 r/m [poslinkis] -€“ JMP adresas (iÅ¡orinis netiesioginis) <--
   ;--> The byte: 11111111 <--
   mov al, byte_
   cmp al, 255
   je yes_133_0
   jmp not_133
   yes_133_0:
   ;--> The byte: md101r/m <--
   cmp next_byte_available, 1
   je yes_133_1
   jmp not_133
   yes_133_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 5
   je yes_133_2
   jmp not_133
   yes_133_2:
   mov ptr_, offset jmp_n
   call write_to_line
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md101r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..101r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_mod_r_m_poslinkis
   call end_line
   quick_exit_133:
   jmp quick_exit_134
   not_133:
   

   ;--> 1111 1111 mod 110 r/m [poslinkis] -€“ PUSH registras/atmintis <--
   ;--> The byte: 11111111 <--
   mov al, byte_
   cmp al, 255
   je yes_134_0
   jmp not_134
   yes_134_0:
   ;--> The byte: md110r/m <--
   cmp next_byte_available, 1
   je yes_134_1
   jmp not_134
   yes_134_1:
   mov al, next_byte
   shl al, 2
   shr al, 5
   cmp al, 6
   je yes_134_2
   jmp not_134
   yes_134_2:
   mov ptr_, offset push_n
   call write_to_line
   call read_bytes
   ;--> The variable 'md' in reformed byte: 'md110r/m' <--
   mov al, byte_
   shr al, 6
   mov mod_, al
   ;--> The variable 'r/m' in reformed byte: '..110r/m' <--
   mov al, byte_
   shl al, 5
   shr al, 5
   mov r_m_, al
   call read_bytes
   ;--> The variable 'poslinki' cannot be decoded by this function <--
   call CONVERT_mod_r_m_poslinkis
   call end_line
   quick_exit_134:
   jmp quick_exit_135
   not_134:
   

   call com_check_done     ;Apkeisti kai norime kad programa sustotu aptikus nezinomai komandai
   ;mov ptr_, offset wtf_n
   ;call write_to_line
   ;call end_line
   ;call read_bytes
   quick_exit_135:

RET


end start

