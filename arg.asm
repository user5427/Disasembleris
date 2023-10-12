.model small
.stack 100h
.data
	buff db 127 dup(0)
.code
start:
	push @data
	pop ds	;;duomenu segmento init
	mov si, 81h	;cia laikomi commandline argumentai
	mov di, offset buff
	xor cx, cx
	mov cl, es:[80h] ;offsetu 80 laikomas argumento simboliu kiekis
	l:
		mov al, es:[si] ;i al irasomas C-L simbolis
		mov [di], al; simbolis irasomas i bufferi
		inc si
		inc di
	loop l
	mov ax, 4000h;rasymas i stdout
	mov bx, 1
	mov dx, offset buff
	xor cx, cx
	mov cl, es:[80h]
	int 21h
	
	mov ax, 4c00h
	int 21h
	
end start
		
