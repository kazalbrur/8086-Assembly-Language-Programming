
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;org 100h

data segment
    num1 db 3h
    num2 db 8h
ends

code segment
    assume ds: data cs: code

start: 
    mov ax, data
    mov ds, ax
    
    mov al, num1
    mov bl, num2
    
    xchg al, num2    ;Syntax: XCHG destination, source
    xchg bl, num1    ;exchange data between bl num1
    
    mov ah, 4ch
    int 21h
ends
end start
    

;;ret




