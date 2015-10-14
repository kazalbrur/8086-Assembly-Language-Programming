
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;org 100h

DATA SEGMENT
     MESSAGE DB "ENTER 10 CHARACTERS : $" 
     X DB ?
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      LEA DX,MESSAGE      
      MOV AH,9    ;print string or message dos interrupt
      INT 21H     ; standerd I/O dos interrupt
     
      MOV CX,10   ; cx=counter register, 10 for 10 times loop
      INPUT:
            MOV AH,1 ; read from standerd input(keyboard)
            INT 21H 
            MOV x,AL
      LOOP INPUT     
     
      MOV AH,4CH ; 
      INT 21H     
ENDS
END START

ret




