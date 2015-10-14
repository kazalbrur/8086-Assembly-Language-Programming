.data
    msg db "Enter First Number = $"
    msg2 db 0dh, 0ah, "Enter Second Number = $"
    msg1 db 0dh, 0ah, "Multiplication Result = $"


.code
    main proc
    mov ax, @data  ;Copying Data offset in Register
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    int 21h
    
    
    mov ah, 1       ;Geting input
    int 21h
    

    sub al, 30h
    mov bl, al
    
    mov ah, 9
    lea dx, msg2
    int 21h
    
    

    
    mov ah, 1
    int 21h
    

    
    sub al, 30h
    mul bl          ;Multiplying bl by al
    mov bl, al
    add bl, 30h



    mov ah, 9
    lea dx, msg1
    int 21h

    mov dl, bl
    
    mov ah, 2
    int 21h
    
main endp
end main