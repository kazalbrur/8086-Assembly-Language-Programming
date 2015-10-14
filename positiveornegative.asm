
DATA SEGMENT  
    
NUM DB 12H

MES1 DB 10,13,'DATA IS POSITIVE $'
MES2 DB 10,13,'DATA IS NEGATIVE $'

DATA ENDS

CODE SEGMENT

ASSUME CS:CODE,DS:DATA

START: 

MOV AX,DATA
MOV DS,AX
MOV AL,NUM
ROL AL,1
JC NEGA 


;Move the Number to AL.
;Perform the rotate left side for 1 bit position.
;Check for the negative number.

MOV DX,OFFSET MES1 ;Declare it positive.
JMP EXIT ;Exit program.

NEGA: 
MOV DX,OFFSET MES2;Declare it negative.

EXIT:
MOV AH,09H
INT 21H

MOV AH,4CH
INT 21H

CODE ENDS
END START


