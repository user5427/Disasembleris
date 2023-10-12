.model small
.stack 100h
.data
	x db 170	;skaicius kuri paversim i hex
	buff db 2 dup(0), 24h	;outputo bufferis
.code
start:

	mov ax, @data
	mov ds, ax	;data segmento init
	mov cx, 2	;1 baite esanti skaiciu konvertavus i hex uzims max 2 simbolius
	mov di, 1	;destination index init
	mov al, x	;skaiciaus laikymas (Xh&Xl 1B Xx 2B)
	l1:
		mov ah, al	
		and ah, 15	;paimami paskutiniai 4 bitai
		cmp ah, 10	;jei >10 tada skaiciu reikia paversti i simboli kitu atveju lieka skaicius
		jge hex
		add ah, 48	;hex 0 
		mov (buff+di), ah; i outputa irasomas skaicius
		dec di	;pakeiciama rasymo pozicija
		shr al, 4	;is al panaikinami paskutiniai 4 bitai
	loop l1
	jmp fin
	hex:; 10 arba daugiau
		add ah, 55	;pridejus 10 gaunasi ascii A
		mov(buff+di), ah	;irasoma raide
		dec di;taspats kas virsuje tik reikia paciam patikrinti ar iseiti is loop ir sumazinti counteri
		shr al, 4
		dec cx
		cmp cx, 0
		je fin
		jmp l1
	fin:
		mov ah, 9	;rasymas ir programos uzdarymas
		mov dx, offset buff
		int 21h
		mov ax, 4c00h
		int 21h
	
end start
