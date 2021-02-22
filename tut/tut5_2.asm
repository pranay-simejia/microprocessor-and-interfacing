.model tiny
.data
ARRAY1 db 23h,21h,48h,0d3h,76h,22h
COUNT db 10
MIN db ?
MINADDR db ?
.code
.startup
    LEA SI,  ARRAY1
    MOV AL , [SI]
    LEA BX , COUNT
    MOV CL , [BX]
    INC SI
    DEC CL
  X2:  CMP AL, [SI]
    JBE X1
    MOV AL , [SI]
    MOV DI, SI

X1: INC SI
        DEC CL
        JNZ X2
        MOV [MIN] , AL
        MOV [MINADDR],DI
.EXIT
END
