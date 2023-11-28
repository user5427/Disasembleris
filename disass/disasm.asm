.model tiny
.386                        ; Just to show at what position it has to be
;.stack 100h
.data

    endl db 0dh, 0ah, 24h

    argument db 127 dup(?)
    fn_in db 127 dup(?)      ; input file name (must be .com) ;Filename is limited to 12 characters
    fn_out db 127 dup(?)
    msg db "Error!", 24h     ; numbers_in_binary error message if something went wrong
    fh_in dw 0               ; used to save file handles
    fh_out dw 0

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
    second_byte_used db 1    ; a quick way to tell the function that it should renew the current and following byte values. May only be used when the next_byte value was used

    sr_ db 0
    w_ db 0
    mod_ db 0
    reg_ db 0
    address_ db 0, 0
    binary_number db 0

    number_in_ASCII db 0, 255 dup(?)

lots_of_names:
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
;

.code
ORG 100h
start:
    call read_argument
    ; find the inputfile, output file
    call open_input_file 
    call loop_over_bytes     

    mov ax, 4c00h
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
    mov di, offset argument     ; move the adress of file name to register dx
    jcxz error

    SKAITYTI:           
    mov al, es:[si]          ; move to register al one symbol from start of the argument
    mov [di], al             ; save the symbol in the file name 'array'
    inc si                   ; inc si to check another symbol in the argument
    inc di                   ; inc di to save another symbol in the file name 'array'
    loop SKAITYTI            ; loop till cx register is equal to zero

RET

open_input_file:
    mov ax, 3d00h            ; open existing file in read mode only
    mov dx, offset fn_in     ; return file handle to register AX
    inc dx                   ; ignore the whitespace at start
    int 21h                  ; return: CF set on error, AX = error code. CR clear if successful, AX = file handle

    JC error                 ; jump if carry flag = 1 (CF = 1)
    mov fh_in, ax            ; save the file handle in the double word type for later use

RET

loop_over_bytes:

    call read_bytes            ; returns byte to byte_ from buffer
    loop_bytes:                ; do this until the end of file
    
    call check_commands   ; check the command

    jmp loop_bytes

RET


read_bytes:
    push ax
    push cx
    cmp second_byte_used, 1
    jne skip_double_reading
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
    cmp file_end, 1
    je end_of_file_reached
    mov next_byte_available, 1

    loop get_bytes_loop

    end_of_file_reached:
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
    jnae skip_reading
    mov index, 0                ; reset index
    call read_buffer
    mov read_symbols, cl
    skip_reading:

    jcxz file_end_reached

    mov SI, offset buff

    mov al, [SI + 1]
    mov next_byte, al
    inc index

    jmp skip_file_end_indicator

    file_end_reached:
    mov file_end, 1
    skip_file_end_indicator:
    
    pop dx
    pop cx
    pop bx
    pop ax

RET
read_buffer:
    mov dx, offset buff      ; the start adress of the array "buff"
    xor cx, cx               ; just in case
    mov ax, 3f00h            ; 3f - read file with handle, ax - subinstruction
    mov bx, fh_in            ; bx- the input file handle
    mov cx, 200              ; cx - number of bytes to read
    int 21h                  ;
    JC error                 ; if there are errors, stop the program
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
    mov [DI + write_index], al
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
    cmp al, 24h
    je exit_copy_loop

    mov [DI + line_length], al
    inc line_length
    inc SI

    jmp copy_values
    exit_copy_loop:

    pop dx
    pop cx
    pop bx
    pop ax
RET
end_line: ; add endl to line
    push ax
    push bx
    push cx
    push dx
    
    mov SI, offset endl
    mov DI, offset line
    mov bx, offset line_length
    add DI, bx

    mov cx, 3
    copy_endl:
    mov al, [SI]
    mov [DI], al
    inc SI
    inc DI
    loop copy_endl

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
    mov [bx + line_length], ' '
    inc line_length
RET
add_left_bracket:
    mov bx, offset line
    mov [bx + line_length], '['
    inc line_length
RET
add_right_bracket:
    mov bx, offset line
    mov [bx + line_length], ']'
    inc line_length
RET
add_plus:
    mov bx, offset line
    mov [bx + line_length], '+'
    inc line_length
RET
add_comma_line:
    mov bx, offset line
    mov [bx + line_length], ','
    inc line_length
    call add_space_line
RET


find_write_register:
    push ax
    push bx
    push cx
    push dx

    mov al, mod_
    cmp al, 3
    jne not_simple_registers
    ;<--if(mod==11)-->

    mov ah, w_
    cmp ah, 1
    jne not_word_size_regiters
    ;<--if(w==1)-->

    cmp reg_, 0
    jne not_ax
    mov ptr_, offset ax_n
    call write_to_line
    jmp end_checking_registers
    not_ax:

    cmp reg_, 1
    jne not_cx
    mov ptr_, offset cx_n
    call write_to_line
    jmp end_checking_registers
    not_cx:
    
    cmp reg_, 2
    jne not_dx
    mov ptr_, offset dx_n
    call write_to_line
    jmp end_checking_registers
    not_dx:

    cmp reg_, 3
    jne not_bx
    mov ptr_, offset bx_n
    call write_to_line
    jmp end_checking_registers
    not_bx:

    cmp reg_, 4
    jne not_sp
    mov ptr_, offset sp_n
    call write_to_line
    jmp end_checking_registers
    not_sp:
    
    cmp reg_, 5
    jne not_bp
    mov ptr_, offset bp_n
    call write_to_line
    jmp end_checking_registers
    not_bp:

    cmp reg_, 6
    jne not_si
    mov ptr_, offset si_n
    call write_to_line
    jmp end_checking_registers
    not_si:

    cmp reg_, 7
    jne not_di
    mov ptr_, offset di_n
    call write_to_line
    jmp end_checking_registers
    not_di:
    
    
    ;<------------>
    not_word_size_regiters:

    cmp reg_, 0
    jne not_al
    mov ptr_, offset al_n
    call write_to_line
    jmp end_checking_registers
    not_al:

    cmp reg_, 1
    jne not_cl
    mov ptr_, offset cl_n
    call write_to_line
    jmp end_checking_registers
    not_cl:
    
    cmp reg_, 2
    jne not_dl
    mov ptr_, offset dl_n
    call write_to_line
    jmp end_checking_registers
    not_dl:

    cmp reg_, 3
    jne not_bl
    mov ptr_, offset bl_n
    call write_to_line
    jmp end_checking_registers
    not_bl:

    cmp reg_, 4
    jne not_ah
    mov ptr_, offset ah_n
    call write_to_line
    jmp end_checking_registers
    not_ah:
    
    cmp reg_, 5
    jne not_ch
    mov ptr_, offset ch_n
    call write_to_line
    jmp end_checking_registers
    not_ch:

    cmp reg_, 6
    jne not_dh
    mov ptr_, offset dh_n
    call write_to_line
    jmp end_checking_registers
    not_dh:

    cmp reg_, 7
    jne not_bh
    mov ptr_, offset bh_n
    call write_to_line
    jmp end_checking_registers
    not_bh:

    ;<--------------->
    not_simple_registers:
    call effective_address

    end_checking_registers:
    pop dx
    pop cx
    pop bx
    pop ax

