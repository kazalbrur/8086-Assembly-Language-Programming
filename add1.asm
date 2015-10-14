
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

assume cs: code
    code    segment
        opr1 dw 1234h
        opr2 dw 0000h
        result dw 01 dup(?)
     
 start: mov ax, code
        mov ds,ax
        mov ax, opr1
        mov bx, opr2
        clc
        add ax,bx
        mov di, offset result
        mov [di],ax
        mov ah,4ch
        int 21h
 code   ends
    end start
        

ret




