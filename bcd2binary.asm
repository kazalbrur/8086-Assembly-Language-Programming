DATA SEGMENT
BCD DW 27H
BIN DW ?
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA
MOV DS,AX
MOV AX,BCD
AND AX,07H
MOV BX,AX
MOV AX,BCD
AND AX,0F0H
MOV CX,0AH
MUL CX
ADD AX,BX
MOV BIN,AX
MOV AH,4CH
INT 21H
CODE ENDS
END START