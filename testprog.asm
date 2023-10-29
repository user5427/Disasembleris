.386
                                               ; Requirements implemented
CODE SEGMENT USE16                             ; 4. 
    ORG 100h                                   ; 1. 

    ASSUME  CS:CODE,DS:CODE,ES:CODE,SS:CODE    ; 4. 

BEG: MOV    DX,OFFSET MSG                      ; 2.
    MOV     AH,9
    INT     21H

    MOV     AX,4C00H ; exit the program
    INT     21H     

MSG DB 'HelloWorld!$'                          ; 4. 5.

CODE ENDS

    END     BEG                                ; 3.