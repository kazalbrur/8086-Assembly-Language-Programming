
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;%TITLE "IBM Character Display -- XASCII.ASM" 
 
.MODEL small 
.STACK 256 
.CODESEG 
Start:  mov ax, @data  ; Initialize DS to address 
        mov ds, ax     ; of data segment 
        mov ah, 02h    ; display character function 
        mov cx,256     ; no. of chars to display 
        mov dl, 0      ; dl has ASCII code of null char 
Ploop:  int 21h        ; display a character 
        inc dl         ; increment ASCII code 
        dec cx         ; decrement counter 
        jnz Ploop      ; keep going if cx not zero 
Exit:   mov ah, 04Ch   ; DOS function: Exit program 
        mov al, 0      ; Return exit code value 
        int 21h        ; Call DOS. Terminate program 
        END Start      ; End of program / entry point



