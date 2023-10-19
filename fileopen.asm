.model small
.stack 100h
.data
    buff1 db 9 dup(0)
    buff2 db 9 dup(0)
    file1 db 0
    file2 db 0
    buff db 200 dup(0)
    buff0 db 200 dup(0)
    vector dw 0, 0 ; adresai i buff1 ir buff2
    counter db 0
    length0 db 0
    length1 db 0
    sector db 512 dup(0)
.code
start:
    push @data
    pop ds
    mov si, 82h

    mov dx, offset buff0
    mov ds:[offset vector], dx

    mov dx, offset buff1
    mov ds:[offset vector + 1], dx

    mov dx, offset buff2
    mov ds:[offset vector + 2], dx

    mov di, offset buff
    
    xor cx, cx
    mov cl, es:[80h]

    l:

        mov al, es:[si]
        cmp al, 20h ; ar space characteris
        jne jump
        call switch
        jump:
        mov [di], al
        inc si
        inc di

    loop l

    jmp test21

    switch: ; pakeisti i kur raso duomenis

        mov bx, [offset counter]    ;pakeisti i h arba l!
        xor bh, bh
        add bx, offset vector
        push bx
        mov bx, [offset counter]    ;pakeisti i h arba l!
        xor bh, bh

        cmp bx, 0
        ja cont
        push ax
        xor ax, ax
        mov ah, es:[80h]   
        sub ah, cl
        add ah, 1
        mov ds:[offset length0], ah
        pop ax 
        cont:
        inc bx
        mov di, offset counter
        mov [di], bx
        pop di

    ret

    test21:

       ; mov ah, 9
        ;mov dx, offset buff
        ;int 21h

        mov ax, 4000h;rasymas i stdout
	    mov bx, 1
	    mov dx, offset buff
        xor cx, cx
        mov cl, ds:[offset length0]
        int 21h

        mov ax, 4c00h
        int 21h

end start
