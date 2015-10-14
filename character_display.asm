
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.8086
.MODEL SMALL
.STACK 64
.DATA
        STRING DB ? 
        SYM DB '$'
        INPUT_M DB 0ah,0dh,0AH,0DH,'ENTER STRING',0DH,0AH,'$'
.CODE
MAIN PROC
        MOV AX,@DATA
        MOV DS,AX

        MOV DX,OFFSET INPUT_M    ; lea dx,input_m
        MOV AH,09
        INT 21H

        LEA SI,STRING

INP:    MOV AH,01
        INT 21H

        MOV [SI],AL

        INC SI

        CMP AL,0DH
        JNZ INP

       ; MOV AL,SYM
        MOV [SI],'$'
 
;        MOV DL,0AH
;        MOV AH,02H
;        INT 21H

        MOV DX,OFFSET STRING
        MOV AH,09H
        INT 21H

        MOV AH,4CH
        INT 21H

MAIN ENDP
END MAIN

