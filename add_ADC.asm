
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100

DATA SEGMENT
     NUM1 DB 24h
     NUM2 DB 17h
     RESULT DB ?
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      MOV AL,NUM1
      ADC AL,NUM2
      ;ADC AH,00h ; put carry in AH 
      
      MOV RESULT,AL
     
      ;MOV AH,0
      ;AAA 
     
      MOV AH,4CH
      INT 21H     
ENDS
END START