RET
effective_address:
    call add_left_bracket
    

    cmp reg_, 0
    jne not_BX_SI
    mov ptr_, offset bx_n
    call write_to_line
    call add_plus
    mov ptr_, offset si_n
    call write_to_line
    jmp end_checking_address_reg
    not_BX_SI:


    cmp reg_, 1
    jne not_BX_DI
    mov ptr_, offset bx_n
    call write_to_line
    call add_plus
    mov ptr_, offset di_n
    call write_to_line
    jmp end_checking_address_reg
    not_BX_DI:

    cmp reg_, 2
    jne not_BP_SI
    mov ptr_, offset bp_n
    call write_to_line
    call add_plus
    mov ptr_, offset si_n
    call write_to_line
    jmp end_checking_address_reg
    not_BP_SI:

    cmp reg_, 3
    jne not_BP_DI
    mov ptr_, offset bp_n
    call write_to_line
    call add_plus
    mov ptr_, offset di_n
    call write_to_line
    jmp end_checking_address_reg
    not_BP_DI:

    cmp reg_, 4
    jne not_SI_address
    mov ptr_, offset si_n
    call write_to_line
    jmp end_checking_address_reg
    not_SI_address:

    cmp reg_, 5
    jne not_DI_address
    mov ptr_, offset di_n
    call write_to_line
    jmp end_checking_address_reg
    not_DI_address:

    cmp reg_, 6
    jne not_address
    cmp mod_, 0
    jne second_column_BP_offset
    call address_to_hex
    jmp end_checking_address_reg

    second_column_BP_offset:
    mov ptr_, offset bp_n
    call write_to_line
    jmp end_checking_address_reg
    not_address:

    cmp reg_, 7
    jne bx_as_address
    mov ptr_, offset bx_n
    call write_to_line
    jmp end_checking_address_reg
    bx_as_address:


    end_checking_address_reg:
    cmp mod_, 0
    je skip_adding_offset
    call add_plus
    call address_to_hex

    skip_adding_offset:
    call add_right_bracket
RET
find_write_seg_register:
    push ax
    push bx
    push cx
    push dx

    mov al, sr_
    cmp al, 0
    jne skip_es
    ;<--if-->
    mov ax, offset es_n
    mov ptr_, ax
    call write_to_line
    jmp done_checking_seg
    ;<------>  
    skip_es:


    cmp al, 1
    jne skip_cs
    ;<--if-->
    mov ax, offset cs_n
    mov ptr_, ax
    call write_to_line
    jmp done_checking_seg
    ;<------>      
    skip_cs:

    
    cmp al, 2
    jne skip_ss
    ;<--if-->
    mov ax, offset ss_n
    mov ptr_, ax
    call write_to_line
    jmp done_checking_seg
    ;<------>      
    skip_ss:


    cmp al, 3
    jne skip_ds
    ;<--if-->
    mov ax, offset ds_n
    mov ptr_, ax
    call write_to_line
    jmp done_checking_seg
    ;<------>  
    skip_ds:


    done_checking_seg:
    pop dx
    pop cx
    pop bx
    pop ax

RET

address_to_hex:
    push ax
    push bx
    push cx
    push dx

    mov SI, offset address_

    mov al, [SI]      ; in reality al is actually --00
    mov ah, [SI + 1]  ; while ah is for 00--

    mov cl, ah
    shr cl, 4
    call convert_half_byte_to_HEX
    mov cl, ah
    shl cl, 4
    shr cl, 4
    call convert_half_byte_to_HEX

    mov cl, al
    shr cl, 4
    call convert_half_byte_to_HEX
    mov cl, al
    shl cl, 4
    shr cl, 4
    call convert_half_byte_to_HEX

    pop dx
    pop cx
    pop bx
    pop ax


RET
convert_half_byte_to_HEX: ; takes register 'cl' as input
    cmp cl, 9
    jbe number_
    add cl, 55
    jmp write_symbol

    number_:
    add cl, 48

    write_symbol:
    mov bx, offset line
    mov [bx + line_length], cl
    inc line_length
    
RET
convert_to_decimal:             ; takes number in the adr_offset
    push ax
    push dx
    push cx
    push bx
    
    xor dx, dx
    mov dl, binary_number
    mov DI, offset number_in_ASCII               
    
    xor cx, cx
    mov ax, dx
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

    ; add the $ symbol to number
    mov DI, offset ASCII_values_loop
    mov bx, [DI] ; the length of number
    mov al, 24h
    mov [DI + bx], al ; move the $ symbol
    
    mov ptr_, DI
    add ptr_, 1
    call write_to_line

    pop bx
    pop cx
    pop dx
    pop ax
    
