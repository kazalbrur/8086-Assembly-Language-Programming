
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LDS AX, m

RET

m  DW  1234h
   DW  5678h

END





