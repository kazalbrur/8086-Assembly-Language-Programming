
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

ST_SEG  SEGMENT
        DW     64       DUP    (0)
ST_SEG  ENDS
DT_SEG  SEGMENT
        V1      DB      10H
        V2      DB      32H
        V3      DB      ?
DT_SEG ENDS
CD_SEG  SEGMENT
        
AD      PROC
        ASSUME CS:CD_SEG,DS:DT_SEG,SS:ST_SEG
        MOV     AX,DT_SEG
        MOV     DS,AX
        MOV     AL,V1
        ADD     AL,V2
        MOV     V3,AL
        MOV     DL,V3
        MOV     AH,02H
        INT     21H
        MOV     AH,4CH
        INT     21H
AD     ENDP
CD_SEG ENDS
END     AD
        