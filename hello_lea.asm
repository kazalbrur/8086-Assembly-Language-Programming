
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

    .data
    msg db "Hello World!. This is my first Assembly Code $" 
    
    .code
main :   ;  main proc near  

    mov ah, 09h
    lea dx, msg ;mov dx, offset msg
    int 21h
    mov ah, 4ch
    mov al,00
    int 21h
endp

end main

ret



            
