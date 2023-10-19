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
	pop es;data segmentas ir extended segmentas rodo i ta pacia vieta atmintyje
	
	mov ax, 0a00h
	mov dx, offset buff1
	int 21h;simboliu eiles skaitymas
	
	mov di, offset buff2
	mov si, offset buff1 + 2;di ir si inicializacija
	xor cx, cx ; nunulinimas
	mov cl, [buff1 + 1];;countery ivestu simboliu kiekis
	jcxz exit;;jei 0 uzdaro programa
	mov bx, offset vector
	l:
		mov al, [si]; i al nuskaitytas simbolis
		shr al, 4	;paliekami didesnioji bitu puse
		xlat	;basically ka sitas daro tai pasiima is al skaiciu ir ji naudoja kaip offesta prie adreso kuris yra bx ir i al iraso kas yra adrese dx+al
		mov [di], al	;irasoma raide
		inc di
		lods byte ptr ds:[si]; basically lods i al iraso bytea kuris yra adrese si
		and al, 0fh; paima 4 mazesniuosiu bitus
		xlat
		stos byte ptr es:[si]; al iraso i di stos ir lods auto incrementina indexa, kaip loop cx decrementina
		inc di	;bufferi tik tarpai tai praleidziama viena vieta
	loop l
	
	exit:
		mov byte ptr [di], 24h ;dolerio zenklas
		mov ah, 9	; rasymas ir exit
		mov dx, offset endl
		int 21h
		mov ax, 4c00h
		int 21h
	
end start
