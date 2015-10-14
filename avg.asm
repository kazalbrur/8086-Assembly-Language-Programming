
DATA SEGMENT
     NUM1 DB 6
     NUM2 DB 8
     NUM3 DB 13
     AVG  DB ?
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      MOV AL,NUM1  ; num1 is place at al
      ADD AL,NUM2  ; num2 is added to num1 and placed at al
      ADD AL,NUM3  ; num3 is added to num1+num2, and placed at al  
      
      MOV AH,0     ; DIV instruction is used to divide AX and Not 
                   ; only AL register. Hence the unwanted value 
                   ;(garbage value) in AH register is removed by 
                   ;assigning ZERO to it. i.e. MOV AH,0 
                     
     
      MOV DL,3     ;DIV instruction only works with REG or MEMORY 
                   ;hence we cannot use DIV 3 where 3 is immediate,
                   ; So we have to move 3 to DL register 
                   ;(we can take any register) i.e. MOV DL,3 and 
                   ;Then DIV DL  Now DIV DL will Divide AX register
                   ;with 3 which is passed to DL register and Result
                   ;of division is present in AL register so move 
                   ;the resultant value i.e. Average to variable by
                   ;instruction MOV AVG,AL
      DIV DL
     
      MOV AVG,AL
           
      MOV AH,4CH
      INT 21H     
ENDS
END START