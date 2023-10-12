.model small 	; 1 kodo segmentas 1 duomenu segmentas 1 stacko segmentas
.stack 100h		;stacko dydis
.data			;duomenu segmento pradzia
	x db 50		;x define byte 50  (x=50)
	buff db 8 dup (0) , 24h	;buffer define byte 8 * duplicate 0, $
.code			;kodo segmentas
start:			;main
	mov ax, @data	;default data group to ax
	mov ds, ax		;data group to data segment
	mov cx, 8		;counter set to 8
	mov di, 7		;laikomas 7 di (offsetas)
	mov al, x		;i al irasomas x
	l1:				;loopo pradzia
		mov ah, al	;i ah irasomas x
		and ah, 1	;is x gaunamas maziausias bitas
		add ah, 48	;pridedamas ascii 0
		mov (buff+di), ah	;i bufferi su offsettu di irasomas bitas
		dec di		;pakeiciamas offsetas
		shr al, 1	;shiftinamas x
	loop l1			;loopinama iki tol kol cx 0
	mov ah, 9		;dos print string su int 21
	mov dx, offset buff	;i dx irasomas buff (is duomenu segmentas gaunamas buff ofsetas nuo ds pradzios)
	int 21h				;printinamas dx
	mov ax, 4c00h		;iseiti su exit code(ah) al - exit code'as
	int 21h			;callinti dos 
end start			;start pabaiga