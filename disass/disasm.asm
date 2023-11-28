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

    loop_bytes:                ; do this until the end of file
    
    call read_bytes            ; returns byte to byte_ from buffer
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
    
    mov al, byte_ ; 0000 00dw mod reg r/m [poslinkis] – ADD registras += registras/atmintis
    shr al, 2 ;  0000 00dw -> --00 0000
    cmp al, 0 
    jne not_1 

    not_1:

    mov al, byte_ ; 0000 010w bojb [bovb] – ADD akumuliatorius += betarpiškas operandas
    shr al, 1 ; 0000 010w -> -000 0010
    shl al, 1 ; 000 0010 -> 0000 010-
    cmp al, 4 
    jne not_2 

    not_2:

    mov al, byte_ ; 000sr 110 – PUSH segmento registras 
    shr al, 5 ; 000sr 110 -> 0000 0000   00sr 0110
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
    shr al, 2 ; 0000 10dw -> 0000 0010
    shl al, 2 ; 0000 0010 -> 0000 1000
    cmp al, 8
    jne not_5

    not_5:

    mov al, byte_ ; 0000 110w bojb [bovb] – OR akumuliatorius V betarpiškas operandas
    shr al, 1 ; 0000 110w -> 0000 0110
    shl al, 1 ; 0000 0110 -> 0000 1100
    cmp al, 12
    jne not_6

    not_6:

    mov al, byte_ ; 0001 00dw mod reg r/m [poslinkis] – ADC registras += registras/axtmintis
    shr al, 2 ; 0001 00dw -> 0000 0100
    shl al, 2 ; 0000 0100 -> 0001 0000
    cmp al, 16
    jne not_7

    not_7:

    mov al, byte_ ; 0001 010w bojb [bovb] – ADC akumuliatorius += betarpiškas operandas
    shr al, 1 ; 0001 010w -> 0000 1010
    shl al, 1 ; 0000 1010 -> 0001 0100
    cmp al, 20
    jne not_8

    not_8:

    mov al, byte_ ; 0001 10dw mod reg r/m [poslinkis] – SBB registras -= registras/atmintis

    mov al, byte_ ; 0001 110w bojb [bovb] – SBB akumuliatorius -= betarpiškas operandas

    mov al, byte_ ; 0010 00dw mod reg r/m [poslinkis] – AND registras & registras/atmintis

    mov al, byte_ ; 0010 010w bojb [bovb] – AND akumuliatorius & betarpiškas operandas

    mov al, byte_ ; 001sr 110 – segmento registro keitimo prefiksas

    mov al, byte_ ; 0010 0111 – DAA

    mov al, byte_ ; 0010 10dw mod reg r/m [poslinkis] – SUB registras -= registras/atmintis

    mov al, byte_ ; 0010 110w bojb [bovb] – SUB akumuliatorius -= betarpiškas operandas

    mov al, byte_ ; 0010 1111 – DAS

    mov al, byte_ ; 0011 00dw mod reg r/m [poslinkis] – XOR registras | registras/atmintis

    mov al, byte_ ; 0011 010w bojb [bovb] – XOR akumuliatorius | betarpiškas operandas

    mov al, byte_ ; 0011 0111 – AAA

    mov al, byte_ ; 0011 10dw mod reg r/m [poslinkis] – CMP registras ~ registras/atmintis

    mov al, byte_ ; 0011 110w bojb [bovb] – CMP akumuliatorius ~ betarpiškas operandas

    mov al, byte_ ; 0011 1111 – AAS

    mov al, byte_ ; 0100 0reg – INC registras (žodinis)

    mov al, byte_ ; 0100 1reg – DEC registras (žodinis)

    mov al, byte_ ; 0101 0reg – PUSH registras (žodinis)

    mov al, byte_ ; 0101 1reg – POP registras (žodinis)

    mov al, byte_ ; 0111 0000 poslinkis – JO žymė

    mov al, byte_ ; 0111 0001 poslinkis – JNO žymė

    mov al, byte_ ; 0111 0010 poslinkis – JNAE žymė; JB žymė; JC žymė

    mov al, byte_ ; 0111 0011 poslinkis – JAE žymė; JNB žymė; JNC žymė
    
    mov al, byte_ ; 0111 0100 poslinkis – JE žymė; JZ žymė

    mov al, byte_ ; 0111 0101 poslinkis – JNE žymė; JNZ žymė

    mov al, byte_ ; 0111 0110 poslinkis – JBE žymė; JNA žymė

    mov al, byte_ ; 0111 0111 poslinkis – JA žymė; JNBE žymė

    mov al, byte_ ; 0111 1000 poslinkis – JS žymė

    mov al, byte_ ; 0111 1001 poslinkis – JNS žymė

    mov al, byte_ ; 0111 1010 poslinkis – JP žymė; JPE žymė

    mov al, byte_ ; 0111 1011 poslinkis – JNP žymė; JPO žymė

    mov al, byte_ ; 0111 1100 poslinkis – JL žymė; JNGE žymė

    mov al, byte_ ; 0111 1101 poslinkis – JGE žymė; JNL žymė

    mov al, byte_ ; 0111 1110 poslinkis – JLE žymė; JNG žymė

    mov al, byte_ ; 0111 1111 poslinkis – JG žymė; JNLE žymė

    mov al, byte_ ; 1000 010w mod reg r/m [poslinkis] – TEST registras ? registras/atmintis
    
    mov al, byte_ ; 1000 011w mod reg r/m [poslinkis] – XCHG registras <> registras/atmintis

    mov al, byte_ ; 1000 10dw mod reg r/m [poslinkis] – MOV registras <> registras/atmintis

    mov al, byte_ ; 1000 1101 mod reg r/m [poslinkis] – LEA registras < atmintis

    mov al, byte_ ; 1001 0000 – NOP; XCHG ax, ax

    mov al, byte_ ; 1001 0reg – XCHG registras <> ax

    mov al, byte_ ; 1001 1000 – CBW

    mov al, byte_ ; 1001 1001 – CWD

    mov al, byte_ ; 1001 1010 ajb avb srjb srvb – CALL žymė (išorinis tiesioginis)

    mov al, byte_ ; 1001 1011 – WAIT

    mov al, byte_ ; 1001 1100 – PUSHF

    mov al, byte_ ; 1001 1101 – POPF

    mov al, byte_ ; 1001 1110 – SAHF

    mov al, byte_ ; 1001 1111 – LAHF

    mov al, byte_ ; 1010 000w ajb avb – MOV akumuliatorius < atmintis

    mov al, byte_ ; 1010 001w ajb avb – MOV atmintis < akumuliatorius

    mov al, byte_ ; 1010 010w – MOVSB; MOVSW

    mov al, byte_ ; 1010 011w – CMPSB; CMPSW
    
    mov al, byte_ ; 1010 100w bojb [bovb] – TEST akumuliatorius ? betarpiškas operandas

    mov al, byte_ ; 1010 101w – STOSB; STOSW

    mov al, byte_ ; 1010 110w – LODSB; LODSW

    mov al, byte_ ; 1010 111w – SCASB; SCASW

    mov al, byte_ ; 1011 wreg bojb [bovb] – MOV registras < betarpiškas operandas

    mov al, byte_ ; 1100 0010 bojb bovb – RET betarpiškas operandas; RETN betarpiškas operandas

    mov al, byte_ ; 1100 0011 – RET; RETN

    mov al, byte_ ; 1100 0100 mod reg r/m [poslinkis] – LES registras  atmintis

    mov al, byte_ ; 1100 0101 mod reg r/m [poslinkis] – LDS registras  atmintis

    mov al, byte_ ; 1100 1010 bojb bovb – RETF betarpiškas operandas

    mov al, byte_ ; 1100 1011 – RETF

    mov al, byte_ ; 1100 1100 – INT 3

    mov al, byte_ ; 1100 1101 numeris – INT numeris

    mov al, byte_ ; 1100 1110 – INTO

    mov al, byte_ ; 1100 1111 – IRET

    mov al, byte_ ; 1101 0111 – XLAT

    mov al, byte_ ; 1101 1xxx mod yyy r/m [poslinkis] – ESC komanda, registras/atmintis

    mov al, byte_ ; 1110 0000 poslinkis – LOOPNE žymė; LOOPNZ žymė

    mov al, byte_ ; 1110 0001 poslinkis – LOOPE žymė; LOOPZ žymė

    mov al, byte_ ; 1110 0010 poslinkis – LOOP žymė

    mov al, byte_ ; 1110 0011 poslinkis – JCXZ žymė

    mov al, byte_ ; 1110 010w portas – IN akumuliatorius  portas

    mov al, byte_ ; 1110 011w portas – OUT akumuliatorius  portas

    mov al, byte_ ; 1110 1000 pjb pvb – CALL žymė (vidinis tiesioginis)

    mov al, byte_ ; 1110 1001 pjb pvb – JMP žymė (vidinis tiesioginis)

    mov al, byte_ ; 1110 1010 ajb avb srjb srvb – JMP žymė (išorinis tiesioginis)

    mov al, byte_ ; 1110 1011 poslinkis – JMP žymė (vidinis artimas)

    mov al, byte_ ; 1110 110w – IN akumuliatorius  dx portas

    mov al, byte_ ; 1110 111w – OUT akumuliatorius  dx portas

    mov al, byte_ ; 1111 0000 – LOCK

    mov al, byte_ ; 1111 0010 – REPNZ; REPNE

    mov al, byte_ ; 1111 0011 – REP; REPZ; REPE

    mov al, byte_ ; 1111 0100 – HLT

    mov al, byte_ ; 1111 0101 – CMC

    mov al, byte_ ; 1111 1000 – CLC

    mov al, byte_ ; 1111 1001 – STC
    
    mov al, byte_ ; 1111 1010 – CLI

    mov al, byte_ ; 1111 1011 – STI
    
    mov al, byte_ ; 1111 1100 – CLD

    mov al, byte_ ; 1111 1101 – STD

    cmp next_byte_available, 1
    jne skip_two_bytes_commands
    call check_double_byte_commands
    skip_two_bytes_commands:
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

