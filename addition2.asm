
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;org 100h

DATA SEGMENT
     NUM1 DB 08
     NUM2 DB 06
     RESULT DB ?
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      MOV AL,NUM1
      ADD AL,NUM2
        
      MOV RESULT,AL
     
      MOV AH,0
      AAA 
     
      MOV AH,4CH
      INT 21H     
ENDS
END START

;ret




