0100h : E84B00              CALL        CALL 336
0103h : E85B00              CALL        CALL 355
0106h : E8A900              CALL        CALL 436
0109h : 803E2B2E01          CMP         CMP [2B2Eh],  1
010Eh : 740B                JE          JE 0Bh
0110h : 90                  NOP         NOP
0111h : 90                  NOP         NOP
0112h : E8C900              CALL        CALL 480
0115h : E8DB00              CALL        CALL 501
0118h : E80F00              CALL        CALL 300
011Bh : B8004C              MOV         MOV AX, 19456
011Eh : CD21                INT         INT 21h
0120h : C606FE2F00          MOV         MOV [FE2Fh], 0
0125h : 90                  NOP         NOP
0126h : C3                  RET         RET
0127h : 50                  PUSH        PUSH AX
0128h : 58                  POP         POP AX
0129h : C3                  RET         RET
012Ah : E8E900              CALL        CALL 536
012Dh : 803EFE2F00          CMP         CMP [FE2Fh],  0
0132h : 7407                JE          JE 07h
0134h : 90                  NOP         NOP
0135h : 90                  NOP         NOP
0136h : E8EF0A              CALL        CALL 3114
0139h : EBF2                JMP         JMP F2h
013Bh : E82202              CALL        CALL 866
013Eh : C3                  RET         RET
013Fh : 33C0                XOR         XOR AX, AX
0141h : B409                MOV         MOV AH, 9
0143h : BA662D              MOV         MOV DX, 11622
0146h : CD21                INT         INT 21h
0148h : B8014C              MOV         MOV AX, 19457
014Bh : CD21                INT         INT 21h
014Dh : C3                  RET         RET
014Eh : 33C9                XOR         XOR CX, CX
0150h : E3ED                JCXZ        JCXZ EDh
0152h : BE8200              MOV         MOV SI, 130
0155h : FEC9                DEC         DEC CL
0157h : BFB82C              MOV         MOV DI, 11448
015Ah : 8805                MOV         MOV [DI], AL
015Ch : 46                  INC         INC SI
015Dh : 47                  INC         INC DI
015Eh : E2FA                LOOP        LOOP FAh
0160h : C3                  RET         RET
0161h : 50                  PUSH        PUSH AX
0162h : 53                  PUSH        PUSH BX
0163h : 51                  PUSH        PUSH CX
0164h : 52                  PUSH        PUSH DX
0165h : 33C9                XOR         XOR CX, CX
0167h : 33C0                XOR         XOR AX, AX
0169h : BEB82C              MOV         MOV SI, 11448
016Ch : BF372D              MOV         MOV DI, 11575
016Fh : B220                MOV         MOV DL, 32
0171h : 3814                CMP         CMP [SI], DL
0173h : 741A                JE          JE 1Ah
0175h : 90                  NOP         NOP
0176h : 90                  NOP         NOP
0177h : B200                MOV         MOV DL, 0
0179h : 3814                CMP         CMP [SI], DL
017Bh : 7430                JE          JE 30h
017Dh : 90                  NOP         NOP
017Eh : 90                  NOP         NOP
017Fh : 8A04                MOV         MOV AL, [SI]
0181h : 8805                MOV         MOV [DI], AL
0183h : 46                  INC         INC SI
0184h : 47                  INC         INC DI
0185h : 41                  INC         INC CX
0186h : 83F90D73            CMP         CMP CX,  29453
018Ah : 22EB90EB            AND         AND DL, [BX+SI+0090h]
018Eh : E046                LOOPNE      LOOPNE 46h
0190h : BF4E2D              MOV         MOV DI, 11598
0193h : 33C9                XOR         XOR CX, CX
0195h : B200                MOV         MOV DL, 0
0197h : 3814                CMP         CMP [SI], DL
0199h : 7412                JE          JE 12h
019Bh : 90                  NOP         NOP
019Ch : 90                  NOP         NOP
019Dh : 8A04                MOV         MOV AL, [SI]
019Fh : 8805                MOV         MOV [DI], AL
01A1h : 46                  INC         INC SI
01A2h : 47                  INC         INC DI
01A3h : 41                  INC         INC CX
01A4h : 83F90D73            CMP         CMP CX,  29453
01A8h : 0490                ADD         ADD AL,  144
01AAh : 90                  NOP         NOP
01ABh : EBE8                JMP         JMP E8h
01ADh : 5A                  POP         POP DX
01AEh : 59                  POP         POP CX
01AFh : 5B                  POP         POP BX
01B0h : 58                  POP         POP AX
01B1h : C3                  RET         RET
01B2h : 50                  PUSH        PUSH AX
01B3h : 53                  PUSH        PUSH BX
01B4h : 51                  PUSH        PUSH CX
01B5h : 52                  PUSH        PUSH DX
01B6h : BE372D              MOV         MOV SI, 11575
01B9h : B25C                MOV         MOV DL, 92
01BBh : 3814                CMP         CMP [SI], DL
01BDh : 751A                JNE         JNE 1Ah
01BFh : 90                  NOP         NOP
01C0h : 90                  NOP         NOP
01C1h : 46                  INC         INC SI
01C2h : B23F                MOV         MOV DL, 63
01C4h : 3814                CMP         CMP [SI], DL
01C6h : 7511                JNE         JNE 11h
01C8h : 90                  NOP         NOP
01C9h : 90                  NOP         NOP
01CAh : 33C0                XOR         XOR AX, AX
01CCh : B409                MOV         MOV AH, 9
01CEh : BA8C2D              MOV         MOV DX, 11660
01D1h : CD21                INT         INT 21h
01D3h : C6062B2E01          MOV         MOV [2B2Eh], 1
01D8h : 90                  NOP         NOP
01D9h : 5A                  POP         POP DX
01DAh : 59                  POP         POP CX
01DBh : 5B                  POP         POP BX
01DCh : 58                  POP         POP AX
01DDh : C3                  RET         RET
01DEh : B8003D              MOV         MOV AX, 15616
01E1h : BA372D              MOV         MOV DX, 11575
01E4h : 33C9                XOR         XOR CX, CX
01E6h : CD21                INT         INT 21h
01E8h : 7305                JAE         JAE 05h
01EAh : 90                  NOP         NOP
01EBh : 90                  NOP         NOP
01ECh : E850FF              CALL        CALL 321
01EFh : A3882D              MOV         MOV [ 11656], AX
01F2h : C3                  RET         RET
01F3h : B8003C              MOV         MOV AX, 15360
01F6h : BA4E2D              MOV         MOV DX, 11598
01F9h : 33C9                XOR         XOR CX, CX
01FBh : CD21                INT         INT 21h
01FDh : 7305                JAE         JAE 05h
01FFh : 90                  NOP         NOP
0200h : 90                  NOP         NOP
0201h : E83BFF              CALL        CALL 321
0204h : A38A2D              MOV         MOV [ 11658], AX
0207h : C3                  RET         RET
0208h : 50                  PUSH        PUSH AX
0209h : 52                  PUSH        PUSH DX
020Ah : 33C0                XOR         XOR AX, AX
020Ch : B409                MOV         MOV AH, 9
020Eh : BA2C2E              MOV         MOV DX, 11820
0211h : CD21                INT         INT 21h
0213h : 5A                  POP         POP DX
0214h : 58                  POP         POP AX
0215h : C3                  RET         RET
0216h : 50                  PUSH        PUSH AX
0217h : 51                  PUSH        PUSH CX
0218h : A0FF2F              MOV         MOV AL, [ 12287]
021Bh : 803EFF2F01          CMP         CMP [FF2Fh],  1
0220h : 750E                JNE         JNE 0Eh
0222h : 90                  NOP         NOP
0223h : 90                  NOP         NOP
0224h : C606FF2F00          MOV         MOV [FF2Fh], 0
0229h : 90                  NOP         NOP
022Ah : B90200              MOV         MOV CX, 2
022Dh : EB04                JMP         JMP 04h
022Fh : 90                  NOP         NOP
0230h : B90100              MOV         MOV CX, 1
0233h : C606FD2F00          MOV         MOV [FD2Fh], 0
0238h : 90                  NOP         NOP
0239h : A0FC2F              MOV         MOV AL, [ 12284]
023Ch : A2FA2F              MOV         MOV [ 12282], AL
023Fh : E81400              CALL        CALL 600
0242h : E2EF                LOOP        LOOP EFh
0244h : 803EFB2F01          CMP         CMP [FB2Fh],  1
0249h : 7408                JE          JE 08h
024Bh : 90                  NOP         NOP
024Ch : 90                  NOP         NOP
024Dh : C606FD2F01          MOV         MOV [FD2Fh], 1
0252h : 90                  NOP         NOP
0253h : 59                  POP         POP CX
0254h : 58                  POP         POP AX
0255h : C3                  RET         RET
0256h : 50                  PUSH        PUSH AX
0257h : 53                  PUSH        PUSH BX
0258h : 51                  PUSH        PUSH CX
0259h : 52                  PUSH        PUSH DX
025Ah : A0FA2E              MOV         MOV AL, [ 12026]
025Dh : 3806F92F            CMP         CMP [F92Fh], AL
0261h : 7211                JNAE        JNAE 11h
0263h : 90                  NOP         NOP
0264h : 90                  NOP         NOP
0265h : C606F92F00          MOV         MOV [F92Fh], 0
026Ah : 90                  NOP         NOP
026Bh : E83300              CALL        CALL 675
026Eh : 880EFA2E            MOV         MOV [FA2Eh], CL
0272h : E319                JCXZ        JCXZ 19h
0274h : BE322E              MOV         MOV SI, 11826
0277h : 33DB                XOR         XOR BX, BX
0279h : 8A1EF92F            MOV         MOV BL, [F92Fh]
027Dh : 8A00                MOV         MOV AL, [BX+SI]
027Fh : A2FC2F              MOV         MOV [ 12284], AL
0282h : FE06F92F            INC         INC [F92Fh]
0286h : FF061B30            INC         INC [1B30h]
028Ah : EB10                JMP         JMP 10h
028Ch : 90                  NOP         NOP
028Dh : E878FF              CALL        CALL 522
0290h : C606FB2F01          MOV         MOV [FB2Fh], 1
0295h : 90                  NOP         NOP
0296h : C606FE2F00          MOV         MOV [FE2Fh], 0
029Bh : 90                  NOP         NOP
029Ch : 5A                  POP         POP DX
029Dh : 59                  POP         POP CX
029Eh : 5B                  POP         POP BX
029Fh : 58                  POP         POP AX
02A0h : C3                  RET         RET
02A1h : BA322E              MOV         MOV DX, 11826
02A4h : B8003F              MOV         MOV AX, 16128
02A7h : 8B1E882D            MOV         MOV BX, [882Dh]
02ABh : B9C800              MOV         MOV CX, 200
02AEh : CD21                INT         INT 21h
02B0h : 7305                JAE         JAE 05h
02B2h : 90                  NOP         NOP
02B3h : 90                  NOP         NOP
02B4h : E888FE              CALL        CALL 321
02B7h : 8BC8                MOV         MOV CX, AX
02B9h : C3                  RET         RET
02BAh : 50                  PUSH        PUSH AX
02BBh : 53                  PUSH        PUSH BX
02BCh : 51                  PUSH        PUSH CX
02BDh : 52                  PUSH        PUSH DX
02BEh : 33C0                XOR         XOR AX, AX
02C0h : A0C32F              MOV         MOV AL, [ 12227]
02C3h : 0206F62F            ADD         ADD AL, [F62Fh]
02C7h : 3CC8                CMP         CMP AL,  200
02C9h : 720B                JNAE        JNAE 0Bh
02CBh : 90                  NOP         NOP
02CCh : 90                  NOP         NOP
02CDh : E82E00              CALL        CALL 768
02D0h : C606C32F00          MOV         MOV [C32Fh], 0
02D5h : 90                  NOP         NOP
02D6h : BEC42F              MOV         MOV SI, 12228
02D9h : BFFB2E              MOV         MOV DI, 12027
02DCh : 33C9                XOR         XOR CX, CX
02DEh : 8A0EF62F            MOV         MOV CL, [F62Fh]
02E2h : 8A04                MOV         MOV AL, [SI]
02E4h : 33DB                XOR         XOR BX, BX
02E6h : 8A1EC32F            MOV         MOV BL, [C32Fh]
02EAh : 8801                MOV         MOV [BX+DI], AL
02ECh : FE06C32F            INC         INC [C32Fh]
02F0h : 46                  INC         INC SI
02F1h : E2EF                LOOP        LOOP EFh
02F3h : C606F62F00          MOV         MOV [F62Fh], 0
02F8h : 90                  NOP         NOP
02F9h : 5A                  POP         POP DX
02FAh : 59                  POP         POP CX
02FBh : 5B                  POP         POP BX
02FCh : 58                  POP         POP AX
02FDh : C3                  RET         RET
02FEh : B80040              MOV         MOV AX, 16384
0301h : 8B1E8A2D            MOV         MOV BX, [8A2Dh]
0305h : 33C9                XOR         XOR CX, CX
0307h : 8A0EC32F            MOV         MOV CL, [C32Fh]
030Bh : BAFB2E              MOV         MOV DX, 12027
030Eh : CD21                INT         INT 21h
0310h : C3                  RET         RET
0311h : 50                  PUSH        PUSH AX
0312h : 53                  PUSH        PUSH BX
0313h : 51                  PUSH        PUSH CX
0314h : 52                  PUSH        PUSH DX
0315h : 8B36F72F            MOV         MOV SI, [F72Fh]
0319h : BFC42F              MOV         MOV DI, 12228
031Ch : 8A04                MOV         MOV AL, [SI]
031Eh : 3C24                CMP         CMP AL,  36
0320h : 7411                JE          JE 11h
0322h : 90                  NOP         NOP
0323h : 90                  NOP         NOP
0324h : 33DB                XOR         XOR BX, BX
0326h : 8A1EF62F            MOV         MOV BL, [F62Fh]
032Ah : 8801                MOV         MOV [BX+DI], AL
032Ch : FE06F62F            INC         INC [F62Fh]
0330h : 46                  INC         INC SI
0331h : EBE9                JMP         JMP E9h
0333h : 5A                  POP         POP DX
0334h : 59                  POP         POP CX
0335h : 5B                  POP         POP BX
0336h : 58                  POP         POP AX
0337h : C3                  RET         RET
0338h : 50                  PUSH        PUSH AX
0339h : 53                  PUSH        PUSH BX
033Ah : 51                  PUSH        PUSH CX
033Bh : 52                  PUSH        PUSH DX
033Ch : BEB62C              MOV         MOV SI, 11446
033Fh : BFC42F              MOV         MOV DI, 12228
0342h : 33DB                XOR         XOR BX, BX
0344h : 8A1EF62F            MOV         MOV BL, [F62Fh]
0348h : B90200              MOV         MOV CX, 2
034Bh : 8A04                MOV         MOV AL, [SI]
034Dh : 8801                MOV         MOV [BX+DI], AL
034Fh : 46                  INC         INC SI
0350h : 47                  INC         INC DI
0351h : E2F8                LOOP        LOOP F8h
0353h : 8006F62F02          ADD         ADD [F62Fh],  2
0358h : E85FFF              CALL        CALL 700
035Bh : 5A                  POP         POP DX
035Ch : 59                  POP         POP CX
035Dh : 5B                  POP         POP BX
035Eh : 58                  POP         POP AX
035Fh : C3                  RET         RET
0360h : 50                  PUSH        PUSH AX
0361h : 53                  PUSH        PUSH BX
0362h : 51                  PUSH        PUSH CX
0363h : 52                  PUSH        PUSH DX
0364h : E8D1FF              CALL        CALL 826
0367h : E894FF              CALL        CALL 768
036Ah : C606C32F00          MOV         MOV [C32Fh], 0
036Fh : 90                  NOP         NOP
0370h : 5A                  POP         POP DX
0371h : 59                  POP         POP CX
0372h : 5B                  POP         POP BX
0373h : 58                  POP         POP AX
0374h : C3                  RET         RET
0375h : BBC42F              MOV         MOV BX, 12228
0378h : 33C0                XOR         XOR AX, AX
037Ah : A0F62F              MOV         MOV AL, [ 12278]
037Dh : 03D8                ADD         ADD BX, AX
037Fh : B020                MOV         MOV AL, 32
0381h : 8807                MOV         MOV [BX], AL
0383h : FE06F62F            INC         INC [F62Fh]
0387h : C3                  RET         RET
0388h : BBC42F              MOV         MOV BX, 12228
038Bh : 33C0                XOR         XOR AX, AX
038Dh : A0F62F              MOV         MOV AL, [ 12278]
0390h : 03D8                ADD         ADD BX, AX
0392h : B05B                MOV         MOV AL, 91
0394h : 8807                MOV         MOV [BX], AL
0396h : FE06F62F            INC         INC [F62Fh]
039Ah : C3                  RET         RET
039Bh : BBC42F              MOV         MOV BX, 12228
039Eh : 33C0                XOR         XOR AX, AX
03A0h : A0F62F              MOV         MOV AL, [ 12278]
03A3h : 03D8                ADD         ADD BX, AX
03A5h : B05D                MOV         MOV AL, 93
03A7h : 8807                MOV         MOV [BX], AL
03A9h : FE06F62F            INC         INC [F62Fh]
03ADh : C3                  RET         RET
03AEh : BBC42F              MOV         MOV BX, 12228
03B1h : 33C0                XOR         XOR AX, AX
03B3h : A0F62F              MOV         MOV AL, [ 12278]
03B6h : 03D8                ADD         ADD BX, AX
03B8h : B02B                MOV         MOV AL, 43
03BAh : 8807                MOV         MOV [BX], AL
03BCh : FE06F62F            INC         INC [F62Fh]
03C0h : C3                  RET         RET
03C1h : BBC42F              MOV         MOV BX, 12228
03C4h : 33C0                XOR         XOR AX, AX
03C6h : A0F62F              MOV         MOV AL, [ 12278]
03C9h : 03D8                ADD         ADD BX, AX
03CBh : B02C                MOV         MOV AL, 44
03CDh : 8807                MOV         MOV [BX], AL
03CFh : FE06F62F            INC         INC [F62Fh]
03D3h : E89FFF              CALL        CALL 887
03D6h : C3                  RET         RET
03D7h : BBC42F              MOV         MOV BX, 12228
03DAh : 33C0                XOR         XOR AX, AX
03DCh : A0F62F              MOV         MOV AL, [ 12278]
03DFh : 03D8                ADD         ADD BX, AX
03E1h : B068                MOV         MOV AL, 104
03E3h : 8807                MOV         MOV [BX], AL
03E5h : FE06F62F            INC         INC [F62Fh]
03E9h : C3                  RET         RET
03EAh : 50                  PUSH        PUSH AX
03EBh : BF0A30              MOV         MOV DI, 12298
03EEh : B000                MOV         MOV AL, 0
03F0h : 8805                MOV         MOV [DI], AL
03F2h : 884501              MOV         MOV [DI+01h], AL
03F5h : 58                  POP         POP AX
03F6h : C3                  RET         RET
03F7h : 50                  PUSH        PUSH AX
03F8h : 53                  PUSH        PUSH BX
03F9h : 51                  PUSH        PUSH CX
03FAh : 52                  PUSH        PUSH DX
03FBh : 8A160F30            MOV         MOV DL, [0F30h]
03FFh : 8ACA                MOV         MOV CL, DL
0401h : C0E904              SHR         SHR CL, 4
0404h : E85800              CALL        CALL 1121
0407h : 8ACA                MOV         MOV CL, DL
0409h : C0E104              SHL         SHL CL, 4
040Ch : C0E904              SHR         SHR CL, 4
040Fh : E84D00              CALL        CALL 1121
0412h : E8C2FF              CALL        CALL 985
0415h : 5A                  POP         POP DX
0416h : 59                  POP         POP CX
0417h : 5B                  POP         POP BX
0418h : 58                  POP         POP AX
0419h : E8CEFF              CALL        CALL 1004
041Ch : C3                  RET         RET
041Dh : 50                  PUSH        PUSH AX
041Eh : 53                  PUSH        PUSH BX
041Fh : 51                  PUSH        PUSH CX
0420h : 52                  PUSH        PUSH DX
0421h : BE0A30              MOV         MOV SI, 12298
0424h : 8A6401              MOV         MOV AH, [SI+01h]
0427h : 8ACC                MOV         MOV CL, AH
0429h : C0E904              SHR         SHR CL, 4
042Ch : E83000              CALL        CALL 1121
042Fh : 8A6401              MOV         MOV AH, [SI+01h]
0432h : 8ACC                MOV         MOV CL, AH
0434h : C0E104              SHL         SHL CL, 4
0437h : C0E904              SHR         SHR CL, 4
043Ah : E82200              CALL        CALL 1121
043Dh : 8A04                MOV         MOV AL, [SI]
043Fh : 8AC8                MOV         MOV CL, AL
0441h : C0E904              SHR         SHR CL, 4
0444h : E81800              CALL        CALL 1121
0447h : 8A04                MOV         MOV AL, [SI]
0449h : 8AC8                MOV         MOV CL, AL
044Bh : C0E104              SHL         SHL CL, 4
044Eh : C0E904              SHR         SHR CL, 4
0451h : E80B00              CALL        CALL 1121
0454h : E880FF              CALL        CALL 985
0457h : 5A                  POP         POP DX
0458h : 59                  POP         POP CX
0459h : 5B                  POP         POP BX
045Ah : 58                  POP         POP AX
045Bh : E88CFF              CALL        CALL 1004
045Eh : C3                  RET         RET
045Fh : 80F909              CMP         CMP CL,  9
0462h : 7608                JBE         JBE 08h
0464h : 90                  NOP         NOP
0465h : 90                  NOP         NOP
0466h : 80C137              ADD         ADD CL,  55
0469h : EB04                JMP         JMP 04h
046Bh : 90                  NOP         NOP
046Ch : 80C130              ADD         ADD CL,  48
046Fh : 32ED                XOR         XOR CH, CH
0471h : 33DB                XOR         XOR BX, BX
0473h : BBC42F              MOV         MOV BX, 12228
0476h : 33C0                XOR         XOR AX, AX
0478h : A0F62F              MOV         MOV AL, [ 12278]
047Bh : 03D8                ADD         ADD BX, AX
047Dh : 880F                MOV         MOV [BX], CL
047Fh : FE06F62F            INC         INC [F62Fh]
0483h : C3                  RET         RET
0484h : C6061D3001          MOV         MOV [1D30h], 1
0489h : 90                  NOP         NOP
048Ah : C3                  RET         RET
048Bh : 50                  PUSH        PUSH AX
048Ch : 52                  PUSH        PUSH DX
048Dh : 51                  PUSH        PUSH CX
048Eh : 53                  PUSH        PUSH BX
048Fh : BE0A30              MOV         MOV SI, 12298
0492h : 8A14                MOV         MOV DL, [SI]
0494h : 8A7401              MOV         MOV DH, [SI+01h]
0497h : BF1030              MOV         MOV DI, 12304
049Ah : B000                MOV         MOV AL, 0
049Ch : 8805                MOV         MOV [DI], AL
049Eh : 33C9                XOR         XOR CX, CX
04A0h : 8BC2                MOV         MOV AX, DX
04A2h : 8A1D                MOV         MOV BL, [DI]
04A4h : 33DB                XOR         XOR BX, BX
04A6h : 803E1D3001          CMP         CMP [1D30h],  1
04ABh : 750C                JNE         JNE 0Ch
04ADh : 90                  NOP         NOP
04AEh : 90                  NOP         NOP
04AFh : 03061B30            ADD         ADD AX, [1B30h]
04B3h : C6061D3000          MOV         MOV [1D30h], 0
04B8h : 90                  NOP         NOP
04B9h : FEC3                INC         INC BL
04BBh : 53                  PUSH        PUSH BX
04BCh : 80FC00              CMP         CMP AH,  0
04BFh : 7512                JNE         JNE 12h
04C1h : 90                  NOP         NOP
04C2h : 90                  NOP         NOP
04C3h : 33D2                XOR         XOR DX, DX
04C5h : B20A                MOV         MOV DL, 10
04C7h : F6F2                DIV         DIV DL
04C9h : 80C430              ADD         ADD AH,  48
04CCh : 8AD4                MOV         MOV DL, AH
04CEh : 32E4                XOR         XOR AH, AH
04D0h : EB0B                JMP         JMP 0Bh
04D2h : 90                  NOP         NOP
04D3h : 33D2                XOR         XOR DX, DX
04D5h : BB0A00              MOV         MOV BX, 10
04D8h : F7F3                DIV         DIV BX
04DAh : 80C230              ADD         ADD DL,  48
04DDh : 5B                  POP         POP BX
04DEh : 8811                MOV         MOV [BX+DI], DL
04E0h : 33D2                XOR         XOR DX, DX
04E2h : 3BC2                CMP         CMP AX, DX
04E4h : 7E04                JLE         JLE 04h
04E6h : 90                  NOP         NOP
04E7h : 90                  NOP         NOP
04E8h : EBCF                JMP         JMP CFh
04EAh : 881D                MOV         MOV [DI], BL
04ECh : 33C9                XOR         XOR CX, CX
04EEh : 8A0D                MOV         MOV CL, [DI]
04F0h : 33DB                XOR         XOR BX, BX
04F2h : BE1030              MOV         MOV SI, 12304
04F5h : 8BFE                MOV         MOV DI, SI
04F7h : 03F1                ADD         ADD SI, CX
04F9h : 47                  INC         INC DI
04FAh : 3BF7                CMP         CMP SI, DI
04FCh : 7610                JBE         JBE 10h
04FEh : 90                  NOP         NOP
04FFh : 90                  NOP         NOP
0500h : 8A15                MOV         MOV DL, [DI]
0502h : 8A34                MOV         MOV DH, [SI]
0504h : 8814                MOV         MOV [SI], DL
0506h : 8835                MOV         MOV [DI], DH
0508h : 47                  INC         INC DI
0509h : 4E                  DEC         DEC SI
050Ah : E302                JCXZ        JCXZ 02h
050Ch : E2EC                LOOP        LOOP ECh
050Eh : BF1030              MOV         MOV DI, 12304
0511h : 33DB                XOR         XOR BX, BX
0513h : 8A1D                MOV         MOV BL, [DI]
0515h : B024                MOV         MOV AL, 36
0517h : 83C30188            ADD         ADD BX,  34817
051Bh : 01F73EF7            ADD         ADD [BX+DI+003Eh], CX
051Fh : 2F                  DAS         DAS
0520h : 8306F72F01E8        ADD         ADD [F72Fh],  59393
0526h : E9FD5B              JMP         JMP 23549
0529h : 59                  POP         POP CX
052Ah : 5A                  POP         POP DX
052Bh : 58                  POP         POP AX
052Ch : E8BBFE              CALL        CALL 1004
052Fh : C3                  RET         RET
0530h : 50                  PUSH        PUSH AX
0531h : 53                  PUSH        PUSH BX
0532h : 51                  PUSH        PUSH CX
0533h : 52                  PUSH        PUSH DX
0534h : 803E1A3000          CMP         CMP [1A30h],  0
0539h : 750E                JNE         JNE 0Eh
053Bh : 90                  NOP         NOP
053Ch : 90                  NOP         NOP
053Dh : C706F72F3432        MOV         MOV [F72Fh], 12852
0543h : E8CBFD              CALL        CALL 787
0546h : E99300              JMP         JMP 147
0549h : 803E1A3001          CMP         CMP [1A30h],  1
054Eh : 750E                JNE         JNE 0Eh
0550h : 90                  NOP         NOP
0551h : 90                  NOP         NOP
0552h : C706F72F4632        MOV         MOV [F72Fh], 12870
0558h : E8B6FD              CALL        CALL 787
055Bh : EB7F                JMP         JMP 7Fh
055Dh : 90                  NOP         NOP
055Eh : 803E1A3002          CMP         CMP [1A30h],  2
0563h : 750E                JNE         JNE 0Eh
0565h : 90                  NOP         NOP
0566h : 90                  NOP         NOP
0567h : C706F72F4F32        MOV         MOV [F72Fh], 12879
056Dh : E8A1FD              CALL        CALL 787
0570h : EB6A                JMP         JMP 6Ah
0572h : 90                  NOP         NOP
0573h : 803E1A3003          CMP         CMP [1A30h],  3
0578h : 750E                JNE         JNE 0Eh
057Ah : 90                  NOP         NOP
057Bh : 90                  NOP         NOP
057Ch : C706F72F3D32        MOV         MOV [F72Fh], 12861
0582h : E88CFD              CALL        CALL 787
0585h : EB55                JMP         JMP 55h
0587h : 90                  NOP         NOP
0588h : 803E1A3004          CMP         CMP [1A30h],  4
058Dh : 750E                JNE         JNE 0Eh
058Fh : 90                  NOP         NOP
0590h : 90                  NOP         NOP
0591h : C706F72F6D32        MOV         MOV [F72Fh], 12909
0597h : E877FD              CALL        CALL 787
059Ah : EB40                JMP         JMP 40h
059Ch : 90                  NOP         NOP
059Dh : 803E1A3005          CMP         CMP [1A30h],  5
05A2h : 750E                JNE         JNE 0Eh
05A4h : 90                  NOP         NOP
05A5h : 90                  NOP         NOP
05A6h : C706F72F6A32        MOV         MOV [F72Fh], 12906
05ACh : E862FD              CALL        CALL 787
05AFh : EB2B                JMP         JMP 2Bh
05B1h : 90                  NOP         NOP
05B2h : 803E1A3006          CMP         CMP [1A30h],  6
05B7h : 750E                JNE         JNE 0Eh
05B9h : 90                  NOP         NOP
05BAh : 90                  NOP         NOP
05BBh : C706F72F6432        MOV         MOV [F72Fh], 12900
05C1h : E84DFD              CALL        CALL 787
05C4h : EB16                JMP         JMP 16h
05C6h : 90                  NOP         NOP
05C7h : 803E1A3007          CMP         CMP [1A30h],  7
05CCh : 750E                JNE         JNE 0Eh
05CEh : 90                  NOP         NOP
05CFh : 90                  NOP         NOP
05D0h : C706F72F6732        MOV         MOV [F72Fh], 12903
05D6h : E838FD              CALL        CALL 787
05D9h : EB01                JMP         JMP 01h
05DBh : 90                  NOP         NOP
05DCh : 5A                  POP         POP DX
05DDh : 59                  POP         POP CX
05DEh : 5B                  POP         POP BX
05DFh : 58                  POP         POP AX
05E0h : C3                  RET         RET
05E1h : 50                  PUSH        PUSH AX
05E2h : 53                  PUSH        PUSH BX
05E3h : 51                  PUSH        PUSH CX
05E4h : 52                  PUSH        PUSH DX
05E5h : 803E1A3000          CMP         CMP [1A30h],  0
05EAh : 750E                JNE         JNE 0Eh
05ECh : 90                  NOP         NOP
05EDh : 90                  NOP         NOP
05EEh : C706F72F3732        MOV         MOV [F72Fh], 12855
05F4h : E81AFD              CALL        CALL 787
05F7h : E99300              JMP         JMP 147
05FAh : 803E1A3001          CMP         CMP [1A30h],  1
05FFh : 750E                JNE         JNE 0Eh
0601h : 90                  NOP         NOP
0602h : 90                  NOP         NOP
0603h : C706F72F4932        MOV         MOV [F72Fh], 12873
0609h : E805FD              CALL        CALL 787
060Ch : EB7F                JMP         JMP 7Fh
060Eh : 90                  NOP         NOP
060Fh : 803E1A3002          CMP         CMP [1A30h],  2
0614h : 750E                JNE         JNE 0Eh
0616h : 90                  NOP         NOP
0617h : 90                  NOP         NOP
0618h : C706F72F5232        MOV         MOV [F72Fh], 12882
061Eh : E8F0FC              CALL        CALL 787
0621h : EB6A                JMP         JMP 6Ah
0623h : 90                  NOP         NOP
0624h : 803E1A3003          CMP         CMP [1A30h],  3
0629h : 750E                JNE         JNE 0Eh
062Bh : 90                  NOP         NOP
062Ch : 90                  NOP         NOP
062Dh : C706F72F4032        MOV         MOV [F72Fh], 12864
0633h : E8DBFC              CALL        CALL 787
0636h : EB55                JMP         JMP 55h
0638h : 90                  NOP         NOP
0639h : 803E1A3004          CMP         CMP [1A30h],  4
063Eh : 750E                JNE         JNE 0Eh
0640h : 90                  NOP         NOP
0641h : 90                  NOP         NOP
0642h : C706F72F3A32        MOV         MOV [F72Fh], 12858
0648h : E8C6FC              CALL        CALL 787
064Bh : EB40                JMP         JMP 40h
064Dh : 90                  NOP         NOP
064Eh : 803E1A3005          CMP         CMP [1A30h],  5
0653h : 750E                JNE         JNE 0Eh
0655h : 90                  NOP         NOP
0656h : 90                  NOP         NOP
0657h : C706F72F4C32        MOV         MOV [F72Fh], 12876
065Dh : E8B1FC              CALL        CALL 787
0660h : EB2B                JMP         JMP 2Bh
0662h : 90                  NOP         NOP
0663h : 803E1A3006          CMP         CMP [1A30h],  6
0668h : 750E                JNE         JNE 0Eh
066Ah : 90                  NOP         NOP
066Bh : 90                  NOP         NOP
066Ch : C706F72F5532        MOV         MOV [F72Fh], 12885
0672h : E89CFC              CALL        CALL 787
0675h : EB16                JMP         JMP 16h
0677h : 90                  NOP         NOP
0678h : 803E1A3007          CMP         CMP [1A30h],  7
067Dh : 750E                JNE         JNE 0Eh
067Fh : 90                  NOP         NOP
0680h : 90                  NOP         NOP
0681h : C706F72F6732        MOV         MOV [F72Fh], 12903
0687h : E887FC              CALL        CALL 787
068Ah : EB01                JMP         JMP 01h
068Ch : 90                  NOP         NOP
068Dh : 5A                  POP         POP DX
068Eh : 59                  POP         POP CX
068Fh : 5B                  POP         POP BX
0690h : 58                  POP         POP AX
0691h : C3                  RET         RET
0692h : 803E1A3000          CMP         CMP [1A30h],  0
0697h : 751A                JNE         JNE 1Ah
0699h : 90                  NOP         NOP
069Ah : 90                  NOP         NOP
069Bh : C706F72F3D32        MOV         MOV [F72Fh], 12861
06A1h : E86DFC              CALL        CALL 787
06A4h : E807FD              CALL        CALL 944
06A7h : C706F72F6432        MOV         MOV [F72Fh], 12900
06ADh : E861FC              CALL        CALL 787
06B0h : E9DB00              JMP         JMP 219
06B3h : 803E1A3001          CMP         CMP [1A30h],  1
06B8h : 751A                JNE         JNE 1Ah
06BAh : 90                  NOP         NOP
06BBh : 90                  NOP         NOP
06BCh : C706F72F3D32        MOV         MOV [F72Fh], 12861
06C2h : E84CFC              CALL        CALL 787
06C5h : E8E6FC              CALL        CALL 944
06C8h : C706F72F6732        MOV         MOV [F72Fh], 12903
06CEh : E840FC              CALL        CALL 787
06D1h : E9BA00              JMP         JMP 186
06D4h : 803E1A3002          CMP         CMP [1A30h],  2
06D9h : 751A                JNE         JNE 1Ah
06DBh : 90                  NOP         NOP
06DCh : 90                  NOP         NOP
06DDh : C706F72F6A32        MOV         MOV [F72Fh], 12906
06E3h : E82BFC              CALL        CALL 787
06E6h : E8C5FC              CALL        CALL 944
06E9h : C706F72F6432        MOV         MOV [F72Fh], 12900
06EFh : E81FFC              CALL        CALL 787
06F2h : E99900              JMP         JMP 153
06F5h : 803E1A3003          CMP         CMP [1A30h],  3
06FAh : 751A                JNE         JNE 1Ah
06FCh : 90                  NOP         NOP
06FDh : 90                  NOP         NOP
06FEh : C706F72F6A32        MOV         MOV [F72Fh], 12906
0704h : E80AFC              CALL        CALL 787
0707h : E8A4FC              CALL        CALL 944
070Ah : C706F72F6732        MOV         MOV [F72Fh], 12903
0710h : E8FEFB              CALL        CALL 787
0713h : EB79                JMP         JMP 79h
0715h : 90                  NOP         NOP
0716h : 803E1A3004          CMP         CMP [1A30h],  4
071Bh : 750E                JNE         JNE 0Eh
071Dh : 90                  NOP         NOP
071Eh : 90                  NOP         NOP
071Fh : C706F72F6432        MOV         MOV [F72Fh], 12900
0725h : E8E9FB              CALL        CALL 787
0728h : EB64                JMP         JMP 64h
072Ah : 90                  NOP         NOP
072Bh : 803E1A3005          CMP         CMP [1A30h],  5
0730h : 750E                JNE         JNE 0Eh
0732h : 90                  NOP         NOP
0733h : 90                  NOP         NOP
0734h : C706F72F6732        MOV         MOV [F72Fh], 12903
073Ah : E8D4FB              CALL        CALL 787
073Dh : EB4F                JMP         JMP 4Fh
073Fh : 90                  NOP         NOP
0740h : 803E1A3006          CMP         CMP [1A30h],  6
0745h : 7532                JNE         JNE 32h
0747h : 90                  NOP         NOP
0748h : 90                  NOP         NOP
0749h : 803E053000          CMP         CMP [0530h],  0
074Eh : 751D                JNE         JNE 1Dh
0750h : 90                  NOP         NOP
0751h : 90                  NOP         NOP
0752h : E895FC              CALL        CALL 1004
0755h : A0FA2F              MOV         MOV AL, [ 12282]
0758h : A20B30              MOV         MOV [ 12299], AL
075Bh : E8B8FA              CALL        CALL 536
075Eh : A0FA2F              MOV         MOV AL, [ 12282]
0761h : A20A30              MOV         MOV [ 12298], AL
0764h : E8AFFA              CALL        CALL 536
0767h : E8B3FC              CALL        CALL 1055
076Ah : EB22                JMP         JMP 22h
076Ch : 90                  NOP         NOP
076Dh : C706F72F6A32        MOV         MOV [F72Fh], 12906
0773h : E89BFB              CALL        CALL 787
0776h : EB16                JMP         JMP 16h
0778h : 90                  NOP         NOP
0779h : 803E1A3007          CMP         CMP [1A30h],  7
077Eh : 750E                JNE         JNE 0Eh
0780h : 90                  NOP         NOP
0781h : 90                  NOP         NOP
0782h : C706F72F3D32        MOV         MOV [F72Fh], 12861
0788h : E886FB              CALL        CALL 787
078Bh : EB01                JMP         JMP 01h
078Dh : 90                  NOP         NOP
078Eh : C3                  RET         RET
078Fh : 50                  PUSH        PUSH AX
0790h : 53                  PUSH        PUSH BX
0791h : 51                  PUSH        PUSH CX
0792h : 52                  PUSH        PUSH DX
0793h : 803E1A3000          CMP         CMP [1A30h],  0
0798h : 750E                JNE         JNE 0Eh
079Ah : 90                  NOP         NOP
079Bh : 90                  NOP         NOP
079Ch : C706F72F5832        MOV         MOV [F72Fh], 12888
07A2h : E86CFB              CALL        CALL 787
07A5h : EB40                JMP         JMP 40h
07A7h : 90                  NOP         NOP
07A8h : 803E1A3001          CMP         CMP [1A30h],  1
07ADh : 750E                JNE         JNE 0Eh
07AFh : 90                  NOP         NOP
07B0h : 90                  NOP         NOP
07B1h : C706F72F5B32        MOV         MOV [F72Fh], 12891
07B7h : E857FB              CALL        CALL 787
07BAh : EB2B                JMP         JMP 2Bh
07BCh : 90                  NOP         NOP
07BDh : 803E1A3002          CMP         CMP [1A30h],  2
07C2h : 750E                JNE         JNE 0Eh
07C4h : 90                  NOP         NOP
07C5h : 90                  NOP         NOP
07C6h : C706F72F5E32        MOV         MOV [F72Fh], 12894
07CCh : E842FB              CALL        CALL 787
07CFh : EB16                JMP         JMP 16h
07D1h : 90                  NOP         NOP
07D2h : 803E1A3003          CMP         CMP [1A30h],  3
07D7h : 750E                JNE         JNE 0Eh
07D9h : 90                  NOP         NOP
07DAh : 90                  NOP         NOP
07DBh : C706F72F6132        MOV         MOV [F72Fh], 12897
07E1h : E82DFB              CALL        CALL 787
07E4h : EB01                JMP         JMP 01h
07E6h : 90                  NOP         NOP
07E7h : 5A                  POP         POP DX
07E8h : 59                  POP         POP CX
07E9h : 5B                  POP         POP BX
07EAh : 58                  POP         POP AX
07EBh : C3                  RET         RET
07ECh : 50                  PUSH        PUSH AX
07EDh : 53                  PUSH        PUSH BX
07EEh : 51                  PUSH        PUSH CX
07EFh : 52                  PUSH        PUSH DX
07F0h : 803E053001          CMP         CMP [0530h],  1
07F5h : 740E                JE          JE 0Eh
07F7h : 90                  NOP         NOP
07F8h : 90                  NOP         NOP
07F9h : 803E053002          CMP         CMP [0530h],  2
07FEh : 7414                JE          JE 14h
0800h : 90                  NOP         NOP
0801h : 90                  NOP         NOP
0802h : EB2B                JMP         JMP 2Bh
0804h : 90                  NOP         NOP
0805h : A0FA2F              MOV         MOV AL, [ 12282]
0808h : A20F30              MOV         MOV [ 12303], AL
080Bh : E808FA              CALL        CALL 536
080Eh : E8E6FB              CALL        CALL 1017
0811h : EB1C                JMP         JMP 1Ch
0813h : 90                  NOP         NOP
0814h : BF0A30              MOV         MOV DI, 12298
0817h : A0FA2F              MOV         MOV AL, [ 12282]
081Ah : 8805                MOV         MOV [DI], AL
081Ch : E8F7F9              CALL        CALL 536
081Fh : 8A26FA2F            MOV         MOV AH, [FA2Fh]
0823h : 886501              MOV         MOV [DI+01h], AH
0826h : E8EDF9              CALL        CALL 536
0829h : E8F1FB              CALL        CALL 1055
082Ch : EB01                JMP         JMP 01h
082Eh : 90                  NOP         NOP
082Fh : 5A                  POP         POP DX
0830h : 59                  POP         POP CX
0831h : 5B                  POP         POP BX
0832h : 58                  POP         POP AX
0833h : C3                  RET         RET
0834h : E851FB              CALL        CALL 906
0837h : E858FE              CALL        CALL 1684
083Ah : 803E053000          CMP         CMP [0530h],  0
083Fh : 7408                JE          JE 08h
0841h : 90                  NOP         NOP
0842h : 90                  NOP         NOP
0843h : E868FB              CALL        CALL 944
0846h : E8A3FF              CALL        CALL 2030
0849h : E84FFB              CALL        CALL 925
084Ch : C3                  RET         RET
084Dh : 803E003001          CMP         CMP [0030h],  1
0852h : 7508                JNE         JNE 08h
0854h : 90                  NOP         NOP
0855h : 90                  NOP         NOP
0856h : E8D7FC              CALL        CALL 1330
0859h : EB04                JMP         JMP 04h
085Bh : 90                  NOP         NOP
085Ch : E882FD              CALL        CALL 1507
085Fh : C3                  RET         RET
0860h : 803E053003          CMP         CMP [0530h],  3
0865h : 750E                JNE         JNE 0Eh
0867h : 90                  NOP         NOP
0868h : 90                  NOP         NOP
0869h : A00730              MOV         MOV AL, [ 12295]
086Ch : A21A30              MOV         MOV [ 12314], AL
086Fh : E8DBFF              CALL        CALL 2127
0872h : EB04                JMP         JMP 04h
0874h : 90                  NOP         NOP
0875h : E8BCFF              CALL        CALL 2102
0878h : C3                  RET         RET
0879h : E8F9FA              CALL        CALL 887
087Ch : 50                  PUSH        PUSH AX
087Dh : 803E023000          CMP         CMP [0230h],  0
0882h : 7519                JNE         JNE 19h
0884h : 90                  NOP         NOP
0885h : 90                  NOP         NOP
0886h : A00730              MOV         MOV AL, [ 12295]
0889h : A21A30              MOV         MOV [ 12314], AL
088Ch : E8D1FF              CALL        CALL 2146
088Fh : E82FFB              CALL        CALL 963
0892h : A00630              MOV         MOV AL, [ 12294]
0895h : A21A30              MOV         MOV [ 12314], AL
0898h : E8B2FF              CALL        CALL 2127
089Bh : 58                  POP         POP AX
089Ch : C3                  RET         RET
089Dh : A00630              MOV         MOV AL, [ 12294]
08A0h : A21A30              MOV         MOV [ 12314], AL
08A3h : E8A7FF              CALL        CALL 2127
08A6h : E818FB              CALL        CALL 963
08A9h : A00730              MOV         MOV AL, [ 12295]
08ACh : A21A30              MOV         MOV [ 12314], AL
08AFh : E8AEFF              CALL        CALL 2146
08B2h : 58                  POP         POP AX
08B3h : C3                  RET         RET
08B4h : 50                  PUSH        PUSH AX
08B5h : E8BDFA              CALL        CALL 887
08B8h : E82FFB              CALL        CALL 1004
08BBh : 803E003001          CMP         CMP [0030h],  1
08C0h : 741A                JE          JE 1Ah
08C2h : 90                  NOP         NOP
08C3h : 90                  NOP         NOP
08C4h : 803E003000          CMP         CMP [0030h],  0
08C9h : 7402                JE          JE 02h
08CBh : 90                  NOP         NOP
08CCh : 90                  NOP         NOP
08CDh : A0FA2F              MOV         MOV AL, [ 12282]
08D0h : A20A30              MOV         MOV [ 12298], AL
08D3h : E8B5FB              CALL        CALL 1165
08D6h : E83DF9              CALL        CALL 536
08D9h : EB1B                JMP         JMP 1Bh
08DBh : 90                  NOP         NOP
08DCh : A0FA2F              MOV         MOV AL, [ 12282]
08DFh : A20B30              MOV         MOV [ 12299], AL
08E2h : E831F9              CALL        CALL 536
08E5h : 8A26FA2F            MOV         MOV AH, [FA2Fh]
08E9h : 88260A30            MOV         MOV [0A30h], AH
08EDh : E826F9              CALL        CALL 536
08F0h : E898FB              CALL        CALL 1165
08F3h : EB01                JMP         JMP 01h
08F5h : 90                  NOP         NOP
08F6h : 58                  POP         POP AX
08F7h : C3                  RET         RET
08F8h : 50                  PUSH        PUSH AX
08F9h : A00430              MOV         MOV AL, [ 12292]
08FCh : A21A30              MOV         MOV [ 12314], AL
08FFh : E88DFE              CALL        CALL 1937
0902h : 58                  POP         POP AX
0903h : C3                  RET         RET
0904h : 50                  PUSH        PUSH AX
0905h : E86DFA              CALL        CALL 887
0908h : A00630              MOV         MOV AL, [ 12294]
090Bh : A21A30              MOV         MOV [ 12314], AL
090Eh : E81FFC              CALL        CALL 1330
0911h : 58                  POP         POP AX
0912h : C3                  RET         RET
0913h : E85FFA              CALL        CALL 887
0916h : C606053001          MOV         MOV [0530h], 1
091Bh : 90                  NOP         NOP
091Ch : E8CDFE              CALL        CALL 2030
091Fh : C3                  RET         RET
0920h : 50                  PUSH        PUSH AX
0921h : E8C6FA              CALL        CALL 1004
0924h : A00730              MOV         MOV AL, [ 12295]
0927h : A21A30              MOV         MOV [ 12314], AL
092Ah : E848FA              CALL        CALL 887
092Dh : E830FF              CALL        CALL 2146
0930h : E88EFA              CALL        CALL 963
0933h : E83FFA              CALL        CALL 887
0936h : 803E003001          CMP         CMP [0030h],  1
093Bh : 7429                JE          JE 29h
093Dh : 90                  NOP         NOP
093Eh : 90                  NOP         NOP
093Fh : 803E013001          CMP         CMP [0130h],  1
0944h : 7517                JNE         JNE 17h
0946h : 90                  NOP         NOP
0947h : 90                  NOP         NOP
0948h : A0FA2F              MOV         MOV AL, [ 12282]
094Bh : A20A30              MOV         MOV [ 12298], AL
094Eh : E8C5F8              CALL        CALL 536
0951h : A0FA2F              MOV         MOV AL, [ 12282]
0954h : A20B30              MOV         MOV [ 12299], AL
0957h : E8BCF8              CALL        CALL 536
095Ah : EB0A                JMP         JMP 0Ah
095Ch : 90                  NOP         NOP
095Dh : A0FA2F              MOV         MOV AL, [ 12282]
0960h : A20A30              MOV         MOV [ 12298], AL
0963h : E8B0F8              CALL        CALL 536
0966h : E822FB              CALL        CALL 1165
0969h : 58                  POP         POP AX
096Ah : C3                  RET         RET
096Bh : 50                  PUSH        PUSH AX
096Ch : A00630              MOV         MOV AL, [ 12294]
096Fh : A21A30              MOV         MOV [ 12314], AL
0972h : E800FA              CALL        CALL 887
0975h : E8D5FE              CALL        CALL 2127
0978h : E846FA              CALL        CALL 963
097Bh : E8F7F9              CALL        CALL 887
097Eh : E8DFFE              CALL        CALL 2146
0981h : 58                  POP         POP AX
0982h : C3                  RET         RET
0983h : 50                  PUSH        PUSH AX
0984h : 803E023001          CMP         CMP [0230h],  1
0989h : 751C                JNE         JNE 1Ch
098Bh : 90                  NOP         NOP
098Ch : 90                  NOP         NOP
098Dh : A00430              MOV         MOV AL, [ 12292]
0990h : A21A30              MOV         MOV [ 12314], AL
0993h : E8F9FD              CALL        CALL 1937
0996h : E828FA              CALL        CALL 963
0999h : E8D9F9              CALL        CALL 887
099Ch : A00730              MOV         MOV AL, [ 12295]
099Fh : A21A30              MOV         MOV [ 12314], AL
09A2h : E8BBFE              CALL        CALL 2146
09A5h : 58                  POP         POP AX
09A6h : C3                  RET         RET
09A7h : A00730              MOV         MOV AL, [ 12295]
09AAh : A21A30              MOV         MOV [ 12314], AL
09ADh : E8B0FE              CALL        CALL 2146
09B0h : E80EFA              CALL        CALL 963
09B3h : E8BFF9              CALL        CALL 887
09B6h : A00430              MOV         MOV AL, [ 12292]
09B9h : A21A30              MOV         MOV [ 12314], AL
09BCh : E8D0FD              CALL        CALL 1937
09BFh : 58                  POP         POP AX
09C0h : C3                  RET         RET
09C1h : 50                  PUSH        PUSH AX
09C2h : E8B0F9              CALL        CALL 887
09C5h : A00630              MOV         MOV AL, [ 12294]
09C8h : A21A30              MOV         MOV [ 12314], AL
09CBh : E862FB              CALL        CALL 1330
09CEh : E8F0F9              CALL        CALL 963
09D1h : E8A1F9              CALL        CALL 887
09D4h : A00730              MOV         MOV AL, [ 12295]
09D7h : A21A30              MOV         MOV [ 12314], AL
09DAh : E883FE              CALL        CALL 2146
09DDh : 58                  POP         POP AX
09DEh : C3                  RET         RET
09DFh : 50                  PUSH        PUSH AX
09E0h : E892F9              CALL        CALL 887
09E3h : E867FE              CALL        CALL 2127
09E6h : E88CF9              CALL        CALL 887
09E9h : E8D5F9              CALL        CALL 963
09ECh : E886F9              CALL        CALL 887
09EFh : E8FAFD              CALL        CALL 2030
09F2h : 58                  POP         POP AX
09F3h : C3                  RET         RET
09F4h : 50                  PUSH        PUSH AX
09F5h : E8F2F9              CALL        CALL 1004
09F8h : E81BF8              CALL        CALL 536
09FBh : A0FA2F              MOV         MOV AL, [ 12282]
09FEh : A20A30              MOV         MOV [ 12298], AL
0A01h : E812F8              CALL        CALL 536
0A04h : A0FA2F              MOV         MOV AL, [ 12282]
0A07h : A20B30              MOV         MOV [ 12299], AL
0A0Ah : E87EFA              CALL        CALL 1165
0A0Dh : E8B1F9              CALL        CALL 963
0A10h : E862F9              CALL        CALL 887
0A13h : E800F8              CALL        CALL 536
0A16h : A0FA2F              MOV         MOV AL, [ 12282]
0A19h : A20A30              MOV         MOV [ 12298], AL
0A1Ch : E8F7F7              CALL        CALL 536
0A1Fh : A0FA2F              MOV         MOV AL, [ 12282]
0A22h : A20B30              MOV         MOV [ 12299], AL
0A25h : E8EEF7              CALL        CALL 536
0A28h : E860FA              CALL        CALL 1165
0A2Bh : 58                  POP         POP AX
0A2Ch : C3                  RET         RET
0A2Dh : 50                  PUSH        PUSH AX
0A2Eh : E857F9              CALL        CALL 906
0A31h : E8B6F9              CALL        CALL 1004
0A34h : 803E003000          CMP         CMP [0030h],  0
0A39h : 7513                JNE         JNE 13h
0A3Bh : 90                  NOP         NOP
0A3Ch : 90                  NOP         NOP
0A3Dh : A0FA2F              MOV         MOV AL, [ 12282]
0A40h : A20A30              MOV         MOV [ 12298], AL
0A43h : E8D0F7              CALL        CALL 536
0A46h : E842FA              CALL        CALL 1165
0A49h : E84FF9              CALL        CALL 925
0A4Ch : 58                  POP         POP AX
0A4Dh : C3                  RET         RET
0A4Eh : A0FA2F              MOV         MOV AL, [ 12282]
0A51h : A20A30              MOV         MOV [ 12298], AL
0A54h : E8BFF7              CALL        CALL 536
0A57h : A0FA2F              MOV         MOV AL, [ 12282]
0A5Ah : A20B30              MOV         MOV [ 12299], AL
0A5Dh : E8B6F7              CALL        CALL 536
0A60h : E828FA              CALL        CALL 1165
0A63h : E835F9              CALL        CALL 925
0A66h : 58                  POP         POP AX
0A67h : C3                  RET         RET
0A68h : A00630              MOV         MOV AL, [ 12294]
0A6Bh : A21A30              MOV         MOV [ 12314], AL
0A6Eh : E804F9              CALL        CALL 887
0A71h : E8D9FD              CALL        CALL 2127
0A74h : E84AF9              CALL        CALL 963
0A77h : E870F9              CALL        CALL 1004
0A7Ah : 803E003000          CMP         CMP [0030h],  0
0A7Fh : 750F                JNE         JNE 0Fh
0A81h : 90                  NOP         NOP
0A82h : 90                  NOP         NOP
0A83h : A0FA2F              MOV         MOV AL, [ 12282]
0A86h : A20A30              MOV         MOV [ 12298], AL
0A89h : E88AF7              CALL        CALL 536
0A8Ch : E8FCF9              CALL        CALL 1165
0A8Fh : C3                  RET         RET
0A90h : A0FA2F              MOV         MOV AL, [ 12282]
0A93h : A20A30              MOV         MOV [ 12298], AL
0A96h : E87DF7              CALL        CALL 536
0A99h : A0FA2F              MOV         MOV AL, [ 12282]
0A9Ch : A20B30              MOV         MOV [ 12299], AL
0A9Fh : E874F7              CALL        CALL 536
0AA2h : E8E6F9              CALL        CALL 1165
0AA5h : C3                  RET         RET
0AA6h : E8CCF8              CALL        CALL 887
0AA9h : A0FA2F              MOV         MOV AL, [ 12282]
0AACh : A20A30              MOV         MOV [ 12298], AL
0AAFh : E864F7              CALL        CALL 536
0AB2h : A0FA2F              MOV         MOV AL, [ 12282]
0AB5h : A20B30              MOV         MOV [ 12299], AL
0AB8h : E85BF7              CALL        CALL 536
0ABBh : E8CDF9              CALL        CALL 1165
0ABEh : C3                  RET         RET
0ABFh : C606093001          MOV         MOV [0930h], 1
0AC4h : 90                  NOP         NOP
0AC5h : C3                  RET         RET
0AC6h : 50                  PUSH        PUSH AX
0AC7h : E8ABF8              CALL        CALL 887
0ACAh : E81DF9              CALL        CALL 1004
0ACDh : A00730              MOV         MOV AL, [ 12295]
0AD0h : A21A30              MOV         MOV [ 12314], AL
0AD3h : E88AFD              CALL        CALL 2146
0AD6h : E8E8F8              CALL        CALL 963
0AD9h : E899F8              CALL        CALL 887
0ADCh : 803E093001          CMP         CMP [0930h],  1
0AE1h : 740A                JE          JE 0Ah
0AE3h : 90                  NOP         NOP
0AE4h : 90                  NOP         NOP
0AE5h : 803E003001          CMP         CMP [0030h],  1
0AEAh : EB0D                JMP         JMP 0Dh
0AECh : 90                  NOP         NOP
0AEDh : C606003000          MOV         MOV [0030h], 0
0AF2h : 90                  NOP         NOP
0AF3h : C606093000          MOV         MOV [0930h], 0
0AF8h : 90                  NOP         NOP
0AF9h : 751A                JNE         JNE 1Ah
0AFBh : 90                  NOP         NOP
0AFCh : 90                  NOP         NOP
0AFDh : A0FA2F              MOV         MOV AL, [ 12282]
0B00h : A20A30              MOV         MOV [ 12298], AL
0B03h : E810F7              CALL        CALL 536
0B06h : A0FA2F              MOV         MOV AL, [ 12282]
0B09h : A20B30              MOV         MOV [ 12299], AL
0B0Ch : E807F7              CALL        CALL 536
0B0Fh : E879F9              CALL        CALL 1165
0B12h : EB0D                JMP         JMP 0Dh
0B14h : 90                  NOP         NOP
0B15h : A0FA2F              MOV         MOV AL, [ 12282]
0B18h : A20A30              MOV         MOV [ 12298], AL
0B1Bh : E8F8F6              CALL        CALL 536
0B1Eh : E86AF9              CALL        CALL 1165
0B21h : 58                  POP         POP AX
0B22h : C3                  RET         RET
0B23h : 50                  PUSH        PUSH AX
0B24h : 33C0                XOR         XOR AX, AX
0B26h : A00830              MOV         MOV AL, [ 12296]
0B29h : A20F30              MOV         MOV [ 12303], AL
0B2Ch : E846F8              CALL        CALL 887
0B2Fh : E8C5F8              CALL        CALL 1017
0B32h : 58                  POP         POP AX
0B33h : C3                  RET         RET
0B34h : E8F0F5              CALL        CALL 297
0B37h : E83BF8              CALL        CALL 887
0B3Ah : 50                  PUSH        PUSH AX
0B3Bh : A00330              MOV         MOV AL, [ 12291]
0B3Eh : 3C00                CMP         CMP AL,  0
0B40h : 7522                JNE         JNE 22h
0B42h : 90                  NOP         NOP
0B43h : 90                  NOP         NOP
0B44h : A00730              MOV         MOV AL, [ 12295]
0B47h : A21A30              MOV         MOV [ 12314], AL
0B4Ah : E813FD              CALL        CALL 2146
0B4Dh : E871F8              CALL        CALL 963
0B50h : E822F8              CALL        CALL 887
0B53h : E894F8              CALL        CALL 1004
0B56h : B001                MOV         MOV AL, 1
0B58h : A20A30              MOV         MOV [ 12298], AL
0B5Bh : E8B8F6              CALL        CALL 536
0B5Eh : E82AF9              CALL        CALL 1165
0B61h : EB2A                JMP         JMP 2Ah
0B63h : 90                  NOP         NOP
0B64h : A00730              MOV         MOV AL, [ 12295]
0B67h : E8E3FC              CALL        CALL 2127
0B6Ah : E854F8              CALL        CALL 963
0B6Dh : E805F8              CALL        CALL 887
0B70h : E877F8              CALL        CALL 1004
0B73h : 33DB                XOR         XOR BX, BX
0B75h : 8A1EF62F            MOV         MOV BL, [F62Fh]
0B79h : B063                MOV         MOV AL, 99
0B7Bh : 882FC42F            MOV         MOV [BX+00C4h], AL
0B7Fh : FE06F62F            INC         INC [F62Fh]
0B83h : B078                MOV         MOV AL, 120
0B85h : 882FC42F            MOV         MOV [BX+00C4h], AL
0B89h : FE06F62F            INC         INC [F62Fh]
0B8Dh : 58                  POP         POP AX
0B8Eh : C3                  RET         RET
0B8Fh : 50                  PUSH        PUSH AX
0B90h : B81E30              MOV         MOV AX, 12318
0B93h : A3F72F              MOV         MOV [ 12279], AX
0B96h : E878F7              CALL        CALL 787
0B99h : 58                  POP         POP AX
0B9Ah : C3                  RET         RET
0B9Bh : 50                  PUSH        PUSH AX
0B9Ch : E84BF8              CALL        CALL 1004
0B9Fh : 803E003001          CMP         CMP [0030h],  1
0BA4h : 7508                JNE         JNE 08h
0BA6h : 90                  NOP         NOP
0BA7h : 90                  NOP         NOP
0BA8h : A0FA2F              MOV         MOV AL, [ 12282]
0BABh : A20A30              MOV         MOV [ 12298], AL
0BAEh : E865F6              CALL        CALL 536
0BB1h : A0FA2F              MOV         MOV AL, [ 12282]
0BB4h : A20B30              MOV         MOV [ 12299], AL
0BB7h : E85CF6              CALL        CALL 536
0BBAh : E8CEF8              CALL        CALL 1165
0BBDh : 58                  POP         POP AX
0BBEh : C3                  RET         RET
0BBFh : E8E4FE              CALL        CALL 2728
0BC2h : C3                  RET         RET
0BC3h : 50                  PUSH        PUSH AX
0BC4h : E8AEF7              CALL        CALL 887
0BC7h : A00730              MOV         MOV AL, [ 12295]
0BCAh : A21A30              MOV         MOV [ 12314], AL
0BCDh : E890FC              CALL        CALL 2146
0BD0h : 58                  POP         POP AX
0BD1h : C3                  RET         RET
0BD2h : E8A0F7              CALL        CALL 887
0BD5h : 803E003001          CMP         CMP [0030h],  1
0BDAh : 750B                JNE         JNE 0Bh
0BDCh : 90                  NOP         NOP
0BDDh : 90                  NOP         NOP
0BDEh : C706F72F3432        MOV         MOV [F72Fh], 12852
0BE4h : EB07                JMP         JMP 07h
0BE6h : 90                  NOP         NOP
0BE7h : C706F72F3732        MOV         MOV [F72Fh], 12855
0BEDh : E821F7              CALL        CALL 787
0BF0h : E8CEF7              CALL        CALL 963
0BF3h : E892F7              CALL        CALL 906
0BF6h : E8ADFE              CALL        CALL 2728
0BF9h : E89FF7              CALL        CALL 925
0BFCh : C3                  RET         RET
0BFDh : E875F7              CALL        CALL 887
0C00h : E885F7              CALL        CALL 906
0C03h : E8A0FE              CALL        CALL 2728
0C06h : E892F7              CALL        CALL 925
0C09h : E8B5F7              CALL        CALL 963
0C0Ch : 803E003001          CMP         CMP [0030h],  1
0C11h : 750B                JNE         JNE 0Bh
0C13h : 90                  NOP         NOP
0C14h : 90                  NOP         NOP
0C15h : C706F72F3432        MOV         MOV [F72Fh], 12852
0C1Bh : EB07                JMP         JMP 07h
0C1Dh : 90                  NOP         NOP
0C1Eh : C706F72F3732        MOV         MOV [F72Fh], 12855
0C24h : E8EAF6              CALL        CALL 787
0C27h : C3                  RET         RET
0C28h : A0FA2F              MOV         MOV AL, [ 12282]
0C2Bh : C0E802              SHR         SHR AL, 2
0C2Eh : 3C00                CMP         CMP AL,  0
0C30h : 7405                JE          JE 05h
0C32h : 90                  NOP         NOP
0C33h : 90                  NOP         NOP
0C34h : EB52                JMP         JMP 52h
0C36h : 90                  NOP         NOP
0C37h : C706F72F2E30        MOV         MOV [F72Fh], 12334
0C3Dh : E8D1F6              CALL        CALL 787
0C40h : A0FA2F              MOV         MOV AL, [ 12282]
0C43h : C0E006              SHL         SHL AL, 6
0C46h : C0E807              SHR         SHR AL, 7
0C49h : A20230              MOV         MOV [ 12290], AL
0C4Ch : A0FA2F              MOV         MOV AL, [ 12282]
0C4Fh : C0E007              SHL         SHL AL, 7
0C52h : C0E807              SHR         SHR AL, 7
0C55h : A20030              MOV         MOV [ 12288], AL
0C58h : E8BBF5              CALL        CALL 536
0C5Bh : A0FA2F              MOV         MOV AL, [ 12282]
0C5Eh : C0E806              SHR         SHR AL, 6
0C61h : A20530              MOV         MOV [ 12293], AL
0C64h : A0FA2F              MOV         MOV AL, [ 12282]
0C67h : C0E002              SHL         SHL AL, 2
0C6Ah : C0E805              SHR         SHR AL, 5
0C6Dh : A20630              MOV         MOV [ 12294], AL
0C70h : A0FA2F              MOV         MOV AL, [ 12282]
0C73h : C0E005              SHL         SHL AL, 5
0C76h : C0E805              SHR         SHR AL, 5
0C79h : A20730              MOV         MOV [ 12295], AL
0C7Ch : E897F5              CALL        CALL 536
0C7Fh : E8F7FB              CALL        CALL 2171
0C82h : E8B3F6              CALL        CALL 826
0C85h : EB30                JMP         JMP 30h
0C87h : 90                  NOP         NOP
0C88h : A0FA2F              MOV         MOV AL, [ 12282]
0C8Bh : D0E8                SHR         SHR AL,  1
0C8Dh : 3C02                CMP         CMP AL,  2
0C8Fh : 7405                JE          JE 05h
0C91h : 90                  NOP         NOP
0C92h : 90                  NOP         NOP
0C93h : EB25                JMP         JMP 25h
0C95h : 90                  NOP         NOP
0C96h : C706F72F2E30        MOV         MOV [F72Fh], 12334
0C9Ch : E872F6              CALL        CALL 787
0C9Fh : A0FA2F              MOV         MOV AL, [ 12282]
0CA2h : C0E007              SHL         SHL AL, 7
0CA5h : C0E807              SHR         SHR AL, 7
0CA8h : A20030              MOV         MOV [ 12288], AL
0CABh : E868F5              CALL        CALL 536
0CAEh : E821FF              CALL        CALL 3028
0CB1h : E800FC              CALL        CALL 2230
0CB4h : E881F6              CALL        CALL 826
0CB7h : EB31                JMP         JMP 31h
0CB9h : 90                  NOP         NOP
0CBAh : A0FA2F              MOV         MOV AL, [ 12282]
0CBDh : C0E805              SHR         SHR AL, 5
0CC0h : C0E005              SHL         SHL AL, 5
0CC3h : 3C06                CMP         CMP AL,  6
0CC5h : 7405                JE          JE 05h
0CC7h : 90                  NOP         NOP
0CC8h : 90                  NOP         NOP
0CC9h : EB22                JMP         JMP 22h
0CCBh : 90                  NOP         NOP
0CCCh : C706F72F3230        MOV         MOV [F72Fh], 12338
0CD2h : E83CF6              CALL        CALL 787
0CD5h : A0FA2F              MOV         MOV AL, [ 12282]
0CD8h : C0E003              SHL         SHL AL, 3
0CDBh : C0E806              SHR         SHR AL, 6
0CDEh : A20430              MOV         MOV [ 12292], AL
0CE1h : E832F5              CALL        CALL 536
0CE4h : E811FC              CALL        CALL 2298
0CE7h : E84EF6              CALL        CALL 826
0CEAh : EB31                JMP         JMP 31h
0CECh : 90                  NOP         NOP
0CEDh : A0FA2F              MOV         MOV AL, [ 12282]
0CF0h : C0E805              SHR         SHR AL, 5
0CF3h : C0E005              SHL         SHL AL, 5
0CF6h : 3C07                CMP         CMP AL,  7
0CF8h : 7405                JE          JE 05h
0CFAh : 90                  NOP         NOP
0CFBh : 90                  NOP         NOP
0CFCh : EB22                JMP         JMP 22h
0CFEh : 90                  NOP         NOP
0CFFh : C706F72F3730        MOV         MOV [F72Fh], 12343
0D05h : E809F6              CALL        CALL 787
0D08h : A0FA2F              MOV         MOV AL, [ 12282]
0D0Bh : C0E003              SHL         SHL AL, 3
0D0Eh : C0E806              SHR         SHR AL, 6
0D11h : A20430              MOV         MOV [ 12292], AL
0D14h : E8FFF4              CALL        CALL 536
0D17h : E8DEFB              CALL        CALL 2298
0D1Ah : E81BF6              CALL        CALL 826
0D1Dh : EB5E                JMP         JMP 5Eh
0D1Fh : 90                  NOP         NOP
0D20h : A0FA2F              MOV         MOV AL, [ 12282]
0D23h : C0E802              SHR         SHR AL, 2
0D26h : 3C02                CMP         CMP AL,  2
0D28h : 7405                JE          JE 05h
0D2Ah : 90                  NOP         NOP
0D2Bh : 90                  NOP         NOP
0D2Ch : EB52                JMP         JMP 52h
0D2Eh : 90                  NOP         NOP
0D2Fh : C706F72F3B30        MOV         MOV [F72Fh], 12347
0D35h : E8D9F5              CALL        CALL 787
0D38h : A0FA2F              MOV         MOV AL, [ 12282]
0D3Bh : C0E006              SHL         SHL AL, 6
0D3Eh : C0E807              SHR         SHR AL, 7
0D41h : A20230              MOV         MOV [ 12290], AL
0D44h : A0FA2F              MOV         MOV AL, [ 12282]
0D47h : C0E007              SHL         SHL AL, 7
0D4Ah : C0E807              SHR         SHR AL, 7
0D4Dh : A20030              MOV         MOV [ 12288], AL
0D50h : E8C3F4              CALL        CALL 536
0D53h : A0FA2F              MOV         MOV AL, [ 12282]
0D56h : C0E806              SHR         SHR AL, 6
0D59h : A20530              MOV         MOV [ 12293], AL
0D5Ch : A0FA2F              MOV         MOV AL, [ 12282]
0D5Fh : C0E002              SHL         SHL AL, 2
0D62h : C0E805              SHR         SHR AL, 5
0D65h : A20630              MOV         MOV [ 12294], AL
0D68h : A0FA2F              MOV         MOV AL, [ 12282]
0D6Bh : C0E005              SHL         SHL AL, 5
0D6Eh : C0E805              SHR         SHR AL, 5
0D71h : A20730              MOV         MOV [ 12295], AL
0D74h : E89FF4              CALL        CALL 536
0D77h : E8FFFA              CALL        CALL 2171
0D7Ah : E8BBF5              CALL        CALL 826
0D7Dh : EB30                JMP         JMP 30h
0D7Fh : 90                  NOP         NOP
0D80h : A0FA2F              MOV         MOV AL, [ 12282]
0D83h : D0E8                SHR         SHR AL,  1
0D85h : 3C06                CMP         CMP AL,  6
0D87h : 7405                JE          JE 05h
0D89h : 90                  NOP         NOP
0D8Ah : 90                  NOP         NOP
0D8Bh : EB25                JMP         JMP 25h
0D8Dh : 90                  NOP         NOP
0D8Eh : C706F72F3B30        MOV         MOV [F72Fh], 12347
0D94h : E87AF5              CALL        CALL 787
0D97h : A0FA2F              MOV         MOV AL, [ 12282]
0D9Ah : C0E007              SHL         SHL AL, 7
0D9Dh : C0E807              SHR         SHR AL, 7
0DA0h : A20030              MOV         MOV [ 12288], AL
0DA3h : E870F4              CALL        CALL 536
0DA6h : E829FE              CALL        CALL 3028
0DA9h : E808FB              CALL        CALL 2230
0DACh : E889F5              CALL        CALL 826
0DAFh : EB5E                JMP         JMP 5Eh
0DB1h : 90                  NOP         NOP
0DB2h : A0FA2F              MOV         MOV AL, [ 12282]
0DB5h : C0E802              SHR         SHR AL, 2
0DB8h : 3C04                CMP         CMP AL,  4
0DBAh : 7405                JE          JE 05h
0DBCh : 90                  NOP         NOP
0DBDh : 90                  NOP         NOP
0DBEh : EB52                JMP         JMP 52h
0DC0h : 90                  NOP         NOP
0DC1h : C706F72F3E30        MOV         MOV [F72Fh], 12350
0DC7h : E847F5              CALL        CALL 787
0DCAh : A0FA2F              MOV         MOV AL, [ 12282]
0DCDh : C0E006              SHL         SHL AL, 6
0DD0h : C0E807              SHR         SHR AL, 7
0DD3h : A20230              MOV         MOV [ 12290], AL
0DD6h : A0FA2F              MOV         MOV AL, [ 12282]
0DD9h : C0E007              SHL         SHL AL, 7
0DDCh : C0E807              SHR         SHR AL, 7
0DDFh : A20030              MOV         MOV [ 12288], AL
0DE2h : E831F4              CALL        CALL 536
0DE5h : A0FA2F              MOV         MOV AL, [ 12282]
0DE8h : C0E806              SHR         SHR AL, 6
0DEBh : A20530              MOV         MOV [ 12293], AL
0DEEh : A0FA2F              MOV         MOV AL, [ 12282]
0DF1h : C0E002              SHL         SHL AL, 2
0DF4h : C0E805              SHR         SHR AL, 5
0DF7h : A20630              MOV         MOV [ 12294], AL
0DFAh : A0FA2F              MOV         MOV AL, [ 12282]
0DFDh : C0E005              SHL         SHL AL, 5
0E00h : C0E805              SHR         SHR AL, 5
0E03h : A20730              MOV         MOV [ 12295], AL
0E06h : E80DF4              CALL        CALL 536
0E09h : E86DFA              CALL        CALL 2171
0E0Ch : E829F5              CALL        CALL 826
0E0Fh : EB30                JMP         JMP 30h
0E11h : 90                  NOP         NOP
0E12h : A0FA2F              MOV         MOV AL, [ 12282]
0E15h : D0E8                SHR         SHR AL,  1
0E17h : 3C0A                CMP         CMP AL,  10
0E19h : 7405                JE          JE 05h
0E1Bh : 90                  NOP         NOP
0E1Ch : 90                  NOP         NOP
0E1Dh : EB25                JMP         JMP 25h
0E1Fh : 90                  NOP         NOP
0E20h : C706F72F3E30        MOV         MOV [F72Fh], 12350
0E26h : E8E8F4              CALL        CALL 787
0E29h : A0FA2F              MOV         MOV AL, [ 12282]
0E2Ch : C0E007              SHL         SHL AL, 7
0E2Fh : C0E807              SHR         SHR AL, 7
0E32h : A20030              MOV         MOV [ 12288], AL
0E35h : E8DEF3              CALL        CALL 536
0E38h : E897FD              CALL        CALL 3028
0E3Bh : E876FA              CALL        CALL 2230
0E3Eh : E8F7F4              CALL        CALL 826
0E41h : EB5E                JMP         JMP 5Eh
0E43h : 90                  NOP         NOP
0E44h : A0FA2F              MOV         MOV AL, [ 12282]
0E47h : C0E802              SHR         SHR AL, 2
0E4Ah : 3C06                CMP         CMP AL,  6
0E4Ch : 7405                JE          JE 05h
0E4Eh : 90                  NOP         NOP
0E4Fh : 90                  NOP         NOP
0E50h : EB52                JMP         JMP 52h
0E52h : 90                  NOP         NOP
0E53h : C706F72F4230        MOV         MOV [F72Fh], 12354
0E59h : E8B5F4              CALL        CALL 787
0E5Ch : A0FA2F              MOV         MOV AL, [ 12282]
0E5Fh : C0E006              SHL         SHL AL, 6
0E62h : C0E807              SHR         SHR AL, 7
0E65h : A20230              MOV         MOV [ 12290], AL
0E68h : A0FA2F              MOV         MOV AL, [ 12282]
0E6Bh : C0E007              SHL         SHL AL, 7
0E6Eh : C0E807              SHR         SHR AL, 7
0E71h : A20030              MOV         MOV [ 12288], AL
0E74h : E89FF3              CALL        CALL 536
0E77h : A0FA2F              MOV         MOV AL, [ 12282]
0E7Ah : C0E806              SHR         SHR AL, 6
0E7Dh : A20530              MOV         MOV [ 12293], AL
0E80h : A0FA2F              MOV         MOV AL, [ 12282]
0E83h : C0E002              SHL         SHL AL, 2
0E86h : C0E805              SHR         SHR AL, 5
0E89h : A20630              MOV         MOV [ 12294], AL
0E8Ch : A0FA2F              MOV         MOV AL, [ 12282]
0E8Fh : C0E005              SHL         SHL AL, 5
0E92h : C0E805              SHR         SHR AL, 5
0E95h : A20730              MOV         MOV [ 12295], AL
0E98h : E87BF3              CALL        CALL 536
0E9Bh : E8DBF9              CALL        CALL 2171
0E9Eh : E897F4              CALL        CALL 826
0EA1h : EB30                JMP         JMP 30h
0EA3h : 90                  NOP         NOP
0EA4h : A0FA2F              MOV         MOV AL, [ 12282]
0EA7h : D0E8                SHR         SHR AL,  1
0EA9h : 3C0E                CMP         CMP AL,  14
0EABh : 7405                JE          JE 05h
0EADh : 90                  NOP         NOP
0EAEh : 90                  NOP         NOP
0EAFh : EB25                JMP         JMP 25h
0EB1h : 90                  NOP         NOP
0EB2h : C706F72F4230        MOV         MOV [F72Fh], 12354
0EB8h : E856F4              CALL        CALL 787
0EBBh : A0FA2F              MOV         MOV AL, [ 12282]
0EBEh : C0E007              SHL         SHL AL, 7
0EC1h : C0E807              SHR         SHR AL, 7
0EC4h : A20030              MOV         MOV [ 12288], AL
0EC7h : E84CF3              CALL        CALL 536
0ECAh : E805FD              CALL        CALL 3028
0ECDh : E8E4F9              CALL        CALL 2230
0ED0h : E865F4              CALL        CALL 826
0ED3h : EB5E                JMP         JMP 5Eh
0ED5h : 90                  NOP         NOP
0ED6h : A0FA2F              MOV         MOV AL, [ 12282]
0ED9h : C0E802              SHR         SHR AL, 2
0EDCh : 3C08                CMP         CMP AL,  8
0EDEh : 7405                JE          JE 05h
0EE0h : 90                  NOP         NOP
0EE1h : 90                  NOP         NOP
0EE2h : EB52                JMP         JMP 52h
0EE4h : 90                  NOP         NOP
0EE5h : C706F72F4630        MOV         MOV [F72Fh], 12358
0EEBh : E823F4              CALL        CALL 787
0EEEh : A0FA2F              MOV         MOV AL, [ 12282]
0EF1h : C0E006              SHL         SHL AL, 6
0EF4h : C0E807              SHR         SHR AL, 7
0EF7h : A20230              MOV         MOV [ 12290], AL
0EFAh : A0FA2F              MOV         MOV AL, [ 12282]
0EFDh : C0E007              SHL         SHL AL, 7
0F00h : C0E807              SHR         SHR AL, 7
0F03h : A20030              MOV         MOV [ 12288], AL
0F06h : E80DF3              CALL        CALL 536
0F09h : A0FA2F              MOV         MOV AL, [ 12282]
0F0Ch : C0E806              SHR         SHR AL, 6
0F0Fh : A20530              MOV         MOV [ 12293], AL
0F12h : A0FA2F              MOV         MOV AL, [ 12282]
0F15h : C0E002              SHL         SHL AL, 2
0F18h : C0E805              SHR         SHR AL, 5
0F1Bh : A20630              MOV         MOV [ 12294], AL
0F1Eh : A0FA2F              MOV         MOV AL, [ 12282]
0F21h : C0E005              SHL         SHL AL, 5
0F24h : C0E805              SHR         SHR AL, 5
0F27h : A20730              MOV         MOV [ 12295], AL
0F2Ah : E8E9F2              CALL        CALL 536
0F2Dh : E849F9              CALL        CALL 2171
0F30h : E805F4              CALL        CALL 826
0F33h : EB30                JMP         JMP 30h
0F35h : 90                  NOP         NOP
0F36h : A0FA2F              MOV         MOV AL, [ 12282]
0F39h : D0E8                SHR         SHR AL,  1
0F3Bh : 3C12                CMP         CMP AL,  18
0F3Dh : 7405                JE          JE 05h
0F3Fh : 90                  NOP         NOP
0F40h : 90                  NOP         NOP
0F41h : EB25                JMP         JMP 25h
0F43h : 90                  NOP         NOP
0F44h : C706F72F4630        MOV         MOV [F72Fh], 12358
0F4Ah : E8C4F3              CALL        CALL 787
0F4Dh : A0FA2F              MOV         MOV AL, [ 12282]
0F50h : C0E007              SHL         SHL AL, 7
0F53h : C0E807              SHR         SHR AL, 7
0F56h : A20030              MOV         MOV [ 12288], AL
0F59h : E8BAF2              CALL        CALL 536
0F5Ch : E873FC              CALL        CALL 3028
0F5Fh : E852F9              CALL        CALL 2230
0F62h : E8D3F3              CALL        CALL 826
0F65h : EB31                JMP         JMP 31h
0F67h : 90                  NOP         NOP
0F68h : A0FA2F              MOV         MOV AL, [ 12282]
0F6Bh : C0E805              SHR         SHR AL, 5
0F6Eh : C0E005              SHL         SHL AL, 5
0F71h : 3C26                CMP         CMP AL,  38
0F73h : 7405                JE          JE 05h
0F75h : 90                  NOP         NOP
0F76h : 90                  NOP         NOP
0F77h : EB22                JMP         JMP 22h
0F79h : 90                  NOP         NOP
0F7Ah : C706F72F1E30        MOV         MOV [F72Fh], 12318
0F80h : E88EF3              CALL        CALL 787
0F83h : A0FA2F              MOV         MOV AL, [ 12282]
0F86h : C0E003              SHL         SHL AL, 3
0F89h : C0E806              SHR         SHR AL, 6
0F8Ch : A20430              MOV         MOV [ 12292], AL
0F8Fh : E884F2              CALL        CALL 536
0F92h : E863F9              CALL        CALL 2298
0F95h : E8A0F3              CALL        CALL 826
0F98h : EB1C                JMP         JMP 1Ch
0F9Ah : 90                  NOP         NOP
0F9Bh : A0FA2F              MOV         MOV AL, [ 12282]
0F9Eh : 3C27                CMP         CMP AL,  39
0FA0h : 7405                JE          JE 05h
0FA2h : 90                  NOP         NOP
0FA3h : 90                  NOP         NOP
0FA4h : EB13                JMP         JMP 13h
0FA6h : 90                  NOP         NOP
0FA7h : C706F72F4A30        MOV         MOV [F72Fh], 12362
0FADh : E861F3              CALL        CALL 787
0FB0h : E863F2              CALL        CALL 536
0FB3h : E882F3              CALL        CALL 826
0FB6h : EB5E                JMP         JMP 5Eh
0FB8h : 90                  NOP         NOP
0FB9h : A0FA2F              MOV         MOV AL, [ 12282]
0FBCh : C0E802              SHR         SHR AL, 2
0FBFh : 3C0A                CMP         CMP AL,  10
0FC1h : 7405                JE          JE 05h
0FC3h : 90                  NOP         NOP
0FC4h : 90                  NOP         NOP
0FC5h : EB52                JMP         JMP 52h
0FC7h : 90                  NOP         NOP
0FC8h : C706F72F4E30        MOV         MOV [F72Fh], 12366
0FCEh : E840F3              CALL        CALL 787
0FD1h : A0FA2F              MOV         MOV AL, [ 12282]
0FD4h : C0E006              SHL         SHL AL, 6
0FD7h : C0E807              SHR         SHR AL, 7
0FDAh : A20230              MOV         MOV [ 12290], AL
0FDDh : A0FA2F              MOV         MOV AL, [ 12282]
0FE0h : C0E007              SHL         SHL AL, 7
0FE3h : C0E807              SHR         SHR AL, 7
0FE6h : A20030              MOV         MOV [ 12288], AL
0FE9h : E82AF2              CALL        CALL 536
0FECh : A0FA2F              MOV         MOV AL, [ 12282]
0FEFh : C0E806              SHR         SHR AL, 6
0FF2h : A20530              MOV         MOV [ 12293], AL
0FF5h : A0FA2F              MOV         MOV AL, [ 12282]
0FF8h : C0E002              SHL         SHL AL, 2
0FFBh : C0E805              SHR         SHR AL, 5
0FFEh : A20630              MOV         MOV [ 12294], AL
1001h : A0FA2F              MOV         MOV AL, [ 12282]
1004h : C0E005              SHL         SHL AL, 5
1007h : C0E805              SHR         SHR AL, 5
100Ah : A20730              MOV         MOV [ 12295], AL
100Dh : E806F2              CALL        CALL 536
1010h : E866F8              CALL        CALL 2171
1013h : E822F3              CALL        CALL 826
1016h : EB30                JMP         JMP 30h
1018h : 90                  NOP         NOP
1019h : A0FA2F              MOV         MOV AL, [ 12282]
101Ch : D0E8                SHR         SHR AL,  1
101Eh : 3C16                CMP         CMP AL,  22
1020h : 7405                JE          JE 05h
1022h : 90                  NOP         NOP
1023h : 90                  NOP         NOP
1024h : EB25                JMP         JMP 25h
1026h : 90                  NOP         NOP
1027h : C706F72F4E30        MOV         MOV [F72Fh], 12366
102Dh : E8E1F2              CALL        CALL 787
1030h : A0FA2F              MOV         MOV AL, [ 12282]
1033h : C0E007              SHL         SHL AL, 7
1036h : C0E807              SHR         SHR AL, 7
1039h : A20030              MOV         MOV [ 12288], AL
103Ch : E8D7F1              CALL        CALL 536
103Fh : E890FB              CALL        CALL 3028
1042h : E86FF8              CALL        CALL 2230
1045h : E8F0F2              CALL        CALL 826
1048h : EB1C                JMP         JMP 1Ch
104Ah : 90                  NOP         NOP
104Bh : A0FA2F              MOV         MOV AL, [ 12282]
104Eh : 3C2F                CMP         CMP AL,  47
1050h : 7405                JE          JE 05h
1052h : 90                  NOP         NOP
1053h : 90                  NOP         NOP
1054h : EB13                JMP         JMP 13h
1056h : 90                  NOP         NOP
1057h : C706F72F5230        MOV         MOV [F72Fh], 12370
105Dh : E8B1F2              CALL        CALL 787
1060h : E8B3F1              CALL        CALL 536
1063h : E8D2F2              CALL        CALL 826
1066h : EB5E                JMP         JMP 5Eh
1068h : 90                  NOP         NOP
1069h : A0FA2F              MOV         MOV AL, [ 12282]
106Ch : C0E802              SHR         SHR AL, 2
106Fh : 3C0C                CMP         CMP AL,  12
1071h : 7405                JE          JE 05h
1073h : 90                  NOP         NOP
1074h : 90                  NOP         NOP
1075h : EB52                JMP         JMP 52h
1077h : 90                  NOP         NOP
1078h : C706F72F5630        MOV         MOV [F72Fh], 12374
107Eh : E890F2              CALL        CALL 787
1081h : A0FA2F              MOV         MOV AL, [ 12282]
1084h : C0E006              SHL         SHL AL, 6
1087h : C0E807              SHR         SHR AL, 7
108Ah : A20230              MOV         MOV [ 12290], AL
108Dh : A0FA2F              MOV         MOV AL, [ 12282]
1090h : C0E007              SHL         SHL AL, 7
1093h : C0E807              SHR         SHR AL, 7
1096h : A20030              MOV         MOV [ 12288], AL
1099h : E87AF1              CALL        CALL 536
109Ch : A0FA2F              MOV         MOV AL, [ 12282]
109Fh : C0E806              SHR         SHR AL, 6
10A2h : A20530              MOV         MOV [ 12293], AL
10A5h : A0FA2F              MOV         MOV AL, [ 12282]
10A8h : C0E002              SHL         SHL AL, 2
10ABh : C0E805              SHR         SHR AL, 5
10AEh : A20630              MOV         MOV [ 12294], AL
10B1h : A0FA2F              MOV         MOV AL, [ 12282]
10B4h : C0E005              SHL         SHL AL, 5
10B7h : C0E805              SHR         SHR AL, 5
10BAh : A20730              MOV         MOV [ 12295], AL
10BDh : E856F1              CALL        CALL 536
10C0h : E8B6F7              CALL        CALL 2171
10C3h : E872F2              CALL        CALL 826
10C6h : EB30                JMP         JMP 30h
10C8h : 90                  NOP         NOP
10C9h : A0FA2F              MOV         MOV AL, [ 12282]
10CCh : D0E8                SHR         SHR AL,  1
10CEh : 3C1A                CMP         CMP AL,  26
10D0h : 7405                JE          JE 05h
10D2h : 90                  NOP         NOP
10D3h : 90                  NOP         NOP
10D4h : EB25                JMP         JMP 25h
10D6h : 90                  NOP         NOP
10D7h : C706F72F5630        MOV         MOV [F72Fh], 12374
10DDh : E831F2              CALL        CALL 787
10E0h : A0FA2F              MOV         MOV AL, [ 12282]
10E3h : C0E007              SHL         SHL AL, 7
10E6h : C0E807              SHR         SHR AL, 7
10E9h : A20030              MOV         MOV [ 12288], AL
10ECh : E827F1              CALL        CALL 536
10EFh : E8E0FA              CALL        CALL 3028
10F2h : E8BFF7              CALL        CALL 2230
10F5h : E840F2              CALL        CALL 826
10F8h : EB1C                JMP         JMP 1Ch
10FAh : 90                  NOP         NOP
10FBh : A0FA2F              MOV         MOV AL, [ 12282]
10FEh : 3C37                CMP         CMP AL,  55
1100h : 7405                JE          JE 05h
1102h : 90                  NOP         NOP
1103h : 90                  NOP         NOP
1104h : EB13                JMP         JMP 13h
1106h : 90                  NOP         NOP
1107h : C706F72F5A30        MOV         MOV [F72Fh], 12378
110Dh : E801F2              CALL        CALL 787
1110h : E803F1              CALL        CALL 536
1113h : E822F2              CALL        CALL 826
1116h : EB5E                JMP         JMP 5Eh
1118h : 90                  NOP         NOP
1119h : A0FA2F              MOV         MOV AL, [ 12282]
111Ch : C0E802              SHR         SHR AL, 2
111Fh : 3C0E                CMP         CMP AL,  14
1121h : 7405                JE          JE 05h
1123h : 90                  NOP         NOP
1124h : 90                  NOP         NOP
1125h : EB52                JMP         JMP 52h
1127h : 90                  NOP         NOP
1128h : C706F72F5E30        MOV         MOV [F72Fh], 12382
112Eh : E8E0F1              CALL        CALL 787
1131h : A0FA2F              MOV         MOV AL, [ 12282]
1134h : C0E006              SHL         SHL AL, 6
1137h : C0E807              SHR         SHR AL, 7
113Ah : A20230              MOV         MOV [ 12290], AL
113Dh : A0FA2F              MOV         MOV AL, [ 12282]
1140h : C0E007              SHL         SHL AL, 7
1143h : C0E807              SHR         SHR AL, 7
1146h : A20030              MOV         MOV [ 12288], AL
1149h : E8CAF0              CALL        CALL 536
114Ch : A0FA2F              MOV         MOV AL, [ 12282]
114Fh : C0E806              SHR         SHR AL, 6
1152h : A20530              MOV         MOV [ 12293], AL
1155h : A0FA2F              MOV         MOV AL, [ 12282]
1158h : C0E002              SHL         SHL AL, 2
115Bh : C0E805              SHR         SHR AL, 5
115Eh : A20630              MOV         MOV [ 12294], AL
1161h : A0FA2F              MOV         MOV AL, [ 12282]
1164h : C0E005              SHL         SHL AL, 5
1167h : C0E805              SHR         SHR AL, 5
116Ah : A20730              MOV         MOV [ 12295], AL
116Dh : E8A6F0              CALL        CALL 536
1170h : E806F7              CALL        CALL 2171
1173h : E8C2F1              CALL        CALL 826
1176h : EB30                JMP         JMP 30h
1178h : 90                  NOP         NOP
1179h : A0FA2F              MOV         MOV AL, [ 12282]
117Ch : D0E8                SHR         SHR AL,  1
117Eh : 3C1E                CMP         CMP AL,  30
1180h : 7405                JE          JE 05h
1182h : 90                  NOP         NOP
1183h : 90                  NOP         NOP
1184h : EB25                JMP         JMP 25h
1186h : 90                  NOP         NOP
1187h : C706F72F5E30        MOV         MOV [F72Fh], 12382
118Dh : E881F1              CALL        CALL 787
1190h : A0FA2F              MOV         MOV AL, [ 12282]
1193h : C0E007              SHL         SHL AL, 7
1196h : C0E807              SHR         SHR AL, 7
1199h : A20030              MOV         MOV [ 12288], AL
119Ch : E877F0              CALL        CALL 536
119Fh : E830FA              CALL        CALL 3028
11A2h : E80FF7              CALL        CALL 2230
11A5h : E890F1              CALL        CALL 826
11A8h : EB1C                JMP         JMP 1Ch
11AAh : 90                  NOP         NOP
11ABh : A0FA2F              MOV         MOV AL, [ 12282]
11AEh : 3C3F                CMP         CMP AL,  63
11B0h : 7405                JE          JE 05h
11B2h : 90                  NOP         NOP
11B3h : 90                  NOP         NOP
11B4h : EB13                JMP         JMP 13h
11B6h : 90                  NOP         NOP
11B7h : C706F72F6230        MOV         MOV [F72Fh], 12386
11BDh : E851F1              CALL        CALL 787
11C0h : E853F0              CALL        CALL 536
11C3h : E872F1              CALL        CALL 826
11C6h : EB2E                JMP         JMP 2Eh
11C8h : 90                  NOP         NOP
11C9h : A0FA2F              MOV         MOV AL, [ 12282]
11CCh : C0E803              SHR         SHR AL, 3
11CFh : 3C08                CMP         CMP AL,  8
11D1h : 7405                JE          JE 05h
11D3h : 90                  NOP         NOP
11D4h : 90                  NOP         NOP
11D5h : EB22                JMP         JMP 22h
11D7h : 90                  NOP         NOP
11D8h : C706F72F6630        MOV         MOV [F72Fh], 12390
11DEh : E830F1              CALL        CALL 787
11E1h : A0FA2F              MOV         MOV AL, [ 12282]
11E4h : C0E005              SHL         SHL AL, 5
11E7h : C0E805              SHR         SHR AL, 5
11EAh : A20630              MOV         MOV [ 12294], AL
11EDh : E826F0              CALL        CALL 536
11F0h : E811F7              CALL        CALL 2310
11F3h : E842F1              CALL        CALL 826
11F6h : EB2E                JMP         JMP 2Eh
11F8h : 90                  NOP         NOP
11F9h : A0FA2F              MOV         MOV AL, [ 12282]
11FCh : C0E803              SHR         SHR AL, 3
11FFh : 3C09                CMP         CMP AL,  9
1201h : 7405                JE          JE 05h
1203h : 90                  NOP         NOP
1204h : 90                  NOP         NOP
1205h : EB22                JMP         JMP 22h
1207h : 90                  NOP         NOP
1208h : C706F72F6A30        MOV         MOV [F72Fh], 12394
120Eh : E800F1              CALL        CALL 787
1211h : A0FA2F              MOV         MOV AL, [ 12282]
1214h : C0E005              SHL         SHL AL, 5
1217h : C0E805              SHR         SHR AL, 5
121Ah : A20630              MOV         MOV [ 12294], AL
121Dh : E8F6EF              CALL        CALL 536
1220h : E8E1F6              CALL        CALL 2310
1223h : E812F1              CALL        CALL 826
1226h : EB2E                JMP         JMP 2Eh
1228h : 90                  NOP         NOP
1229h : A0FA2F              MOV         MOV AL, [ 12282]
122Ch : C0E803              SHR         SHR AL, 3
122Fh : 3C0A                CMP         CMP AL,  10
1231h : 7405                JE          JE 05h
1233h : 90                  NOP         NOP
1234h : 90                  NOP         NOP
1235h : EB22                JMP         JMP 22h
1237h : 90                  NOP         NOP
1238h : C706F72F3230        MOV         MOV [F72Fh], 12338
123Eh : E8D0F0              CALL        CALL 787
1241h : A0FA2F              MOV         MOV AL, [ 12282]
1244h : C0E005              SHL         SHL AL, 5
1247h : C0E805              SHR         SHR AL, 5
124Ah : A20630              MOV         MOV [ 12294], AL
124Dh : E8C6EF              CALL        CALL 536
1250h : E8B1F6              CALL        CALL 2310
1253h : E8E2F0              CALL        CALL 826
1256h : EB2E                JMP         JMP 2Eh
1258h : 90                  NOP         NOP
1259h : A0FA2F              MOV         MOV AL, [ 12282]
125Ch : C0E803              SHR         SHR AL, 3
125Fh : 3C0B                CMP         CMP AL,  11
1261h : 7405                JE          JE 05h
1263h : 90                  NOP         NOP
1264h : 90                  NOP         NOP
1265h : EB22                JMP         JMP 22h
1267h : 90                  NOP         NOP
1268h : C706F72F3730        MOV         MOV [F72Fh], 12343
126Eh : E8A0F0              CALL        CALL 787
1271h : A0FA2F              MOV         MOV AL, [ 12282]
1274h : C0E005              SHL         SHL AL, 5
1277h : C0E805              SHR         SHR AL, 5
127Ah : A20630              MOV         MOV [ 12294], AL
127Dh : E896EF              CALL        CALL 536
1280h : E881F6              CALL        CALL 2310
1283h : E8B2F0              CALL        CALL 826
1286h : EB1F                JMP         JMP 1Fh
1288h : 90                  NOP         NOP
1289h : A0FA2F              MOV         MOV AL, [ 12282]
128Ch : 3C70                CMP         CMP AL,  112
128Eh : 7405                JE          JE 05h
1290h : 90                  NOP         NOP
1291h : 90                  NOP         NOP
1292h : EB16                JMP         JMP 16h
1294h : 90                  NOP         NOP
1295h : C706F72F6E30        MOV         MOV [F72Fh], 12398
129Bh : E873F0              CALL        CALL 787
129Eh : E875EF              CALL        CALL 536
12A1h : E86FF6              CALL        CALL 2325
12A4h : E891F0              CALL        CALL 826
12A7h : EB1F                JMP         JMP 1Fh
12A9h : 90                  NOP         NOP
12AAh : A0FA2F              MOV         MOV AL, [ 12282]
12ADh : 3C71                CMP         CMP AL,  113
12AFh : 7405                JE          JE 05h
12B1h : 90                  NOP         NOP
12B2h : 90                  NOP         NOP
12B3h : EB16                JMP         JMP 16h
12B5h : 90                  NOP         NOP
12B6h : C706F72F7130        MOV         MOV [F72Fh], 12401
12BCh : E852F0              CALL        CALL 787
12BFh : E854EF              CALL        CALL 536
12C2h : E84EF6              CALL        CALL 2325
12C5h : E870F0              CALL        CALL 826
12C8h : EB1F                JMP         JMP 1Fh
12CAh : 90                  NOP         NOP
12CBh : A0FA2F              MOV         MOV AL, [ 12282]
12CEh : 3C72                CMP         CMP AL,  114
12D0h : 7405                JE          JE 05h
12D2h : 90                  NOP         NOP
12D3h : 90                  NOP         NOP
12D4h : EB16                JMP         JMP 16h
12D6h : 90                  NOP         NOP
12D7h : C706F72F7530        MOV         MOV [F72Fh], 12405
12DDh : E831F0              CALL        CALL 787
12E0h : E833EF              CALL        CALL 536
12E3h : E82DF6              CALL        CALL 2325
12E6h : E84FF0              CALL        CALL 826
12E9h : EB1F                JMP         JMP 1Fh
12EBh : 90                  NOP         NOP
12ECh : A0FA2F              MOV         MOV AL, [ 12282]
12EFh : 3C73                CMP         CMP AL,  115
12F1h : 7405                JE          JE 05h
12F3h : 90                  NOP         NOP
12F4h : 90                  NOP         NOP
12F5h : EB16                JMP         JMP 16h
12F7h : 90                  NOP         NOP
12F8h : C706F72F8030        MOV         MOV [F72Fh], 12416
12FEh : E810F0              CALL        CALL 787
1301h : E812EF              CALL        CALL 536
1304h : E80CF6              CALL        CALL 2325
1307h : E82EF0              CALL        CALL 826
130Ah : EB1F                JMP         JMP 1Fh
130Ch : 90                  NOP         NOP
130Dh : A0FA2F              MOV         MOV AL, [ 12282]
1310h : 3C74                CMP         CMP AL,  116
1312h : 7405                JE          JE 05h
1314h : 90                  NOP         NOP
1315h : 90                  NOP         NOP
1316h : EB16                JMP         JMP 16h
1318h : 90                  NOP         NOP
1319h : C706F72F8C30        MOV         MOV [F72Fh], 12428
131Fh : E8EFEF              CALL        CALL 787
1322h : E8F1EE              CALL        CALL 536
1325h : E8EBF5              CALL        CALL 2325
1328h : E80DF0              CALL        CALL 826
132Bh : EB1F                JMP         JMP 1Fh
132Dh : 90                  NOP         NOP
132Eh : A0FA2F              MOV         MOV AL, [ 12282]
1331h : 3C75                CMP         CMP AL,  117
1333h : 7405                JE          JE 05h
1335h : 90                  NOP         NOP
1336h : 90                  NOP         NOP
1337h : EB16                JMP         JMP 16h
1339h : 90                  NOP         NOP
133Ah : C706F72F9230        MOV         MOV [F72Fh], 12434
1340h : E8CEEF              CALL        CALL 787
1343h : E8D0EE              CALL        CALL 536
1346h : E8CAF5              CALL        CALL 2325
1349h : E8ECEF              CALL        CALL 826
134Ch : EB1F                JMP         JMP 1Fh
134Eh : 90                  NOP         NOP
134Fh : A0FA2F              MOV         MOV AL, [ 12282]
1352h : 3C76                CMP         CMP AL,  118
1354h : 7405                JE          JE 05h
1356h : 90                  NOP         NOP
1357h : 90                  NOP         NOP
1358h : EB16                JMP         JMP 16h
135Ah : 90                  NOP         NOP
135Bh : C706F72F9A30        MOV         MOV [F72Fh], 12442
1361h : E8ADEF              CALL        CALL 787
1364h : E8AFEE              CALL        CALL 536
1367h : E8A9F5              CALL        CALL 2325
136Ah : E8CBEF              CALL        CALL 826
136Dh : EB1F                JMP         JMP 1Fh
136Fh : 90                  NOP         NOP
1370h : A0FA2F              MOV         MOV AL, [ 12282]
1373h : 3C77                CMP         CMP AL,  119
1375h : 7405                JE          JE 05h
1377h : 90                  NOP         NOP
1378h : 90                  NOP         NOP
1379h : EB16                JMP         JMP 16h
137Bh : 90                  NOP         NOP
137Ch : C706F72FA230        MOV         MOV [F72Fh], 12450
1382h : E88CEF              CALL        CALL 787
1385h : E88EEE              CALL        CALL 536
1388h : E888F5              CALL        CALL 2325
138Bh : E8AAEF              CALL        CALL 826
138Eh : EB1F                JMP         JMP 1Fh
1390h : 90                  NOP         NOP
1391h : A0FA2F              MOV         MOV AL, [ 12282]
1394h : 3C78                CMP         CMP AL,  120
1396h : 7405                JE          JE 05h
1398h : 90                  NOP         NOP
1399h : 90                  NOP         NOP
139Ah : EB16                JMP         JMP 16h
139Ch : 90                  NOP         NOP
139Dh : C706F72FAA30        MOV         MOV [F72Fh], 12458
13A3h : E86BEF              CALL        CALL 787
13A6h : E86DEE              CALL        CALL 536
13A9h : E867F5              CALL        CALL 2325
13ACh : E889EF              CALL        CALL 826
13AFh : EB1F                JMP         JMP 1Fh
13B1h : 90                  NOP         NOP
13B2h : A0FA2F              MOV         MOV AL, [ 12282]
13B5h : 3C79                CMP         CMP AL,  121
13B7h : 7405                JE          JE 05h
13B9h : 90                  NOP         NOP
13BAh : 90                  NOP         NOP
13BBh : EB16                JMP         JMP 16h
13BDh : 90                  NOP         NOP
13BEh : C706F72FAD30        MOV         MOV [F72Fh], 12461
13C4h : E84AEF              CALL        CALL 787
13C7h : E84CEE              CALL        CALL 536
13CAh : E846F5              CALL        CALL 2325
13CDh : E868EF              CALL        CALL 826
13D0h : EB1F                JMP         JMP 1Fh
13D2h : 90                  NOP         NOP
13D3h : A0FA2F              MOV         MOV AL, [ 12282]
13D6h : 3C7A                CMP         CMP AL,  122
13D8h : 7405                JE          JE 05h
13DAh : 90                  NOP         NOP
13DBh : 90                  NOP         NOP
13DCh : EB16                JMP         JMP 16h
13DEh : 90                  NOP         NOP
13DFh : C706F72FB130        MOV         MOV [F72Fh], 12465
13E5h : E829EF              CALL        CALL 787
13E8h : E82BEE              CALL        CALL 536
13EBh : E825F5              CALL        CALL 2325
13EEh : E847EF              CALL        CALL 826
13F1h : EB1F                JMP         JMP 1Fh
13F3h : 90                  NOP         NOP
13F4h : A0FA2F              MOV         MOV AL, [ 12282]
13F7h : 3C7B                CMP         CMP AL,  123
13F9h : 7405                JE          JE 05h
13FBh : 90                  NOP         NOP
13FCh : 90                  NOP         NOP
13FDh : EB16                JMP         JMP 16h
13FFh : 90                  NOP         NOP
1400h : C706F72FB830        MOV         MOV [F72Fh], 12472
1406h : E808EF              CALL        CALL 787
1409h : E80AEE              CALL        CALL 536
140Ch : E804F5              CALL        CALL 2325
140Fh : E826EF              CALL        CALL 826
1412h : EB1F                JMP         JMP 1Fh
1414h : 90                  NOP         NOP
1415h : A0FA2F              MOV         MOV AL, [ 12282]
1418h : 3C7C                CMP         CMP AL,  124
141Ah : 7405                JE          JE 05h
141Ch : 90                  NOP         NOP
141Dh : 90                  NOP         NOP
141Eh : EB16                JMP         JMP 16h
1420h : 90                  NOP         NOP
1421h : C706F72FC030        MOV         MOV [F72Fh], 12480
1427h : E8E7EE              CALL        CALL 787
142Ah : E8E9ED              CALL        CALL 536
142Dh : E8E3F4              CALL        CALL 2325
1430h : E805EF              CALL        CALL 826
1433h : EB1F                JMP         JMP 1Fh
1435h : 90                  NOP         NOP
1436h : A0FA2F              MOV         MOV AL, [ 12282]
1439h : 3C7D                CMP         CMP AL,  125
143Bh : 7405                JE          JE 05h
143Dh : 90                  NOP         NOP
143Eh : 90                  NOP         NOP
143Fh : EB16                JMP         JMP 16h
1441h : 90                  NOP         NOP
1442h : C706F72FC830        MOV         MOV [F72Fh], 12488
1448h : E8C6EE              CALL        CALL 787
144Bh : E8C8ED              CALL        CALL 536
144Eh : E8C2F4              CALL        CALL 2325
1451h : E8E4EE              CALL        CALL 826
1454h : EB1F                JMP         JMP 1Fh
1456h : 90                  NOP         NOP
1457h : A0FA2F              MOV         MOV AL, [ 12282]
145Ah : 3C7E                CMP         CMP AL,  126
145Ch : 7405                JE          JE 05h
145Eh : 90                  NOP         NOP
145Fh : 90                  NOP         NOP
1460h : EB16                JMP         JMP 16h
1462h : 90                  NOP         NOP
1463h : C706F72FD030        MOV         MOV [F72Fh], 12496
1469h : E8A5EE              CALL        CALL 787
146Ch : E8A7ED              CALL        CALL 536
146Fh : E8A1F4              CALL        CALL 2325
1472h : E8C3EE              CALL        CALL 826
1475h : EB1F                JMP         JMP 1Fh
1477h : 90                  NOP         NOP
1478h : A0FA2F              MOV         MOV AL, [ 12282]
147Bh : 3C7F                CMP         CMP AL,  127
147Dh : 7405                JE          JE 05h
147Fh : 90                  NOP         NOP
1480h : 90                  NOP         NOP
1481h : EB16                JMP         JMP 16h
1483h : 90                  NOP         NOP
1484h : C706F72FD830        MOV         MOV [F72Fh], 12504
148Ah : E884EE              CALL        CALL 787
148Dh : E886ED              CALL        CALL 536
1490h : E880F4              CALL        CALL 2325
1493h : E8A2EE              CALL        CALL 826
1496h : EB70                JMP         JMP 70h
1498h : 90                  NOP         NOP
1499h : A0FA2F              MOV         MOV AL, [ 12282]
149Ch : C0E802              SHR         SHR AL, 2
149Fh : 3C20                CMP         CMP AL,  32
14A1h : 7405                JE          JE 05h
14A3h : 90                  NOP         NOP
14A4h : 90                  NOP         NOP
14A5h : EB64                JMP         JMP 64h
14A7h : 90                  NOP         NOP
14A8h : 803EFD2F01          CMP         CMP [FD2Fh],  1
14ADh : 7405                JE          JE 05h
14AFh : 90                  NOP         NOP
14B0h : 90                  NOP         NOP
14B1h : EB58                JMP         JMP 58h
14B3h : 90                  NOP         NOP
14B4h : A0FC2F              MOV         MOV AL, [ 12284]
14B7h : C0E002              SHL         SHL AL, 2
14BAh : C0E805              SHR         SHR AL, 5
14BDh : 3C00                CMP         CMP AL,  0
14BFh : 7405                JE          JE 05h
14C1h : 90                  NOP         NOP
14C2h : 90                  NOP         NOP
14C3h : EB46                JMP         JMP 46h
14C5h : 90                  NOP         NOP
14C6h : C706F72F2E30        MOV         MOV [F72Fh], 12334
14CCh : E842EE              CALL        CALL 787
14CFh : A0FA2F              MOV         MOV AL, [ 12282]
14D2h : C0E006              SHL         SHL AL, 6
14D5h : C0E807              SHR         SHR AL, 7
14D8h : A20130              MOV         MOV [ 12289], AL
14DBh : A0FA2F              MOV         MOV AL, [ 12282]
14DEh : C0E007              SHL         SHL AL, 7
14E1h : C0E807              SHR         SHR AL, 7
14E4h : A20030              MOV         MOV [ 12288], AL
14E7h : E82CED              CALL        CALL 536
14EAh : A0FA2F              MOV         MOV AL, [ 12282]
14EDh : C0E806              SHR         SHR AL, 6
14F0h : A20530              MOV         MOV [ 12293], AL
14F3h : A0FA2F              MOV         MOV AL, [ 12282]
14F6h : C0E005              SHL         SHL AL, 5
14F9h : C0E805              SHR         SHR AL, 5
14FCh : A20730              MOV         MOV [ 12295], AL
14FFh : E814ED              CALL        CALL 536
1502h : E81BF4              CALL        CALL 2338
1505h : E830EE              CALL        CALL 826
1508h : EB70                JMP         JMP 70h
150Ah : 90                  NOP         NOP
150Bh : A0FA2F              MOV         MOV AL, [ 12282]
150Eh : C0E802              SHR         SHR AL, 2
1511h : 3C20                CMP         CMP AL,  32
1513h : 7405                JE          JE 05h
1515h : 90                  NOP         NOP
1516h : 90                  NOP         NOP
1517h : EB64                JMP         JMP 64h
1519h : 90                  NOP         NOP
151Ah : 803EFD2F01          CMP         CMP [FD2Fh],  1
151Fh : 7405                JE          JE 05h
1521h : 90                  NOP         NOP
1522h : 90                  NOP         NOP
1523h : EB58                JMP         JMP 58h
1525h : 90                  NOP         NOP
1526h : A0FC2F              MOV         MOV AL, [ 12284]
1529h : C0E002              SHL         SHL AL, 2
152Ch : C0E805              SHR         SHR AL, 5
152Fh : 3C01                CMP         CMP AL,  1
1531h : 7405                JE          JE 05h
1533h : 90                  NOP         NOP
1534h : 90                  NOP         NOP
1535h : EB46                JMP         JMP 46h
1537h : 90                  NOP         NOP
1538h : C706F72F3B30        MOV         MOV [F72Fh], 12347
153Eh : E8D0ED              CALL        CALL 787
1541h : A0FA2F              MOV         MOV AL, [ 12282]
1544h : C0E006              SHL         SHL AL, 6
1547h : C0E807              SHR         SHR AL, 7
154Ah : A20130              MOV         MOV [ 12289], AL
154Dh : A0FA2F              MOV         MOV AL, [ 12282]
1550h : C0E007              SHL         SHL AL, 7
1553h : C0E807              SHR         SHR AL, 7
1556h : A20030              MOV         MOV [ 12288], AL
1559h : E8BAEC              CALL        CALL 536
155Ch : A0FA2F              MOV         MOV AL, [ 12282]
155Fh : C0E806              SHR         SHR AL, 6
1562h : A20530              MOV         MOV [ 12293], AL
1565h : A0FA2F              MOV         MOV AL, [ 12282]
1568h : C0E005              SHL         SHL AL, 5
156Bh : C0E805              SHR         SHR AL, 5
156Eh : A20730              MOV         MOV [ 12295], AL
1571h : E8A2EC              CALL        CALL 536
1574h : E8A9F3              CALL        CALL 2338
1577h : E8BEED              CALL        CALL 826
157Ah : EB70                JMP         JMP 70h
157Ch : 90                  NOP         NOP
157Dh : A0FA2F              MOV         MOV AL, [ 12282]
1580h : C0E802              SHR         SHR AL, 2
1583h : 3C20                CMP         CMP AL,  32
1585h : 7405                JE          JE 05h
1587h : 90                  NOP         NOP
1588h : 90                  NOP         NOP
1589h : EB64                JMP         JMP 64h
158Bh : 90                  NOP         NOP
158Ch : 803EFD2F01          CMP         CMP [FD2Fh],  1
1591h : 7405                JE          JE 05h
1593h : 90                  NOP         NOP
1594h : 90                  NOP         NOP
1595h : EB58                JMP         JMP 58h
1597h : 90                  NOP         NOP
1598h : A0FC2F              MOV         MOV AL, [ 12284]
159Bh : C0E002              SHL         SHL AL, 2
159Eh : C0E805              SHR         SHR AL, 5
15A1h : 3C02                CMP         CMP AL,  2
15A3h : 7405                JE          JE 05h
15A5h : 90                  NOP         NOP
15A6h : 90                  NOP         NOP
15A7h : EB46                JMP         JMP 46h
15A9h : 90                  NOP         NOP
15AAh : C706F72F3E30        MOV         MOV [F72Fh], 12350
15B0h : E85EED              CALL        CALL 787
15B3h : A0FA2F              MOV         MOV AL, [ 12282]
15B6h : C0E006              SHL         SHL AL, 6
15B9h : C0E807              SHR         SHR AL, 7
15BCh : A20130              MOV         MOV [ 12289], AL
15BFh : A0FA2F              MOV         MOV AL, [ 12282]
15C2h : C0E007              SHL         SHL AL, 7
15C5h : C0E807              SHR         SHR AL, 7
15C8h : A20030              MOV         MOV [ 12288], AL
15CBh : E848EC              CALL        CALL 536
15CEh : A0FA2F              MOV         MOV AL, [ 12282]
15D1h : C0E806              SHR         SHR AL, 6
15D4h : A20530              MOV         MOV [ 12293], AL
15D7h : A0FA2F              MOV         MOV AL, [ 12282]
15DAh : C0E005              SHL         SHL AL, 5
15DDh : C0E805              SHR         SHR AL, 5
15E0h : A20730              MOV         MOV [ 12295], AL
15E3h : E830EC              CALL        CALL 536
15E6h : E837F3              CALL        CALL 2338
15E9h : E84CED              CALL        CALL 826
15ECh : EB70                JMP         JMP 70h
15EEh : 90                  NOP         NOP
15EFh : A0FA2F              MOV         MOV AL, [ 12282]
15F2h : C0E802              SHR         SHR AL, 2
15F5h : 3C20                CMP         CMP AL,  32
15F7h : 7405                JE          JE 05h
15F9h : 90                  NOP         NOP
15FAh : 90                  NOP         NOP
15FBh : EB64                JMP         JMP 64h
15FDh : 90                  NOP         NOP
15FEh : 803EFD2F01          CMP         CMP [FD2Fh],  1
1603h : 7405                JE          JE 05h
1605h : 90                  NOP         NOP
1606h : 90                  NOP         NOP
1607h : EB58                JMP         JMP 58h
1609h : 90                  NOP         NOP
160Ah : A0FC2F              MOV         MOV AL, [ 12284]
160Dh : C0E002              SHL         SHL AL, 2
1610h : C0E805              SHR         SHR AL, 5
1613h : 3C03                CMP         CMP AL,  3
1615h : 7405                JE          JE 05h
1617h : 90                  NOP         NOP
1618h : 90                  NOP         NOP
1619h : EB46                JMP         JMP 46h
161Bh : 90                  NOP         NOP
161Ch : C706F72F4230        MOV         MOV [F72Fh], 12354
1622h : E8ECEC              CALL        CALL 787
1625h : A0FA2F              MOV         MOV AL, [ 12282]
1628h : C0E006              SHL         SHL AL, 6
162Bh : C0E807              SHR         SHR AL, 7
162Eh : A20130              MOV         MOV [ 12289], AL
1631h : A0FA2F              MOV         MOV AL, [ 12282]
1634h : C0E007              SHL         SHL AL, 7
1637h : C0E807              SHR         SHR AL, 7
163Ah : A20030              MOV         MOV [ 12288], AL
163Dh : E8D6EB              CALL        CALL 536
1640h : A0FA2F              MOV         MOV AL, [ 12282]
1643h : C0E806              SHR         SHR AL, 6
1646h : A20530              MOV         MOV [ 12293], AL
1649h : A0FA2F              MOV         MOV AL, [ 12282]
164Ch : C0E005              SHL         SHL AL, 5
164Fh : C0E805              SHR         SHR AL, 5
1652h : A20730              MOV         MOV [ 12295], AL
1655h : E8BEEB              CALL        CALL 536
1658h : E8C5F2              CALL        CALL 2338
165Bh : E8DAEC              CALL        CALL 826
165Eh : EB70                JMP         JMP 70h
1660h : 90                  NOP         NOP
1661h : A0FA2F              MOV         MOV AL, [ 12282]
1664h : C0E802              SHR         SHR AL, 2
1667h : 3C20                CMP         CMP AL,  32
1669h : 7405                JE          JE 05h
166Bh : 90                  NOP         NOP
166Ch : 90                  NOP         NOP
166Dh : EB64                JMP         JMP 64h
166Fh : 90                  NOP         NOP
1670h : 803EFD2F01          CMP         CMP [FD2Fh],  1
1675h : 7405                JE          JE 05h
1677h : 90                  NOP         NOP
1678h : 90                  NOP         NOP
1679h : EB58                JMP         JMP 58h
167Bh : 90                  NOP         NOP
167Ch : A0FC2F              MOV         MOV AL, [ 12284]
167Fh : C0E002              SHL         SHL AL, 2
1682h : C0E805              SHR         SHR AL, 5
1685h : 3C04                CMP         CMP AL,  4
1687h : 7405                JE          JE 05h
1689h : 90                  NOP         NOP
168Ah : 90                  NOP         NOP
168Bh : EB46                JMP         JMP 46h
168Dh : 90                  NOP         NOP
168Eh : C706F72F4630        MOV         MOV [F72Fh], 12358
1694h : E87AEC              CALL        CALL 787
1697h : A0FA2F              MOV         MOV AL, [ 12282]
169Ah : C0E006              SHL         SHL AL, 6
169Dh : C0E807              SHR         SHR AL, 7
16A0h : A20130              MOV         MOV [ 12289], AL
16A3h : A0FA2F              MOV         MOV AL, [ 12282]
16A6h : C0E007              SHL         SHL AL, 7
16A9h : C0E807              SHR         SHR AL, 7
16ACh : A20030              MOV         MOV [ 12288], AL
16AFh : E864EB              CALL        CALL 536
16B2h : A0FA2F              MOV         MOV AL, [ 12282]
16B5h : C0E806              SHR         SHR AL, 6
16B8h : A20530              MOV         MOV [ 12293], AL
16BBh : A0FA2F              MOV         MOV AL, [ 12282]
16BEh : C0E005              SHL         SHL AL, 5
16C1h : C0E805              SHR         SHR AL, 5
16C4h : A20730              MOV         MOV [ 12295], AL
16C7h : E84CEB              CALL        CALL 536
16CAh : E853F2              CALL        CALL 2338
16CDh : E868EC              CALL        CALL 826
16D0h : EB70                JMP         JMP 70h
16D2h : 90                  NOP         NOP
16D3h : A0FA2F              MOV         MOV AL, [ 12282]
16D6h : C0E802              SHR         SHR AL, 2
16D9h : 3C20                CMP         CMP AL,  32
16DBh : 7405                JE          JE 05h
16DDh : 90                  NOP         NOP
16DEh : 90                  NOP         NOP
16DFh : EB64                JMP         JMP 64h
16E1h : 90                  NOP         NOP
16E2h : 803EFD2F01          CMP         CMP [FD2Fh],  1
16E7h : 7405                JE          JE 05h
16E9h : 90                  NOP         NOP
16EAh : 90                  NOP         NOP
16EBh : EB58                JMP         JMP 58h
16EDh : 90                  NOP         NOP
16EEh : A0FC2F              MOV         MOV AL, [ 12284]
16F1h : C0E002              SHL         SHL AL, 2
16F4h : C0E805              SHR         SHR AL, 5
16F7h : 3C05                CMP         CMP AL,  5
16F9h : 7405                JE          JE 05h
16FBh : 90                  NOP         NOP
16FCh : 90                  NOP         NOP
16FDh : EB46                JMP         JMP 46h
16FFh : 90                  NOP         NOP
1700h : C706F72F4E30        MOV         MOV [F72Fh], 12366
1706h : E808EC              CALL        CALL 787
1709h : A0FA2F              MOV         MOV AL, [ 12282]
170Ch : C0E006              SHL         SHL AL, 6
170Fh : C0E807              SHR         SHR AL, 7
1712h : A20130              MOV         MOV [ 12289], AL
1715h : A0FA2F              MOV         MOV AL, [ 12282]
1718h : C0E007              SHL         SHL AL, 7
171Bh : C0E807              SHR         SHR AL, 7
171Eh : A20030              MOV         MOV [ 12288], AL
1721h : E8F2EA              CALL        CALL 536
1724h : A0FA2F              MOV         MOV AL, [ 12282]
1727h : C0E806              SHR         SHR AL, 6
172Ah : A20530              MOV         MOV [ 12293], AL
172Dh : A0FA2F              MOV         MOV AL, [ 12282]
1730h : C0E005              SHL         SHL AL, 5
1733h : C0E805              SHR         SHR AL, 5
1736h : A20730              MOV         MOV [ 12295], AL
1739h : E8DAEA              CALL        CALL 536
173Ch : E8E1F1              CALL        CALL 2338
173Fh : E8F6EB              CALL        CALL 826
1742h : EB70                JMP         JMP 70h
1744h : 90                  NOP         NOP
1745h : A0FA2F              MOV         MOV AL, [ 12282]
1748h : C0E802              SHR         SHR AL, 2
174Bh : 3C20                CMP         CMP AL,  32
174Dh : 7405                JE          JE 05h
174Fh : 90                  NOP         NOP
1750h : 90                  NOP         NOP
1751h : EB64                JMP         JMP 64h
1753h : 90                  NOP         NOP
1754h : 803EFD2F01          CMP         CMP [FD2Fh],  1
1759h : 7405                JE          JE 05h
175Bh : 90                  NOP         NOP
175Ch : 90                  NOP         NOP
175Dh : EB58                JMP         JMP 58h
175Fh : 90                  NOP         NOP
1760h : A0FC2F              MOV         MOV AL, [ 12284]
1763h : C0E002              SHL         SHL AL, 2
1766h : C0E805              SHR         SHR AL, 5
1769h : 3C06                CMP         CMP AL,  6
176Bh : 7405                JE          JE 05h
176Dh : 90                  NOP         NOP
176Eh : 90                  NOP         NOP
176Fh : EB46                JMP         JMP 46h
1771h : 90                  NOP         NOP
1772h : C706F72F5630        MOV         MOV [F72Fh], 12374
1778h : E896EB              CALL        CALL 787
177Bh : A0FA2F              MOV         MOV AL, [ 12282]
177Eh : C0E006              SHL         SHL AL, 6
1781h : C0E807              SHR         SHR AL, 7
1784h : A20130              MOV         MOV [ 12289], AL
1787h : A0FA2F              MOV         MOV AL, [ 12282]
178Ah : C0E007              SHL         SHL AL, 7
178Dh : C0E807              SHR         SHR AL, 7
1790h : A20030              MOV         MOV [ 12288], AL
1793h : E880EA              CALL        CALL 536
1796h : A0FA2F              MOV         MOV AL, [ 12282]
1799h : C0E806              SHR         SHR AL, 6
179Ch : A20530              MOV         MOV [ 12293], AL
179Fh : A0FA2F              MOV         MOV AL, [ 12282]
17A2h : C0E005              SHL         SHL AL, 5
17A5h : C0E805              SHR         SHR AL, 5
17A8h : A20730              MOV         MOV [ 12295], AL
17ABh : E868EA              CALL        CALL 536
17AEh : E86FF1              CALL        CALL 2338
17B1h : E884EB              CALL        CALL 826
17B4h : EB70                JMP         JMP 70h
17B6h : 90                  NOP         NOP
17B7h : A0FA2F              MOV         MOV AL, [ 12282]
17BAh : C0E802              SHR         SHR AL, 2
17BDh : 3C20                CMP         CMP AL,  32
17BFh : 7405                JE          JE 05h
17C1h : 90                  NOP         NOP
17C2h : 90                  NOP         NOP
17C3h : EB64                JMP         JMP 64h
17C5h : 90                  NOP         NOP
17C6h : 803EFD2F01          CMP         CMP [FD2Fh],  1
17CBh : 7405                JE          JE 05h
17CDh : 90                  NOP         NOP
17CEh : 90                  NOP         NOP
17CFh : EB58                JMP         JMP 58h
17D1h : 90                  NOP         NOP
17D2h : A0FC2F              MOV         MOV AL, [ 12284]
17D5h : C0E002              SHL         SHL AL, 2
17D8h : C0E805              SHR         SHR AL, 5
17DBh : 3C07                CMP         CMP AL,  7
17DDh : 7405                JE          JE 05h
17DFh : 90                  NOP         NOP
17E0h : 90                  NOP         NOP
17E1h : EB46                JMP         JMP 46h
17E3h : 90                  NOP         NOP
17E4h : C706F72F5E30        MOV         MOV [F72Fh], 12382
17EAh : E824EB              CALL        CALL 787
17EDh : A0FA2F              MOV         MOV AL, [ 12282]
17F0h : C0E006              SHL         SHL AL, 6
17F3h : C0E807              SHR         SHR AL, 7
17F6h : A20130              MOV         MOV [ 12289], AL
17F9h : A0FA2F              MOV         MOV AL, [ 12282]
17FCh : C0E007              SHL         SHL AL, 7
17FFh : C0E807              SHR         SHR AL, 7
1802h : A20030              MOV         MOV [ 12288], AL
1805h : E80EEA              CALL        CALL 536
1808h : A0FA2F              MOV         MOV AL, [ 12282]
180Bh : C0E806              SHR         SHR AL, 6
180Eh : A20530              MOV         MOV [ 12293], AL
1811h : A0FA2F              MOV         MOV AL, [ 12282]
1814h : C0E005              SHL         SHL AL, 5
1817h : C0E805              SHR         SHR AL, 5
181Ah : A20730              MOV         MOV [ 12295], AL
181Dh : E8F6E9              CALL        CALL 536
1820h : E8FDF0              CALL        CALL 2338
1823h : E812EB              CALL        CALL 826
1826h : EB51                JMP         JMP 51h
1828h : 90                  NOP         NOP
1829h : A0FA2F              MOV         MOV AL, [ 12282]
182Ch : D0E8                SHR         SHR AL,  1
182Eh : 3C42                CMP         CMP AL,  66
1830h : 7405                JE          JE 05h
1832h : 90                  NOP         NOP
1833h : 90                  NOP         NOP
1834h : EB46                JMP         JMP 46h
1836h : 90                  NOP         NOP
1837h : C706F72FE030        MOV         MOV [F72Fh], 12512
183Dh : E8D1EA              CALL        CALL 787
1840h : A0FA2F              MOV         MOV AL, [ 12282]
1843h : C0E007              SHL         SHL AL, 7
1846h : C0E807              SHR         SHR AL, 7
1849h : A20030              MOV         MOV [ 12288], AL
184Ch : E8C7E9              CALL        CALL 536
184Fh : A0FA2F              MOV         MOV AL, [ 12282]
1852h : C0E806              SHR         SHR AL, 6
1855h : A20530              MOV         MOV [ 12293], AL
1858h : A0FA2F              MOV         MOV AL, [ 12282]
185Bh : C0E002              SHL         SHL AL, 2
185Eh : C0E805              SHR         SHR AL, 5
1861h : A20630              MOV         MOV [ 12294], AL
1864h : A0FA2F              MOV         MOV AL, [ 12282]
1867h : C0E005              SHL         SHL AL, 5
186Ah : C0E805              SHR         SHR AL, 5
186Dh : A20730              MOV         MOV [ 12295], AL
1870h : E8A3E9              CALL        CALL 536
1873h : E8F5F0              CALL        CALL 2413
1876h : E8BFEA              CALL        CALL 826
1879h : EB51                JMP         JMP 51h
187Bh : 90                  NOP         NOP
187Ch : A0FA2F              MOV         MOV AL, [ 12282]
187Fh : D0E8                SHR         SHR AL,  1
1881h : 3C43                CMP         CMP AL,  67
1883h : 7405                JE          JE 05h
1885h : 90                  NOP         NOP
1886h : 90                  NOP         NOP
1887h : EB46                JMP         JMP 46h
1889h : 90                  NOP         NOP
188Ah : C706F72FE530        MOV         MOV [F72Fh], 12517
1890h : E87EEA              CALL        CALL 787
1893h : A0FA2F              MOV         MOV AL, [ 12282]
1896h : C0E007              SHL         SHL AL, 7
1899h : C0E807              SHR         SHR AL, 7
189Ch : A20030              MOV         MOV [ 12288], AL
189Fh : E874E9              CALL        CALL 536
18A2h : A0FA2F              MOV         MOV AL, [ 12282]
18A5h : C0E806              SHR         SHR AL, 6
18A8h : A20530              MOV         MOV [ 12293], AL
18ABh : A0FA2F              MOV         MOV AL, [ 12282]
18AEh : C0E002              SHL         SHL AL, 2
18B1h : C0E805              SHR         SHR AL, 5
18B4h : A20630              MOV         MOV [ 12294], AL
18B7h : A0FA2F              MOV         MOV AL, [ 12282]
18BAh : C0E005              SHL         SHL AL, 5
18BDh : C0E805              SHR         SHR AL, 5
18C0h : A20730              MOV         MOV [ 12295], AL
18C3h : E850E9              CALL        CALL 536
18C6h : E8A2F0              CALL        CALL 2413
18C9h : E86CEA              CALL        CALL 826
18CCh : EB5E                JMP         JMP 5Eh
18CEh : 90                  NOP         NOP
18CFh : A0FA2F              MOV         MOV AL, [ 12282]
18D2h : C0E802              SHR         SHR AL, 2
18D5h : 3C22                CMP         CMP AL,  34
18D7h : 7405                JE          JE 05h
18D9h : 90                  NOP         NOP
18DAh : 90                  NOP         NOP
18DBh : EB52                JMP         JMP 52h
18DDh : 90                  NOP         NOP
18DEh : C706F72F2630        MOV         MOV [F72Fh], 12326
18E4h : E82AEA              CALL        CALL 787
18E7h : A0FA2F              MOV         MOV AL, [ 12282]
18EAh : C0E006              SHL         SHL AL, 6
18EDh : C0E807              SHR         SHR AL, 7
18F0h : A20230              MOV         MOV [ 12290], AL
18F3h : A0FA2F              MOV         MOV AL, [ 12282]
18F6h : C0E007              SHL         SHL AL, 7
18F9h : C0E807              SHR         SHR AL, 7
18FCh : A20030              MOV         MOV [ 12288], AL
18FFh : E814E9              CALL        CALL 536
1902h : A0FA2F              MOV         MOV AL, [ 12282]
1905h : C0E806              SHR         SHR AL, 6
1908h : A20530              MOV         MOV [ 12293], AL
190Bh : A0FA2F              MOV         MOV AL, [ 12282]
190Eh : C0E002              SHL         SHL AL, 2
1911h : C0E805              SHR         SHR AL, 5
1914h : A20630              MOV         MOV [ 12294], AL
1917h : A0FA2F              MOV         MOV AL, [ 12282]
191Ah : C0E005              SHL         SHL AL, 5
191Dh : C0E805              SHR         SHR AL, 5
1920h : A20730              MOV         MOV [ 12295], AL
1923h : E8F0E8              CALL        CALL 536
1926h : E850EF              CALL        CALL 2171
1929h : E80CEA              CALL        CALL 826
192Ch : EB73                JMP         JMP 73h
192Eh : 90                  NOP         NOP
192Fh : A0FA2F              MOV         MOV AL, [ 12282]
1932h : C0E802              SHR         SHR AL, 2
1935h : C0E002              SHL         SHL AL, 2
1938h : 3C8C                CMP         CMP AL,  140
193Ah : 7405                JE          JE 05h
193Ch : 90                  NOP         NOP
193Dh : 90                  NOP         NOP
193Eh : EB64                JMP         JMP 64h
1940h : 90                  NOP         NOP
1941h : 803EFD2F01          CMP         CMP [FD2Fh],  1
1946h : 7405                JE          JE 05h
1948h : 90                  NOP         NOP
1949h : 90                  NOP         NOP
194Ah : EB58                JMP         JMP 58h
194Ch : 90                  NOP         NOP
194Dh : A0FC2F              MOV         MOV AL, [ 12284]
1950h : C0E002              SHL         SHL AL, 2
1953h : C0E807              SHR         SHR AL, 7
1956h : 3C00                CMP         CMP AL,  0
1958h : 7405                JE          JE 05h
195Ah : 90                  NOP         NOP
195Bh : 90                  NOP         NOP
195Ch : EB46                JMP         JMP 46h
195Eh : 90                  NOP         NOP
195Fh : C706F72F2630        MOV         MOV [F72Fh], 12326
1965h : E8A9E9              CALL        CALL 787
1968h : A0FA2F              MOV         MOV AL, [ 12282]
196Bh : C0E006              SHL         SHL AL, 6
196Eh : C0E807              SHR         SHR AL, 7
1971h : A20230              MOV         MOV [ 12290], AL
1974h : E89FE8              CALL        CALL 536
1977h : A0FA2F              MOV         MOV AL, [ 12282]
197Ah : C0E806              SHR         SHR AL, 6
197Dh : A20530              MOV         MOV [ 12293], AL
1980h : A0FA2F              MOV         MOV AL, [ 12282]
1983h : C0E005              SHL         SHL AL, 5
1986h : C0E805              SHR         SHR AL, 5
1989h : A20730              MOV         MOV [ 12295], AL
198Ch : A0FA2F              MOV         MOV AL, [ 12282]
198Fh : C0E003              SHL         SHL AL, 3
1992h : C0E806              SHR         SHR AL, 6
1995h : A20430              MOV         MOV [ 12292], AL
1998h : E87BE8              CALL        CALL 536
199Bh : E8E5EF              CALL        CALL 2437
199Eh : E897E9              CALL        CALL 826
19A1h : EB43                JMP         JMP 43h
19A3h : 90                  NOP         NOP
19A4h : A0FA2F              MOV         MOV AL, [ 12282]
19A7h : 3C8D                CMP         CMP AL,  141
19A9h : 7405                JE          JE 05h
19ABh : 90                  NOP         NOP
19ACh : 90                  NOP         NOP
19ADh : EB3A                JMP         JMP 3Ah
19AFh : 90                  NOP         NOP
19B0h : C706F72FEA30        MOV         MOV [F72Fh], 12522
19B6h : E858E9              CALL        CALL 787
19B9h : E85AE8              CALL        CALL 536
19BCh : A0FA2F              MOV         MOV AL, [ 12282]
19BFh : C0E806              SHR         SHR AL, 6
19C2h : A20530              MOV         MOV [ 12293], AL
19C5h : A0FA2F              MOV         MOV AL, [ 12282]
19C8h : C0E002              SHL         SHL AL, 2
19CBh : C0E805              SHR         SHR AL, 5
19CEh : A20630              MOV         MOV [ 12294], AL
19D1h : A0FA2F              MOV         MOV AL, [ 12282]
19D4h : C0E005              SHL         SHL AL, 5
19D7h : C0E805              SHR         SHR AL, 5
19DAh : A20730              MOV         MOV [ 12295], AL
19DDh : E836E8              CALL        CALL 536
19E0h : E8DEEF              CALL        CALL 2499
19E3h : E852E9              CALL        CALL 826
19E6h : EB55                JMP         JMP 55h
19E8h : 90                  NOP         NOP
19E9h : A0FA2F              MOV         MOV AL, [ 12282]
19ECh : 3C8F                CMP         CMP AL,  143
19EEh : 7405                JE          JE 05h
19F0h : 90                  NOP         NOP
19F1h : 90                  NOP         NOP
19F2h : EB4C                JMP         JMP 4Ch
19F4h : 90                  NOP         NOP
19F5h : 803EFD2F01          CMP         CMP [FD2Fh],  1
19FAh : 7405                JE          JE 05h
19FCh : 90                  NOP         NOP
19FDh : 90                  NOP         NOP
19FEh : EB40                JMP         JMP 40h
1A00h : 90                  NOP         NOP
1A01h : A0FC2F              MOV         MOV AL, [ 12284]
1A04h : C0E002              SHL         SHL AL, 2
1A07h : C0E805              SHR         SHR AL, 5
1A0Ah : 3C00                CMP         CMP AL,  0
1A0Ch : 7405                JE          JE 05h
1A0Eh : 90                  NOP         NOP
1A0Fh : 90                  NOP         NOP
1A10h : EB2E                JMP         JMP 2Eh
1A12h : 90                  NOP         NOP
1A13h : C706F72F3730        MOV         MOV [F72Fh], 12343
1A19h : E8F5E8              CALL        CALL 787
1A1Ch : E8F7E7              CALL        CALL 536
1A1Fh : A0FA2F              MOV         MOV AL, [ 12282]
1A22h : C0E806              SHR         SHR AL, 6
1A25h : A20530              MOV         MOV [ 12293], AL
1A28h : A0FA2F              MOV         MOV AL, [ 12282]
1A2Bh : C0E005              SHL         SHL AL, 5
1A2Eh : C0E805              SHR         SHR AL, 5
1A31h : A20730              MOV         MOV [ 12295], AL
1A34h : E8DFE7              CALL        CALL 536
1A37h : E8A5EF              CALL        CALL 2529
1A3Ah : E8FBE8              CALL        CALL 826
1A3Dh : EB1C                JMP         JMP 1Ch
1A3Fh : 90                  NOP         NOP
1A40h : A0FA2F              MOV         MOV AL, [ 12282]
1A43h : 3C90                CMP         CMP AL,  144
1A45h : 7405                JE          JE 05h
1A47h : 90                  NOP         NOP
1A48h : 90                  NOP         NOP
1A49h : EB13                JMP         JMP 13h
1A4Bh : 90                  NOP         NOP
1A4Ch : C706F72F2A30        MOV         MOV [F72Fh], 12330
1A52h : E8BCE8              CALL        CALL 787
1A55h : E8BEE7              CALL        CALL 536
1A58h : E8DDE8              CALL        CALL 826
1A5Bh : EB2E                JMP         JMP 2Eh
1A5Dh : 90                  NOP         NOP
1A5Eh : A0FA2F              MOV         MOV AL, [ 12282]
1A61h : C0E803              SHR         SHR AL, 3
1A64h : 3C12                CMP         CMP AL,  18
1A66h : 7405                JE          JE 05h
1A68h : 90                  NOP         NOP
1A69h : 90                  NOP         NOP
1A6Ah : EB22                JMP         JMP 22h
1A6Ch : 90                  NOP         NOP
1A6Dh : C706F72FE530        MOV         MOV [F72Fh], 12517
1A73h : E89BE8              CALL        CALL 787
1A76h : A0FA2F              MOV         MOV AL, [ 12282]
1A79h : C0E005              SHL         SHL AL, 5
1A7Ch : C0E805              SHR         SHR AL, 5
1A7Fh : A20630              MOV         MOV [ 12294], AL
1A82h : E891E7              CALL        CALL 536
1A85h : E87CEE              CALL        CALL 2310
1A88h : E8ADE8              CALL        CALL 826
1A8Bh : EB1C                JMP         JMP 1Ch
1A8Dh : 90                  NOP         NOP
1A8Eh : A0FA2F              MOV         MOV AL, [ 12282]
1A91h : 3C98                CMP         CMP AL,  152
1A93h : 7405                JE          JE 05h
1A95h : 90                  NOP         NOP
1A96h : 90                  NOP         NOP
1A97h : EB13                JMP         JMP 13h
1A99h : 90                  NOP         NOP
1A9Ah : C706F72FEE30        MOV         MOV [F72Fh], 12526
1AA0h : E86EE8              CALL        CALL 787
1AA3h : E870E7              CALL        CALL 536
1AA6h : E88FE8              CALL        CALL 826
1AA9h : EB1C                JMP         JMP 1Ch
1AABh : 90                  NOP         NOP
1AACh : A0FA2F              MOV         MOV AL, [ 12282]
1AAFh : 3C99                CMP         CMP AL,  153
1AB1h : 7405                JE          JE 05h
1AB3h : 90                  NOP         NOP
1AB4h : 90                  NOP         NOP
1AB5h : EB13                JMP         JMP 13h
1AB7h : 90                  NOP         NOP
1AB8h : C706F72FF230        MOV         MOV [F72Fh], 12530
1ABEh : E850E8              CALL        CALL 787
1AC1h : E852E7              CALL        CALL 536
1AC4h : E871E8              CALL        CALL 826
1AC7h : EB22                JMP         JMP 22h
1AC9h : 90                  NOP         NOP
1ACAh : A0FA2F              MOV         MOV AL, [ 12282]
1ACDh : 3C9A                CMP         CMP AL,  154
1ACFh : 7405                JE          JE 05h
1AD1h : 90                  NOP         NOP
1AD2h : 90                  NOP         NOP
1AD3h : EB19                JMP         JMP 19h
1AD5h : 90                  NOP         NOP
1AD6h : C706F72FF630        MOV         MOV [F72Fh], 12534
1ADCh : E832E8              CALL        CALL 787
1ADFh : E834E7              CALL        CALL 536
1AE2h : E89FE9              CALL        CALL 1158
1AE5h : E80CEF              CALL        CALL 2550
1AE8h : E84DE8              CALL        CALL 826
1AEBh : EB1C                JMP         JMP 1Ch
1AEDh : 90                  NOP         NOP
1AEEh : A0FA2F              MOV         MOV AL, [ 12282]
1AF1h : 3C9B                CMP         CMP AL,  155
1AF3h : 7405                JE          JE 05h
1AF5h : 90                  NOP         NOP
1AF6h : 90                  NOP         NOP
1AF7h : EB13                JMP         JMP 13h
1AF9h : 90                  NOP         NOP
1AFAh : C706F72FFB30        MOV         MOV [F72Fh], 12539
1B00h : E80EE8              CALL        CALL 787
1B03h : E810E7              CALL        CALL 536
1B06h : E82FE8              CALL        CALL 826
1B09h : EB1C                JMP         JMP 1Ch
1B0Bh : 90                  NOP         NOP
1B0Ch : A0FA2F              MOV         MOV AL, [ 12282]
1B0Fh : 3C9C                CMP         CMP AL,  156
1B11h : 7405                JE          JE 05h
1B13h : 90                  NOP         NOP
1B14h : 90                  NOP         NOP
1B15h : EB13                JMP         JMP 13h
1B17h : 90                  NOP         NOP
1B18h : C706F72F0031        MOV         MOV [F72Fh], 12544
1B1Eh : E8F0E7              CALL        CALL 787
1B21h : E8F2E6              CALL        CALL 536
1B24h : E811E8              CALL        CALL 826
1B27h : EB1C                JMP         JMP 1Ch
1B29h : 90                  NOP         NOP
1B2Ah : A0FA2F              MOV         MOV AL, [ 12282]
1B2Dh : 3C9D                CMP         CMP AL,  157
1B2Fh : 7405                JE          JE 05h
1B31h : 90                  NOP         NOP
1B32h : 90                  NOP         NOP
1B33h : EB13                JMP         JMP 13h
1B35h : 90                  NOP         NOP
1B36h : C706F72F0631        MOV         MOV [F72Fh], 12550
1B3Ch : E8D2E7              CALL        CALL 787
1B3Fh : E8D4E6              CALL        CALL 536
1B42h : E8F3E7              CALL        CALL 826
1B45h : EB1C                JMP         JMP 1Ch
1B47h : 90                  NOP         NOP
1B48h : A0FA2F              MOV         MOV AL, [ 12282]
1B4Bh : 3C9E                CMP         CMP AL,  158
1B4Dh : 7405                JE          JE 05h
1B4Fh : 90                  NOP         NOP
1B50h : 90                  NOP         NOP
1B51h : EB13                JMP         JMP 13h
1B53h : 90                  NOP         NOP
1B54h : C706F72F0B31        MOV         MOV [F72Fh], 12555
1B5Ah : E8B4E7              CALL        CALL 787
1B5Dh : E8B6E6              CALL        CALL 536
1B60h : E8D5E7              CALL        CALL 826
1B63h : EB1C                JMP         JMP 1Ch
1B65h : 90                  NOP         NOP
1B66h : A0FA2F              MOV         MOV AL, [ 12282]
1B69h : 3C9F                CMP         CMP AL,  159
1B6Bh : 7405                JE          JE 05h
1B6Dh : 90                  NOP         NOP
1B6Eh : 90                  NOP         NOP
1B6Fh : EB13                JMP         JMP 13h
1B71h : 90                  NOP         NOP
1B72h : C706F72F1031        MOV         MOV [F72Fh], 12560
1B78h : E896E7              CALL        CALL 787
1B7Bh : E898E6              CALL        CALL 536
1B7Eh : E8B7E7              CALL        CALL 826
1B81h : EB2D                JMP         JMP 2Dh
1B83h : 90                  NOP         NOP
1B84h : A0FA2F              MOV         MOV AL, [ 12282]
1B87h : D0E8                SHR         SHR AL,  1
1B89h : 3C50                CMP         CMP AL,  80
1B8Bh : 7405                JE          JE 05h
1B8Dh : 90                  NOP         NOP
1B8Eh : 90                  NOP         NOP
1B8Fh : EB22                JMP         JMP 22h
1B91h : 90                  NOP         NOP
1B92h : C706F72F2630        MOV         MOV [F72Fh], 12326
1B98h : E876E7              CALL        CALL 787
1B9Bh : A0FA2F              MOV         MOV AL, [ 12282]
1B9Eh : C0E007              SHL         SHL AL, 7
1BA1h : C0E807              SHR         SHR AL, 7
1BA4h : A20030              MOV         MOV [ 12288], AL
1BA7h : E86CE6              CALL        CALL 536
1BAAh : E825F0              CALL        CALL 3028
1BADh : E888E7              CALL        CALL 826
1BB0h : EB2D                JMP         JMP 2Dh
1BB2h : 90                  NOP         NOP
1BB3h : A0FA2F              MOV         MOV AL, [ 12282]
1BB6h : D0E8                SHR         SHR AL,  1
1BB8h : 3C51                CMP         CMP AL,  81
1BBAh : 7405                JE          JE 05h
1BBCh : 90                  NOP         NOP
1BBDh : 90                  NOP         NOP
1BBEh : EB22                JMP         JMP 22h
1BC0h : 90                  NOP         NOP
1BC1h : C706F72F2630        MOV         MOV [F72Fh], 12326
1BC7h : E847E7              CALL        CALL 787
1BCAh : A0FA2F              MOV         MOV AL, [ 12282]
1BCDh : C0E007              SHL         SHL AL, 7
1BD0h : C0E807              SHR         SHR AL, 7
1BD3h : A20030              MOV         MOV [ 12288], AL
1BD6h : E83DE6              CALL        CALL 536
1BD9h : E821F0              CALL        CALL 3071
1BDCh : E859E7              CALL        CALL 826
1BDFh : EB3F                JMP         JMP 3Fh
1BE1h : 90                  NOP         NOP
1BE2h : A0FA2F              MOV         MOV AL, [ 12282]
1BE5h : D0E8                SHR         SHR AL,  1
1BE7h : 3C52                CMP         CMP AL,  82
1BE9h : 7405                JE          JE 05h
1BEBh : 90                  NOP         NOP
1BECh : 90                  NOP         NOP
1BEDh : EB34                JMP         JMP 34h
1BEFh : 90                  NOP         NOP
1BF0h : A0FA2F              MOV         MOV AL, [ 12282]
1BF3h : C0E007              SHL         SHL AL, 7
1BF6h : C0E807              SHR         SHR AL, 7
1BF9h : A20030              MOV         MOV [ 12288], AL
1BFCh : E817E6              CALL        CALL 536
1BFFh : 803E003001          CMP         CMP [0030h],  1
1C04h : 740B                JE          JE 0Bh
1C06h : 90                  NOP         NOP
1C07h : 90                  NOP         NOP
1C08h : C706F72F1531        MOV         MOV [F72Fh], 12565
1C0Eh : EB07                JMP         JMP 07h
1C10h : 90                  NOP         NOP
1C11h : C706F72F1B31        MOV         MOV [F72Fh], 12571
1C17h : E8F7E6              CALL        CALL 787
1C1Ah : E891E7              CALL        CALL 944
1C1Dh : E818E7              CALL        CALL 826
1C20h : EB3C                JMP         JMP 3Ch
1C22h : 90                  NOP         NOP
1C23h : A0FA2F              MOV         MOV AL, [ 12282]
1C26h : D0E8                SHR         SHR AL,  1
1C28h : 3C53                CMP         CMP AL,  83
1C2Ah : 7405                JE          JE 05h
1C2Ch : 90                  NOP         NOP
1C2Dh : 90                  NOP         NOP
1C2Eh : EB31                JMP         JMP 31h
1C30h : 90                  NOP         NOP
1C31h : A0FA2F              MOV         MOV AL, [ 12282]
1C34h : C0E007              SHL         SHL AL, 7
1C37h : C0E807              SHR         SHR AL, 7
1C3Ah : A20030              MOV         MOV [ 12288], AL
1C3Dh : E8D6E5              CALL        CALL 536
1C40h : 803E003001          CMP         CMP [0030h],  1
1C45h : 740B                JE          JE 0Bh
1C47h : 90                  NOP         NOP
1C48h : 90                  NOP         NOP
1C49h : C706F72F2131        MOV         MOV [F72Fh], 12577
1C4Fh : EB07                JMP         JMP 07h
1C51h : 90                  NOP         NOP
1C52h : C706F72F2731        MOV         MOV [F72Fh], 12583
1C58h : E8B6E6              CALL        CALL 787
1C5Bh : E8DAE6              CALL        CALL 826
1C5Eh : EB2D                JMP         JMP 2Dh
1C60h : 90                  NOP         NOP
1C61h : A0FA2F              MOV         MOV AL, [ 12282]
1C64h : D0E8                SHR         SHR AL,  1
1C66h : 3C54                CMP         CMP AL,  84
1C68h : 7405                JE          JE 05h
1C6Ah : 90                  NOP         NOP
1C6Bh : 90                  NOP         NOP
1C6Ch : EB22                JMP         JMP 22h
1C6Eh : 90                  NOP         NOP
1C6Fh : C706F72FE030        MOV         MOV [F72Fh], 12512
1C75h : E899E6              CALL        CALL 787
1C78h : A0FA2F              MOV         MOV AL, [ 12282]
1C7Bh : C0E007              SHL         SHL AL, 7
1C7Eh : C0E807              SHR         SHR AL, 7
1C81h : A20030              MOV         MOV [ 12288], AL
1C84h : E88FE5              CALL        CALL 536
1C87h : E82AEC              CALL        CALL 2230
1C8Ah : E8ABE6              CALL        CALL 826
1C8Dh : EB3C                JMP         JMP 3Ch
1C8Fh : 90                  NOP         NOP
1C90h : A0FA2F              MOV         MOV AL, [ 12282]
1C93h : D0E8                SHR         SHR AL,  1
1C95h : 3C55                CMP         CMP AL,  85
1C97h : 7405                JE          JE 05h
1C99h : 90                  NOP         NOP
1C9Ah : 90                  NOP         NOP
1C9Bh : EB31                JMP         JMP 31h
1C9Dh : 90                  NOP         NOP
1C9Eh : A0FA2F              MOV         MOV AL, [ 12282]
1CA1h : C0E007              SHL         SHL AL, 7
1CA4h : C0E807              SHR         SHR AL, 7
1CA7h : A20030              MOV         MOV [ 12288], AL
1CAAh : E869E5              CALL        CALL 536
1CADh : 803E003001          CMP         CMP [0030h],  1
1CB2h : 740B                JE          JE 0Bh
1CB4h : 90                  NOP         NOP
1CB5h : 90                  NOP         NOP
1CB6h : C706F72F2D31        MOV         MOV [F72Fh], 12589
1CBCh : EB07                JMP         JMP 07h
1CBEh : 90                  NOP         NOP
1CBFh : C706F72F3331        MOV         MOV [F72Fh], 12595
1CC5h : E849E6              CALL        CALL 787
1CC8h : E86DE6              CALL        CALL 826
1CCBh : EB3C                JMP         JMP 3Ch
1CCDh : 90                  NOP         NOP
1CCEh : A0FA2F              MOV         MOV AL, [ 12282]
1CD1h : D0E8                SHR         SHR AL,  1
1CD3h : 3C56                CMP         CMP AL,  86
1CD5h : 7405                JE          JE 05h
1CD7h : 90                  NOP         NOP
1CD8h : 90                  NOP         NOP
1CD9h : EB31                JMP         JMP 31h
1CDBh : 90                  NOP         NOP
1CDCh : A0FA2F              MOV         MOV AL, [ 12282]
1CDFh : C0E007              SHL         SHL AL, 7
1CE2h : C0E807              SHR         SHR AL, 7
1CE5h : A20030              MOV         MOV [ 12288], AL
1CE8h : E82BE5              CALL        CALL 536
1CEBh : 803E003001          CMP         CMP [0030h],  1
1CF0h : 740B                JE          JE 0Bh
1CF2h : 90                  NOP         NOP
1CF3h : 90                  NOP         NOP
1CF4h : C706F72F3931        MOV         MOV [F72Fh], 12601
1CFAh : EB07                JMP         JMP 07h
1CFCh : 90                  NOP         NOP
1CFDh : C706F72F3F31        MOV         MOV [F72Fh], 12607
1D03h : E80BE6              CALL        CALL 787
1D06h : E82FE6              CALL        CALL 826
1D09h : EB3C                JMP         JMP 3Ch
1D0Bh : 90                  NOP         NOP
1D0Ch : A0FA2F              MOV         MOV AL, [ 12282]
1D0Fh : D0E8                SHR         SHR AL,  1
1D11h : 3C57                CMP         CMP AL,  87
1D13h : 7405                JE          JE 05h
1D15h : 90                  NOP         NOP
1D16h : 90                  NOP         NOP
1D17h : EB31                JMP         JMP 31h
1D19h : 90                  NOP         NOP
1D1Ah : A0FA2F              MOV         MOV AL, [ 12282]
1D1Dh : C0E007              SHL         SHL AL, 7
1D20h : C0E807              SHR         SHR AL, 7
1D23h : A20030              MOV         MOV [ 12288], AL
1D26h : E8EDE4              CALL        CALL 536
1D29h : 803E003001          CMP         CMP [0030h],  1
1D2Eh : 740B                JE          JE 0Bh
1D30h : 90                  NOP         NOP
1D31h : 90                  NOP         NOP
1D32h : C706F72F4531        MOV         MOV [F72Fh], 12613
1D38h : EB07                JMP         JMP 07h
1D3Ah : 90                  NOP         NOP
1D3Bh : C706F72F4B31        MOV         MOV [F72Fh], 12619
1D41h : E8CDE5              CALL        CALL 787
1D44h : E8F1E5              CALL        CALL 826
1D47h : EB3A                JMP         JMP 3Ah
1D49h : 90                  NOP         NOP
1D4Ah : A0FA2F              MOV         MOV AL, [ 12282]
1D4Dh : C0E804              SHR         SHR AL, 4
1D50h : 3C0B                CMP         CMP AL,  11
1D52h : 7405                JE          JE 05h
1D54h : 90                  NOP         NOP
1D55h : 90                  NOP         NOP
1D56h : EB2E                JMP         JMP 2Eh
1D58h : 90                  NOP         NOP
1D59h : C706F72F2630        MOV         MOV [F72Fh], 12326
1D5Fh : E8AFE5              CALL        CALL 787
1D62h : A0FA2F              MOV         MOV AL, [ 12282]
1D65h : C0E005              SHL         SHL AL, 5
1D68h : C0E805              SHR         SHR AL, 5
1D6Bh : A20630              MOV         MOV [ 12294], AL
1D6Eh : A0FA2F              MOV         MOV AL, [ 12282]
1D71h : C0E004              SHL         SHL AL, 4
1D74h : C0E807              SHR         SHR AL, 7
1D77h : A20030              MOV         MOV [ 12288], AL
1D7Ah : E899E4              CALL        CALL 536
1D7Dh : E8E8EC              CALL        CALL 2666
1D80h : E8B5E5              CALL        CALL 826
1D83h : EB1F                JMP         JMP 1Fh
1D85h : 90                  NOP         NOP
1D86h : A0FA2F              MOV         MOV AL, [ 12282]
1D89h : 3CC2                CMP         CMP AL,  194
1D8Bh : 7405                JE          JE 05h
1D8Dh : 90                  NOP         NOP
1D8Eh : 90                  NOP         NOP
1D8Fh : EB16                JMP         JMP 16h
1D91h : 90                  NOP         NOP
1D92h : C706F72F5131        MOV         MOV [F72Fh], 12625
1D98h : E876E5              CALL        CALL 787
1D9Bh : E878E4              CALL        CALL 536
1D9Eh : E805ED              CALL        CALL 2728
1DA1h : E894E5              CALL        CALL 826
1DA4h : EB1C                JMP         JMP 1Ch
1DA6h : 90                  NOP         NOP
1DA7h : A0FA2F              MOV         MOV AL, [ 12282]
1DAAh : 3CC3                CMP         CMP AL,  195
1DACh : 7405                JE          JE 05h
1DAEh : 90                  NOP         NOP
1DAFh : 90                  NOP         NOP
1DB0h : EB13                JMP         JMP 13h
1DB2h : 90                  NOP         NOP
1DB3h : C706F72F5131        MOV         MOV [F72Fh], 12625
1DB9h : E855E5              CALL        CALL 787
1DBCh : E857E4              CALL        CALL 536
1DBFh : E876E5              CALL        CALL 826
1DC2h : EB43                JMP         JMP 43h
1DC4h : 90                  NOP         NOP
1DC5h : A0FA2F              MOV         MOV AL, [ 12282]
1DC8h : 3CC4                CMP         CMP AL,  196
1DCAh : 7405                JE          JE 05h
1DCCh : 90                  NOP         NOP
1DCDh : 90                  NOP         NOP
1DCEh : EB3A                JMP         JMP 3Ah
1DD0h : 90                  NOP         NOP
1DD1h : C706F72F5A31        MOV         MOV [F72Fh], 12634
1DD7h : E837E5              CALL        CALL 787
1DDAh : E839E4              CALL        CALL 536
1DDDh : A0FA2F              MOV         MOV AL, [ 12282]
1DE0h : C0E806              SHR         SHR AL, 6
1DE3h : A20530              MOV         MOV [ 12293], AL
1DE6h : A0FA2F              MOV         MOV AL, [ 12282]
1DE9h : C0E002              SHL         SHL AL, 2
1DECh : C0E805              SHR         SHR AL, 5
1DEFh : A20630              MOV         MOV [ 12294], AL
1DF2h : A0FA2F              MOV         MOV AL, [ 12282]
1DF5h : C0E005              SHL         SHL AL, 5
1DF8h : C0E805              SHR         SHR AL, 5
1DFBh : A20730              MOV         MOV [ 12295], AL
1DFEh : E815E4              CALL        CALL 536
1E01h : E8BDEB              CALL        CALL 2499
1E04h : E831E5              CALL        CALL 826
1E07h : EB43                JMP         JMP 43h
1E09h : 90                  NOP         NOP
1E0Ah : A0FA2F              MOV         MOV AL, [ 12282]
1E0Dh : 3CC5                CMP         CMP AL,  197
1E0Fh : 7405                JE          JE 05h
1E11h : 90                  NOP         NOP
1E12h : 90                  NOP         NOP
1E13h : EB3A                JMP         JMP 3Ah
1E15h : 90                  NOP         NOP
1E16h : C706F72F5E31        MOV         MOV [F72Fh], 12638
1E1Ch : E8F2E4              CALL        CALL 787
1E1Fh : E8F4E3              CALL        CALL 536
1E22h : A0FA2F              MOV         MOV AL, [ 12282]
1E25h : C0E806              SHR         SHR AL, 6
1E28h : A20530              MOV         MOV [ 12293], AL
1E2Bh : A0FA2F              MOV         MOV AL, [ 12282]
1E2Eh : C0E002              SHL         SHL AL, 2
1E31h : C0E805              SHR         SHR AL, 5
1E34h : A20630              MOV         MOV [ 12294], AL
1E37h : A0FA2F              MOV         MOV AL, [ 12282]
1E3Ah : C0E005              SHL         SHL AL, 5
1E3Dh : C0E805              SHR         SHR AL, 5
1E40h : A20730              MOV         MOV [ 12295], AL
1E43h : E8D0E3              CALL        CALL 536
1E46h : E878EB              CALL        CALL 2499
1E49h : E8ECE4              CALL        CALL 826
1E4Ch : EB63                JMP         JMP 63h
1E4Eh : 90                  NOP         NOP
1E4Fh : A0FA2F              MOV         MOV AL, [ 12282]
1E52h : D0E8                SHR         SHR AL,  1
1E54h : 3C63                CMP         CMP AL,  99
1E56h : 7405                JE          JE 05h
1E58h : 90                  NOP         NOP
1E59h : 90                  NOP         NOP
1E5Ah : EB58                JMP         JMP 58h
1E5Ch : 90                  NOP         NOP
1E5Dh : 803EFD2F01          CMP         CMP [FD2Fh],  1
1E62h : 7405                JE          JE 05h
1E64h : 90                  NOP         NOP
1E65h : 90                  NOP         NOP
1E66h : EB4C                JMP         JMP 4Ch
1E68h : 90                  NOP         NOP
1E69h : A0FC2F              MOV         MOV AL, [ 12284]
1E6Ch : C0E002              SHL         SHL AL, 2
1E6Fh : C0E805              SHR         SHR AL, 5
1E72h : 3C00                CMP         CMP AL,  0
1E74h : 7405                JE          JE 05h
1E76h : 90                  NOP         NOP
1E77h : 90                  NOP         NOP
1E78h : EB3A                JMP         JMP 3Ah
1E7Ah : 90                  NOP         NOP
1E7Bh : C706F72F2630        MOV         MOV [F72Fh], 12326
1E81h : E88DE4              CALL        CALL 787
1E84h : A0FA2F              MOV         MOV AL, [ 12282]
1E87h : C0E007              SHL         SHL AL, 7
1E8Ah : C0E807              SHR         SHR AL, 7
1E8Dh : A20030              MOV         MOV [ 12288], AL
1E90h : E883E3              CALL        CALL 536
1E93h : A0FA2F              MOV         MOV AL, [ 12282]
1E96h : C0E806              SHR         SHR AL, 6
1E99h : A20530              MOV         MOV [ 12293], AL
1E9Ch : A0FA2F              MOV         MOV AL, [ 12282]
1E9Fh : C0E005              SHL         SHL AL, 5
1EA2h : C0E805              SHR         SHR AL, 5
1EA5h : A20730              MOV         MOV [ 12295], AL
1EA8h : E86BE3              CALL        CALL 536
1EABh : E818EC              CALL        CALL 2760
1EAEh : E887E4              CALL        CALL 826
1EB1h : EB1F                JMP         JMP 1Fh
1EB3h : 90                  NOP         NOP
1EB4h : A0FA2F              MOV         MOV AL, [ 12282]
1EB7h : 3CCA                CMP         CMP AL,  202
1EB9h : 7405                JE          JE 05h
1EBBh : 90                  NOP         NOP
1EBCh : 90                  NOP         NOP
1EBDh : EB16                JMP         JMP 16h
1EBFh : 90                  NOP         NOP
1EC0h : C706F72F6231        MOV         MOV [F72Fh], 12642
1EC6h : E848E4              CALL        CALL 787
1EC9h : E84AE3              CALL        CALL 536
1ECCh : E8D7EB              CALL        CALL 2728
1ECFh : E866E4              CALL        CALL 826
1ED2h : EB1C                JMP         JMP 1Ch
1ED4h : 90                  NOP         NOP
1ED5h : A0FA2F              MOV         MOV AL, [ 12282]
1ED8h : 3CCB                CMP         CMP AL,  203
1EDAh : 7405                JE          JE 05h
1EDCh : 90                  NOP         NOP
1EDDh : 90                  NOP         NOP
1EDEh : EB13                JMP         JMP 13h
1EE0h : 90                  NOP         NOP
1EE1h : C706F72F6231        MOV         MOV [F72Fh], 12642
1EE7h : E827E4              CALL        CALL 787
1EEAh : E829E3              CALL        CALL 536
1EEDh : E848E4              CALL        CALL 826
1EF0h : EB1C                JMP         JMP 1Ch
1EF2h : 90                  NOP         NOP
1EF3h : A0FA2F              MOV         MOV AL, [ 12282]
1EF6h : 3CCC                CMP         CMP AL,  204
1EF8h : 7405                JE          JE 05h
1EFAh : 90                  NOP         NOP
1EFBh : 90                  NOP         NOP
1EFCh : EB13                JMP         JMP 13h
1EFEh : 90                  NOP         NOP
1EFFh : C706F72F6731        MOV         MOV [F72Fh], 12647
1F05h : E809E4              CALL        CALL 787
1F08h : E80BE3              CALL        CALL 536
1F0Bh : E82AE4              CALL        CALL 826
1F0Eh : EB28                JMP         JMP 28h
1F10h : 90                  NOP         NOP
1F11h : A0FA2F              MOV         MOV AL, [ 12282]
1F14h : 3CCD                CMP         CMP AL,  205
1F16h : 7405                JE          JE 05h
1F18h : 90                  NOP         NOP
1F19h : 90                  NOP         NOP
1F1Ah : EB1F                JMP         JMP 1Fh
1F1Ch : 90                  NOP         NOP
1F1Dh : C706F72F6D31        MOV         MOV [F72Fh], 12653
1F23h : E8EBE3              CALL        CALL 787
1F26h : E8EDE2              CALL        CALL 536
1F29h : A0FA2F              MOV         MOV AL, [ 12282]
1F2Ch : A20830              MOV         MOV [ 12296], AL
1F2Fh : E8E4E2              CALL        CALL 536
1F32h : E8EEEB              CALL        CALL 2853
1F35h : E800E4              CALL        CALL 826
1F38h : EB1C                JMP         JMP 1Ch
1F3Ah : 90                  NOP         NOP
1F3Bh : A0FA2F              MOV         MOV AL, [ 12282]
1F3Eh : 3CCE                CMP         CMP AL,  206
1F40h : 7405                JE          JE 05h
1F42h : 90                  NOP         NOP
1F43h : 90                  NOP         NOP
1F44h : EB13                JMP         JMP 13h
1F46h : 90                  NOP         NOP
1F47h : C706F72F7131        MOV         MOV [F72Fh], 12657
1F4Dh : E8C1E3              CALL        CALL 787
1F50h : E8C3E2              CALL        CALL 536
1F53h : E8E2E3              CALL        CALL 826
1F56h : EB1C                JMP         JMP 1Ch
1F58h : 90                  NOP         NOP
1F59h : A0FA2F              MOV         MOV AL, [ 12282]
1F5Ch : 3CCF                CMP         CMP AL,  207
1F5Eh : 7405                JE          JE 05h
1F60h : 90                  NOP         NOP
1F61h : 90                  NOP         NOP
1F62h : EB13                JMP         JMP 13h
1F64h : 90                  NOP         NOP
1F65h : C706F72F7631        MOV         MOV [F72Fh], 12662
1F6Bh : E8A3E3              CALL        CALL 787
1F6Eh : E8A5E2              CALL        CALL 536
1F71h : E8C4E3              CALL        CALL 826
1F74h : EB70                JMP         JMP 70h
1F76h : 90                  NOP         NOP
1F77h : A0FA2F              MOV         MOV AL, [ 12282]
1F7Ah : C0E802              SHR         SHR AL, 2
1F7Dh : 3C34                CMP         CMP AL,  52
1F7Fh : 7405                JE          JE 05h
1F81h : 90                  NOP         NOP
1F82h : 90                  NOP         NOP
1F83h : EB64                JMP         JMP 64h
1F85h : 90                  NOP         NOP
1F86h : 803EFD2F01          CMP         CMP [FD2Fh],  1
1F8Bh : 7405                JE          JE 05h
1F8Dh : 90                  NOP         NOP
1F8Eh : 90                  NOP         NOP
1F8Fh : EB58                JMP         JMP 58h
1F91h : 90                  NOP         NOP
1F92h : A0FC2F              MOV         MOV AL, [ 12284]
1F95h : C0E002              SHL         SHL AL, 2
1F98h : C0E805              SHR         SHR AL, 5
1F9Bh : 3C00                CMP         CMP AL,  0
1F9Dh : 7405                JE          JE 05h
1F9Fh : 90                  NOP         NOP
1FA0h : 90                  NOP         NOP
1FA1h : EB46                JMP         JMP 46h
1FA3h : 90                  NOP         NOP
1FA4h : C706F72F7B31        MOV         MOV [F72Fh], 12667
1FAAh : E864E3              CALL        CALL 787
1FADh : A0FA2F              MOV         MOV AL, [ 12282]
1FB0h : C0E006              SHL         SHL AL, 6
1FB3h : C0E807              SHR         SHR AL, 7
1FB6h : A20330              MOV         MOV [ 12291], AL
1FB9h : A0FA2F              MOV         MOV AL, [ 12282]
1FBCh : C0E007              SHL         SHL AL, 7
1FBFh : C0E807              SHR         SHR AL, 7
1FC2h : A20030              MOV         MOV [ 12288], AL
1FC5h : E84EE2              CALL        CALL 536
1FC8h : A0FA2F              MOV         MOV AL, [ 12282]
1FCBh : C0E806              SHR         SHR AL, 6
1FCEh : A20530              MOV         MOV [ 12293], AL
1FD1h : A0FA2F              MOV         MOV AL, [ 12282]
1FD4h : C0E005              SHL         SHL AL, 5
1FD7h : C0E805              SHR         SHR AL, 5
1FDAh : A20730              MOV         MOV [ 12295], AL
1FDDh : E836E2              CALL        CALL 536
1FE0h : E851EB              CALL        CALL 2870
1FE3h : E852E3              CALL        CALL 826
1FE6h : EB70                JMP         JMP 70h
1FE8h : 90                  NOP         NOP
1FE9h : A0FA2F              MOV         MOV AL, [ 12282]
1FECh : C0E802              SHR         SHR AL, 2
1FEFh : 3C34                CMP         CMP AL,  52
1FF1h : 7405                JE          JE 05h
1FF3h : 90                  NOP         NOP
1FF4h : 90                  NOP         NOP
1FF5h : EB64                JMP         JMP 64h
1FF7h : 90                  NOP         NOP
1FF8h : 803EFD2F01          CMP         CMP [FD2Fh],  1
1FFDh : 7405                JE          JE 05h
1FFFh : 90                  NOP         NOP
2000h : 90                  NOP         NOP
2001h : EB58                JMP         JMP 58h
2003h : 90                  NOP         NOP
2004h : A0FC2F              MOV         MOV AL, [ 12284]
2007h : C0E002              SHL         SHL AL, 2
200Ah : C0E805              SHR         SHR AL, 5
200Dh : 3C01                CMP         CMP AL,  1
200Fh : 7405                JE          JE 05h
2011h : 90                  NOP         NOP
2012h : 90                  NOP         NOP
2013h : EB46                JMP         JMP 46h
2015h : 90                  NOP         NOP
2016h : C706F72F7F31        MOV         MOV [F72Fh], 12671
201Ch : E8F2E2              CALL        CALL 787
201Fh : A0FA2F              MOV         MOV AL, [ 12282]
2022h : C0E006              SHL         SHL AL, 6
2025h : C0E807              SHR         SHR AL, 7
2028h : A20330              MOV         MOV [ 12291], AL
202Bh : A0FA2F              MOV         MOV AL, [ 12282]
202Eh : C0E007              SHL         SHL AL, 7
2031h : C0E807              SHR         SHR AL, 7
2034h : A20030              MOV         MOV [ 12288], AL
2037h : E8DCE1              CALL        CALL 536
203Ah : A0FA2F              MOV         MOV AL, [ 12282]
203Dh : C0E806              SHR         SHR AL, 6
2040h : A20530              MOV         MOV [ 12293], AL
2043h : A0FA2F              MOV         MOV AL, [ 12282]
2046h : C0E005              SHL         SHL AL, 5
2049h : C0E805              SHR         SHR AL, 5
204Ch : A20730              MOV         MOV [ 12295], AL
204Fh : E8C4E1              CALL        CALL 536
2052h : E8DFEA              CALL        CALL 2870
2055h : E8E0E2              CALL        CALL 826
2058h : EB70                JMP         JMP 70h
205Ah : 90                  NOP         NOP
205Bh : A0FA2F              MOV         MOV AL, [ 12282]
205Eh : C0E802              SHR         SHR AL, 2
2061h : 3C34                CMP         CMP AL,  52
2063h : 7405                JE          JE 05h
2065h : 90                  NOP         NOP
2066h : 90                  NOP         NOP
2067h : EB64                JMP         JMP 64h
2069h : 90                  NOP         NOP
206Ah : 803EFD2F01          CMP         CMP [FD2Fh],  1
206Fh : 7405                JE          JE 05h
2071h : 90                  NOP         NOP
2072h : 90                  NOP         NOP
2073h : EB58                JMP         JMP 58h
2075h : 90                  NOP         NOP
2076h : A0FC2F              MOV         MOV AL, [ 12284]
2079h : C0E002              SHL         SHL AL, 2
207Ch : C0E805              SHR         SHR AL, 5
207Fh : 3C02                CMP         CMP AL,  2
2081h : 7405                JE          JE 05h
2083h : 90                  NOP         NOP
2084h : 90                  NOP         NOP
2085h : EB46                JMP         JMP 46h
2087h : 90                  NOP         NOP
2088h : C706F72F8331        MOV         MOV [F72Fh], 12675
208Eh : E880E2              CALL        CALL 787
2091h : A0FA2F              MOV         MOV AL, [ 12282]
2094h : C0E006              SHL         SHL AL, 6
2097h : C0E807              SHR         SHR AL, 7
209Ah : A20330              MOV         MOV [ 12291], AL
209Dh : A0FA2F              MOV         MOV AL, [ 12282]
20A0h : C0E007              SHL         SHL AL, 7
20A3h : C0E807              SHR         SHR AL, 7
20A6h : A20030              MOV         MOV [ 12288], AL
20A9h : E86AE1              CALL        CALL 536
20ACh : A0FA2F              MOV         MOV AL, [ 12282]
20AFh : C0E806              SHR         SHR AL, 6
20B2h : A20530              MOV         MOV [ 12293], AL
20B5h : A0FA2F              MOV         MOV AL, [ 12282]
20B8h : C0E005              SHL         SHL AL, 5
20BBh : C0E805              SHR         SHR AL, 5
20BEh : A20730              MOV         MOV [ 12295], AL
20C1h : E852E1              CALL        CALL 536
20C4h : E86DEA              CALL        CALL 2870
20C7h : E86EE2              CALL        CALL 826
20CAh : EB70                JMP         JMP 70h
20CCh : 90                  NOP         NOP
20CDh : A0FA2F              MOV         MOV AL, [ 12282]
20D0h : C0E802              SHR         SHR AL, 2
20D3h : 3C34                CMP         CMP AL,  52
20D5h : 7405                JE          JE 05h
20D7h : 90                  NOP         NOP
20D8h : 90                  NOP         NOP
20D9h : EB64                JMP         JMP 64h
20DBh : 90                  NOP         NOP
20DCh : 803EFD2F01          CMP         CMP [FD2Fh],  1
20E1h : 7405                JE          JE 05h
20E3h : 90                  NOP         NOP
20E4h : 90                  NOP         NOP
20E5h : EB58                JMP         JMP 58h
20E7h : 90                  NOP         NOP
20E8h : A0FC2F              MOV         MOV AL, [ 12284]
20EBh : C0E002              SHL         SHL AL, 2
20EEh : C0E805              SHR         SHR AL, 5
20F1h : 3C03                CMP         CMP AL,  3
20F3h : 7405                JE          JE 05h
20F5h : 90                  NOP         NOP
20F6h : 90                  NOP         NOP
20F7h : EB46                JMP         JMP 46h
20F9h : 90                  NOP         NOP
20FAh : C706F72F8731        MOV         MOV [F72Fh], 12679
2100h : E80EE2              CALL        CALL 787
2103h : A0FA2F              MOV         MOV AL, [ 12282]
2106h : C0E006              SHL         SHL AL, 6
2109h : C0E807              SHR         SHR AL, 7
210Ch : A20330              MOV         MOV [ 12291], AL
210Fh : A0FA2F              MOV         MOV AL, [ 12282]
2112h : C0E007              SHL         SHL AL, 7
2115h : C0E807              SHR         SHR AL, 7
2118h : A20030              MOV         MOV [ 12288], AL
211Bh : E8F8E0              CALL        CALL 536
211Eh : A0FA2F              MOV         MOV AL, [ 12282]
2121h : C0E806              SHR         SHR AL, 6
2124h : A20530              MOV         MOV [ 12293], AL
2127h : A0FA2F              MOV         MOV AL, [ 12282]
212Ah : C0E005              SHL         SHL AL, 5
212Dh : C0E805              SHR         SHR AL, 5
2130h : A20730              MOV         MOV [ 12295], AL
2133h : E8E0E0              CALL        CALL 536
2136h : E8FBE9              CALL        CALL 2870
2139h : E8FCE1              CALL        CALL 826
213Ch : EB70                JMP         JMP 70h
213Eh : 90                  NOP         NOP
213Fh : A0FA2F              MOV         MOV AL, [ 12282]
2142h : C0E802              SHR         SHR AL, 2
2145h : 3C34                CMP         CMP AL,  52
2147h : 7405                JE          JE 05h
2149h : 90                  NOP         NOP
214Ah : 90                  NOP         NOP
214Bh : EB64                JMP         JMP 64h
214Dh : 90                  NOP         NOP
214Eh : 803EFD2F01          CMP         CMP [FD2Fh],  1
2153h : 7405                JE          JE 05h
2155h : 90                  NOP         NOP
2156h : 90                  NOP         NOP
2157h : EB58                JMP         JMP 58h
2159h : 90                  NOP         NOP
215Ah : A0FC2F              MOV         MOV AL, [ 12284]
215Dh : C0E002              SHL         SHL AL, 2
2160h : C0E805              SHR         SHR AL, 5
2163h : 3C04                CMP         CMP AL,  4
2165h : 7405                JE          JE 05h
2167h : 90                  NOP         NOP
2168h : 90                  NOP         NOP
2169h : EB46                JMP         JMP 46h
216Bh : 90                  NOP         NOP
216Ch : C706F72F8B31        MOV         MOV [F72Fh], 12683
2172h : E89CE1              CALL        CALL 787
2175h : A0FA2F              MOV         MOV AL, [ 12282]
2178h : C0E006              SHL         SHL AL, 6
217Bh : C0E807              SHR         SHR AL, 7
217Eh : A20330              MOV         MOV [ 12291], AL
2181h : A0FA2F              MOV         MOV AL, [ 12282]
2184h : C0E007              SHL         SHL AL, 7
2187h : C0E807              SHR         SHR AL, 7
218Ah : A20030              MOV         MOV [ 12288], AL
218Dh : E886E0              CALL        CALL 536
2190h : A0FA2F              MOV         MOV AL, [ 12282]
2193h : C0E806              SHR         SHR AL, 6
2196h : A20530              MOV         MOV [ 12293], AL
2199h : A0FA2F              MOV         MOV AL, [ 12282]
219Ch : C0E005              SHL         SHL AL, 5
219Fh : C0E805              SHR         SHR AL, 5
21A2h : A20730              MOV         MOV [ 12295], AL
21A5h : E86EE0              CALL        CALL 536
21A8h : E889E9              CALL        CALL 2870
21ABh : E88AE1              CALL        CALL 826
21AEh : EB70                JMP         JMP 70h
21B0h : 90                  NOP         NOP
21B1h : A0FA2F              MOV         MOV AL, [ 12282]
21B4h : C0E802              SHR         SHR AL, 2
21B7h : 3C34                CMP         CMP AL,  52
21B9h : 7405                JE          JE 05h
21BBh : 90                  NOP         NOP
21BCh : 90                  NOP         NOP
21BDh : EB64                JMP         JMP 64h
21BFh : 90                  NOP         NOP
21C0h : 803EFD2F01          CMP         CMP [FD2Fh],  1
21C5h : 7405                JE          JE 05h
21C7h : 90                  NOP         NOP
21C8h : 90                  NOP         NOP
21C9h : EB58                JMP         JMP 58h
21CBh : 90                  NOP         NOP
21CCh : A0FC2F              MOV         MOV AL, [ 12284]
21CFh : C0E002              SHL         SHL AL, 2
21D2h : C0E805              SHR         SHR AL, 5
21D5h : 3C05                CMP         CMP AL,  5
21D7h : 7405                JE          JE 05h
21D9h : 90                  NOP         NOP
21DAh : 90                  NOP         NOP
21DBh : EB46                JMP         JMP 46h
21DDh : 90                  NOP         NOP
21DEh : C706F72F9331        MOV         MOV [F72Fh], 12691
21E4h : E82AE1              CALL        CALL 787
21E7h : A0FA2F              MOV         MOV AL, [ 12282]
21EAh : C0E006              SHL         SHL AL, 6
21EDh : C0E807              SHR         SHR AL, 7
21F0h : A20330              MOV         MOV [ 12291], AL
21F3h : A0FA2F              MOV         MOV AL, [ 12282]
21F6h : C0E007              SHL         SHL AL, 7
21F9h : C0E807              SHR         SHR AL, 7
21FCh : A20030              MOV         MOV [ 12288], AL
21FFh : E814E0              CALL        CALL 536
2202h : A0FA2F              MOV         MOV AL, [ 12282]
2205h : C0E806              SHR         SHR AL, 6
2208h : A20530              MOV         MOV [ 12293], AL
220Bh : A0FA2F              MOV         MOV AL, [ 12282]
220Eh : C0E005              SHL         SHL AL, 5
2211h : C0E805              SHR         SHR AL, 5
2214h : A20730              MOV         MOV [ 12295], AL
2217h : E8FCDF              CALL        CALL 536
221Ah : E817E9              CALL        CALL 2870
221Dh : E818E1              CALL        CALL 826
2220h : EB70                JMP         JMP 70h
2222h : 90                  NOP         NOP
2223h : A0FA2F              MOV         MOV AL, [ 12282]
2226h : C0E802              SHR         SHR AL, 2
2229h : 3C34                CMP         CMP AL,  52
222Bh : 7405                JE          JE 05h
222Dh : 90                  NOP         NOP
222Eh : 90                  NOP         NOP
222Fh : EB64                JMP         JMP 64h
2231h : 90                  NOP         NOP
2232h : 803EFD2F01          CMP         CMP [FD2Fh],  1
2237h : 7405                JE          JE 05h
2239h : 90                  NOP         NOP
223Ah : 90                  NOP         NOP
223Bh : EB58                JMP         JMP 58h
223Dh : 90                  NOP         NOP
223Eh : A0FC2F              MOV         MOV AL, [ 12284]
2241h : C0E002              SHL         SHL AL, 2
2244h : C0E805              SHR         SHR AL, 5
2247h : 3C07                CMP         CMP AL,  7
2249h : 7405                JE          JE 05h
224Bh : 90                  NOP         NOP
224Ch : 90                  NOP         NOP
224Dh : EB46                JMP         JMP 46h
224Fh : 90                  NOP         NOP
2250h : C706F72F9731        MOV         MOV [F72Fh], 12695
2256h : E8B8E0              CALL        CALL 787
2259h : A0FA2F              MOV         MOV AL, [ 12282]
225Ch : C0E006              SHL         SHL AL, 6
225Fh : C0E807              SHR         SHR AL, 7
2262h : A20330              MOV         MOV [ 12291], AL
2265h : A0FA2F              MOV         MOV AL, [ 12282]
2268h : C0E007              SHL         SHL AL, 7
226Bh : C0E807              SHR         SHR AL, 7
226Eh : A20030              MOV         MOV [ 12288], AL
2271h : E8A2DF              CALL        CALL 536
2274h : A0FA2F              MOV         MOV AL, [ 12282]
2277h : C0E806              SHR         SHR AL, 6
227Ah : A20530              MOV         MOV [ 12293], AL
227Dh : A0FA2F              MOV         MOV AL, [ 12282]
2280h : C0E005              SHL         SHL AL, 5
2283h : C0E805              SHR         SHR AL, 5
2286h : A20730              MOV         MOV [ 12295], AL
2289h : E88ADF              CALL        CALL 536
228Ch : E8A5E8              CALL        CALL 2870
228Fh : E8A6E0              CALL        CALL 826
2292h : EB37                JMP         JMP 37h
2294h : 90                  NOP         NOP
2295h : A0FA2F              MOV         MOV AL, [ 12282]
2298h : 3CD4                CMP         CMP AL,  212
229Ah : 7405                JE          JE 05h
229Ch : 90                  NOP         NOP
229Dh : 90                  NOP         NOP
229Eh : EB2E                JMP         JMP 2Eh
22A0h : 90                  NOP         NOP
22A1h : 803EFD2F01          CMP         CMP [FD2Fh],  1
22A6h : 7405                JE          JE 05h
22A8h : 90                  NOP         NOP
22A9h : 90                  NOP         NOP
22AAh : EB22                JMP         JMP 22h
22ACh : 90                  NOP         NOP
22ADh : A0FC2F              MOV         MOV AL, [ 12284]
22B0h : 3C0A                CMP         CMP AL,  10
22B2h : 7405                JE          JE 05h
22B4h : 90                  NOP         NOP
22B5h : 90                  NOP         NOP
22B6h : EB16                JMP         JMP 16h
22B8h : 90                  NOP         NOP
22B9h : C706F72F9B31        MOV         MOV [F72Fh], 12699
22BFh : E84FE0              CALL        CALL 787
22C2h : E851DF              CALL        CALL 536
22C5h : E84EDF              CALL        CALL 536
22C8h : E86DE0              CALL        CALL 826
22CBh : EB37                JMP         JMP 37h
22CDh : 90                  NOP         NOP
22CEh : A0FA2F              MOV         MOV AL, [ 12282]
22D1h : 3CD5                CMP         CMP AL,  213
22D3h : 7405                JE          JE 05h
22D5h : 90                  NOP         NOP
22D6h : 90                  NOP         NOP
22D7h : EB2E                JMP         JMP 2Eh
22D9h : 90                  NOP         NOP
22DAh : 803EFD2F01          CMP         CMP [FD2Fh],  1
22DFh : 7405                JE          JE 05h
22E1h : 90                  NOP         NOP
22E2h : 90                  NOP         NOP
22E3h : EB22                JMP         JMP 22h
22E5h : 90                  NOP         NOP
22E6h : A0FC2F              MOV         MOV AL, [ 12284]
22E9h : 3C0A                CMP         CMP AL,  10
22EBh : 7405                JE          JE 05h
22EDh : 90                  NOP         NOP
22EEh : 90                  NOP         NOP
22EFh : EB16                JMP         JMP 16h
22F1h : 90                  NOP         NOP
22F2h : C706F72F9F31        MOV         MOV [F72Fh], 12703
22F8h : E816E0              CALL        CALL 787
22FBh : E818DF              CALL        CALL 536
22FEh : E815DF              CALL        CALL 536
2301h : E834E0              CALL        CALL 826
2304h : EB1C                JMP         JMP 1Ch
2306h : 90                  NOP         NOP
2307h : A0FA2F              MOV         MOV AL, [ 12282]
230Ah : 3CD7                CMP         CMP AL,  215
230Ch : 7405                JE          JE 05h
230Eh : 90                  NOP         NOP
230Fh : 90                  NOP         NOP
2310h : EB13                JMP         JMP 13h
2312h : 90                  NOP         NOP
2313h : C706F72FA331        MOV         MOV [F72Fh], 12707
2319h : E8F5DF              CALL        CALL 787
231Ch : E8F7DE              CALL        CALL 536
231Fh : E816E0              CALL        CALL 826
2322h : EB3A                JMP         JMP 3Ah
2324h : 90                  NOP         NOP
2325h : A0FA2F              MOV         MOV AL, [ 12282]
2328h : C0E803              SHR         SHR AL, 3
232Bh : 3C1B                CMP         CMP AL,  27
232Dh : 7405                JE          JE 05h
232Fh : 90                  NOP         NOP
2330h : 90                  NOP         NOP
2331h : EB2E                JMP         JMP 2Eh
2333h : 90                  NOP         NOP
2334h : C706F72FA831        MOV         MOV [F72Fh], 12712
233Ah : E8D4DF              CALL        CALL 787
233Dh : E8D6DE              CALL        CALL 536
2340h : A0FA2F              MOV         MOV AL, [ 12282]
2343h : C0E806              SHR         SHR AL, 6
2346h : A20530              MOV         MOV [ 12293], AL
2349h : A0FA2F              MOV         MOV AL, [ 12282]
234Ch : C0E005              SHL         SHL AL, 5
234Fh : C0E805              SHR         SHR AL, 5
2352h : A20730              MOV         MOV [ 12295], AL
2355h : E8BEDE              CALL        CALL 536
2358h : E834E8              CALL        CALL 2961
235Bh : E8DADF              CALL        CALL 826
235Eh : EB1F                JMP         JMP 1Fh
2360h : 90                  NOP         NOP
2361h : A0FA2F              MOV         MOV AL, [ 12282]
2364h : 3CE0                CMP         CMP AL,  224
2366h : 7405                JE          JE 05h
2368h : 90                  NOP         NOP
2369h : 90                  NOP         NOP
236Ah : EB16                JMP         JMP 16h
236Ch : 90                  NOP         NOP
236Dh : C706F72FAC31        MOV         MOV [F72Fh], 12716
2373h : E89BDF              CALL        CALL 787
2376h : E89DDE              CALL        CALL 536
2379h : E897E5              CALL        CALL 2325
237Ch : E8B9DF              CALL        CALL 826
237Fh : EB1F                JMP         JMP 1Fh
2381h : 90                  NOP         NOP
2382h : A0FA2F              MOV         MOV AL, [ 12282]
2385h : 3CE1                CMP         CMP AL,  225
2387h : 7405                JE          JE 05h
2389h : 90                  NOP         NOP
238Ah : 90                  NOP         NOP
238Bh : EB16                JMP         JMP 16h
238Dh : 90                  NOP         NOP
238Eh : C706F72FBA31        MOV         MOV [F72Fh], 12730
2394h : E87ADF              CALL        CALL 787
2397h : E87CDE              CALL        CALL 536
239Ah : E876E5              CALL        CALL 2325
239Dh : E898DF              CALL        CALL 826
23A0h : EB1F                JMP         JMP 1Fh
23A2h : 90                  NOP         NOP
23A3h : A0FA2F              MOV         MOV AL, [ 12282]
23A6h : 3CE2                CMP         CMP AL,  226
23A8h : 7405                JE          JE 05h
23AAh : 90                  NOP         NOP
23ABh : 90                  NOP         NOP
23ACh : EB16                JMP         JMP 16h
23AEh : 90                  NOP         NOP
23AFh : C706F72FC631        MOV         MOV [F72Fh], 12742
23B5h : E859DF              CALL        CALL 787
23B8h : E85BDE              CALL        CALL 536
23BBh : E855E5              CALL        CALL 2325
23BEh : E877DF              CALL        CALL 826
23C1h : EB1F                JMP         JMP 1Fh
23C3h : 90                  NOP         NOP
23C4h : A0FA2F              MOV         MOV AL, [ 12282]
23C7h : 3CE3                CMP         CMP AL,  227
23C9h : 7405                JE          JE 05h
23CBh : 90                  NOP         NOP
23CCh : 90                  NOP         NOP
23CDh : EB16                JMP         JMP 16h
23CFh : 90                  NOP         NOP
23D0h : C706F72FCB31        MOV         MOV [F72Fh], 12747
23D6h : E838DF              CALL        CALL 787
23D9h : E83ADE              CALL        CALL 536
23DCh : E834E5              CALL        CALL 2325
23DFh : E856DF              CALL        CALL 826
23E2h : EB2D                JMP         JMP 2Dh
23E4h : 90                  NOP         NOP
23E5h : A0FA2F              MOV         MOV AL, [ 12282]
23E8h : D0E8                SHR         SHR AL,  1
23EAh : 3C72                CMP         CMP AL,  114
23ECh : 7405                JE          JE 05h
23EEh : 90                  NOP         NOP
23EFh : 90                  NOP         NOP
23F0h : EB22                JMP         JMP 22h
23F2h : 90                  NOP         NOP
23F3h : C706F72FD031        MOV         MOV [F72Fh], 12752
23F9h : E815DF              CALL        CALL 787
23FCh : A0FA2F              MOV         MOV AL, [ 12282]
23FFh : C0E007              SHL         SHL AL, 7
2402h : C0E807              SHR         SHR AL, 7
2405h : A20030              MOV         MOV [ 12288], AL
2408h : E80BDE              CALL        CALL 536
240Bh : E88DE7              CALL        CALL 2973
240Eh : E827DF              CALL        CALL 826
2411h : EB2D                JMP         JMP 2Dh
2413h : 90                  NOP         NOP
2414h : A0FA2F              MOV         MOV AL, [ 12282]
2417h : D0E8                SHR         SHR AL,  1
2419h : 3C73                CMP         CMP AL,  115
241Bh : 7405                JE          JE 05h
241Dh : 90                  NOP         NOP
241Eh : 90                  NOP         NOP
241Fh : EB22                JMP         JMP 22h
2421h : 90                  NOP         NOP
2422h : C706F72FD331        MOV         MOV [F72Fh], 12755
2428h : E8E6DE              CALL        CALL 787
242Bh : A0FA2F              MOV         MOV AL, [ 12282]
242Eh : C0E007              SHL         SHL AL, 7
2431h : C0E807              SHR         SHR AL, 7
2434h : A20030              MOV         MOV [ 12288], AL
2437h : E8DCDD              CALL        CALL 536
243Ah : E85EE7              CALL        CALL 2973
243Dh : E8F8DE              CALL        CALL 826
2440h : EB22                JMP         JMP 22h
2442h : 90                  NOP         NOP
2443h : A0FA2F              MOV         MOV AL, [ 12282]
2446h : 3CE8                CMP         CMP AL,  232
2448h : 7405                JE          JE 05h
244Ah : 90                  NOP         NOP
244Bh : 90                  NOP         NOP
244Ch : EB19                JMP         JMP 19h
244Eh : 90                  NOP         NOP
244Fh : C706F72FF630        MOV         MOV [F72Fh], 12534
2455h : E8B9DE              CALL        CALL 787
2458h : E8BBDD              CALL        CALL 536
245Bh : E826E0              CALL        CALL 1158
245Eh : E85EE7              CALL        CALL 3009
2461h : E8D4DE              CALL        CALL 826
2464h : EB1F                JMP         JMP 1Fh
2466h : 90                  NOP         NOP
2467h : A0FA2F              MOV         MOV AL, [ 12282]
246Ah : 3CE9                CMP         CMP AL,  233
246Ch : 7405                JE          JE 05h
246Eh : 90                  NOP         NOP
246Fh : 90                  NOP         NOP
2470h : EB16                JMP         JMP 16h
2472h : 90                  NOP         NOP
2473h : C706F72FD731        MOV         MOV [F72Fh], 12759
2479h : E895DE              CALL        CALL 787
247Ch : E897DD              CALL        CALL 536
247Fh : E83DE7              CALL        CALL 3009
2482h : E8B3DE              CALL        CALL 826
2485h : EB1F                JMP         JMP 1Fh
2487h : 90                  NOP         NOP
2488h : A0FA2F              MOV         MOV AL, [ 12282]
248Bh : 3CEA                CMP         CMP AL,  234
248Dh : 7405                JE          JE 05h
248Fh : 90                  NOP         NOP
2490h : 90                  NOP         NOP
2491h : EB16                JMP         JMP 16h
2493h : 90                  NOP         NOP
2494h : C706F72FD731        MOV         MOV [F72Fh], 12759
249Ah : E874DE              CALL        CALL 787
249Dh : E876DD              CALL        CALL 536
24A0h : E851E5              CALL        CALL 2550
24A3h : E892DE              CALL        CALL 826
24A6h : EB1F                JMP         JMP 1Fh
24A8h : 90                  NOP         NOP
24A9h : A0FA2F              MOV         MOV AL, [ 12282]
24ACh : 3CEB                CMP         CMP AL,  235
24AEh : 7405                JE          JE 05h
24B0h : 90                  NOP         NOP
24B1h : 90                  NOP         NOP
24B2h : EB16                JMP         JMP 16h
24B4h : 90                  NOP         NOP
24B5h : C706F72FD731        MOV         MOV [F72Fh], 12759
24BBh : E853DE              CALL        CALL 787
24BEh : E855DD              CALL        CALL 536
24C1h : E84FE4              CALL        CALL 2325
24C4h : E871DE              CALL        CALL 826
24C7h : EB3C                JMP         JMP 3Ch
24C9h : 90                  NOP         NOP
24CAh : A0FA2F              MOV         MOV AL, [ 12282]
24CDh : D0E8                SHR         SHR AL,  1
24CFh : 3C76                CMP         CMP AL,  118
24D1h : 7405                JE          JE 05h
24D3h : 90                  NOP         NOP
24D4h : 90                  NOP         NOP
24D5h : EB31                JMP         JMP 31h
24D7h : 90                  NOP         NOP
24D8h : A0FA2F              MOV         MOV AL, [ 12282]
24DBh : C0E007              SHL         SHL AL, 7
24DEh : C0E807              SHR         SHR AL, 7
24E1h : A20030              MOV         MOV [ 12288], AL
24E4h : E82FDD              CALL        CALL 536
24E7h : 803E003001          CMP         CMP [0030h],  1
24ECh : 740B                JE          JE 0Bh
24EEh : 90                  NOP         NOP
24EFh : 90                  NOP         NOP
24F0h : C706F72FD031        MOV         MOV [F72Fh], 12752
24F6h : EB07                JMP         JMP 07h
24F8h : 90                  NOP         NOP
24F9h : C706F72FD031        MOV         MOV [F72Fh], 12752
24FFh : E80FDE              CALL        CALL 787
2502h : E833DE              CALL        CALL 826
2505h : EB3C                JMP         JMP 3Ch
2507h : 90                  NOP         NOP
2508h : A0FA2F              MOV         MOV AL, [ 12282]
250Bh : D0E8                SHR         SHR AL,  1
250Dh : 3C77                CMP         CMP AL,  119
250Fh : 7405                JE          JE 05h
2511h : 90                  NOP         NOP
2512h : 90                  NOP         NOP
2513h : EB31                JMP         JMP 31h
2515h : 90                  NOP         NOP
2516h : A0FA2F              MOV         MOV AL, [ 12282]
2519h : C0E007              SHL         SHL AL, 7
251Ch : C0E807              SHR         SHR AL, 7
251Fh : A20030              MOV         MOV [ 12288], AL
2522h : E8F1DC              CALL        CALL 536
2525h : 803E003001          CMP         CMP [0030h],  1
252Ah : 740B                JE          JE 0Bh
252Ch : 90                  NOP         NOP
252Dh : 90                  NOP         NOP
252Eh : C706F72FD331        MOV         MOV [F72Fh], 12755
2534h : EB07                JMP         JMP 07h
2536h : 90                  NOP         NOP
2537h : C706F72FD331        MOV         MOV [F72Fh], 12755
253Dh : E8D1DD              CALL        CALL 787
2540h : E8F5DD              CALL        CALL 826
2543h : EB1C                JMP         JMP 1Ch
2545h : 90                  NOP         NOP
2546h : A0FA2F              MOV         MOV AL, [ 12282]
2549h : 3CF0                CMP         CMP AL,  240
254Bh : 7405                JE          JE 05h
254Dh : 90                  NOP         NOP
254Eh : 90                  NOP         NOP
254Fh : EB13                JMP         JMP 13h
2551h : 90                  NOP         NOP
2552h : C706F72FDB31        MOV         MOV [F72Fh], 12763
2558h : E8B6DD              CALL        CALL 787
255Bh : E8B8DC              CALL        CALL 536
255Eh : E8D7DD              CALL        CALL 826
2561h : EB1C                JMP         JMP 1Ch
2563h : 90                  NOP         NOP
2564h : A0FA2F              MOV         MOV AL, [ 12282]
2567h : 3CF2                CMP         CMP AL,  242
2569h : 7405                JE          JE 05h
256Bh : 90                  NOP         NOP
256Ch : 90                  NOP         NOP
256Dh : EB13                JMP         JMP 13h
256Fh : 90                  NOP         NOP
2570h : C706F72FE031        MOV         MOV [F72Fh], 12768
2576h : E898DD              CALL        CALL 787
2579h : E89ADC              CALL        CALL 536
257Ch : E8B9DD              CALL        CALL 826
257Fh : EB1C                JMP         JMP 1Ch
2581h : 90                  NOP         NOP
2582h : A0FA2F              MOV         MOV AL, [ 12282]
2585h : 3CF3                CMP         CMP AL,  243
2587h : 7405                JE          JE 05h
2589h : 90                  NOP         NOP
258Ah : 90                  NOP         NOP
258Bh : EB13                JMP         JMP 13h
258Dh : 90                  NOP         NOP
258Eh : C706F72FEC31        MOV         MOV [F72Fh], 12780
2594h : E87ADD              CALL        CALL 787
2597h : E87CDC              CALL        CALL 536
259Ah : E89BDD              CALL        CALL 826
259Dh : EB1C                JMP         JMP 1Ch
259Fh : 90                  NOP         NOP
25A0h : A0FA2F              MOV         MOV AL, [ 12282]
25A3h : 3CF4                CMP         CMP AL,  244
25A5h : 7405                JE          JE 05h
25A7h : 90                  NOP         NOP
25A8h : 90                  NOP         NOP
25A9h : EB13                JMP         JMP 13h
25ABh : 90                  NOP         NOP
25ACh : C706F72FFA31        MOV         MOV [F72Fh], 12794
25B2h : E85CDD              CALL        CALL 787
25B5h : E85EDC              CALL        CALL 536
25B8h : E87DDD              CALL        CALL 826
25BBh : EB1C                JMP         JMP 1Ch
25BDh : 90                  NOP         NOP
25BEh : A0FA2F              MOV         MOV AL, [ 12282]
25C1h : 3CF5                CMP         CMP AL,  245
25C3h : 7405                JE          JE 05h
25C5h : 90                  NOP         NOP
25C6h : 90                  NOP         NOP
25C7h : EB13                JMP         JMP 13h
25C9h : 90                  NOP         NOP
25CAh : C706F72FFE31        MOV         MOV [F72Fh], 12798
25D0h : E83EDD              CALL        CALL 787
25D3h : E840DC              CALL        CALL 536
25D6h : E85FDD              CALL        CALL 826
25D9h : EB63                JMP         JMP 63h
25DBh : 90                  NOP         NOP
25DCh : A0FA2F              MOV         MOV AL, [ 12282]
25DFh : D0E8                SHR         SHR AL,  1
25E1h : 3C7B                CMP         CMP AL,  123
25E3h : 7405                JE          JE 05h
25E5h : 90                  NOP         NOP
25E6h : 90                  NOP         NOP
25E7h : EB58                JMP         JMP 58h
25E9h : 90                  NOP         NOP
25EAh : 803EFD2F01          CMP         CMP [FD2Fh],  1
25EFh : 7405                JE          JE 05h
25F1h : 90                  NOP         NOP
25F2h : 90                  NOP         NOP
25F3h : EB4C                JMP         JMP 4Ch
25F5h : 90                  NOP         NOP
25F6h : A0FC2F              MOV         MOV AL, [ 12284]
25F9h : C0E002              SHL         SHL AL, 2
25FCh : C0E805              SHR         SHR AL, 5
25FFh : 3C00                CMP         CMP AL,  0
2601h : 7405                JE          JE 05h
2603h : 90                  NOP         NOP
2604h : 90                  NOP         NOP
2605h : EB3A                JMP         JMP 3Ah
2607h : 90                  NOP         NOP
2608h : C706F72FE030        MOV         MOV [F72Fh], 12512
260Eh : E800DD              CALL        CALL 787
2611h : A0FA2F              MOV         MOV AL, [ 12282]
2614h : C0E007              SHL         SHL AL, 7
2617h : C0E807              SHR         SHR AL, 7
261Ah : A20030              MOV         MOV [ 12288], AL
261Dh : E8F6DB              CALL        CALL 536
2620h : A0FA2F              MOV         MOV AL, [ 12282]
2623h : C0E806              SHR         SHR AL, 6
2626h : A20530              MOV         MOV [ 12293], AL
2629h : A0FA2F              MOV         MOV AL, [ 12282]
262Ch : C0E005              SHL         SHL AL, 5
262Fh : C0E805              SHR         SHR AL, 5
2632h : A20730              MOV         MOV [ 12295], AL
2635h : E8DEDB              CALL        CALL 536
2638h : E88BE4              CALL        CALL 2760
263Bh : E8FADC              CALL        CALL 826
263Eh : EB63                JMP         JMP 63h
2640h : 90                  NOP         NOP
2641h : A0FA2F              MOV         MOV AL, [ 12282]
2644h : D0E8                SHR         SHR AL,  1
2646h : 3C7B                CMP         CMP AL,  123
2648h : 7405                JE          JE 05h
264Ah : 90                  NOP         NOP
264Bh : 90                  NOP         NOP
264Ch : EB58                JMP         JMP 58h
264Eh : 90                  NOP         NOP
264Fh : 803EFD2F01          CMP         CMP [FD2Fh],  1
2654h : 7405                JE          JE 05h
2656h : 90                  NOP         NOP
2657h : 90                  NOP         NOP
2658h : EB4C                JMP         JMP 4Ch
265Ah : 90                  NOP         NOP
265Bh : A0FC2F              MOV         MOV AL, [ 12284]
265Eh : C0E002              SHL         SHL AL, 2
2661h : C0E805              SHR         SHR AL, 5
2664h : 3C02                CMP         CMP AL,  2
2666h : 7405                JE          JE 05h
2668h : 90                  NOP         NOP
2669h : 90                  NOP         NOP
266Ah : EB3A                JMP         JMP 3Ah
266Ch : 90                  NOP         NOP
266Dh : C706F72F0232        MOV         MOV [F72Fh], 12802
2673h : E89BDC              CALL        CALL 787
2676h : A0FA2F              MOV         MOV AL, [ 12282]
2679h : C0E007              SHL         SHL AL, 7
267Ch : C0E807              SHR         SHR AL, 7
267Fh : A20030              MOV         MOV [ 12288], AL
2682h : E891DB              CALL        CALL 536
2685h : A0FA2F              MOV         MOV AL, [ 12282]
2688h : C0E806              SHR         SHR AL, 6
268Bh : A20530              MOV         MOV [ 12293], AL
268Eh : A0FA2F              MOV         MOV AL, [ 12282]
2691h : C0E005              SHL         SHL AL, 5
2694h : C0E805              SHR         SHR AL, 5
2697h : A20730              MOV         MOV [ 12295], AL
269Ah : E879DB              CALL        CALL 536
269Dh : E823E5              CALL        CALL 3013
26A0h : E895DC              CALL        CALL 826
26A3h : EB63                JMP         JMP 63h
26A5h : 90                  NOP         NOP
26A6h : A0FA2F              MOV         MOV AL, [ 12282]
26A9h : D0E8                SHR         SHR AL,  1
26ABh : 3C7B                CMP         CMP AL,  123
26ADh : 7405                JE          JE 05h
26AFh : 90                  NOP         NOP
26B0h : 90                  NOP         NOP
26B1h : EB58                JMP         JMP 58h
26B3h : 90                  NOP         NOP
26B4h : 803EFD2F01          CMP         CMP [FD2Fh],  1
26B9h : 7405                JE          JE 05h
26BBh : 90                  NOP         NOP
26BCh : 90                  NOP         NOP
26BDh : EB4C                JMP         JMP 4Ch
26BFh : 90                  NOP         NOP
26C0h : A0FC2F              MOV         MOV AL, [ 12284]
26C3h : C0E002              SHL         SHL AL, 2
26C6h : C0E805              SHR         SHR AL, 5
26C9h : 3C03                CMP         CMP AL,  3
26CBh : 7405                JE          JE 05h
26CDh : 90                  NOP         NOP
26CEh : 90                  NOP         NOP
26CFh : EB3A                JMP         JMP 3Ah
26D1h : 90                  NOP         NOP
26D2h : C706F72F0632        MOV         MOV [F72Fh], 12806
26D8h : E836DC              CALL        CALL 787
26DBh : A0FA2F              MOV         MOV AL, [ 12282]
26DEh : C0E007              SHL         SHL AL, 7
26E1h : C0E807              SHR         SHR AL, 7
26E4h : A20030              MOV         MOV [ 12288], AL
26E7h : E82CDB              CALL        CALL 536
26EAh : A0FA2F              MOV         MOV AL, [ 12282]
26EDh : C0E806              SHR         SHR AL, 6
26F0h : A20530              MOV         MOV [ 12293], AL
26F3h : A0FA2F              MOV         MOV AL, [ 12282]
26F6h : C0E005              SHL         SHL AL, 5
26F9h : C0E805              SHR         SHR AL, 5
26FCh : A20730              MOV         MOV [ 12295], AL
26FFh : E814DB              CALL        CALL 536
2702h : E8BEE4              CALL        CALL 3013
2705h : E830DC              CALL        CALL 826
2708h : EB63                JMP         JMP 63h
270Ah : 90                  NOP         NOP
270Bh : A0FA2F              MOV         MOV AL, [ 12282]
270Eh : D0E8                SHR         SHR AL,  1
2710h : 3C7B                CMP         CMP AL,  123
2712h : 7405                JE          JE 05h
2714h : 90                  NOP         NOP
2715h : 90                  NOP         NOP
2716h : EB58                JMP         JMP 58h
2718h : 90                  NOP         NOP
2719h : 803EFD2F01          CMP         CMP [FD2Fh],  1
271Eh : 7405                JE          JE 05h
2720h : 90                  NOP         NOP
2721h : 90                  NOP         NOP
2722h : EB4C                JMP         JMP 4Ch
2724h : 90                  NOP         NOP
2725h : A0FC2F              MOV         MOV AL, [ 12284]
2728h : C0E002              SHL         SHL AL, 2
272Bh : C0E805              SHR         SHR AL, 5
272Eh : 3C04                CMP         CMP AL,  4
2730h : 7405                JE          JE 05h
2732h : 90                  NOP         NOP
2733h : 90                  NOP         NOP
2734h : EB3A                JMP         JMP 3Ah
2736h : 90                  NOP         NOP
2737h : C706F72F0A32        MOV         MOV [F72Fh], 12810
273Dh : E8D1DB              CALL        CALL 787
2740h : A0FA2F              MOV         MOV AL, [ 12282]
2743h : C0E007              SHL         SHL AL, 7
2746h : C0E807              SHR         SHR AL, 7
2749h : A20030              MOV         MOV [ 12288], AL
274Ch : E8C7DA              CALL        CALL 536
274Fh : A0FA2F              MOV         MOV AL, [ 12282]
2752h : C0E806              SHR         SHR AL, 6
2755h : A20530              MOV         MOV [ 12293], AL
2758h : A0FA2F              MOV         MOV AL, [ 12282]
275Bh : C0E005              SHL         SHL AL, 5
275Eh : C0E805              SHR         SHR AL, 5
2761h : A20730              MOV         MOV [ 12295], AL
2764h : E8AFDA              CALL        CALL 536
2767h : E859E4              CALL        CALL 3013
276Ah : E8CBDB              CALL        CALL 826
276Dh : EB63                JMP         JMP 63h
276Fh : 90                  NOP         NOP
2770h : A0FA2F              MOV         MOV AL, [ 12282]
2773h : D0E8                SHR         SHR AL,  1
2775h : 3C7B                CMP         CMP AL,  123
2777h : 7405                JE          JE 05h
2779h : 90                  NOP         NOP
277Ah : 90                  NOP         NOP
277Bh : EB58                JMP         JMP 58h
277Dh : 90                  NOP         NOP
277Eh : 803EFD2F01          CMP         CMP [FD2Fh],  1
2783h : 7405                JE          JE 05h
2785h : 90                  NOP         NOP
2786h : 90                  NOP         NOP
2787h : EB4C                JMP         JMP 4Ch
2789h : 90                  NOP         NOP
278Ah : A0FC2F              MOV         MOV AL, [ 12284]
278Dh : C0E002              SHL         SHL AL, 2
2790h : C0E805              SHR         SHR AL, 5
2793h : 3C05                CMP         CMP AL,  5
2795h : 7405                JE          JE 05h
2797h : 90                  NOP         NOP
2798h : 90                  NOP         NOP
2799h : EB3A                JMP         JMP 3Ah
279Bh : 90                  NOP         NOP
279Ch : C706F72F0E32        MOV         MOV [F72Fh], 12814
27A2h : E86CDB              CALL        CALL 787
27A5h : A0FA2F              MOV         MOV AL, [ 12282]
27A8h : C0E007              SHL         SHL AL, 7
27ABh : C0E807              SHR         SHR AL, 7
27AEh : A20030              MOV         MOV [ 12288], AL
27B1h : E862DA              CALL        CALL 536
27B4h : A0FA2F              MOV         MOV AL, [ 12282]
27B7h : C0E806              SHR         SHR AL, 6
27BAh : A20530              MOV         MOV [ 12293], AL
27BDh : A0FA2F              MOV         MOV AL, [ 12282]
27C0h : C0E005              SHL         SHL AL, 5
27C3h : C0E805              SHR         SHR AL, 5
27C6h : A20730              MOV         MOV [ 12295], AL
27C9h : E84ADA              CALL        CALL 536
27CCh : E8F4E3              CALL        CALL 3013
27CFh : E866DB              CALL        CALL 826
27D2h : EB63                JMP         JMP 63h
27D4h : 90                  NOP         NOP
27D5h : A0FA2F              MOV         MOV AL, [ 12282]
27D8h : D0E8                SHR         SHR AL,  1
27DAh : 3C7B                CMP         CMP AL,  123
27DCh : 7405                JE          JE 05h
27DEh : 90                  NOP         NOP
27DFh : 90                  NOP         NOP
27E0h : EB58                JMP         JMP 58h
27E2h : 90                  NOP         NOP
27E3h : 803EFD2F01          CMP         CMP [FD2Fh],  1
27E8h : 7405                JE          JE 05h
27EAh : 90                  NOP         NOP
27EBh : 90                  NOP         NOP
27ECh : EB4C                JMP         JMP 4Ch
27EEh : 90                  NOP         NOP
27EFh : A0FC2F              MOV         MOV AL, [ 12284]
27F2h : C0E002              SHL         SHL AL, 2
27F5h : C0E805              SHR         SHR AL, 5
27F8h : 3C06                CMP         CMP AL,  6
27FAh : 7405                JE          JE 05h
27FCh : 90                  NOP         NOP
27FDh : 90                  NOP         NOP
27FEh : EB3A                JMP         JMP 3Ah
2800h : 90                  NOP         NOP
2801h : C706F72F1332        MOV         MOV [F72Fh], 12819
2807h : E807DB              CALL        CALL 787
280Ah : A0FA2F              MOV         MOV AL, [ 12282]
280Dh : C0E007              SHL         SHL AL, 7
2810h : C0E807              SHR         SHR AL, 7
2813h : A20030              MOV         MOV [ 12288], AL
2816h : E8FDD9              CALL        CALL 536
2819h : A0FA2F              MOV         MOV AL, [ 12282]
281Ch : C0E806              SHR         SHR AL, 6
281Fh : A20530              MOV         MOV [ 12293], AL
2822h : A0FA2F              MOV         MOV AL, [ 12282]
2825h : C0E005              SHL         SHL AL, 5
2828h : C0E805              SHR         SHR AL, 5
282Bh : A20730              MOV         MOV [ 12295], AL
282Eh : E8E5D9              CALL        CALL 536
2831h : E88FE3              CALL        CALL 3013
2834h : E801DB              CALL        CALL 826
2837h : EB63                JMP         JMP 63h
2839h : 90                  NOP         NOP
283Ah : A0FA2F              MOV         MOV AL, [ 12282]
283Dh : D0E8                SHR         SHR AL,  1
283Fh : 3C7B                CMP         CMP AL,  123
2841h : 7405                JE          JE 05h
2843h : 90                  NOP         NOP
2844h : 90                  NOP         NOP
2845h : EB58                JMP         JMP 58h
2847h : 90                  NOP         NOP
2848h : 803EFD2F01          CMP         CMP [FD2Fh],  1
284Dh : 7405                JE          JE 05h
284Fh : 90                  NOP         NOP
2850h : 90                  NOP         NOP
2851h : EB4C                JMP         JMP 4Ch
2853h : 90                  NOP         NOP
2854h : A0FC2F              MOV         MOV AL, [ 12284]
2857h : C0E002              SHL         SHL AL, 2
285Ah : C0E805              SHR         SHR AL, 5
285Dh : 3C07                CMP         CMP AL,  7
285Fh : 7405                JE          JE 05h
2861h : 90                  NOP         NOP
2862h : 90                  NOP         NOP
2863h : EB3A                JMP         JMP 3Ah
2865h : 90                  NOP         NOP
2866h : C706F72F1732        MOV         MOV [F72Fh], 12823
286Ch : E8A2DA              CALL        CALL 787
286Fh : A0FA2F              MOV         MOV AL, [ 12282]
2872h : C0E007              SHL         SHL AL, 7
2875h : C0E807              SHR         SHR AL, 7
2878h : A20030              MOV         MOV [ 12288], AL
287Bh : E898D9              CALL        CALL 536
287Eh : A0FA2F              MOV         MOV AL, [ 12282]
2881h : C0E806              SHR         SHR AL, 6
2884h : A20530              MOV         MOV [ 12293], AL
2887h : A0FA2F              MOV         MOV AL, [ 12282]
288Ah : C0E005              SHL         SHL AL, 5
288Dh : C0E805              SHR         SHR AL, 5
2890h : A20730              MOV         MOV [ 12295], AL
2893h : E880D9              CALL        CALL 536
2896h : E82AE3              CALL        CALL 3013
2899h : E89CDA              CALL        CALL 826
289Ch : EB1C                JMP         JMP 1Ch
289Eh : 90                  NOP         NOP
289Fh : A0FA2F              MOV         MOV AL, [ 12282]
28A2h : 3CF8                CMP         CMP AL,  248
28A4h : 7405                JE          JE 05h
28A6h : 90                  NOP         NOP
28A7h : 90                  NOP         NOP
28A8h : EB13                JMP         JMP 13h
28AAh : 90                  NOP         NOP
28ABh : C706F72F1C32        MOV         MOV [F72Fh], 12828
28B1h : E85DDA              CALL        CALL 787
28B4h : E85FD9              CALL        CALL 536
28B7h : E87EDA              CALL        CALL 826
28BAh : EB1C                JMP         JMP 1Ch
28BCh : 90                  NOP         NOP
28BDh : A0FA2F              MOV         MOV AL, [ 12282]
28C0h : 3CF9                CMP         CMP AL,  249
28C2h : 7405                JE          JE 05h
28C4h : 90                  NOP         NOP
28C5h : 90                  NOP         NOP
28C6h : EB13                JMP         JMP 13h
28C8h : 90                  NOP         NOP
28C9h : C706F72F2032        MOV         MOV [F72Fh], 12832
28CFh : E83FDA              CALL        CALL 787
28D2h : E841D9              CALL        CALL 536
28D5h : E860DA              CALL        CALL 826
28D8h : EB1C                JMP         JMP 1Ch
28DAh : 90                  NOP         NOP
28DBh : A0FA2F              MOV         MOV AL, [ 12282]
28DEh : 3CFA                CMP         CMP AL,  250
28E0h : 7405                JE          JE 05h
28E2h : 90                  NOP         NOP
28E3h : 90                  NOP         NOP
28E4h : EB13                JMP         JMP 13h
28E6h : 90                  NOP         NOP
28E7h : C706F72F2432        MOV         MOV [F72Fh], 12836
28EDh : E821DA              CALL        CALL 787
28F0h : E823D9              CALL        CALL 536
28F3h : E842DA              CALL        CALL 826
28F6h : EB1C                JMP         JMP 1Ch
28F8h : 90                  NOP         NOP
28F9h : A0FA2F              MOV         MOV AL, [ 12282]
28FCh : 3CFB                CMP         CMP AL,  251
28FEh : 7405                JE          JE 05h
2900h : 90                  NOP         NOP
2901h : 90                  NOP         NOP
2902h : EB13                JMP         JMP 13h
2904h : 90                  NOP         NOP
2905h : C706F72F2832        MOV         MOV [F72Fh], 12840
290Bh : E803DA              CALL        CALL 787
290Eh : E805D9              CALL        CALL 536
2911h : E824DA              CALL        CALL 826
2914h : EB1C                JMP         JMP 1Ch
2916h : 90                  NOP         NOP
2917h : A0FA2F              MOV         MOV AL, [ 12282]
291Ah : 3CFC                CMP         CMP AL,  252
291Ch : 7405                JE          JE 05h
291Eh : 90                  NOP         NOP
291Fh : 90                  NOP         NOP
2920h : EB13                JMP         JMP 13h
2922h : 90                  NOP         NOP
2923h : C706F72F2C32        MOV         MOV [F72Fh], 12844
2929h : E8E5D9              CALL        CALL 787
292Ch : E8E7D8              CALL        CALL 536
292Fh : E806DA              CALL        CALL 826
2932h : EB1C                JMP         JMP 1Ch
2934h : 90                  NOP         NOP
2935h : A0FA2F              MOV         MOV AL, [ 12282]
2938h : 3CFD                CMP         CMP AL,  253
293Ah : 7405                JE          JE 05h
293Ch : 90                  NOP         NOP
293Dh : 90                  NOP         NOP
293Eh : EB13                JMP         JMP 13h
2940h : 90                  NOP         NOP
2941h : C706F72F3032        MOV         MOV [F72Fh], 12848
2947h : E8C7D9              CALL        CALL 787
294Ah : E8C9D8              CALL        CALL 536
294Dh : E8E8D9              CALL        CALL 826
2950h : EB63                JMP         JMP 63h
2952h : 90                  NOP         NOP
2953h : A0FA2F              MOV         MOV AL, [ 12282]
2956h : D0E8                SHR         SHR AL,  1
2958h : 3C7F                CMP         CMP AL,  127
295Ah : 7405                JE          JE 05h
295Ch : 90                  NOP         NOP
295Dh : 90                  NOP         NOP
295Eh : EB58                JMP         JMP 58h
2960h : 90                  NOP         NOP
2961h : 803EFD2F01          CMP         CMP [FD2Fh],  1
2966h : 7405                JE          JE 05h
2968h : 90                  NOP         NOP
2969h : 90                  NOP         NOP
296Ah : EB4C                JMP         JMP 4Ch
296Ch : 90                  NOP         NOP
296Dh : A0FC2F              MOV         MOV AL, [ 12284]
2970h : C0E002              SHL         SHL AL, 2
2973h : C0E805              SHR         SHR AL, 5
2976h : 3C00                CMP         CMP AL,  0
2978h : 7405                JE          JE 05h
297Ah : 90                  NOP         NOP
297Bh : 90                  NOP         NOP
297Ch : EB3A                JMP         JMP 3Ah
297Eh : 90                  NOP         NOP
297Fh : C706F72F6630        MOV         MOV [F72Fh], 12390
2985h : E889D9              CALL        CALL 787
2988h : A0FA2F              MOV         MOV AL, [ 12282]
298Bh : C0E007              SHL         SHL AL, 7
298Eh : C0E807              SHR         SHR AL, 7
2991h : A20030              MOV         MOV [ 12288], AL
2994h : E87FD8              CALL        CALL 536
2997h : A0FA2F              MOV         MOV AL, [ 12282]
299Ah : C0E806              SHR         SHR AL, 6
299Dh : A20530              MOV         MOV [ 12293], AL
29A0h : A0FA2F              MOV         MOV AL, [ 12282]
29A3h : C0E005              SHL         SHL AL, 5
29A6h : C0E805              SHR         SHR AL, 5
29A9h : A20730              MOV         MOV [ 12295], AL
29ACh : E867D8              CALL        CALL 536
29AFh : E811E2              CALL        CALL 3013
29B2h : E883D9              CALL        CALL 826
29B5h : EB63                JMP         JMP 63h
29B7h : 90                  NOP         NOP
29B8h : A0FA2F              MOV         MOV AL, [ 12282]
29BBh : D0E8                SHR         SHR AL,  1
29BDh : 3C7F                CMP         CMP AL,  127
29BFh : 7405                JE          JE 05h
29C1h : 90                  NOP         NOP
29C2h : 90                  NOP         NOP
29C3h : EB58                JMP         JMP 58h
29C5h : 90                  NOP         NOP
29C6h : 803EFD2F01          CMP         CMP [FD2Fh],  1
29CBh : 7405                JE          JE 05h
29CDh : 90                  NOP         NOP
29CEh : 90                  NOP         NOP
29CFh : EB4C                JMP         JMP 4Ch
29D1h : 90                  NOP         NOP
29D2h : A0FC2F              MOV         MOV AL, [ 12284]
29D5h : C0E002              SHL         SHL AL, 2
29D8h : C0E805              SHR         SHR AL, 5
29DBh : 3C01                CMP         CMP AL,  1
29DDh : 7405                JE          JE 05h
29DFh : 90                  NOP         NOP
29E0h : 90                  NOP         NOP
29E1h : EB3A                JMP         JMP 3Ah
29E3h : 90                  NOP         NOP
29E4h : C706F72F6A30        MOV         MOV [F72Fh], 12394
29EAh : E824D9              CALL        CALL 787
29EDh : A0FA2F              MOV         MOV AL, [ 12282]
29F0h : C0E007              SHL         SHL AL, 7
29F3h : C0E807              SHR         SHR AL, 7
29F6h : A20030              MOV         MOV [ 12288], AL
29F9h : E81AD8              CALL        CALL 536
29FCh : A0FA2F              MOV         MOV AL, [ 12282]
29FFh : C0E806              SHR         SHR AL, 6
2A02h : A20530              MOV         MOV [ 12293], AL
2A05h : A0FA2F              MOV         MOV AL, [ 12282]
2A08h : C0E005              SHL         SHL AL, 5
2A0Bh : C0E805              SHR         SHR AL, 5
2A0Eh : A20730              MOV         MOV [ 12295], AL
2A11h : E802D8              CALL        CALL 536
2A14h : E8ACE1              CALL        CALL 3013
2A17h : E81ED9              CALL        CALL 826
2A1Ah : EB58                JMP         JMP 58h
2A1Ch : 90                  NOP         NOP
2A1Dh : A0FA2F              MOV         MOV AL, [ 12282]
2A20h : 3CFF                CMP         CMP AL,  255
2A22h : 7405                JE          JE 05h
2A24h : 90                  NOP         NOP
2A25h : 90                  NOP         NOP
2A26h : EB4F                JMP         JMP 4Fh
2A28h : 90                  NOP         NOP
2A29h : 803EFD2F01          CMP         CMP [FD2Fh],  1
2A2Eh : 7405                JE          JE 05h
2A30h : 90                  NOP         NOP
2A31h : 90                  NOP         NOP
2A32h : EB43                JMP         JMP 43h
2A34h : 90                  NOP         NOP
2A35h : A0FC2F              MOV         MOV AL, [ 12284]
2A38h : C0E002              SHL         SHL AL, 2
2A3Bh : C0E805              SHR         SHR AL, 5
2A3Eh : 3C02                CMP         CMP AL,  2
2A40h : 7405                JE          JE 05h
2A42h : 90                  NOP         NOP
2A43h : 90                  NOP         NOP
2A44h : EB31                JMP         JMP 31h
2A46h : 90                  NOP         NOP
2A47h : C706F72FF630        MOV         MOV [F72Fh], 12534
2A4Dh : E8C1D8              CALL        CALL 787
2A50h : E8C3D7              CALL        CALL 536
2A53h : A0FA2F              MOV         MOV AL, [ 12282]
2A56h : C0E806              SHR         SHR AL, 6
2A59h : A20530              MOV         MOV [ 12293], AL
2A5Ch : A0FA2F              MOV         MOV AL, [ 12282]
2A5Fh : C0E005              SHL         SHL AL, 5
2A62h : C0E805              SHR         SHR AL, 5
2A65h : A20730              MOV         MOV [ 12295], AL
2A68h : E8ABD7              CALL        CALL 536
2A6Bh : E816DA              CALL        CALL 1158
2A6Eh : E86EDF              CALL        CALL 2529
2A71h : E8C4D8              CALL        CALL 826
2A74h : EB58                JMP         JMP 58h
2A76h : 90                  NOP         NOP
2A77h : A0FA2F              MOV         MOV AL, [ 12282]
2A7Ah : 3CFF                CMP         CMP AL,  255
2A7Ch : 7405                JE          JE 05h
2A7Eh : 90                  NOP         NOP
2A7Fh : 90                  NOP         NOP
2A80h : EB4F                JMP         JMP 4Fh
2A82h : 90                  NOP         NOP
2A83h : 803EFD2F01          CMP         CMP [FD2Fh],  1
2A88h : 7405                JE          JE 05h
2A8Ah : 90                  NOP         NOP
2A8Bh : 90                  NOP         NOP
2A8Ch : EB43                JMP         JMP 43h
2A8Eh : 90                  NOP         NOP
2A8Fh : A0FC2F              MOV         MOV AL, [ 12284]
2A92h : C0E002              SHL         SHL AL, 2
2A95h : C0E805              SHR         SHR AL, 5
2A98h : 3C03                CMP         CMP AL,  3
2A9Ah : 7405                JE          JE 05h
2A9Ch : 90                  NOP         NOP
2A9Dh : 90                  NOP         NOP
2A9Eh : EB31                JMP         JMP 31h
2AA0h : 90                  NOP         NOP
2AA1h : C706F72FF630        MOV         MOV [F72Fh], 12534
2AA7h : E867D8              CALL        CALL 787
2AAAh : E869D7              CALL        CALL 536
2AADh : A0FA2F              MOV         MOV AL, [ 12282]
2AB0h : C0E806              SHR         SHR AL, 6
2AB3h : A20530              MOV         MOV [ 12293], AL
2AB6h : A0FA2F              MOV         MOV AL, [ 12282]
2AB9h : C0E005              SHL         SHL AL, 5
2ABCh : C0E805              SHR         SHR AL, 5
2ABFh : A20730              MOV         MOV [ 12295], AL
2AC2h : E851D7              CALL        CALL 536
2AC5h : E8BCD9              CALL        CALL 1158
2AC8h : E814DF              CALL        CALL 2529
2ACBh : E86AD8              CALL        CALL 826
2ACEh : EB55                JMP         JMP 55h
2AD0h : 90                  NOP         NOP
2AD1h : A0FA2F              MOV         MOV AL, [ 12282]
2AD4h : 3CFF                CMP         CMP AL,  255
2AD6h : 7405                JE          JE 05h
2AD8h : 90                  NOP         NOP
2AD9h : 90                  NOP         NOP
2ADAh : EB4C                JMP         JMP 4Ch
2ADCh : 90                  NOP         NOP
2ADDh : 803EFD2F01          CMP         CMP [FD2Fh],  1
2AE2h : 7405                JE          JE 05h
2AE4h : 90                  NOP         NOP
2AE5h : 90                  NOP         NOP
2AE6h : EB40                JMP         JMP 40h
2AE8h : 90                  NOP         NOP
2AE9h : A0FC2F              MOV         MOV AL, [ 12284]
2AECh : C0E002              SHL         SHL AL, 2
2AEFh : C0E805              SHR         SHR AL, 5
2AF2h : 3C04                CMP         CMP AL,  4
2AF4h : 7405                JE          JE 05h
2AF6h : 90                  NOP         NOP
2AF7h : 90                  NOP         NOP
2AF8h : EB2E                JMP         JMP 2Eh
2AFAh : 90                  NOP         NOP
2AFBh : C706F72FD731        MOV         MOV [F72Fh], 12759
2B01h : E80DD8              CALL        CALL 787
2B04h : E80FD7              CALL        CALL 536
2B07h : A0FA2F              MOV         MOV AL, [ 12282]
2B0Ah : C0E806              SHR         SHR AL, 6
2B0Dh : A20530              MOV         MOV [ 12293], AL
2B10h : A0FA2F              MOV         MOV AL, [ 12282]
2B13h : C0E005              SHL         SHL AL, 5
2B16h : C0E805              SHR         SHR AL, 5
2B19h : A20730              MOV         MOV [ 12295], AL
2B1Ch : E8F7D6              CALL        CALL 536
2B1Fh : E8BDDE              CALL        CALL 2529
2B22h : E813D8              CALL        CALL 826
2B25h : EB55                JMP         JMP 55h
2B27h : 90                  NOP         NOP
2B28h : A0FA2F              MOV         MOV AL, [ 12282]
2B2Bh : 3CFF                CMP         CMP AL,  255
2B2Dh : 7405                JE          JE 05h
2B2Fh : 90                  NOP         NOP
2B30h : 90                  NOP         NOP
2B31h : EB4C                JMP         JMP 4Ch
2B33h : 90                  NOP         NOP
2B34h : 803EFD2F01          CMP         CMP [FD2Fh],  1
2B39h : 7405                JE          JE 05h
2B3Bh : 90                  NOP         NOP
2B3Ch : 90                  NOP         NOP
2B3Dh : EB40                JMP         JMP 40h
2B3Fh : 90                  NOP         NOP
2B40h : A0FC2F              MOV         MOV AL, [ 12284]
2B43h : C0E002              SHL         SHL AL, 2
2B46h : C0E805              SHR         SHR AL, 5
2B49h : 3C05                CMP         CMP AL,  5
2B4Bh : 7405                JE          JE 05h
2B4Dh : 90                  NOP         NOP
2B4Eh : 90                  NOP         NOP
2B4Fh : EB2E                JMP         JMP 2Eh
2B51h : 90                  NOP         NOP
2B52h : C706F72FD731        MOV         MOV [F72Fh], 12759
2B58h : E8B6D7              CALL        CALL 787
2B5Bh : E8B8D6              CALL        CALL 536
2B5Eh : A0FA2F              MOV         MOV AL, [ 12282]
2B61h : C0E806              SHR         SHR AL, 6
2B64h : A20530              MOV         MOV [ 12293], AL
2B67h : A0FA2F              MOV         MOV AL, [ 12282]
2B6Ah : C0E005              SHL         SHL AL, 5
2B6Dh : C0E805              SHR         SHR AL, 5
2B70h : A20730              MOV         MOV [ 12295], AL
2B73h : E8A0D6              CALL        CALL 536
2B76h : E866DE              CALL        CALL 2529
2B79h : E8BCD7              CALL        CALL 826
2B7Ch : EB55                JMP         JMP 55h
2B7Eh : 90                  NOP         NOP
2B7Fh : A0FA2F              MOV         MOV AL, [ 12282]
2B82h : 3CFF                CMP         CMP AL,  255
2B84h : 7405                JE          JE 05h
2B86h : 90                  NOP         NOP
2B87h : 90                  NOP         NOP
2B88h : EB4C                JMP         JMP 4Ch
2B8Ah : 90                  NOP         NOP
2B8Bh : 803EFD2F01          CMP         CMP [FD2Fh],  1
2B90h : 7405                JE          JE 05h
2B92h : 90                  NOP         NOP
2B93h : 90                  NOP         NOP
2B94h : EB40                JMP         JMP 40h
2B96h : 90                  NOP         NOP
2B97h : A0FC2F              MOV         MOV AL, [ 12284]
2B9Ah : C0E002              SHL         SHL AL, 2
2B9Dh : C0E805              SHR         SHR AL, 5
2BA0h : 3C06                CMP         CMP AL,  6
2BA2h : 7405                JE          JE 05h
2BA4h : 90                  NOP         NOP
2BA5h : 90                  NOP         NOP
2BA6h : EB2E                JMP         JMP 2Eh
2BA8h : 90                  NOP         NOP
2BA9h : C706F72F3230        MOV         MOV [F72Fh], 12338
2BAFh : E85FD7              CALL        CALL 787
2BB2h : E861D6              CALL        CALL 536
2BB5h : A0FA2F              MOV         MOV AL, [ 12282]
2BB8h : C0E806              SHR         SHR AL, 6
2BBBh : A20530              MOV         MOV [ 12293], AL
2BBEh : A0FA2F              MOV         MOV AL, [ 12282]
2BC1h : C0E005              SHL         SHL AL, 5
2BC4h : C0E805              SHR         SHR AL, 5
2BC7h : A20730              MOV         MOV [ 12295], AL
2BCAh : E849D6              CALL        CALL 536
2BCDh : E80FDE              CALL        CALL 2529
2BD0h : E865D7              CALL        CALL 826
2BD3h : EB66                JMP         JMP 66h
2BD5h : 90                  NOP         NOP
2BD6h : A0FA2F              MOV         MOV AL, [ 12282]
2BD9h : D0E8                SHR         SHR AL,  1
2BDBh : 3C60                CMP         CMP AL,  96
2BDDh : 7405                JE          JE 05h
2BDFh : 90                  NOP         NOP
2BE0h : 90                  NOP         NOP
2BE1h : EB5B                JMP         JMP 5Bh
2BE3h : 90                  NOP         NOP
2BE4h : 803EFD2F01          CMP         CMP [FD2Fh],  1
2BE9h : 7405                JE          JE 05h
2BEBh : 90                  NOP         NOP
2BECh : 90                  NOP         NOP
2BEDh : EB4F                JMP         JMP 4Fh
2BEFh : 90                  NOP         NOP
2BF0h : A0FC2F              MOV         MOV AL, [ 12284]
2BF3h : C0E002              SHL         SHL AL, 2
2BF6h : C0E805              SHR         SHR AL, 5
2BF9h : 3C05                CMP         CMP AL,  5
2BFBh : 7405                JE          JE 05h
2BFDh : 90                  NOP         NOP
2BFEh : 90                  NOP         NOP
2BFFh : EB3D                JMP         JMP 3Dh
2C01h : 90                  NOP         NOP
2C02h : C706F72F9331        MOV         MOV [F72Fh], 12691
2C08h : E806D7              CALL        CALL 787
2C0Bh : A0FA2F              MOV         MOV AL, [ 12282]
2C0Eh : C0E007              SHL         SHL AL, 7
2C11h : C0E807              SHR         SHR AL, 7
2C14h : A20030              MOV         MOV [ 12288], AL
2C17h : E8FCD5              CALL        CALL 536
2C1Ah : A0FA2F              MOV         MOV AL, [ 12282]
2C1Dh : C0E806              SHR         SHR AL, 6
2C20h : A20530              MOV         MOV [ 12293], AL
2C23h : A0FA2F              MOV         MOV AL, [ 12282]
2C26h : C0E005              SHL         SHL AL, 5
2C29h : C0E805              SHR         SHR AL, 5
2C2Ch : A20730              MOV         MOV [ 12295], AL
2C2Fh : E8E4D5              CALL        CALL 536
2C32h : E88ADE              CALL        CALL 2753
2C35h : E88BDF              CALL        CALL 3013
2C38h : E8FDD6              CALL        CALL 826
2C3Bh : EB66                JMP         JMP 66h
2C3Dh : 90                  NOP         NOP
2C3Eh : A0FA2F              MOV         MOV AL, [ 12282]
2C41h : D0E8                SHR         SHR AL,  1
2C43h : 3C60                CMP         CMP AL,  96
2C45h : 7405                JE          JE 05h
2C47h : 90                  NOP         NOP
2C48h : 90                  NOP         NOP
2C49h : EB5B                JMP         JMP 5Bh
2C4Bh : 90                  NOP         NOP
2C4Ch : 803EFD2F01          CMP         CMP [FD2Fh],  1
2C51h : 7405                JE          JE 05h
2C53h : 90                  NOP         NOP
2C54h : 90                  NOP         NOP
2C55h : EB4F                JMP         JMP 4Fh
2C57h : 90                  NOP         NOP
2C58h : A0FC2F              MOV         MOV AL, [ 12284]
2C5Bh : C0E002              SHL         SHL AL, 2
2C5Eh : C0E805              SHR         SHR AL, 5
2C61h : 3C04                CMP         CMP AL,  4
2C63h : 7405                JE          JE 05h
2C65h : 90                  NOP         NOP
2C66h : 90                  NOP         NOP
2C67h : EB3D                JMP         JMP 3Dh
2C69h : 90                  NOP         NOP
2C6Ah : C706F72F8B31        MOV         MOV [F72Fh], 12683
2C70h : E89ED6              CALL        CALL 787
2C73h : A0FA2F              MOV         MOV AL, [ 12282]
2C76h : C0E007              SHL         SHL AL, 7
2C79h : C0E807              SHR         SHR AL, 7
2C7Ch : A20030              MOV         MOV [ 12288], AL
2C7Fh : E894D5              CALL        CALL 536
2C82h : A0FA2F              MOV         MOV AL, [ 12282]
2C85h : C0E806              SHR         SHR AL, 6
2C88h : A20530              MOV         MOV [ 12293], AL
2C8Bh : A0FA2F              MOV         MOV AL, [ 12282]
2C8Eh : C0E005              SHL         SHL AL, 5
2C91h : C0E805              SHR         SHR AL, 5
2C94h : A20730              MOV         MOV [ 12295], AL
2C97h : E87CD5              CALL        CALL 536
2C9Ah : E822DE              CALL        CALL 2753
2C9Dh : E823DF              CALL        CALL 3013
2CA0h : E895D6              CALL        CALL 826
2CA3h : EB10                JMP         JMP 10h
2CA5h : 90                  NOP         NOP
2CA6h : C706F72F1E30        MOV         MOV [F72Fh], 12318
2CACh : E862D6              CALL        CALL 787
2CAFh : E886D6              CALL        CALL 826
2CB2h : E861D5              CALL        CALL 536
2CB5h : C3                  RET         RET
2CB6h : 0D0A30              OR          OR AX,  2608
2CB9h : 3030                XOR         XOR [BX+SI], DH
2CBBh : 3030                XOR         XOR [BX+SI], DH
2CBDh : 3030                XOR         XOR [BX+SI], DH
2CBFh : 3030                XOR         XOR [BX+SI], DH
2CC1h : 3030                XOR         XOR [BX+SI], DH
2CC3h : 3030                XOR         XOR [BX+SI], DH
2CC5h : 3030                XOR         XOR [BX+SI], DH
2CC7h : 3030                XOR         XOR [BX+SI], DH
2CC9h : 3030                XOR         XOR [BX+SI], DH
2CCBh : 3030                XOR         XOR [BX+SI], DH
2CCDh : 3030                XOR         XOR [BX+SI], DH
2CCFh : 3030                XOR         XOR [BX+SI], DH
2CD1h : 3030                XOR         XOR [BX+SI], DH
2CD3h : 3030                XOR         XOR [BX+SI], DH
2CD5h : 3030                XOR         XOR [BX+SI], DH
2CD7h : 3030                XOR         XOR [BX+SI], DH
2CD9h : 3030                XOR         XOR [BX+SI], DH
2CDBh : 3030                XOR         XOR [BX+SI], DH
2CDDh : 3030                XOR         XOR [BX+SI], DH
2CDFh : 3030                XOR         XOR [BX+SI], DH
2CE1h : 3030                XOR         XOR [BX+SI], DH
2CE3h : 3030                XOR         XOR [BX+SI], DH
2CE5h : 3030                XOR         XOR [BX+SI], DH
2CE7h : 3030                XOR         XOR [BX+SI], DH
2CE9h : 3030                XOR         XOR [BX+SI], DH
2CEBh : 3030                XOR         XOR [BX+SI], DH
2CEDh : 3030                XOR         XOR [BX+SI], DH
2CEFh : 3030                XOR         XOR [BX+SI], DH
2CF1h : 3030                XOR         XOR [BX+SI], DH
2CF3h : 3030                XOR         XOR [BX+SI], DH
2CF5h : 3030                XOR         XOR [BX+SI], DH
2CF7h : 3030                XOR         XOR [BX+SI], DH
2CF9h : 3030                XOR         XOR [BX+SI], DH
2CFBh : 3030                XOR         XOR [BX+SI], DH
2CFDh : 3030                XOR         XOR [BX+SI], DH
2CFFh : 3030                XOR         XOR [BX+SI], DH
2D01h : 3030                XOR         XOR [BX+SI], DH
2D03h : 3030                XOR         XOR [BX+SI], DH
2D05h : 3030                XOR         XOR [BX+SI], DH
2D07h : 3030                XOR         XOR [BX+SI], DH
2D09h : 3030                XOR         XOR [BX+SI], DH
2D0Bh : 3030                XOR         XOR [BX+SI], DH
2D0Dh : 3030                XOR         XOR [BX+SI], DH
2D0Fh : 3030                XOR         XOR [BX+SI], DH
2D11h : 3030                XOR         XOR [BX+SI], DH
2D13h : 3030                XOR         XOR [BX+SI], DH
2D15h : 3030                XOR         XOR [BX+SI], DH
2D17h : 3030                XOR         XOR [BX+SI], DH
2D19h : 3030                XOR         XOR [BX+SI], DH
2D1Bh : 3030                XOR         XOR [BX+SI], DH
2D1Dh : 3030                XOR         XOR [BX+SI], DH
2D1Fh : 3030                XOR         XOR [BX+SI], DH
2D21h : 3030                XOR         XOR [BX+SI], DH
2D23h : 3030                XOR         XOR [BX+SI], DH
2D25h : 3030                XOR         XOR [BX+SI], DH
2D27h : 3030                XOR         XOR [BX+SI], DH
2D29h : 3030                XOR         XOR [BX+SI], DH
2D2Bh : 3030                XOR         XOR [BX+SI], DH
2D2Dh : 3030                XOR         XOR [BX+SI], DH
2D2Fh : 3030                XOR         XOR [BX+SI], DH
2D31h : 3030                XOR         XOR [BX+SI], DH
2D33h : 3030                XOR         XOR [BX+SI], DH
2D35h : 3030                XOR         XOR [BX+SI], DH
2D37h : 48                  DEC         DEC AX
2D38h : 45                  INC         INC BP
2D39h : 4C                  DEC         DEC SP
2D3Ah : 4C                  DEC         DEC SP
2D3Bh : 4F                  DEC         DEC DI
2D3Ch :                     DEC         unknown
2D3Dh : 43                  INC         INC BX
2D3Eh : 4F                  DEC         DEC DI
2D3Fh : 4D                  DEC         DEC BP
2D40h : 3000                XOR         XOR [BX+SI], AL
2D42h : 0000                ADD         ADD [BX+SI], AL
2D44h : 0000                ADD         ADD [BX+SI], AL
2D46h : 0000                ADD         ADD [BX+SI], AL
2D48h : 0000                ADD         ADD [BX+SI], AL
2D4Ah : 0000                ADD         ADD [BX+SI], AL
2D4Ch : 0000                ADD         ADD [BX+SI], AL
2D4Eh :                     ADD         unknown
2D4Fh : 7574                JNE         JNE 74h
2D51h : 353535              XOR         XOR AX,  13621
2D54h :                     XOR         unknown
2D55h : 7478                JE          JE 78h
2D57h : 7430                JE          JE 30h
2D59h : 0000                ADD         ADD [BX+SI], AL
2D5Bh : 0000                ADD         ADD [BX+SI], AL
2D5Dh : 0000                ADD         ADD [BX+SI], AL
2D5Fh : 0000                ADD         ADD [BX+SI], AL
2D61h : 0000                ADD         ADD [BX+SI], AL
2D63h : 0000                ADD         ADD [BX+SI], AL
2D65h : 004572              ADD         ADD [DI+72h], AL
2D68h : 726F                JNAE        JNAE 6Fh
2D6Ah : 7221                JNAE        JNAE 21h
2D6Ch : 204973              AND         AND [BX+DI+73h], CL
2D6Fh :                     AND         unknown
2D70h : 7669                JBE         JBE 69h
2D72h :                     JBE         unknown
2D73h : 736B                JAE         JAE 6Bh
2D75h :                     JAE         unknown
2D76h : 7465                JE          JE 65h
2D78h : 207072              AND         AND [BX+SI+72h], DH
2D7Bh :                     AND         unknown
2D7Ch :                     AND         unknown
2D7Dh : 7261                JNAE        JNAE 61h
2D7Fh :                     JNAE        unknown
2D80h :                     JNAE        unknown
2D81h : 207375              AND         AND [BP+DI+75h], DH
2D84h : 205C3F              AND         AND [SI+3Fh], BL
2D87h : 2400                AND         AND AL,  0
2D89h : 0000                ADD         ADD [BX+SI], AL
2D8Bh : 004469              ADD         ADD [SI+69h], AL
2D8Eh : 7361                JAE         JAE 61h
2D90h : 7373                JAE         JAE 73h
2D92h :                     JAE         unknown
2D93h :                     JAE         unknown
2D94h :                     JAE         unknown
2D95h :                     JAE         unknown
2D96h :                     JAE         unknown
2D97h : 7269                JNAE        JNAE 69h
2D99h : 732E                JAE         JAE 2Eh
2D9Bh : 205374              AND         AND [BP+DI+74h], DL
2D9Eh : 7564                JNE         JNE 64h
2DA0h :                     JNE         unknown
2DA1h :                     JNE         unknown
2DA2h : 7461                JE          JE 61h
2DA4h :                     JE          unknown
2DA5h : 2C20                SUB         SUB AL,  32
2DA7h :                     SUB         unknown
2DA8h : 7572                JNE         JNE 72h
2DAAh :                     JNE         unknown
2DABh :                     JNE         unknown
2DACh : 207061              AND         AND [BX+SI+61h], DH
2DAFh : 7261                JNAE        JNAE 61h
2DB1h : 7365                JAE         JAE 65h
2DB3h : 207369              AND         AND [BP+DI+69h], DH
2DB6h :                     AND         unknown
2DB7h : 20616D              AND         AND [BX+DI+6Dh], AH
2DBAh :                     AND         unknown
2DBBh : 7A69                JP          JP 69h
2DBDh :                     JP          unknown
2DBEh :                     JP          unknown
2DBFh : 207072              AND         AND [BX+SI+72h], DH
2DC2h :                     AND         unknown
2DC3h :                     AND         unknown
2DC4h : 7261                JNAE        JNAE 61h
2DC6h :                     JNAE        unknown
2DC7h :                     JNAE        unknown
2DC8h : 3A20                CMP         CMP AH, [BX+SI]
2DCAh : 41                  INC         INC CX
2DCBh : 726E                JNAE        JNAE 6Eh
2DCDh :                     JNAE        unknown
2DCEh : 732C                JAE         JAE 2Ch
2DD0h : 205461              AND         AND [SI+61h], DL
2DD3h :                     AND         unknown
2DD4h :                     AND         unknown
2DD5h : 730D                JAE         JAE 0Dh
2DD7h : 0A4469              OR          OR AL, [SI+69h]
2DDAh : 7361                JAE         JAE 61h
2DDCh : 7373                JAE         JAE 73h
2DDEh :                     JAE         unknown
2DDFh :                     JAE         unknown
2DE0h :                     JAE         unknown
2DE1h :                     JAE         unknown
2DE2h :                     JAE         unknown
2DE3h : 7269                JNAE        JNAE 69h
2DE5h : 732E                JAE         JAE 2Eh
2DE7h : 204976              AND         AND [BX+DI+76h], CL
2DEAh :                     AND         unknown
2DEBh : 736B                JAE         JAE 6Bh
2DEDh :                     JAE         unknown
2DEEh : 7465                JE          JE 65h
2DF0h : 206976              AND         AND [BX+DI+76h], CH
2DF3h :                     AND         unknown
2DF4h : 7374                JAE         JAE 74h
2DF6h :                     JAE         unknown
2DF7h :                     JAE         unknown
2DF8h : 7320                JAE         JAE 20h
2DFAh :                     JAE         unknown
2DFBh : 7220                JNAE        JNAE 20h
2DFDh :                     JNAE        unknown
2DFEh : 7376                JAE         JAE 76h
2E00h :                     JAE         unknown
2E01h : 7374                JAE         JAE 74h
2E03h :                     JAE         unknown
2E04h :                     JAE         unknown
2E05h : 7320                JAE         JAE 20h
2E07h :                     JAE         unknown
2E08h :                     JAE         unknown
2E09h :                     JAE         unknown
2E0Ah :                     JAE         unknown
2E0Bh : 7573                JNE         JNE 73h
2E0Dh : 206174              AND         AND [BX+DI+74h], AH
2E10h : 736B                JAE         JAE 6Bh
2E12h :                     JAE         unknown
2E13h : 7274                JNAE        JNAE 74h
2E15h : 7573                JNE         JNE 73h
2E17h : 207461              AND         AND [SI+61h], DH
2E1Ah : 7270                JNAE        JNAE 70h
2E1Ch :                     JNAE        unknown
2E1Dh :                     JNAE        unknown
2E1Eh : 7320                JAE         JAE 20h
2E20h :                     JAE         unknown
2E21h : 7267                JNAE        JNAE 67h
2E23h : 756D                JNE         JNE 6Dh
2E25h :                     JNE         unknown
2E26h :                     JNE         unknown
2E27h : 7465                JE          JE 65h
2E29h :                     JE          unknown
2E2Ah : 2400                AND         AND AL,  0
2E2Ch : 7465                JE          JE 65h
2E2Eh : 7374                JAE         JAE 74h
2E30h : 2024                AND         AND [SI], AH
2E32h : 0000                ADD         ADD [BX+SI], AL
2E34h : 0000                ADD         ADD [BX+SI], AL
2E36h : 0000                ADD         ADD [BX+SI], AL
2E38h : 0000                ADD         ADD [BX+SI], AL
2E3Ah : 0000                ADD         ADD [BX+SI], AL
2E3Ch : 0000                ADD         ADD [BX+SI], AL
2E3Eh : 0000                ADD         ADD [BX+SI], AL
2E40h : 0000                ADD         ADD [BX+SI], AL
2E42h : 0000                ADD         ADD [BX+SI], AL
2E44h : 0000                ADD         ADD [BX+SI], AL
2E46h : 0000                ADD         ADD [BX+SI], AL
2E48h : 0000                ADD         ADD [BX+SI], AL
2E4Ah : 0000                ADD         ADD [BX+SI], AL
2E4Ch : 0000                ADD         ADD [BX+SI], AL
2E4Eh : 0000                ADD         ADD [BX+SI], AL
2E50h : 0000                ADD         ADD [BX+SI], AL
2E52h : 0000                ADD         ADD [BX+SI], AL
2E54h : 0000                ADD         ADD [BX+SI], AL
2E56h : 0000                ADD         ADD [BX+SI], AL
2E58h : 0000                ADD         ADD [BX+SI], AL
2E5Ah : 0000                ADD         ADD [BX+SI], AL
2E5Ch : 0000                ADD         ADD [BX+SI], AL
2E5Eh : 0000                ADD         ADD [BX+SI], AL
2E60h : 0000                ADD         ADD [BX+SI], AL
2E62h : 0000                ADD         ADD [BX+SI], AL
2E64h : 0000                ADD         ADD [BX+SI], AL
2E66h : 0000                ADD         ADD [BX+SI], AL
2E68h : 0000                ADD         ADD [BX+SI], AL
2E6Ah : 0000                ADD         ADD [BX+SI], AL
2E6Ch : 0000                ADD         ADD [BX+SI], AL
2E6Eh : 0000                ADD         ADD [BX+SI], AL
2E70h : 0000                ADD         ADD [BX+SI], AL
2E72h : 0000                ADD         ADD [BX+SI], AL
2E74h : 0000                ADD         ADD [BX+SI], AL
2E76h : 0000                ADD         ADD [BX+SI], AL
2E78h : 0000                ADD         ADD [BX+SI], AL
2E7Ah : 0000                ADD         ADD [BX+SI], AL
2E7Ch : 0000                ADD         ADD [BX+SI], AL
2E7Eh : 0000                ADD         ADD [BX+SI], AL
2E80h : 0000                ADD         ADD [BX+SI], AL
2E82h : 0000                ADD         ADD [BX+SI], AL
2E84h : 0000                ADD         ADD [BX+SI], AL
2E86h : 0000                ADD         ADD [BX+SI], AL
2E88h : 0000                ADD         ADD [BX+SI], AL
2E8Ah : 0000                ADD         ADD [BX+SI], AL
2E8Ch : 0000                ADD         ADD [BX+SI], AL
2E8Eh : 0000                ADD         ADD [BX+SI], AL
2E90h : 0000                ADD         ADD [BX+SI], AL
2E92h : 0000                ADD         ADD [BX+SI], AL
2E94h : 0000                ADD         ADD [BX+SI], AL
2E96h : 0000                ADD         ADD [BX+SI], AL
2E98h : 0000                ADD         ADD [BX+SI], AL
2E9Ah : 0000                ADD         ADD [BX+SI], AL
2E9Ch : 0000                ADD         ADD [BX+SI], AL
2E9Eh : 0000                ADD         ADD [BX+SI], AL
2EA0h : 0000                ADD         ADD [BX+SI], AL
2EA2h : 0000                ADD         ADD [BX+SI], AL
2EA4h : 0000                ADD         ADD [BX+SI], AL
2EA6h : 0000                ADD         ADD [BX+SI], AL
2EA8h : 0000                ADD         ADD [BX+SI], AL
2EAAh : 0000                ADD         ADD [BX+SI], AL
2EACh : 0000                ADD         ADD [BX+SI], AL
2EAEh : 0000                ADD         ADD [BX+SI], AL
2EB0h : 0000                ADD         ADD [BX+SI], AL
2EB2h : 0000                ADD         ADD [BX+SI], AL
2EB4h : 0000                ADD         ADD [BX+SI], AL
2EB6h : 0000                ADD         ADD [BX+SI], AL
2EB8h : 0000                ADD         ADD [BX+SI], AL
2EBAh : 0000                ADD         ADD [BX+SI], AL
2EBCh : 0000                ADD         ADD [BX+SI], AL
2EBEh : 0000                ADD         ADD [BX+SI], AL
2EC0h : 0000                ADD         ADD [BX+SI], AL
2EC2h : 0000                ADD         ADD [BX+SI], AL
2EC4h : 0000                ADD         ADD [BX+SI], AL
2EC6h : 0000                ADD         ADD [BX+SI], AL
2EC8h : 0000                ADD         ADD [BX+SI], AL
2ECAh : 0000                ADD         ADD [BX+SI], AL
2ECCh : 0000                ADD         ADD [BX+SI], AL
2ECEh : 0000                ADD         ADD [BX+SI], AL
2ED0h : 0000                ADD         ADD [BX+SI], AL
2ED2h : 0000                ADD         ADD [BX+SI], AL
2ED4h : 0000                ADD         ADD [BX+SI], AL
2ED6h : 0000                ADD         ADD [BX+SI], AL
2ED8h : 0000                ADD         ADD [BX+SI], AL
2EDAh : 0000                ADD         ADD [BX+SI], AL
2EDCh : 0000                ADD         ADD [BX+SI], AL
2EDEh : 0000                ADD         ADD [BX+SI], AL
2EE0h : 0000                ADD         ADD [BX+SI], AL
2EE2h : 0000                ADD         ADD [BX+SI], AL
2EE4h : 0000                ADD         ADD [BX+SI], AL
2EE6h : 0000                ADD         ADD [BX+SI], AL
2EE8h : 0000                ADD         ADD [BX+SI], AL
2EEAh : 0000                ADD         ADD [BX+SI], AL
2EECh : 0000                ADD         ADD [BX+SI], AL
2EEEh : 0000                ADD         ADD [BX+SI], AL
2EF0h : 0000                ADD         ADD [BX+SI], AL
2EF2h : 0000                ADD         ADD [BX+SI], AL
2EF4h : 0000                ADD         ADD [BX+SI], AL
2EF6h : 0000                ADD         ADD [BX+SI], AL
2EF8h : 0000                ADD         ADD [BX+SI], AL
2EFAh : 0000                ADD         ADD [BX+SI], AL
2EFCh : 0000                ADD         ADD [BX+SI], AL
2EFEh : 0000                ADD         ADD [BX+SI], AL
2F00h : 0000                ADD         ADD [BX+SI], AL
2F02h : 0000                ADD         ADD [BX+SI], AL
2F04h : 0000                ADD         ADD [BX+SI], AL
2F06h : 0000                ADD         ADD [BX+SI], AL
2F08h : 0000                ADD         ADD [BX+SI], AL
2F0Ah : 0000                ADD         ADD [BX+SI], AL
2F0Ch : 0000                ADD         ADD [BX+SI], AL
2F0Eh : 0000                ADD         ADD [BX+SI], AL
2F10h : 0000                ADD         ADD [BX+SI], AL
2F12h : 0000                ADD         ADD [BX+SI], AL
2F14h : 0000                ADD         ADD [BX+SI], AL
2F16h : 0000                ADD         ADD [BX+SI], AL
2F18h : 0000                ADD         ADD [BX+SI], AL
2F1Ah : 0000                ADD         ADD [BX+SI], AL
2F1Ch : 0000                ADD         ADD [BX+SI], AL
2F1Eh : 0000                ADD         ADD [BX+SI], AL
2F20h : 0000                ADD         ADD [BX+SI], AL
2F22h : 0000                ADD         ADD [BX+SI], AL
2F24h : 0000                ADD         ADD [BX+SI], AL
2F26h : 0000                ADD         ADD [BX+SI], AL
2F28h : 0000                ADD         ADD [BX+SI], AL
2F2Ah : 0000                ADD         ADD [BX+SI], AL
2F2Ch : 0000                ADD         ADD [BX+SI], AL
2F2Eh : 0000                ADD         ADD [BX+SI], AL
2F30h : 0000                ADD         ADD [BX+SI], AL
2F32h : 0000                ADD         ADD [BX+SI], AL
2F34h : 0000                ADD         ADD [BX+SI], AL
2F36h : 0000                ADD         ADD [BX+SI], AL
2F38h : 0000                ADD         ADD [BX+SI], AL
2F3Ah : 0000                ADD         ADD [BX+SI], AL
2F3Ch : 0000                ADD         ADD [BX+SI], AL
2F3Eh : 0000                ADD         ADD [BX+SI], AL
2F40h : 0000                ADD         ADD [BX+SI], AL
2F42h : 0000                ADD         ADD [BX+SI], AL
2F44h : 0000                ADD         ADD [BX+SI], AL
2F46h : 0000                ADD         ADD [BX+SI], AL
2F48h : 0000                ADD         ADD [BX+SI], AL
2F4Ah : 0000                ADD         ADD [BX+SI], AL
2F4Ch : 0000                ADD         ADD [BX+SI], AL
2F4Eh : 0000                ADD         ADD [BX+SI], AL
2F50h : 0000                ADD         ADD [BX+SI], AL
2F52h : 0000                ADD         ADD [BX+SI], AL
2F54h : 0000                ADD         ADD [BX+SI], AL
2F56h : 0000                ADD         ADD [BX+SI], AL
2F58h : 0000                ADD         ADD [BX+SI], AL
2F5Ah : 0000                ADD         ADD [BX+SI], AL
2F5Ch : 0000                ADD         ADD [BX+SI], AL
2F5Eh : 0000                ADD         ADD [BX+SI], AL
2F60h : 0000                ADD         ADD [BX+SI], AL
2F62h : 0000                ADD         ADD [BX+SI], AL
2F64h : 0000                ADD         ADD [BX+SI], AL
2F66h : 0000                ADD         ADD [BX+SI], AL
2F68h : 0000                ADD         ADD [BX+SI], AL
2F6Ah : 0000                ADD         ADD [BX+SI], AL
2F6Ch : 0000                ADD         ADD [BX+SI], AL
2F6Eh : 0000                ADD         ADD [BX+SI], AL
2F70h : 0000                ADD         ADD [BX+SI], AL
2F72h : 0000                ADD         ADD [BX+SI], AL
2F74h : 0000                ADD         ADD [BX+SI], AL
2F76h : 0000                ADD         ADD [BX+SI], AL
2F78h : 0000                ADD         ADD [BX+SI], AL
2F7Ah : 0000                ADD         ADD [BX+SI], AL
2F7Ch : 0000                ADD         ADD [BX+SI], AL
2F7Eh : 0000                ADD         ADD [BX+SI], AL
2F80h : 0000                ADD         ADD [BX+SI], AL
2F82h : 0000                ADD         ADD [BX+SI], AL
2F84h : 0000                ADD         ADD [BX+SI], AL
2F86h : 0000                ADD         ADD [BX+SI], AL
2F88h : 0000                ADD         ADD [BX+SI], AL
2F8Ah : 0000                ADD         ADD [BX+SI], AL
2F8Ch : 0000                ADD         ADD [BX+SI], AL
2F8Eh : 0000                ADD         ADD [BX+SI], AL
2F90h : 0000                ADD         ADD [BX+SI], AL
2F92h : 0000                ADD         ADD [BX+SI], AL
2F94h : 0000                ADD         ADD [BX+SI], AL
2F96h : 0000                ADD         ADD [BX+SI], AL
2F98h : 0000                ADD         ADD [BX+SI], AL
2F9Ah : 0000                ADD         ADD [BX+SI], AL
2F9Ch : 0000                ADD         ADD [BX+SI], AL
2F9Eh : 0000                ADD         ADD [BX+SI], AL
2FA0h : 0000                ADD         ADD [BX+SI], AL
2FA2h : 0000                ADD         ADD [BX+SI], AL
2FA4h : 0000                ADD         ADD [BX+SI], AL
2FA6h : 0000                ADD         ADD [BX+SI], AL
2FA8h : 0000                ADD         ADD [BX+SI], AL
2FAAh : 0000                ADD         ADD [BX+SI], AL
2FACh : 0000                ADD         ADD [BX+SI], AL
2FAEh : 0000                ADD         ADD [BX+SI], AL
2FB0h : 0000                ADD         ADD [BX+SI], AL
2FB2h : 0000                ADD         ADD [BX+SI], AL
2FB4h : 0000                ADD         ADD [BX+SI], AL
2FB6h : 0000                ADD         ADD [BX+SI], AL
2FB8h : 0000                ADD         ADD [BX+SI], AL
2FBAh : 0000                ADD         ADD [BX+SI], AL
2FBCh : 0000                ADD         ADD [BX+SI], AL
2FBEh : 0000                ADD         ADD [BX+SI], AL
2FC0h : 0000                ADD         ADD [BX+SI], AL
2FC2h : 0000                ADD         ADD [BX+SI], AL
2FC4h : 0000                ADD         ADD [BX+SI], AL
2FC6h : 0000                ADD         ADD [BX+SI], AL
2FC8h : 0000                ADD         ADD [BX+SI], AL
2FCAh : 0000                ADD         ADD [BX+SI], AL
2FCCh : 0000                ADD         ADD [BX+SI], AL
2FCEh : 0000                ADD         ADD [BX+SI], AL
2FD0h : 0000                ADD         ADD [BX+SI], AL
2FD2h : 0000                ADD         ADD [BX+SI], AL
2FD4h : 0000                ADD         ADD [BX+SI], AL
2FD6h : 0000                ADD         ADD [BX+SI], AL
2FD8h : 0000                ADD         ADD [BX+SI], AL
2FDAh : 0000                ADD         ADD [BX+SI], AL
2FDCh : 0000                ADD         ADD [BX+SI], AL
2FDEh : 0000                ADD         ADD [BX+SI], AL
2FE0h : 0000                ADD         ADD [BX+SI], AL
2FE2h : 0000                ADD         ADD [BX+SI], AL
2FE4h : 0000                ADD         ADD [BX+SI], AL
2FE6h : 0000                ADD         ADD [BX+SI], AL
2FE8h : 0000                ADD         ADD [BX+SI], AL
2FEAh : 0000                ADD         ADD [BX+SI], AL
2FECh : 0000                ADD         ADD [BX+SI], AL
2FEEh : 0000                ADD         ADD [BX+SI], AL
2FF0h : 0000                ADD         ADD [BX+SI], AL
2FF2h : 0000                ADD         ADD [BX+SI], AL
2FF4h : 0000                ADD         ADD [BX+SI], AL
2FF6h : 0000                ADD         ADD [BX+SI], AL
2FF8h : 0000                ADD         ADD [BX+SI], AL
2FFAh : 0000                ADD         ADD [BX+SI], AL
2FFCh : 0000                ADD         ADD [BX+SI], AL
2FFEh : 0201                ADD         ADD AL, [BX+DI]
3000h : 0000                ADD         ADD [BX+SI], AL
3002h : 0000                ADD         ADD [BX+SI], AL
3004h : 0000                ADD         ADD [BX+SI], AL
3006h : 0000                ADD         ADD [BX+SI], AL
3008h : 0000                ADD         ADD [BX+SI], AL
300Ah : 0000                ADD         ADD [BX+SI], AL
300Ch : 0000                ADD         ADD [BX+SI], AL
300Eh : 0000                ADD         ADD [BX+SI], AL
3010h : 0000                ADD         ADD [BX+SI], AL
3012h : 0000                ADD         ADD [BX+SI], AL
3014h : 0000                ADD         ADD [BX+SI], AL
3016h : 0000                ADD         ADD [BX+SI], AL
3018h : 0000                ADD         ADD [BX+SI], AL
301Ah : 0000                ADD         ADD [BX+SI], AL
301Ch : 0000                ADD         ADD [BX+SI], AL
301Eh : 756E                JNE         JNE 6Eh
3020h :                     JNE         unknown
3021h :                     JNE         unknown
3022h :                     JNE         unknown
3023h : 776E                JA          JA 6Eh
3025h : 244D                AND         AND AL,  77
3027h : 4F                  DEC         DEC DI
3028h : 56                  PUSH        PUSH SI
3029h : 244E                AND         AND AL,  78
302Bh : 4F                  DEC         DEC DI
302Ch : 50                  PUSH        PUSH AX
302Dh : 2441                AND         AND AL,  65
302Fh : 44                  INC         INC SP
3030h : 44                  INC         INC SP
3031h : 2450                AND         AND AL,  80
3033h : 55                  PUSH        PUSH BP
3034h : 53                  PUSH        PUSH BX
3035h : 48                  DEC         DEC AX
3036h : 2450                AND         AND AL,  80
3038h : 4F                  DEC         DEC DI
3039h : 50                  PUSH        PUSH AX
303Ah : 244F                AND         AND AL,  79
303Ch : 52                  PUSH        PUSH DX
303Dh : 2441                AND         AND AL,  65
303Fh : 44                  INC         INC SP
3040h : 43                  INC         INC BX
3041h : 2453                AND         AND AL,  83
3043h : 42                  INC         INC DX
3044h : 42                  INC         INC DX
3045h : 2441                AND         AND AL,  65
3047h : 4E                  DEC         DEC SI
3048h : 44                  INC         INC SP
3049h : 2444                AND         AND AL,  68
304Bh : 41                  INC         INC CX
304Ch : 41                  INC         INC CX
304Dh : 2453                AND         AND AL,  83
304Fh : 55                  PUSH        PUSH BP
3050h : 42                  INC         INC DX
3051h : 2444                AND         AND AL,  68
3053h : 41                  INC         INC CX
3054h : 53                  PUSH        PUSH BX
3055h : 2458                AND         AND AL,  88
3057h : 4F                  DEC         DEC DI
3058h : 52                  PUSH        PUSH DX
3059h : 2441                AND         AND AL,  65
305Bh : 41                  INC         INC CX
305Ch : 41                  INC         INC CX
305Dh : 2443                AND         AND AL,  67
305Fh : 4D                  DEC         DEC BP
3060h : 50                  PUSH        PUSH AX
3061h : 2441                AND         AND AL,  65
3063h : 41                  INC         INC CX
3064h : 53                  PUSH        PUSH BX
3065h : 2449                AND         AND AL,  73
3067h : 4E                  DEC         DEC SI
3068h : 43                  INC         INC BX
3069h : 2444                AND         AND AL,  68
306Bh : 45                  INC         INC BP
306Ch : 43                  INC         INC BX
306Dh : 244A                AND         AND AL,  74
306Fh : 4F                  DEC         DEC DI
3070h : 244A                AND         AND AL,  74
3072h : 4E                  DEC         DEC SI
3073h : 4F                  DEC         DEC DI
3074h : 244A                AND         AND AL,  74
3076h : 4E                  DEC         DEC SI
3077h : 41                  INC         INC CX
3078h : 45                  INC         INC BP
3079h : 244A                AND         AND AL,  74
307Bh : 42                  INC         INC DX
307Ch : 244A                AND         AND AL,  74
307Eh : 43                  INC         INC BX
307Fh : 244A                AND         AND AL,  74
3081h : 41                  INC         INC CX
3082h : 45                  INC         INC BP
3083h : 244A                AND         AND AL,  74
3085h : 4E                  DEC         DEC SI
3086h : 42                  INC         INC DX
3087h : 244A                AND         AND AL,  74
3089h : 4E                  DEC         DEC SI
308Ah : 43                  INC         INC BX
308Bh : 244A                AND         AND AL,  74
308Dh : 45                  INC         INC BP
308Eh : 244A                AND         AND AL,  74
3090h : 5A                  POP         POP DX
3091h : 244A                AND         AND AL,  74
3093h : 4E                  DEC         DEC SI
3094h : 45                  INC         INC BP
3095h : 244A                AND         AND AL,  74
3097h : 4E                  DEC         DEC SI
3098h : 5A                  POP         POP DX
3099h : 244A                AND         AND AL,  74
309Bh : 42                  INC         INC DX
309Ch : 45                  INC         INC BP
309Dh : 244A                AND         AND AL,  74
309Fh : 4E                  DEC         DEC SI
30A0h : 41                  INC         INC CX
30A1h : 244A                AND         AND AL,  74
30A3h : 41                  INC         INC CX
30A4h : 244A                AND         AND AL,  74
30A6h : 4E                  DEC         DEC SI
30A7h : 42                  INC         INC DX
30A8h : 45                  INC         INC BP
30A9h : 244A                AND         AND AL,  74
30ABh : 53                  PUSH        PUSH BX
30ACh : 244A                AND         AND AL,  74
30AEh : 4E                  DEC         DEC SI
30AFh : 53                  PUSH        PUSH BX
30B0h : 244A                AND         AND AL,  74
30B2h : 50                  PUSH        PUSH AX
30B3h : 244A                AND         AND AL,  74
30B5h : 50                  PUSH        PUSH AX
30B6h : 45                  INC         INC BP
30B7h : 244A                AND         AND AL,  74
30B9h : 4E                  DEC         DEC SI
30BAh : 50                  PUSH        PUSH AX
30BBh : 244A                AND         AND AL,  74
30BDh : 50                  PUSH        PUSH AX
30BEh : 4F                  DEC         DEC DI
30BFh : 244A                AND         AND AL,  74
30C1h : 4C                  DEC         DEC SP
30C2h : 244A                AND         AND AL,  74
30C4h : 4E                  DEC         DEC SI
30C5h : 47                  INC         INC DI
30C6h : 45                  INC         INC BP
30C7h : 244A                AND         AND AL,  74
30C9h : 47                  INC         INC DI
30CAh : 45                  INC         INC BP
30CBh : 244A                AND         AND AL,  74
30CDh : 4E                  DEC         DEC SI
30CEh : 4C                  DEC         DEC SP
30CFh : 244A                AND         AND AL,  74
30D1h : 4C                  DEC         DEC SP
30D2h : 45                  INC         INC BP
30D3h : 244A                AND         AND AL,  74
30D5h : 4E                  DEC         DEC SI
30D6h : 47                  INC         INC DI
30D7h : 244A                AND         AND AL,  74
30D9h : 47                  INC         INC DI
30DAh : 244A                AND         AND AL,  74
30DCh : 4E                  DEC         DEC SI
30DDh : 4C                  DEC         DEC SP
30DEh : 45                  INC         INC BP
30DFh : 2454                AND         AND AL,  84
30E1h : 45                  INC         INC BP
30E2h : 53                  PUSH        PUSH BX
30E3h : 54                  PUSH        PUSH SP
30E4h : 2458                AND         AND AL,  88
30E6h : 43                  INC         INC BX
30E7h : 48                  DEC         DEC AX
30E8h : 47                  INC         INC DI
30E9h : 244C                AND         AND AL,  76
30EBh : 45                  INC         INC BP
30ECh : 41                  INC         INC CX
30EDh : 2443                AND         AND AL,  67
30EFh : 42                  INC         INC DX
30F0h : 56                  PUSH        PUSH SI
30F1h : 2443                AND         AND AL,  67
30F3h : 57                  PUSH        PUSH DI
30F4h : 44                  INC         INC SP
30F5h : 2443                AND         AND AL,  67
30F7h : 41                  INC         INC CX
30F8h : 4C                  DEC         DEC SP
30F9h : 4C                  DEC         DEC SP
30FAh : 2457                AND         AND AL,  87
30FCh : 41                  INC         INC CX
30FDh : 49                  DEC         DEC CX
30FEh : 54                  PUSH        PUSH SP
30FFh : 2450                AND         AND AL,  80
3101h : 55                  PUSH        PUSH BP
3102h : 53                  PUSH        PUSH BX
3103h : 48                  DEC         DEC AX
3104h : 46                  INC         INC SI
3105h : 2450                AND         AND AL,  80
3107h : 4F                  DEC         DEC DI
3108h : 50                  PUSH        PUSH AX
3109h : 46                  INC         INC SI
310Ah : 2453                AND         AND AL,  83
310Ch : 41                  INC         INC CX
310Dh : 48                  DEC         DEC AX
310Eh : 46                  INC         INC SI
310Fh : 244C                AND         AND AL,  76
3111h : 41                  INC         INC CX
3112h : 48                  DEC         DEC AX
3113h : 46                  INC         INC SI
3114h : 244D                AND         AND AL,  77
3116h : 4F                  DEC         DEC DI
3117h : 56                  PUSH        PUSH SI
3118h : 53                  PUSH        PUSH BX
3119h : 42                  INC         INC DX
311Ah : 244D                AND         AND AL,  77
311Ch : 4F                  DEC         DEC DI
311Dh : 56                  PUSH        PUSH SI
311Eh : 53                  PUSH        PUSH BX
311Fh : 57                  PUSH        PUSH DI
3120h : 2443                AND         AND AL,  67
3122h : 4D                  DEC         DEC BP
3123h : 50                  PUSH        PUSH AX
3124h : 53                  PUSH        PUSH BX
3125h : 42                  INC         INC DX
3126h : 2443                AND         AND AL,  67
3128h : 4D                  DEC         DEC BP
3129h : 50                  PUSH        PUSH AX
312Ah : 53                  PUSH        PUSH BX
312Bh : 57                  PUSH        PUSH DI
312Ch : 2453                AND         AND AL,  83
312Eh : 54                  PUSH        PUSH SP
312Fh : 4F                  DEC         DEC DI
3130h : 53                  PUSH        PUSH BX
3131h : 42                  INC         INC DX
3132h : 2453                AND         AND AL,  83
3134h : 54                  PUSH        PUSH SP
3135h : 4F                  DEC         DEC DI
3136h : 53                  PUSH        PUSH BX
3137h : 57                  PUSH        PUSH DI
3138h : 244C                AND         AND AL,  76
313Ah : 4F                  DEC         DEC DI
313Bh : 44                  INC         INC SP
313Ch : 53                  PUSH        PUSH BX
313Dh : 42                  INC         INC DX
313Eh : 244C                AND         AND AL,  76
3140h : 4F                  DEC         DEC DI
3141h : 44                  INC         INC SP
3142h : 53                  PUSH        PUSH BX
3143h : 57                  PUSH        PUSH DI
3144h : 2453                AND         AND AL,  83
3146h : 43                  INC         INC BX
3147h : 41                  INC         INC CX
3148h : 53                  PUSH        PUSH BX
3149h : 42                  INC         INC DX
314Ah : 2453                AND         AND AL,  83
314Ch : 43                  INC         INC BX
314Dh : 41                  INC         INC CX
314Eh : 53                  PUSH        PUSH BX
314Fh : 57                  PUSH        PUSH DI
3150h : 2452                AND         AND AL,  82
3152h : 45                  INC         INC BP
3153h : 54                  PUSH        PUSH SP
3154h : 2452                AND         AND AL,  82
3156h : 45                  INC         INC BP
3157h : 54                  PUSH        PUSH SP
3158h : 4E                  DEC         DEC SI
3159h : 244C                AND         AND AL,  76
315Bh : 45                  INC         INC BP
315Ch : 53                  PUSH        PUSH BX
315Dh : 244C                AND         AND AL,  76
315Fh : 44                  INC         INC SP
3160h : 53                  PUSH        PUSH BX
3161h : 2452                AND         AND AL,  82
3163h : 45                  INC         INC BP
3164h : 54                  PUSH        PUSH SP
3165h : 46                  INC         INC SI
3166h : 2449                AND         AND AL,  73
3168h : 4E                  DEC         DEC SI
3169h : 54                  PUSH        PUSH SP
316Ah : 2033                AND         AND [BP+DI], DH
316Ch : 2449                AND         AND AL,  73
316Eh : 4E                  DEC         DEC SI
316Fh : 54                  PUSH        PUSH SP
3170h : 2449                AND         AND AL,  73
3172h : 4E                  DEC         DEC SI
3173h : 54                  PUSH        PUSH SP
3174h : 4F                  DEC         DEC DI
3175h : 2449                AND         AND AL,  73
3177h : 52                  PUSH        PUSH DX
3178h : 45                  INC         INC BP
3179h : 54                  PUSH        PUSH SP
317Ah : 2452                AND         AND AL,  82
317Ch : 4F                  DEC         DEC DI
317Dh : 4C                  DEC         DEC SP
317Eh : 2452                AND         AND AL,  82
3180h : 4F                  DEC         DEC DI
3181h : 52                  PUSH        PUSH DX
3182h : 2452                AND         AND AL,  82
3184h : 43                  INC         INC BX
3185h : 4C                  DEC         DEC SP
3186h : 2452                AND         AND AL,  82
3188h : 43                  INC         INC BX
3189h : 52                  PUSH        PUSH DX
318Ah : 2453                AND         AND AL,  83
318Ch : 48                  DEC         DEC AX
318Dh : 4C                  DEC         DEC SP
318Eh : 2453                AND         AND AL,  83
3190h : 41                  INC         INC CX
3191h : 4C                  DEC         DEC SP
3192h : 2453                AND         AND AL,  83
3194h : 48                  DEC         DEC AX
3195h : 52                  PUSH        PUSH DX
3196h : 2453                AND         AND AL,  83
3198h : 41                  INC         INC CX
3199h : 52                  PUSH        PUSH DX
319Ah : 2441                AND         AND AL,  65
319Ch : 41                  INC         INC CX
319Dh : 4D                  DEC         DEC BP
319Eh : 2441                AND         AND AL,  65
31A0h : 41                  INC         INC CX
31A1h : 44                  INC         INC SP
31A2h : 2458                AND         AND AL,  88
31A4h : 4C                  DEC         DEC SP
31A5h : 41                  INC         INC CX
31A6h : 54                  PUSH        PUSH SP
31A7h : 2445                AND         AND AL,  69
31A9h : 53                  PUSH        PUSH BX
31AAh : 43                  INC         INC BX
31ABh : 244C                AND         AND AL,  76
31ADh : 4F                  DEC         DEC DI
31AEh : 4F                  DEC         DEC DI
31AFh : 50                  PUSH        PUSH AX
31B0h : 4E                  DEC         DEC SI
31B1h : 45                  INC         INC BP
31B2h : 244C                AND         AND AL,  76
31B4h : 4F                  DEC         DEC DI
31B5h : 4F                  DEC         DEC DI
31B6h : 50                  PUSH        PUSH AX
31B7h : 4E                  DEC         DEC SI
31B8h : 5A                  POP         POP DX
31B9h : 244C                AND         AND AL,  76
31BBh : 4F                  DEC         DEC DI
31BCh : 4F                  DEC         DEC DI
31BDh : 50                  PUSH        PUSH AX
31BEh : 45                  INC         INC BP
31BFh : 244C                AND         AND AL,  76
31C1h : 4F                  DEC         DEC DI
31C2h : 4F                  DEC         DEC DI
31C3h : 50                  PUSH        PUSH AX
31C4h : 5A                  POP         POP DX
31C5h : 244C                AND         AND AL,  76
31C7h : 4F                  DEC         DEC DI
31C8h : 4F                  DEC         DEC DI
31C9h : 50                  PUSH        PUSH AX
31CAh : 244A                AND         AND AL,  74
31CCh : 43                  INC         INC BX
31CDh : 58                  POP         POP AX
31CEh : 5A                  POP         POP DX
31CFh : 2449                AND         AND AL,  73
31D1h : 4E                  DEC         DEC SI
31D2h : 244F                AND         AND AL,  79
31D4h : 55                  PUSH        PUSH BP
31D5h : 54                  PUSH        PUSH SP
31D6h : 244A                AND         AND AL,  74
31D8h : 4D                  DEC         DEC BP
31D9h : 50                  PUSH        PUSH AX
31DAh : 244C                AND         AND AL,  76
31DCh : 4F                  DEC         DEC DI
31DDh : 43                  INC         INC BX
31DEh : 4B                  DEC         DEC BX
31DFh : 2452                AND         AND AL,  82
31E1h : 45                  INC         INC BP
31E2h : 50                  PUSH        PUSH AX
31E3h : 4E                  DEC         DEC SI
31E4h : 5A                  POP         POP DX
31E5h : 2452                AND         AND AL,  82
31E7h : 45                  INC         INC BP
31E8h : 50                  PUSH        PUSH AX
31E9h : 4E                  DEC         DEC SI
31EAh : 45                  INC         INC BP
31EBh : 2452                AND         AND AL,  82
31EDh : 45                  INC         INC BP
31EEh : 50                  PUSH        PUSH AX
31EFh : 2452                AND         AND AL,  82
31F1h : 45                  INC         INC BP
31F2h : 50                  PUSH        PUSH AX
31F3h : 5A                  POP         POP DX
31F4h : 2452                AND         AND AL,  82
31F6h : 45                  INC         INC BP
31F7h : 50                  PUSH        PUSH AX
31F8h : 45                  INC         INC BP
31F9h : 2448                AND         AND AL,  72
31FBh : 4C                  DEC         DEC SP
31FCh : 54                  PUSH        PUSH SP
31FDh : 2443                AND         AND AL,  67
31FFh : 4D                  DEC         DEC BP
3200h : 43                  INC         INC BX
3201h : 244E                AND         AND AL,  78
3203h : 4F                  DEC         DEC DI
3204h : 54                  PUSH        PUSH SP
3205h : 244E                AND         AND AL,  78
3207h : 45                  INC         INC BP
3208h : 47                  INC         INC DI
3209h : 244D                AND         AND AL,  77
320Bh : 55                  PUSH        PUSH BP
320Ch : 4C                  DEC         DEC SP
320Dh : 2449                AND         AND AL,  73
320Fh : 4D                  DEC         DEC BP
3210h : 55                  PUSH        PUSH BP
3211h : 4C                  DEC         DEC SP
3212h : 2444                AND         AND AL,  68
3214h : 49                  DEC         DEC CX
3215h : 56                  PUSH        PUSH SI
3216h : 2449                AND         AND AL,  73
3218h : 44                  INC         INC SP
3219h : 49                  DEC         DEC CX
321Ah : 56                  PUSH        PUSH SI
321Bh : 2443                AND         AND AL,  67
321Dh : 4C                  DEC         DEC SP
321Eh : 43                  INC         INC BX
321Fh : 2453                AND         AND AL,  83
3221h : 54                  PUSH        PUSH SP
3222h : 43                  INC         INC BX
3223h : 2443                AND         AND AL,  67
3225h : 4C                  DEC         DEC SP
3226h : 49                  DEC         DEC CX
3227h : 2453                AND         AND AL,  83
3229h : 54                  PUSH        PUSH SP
322Ah : 49                  DEC         DEC CX
322Bh : 2443                AND         AND AL,  67
322Dh : 4C                  DEC         DEC SP
322Eh : 44                  INC         INC SP
322Fh : 2453                AND         AND AL,  83
3231h : 54                  PUSH        PUSH SP
3232h : 44                  INC         INC SP
3233h : 2441                AND         AND AL,  65
3235h : 58                  POP         POP AX
3236h : 2441                AND         AND AL,  65
3238h : 4C                  DEC         DEC SP
3239h : 2441                AND         AND AL,  65
323Bh : 48                  DEC         DEC AX
323Ch : 2442                AND         AND AL,  66
323Eh : 58                  POP         POP AX
323Fh : 2442                AND         AND AL,  66
3241h : 4C                  DEC         DEC SP
3242h : 2442                AND         AND AL,  66
3244h : 48                  DEC         DEC AX
3245h : 2443                AND         AND AL,  67
3247h : 58                  POP         POP AX
3248h : 2443                AND         AND AL,  67
324Ah : 4C                  DEC         DEC SP
324Bh : 2443                AND         AND AL,  67
324Dh : 48                  DEC         DEC AX
324Eh : 2444                AND         AND AL,  68
3250h : 58                  POP         POP AX
3251h : 2444                AND         AND AL,  68
3253h : 4C                  DEC         DEC SP
3254h : 2444                AND         AND AL,  68
3256h : 48                  DEC         DEC AX
3257h : 2445                AND         AND AL,  69
3259h : 53                  PUSH        PUSH BX
325Ah : 2443                AND         AND AL,  67
325Ch : 53                  PUSH        PUSH BX
325Dh : 2453                AND         AND AL,  83
325Fh : 53                  PUSH        PUSH BX
3260h : 2444                AND         AND AL,  68
3262h : 53                  PUSH        PUSH BX
3263h : 2453                AND         AND AL,  83
3265h : 49                  DEC         DEC CX
3266h : 2444                AND         AND AL,  68
3268h : 49                  DEC         DEC CX
3269h : 2442                AND         AND AL,  66
326Bh : 50                  PUSH        PUSH AX
326Ch : 2453                AND         AND AL,  83
326Eh : 50                  PUSH        PUSH AX
326Eh : 50                  PUSH        
