
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


; subtraction of 2 words


org 100h

.model samll

org 100h    

.data 

a1 dw 007h
a2 dw 005h
a3 dw 01 dup(?)

.code

start: 
mov ax, @data
mov ds,ax
mov ax, a1
mov bx, a2 
;clc
sub ax,bx 
mov a3,ax
mov ch, 02h
mov di, offset a3
mov [di],ax

mov ah, 4ch
;mov dx, a3 
int 21h  

ends 
end start




; add your code here

ret






