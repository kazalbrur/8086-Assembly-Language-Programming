.model small                ;This is Memory Model
.stack 100                  ;This is Stack Segment
.data                       ;This is the Data Segment
    msg db 'Hellow World $'
    
.code                       ; Starting Code Segment
    main proc               ; Start Main Procedure
    mov ax, @data 
    mov ds, ax
    
    lea dx, msg
    mov ah, 9
    int 21h
    
main endp                   
end main