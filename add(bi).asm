
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
msg1 db "Enter First Decimal Number : $"
msg2 db ,0dh,0ah,"Enter Second Decimal : $"
msg3 db ,0dh,0ah,"SUM of Entered Numbers = $"
num1 db ?;
num2 db ?,;
ans db ?,"$"
.code  
main proc 
    
mov ax,@data            ;initiaize ds
mov ds,ax  
mov dx,offset msg1      ;load and display msg1
mov ah,09
int 21h
mov ah,1h               ;read first initial
int 21h
sub al,30h
mov num1,al 
mov dx,offset msg2      ;load and display msg2
mov ah,9
int 21h
                        ;read second initial
mov ah,1h
int 21h
sub al,30h
mov num2,al
mov dx,offset msg3
mov ah,9                ;load and display msg3
int 21h
mov al,num1             ;add num1 and num2
add al,num2 
add al,30h              ;moves value into ans
mov ans,al
mov dx,offset ans       ;load and display msg3
mov ah,9
int 21h 
                        ;returns control to dos
mov ah, 4ch
int 21h 
main endp
end main        




