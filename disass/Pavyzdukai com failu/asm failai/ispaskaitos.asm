.model tiny
.code
org 100h
start:
    mov ah, 8
    mov dx, offset buff
    int 21h

    mov ax, 4c00h
    int 21h

    buff db "Hello$"

end start

; tasm ispaskaitos.com
; tlink /t ispaskaitos