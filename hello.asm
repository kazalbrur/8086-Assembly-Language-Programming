
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;org 100h
    
main proc near
    mov ah, 09h
    mov dx, offset msg
    int 21h
    mov ah, 4ch
    mov al,00
    int 21h
endp
msg db "Hello World!. This is my first Assembly Code $"
end main

ret



            
