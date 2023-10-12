;512B - disko sektorius
;
;
.model small
.stack 100h
.data
	fn_in db "td.exe", 0
	fn_out db "td2.exe", 0
	fd_in dw 0
	fd_out dw 0
	buff db 200h dup(0)
	msg db "Error!$"
.code
start:
	push @data
	pop ds
	
	mov ax, 3d00h; failo atidarymas ds:dx turi laikyti failo pavadinima 
	mov dx, offset fn_in; dx nustatymas kad ds:dx rodytu i failo pavadinima
	int 21h
	
	jc error;jei ivyko klaida carry flag isijungia
	
	mov fd_in, ax; failo handleo irasymas i fd_in
	
	mov ax, 3c00h	;failo sukurimas
	mov dx, offset fn_out;pavadinimas failo
	xor cx, cx
	int 21h
	
	jc error	;tas pats kaip virsuj
	
	mov fd_out, ax
	
	mov dx, offset buff
	
	l:
		mov ax, 3f00h;skaitymas is failo
		mov cx, 200h	;kiek skaityti
		mov bx, fd_in;is kur
		int 21h
		
		jc error
		
		mov cx, ax	; kiek nuskaityta simboliu
		jcxz end_copy
		
		mov ax, 4000h; rasymas i faila
		mov bx, fd_out;i kuri
		int 21h
		
		jc error
		
		call print_progress; funkcijos iskvietimas
		
		jmp l;cx jau naudojamas tai loop nera prasmes naudot
	
	end_copy:
		mov ax, 3e00h; failo uzdarymas
		mov bx, fd_in
		int 21h
		
		mov ax, 3e00h;same bizz
		mov bx, fd_out
		int 21h
		
		mov ax, 4c00h
		int 21h
		
	error:
		mov ah, 9
		mov dx, offset msg
		int 21h
		
		mov ax, 4c01h
		int 21h
		
	print_progress:
		push dx
		mov ah, 2
		mov dl, '.';
		int 21h
		
		pop dx
		
		ret
end start
