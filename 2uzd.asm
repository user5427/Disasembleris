.model small
.stack 100h
.data
    col_sp db ": "
    spac db 20h, 24h
    endl db 0dh, 0ah, 24h
    words dw 0
    file_name db 12 dup(0)
    file dw 0
    symbol dw  0
    upper_case dw  0
    lower_case dw  0
    counter db 0
    sector db 512 dup(0)
    number db 0, 0, 0, 0, 0, 24h   ; gal cia problema?
    ten dw 000ah
.code
start:
;breakina ant 2560
    push @data  ;s: data
    pop ds      ;s: 0
    mov si, 82h
    xor cx, cx
    mov cl, es:[80h]
    dec cl
    push bx     ;s: bx
    xor bx, bx
    mov bx, offset counter
    mov [bx], cl
    pop bx      ;s 0
    mov di, offset file_name
    l:

        mov al, es:[si]
        cmp al, 20h ; ar space characteris
        je testi
        cmp cl, 0
        je testi
        jmp jump
        testi:
        call switch ;;; infinite loopas galimai cia (yup hopefully sufixintas)

        mov ax, 4000h
        mov bx, 1
        push cx ;s: cx (simb kiekis)
        xor cx, cx
        mov cl, 12
        mov dx, offset file_name
        int 21h
        mov ax, 4000h
        mov cl, 2
        mov dx, offset col_sp
        int 21h

        mov ax, 0
        mov ah, 9
        push ax ;s: ax cx
        mov ax, symbol  ;vienu per didelis
        call to_num
        pop ax  ;s: cx (simb kiekis)
        mov dx, offset number
        int 21h
        mov ax, 0900h
        mov dx, offset spac
        int 21h

        push di
        push ax
        xor ax, ax
        mov al, 0
        mov di, offset number
        add di, 3
        mov [di], al
        dec di
        mov[di], al
        dec di
        mov[di], al
        dec di
        mov[di], al
        pop di
        pop ax

        mov ah, 9
        push ax ;s: ax cx
        mov ax, words
        call to_num
        pop ax  ;s: cx (simb kiekis)
        mov dx, offset number
        int 21h
        mov ax, 0900h
        mov dx, offset spac
        int 21h

        push di
        push ax
        xor ax, ax
        mov al, 0
        mov di, offset number
        add di, 3
        mov [di], al
        dec di
        mov[di], al
        dec di
        mov[di], al
        dec di
        mov[di], al
        pop di
        pop ax

        mov ax, 0
        mov ah, 9
        push ax ;s: ax cx
        mov ax, upper_case
        call to_num
        pop ax  ;s: cx (simb kiekis)
        mov dx, offset number
        int 21h
        mov ax, 0900h
        mov dx, offset spac
        int 21h

        push di
        push ax
        xor ax, ax
        mov al, 0
        mov di, offset number
        add di, 3
        mov [di], al
        dec di
        mov[di], al
        dec di
        mov[di], al
        dec di
        mov[di], al
        pop di
        pop ax

        mov ax, 0
        mov ah, 9
        push ax ;s: ax cx
        mov ax, lower_case
        call to_num
        pop ax  ;s: cx (simb kiekis)
        mov dx, offset number
        int 21h

        push di
        push ax
        xor ax, ax
        mov al, 0
        mov di, offset number
        add di, 3
        mov [di], al
        dec di
        mov[di], al
        dec di
        mov[di], al
        dec di
        mov[di], al
        pop di
        pop ax

        mov ax, 0900h
        mov dx, offset spac
        int 21h
        MOV AX, 0900h
        mov dx, offset endl
        int 21h
        mov words, 0
        mov symbol, 0
        mov upper_case, 0
        mov lower_case, 0
        mov cx, 12
        mov si, offset file_name
        null:
            mov si, 0
            inc si
        loop null
        pop cx  ;s: 0
        mov si, offset file_name
        jump:
        mov [di], al
        inc si
        inc di
        cmp cl, 0
        je exit_loop
        dec cl
    jmp l
    exit_loop:

    mov ax, 4c00h
    int 21h

    switch:
        push ax ;s: ax
        push bx ;s: bx ax
        push cx ;s: cx bx ax
        push dx ;s: dx cx bx ax
        mov ax, 3d00h 
        mov dx, offset file_name
        xor cx, cx
        int 21h

        jnc tesimas
        jmp error
        tesimas:

        mov [file], ax

        loop1:
            push cx ;s: cx dx cx bx ax  ;kam as ji pushinu?
            mov ax, 3f00h
            mov bx, file
            mov cx, 200h
            mov dx, offset sector
            int 21h
            mov cx, ax
            jcxz enda   ;good jumpas
            push si ;s: si cx dx cx bx ax
            mov si, offset sector
           
            loop2:
                push ax ;s:ax si cx dx cx bx ax
                mov bl, [si]
                cmp bl, 20h
                ja not_space    ;good jumpas
                push bx ;s: bx ax si cx dx cx bx ax
                mov bx, offset words
                inc bx
                mov ax, [bx]
                inc ax
                mov [bx], ax
                pop bx  ;s: ax si cx dx cx bx ax

                not_space:
                cmp bl, 20h     ;
                jb continue     ;
                cmp bl, 7fh     ;tikrina ar simbolis
                je continue     ;
                push bx ;s: bx ax si cx dx cx bx ax
                xor bx, bx
                mov bx, offset symbol
                inc bx
                mov ax, [bx]
                inc ax
                jno not_overflown
                dec bx
                mov ax, [bx]
                inc bx
                xor ax, ax
                not_overflown:
                mov [bx], ax
                not_overflown
                mov [bx], ax
                pop bx  ;s: ax si cx dx cx bx ax
                cmp bl, 41h
                jb continue ;toks pat stack kaip kituose continue jumpuose virsuje
                cmp bl, 5ah
                ja lower
                push bx ;s: bx ax si cx dx cx bx ax
                mov bx, offset upper_case
                inc bx
                mov ax, [bx]
                inc ax
                mov [bx], ax
                pop bx  ;s: ax si cx dx cx bx ax
                jmp continue
                lower:
                    cmp bl, 61h
                    jb continue
                    cmp bl, 7ah
                    ja continue
                    push bx ; s: bx ax si cx dx cx bx ax
                    mov bx, offset lower_case
                    inc bx
                    mov ax, [bx]
                    inc ax
                    mov [bx], ax
                    pop bx  ;s: ax si cx dx cx bx ax
                continue:
                inc si
                pop ax  ;s: si cx dx cx bx ax
                dec ax
                cmp ax, 0
                je break

            jmp loop2
            break:
            pop si  ;s: cx dx cx bx ax
            pop cx  ;s: dx cx bx ax

        jmp loop1
        
    pop dx  ;s: cx bx ax
    pop cx  ;s: bx ax
    pop bx  ;s: ax
    pop ax  ;s: 0
    ret  
    error:

        mov ax, 4c01h
        int 21h
    enda:
        pop cx  ;s: dx cx bx ax
        pop dx  ;s: cx bx ax
        pop cx  ;s: bx ax
        pop bx  ;s: ax
        pop ax  ;s: 0
        ret    

    


    to_num:
        ;ax laiko skaiciu
        push bx ;s: bx
        push cx ;s: cx bx
        push dx ;s: dx cx bx
        push di ;s: di dx cx bx 
        mov di, offset number
        add di, 4
        loopas:
            xor dx, dx
            mov cx, 0ah
            div cx
            add dl, 30h
            ;mov cl, dl
            mov [di], dl
            dec di

        cmp ax, 0
        jne loopas

        pop di  ;s: dx cx bx
        pop dx  ;s: cx bx
        pop cx  ;s: bx
        pop bx  ;s: 0

        ret
end start