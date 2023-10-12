.model small
.stack 100h
.data
	buff1 db 255, 0, 255 dup(0)
	endl db 0dh, 0ah
	buff2 db 255*3 dup(20h)
	vector db "0123456789ABCDEF"
.code
start:
	push @data
	pop ds
	push @data
	pop es;data segmentas ir extended segmentas rodo i ta pacia vieta
	
	mov ax, 0a00h
	mov dx, offset buff1
	int 21h;simboliu eiles skaitymas
	
	mov di, offset buff2
	mov si, offset buff1 + 2;di ir si inicializacija
	xor cx, cx
	mov cl, [buff1 + 1];;countery ivestu simboliu kiekis
	jcxz exit;;jei 0 uzdaro programa
	mov bx, offset vector
	l:
		mov al, [si]
		shr al, 4
		xlat
		mov [di], al
		inc di
		lods byte ptr ds:[si]
		;mov al, [si]
		and al, 0fh
		xlat
		stos byte ptr es:[si]
		;mov [di], al
		;add di, 2
		inc di
	loop l
	
	exit:
		mov byte ptr [di], 24h 
		mov ah, 9
		mov dx, offset endl
		int 21h
		mov ax, 4c00h
		int 21h
	
end start