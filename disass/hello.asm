; Name:             hello.asm
; Assemble:         tasm.exe hello.asm
; Link:             tlink.exe /t hello.obj
; Run in DOSBox:    hello.com

.MODEL tiny
.CODE
.386                        ; Just to show at what position it has to be
ORG 0100h

start:


    dec ah

   
END start