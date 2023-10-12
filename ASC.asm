.model small
.stack 100h
.data
endl db 0dh, 0ah, 24h 
buff1 db 255, 0, 255 dup (0)
buff2 db 255 * 3 dup('$')
.code
start:
	mov ax, @data
	mov ds, ax	;ds init
	
	mov ah, 0ah	;skaitymas
	mov dx, offset buff1
	int 21h
	
	mov ah, 9	;rasymas
	mov dx, offset endl
	int 21h
	
	mov si, offset buff1 + 2	;source index nustatomas i nuskaityta stringa
	mov di, offset buff2	;destination index -> buff2
	xor cx, cx
	mov cl, [buff1 + 1]	;counterio init
	
	l:
	mov al, [si]	;irasomas nuskaitytas simbolis
	shr al, 4	;panaikinami paskutiniai 4 bitai
	call convert	;funkcijos iskvietimas
	
	mov [di], al	;i outputa irasomas hex
	inc di	;indexo padidinimas
	mov al, [si]	;vel irasoma nuskaitytas simbolis
	and al, 0fh	;paimami paskutiniai 4 bitai
	call convert	;funkcijos iskvietimas
	mov [di], al	;i outputa irasomas hex
	inc di	;ofsetto inc
	
	mov byte ptr [di], ' '	;pridedamas tarpas po skaiciaus
	inc di
	inc si
	loop l
	
	mov ah, 9	;outputo rasymas
	mov dx, offset buff2
	int 21h
	
	mov ax, 4c00h
	int 21h
	
	convert:
		cmp al, 9	; jei daugiau tada reikia paversti i hex
		ja lett
		add al, 48	;pridedamas ascii 0
		ret
	
	lett:
		add al, 55	;pridejus 10(a hex) gaunama a
		ret
	
	end start
	
	
