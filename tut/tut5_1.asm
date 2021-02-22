.model tiny
; if .386 or 486 not mentioned , def 8086
.data 
    instr1 db 'h','m','e','i','l','c','l','r','o','o'
    cnt1 db 10 
    str1 db 5dup(0)
    ; 5DUP(0) ALLOCATE 5 MEM LOCATION
    str2 db 5dup(0)
.code
.startup
    LEA SI, instr1 
    ; LEA READS OFFSET
    LEA DI, cnt1
    mov CL , [DI]
    LEA DI, str1
    mov BX , DI
    LEA DI, str2
    mov DX , DI
  X1:  CMP cl, 00h
    JZ 
    MOV AL,[SI]
    MOV [BX], AL
    INC BX
    INC SI
    DEC CL
    CMP CL,00h
    JZ
    MOV AL , [SI]
    MOV [DX],AL
    INC DX
    INC SI
    DEC CL
    JMP X1
    X2:
    .EXIT
    END
