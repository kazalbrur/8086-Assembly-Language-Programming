.data
.code
    main proc
    ;Syntax: MOV destination, source
    mov dl, 2;Move 2Hex in dl
    
    mov ah, 2 
    int 21h
    
main endp
end main