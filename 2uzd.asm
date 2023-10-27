.model small
.stack 100h
.data
    col_sp db ": "
    spac db " "
    endl db 0dh, 0ah, 24h
    words dw 0
    file_name db 12 dup(0)
    file dw 0
    symbol dw  0
    upper_case dw 0
    lower_case dw 0
    counter db 0
    sector db 512 dup(0)
.code
start:
    push @data
    pop ds

    mov si, es:82h
    xor cx, cx
    mov cl, es:[80h]
    dec cl
    push bx
    xor bx, bx
    mov bx, offset counter
    mov [bx], cl
    pop bx
    mov di, offset file_name
    l:

        mov al, es:[si]
        cmp al, 20h ; ar space characteris
        jne jump
        call switch

        push bx
        mov bx, offset symbol
        cmp [bx], 0
        je cont
        push ax
        mov ax, [bx]
        inc ax
        mov [bx], ax
        pop ax

        cont:

            push ax
            mov ax, 4000h
            push bx
            mov bx, 1
            push cx
            xor cx, cx
            mov cl, 12
            push dx
            mov dx, offset file_name
            int 21h

            mov cl, 2
            mov dx, offset col_sp
            int 21h

            ;;todo rasyma ir skaiciaus konvertavima



        push cx
        mov cx, 12
        mov si, offset file_name
        null:
            mov si, 0
            inc si
        loop null
        pop cx
        mov si, offset file_name
        jump:
        mov [di], al
        inc si
        inc di

    loop l


    mov ax, 4c01h
    int 21h

    switch:
        push ax
        push bx
        push cx
        push dx
            mov ax, 3d00h 
            mov dx, offset file_name
            xor cx, cx
            int 21h

        jc error

        mov file, ax

        loop1:

            mov ax, 3f00h
            mov bx, file
            mov cx, 200h
            mov dx, offset sector

            push cx
            mov cx, ax
            jcxz enda
            push si
            mov si, offset sector
            loop2:
                mov bl, [si]
                cmp bl, 20h
                ja not_space
                push bx
                mov bx, offset words
                mov ax, [bx]
                inc ax
                mov [bx], ax
                pop bx

                not_space:
                jb continue
                cmp bl, 7fh
                je continue
                push bx
                xor bx, bx
                mov bx, offset symbol
                mov ax, [bx]
                inc ax
                mov [bx], ax
                pop bx

                cmp bl, 41h
                jb continue
                cmp bl, 5ah
                ja lower
                push bx
                mov bx, offset upper_case
                mov ax, [bx]
                inc ax
                mov [bx], ax
                pop bx

                lower:
                    cmp bl, 61h
                    jb continue
                    cmp bl, 7ah
                    ja continue
                    push bx
                    mov bx, offset lower_case
                    mov ax, [bx]
                    inc ax
                    mov [bx], ax
                    pop bx
                continue:
            loop loop2

            pop si
            pop cx

        jmp loop1
        


    enda:

        pop dx
        pop cx
        pop bx
        pop ax
        ret    

    error:

   
end start