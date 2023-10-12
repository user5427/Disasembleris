.model small
.stack 100h
.data
endl db 0dh, 0ah, 24h
buff db 255, 0, 255 dup(0)
.code
start:
	mov ax, @data
	mov ds, ax
	
	mov ah, 0ah
	mov dx, offset buff
	int 21h
	
	mov ah, 9
	mov dx, offset endl
	int 21h
	
	mov bx, offset buff + 2
	xor cx, cx
	mov cl, [buff + 1] ;offset buff + 1; [buff + 1]  offsetas grazina adresa o [] reiksme
	l:
	mov al, [bx]
	cmp al, 'A'
	jb noth
	cmp al, 'Z'
	ja noth
	add al, 20h
	mov [bx], al
	noth:
	inc bx
	loop l

	mov ah, 40h
	mov bx, 1
	mov cl, [buff + 1]
	mov dx, offset buff + 2
	int 21h
	
	mov ax, 4c00h
	int 21h
	
	end start