.model small
.stack 100h
.data
	x db 170
	buff db 2 dup(0), 24h
.code
start:


	mov ax, @data
	mov ds, ax
	mov cx, 2
	mov di, 1
	mov al, x
	l1:
		mov ah, al
		and ah, 15
		cmp ah, 10
		jge hex
		add ah, 48
		mov (buff+di), ah
		dec di
		shr al, 4
	loop l1
	jmp fin
	hex:; 10 arba daugiau
		add ah, 55	;pridejus 10 gaunasi ascii A
		mov(buff+di), ah
		dec di
		shr al, 4
		dec cx
		cmp cx, 0
		je fin
		jmp l1
	fin:
		mov ah, 9
		mov dx, offset buff
		int 21h
		mov ax, 4c00h
		int 21h
	
end start