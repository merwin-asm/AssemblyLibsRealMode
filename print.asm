;pass the string in bx
print_string:
     mov ah, 0x0e    ; function number = 0Eh : Display Character
     mov al ,[bx] ; AL = code of character to display
     int 0x10        ; call INT 10h, BIOS video service
     inc bx
     mov ax,[bx]
     cmp ax , 0
     jne print_string
     ret

;pass the chr in al
print_chr:
     mov ah, 0x0e    ; function number = 0Eh : Display Character
     int 0x10        ; call INT 10h, BIOS video service
     ret
