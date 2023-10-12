.model small
.stack 100h
.data
endl db 0dh, 0ah, 24h
input db 255, 0, 255 dup(0)
output db 255*4 dup(0)
letter db 0
.code

start:
	mov ax, @data
	mov ds, ax;;duomenu segmento init
	
	mov ah, 0ah
	mov dx, offset input
	int 21h	;; skaitymas
	
	mov ah, 9
	mov dx, offset endl
	int 21h	;;new line printinimas
	
	mov si, offset input + 2
	mov di, offset letter	;;source ir destination index'u init
	mov al, [si]
	mov [di], al
	mov di, offset output
	inc si
	
	xor cx, cx
	mov cl, [input + 1]
	dec cl
	
	l:
		
		mov al, [si]
		mov dl, [letter]
		cmp al, dl 
		jne skip
		
		mov ah, [input + 1]
		sub ah, cl
		
		call skaicius
		
		mov byte ptr [di], ' '
		inc di
		skip:
			inc si
	
	loop l
	
	mov ah, 24h
	mov [di], ah
	mov ah, 9
	mov dx, offset output
	int 21h
	
	mov ax, 4c00h
	int 21h
	
	jmp fin
	
	skaicius:
	xor dx, dx
	
	;mov dl, ah;
	cmp ah, 10
	jb skaitmuo
	inc ch
	cmp ah, 100
	jb dvig
	inc ch
	trig:
	
	cmp ah,100
	jb dvig
	sub ah, 100
	inc dh
	jmp trig
	
	dvig:
	
	cmp ah,10
	jb skaitmuo
	sub ah, 10
	inc dl
	jmp dvig
	
	
	skaitmuo:
	
	cmp ch, 1
	ja tr
	je dv
	jb vi
	
	tr:
	add dh, 30h
	mov[di], dh
	inc di
	
	dv:
	add dl, 30h
	mov[di], dl
	inc di
	
	vi:
	add ah, 30h
	mov [di], ah
	inc di
	
	xor dx, dx
	mov ch, 0
	ret
	
	fin:
	
	end start