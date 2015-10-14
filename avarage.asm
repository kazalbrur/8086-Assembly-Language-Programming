.model small 
.data 

val1 db ?

nl1 db 0ah,0dh,'enter ahow many number you want',' $'

nl2 db 0ah,0dh,'enter no :' ' $'  

nl3 db 0ah,0dh,'avarage :'  ' $'


.code 
main proc
mov ax , @data
mov ds , ax

lea dx, nl1
mov ah , 09h
int 21h

mov ah ,01h

int 21h
sub al , 30h

mov cl, al
mov bl ,al
mov al ,00
mov val1,al 


lbl1:

lea dx ,nl2
mov ah , 09h
int 21h

mov ah, 01h
int 21h
sub al, 30h
add al, val1
 
loop lbl1
 
lbl2:

lea dx ,nl3
mov ah , 09h
int 21h

mov ax, 00

mov al , val1
div bl
add ax ,3030h
mov dx ,ax
mov ah , 02h
int 21h




mov ah, 4ch
int 21h
main endp
end main