RET
                      

check_commands:
    xor ax, ax
    
    ;[[[6, 2], '000000dw'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 000000dw ---
mov al, next_byte
shr al, 2
cmp al, 0
jne not_0
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_0:


;[[[7, 1], '0000010w'], [[0, 8], 'bojbbovb']]
;---the byte: 0000010w ---
mov al, next_byte
shr al, 1
cmp al, 2
jne not_1
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_1:


;[[[3, 2], '000sr110']]
;---the byte: 000sr110 ---
mov al, next_byte
shr al, 5
shl al, 5
mov ah, next_byte
shl ah, 5
shr ah, 5
add al, ah
cmp al, 6
jne not_2
mov second_byte_used, 1
call read_bytes
not_2:


;[[[3, 2], '000sr111']]
;---the byte: 000sr111 ---
mov al, next_byte
shr al, 5
shl al, 5
mov ah, next_byte
shl ah, 5
shr ah, 5
add al, ah
cmp al, 7
jne not_3
mov second_byte_used, 1
call read_bytes
not_3:


;[[[6, 2], '000010dw'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 000010dw ---
mov al, next_byte
shr al, 2
cmp al, 2
jne not_4
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_4:


;[[[7, 1], '0000110w'], [[0, 8], 'bojbbovb']]
;---the byte: 0000110w ---
mov al, next_byte
shr al, 1
cmp al, 6
jne not_5
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_5:


;[[[6, 2], '000100dw'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 000100dw ---
mov al, next_byte
shr al, 2
cmp al, 4
jne not_6
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_6:


;[[[7, 1], '0001010w'], [[0, 8], 'bojbbovb']]
;---the byte: 0001010w ---
mov al, next_byte
shr al, 1
cmp al, 10
jne not_7
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_7:


;[[[6, 2], '000110dw'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 000110dw ---
mov al, next_byte
shr al, 2
cmp al, 6
jne not_8
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_8:


;[[[7, 1], '0001110w'], [[0, 8], 'bojbbovb']]
;---the byte: 0001110w ---
mov al, next_byte
shr al, 1
cmp al, 14
jne not_9
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_9:


;[[[6, 2], '001000dw'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 001000dw ---
mov al, next_byte
shr al, 2
cmp al, 8
jne not_10
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_10:


;[[[7, 1], '0010010w'], [[0, 8], 'bojbbovb']]
;---the byte: 0010010w ---
mov al, next_byte
shr al, 1
cmp al, 18
jne not_11
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_11:


;[[[3, 2], '001sr110']]
;---the byte: 001sr110 ---
mov al, next_byte
shr al, 5
shl al, 5
mov ah, next_byte
shl ah, 5
shr ah, 5
add al, ah
cmp al, 38
jne not_12
mov second_byte_used, 1
call read_bytes
not_12:


;[[[0, 0], '00100111']]
;---the byte: 00100111 ---
mov al, next_byte
shl al, 0
cmp al, 39
jne not_13
mov second_byte_used, 1
call read_bytes
not_13:


;[[[6, 2], '001010dw'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 001010dw ---
mov al, next_byte
shr al, 2
cmp al, 10
jne not_14
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_14:


;[[[7, 1], '0010110w'], [[0, 8], 'bojbbovb']]
;---the byte: 0010110w ---
mov al, next_byte
shr al, 1
cmp al, 22
jne not_15
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_15:


;[[[0, 0], '00101111']]
;---the byte: 00101111 ---
mov al, next_byte
shl al, 0
cmp al, 47
jne not_16
mov second_byte_used, 1
call read_bytes
not_16:


;[[[6, 2], '001100dw'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 001100dw ---
mov al, next_byte
shr al, 2
cmp al, 12
jne not_17
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_17:


;[[[7, 1], '0011010w'], [[0, 8], 'bojbbovb']]
;---the byte: 0011010w ---
mov al, next_byte
shr al, 1
cmp al, 26
jne not_18
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_18:


;[[[0, 0], '00110111']]
;---the byte: 00110111 ---
mov al, next_byte
shl al, 0
cmp al, 55
jne not_19
mov second_byte_used, 1
call read_bytes
not_19:


;[[[6, 2], '001110dw'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 001110dw ---
mov al, next_byte
shr al, 2
cmp al, 14
jne not_20
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_20:


;[[[7, 1], '0011110w'], [[0, 8], 'bojbbovb']]
;---the byte: 0011110w ---
mov al, next_byte
shr al, 1
cmp al, 30
jne not_21
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_21:


;[[[0, 0], '00111111']]
;---the byte: 00111111 ---
mov al, next_byte
shl al, 0
cmp al, 63
jne not_22
mov second_byte_used, 1
call read_bytes
not_22:


;[[[5, 3], '01000reg']]
;---the byte: 01000reg ---
mov al, next_byte
shr al, 3
cmp al, 8
jne not_23
mov second_byte_used, 1
call read_bytes
not_23:


;[[[5, 3], '01001reg']]
;---the byte: 01001reg ---
mov al, next_byte
shr al, 3
cmp al, 9
jne not_24
mov second_byte_used, 1
call read_bytes
not_24:


;[[[5, 3], '01010reg']]
;---the byte: 01010reg ---
mov al, next_byte
shr al, 3
cmp al, 10
jne not_25
mov second_byte_used, 1
call read_bytes
not_25:


;[[[5, 3], '01011reg']]
;---the byte: 01011reg ---
mov al, next_byte
shr al, 3
cmp al, 11
jne not_26
mov second_byte_used, 1
call read_bytes
not_26:


;[[[0, 0], '01110000'], [[0, 8], 'poslinki']]
;---the byte: 01110000 ---
mov al, next_byte
shl al, 0
cmp al, 112
jne not_27
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_27:


;[[[0, 0], '01110001'], [[0, 8], 'poslinki']]
;---the byte: 01110001 ---
mov al, next_byte
shl al, 0
cmp al, 113
jne not_28
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_28:


;[[[0, 0], '01110010'], [[0, 8], 'poslinki']]
;---the byte: 01110010 ---
mov al, next_byte
shl al, 0
cmp al, 114
jne not_29
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_29:


;[[[0, 0], '01110011'], [[0, 8], 'poslinki']]
;---the byte: 01110011 ---
mov al, next_byte
shl al, 0
cmp al, 115
jne not_30
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_30:


;[[[0, 0], '01110100'], [[0, 8], 'poslinki']]
;---the byte: 01110100 ---
mov al, next_byte
shl al, 0
cmp al, 116
jne not_31
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_31:


;[[[0, 0], '01110101'], [[0, 8], 'poslinki']]
;---the byte: 01110101 ---
mov al, next_byte
shl al, 0
cmp al, 117
jne not_32
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_32:


;[[[0, 0], '01110110'], [[0, 8], 'poslinki']]
;---the byte: 01110110 ---
mov al, next_byte
shl al, 0
cmp al, 118
jne not_33
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_33:


;[[[0, 0], '01110111'], [[0, 8], 'poslinki']]
;---the byte: 01110111 ---
mov al, next_byte
shl al, 0
cmp al, 119
jne not_34
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_34:


;[[[0, 0], '01111000'], [[0, 8], 'poslinki']]
;---the byte: 01111000 ---
mov al, next_byte
shl al, 0
cmp al, 120
jne not_35
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_35:


;[[[0, 0], '01111001'], [[0, 8], 'poslinki']]
;---the byte: 01111001 ---
mov al, next_byte
shl al, 0
cmp al, 121
jne not_36
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_36:


;[[[0, 0], '01111010'], [[0, 8], 'poslinki']]
;---the byte: 01111010 ---
mov al, next_byte
shl al, 0
cmp al, 122
jne not_37
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_37:


;[[[0, 0], '01111011'], [[0, 8], 'poslinki']]
;---the byte: 01111011 ---
mov al, next_byte
shl al, 0
cmp al, 123
jne not_38
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_38:


;[[[0, 0], '01111100'], [[0, 8], 'poslinki']]
;---the byte: 01111100 ---
mov al, next_byte
shl al, 0
cmp al, 124
jne not_39
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_39:


;[[[0, 0], '01111101'], [[0, 8], 'poslinki']]
;---the byte: 01111101 ---
mov al, next_byte
shl al, 0
cmp al, 125
jne not_40
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_40:


;[[[0, 0], '01111110'], [[0, 8], 'poslinki']]
;---the byte: 01111110 ---
mov al, next_byte
shl al, 0
cmp al, 126
jne not_41
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_41:


;[[[0, 0], '01111111'], [[0, 8], 'poslinki']]
;---the byte: 01111111 ---
mov al, next_byte
shl al, 0
cmp al, 127
jne not_42
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_42:


;[[[6, 2], '100000sw'], [[0, 2], [5, 3], 'md000r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 100000sw ---
mov al, next_byte
shr al, 2
cmp al, 32
jne not_43
mov second_byte_used, 1
call read_bytes
;---the byte: md000r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 0
jne not_43
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_43:


;[[[6, 2], '100000sw'], [[0, 2], [5, 3], 'md001r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 100000sw ---
mov al, next_byte
shr al, 2
cmp al, 32
jne not_44
mov second_byte_used, 1
call read_bytes
;---the byte: md001r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 1
jne not_44
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_44:


;[[[6, 2], '100000sw'], [[0, 2], [5, 3], 'md010r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 100000sw ---
mov al, next_byte
shr al, 2
cmp al, 32
jne not_45
mov second_byte_used, 1
call read_bytes
;---the byte: md010r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 2
jne not_45
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_45:


;[[[6, 2], '100000sw'], [[0, 2], [5, 3], 'md011r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 100000sw ---
mov al, next_byte
shr al, 2
cmp al, 32
jne not_46
mov second_byte_used, 1
call read_bytes
;---the byte: md011r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 3
jne not_46
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_46:


;[[[6, 2], '100000sw'], [[0, 2], [5, 3], 'md100r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 100000sw ---
mov al, next_byte
shr al, 2
cmp al, 32
jne not_47
mov second_byte_used, 1
call read_bytes
;---the byte: md100r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 4
jne not_47
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_47:


;[[[6, 2], '100000sw'], [[0, 2], [5, 3], 'md101r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 100000sw ---
mov al, next_byte
shr al, 2
cmp al, 32
jne not_48
mov second_byte_used, 1
call read_bytes
;---the byte: md101r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 5
jne not_48
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_48:


;[[[6, 2], '100000sw'], [[0, 2], [5, 3], 'md110r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 100000sw ---
mov al, next_byte
shr al, 2
cmp al, 32
jne not_49
mov second_byte_used, 1
call read_bytes
;---the byte: md110r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 6
jne not_49
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_49:


;[[[6, 2], '100000sw'], [[0, 2], [5, 3], 'md111r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 100000sw ---
mov al, next_byte
shr al, 2
cmp al, 32
jne not_50
mov second_byte_used, 1
call read_bytes
;---the byte: md111r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 7
jne not_50
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_50:


;[[[7, 1], '1000010w'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 1000010w ---
mov al, next_byte
shr al, 1
cmp al, 66
jne not_51
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_51:


;[[[7, 1], '1000011w'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 1000011w ---
mov al, next_byte
shr al, 1
cmp al, 67
jne not_52
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_52:


;[[[6, 2], '100010dw'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 100010dw ---
mov al, next_byte
shr al, 2
cmp al, 34
jne not_53
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_53:


;[[[6, 1], '100011d0'], [[0, 2], [3, 5], 'md0srr/m'], [[0, 8], 'poslinki']]
;---the byte: 100011d0 ---
mov al, next_byte
shr al, 2
shl al, 2
mov ah, next_byte
shl ah, 7
shr ah, 7
add al, ah
cmp al, 140
jne not_54
mov second_byte_used, 1
call read_bytes
;---the byte: md0srr/m ---
mov al, byte_
shl al, 2
shr al, 7
cmp al, 0
jne not_54
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_54:


;[[[0, 0], '10001101'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 10001101 ---
mov al, next_byte
shl al, 0
cmp al, 141
jne not_55
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_55:


;[[[0, 0], '10001111'], [[0, 2], [5, 3], 'md000r/m'], [[0, 8], 'poslinki']]
;---the byte: 10001111 ---
mov al, next_byte
shl al, 0
cmp al, 143
jne not_56
mov second_byte_used, 1
call read_bytes
;---the byte: md000r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 0
jne not_56
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_56:


;[[[0, 0], '10010000']]
;---the byte: 10010000 ---
mov al, next_byte
shl al, 0
cmp al, 144
jne not_57
mov second_byte_used, 1
call read_bytes
not_57:


;[[[5, 3], '10010reg']]
;---the byte: 10010reg ---
mov al, next_byte
shr al, 3
cmp al, 18
jne not_58
mov second_byte_used, 1
call read_bytes
not_58:


;[[[0, 0], '10011000']]
;---the byte: 10011000 ---
mov al, next_byte
shl al, 0
cmp al, 152
jne not_59
mov second_byte_used, 1
call read_bytes
not_59:


;[[[0, 0], '10011001']]
;---the byte: 10011001 ---
mov al, next_byte
shl al, 0
cmp al, 153
jne not_60
mov second_byte_used, 1
call read_bytes
not_60:


;[[[0, 0], '10011010'], [[0, 6], 'ajbavb'], [[0, 8], 'srjbsrvb']]
;---the byte: 10011010 ---
mov al, next_byte
shl al, 0
cmp al, 154
jne not_61
mov second_byte_used, 1
call read_bytes
;---the byte: ajbavb ---
call read_bytes
;---the byte: srjbsrvb ---
call read_bytes
not_61:


;[[[0, 0], '10011011']]
;---the byte: 10011011 ---
mov al, next_byte
shl al, 0
cmp al, 155
jne not_62
mov second_byte_used, 1
call read_bytes
not_62:


;[[[0, 0], '10011100']]
;---the byte: 10011100 ---
mov al, next_byte
shl al, 0
cmp al, 156
jne not_63
mov second_byte_used, 1
call read_bytes
not_63:


;[[[0, 0], '10011101']]
;---the byte: 10011101 ---
mov al, next_byte
shl al, 0
cmp al, 157
jne not_64
mov second_byte_used, 1
call read_bytes
not_64:


;[[[0, 0], '10011110']]
;---the byte: 10011110 ---
mov al, next_byte
shl al, 0
cmp al, 158
jne not_65
mov second_byte_used, 1
call read_bytes
not_65:


;[[[0, 0], '10011111']]
;---the byte: 10011111 ---
mov al, next_byte
shl al, 0
cmp al, 159
jne not_66
mov second_byte_used, 1
call read_bytes
not_66:


;[[[7, 1], '1010000w'], [[0, 6], 'ajbavb']]
;---the byte: 1010000w ---
mov al, next_byte
shr al, 1
cmp al, 80
jne not_67
mov second_byte_used, 1
call read_bytes
;---the byte: ajbavb ---
call read_bytes
not_67:


;[[[7, 1], '1010001w'], [[0, 6], 'ajbavb']]
;---the byte: 1010001w ---
mov al, next_byte
shr al, 1
cmp al, 81
jne not_68
mov second_byte_used, 1
call read_bytes
;---the byte: ajbavb ---
call read_bytes
not_68:


;[[[7, 1], '1010010w']]
;---the byte: 1010010w ---
mov al, next_byte
shr al, 1
cmp al, 82
jne not_69
mov second_byte_used, 1
call read_bytes
not_69:


;[[[7, 1], '1010011w']]
;---the byte: 1010011w ---
mov al, next_byte
shr al, 1
cmp al, 83
jne not_70
mov second_byte_used, 1
call read_bytes
not_70:


;[[[7, 1], '1010100w'], [[0, 8], 'bojbbovb']]
;---the byte: 1010100w ---
mov al, next_byte
shr al, 1
cmp al, 84
jne not_71
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_71:


;[[[7, 1], '1010101w']]
;---the byte: 1010101w ---
mov al, next_byte
shr al, 1
cmp al, 85
jne not_72
mov second_byte_used, 1
call read_bytes
not_72:


;[[[7, 1], '1010110w']]
;---the byte: 1010110w ---
mov al, next_byte
shr al, 1
cmp al, 86
jne not_73
mov second_byte_used, 1
call read_bytes
not_73:


;[[[7, 1], '1010111w']]
;---the byte: 1010111w ---
mov al, next_byte
shr al, 1
cmp al, 87
jne not_74
mov second_byte_used, 1
call read_bytes
not_74:


;[[[4, 4], '1011wreg'], [[0, 8], 'bojbbovb']]
;---the byte: 1011wreg ---
mov al, next_byte
shr al, 4
cmp al, 11
jne not_75
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_75:


;[[[0, 0], '11000010'], [[0, 8], 'bojbbovb']]
;---the byte: 11000010 ---
mov al, next_byte
shl al, 0
cmp al, 194
jne not_76
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_76:


;[[[0, 0], '11000011']]
;---the byte: 11000011 ---
mov al, next_byte
shl al, 0
cmp al, 195
jne not_77
mov second_byte_used, 1
call read_bytes
not_77:


;[[[0, 0], '11000100'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 11000100 ---
mov al, next_byte
shl al, 0
cmp al, 196
jne not_78
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_78:


;[[[0, 0], '11000101'], [[0, 8], 'mdregr/m'], [[0, 8], 'poslinki']]
;---the byte: 11000101 ---
mov al, next_byte
shl al, 0
cmp al, 197
jne not_79
mov second_byte_used, 1
call read_bytes
;---the byte: mdregr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_79:


;[[[7, 1], '1100011w'], [[0, 2], [5, 3], 'md000r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 1100011w ---
mov al, next_byte
shr al, 1
cmp al, 99
jne not_80
mov second_byte_used, 1
call read_bytes
;---the byte: md000r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 0
jne not_80
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_80:


;[[[0, 0], '11001010'], [[0, 8], 'bojbbovb']]
;---the byte: 11001010 ---
mov al, next_byte
shl al, 0
cmp al, 202
jne not_81
mov second_byte_used, 1
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_81:


;[[[0, 0], '11001011']]
;---the byte: 11001011 ---
mov al, next_byte
shl al, 0
cmp al, 203
jne not_82
mov second_byte_used, 1
call read_bytes
not_82:


;[[[0, 0], '11001100']]
;---the byte: 11001100 ---
mov al, next_byte
shl al, 0
cmp al, 204
jne not_83
mov second_byte_used, 1
call read_bytes
not_83:


;[[[0, 0], '11001101'], [[0, 7], 'numeris']]
;---the byte: 11001101 ---
mov al, next_byte
shl al, 0
cmp al, 205
jne not_84
mov second_byte_used, 1
call read_bytes
;---the byte: numeris ---
call read_bytes
not_84:


;[[[0, 0], '11001110']]
;---the byte: 11001110 ---
mov al, next_byte
shl al, 0
cmp al, 206
jne not_85
mov second_byte_used, 1
call read_bytes
not_85:


;[[[0, 0], '11001111']]
;---the byte: 11001111 ---
mov al, next_byte
shl al, 0
cmp al, 207
jne not_86
mov second_byte_used, 1
call read_bytes
not_86:


;[[[6, 2], '110100vw'], [[0, 2], [5, 3], 'md000r/m'], [[0, 8], 'poslinki']]
;---the byte: 110100vw ---
mov al, next_byte
shr al, 2
cmp al, 52
jne not_87
mov second_byte_used, 1
call read_bytes
;---the byte: md000r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 0
jne not_87
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_87:


;[[[6, 2], '110100vw'], [[0, 2], [5, 3], 'md001r/m'], [[0, 8], 'poslinki']]
;---the byte: 110100vw ---
mov al, next_byte
shr al, 2
cmp al, 52
jne not_88
mov second_byte_used, 1
call read_bytes
;---the byte: md001r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 1
jne not_88
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_88:


;[[[6, 2], '110100vw'], [[0, 2], [5, 3], 'md010r/m'], [[0, 8], 'poslinki']]
;---the byte: 110100vw ---
mov al, next_byte
shr al, 2
cmp al, 52
jne not_89
mov second_byte_used, 1
call read_bytes
;---the byte: md010r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 2
jne not_89
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_89:


;[[[6, 2], '110100vw'], [[0, 2], [5, 3], 'md011r/m'], [[0, 8], 'poslinki']]
;---the byte: 110100vw ---
mov al, next_byte
shr al, 2
cmp al, 52
jne not_90
mov second_byte_used, 1
call read_bytes
;---the byte: md011r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 3
jne not_90
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_90:


;[[[6, 2], '110100vw'], [[0, 2], [5, 3], 'md100r/m'], [[0, 8], 'poslinki']]
;---the byte: 110100vw ---
mov al, next_byte
shr al, 2
cmp al, 52
jne not_91
mov second_byte_used, 1
call read_bytes
;---the byte: md100r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 4
jne not_91
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_91:


;[[[6, 2], '110100vw'], [[0, 2], [5, 3], 'md101r/m'], [[0, 8], 'poslinki']]
;---the byte: 110100vw ---
mov al, next_byte
shr al, 2
cmp al, 52
jne not_92
mov second_byte_used, 1
call read_bytes
;---the byte: md101r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 5
jne not_92
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_92:


;[[[6, 2], '110100vw'], [[0, 2], [5, 3], 'md111r/m'], [[0, 8], 'poslinki']]
;---the byte: 110100vw ---
mov al, next_byte
shr al, 2
cmp al, 52
jne not_93
mov second_byte_used, 1
call read_bytes
;---the byte: md111r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 7
jne not_93
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_93:


;[[[0, 0], '11010100'], [[0, 0], '00001010']]
;---the byte: 11010100 ---
mov al, next_byte
shl al, 0
cmp al, 212
jne not_94
mov second_byte_used, 1
call read_bytes
;---the byte: 00001010 ---
mov al, byte_
shl al, 0
cmp al, 10
jne not_94
call read_bytes
not_94:


;[[[0, 0], '11010101'], [[0, 0], '00001010']]
;---the byte: 11010101 ---
mov al, next_byte
shl al, 0
cmp al, 213
jne not_95
mov second_byte_used, 1
call read_bytes
;---the byte: 00001010 ---
mov al, byte_
shl al, 0
cmp al, 10
jne not_95
call read_bytes
not_95:


;[[[0, 0], '11010111']]
;---the byte: 11010111 ---
mov al, next_byte
shl al, 0
cmp al, 215
jne not_96
mov second_byte_used, 1
call read_bytes
not_96:


;[[[5, 3], '11011xxx'], [[0, 8], 'mdyyyr/m'], [[0, 8], 'poslinki']]
;---the byte: 11011xxx ---
mov al, next_byte
shr al, 3
cmp al, 27
jne not_97
mov second_byte_used, 1
call read_bytes
;---the byte: mdyyyr/m ---
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_97:


;[[[0, 0], '11100000'], [[0, 8], 'poslinki']]
;---the byte: 11100000 ---
mov al, next_byte
shl al, 0
cmp al, 224
jne not_98
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_98:


;[[[0, 0], '11100001'], [[0, 8], 'poslinki']]
;---the byte: 11100001 ---
mov al, next_byte
shl al, 0
cmp al, 225
jne not_99
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_99:


;[[[0, 0], '11100010'], [[0, 8], 'poslinki']]
;---the byte: 11100010 ---
mov al, next_byte
shl al, 0
cmp al, 226
jne not_100
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_100:


;[[[0, 0], '11100011'], [[0, 8], 'poslinki']]
;---the byte: 11100011 ---
mov al, next_byte
shl al, 0
cmp al, 227
jne not_101
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_101:


;[[[7, 1], '1110010w'], [[0, 8], 'portas--']]
;---the byte: 1110010w ---
mov al, next_byte
shr al, 1
cmp al, 114
jne not_102
mov second_byte_used, 1
call read_bytes
;---the byte: portas-- ---
call read_bytes
not_102:


;[[[7, 1], '1110011w'], [[0, 8], 'portas--']]
;---the byte: 1110011w ---
mov al, next_byte
shr al, 1
cmp al, 115
jne not_103
mov second_byte_used, 1
call read_bytes
;---the byte: portas-- ---
call read_bytes
not_103:


;[[[0, 0], '11101000'], [[0, 6], 'pjbpvb']]
;---the byte: 11101000 ---
mov al, next_byte
shl al, 0
cmp al, 232
jne not_104
mov second_byte_used, 1
call read_bytes
;---the byte: pjbpvb ---
call read_bytes
not_104:


;[[[0, 0], '11101001'], [[0, 6], 'pjbpvb']]
;---the byte: 11101001 ---
mov al, next_byte
shl al, 0
cmp al, 233
jne not_105
mov second_byte_used, 1
call read_bytes
;---the byte: pjbpvb ---
call read_bytes
not_105:


;[[[0, 0], '11101010'], [[0, 6], 'ajbavb'], [[0, 8], 'srjbsrvb']]
;---the byte: 11101010 ---
mov al, next_byte
shl al, 0
cmp al, 234
jne not_106
mov second_byte_used, 1
call read_bytes
;---the byte: ajbavb ---
call read_bytes
;---the byte: srjbsrvb ---
call read_bytes
not_106:


;[[[0, 0], '11101011'], [[0, 8], 'poslinki']]
;---the byte: 11101011 ---
mov al, next_byte
shl al, 0
cmp al, 235
jne not_107
mov second_byte_used, 1
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_107:


;[[[7, 1], '1110110w']]
;---the byte: 1110110w ---
mov al, next_byte
shr al, 1
cmp al, 118
jne not_108
mov second_byte_used, 1
call read_bytes
not_108:


;[[[7, 1], '1110111w']]
;---the byte: 1110111w ---
mov al, next_byte
shr al, 1
cmp al, 119
jne not_109
mov second_byte_used, 1
call read_bytes
not_109:


;[[[0, 0], '11110000']]
;---the byte: 11110000 ---
mov al, next_byte
shl al, 0
cmp al, 240
jne not_110
mov second_byte_used, 1
call read_bytes
not_110:


;[[[0, 0], '11110010']]
;---the byte: 11110010 ---
mov al, next_byte
shl al, 0
cmp al, 242
jne not_111
mov second_byte_used, 1
call read_bytes
not_111:


;[[[0, 0], '11110011']]
;---the byte: 11110011 ---
mov al, next_byte
shl al, 0
cmp al, 243
jne not_112
mov second_byte_used, 1
call read_bytes
not_112:


;[[[0, 0], '11110100']]
;---the byte: 11110100 ---
mov al, next_byte
shl al, 0
cmp al, 244
jne not_113
mov second_byte_used, 1
call read_bytes
not_113:


;[[[0, 0], '11110101']]
;---the byte: 11110101 ---
mov al, next_byte
shl al, 0
cmp al, 245
jne not_114
mov second_byte_used, 1
call read_bytes
not_114:


;[[[7, 1], '1111011w'], [[0, 2], [5, 3], 'md000r/m'], [[0, 8], 'poslinki'], [[0, 8], 'bojbbovb']]
;---the byte: 1111011w ---
mov al, next_byte
shr al, 1
cmp al, 123
jne not_115
mov second_byte_used, 1
call read_bytes
;---the byte: md000r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 0
jne not_115
call read_bytes
;---the byte: poslinki ---
call read_bytes
;---the byte: bojbbovb ---
call read_bytes
not_115:


;[[[7, 1], '1111011w'], [[0, 2], [5, 3], 'md010r/m'], [[0, 8], 'poslinki']]
;---the byte: 1111011w ---
mov al, next_byte
shr al, 1
cmp al, 123
jne not_116
mov second_byte_used, 1
call read_bytes
;---the byte: md010r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 2
jne not_116
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_116:


;[[[7, 1], '1111011w'], [[0, 2], [5, 3], 'md011r/m'], [[0, 8], 'poslinki']]
;---the byte: 1111011w ---
mov al, next_byte
shr al, 1
cmp al, 123
jne not_117
mov second_byte_used, 1
call read_bytes
;---the byte: md011r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 3
jne not_117
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_117:


;[[[7, 1], '1111011w'], [[0, 2], [5, 3], 'md100r/m'], [[0, 8], 'poslinki']]
;---the byte: 1111011w ---
mov al, next_byte
shr al, 1
cmp al, 123
jne not_118
mov second_byte_used, 1
call read_bytes
;---the byte: md100r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 4
jne not_118
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_118:


;[[[7, 1], '1111011w'], [[0, 2], [5, 3], 'md101r/m'], [[0, 8], 'poslinki']]
;---the byte: 1111011w ---
mov al, next_byte
shr al, 1
cmp al, 123
jne not_119
mov second_byte_used, 1
call read_bytes
;---the byte: md101r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 5
jne not_119
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_119:


;[[[7, 1], '1111011w'], [[0, 2], [5, 3], 'md110r/m'], [[0, 8], 'poslinki']]
;---the byte: 1111011w ---
mov al, next_byte
shr al, 1
cmp al, 123
jne not_120
mov second_byte_used, 1
call read_bytes
;---the byte: md110r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 6
jne not_120
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_120:


;[[[7, 1], '1111011w'], [[0, 2], [5, 3], 'md111r/m'], [[0, 8], 'poslinki']]
;---the byte: 1111011w ---
mov al, next_byte
shr al, 1
cmp al, 123
jne not_121
mov second_byte_used, 1
call read_bytes
;---the byte: md111r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 7
jne not_121
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_121:


;[[[0, 0], '11111000']]
;---the byte: 11111000 ---
mov al, next_byte
shl al, 0
cmp al, 248
jne not_122
mov second_byte_used, 1
call read_bytes
not_122:


;[[[0, 0], '11111001']]
;---the byte: 11111001 ---
mov al, next_byte
shl al, 0
cmp al, 249
jne not_123
mov second_byte_used, 1
call read_bytes
not_123:


;[[[0, 0], '11111010']]
;---the byte: 11111010 ---
mov al, next_byte
shl al, 0
cmp al, 250
jne not_124
mov second_byte_used, 1
call read_bytes
not_124:


;[[[0, 0], '11111011']]
;---the byte: 11111011 ---
mov al, next_byte
shl al, 0
cmp al, 251
jne not_125
mov second_byte_used, 1
call read_bytes
not_125:


;[[[0, 0], '11111100']]
;---the byte: 11111100 ---
mov al, next_byte
shl al, 0
cmp al, 252
jne not_126
mov second_byte_used, 1
call read_bytes
not_126:


;[[[0, 0], '11111101']]
;---the byte: 11111101 ---
mov al, next_byte
shl al, 0
cmp al, 253
jne not_127
mov second_byte_used, 1
call read_bytes
not_127:


;[[[7, 1], '1111111w'], [[0, 2], [5, 3], 'md000r/m'], [[0, 8], 'poslinki']]
;---the byte: 1111111w ---
mov al, next_byte
shr al, 1
cmp al, 127
jne not_128
mov second_byte_used, 1
call read_bytes
;---the byte: md000r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 0
jne not_128
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_128:


;[[[7, 1], '1111111w'], [[0, 2], [5, 3], 'md001r/m'], [[0, 8], 'poslinki']]
;---the byte: 1111111w ---
mov al, next_byte
shr al, 1
cmp al, 127
jne not_129
mov second_byte_used, 1
call read_bytes
;---the byte: md001r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 1
jne not_129
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_129:


;[[[0, 0], '11111111'], [[0, 2], [5, 3], 'md010r/m'], [[0, 8], 'poslinki']]
;---the byte: 11111111 ---
mov al, next_byte
shl al, 0
cmp al, 255
jne not_130
mov second_byte_used, 1
call read_bytes
;---the byte: md010r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 2
jne not_130
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_130:


;[[[0, 0], '11111111'], [[0, 2], [5, 3], 'md011r/m'], [[0, 8], 'poslinki']]
;---the byte: 11111111 ---
mov al, next_byte
shl al, 0
cmp al, 255
jne not_131
mov second_byte_used, 1
call read_bytes
;---the byte: md011r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 3
jne not_131
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_131:


;[[[0, 0], '11111111'], [[0, 2], [5, 3], 'md100r/m'], [[0, 8], 'poslinki']]
;---the byte: 11111111 ---
mov al, next_byte
shl al, 0
cmp al, 255
jne not_132
mov second_byte_used, 1
call read_bytes
;---the byte: md100r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 4
jne not_132
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_132:


;[[[0, 0], '11111111'], [[0, 2], [5, 3], 'md101r/m'], [[0, 8], 'poslinki']]
;---the byte: 11111111 ---
mov al, next_byte
shl al, 0
cmp al, 255
jne not_133
mov second_byte_used, 1
call read_bytes
;---the byte: md101r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 5
jne not_133
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_133:


;[[[0, 0], '11111111'], [[0, 2], [5, 3], 'md110r/m'], [[0, 8], 'poslinki']]
;---the byte: 11111111 ---
mov al, next_byte
shl al, 0
cmp al, 255
jne not_134
mov second_byte_used, 1
call read_bytes
;---the byte: md110r/m ---
mov al, byte_
shl al, 2
shr al, 5
cmp al, 6
jne not_134
call read_bytes
;---the byte: poslinki ---
call read_bytes
not_134:



RET

check_double_byte_commands:
                                                           ;00     ;000
    mov al, byte_ ; shit it needs two bytes ->>>> 1000 00sw mod 000 r/m [poslinkis] bojb [bovb] – ADD registras/atmintis += betarpiškas operandas
    mov ah, next_byte
    shr al, 2 ; -- 1000 00
    shl al, 2 ; 1000 00 --
    shl ah, 2 ; 000 r/m ---
    shr ah, 5 ; ----- 000
    shl ah, 3 ; -- 000 ---
    cmp al, 128
    jne skip_two_bytes_commands_1
    cmp ah, 0
    jne skip_two_bytes_commands_1

    skip_two_bytes_commands_1:

RET

end start

