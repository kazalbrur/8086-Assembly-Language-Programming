
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; Add 2 numberes of word length

.model samll

org 100h    

.data
a1 dw 003h
a2 dw 005h
a3 dw ?

.code
start: 
mov ax, @data
mov ds,ax
mov ax, a1
mov bx, a2
add ax,bx

int 21h  
end start
end 




; add your code here

ret




