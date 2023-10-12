.model small
.stack 100h

.data
    msg    db      "Hello, World!", 0Dh,0Ah, 24h

.code

start:
    mov dx, @data                   ; perkelti data i registra ax
    mov ds, dx                      ; perkelti dx (data) i data segmenta

    mov     ah, 09h
    mov     dx, offset msg
    int     21h

    mov ah, 4ch             ; griztame i dos'a
    mov al, 0               ; be klaidu
    int 21h                 ; dos'o INTeruptas
end start

