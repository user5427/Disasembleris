.model small
.stack 100h
.data
	buff db 127 dup(0)
.code
start:
	push @data
	pop ds
	mov si, 81h
	mov di, offset buff
	xor cx, cx
	mov cl, es:[80h]
	l:
		mov al, es:[si] 
		mov [di], al
		inc si
		inc di
	loop l
	mov ax, 4000h
	mov bx, 1
	mov dx, offset buff
	xor cx, cx
	mov cl, es:[80h]
	int 21h
	
	mov ax, 4c00h
	int 21h
	
end start
		