.model small
.stack 100h
.data
endl db 0dh, 0ah, 24h
buff1 db 255, 0, 255 dup (0)
buff2 db 255 * 3 dup('$')
.code
start:
	mov ax, @data
	mov ds, ax
	
	mov ah, 0ah
	mov dx, offset buff1
	int 21h
	
	mov ah, 9
	mov dx, offset endl
	int 21h
	
	mov si, offset buff1 + 2
	mov di, offset buff2
	xor cx, cx
	mov cl, [buff1 + 1]
	
	l:
	mov al, [si]
	shr al, 4
	call convert
	
	mov [di], al
	inc di
	mov al, [si]
	and al, 0fh
	call convert
	mov [di], al
	inc di
	
	mov byte ptr [di], ' '
	inc di
	inc si
	loop l
	
	mov ah, 9
	mov dx, offset buff2
	int 21h
	
	mov ax, 4c00h
	int 21h
	
	convert:
		cmp al, 9
		ja lett
		add al, 48
		ret
	
	lett:
		add al, 55
		ret
	
	end start
	
	