
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

TITLE PRO1
.MODEL SMALL
.DATA
                V3 DB   'EQUAL$'
                V4 DB   'NOTEQAUL$'

.CODE

MAIN    PROC 

        MOV  AX,@DATA
        MOV  DS,AX 

        MOV  AH,01H
        INT  21H

        MOV  DL,AL

        INT 21H

        CMP AL,DL
        JNE NOEQUAL

        MOV AH,09H
        LEA DX,V3
        INT 21H
        JMP BYE

NOEQUAL:
        
        MOV AH,09H
        LEA DX,V4       ; LOAD EFECTIVE ADDRESS OF V4 IN DX
        INT 21H

BYE:
        MOV AH,4CH
        INT 21H

MAIN    ENDP
        END  MAIN




