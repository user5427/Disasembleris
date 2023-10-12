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
	
	mov ax, 3d00h
	mov dx, offset fn_in
	int 21h
	
	jc error
	
	mov fd_in, ax
	
	mov ax, 3c00h
	mov dx, offset fn_out
	xor cx, cx
	int 21h
	
	jc error
	
	mov fd_out, ax
	
	mov dx, offset buff
	
	l:
		mov ax, 3f00h
		mov cx, 200h
		mov bx, fd_in
		int 21h
		
		jc error
		
		mov cx, ax
		jcxz end_copy
		
		mov ax, 4000h
		mov bx, fd_out
		int 21h
		
		jc error
		
		call print_progress
		
		jmp l
	
	end_copy:
		mov ax, 3e00h
		mov bx, fd_in
		int 21h
		
		mov ax, 3e00h
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
