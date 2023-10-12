.model small
.stack 100h
.data
endl db 0dh, 0ah, 24h
buff db 255, 0, 255 dup(0)
.code
start:
	mov ax, @data
	mov ds, ax
	
	mov ah, 0ah	;skaitymas
	mov dx, offset buff
	int 21h
	
	mov ah, 9;newline rasymas
	mov dx, offset endl
	int 21h
	
	mov bx, offset buff + 2 ;bufferio data adresas -> bx
	xor cx, cx
	mov cl, [buff + 1] ;offset buff + 1; [buff + 1]  offsetas grazina adresa o [] reiksme buff + 1 laiko simboliu kieki
	l:
	mov al, [bx]	;i al irasoma reiksme adresu bx
	cmp al, 'A';tikrinama ar didzioji raide
	jb noth
	cmp al, 'Z'
	ja noth
	add al, 20h
	mov [bx], al
	noth:
	inc bx
	loop l

	mov ah, 40h	;rasymas (naudojamas sitas o ne kitas rasymo kodas kad butu galima spauzdinti dolerio zenklus)
	mov bx, 1	;stdout 
	mov cl, [buff + 1]	;kiek baitu rasyt (simboliu kiekis)
	mov dx, offset buff + 2	;ds:dx offsetas i bufferi kuris bus rasomas i ekrana
	int 21h
	
	mov ax, 4c00h
	int 21h
	
	end start
