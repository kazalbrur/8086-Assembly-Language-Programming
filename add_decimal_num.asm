
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; add 2 decimal numbers 


.model samll
.stack 100h
 
.data
msg db 10,13, 'Enter a number $'
msg2 db 10,13, 'The sum is $'
x db 0
y db 0

.code

ADDIT proc
    mov ax, @data
    mov ds, ax
    mov ah, 9h ; print string
    lea dx, msg
    int 21h
    mov ah, 1h ; read character
    int 21h
    sub al, '0'
    mov x,al
    mov ah,9h
    lea dx,msg
    int 21h
    mov ah,1h
    int 21h
    sub al,'0'
    mov y, al
    mov ah, 9h
    lea dx, msg2
    int 21h
    mov dl,x
    add dl,y
    add dl,'0'
    mov ah, 2h ; print character
    int 21h
    mov ah,04ch
    int 21h
    ADDIT endp
end ADDIT
    
;org 100h

; add your code here

;ret




